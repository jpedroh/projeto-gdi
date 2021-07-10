CREATE TABLE inquilino (
    pessoa_cpf varchar2(11),
    renda int,
    valor_max_desejado int,
    CONSTRAINT inquilino_pkey PRIMARY KEY (pessoa_cpf),
    CONSTRAINT pessoa_cpf_fkey FOREIGN KEY (pessoa_cpf) REFERENCES pessoa (cpf)
);
