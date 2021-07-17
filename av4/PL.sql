--1. USO DO RECORD
/* Criando registro de funcionário com os campos de  TAXA DE CORRETAGEM, VALOR DO ALUGUEL E CEP DO ENDEREÇO*/
CREATE TYPE imovel IS RECORD (
    taxa_de_corretagem integer,
    valor_do_aluguel decimal(7,2),
    endereco_cep varchar2(8),
);
--2. USO DE ESTRUTURA DE DADOS DO TIPO TABLE
/* Criando uma tabela virtual para os contratos */
TYPE Tabela_contrato IS TABLE OF contrato.numero%TYPE INDEX BY BINARY_INTEGER;

--3. BLOCO ANÔNIMO
-- Criação de um bloco anônimo que atualiza o supervisor do funcionário de cpf 51927985072
DECLARE
    v_cpf_supervisor funcionario.cpf_supervisor%TYPE := '23251067052';
    v_cpf funcionario.cpf%TYPE := '51927985072';
BEGIN
    UPDATE funcionario SET cpf_supervisor = v_cpf_supervisor WHERE cpf = v_cpf;
END;
-- PROCEDURE que atualiza o valor das parcelas de um contrato que ainda não venceu
CREATE OR REPLACE PROCEDURE AtualizaValorParcela(
    novoValor parcela.valor%TYPE,
    numContrato parcela.numero_contrato%TYPE,
) IS UPDATE parcela SET valor = novoValor WHERE numero_contrato = numContrato AND data_vencimento > DATE:=SYSDATE;   

--4. CREATE PROCEDURE
/* Listar numero e data de assinatura dos contratos fechados por um determinado funcionario */
CREATE OR REPLACE PROCEDURE ListarContratosFuncionario(
    p_cpf_funcionario funcionario.cpf%TYPE
) IS
    CURSOR c_reg IS SELECT numero, data_de_assinatura FROM contrato WHERE cpf_funcionario = p_cpf_funcionario;
BEGIN
    FOR v_reg IN c_reg LOOP
        dbms_output.put_line(v_reg.numero || ' ' || v_reg.data_de_assinatura);
    END LOOP;
END ListarContratosFuncionario;

/* Listar nome e cpf dos funcionarios supervisionados por um determinado funcionario */
CREATE OR REPLACE PROCEDURE ListarSupervisionadosFuncionario(
    p_cpf_supervisor funcionario.cpf%TYPE
) IS
    CURSOR c_reg(p_cpf_supervisor funcionario.cpf%TYPE) IS SELECT p.nome, f.cpf FROM pessoa p, funcionario f WHERE p.cpf = f.cpf AND f.cpf_supervisor = p_cpf_supervisor;
    v_reg c_reg%ROWTYPE;
BEGIN
    OPEN c_reg(p_cpf_supervisor);
    LOOP
        FETCH c_reg INTO v_reg;
        EXIT WHEN c_reg%NOTFOUND;
            dbms_output.put_line(v_reg.cpf || ' ' || v_reg.nome);
    END LOOP;
    CLOSE c_reg;
END ListarSupervisionadosFuncionario;

/* Lista nome, cpf e novo salário após aumento */
CREATE OR REPLACE PROCEDURE ListarAumentosFuncionarios IS
    CURSOR c_reg IS SELECT p.nome, f.cpf, f.salario, f.funcao FROM pessoa p, funcionario f WHERE p.cpf = f.cpf;
    v_reg c_reg%ROWTYPE;
BEGIN
    OPEN c_reg;
    FETCH c_reg INTO v_reg;
    WHILE c_reg%found LOOP
        CASE v_reg.funcao
            WHEN 'Supervisor' THEN dbms_output.put_line(v_reg.cpf || ' ' || v_reg.nome || ' ' || (v_reg.salario * 1.05));
            WHEN 'Vendedor' THEN dbms_output.put_line(v_reg.cpf || ' ' || v_reg.nome || ' ' || (v_reg.salario * 1.025));
            ELSE dbms_output.put_line(v_reg.cpf || ' ' || v_reg.nome || ' ' || (v_reg.salario * 1.01));
        END CASE;
        FETCH c_reg INTO v_reg;
    END LOOP;
    CLOSE c_reg;
END ListarAumentosFuncionarios;

