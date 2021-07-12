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
