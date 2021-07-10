CREATE TABLE pessoa (
    cpf varchar2(11),
    nome varchar2(50),
    data_de_nascimento date,
    endereco_cep varchar2(8),
    endereco_numero integer,
    endereco_complemento varchar2(15),
    CONSTRAINT pessoa_pkey PRIMARY KEY (cpf),
    CONSTRAINT endereco_cep_fkey FOREIGN KEY (endereco_cep) REFERENCES endereco (cep)
);
