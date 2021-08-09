CREATE OR REPLACE TYPE tp_endereco AS OBJECT (
    cep VARCHAR2(8),
    rua VARCHAR2(50),
    bairro VARCHAR2(15),
    numero NUMBER,
    complemento VARCHAR2(15)
);
/
CREATE OR REPLACE TYPE tp_telefone AS OBJECT(
    numero varchar2(8),
);
/
CREATE OR REPLACE TYPE tp_telefones AS VARRAY(5) OF tp_telefone;
/
CREATE OR REPLACE TYPE tp_pessoa AS OBJECT (
    cpf VARCHAR(11),
    nome VARCHAR(50),
    data_de_nascimento date,
    endereco tp_endereco,
    telefones tp_telefones
) NOT FINAL NOT INSTANTIABLE;
/
CREATE OR REPLACE TYPE tp_dadosBancarios AS OBJECT(
    agencia number(4),
    conta number(9),
    banco number(3)
);
/
CREATE OR REPLACE TYPE tp_proprietario UNDER tp_pessoa AS OBJECT (
    dados_bancarios tp_dadosBancarios
);
/
CREATE OR REPLACE TYPE tp_inquilino UNDER tp_pessoa AS OBJECT (
    renda number(7,2),
    valor_max_desejado number (4),
);
/
CREATE OR REPLACE TYPE tp_funcionario UNDER tp_pessoa AS OBJECT (
    salario DECIMAL(7, 2),
    funcao varchar2(15), 
);
/
ALTER TYPE tp_funcionario ADD ATTRIBUTE (supervisor REF tp_funcionario) CASCADE;
/
CREATE OR REPLACE TYPE tp_perfil AS OBJECT (
    descricao varchar2(20),
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
    proprietario REF tp_proprietario
);
/
CREATE OR REPLACE TYPE tp_parcela AS OBJECT (
    codigo integer,
    valor decimal(7,2),
    data_vencimento DATE
);
/
CREATE OR REPLACE TYPE tp_gera AS TABLE OF tp_parcela;
/
CREATE OR REPLACE TYPE tp_contrato AS OBJECT (
    numero integer,
    data_de_fim date,
    data_de_assinatura date,
    parcelas tp_gera
);
/
CREATE OR REPLACE TYPE tp_bonificacao AS OBJECT (
    id integer,
    valor decimal(7,2)
);
/
CREATE OR REPLACE TYPE tp_aluga AS OBJECT (
    imovel REF tp_imovel,
    inquilino REF tp_inquilino,
    contrato REF tp_contrato,
    data_aluguel DATE
);
/