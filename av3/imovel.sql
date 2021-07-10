CREATE TABLE imovel (
    cod_escritura varchar2(20),
    taxa_de_corretagem integer,
    valor_do_aluguel decimal(7,2),
    endereco_cep varchar2(8),
    endereco_numero integer,
    endereco_complemento varchar2(15),
    cpf_proprietario varchar2(11),
    CONSTRAINT imovel_pkey PRIMARY KEY (cod_escritura),
    CONSTRAINT cpf_proprietario_fkey FOREIGN KEY (cpf_proprietario) REFERENCES proprietario (pessoa_cpf),
    CONSTRAINT endereco_cep_fkey FOREIGN KEY (endereco_cep) REFERENCES endereco (cep)
);
