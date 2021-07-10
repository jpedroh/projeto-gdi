CREATE TABLE parcela (
    numero_contrato integer,
    codigo integer,
    data_vencimento date,
    valor decimal(7,2)
    CONSTRAINT parcela_pkey PRIMARY KEY (numero_contrato, codigo),
    CONSTRAINT numero_contrato_fkey FOREIGN KEY (numero_contrato) REFERENCES contrato (numero),
    CONSTRAINT parcela_check CHECK (valor > 0.0)
);
