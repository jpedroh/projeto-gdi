CREATE OR REPLACE TYPE tp_endereco AS OBJECT (
    cep VARCHAR2(8),
    rua VARCHAR2(50),
    bairro VARCHAR2(15),
    numero NUMBER,
    complemento VARCHAR2(15)
);
/
CREATE OR REPLACE TYPE tp_telefone AS OBJECT(
    numero varchar2(8)
);
/
CREATE OR REPLACE TYPE tp_telefones AS VARRAY(5) OF tp_telefone;
/
CREATE OR REPLACE TYPE tp_pessoa AS OBJECT (
    cpf VARCHAR(11),
    nome VARCHAR(50),
    data_de_nascimento date,
    endereco tp_endereco,
    telefones tp_telefones,
    MEMBER FUNCTION getTelefonePrioritario RETURN tp_telefone
) NOT FINAL NOT INSTANTIABLE;
/
CREATE OR REPLACE TYPE BODY tp_pessoa AS 
    MEMBER FUNCTION getTelefonePrioritario RETURN tp_telefone IS
    BEGIN
        RETURN telefones(1);
    END;
END;
/
CREATE OR REPLACE TYPE tp_dadosBancarios AS OBJECT(
    agencia number(4),
    conta number(9),
    banco number(3)
);
/
CREATE OR REPLACE TYPE tp_proprietario UNDER tp_pessoa (
    dados_bancarios tp_dadosBancarios
);
/
CREATE OR REPLACE TYPE tp_inquilino UNDER tp_pessoa (
    renda DECIMAL(7,2),
    valor_max_desejado DECIMAL(7,2)
);
/
CREATE OR REPLACE TYPE tp_funcionario UNDER tp_pessoa (
    salario DECIMAL(7, 2),
    funcao varchar2(15),
    OVERRIDING MEMBER FUNCTION getTelefonePrioritario RETURN tp_telefone
);
/
ALTER TYPE tp_funcionario ADD ATTRIBUTE (supervisor REF tp_funcionario) CASCADE;
/
CREATE OR REPLACE TYPE BODY tp_funcionario AS
    -- Por padrão, o telefone prioritário do funcionário é o telefone corporativo
    OVERRIDING MEMBER FUNCTION getTelefonePrioritario RETURN tp_telefone IS
    BEGIN
        RETURN tp_telefone('40028922');
    END;
END;
/
CREATE OR REPLACE TYPE tp_perfil AS OBJECT (
    descricao varchar2(20)
);
/
CREATE TYPE tp_nt_perfil AS TABLE OF tp_perfil;
/
CREATE OR REPLACE TYPE tp_imovel AS OBJECT (
    cod_escritura varchar2(10),
    taxa_de_corretagem integer,
    valor_do_aluguel decimal(7,2),
    endereco tp_endereco,
    perfil tp_nt_perfil,
    proprietario REF tp_proprietario,
    FINAL MEMBER FUNCTION calcularReajuste(percentual DECIMAL) RETURN DECIMAL,
    MAP MEMBER FUNCTION imovelPorValor RETURN DECIMAL
);
/
CREATE OR REPLACE TYPE BODY tp_imovel AS
    FINAL MEMBER FUNCTION calcularReajuste(percentual DECIMAL) RETURN DECIMAL IS
    BEGIN
        RETURN self.valor_do_aluguel * (1.0 + percentual);
    END;
    MAP MEMBER FUNCTION imovelPorValor RETURN DECIMAL IS
    BEGIN
        RETURN valor_do_aluguel;
    END;
