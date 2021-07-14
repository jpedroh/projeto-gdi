DROP TABLE perfil;
DROP TABLE parcela;
DROP TABLE bonificacao;
DROP TABLE aluga;
DROP TABLE contrato;
DROP TABLE imovel;
DROP TABLE funcionario;
DROP TABLE inquilino;
DROP TABLE proprietario;
DROP TABLE telefones;
DROP TABLE pessoa;
DROP TABLE endereco;
DROP SEQUENCE bonificacao_id_sequence;

CREATE TABLE endereco (
    cep varchar2(8),
    rua varchar2(50),
    bairro varchar2(15),
    CONSTRAINT endereco_pkey PRIMARY KEY (cep)
);

CREATE TABLE pessoa (
    cpf varchar2(11),
    nome varchar2(50),
    data_de_nascimento date,
    endereco_cep varchar2(8),
    endereco_numero integer,
    endereco_complemento varchar2(15),
    CONSTRAINT pessoa_pkey PRIMARY KEY (cpf),
    CONSTRAINT pessoa_fkey FOREIGN KEY (endereco_cep) REFERENCES endereco (cep)
);

CREATE TABLE telefones (
    cpf varchar2(11),
    telefone varchar2(11),
    CONSTRAINT telefones_pkey PRIMARY KEY (cpf, telefone),
    CONSTRAINT telefones_fkey FOREIGN KEY (cpf) REFERENCES pessoa (cpf) 
);

CREATE TABLE proprietario(
    cpf varchar2(11),
    dados_bancarios_conta integer, 
    dados_bancarios_agencia integer, 
    dados_bancarios_banco integer,
    CONSTRAINT proprietario_pkey PRIMARY KEY (cpf),
    CONSTRAINT proprietario_fkey FOREIGN KEY (cpf) REFERENCES pessoa (cpf) 
);

CREATE TABLE inquilino (
    cpf varchar2(11),
    renda decimal(7,2),
    valor_max_desejado decimal(7,2),
    CONSTRAINT inquilino_pkey PRIMARY KEY (cpf),
    CONSTRAINT inquilino_fkey FOREIGN KEY (cpf) REFERENCES pessoa (cpf)
);

CREATE TABLE funcionario(
    cpf varchar2(11), 
    salario decimal(7,2), 
    funcao varchar2(15), 
    cpf_supervisor varchar2(11),
    CONSTRAINT funcionario_pkey PRIMARY KEY (cpf),
    CONSTRAINT funcionario_fkey1 FOREIGN KEY (cpf) REFERENCES pessoa (cpf),
    CONSTRAINT funcionario_fkey2 FOREIGN KEY (cpf_supervisor) REFERENCES funcionario (cpf) 
);

CREATE TABLE imovel (
    cod_escritura varchar2(10),
    taxa_de_corretagem integer,
    valor_do_aluguel decimal(7,2),
    endereco_cep varchar2(8),
    endereco_numero integer,
    endereco_complemento varchar2(15),
    cpf_proprietario varchar2(11),
    CONSTRAINT imovel_pkey PRIMARY KEY (cod_escritura),
    CONSTRAINT imovel_fkey1 FOREIGN KEY (cpf_proprietario) REFERENCES proprietario (cpf),
    CONSTRAINT imovel_fkey2 FOREIGN KEY (endereco_cep) REFERENCES endereco (cep),
    CONSTRAINT imovel_check CHECK (valor_do_aluguel > 0.00)
);

CREATE TABLE contrato (
    numero integer,
    data_de_fim date,
    data_de_assinatura date,
    cpf_funcionario varchar2(11),
    CONSTRAINT contrato_pkey PRIMARY KEY (numero),
    CONSTRAINT contrato_fkey FOREIGN KEY (cpf_funcionario) REFERENCES funcionario (cpf)
);

CREATE TABLE aluga (
    cod_escritura varchar2(10),
    cpf_inquilino varchar2(11),
    num_contrato integer,
    data_aluguel date,
    CONSTRAINT aluga_pkey PRIMARY KEY (cod_escritura, cpf_inquilino, num_contrato, data_aluguel),
    CONSTRAINT aluga_fkey1 FOREIGN KEY (cod_escritura) REFERENCES imovel (cod_escritura),
    CONSTRAINT aluga_fkey2 FOREIGN KEY (cpf_inquilino) REFERENCES inquilino (cpf),
    CONSTRAINT aluga_fkey3 FOREIGN KEY (num_contrato) REFERENCES contrato (numero)
);

CREATE SEQUENCE bonificacao_id_sequence INCREMENT BY 1 START WITH 1;

CREATE TABLE bonificacao(
    id integer,
    valor decimal(7,2),
    numero_contrato integer,
    CONSTRAINT bonificacao_pkey PRIMARY KEY (id),
    CONSTRAINT bonificacao_fkey FOREIGN KEY (numero_contrato) REFERENCES contrato (numero)
);

CREATE TABLE parcela (
    numero_contrato integer,
    codigo integer,
    data_vencimento date,
    valor decimal(7,2),
    CONSTRAINT parcela_pkey PRIMARY KEY (numero_contrato, codigo),
    CONSTRAINT parcela_fkey FOREIGN KEY (numero_contrato) REFERENCES contrato (numero),
    CONSTRAINT parcela_check CHECK (valor > 0.0)
);

CREATE TABLE perfil(
    cod_escritura varchar2(20),
    perfil varchar2(20),
    CONSTRAINT perfil_pkey PRIMARY KEY (cod_escritura, perfil),
    CONSTRAINT perfil_fkey FOREIGN KEY (cod_escritura) REFERENCES imovel (cod_escritura)
);