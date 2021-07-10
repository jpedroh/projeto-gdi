CREATE TABLE aluga (
    cod_escritura varchar2(20),
    cpf_inquilino varchar2(11),
    num_contrato integer,
    data_aluguel date,
    CONSTRAINT aluga_pkey PRIMARY KEY (cod_escritura, cpf_inquilino, num_contrato, data_aluguel),
    CONSTRAINT aluga_fkey1 FOREIGN KEY (cod_escritura) REFERENCES imovel (cod_escritura),
    CONSTRAINT aluga_fkey2 FOREIGN KEY (cpf_inquilino) REFERENCES inquilino (cpf),
    CONSTRAINT aluga_fkey3 FOREIGN KEY (num_contrato) REFERENCES contrato (numero)
);