END;
/
CREATE OR REPLACE TYPE tp_parcela AS OBJECT (
    codigo integer,
    valor decimal(7,2),
    data_vencimento DATE,
    MEMBER FUNCTION calcularJuro(taxa_de_juro DECIMAL) RETURN DECIMAL,
    CONSTRUCTOR FUNCTION tp_parcela (codigo INTEGER, valor DECIMAL, data_vencimento DATE) RETURN SELF AS RESULT
);
/
CREATE OR REPLACE TYPE BODY tp_parcela AS
    MEMBER FUNCTION calcularJuro(taxa_de_juro DECIMAL) RETURN DECIMAL IS
    BEGIN
        RETURN (valor*taxa_de_juro) + valor;
    END;

    CONSTRUCTOR FUNCTION tp_parcela (codigo INTEGER, valor DECIMAL, data_vencimento DATE) RETURN SELF AS RESULT IS
    BEGIN
        IF valor < 0.00 THEN
            RAISE_APPLICATION_ERROR(-20011, 'O valor da parcela não pode ser inferior a 0.00');
        END IF;
        SELF.codigo := codigo;
        SELF.valor := valor;
        SELF.data_vencimento := data_vencimento;
        RETURN; 
    END;
END;
/
CREATE OR REPLACE TYPE tp_gera AS TABLE OF tp_parcela;
/
CREATE OR REPLACE TYPE tp_contrato AS OBJECT (
    numero integer,
    data_de_fim date,
    data_de_assinatura date,
    parcelas tp_gera,
    funcionario REF tp_funcionario,
    ORDER MEMBER FUNCTION contratoNumero(X tp_contrato) RETURN INTEGER
);
/
CREATE OR REPLACE TYPE BODY tp_contrato AS
    ORDER MEMBER FUNCTION contratoNumero(X tp_contrato) RETURN INTEGER IS
    BEGIN
        RETURN SELF.numero - X.numero;
    END;
END;
/
CREATE OR REPLACE TYPE tp_bonificacao AS OBJECT (
    id integer,
    valor decimal(7,2),
    CONSTRUCTOR FUNCTION tp_bonificacao (id INTEGER, valor DECIMAL) RETURN SELF AS RESULT
);
/
CREATE OR REPLACE TYPE BODY tp_bonificacao AS 
    CONSTRUCTOR FUNCTION tp_bonificacao(id INTEGER, valor DECIMAL) RETURN SELF AS RESULT IS
    BEGIN
        IF valor < 0.00 THEN
            RAISE_APPLICATION_ERROR(-20011, 'O valor da bonificação não pode ser inferior a 0.00');
        END IF;
        SELF.id := id;
        SELF.valor := valor;
        RETURN;
    END;
END;
/
CREATE OR REPLACE TYPE tp_aluga AS OBJECT (
    imovel REF tp_imovel,
    inquilino REF tp_inquilino,
    contrato REF tp_contrato,
    data_aluguel DATE
);
/
CREATE OR REPLACE TYPE tp_celebra AS OBJECT (
    contrato REF tp_contrato,
    bonificacao REF tp_bonificacao,
    funcionario REF tp_funcionario
);
/

------------- CRIAÇÃO DAS TABELAS -------------
CREATE TABLE tb_proprietario OF tp_proprietario(cpf PRIMARY KEY); 
/
CREATE TABLE tb_inquilino OF tp_inquilino(cpf PRIMARY KEY);
/
CREATE TABLE tb_funcionario OF tp_funcionario(
    cpf PRIMARY KEY,
    supervisor SCOPE IS tb_funcionario
);
/
CREATE TABLE tb_imovel OF tp_imovel (
    cod_escritura PRIMARY KEY,
    proprietario WITH ROWID REFERENCES tb_proprietario
) NESTED TABLE perfil STORE AS tb_perfil;
/
CREATE TABLE tb_contrato OF tp_contrato(
    numero PRIMARY KEY,
    funcionario WITH ROWID REFERENCES tb_funcionario
) NESTED TABLE parcelas STORE AS tb_parcela;
/
CREATE TABLE tb_bonificacao OF tp_bonificacao (
    id PRIMARY KEY
);
/
CREATE TABLE tb_celebra OF tp_celebra(
    contrato WITH ROWID REFERENCES tb_contrato,
    funcionario WITH ROWID REFERENCES tb_funcionario,
    bonificacao WITH ROWID REFERENCES tb_bonificacao
);
/
CREATE TABLE tb_aluga OF tp_aluga (
    imovel WITH ROWID REFERENCES tb_imovel,
    inquilino WITH ROWID REFERENCES tb_inquilino,
    contrato WITH ROWID REFERENCES tb_contrato
);