--5. CREATE FUNCTION
-- Função que recebe o número de um contrato e retorna a soma do total de todas suas parcelas
-- Caso o contrato não exita, uma mensagem é impressa na tela
CREATE OR REPLACE FUNCTION soma_parcelas(num_contrato parcela.numero_contrato%TYPE) RETURN decimal IS
    soma decimal (8,2) := 0;
BEGIN
    SELECT sum(valor) INTO soma FROM parcela WHERE numero_contrato = num_contrato GROUP BY num_contrato;
    RETURN soma;
    EXCEPTION
        WHEN NO_DATA_FOUND THEN dbms_output.put_line('Número de contrato inválido'); return -1;
END soma_parcelas;
 

--8 IF ELSIF
-- Função que compara valor máximo desejado de um inquilino com o valor de um imóvel
-- OBS: Precisa do create type que tá aqui!
-- OBS2: Talvez esse ELSIF esteja forçando muito a barra, se precisar, posso alterar
CREATE TYPE T_inquilino IS RECORD (
    renda inquilino.renda%TYPE,
    valor_max inquilino.valor_max_desejado%TYPE
);

CREATE OR REPLACE FUNCTION pode_alugar(cpf inquilino.cpf%TYPE, cod_escritura imovel.cod_escritura%TYPE) RETURN BOOLEAN IS
    retorno boolean;
    valores_inquilino T_inquilino;
    valor_aluguel imovel.valor_do_aluguel%TYPE;
BEGIN
    SELECT renda, valor_max_desejado INTO valores_inquilino FROM inquilino WHERE inquilino.cpf = cpf;
    SELECT valor_do_aluguel INTO valor_aluguel FROM imovel WHERE imovel.cod_escritura = cod_escritura;

    IF valores_inquilino.valor_max > valor_aluguel THEN
        retorno := TRUE;
    ELSIF valores_inquilino.valor_max = valor_aluguel AND valores_inquilino.renda >= valor_aluguel THEN
        retorno := TRUE;
    ELSE
        retorno := FALSE;
    END IF;

    RETURN retorno;
    
END pode_alugar;
/

-- PACKAGE
CREATE OR REPLACE PACKAGE RepasseAluguel AS 
    PROCEDURE AtualizaInformacaoContrato(novoCpf pessoa.cpf%TYPE, antigoCpf pessoa.cpf%TYPE);
    PROCEDURE RemovePessoaEInquilino(cpfAntigo pessoa.cpf%TYPE);
END RepasseAluguel;
/
CREATE OR REPLACE PACKAGE BODY RepasseAluguel AS 
-- Declaração de variáveis
DECLARE
novoCPF := '04321317010';
novoNome := 'Hercules';
novoDataNas := TO_DATE('25-10-1978', 'dd-mm-yyyy');
novoCep := '99345920';
novoRua := 'Avenida Ribeiro';
novoBairro := 'Missões';
novoNumero := 12;
novoComplemento := 'Segundo andar';
novaRenda := 10000      ;

INSERT INTO endereco VALUES (novoCep, novoRua, novoBairro);
INSERT INTO pessoa VALUES (novoCPF, novoNome, novoDataNas, novoCep, novoNumero, novoComplemento);
INSERT INTO inquilino VALUES (novoCPF, novaRenda, NULL);

CREATE OR REPLACE PROCEDURE AtualizaInformacaoContrato(
    novoCpf pessoa.cpf%TYPE,
    antigoCpf pessoa.cpf%TYPE,
) IS 
BEGIN 
    UPDATE aluga SET cpf_inquilino = novoCpf WHERE cpf_inquilino = antigoCpf;
    EXCEPTION
    WHEN no_data_found THEN
        dbms_output.put_line('CPF não encontrado!');
END AtualizaInformacaoContrato

CREATE OR REPLACE PROCEDURE RemovePessoaEInquilino(cpfAntigo pessoa.cpf%TYPE) IS 
BEGIN
    DELETE FROM inquilino WHERE cpf = cpfAntigo;
    EXCEPTION
    WHEN no_data_found THEN
        dbms_output.put_line('CPF não encontrado!');
    DELETE FROM pessoa WHERE cpf = cpfAntigo;
    EXCEPTION
    WHEN no_data_found THEN
        dbms_output.put_line('CPF não encontrado!');
END RemovePessoaEInquilino;
END RepasseAluguel;

-- Triggers
