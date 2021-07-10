CREATE TABLE contrato (
    numero integer,
    data_de_fim date,
    data_de_assinatura date,
    cpf_funcionario varchar2(11),
    CONSTRAINT contrato_pkey PRIMARY KEY (numero),
    CONSTRAINT cpf_funcionario_fkey FOREIGN KEY (cpf_funcionario) REFERENCES funcionario (pessoa_cpf)
);
