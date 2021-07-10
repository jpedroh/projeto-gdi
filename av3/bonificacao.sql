CREATE SEQUENCE id_sequence INCREMENT BY 1 START WITH 1;

CREATE TABLE bonificacao(
    id integer,
    valor decimal(7,2),
    numero_contrato integer,
    CONSTRAINT bonificacao_pkey PRIMARY KEY (id),
    CONSTRAINT bonificacao_fkey FOREIGN KEY (numero_contrato) REFERENCES contrato (numero)
);