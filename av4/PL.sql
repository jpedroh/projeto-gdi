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
CREATE OR REPLACE FUNCTION pode_alugar(cpf inquilino.cpf%TYPE, cod_escritura imovel.cod_escritura%TYPE) RETURN BOOLEAN IS
    TYPE T_inquilino IS RECORD (
        renda inquilino.renda%TYPE,
        valor_max inquilino.valor_max_desejado%TYPE
    );
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

/* Criando uma tabela virtual para realizar auditoria das ações realizadas durante a sessão */
CREATE OR REPLACE PACKAGE RepasseAluguel AS 
    PROCEDURE InserirNovosDados(
        novoCPF pessoa.cpf%TYPE,
        novoNome pessoa.nome%TYPE,
        novoDataNas pessoa.data_de_nascimento%TYPE, 
        novoCep pessoa.endereco_cep%TYPE,
        novoRua endereco.rua%TYPE,
        novoBairro endereco.bairro%TYPE,
        novoNumero pessoa.endereco_numero%TYPE,
        novoComplemento pessoa.endereco_complemento%TYPE,
        novaRenda inquilino.renda);
    PROCEDURE AtualizaInformacaoContrato(novoCpf pessoa.cpf%TYPE, antigoCpf pessoa.cpf%TYPE);
    PROCEDURE RemovePessoaEInquilino(cpfAntigo pessoa.cpf%TYPE);
END RepasseAluguel;
/
CREATE OR REPLACE PACKAGE BODY RepasseAluguel AS 
    TYPE Tabela_Auditoria_Repasses IS TABLE OF varchar2(50) INDEX BY BINARY_INTEGER;
    i BINARY_INTEGER := 1;
    auditoria Tabela_Auditoria_Repasses;

    PROCEDURE InserirNovosDados(
        novoCPF pessoa.cpf%TYPE,
        novoNome pessoa.nome%TYPE,
        novoDataNas pessoa.data_de_nascimento%TYPE, 
        novoCep pessoa.endereco_cep%TYPE,
        novoRua endereco.rua%TYPE,
        novoBairro endereco.bairro%TYPE,
        novoNumero pessoa.endereco_numero%TYPE,
        novoComplemento pessoa.endereco_complemento%TYPE,
        novaRenda inquilino.renda%TYPE
    ) IS 
    BEGIN
        INSERT INTO endereco VALUES (novoCep, novoRua, novoBairro);
        INSERT INTO pessoa VALUES (novoCPF, novoNome, novoDataNas, novoCep, novoNumero, novoComplemento);
        INSERT INTO inquilino VALUES (novoCPF, novaRenda, NULL);
        auditoria(i) := 'Inserindo dados de ' || novoNome;
        i := i + 1;
    END InserirNovosDados;

    PROCEDURE AtualizaInformacaoContrato(
        novoCpf pessoa.cpf%TYPE,
        antigoCpf pessoa.cpf%TYPE
    ) IS 
    BEGIN 
        UPDATE aluga SET cpf_inquilino = novoCpf WHERE cpf_inquilino = antigoCpf;
        auditoria(i) := 'Titular do contrato alterado de ' || antigoCpf || ' para ' || novoCpf;
        i := i + 1;
        EXCEPTION
        WHEN no_data_found THEN
            dbms_output.put_line('CPF não encontrado!');
    END AtualizaInformacaoContrato;

    PROCEDURE RemovePessoaEInquilino(cpfAntigo pessoa.cpf%TYPE) IS 
    BEGIN
        DELETE FROM inquilino WHERE cpf = cpfAntigo;
        auditoria(i) := 'Inquilino ' || cpfAntigo || ' removido da base de dados';
        i := i + 1;
        EXCEPTION
        WHEN no_data_found THEN
            dbms_output.put_line('CPF não encontrado!');
        DELETE FROM pessoa WHERE cpf = cpfAntigo;
    END RemovePessoaEInquilino;
END RepasseAluguel;

-- Trigger de linha para verificar se a data da parcela a ser inserida tem no máximo um mês de diferença do fim do contrato.
CREATE OR REPLACE TRIGGER addParcela
BEFORE INSERT OR UPDATE ON parcela
FOR EACH ROW
DECLARE 
    data_de_fim_contrato date;
BEGIN 
    SELECT data_de_fim INTO data_de_fim_contrato FROM contrato WHERE numero = :NEW.numero_contrato;
    IF :NEW.data_vencimento - data_de_fim_contrato > 30 THEN RAISE_APPLICATION_ERROR(-20011, 'Data de vencimento da nova parcela não pode ser superior a 30 dias apos o termino do contrato.');
    END IF;
END;

-- Trigger de comando para somente realizar inserções e remoções de funcionários até o quinto dia do mês (por razões fiscais)
CREATE OR REPLACE TRIGGER limitaFuncionario
BEFORE INSERT OR DELETE ON funcionario
DECLARE 
    dia_atual varchar(2);
BEGIN 
    dia_atual := EXTRACT(day from sysdate);
    IF dia_atual NOT IN ('01', '02', '03', '04', '05') THEN
        RAISE_APPLICATION_ERROR(-20011, 'Inserções e remoções de usuário só podem ser processadas até o quinto dia do mês.');
    END IF;
END;
