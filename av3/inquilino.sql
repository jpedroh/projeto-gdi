CREATE TABLE inquilino (
    pessoa_cpf varchar2(11),
    renda decimal(7,2),
    valor_max_desejado decimal(7,2),
    CONSTRAINT inquilino_pkey PRIMARY KEY (pessoa_cpf),
    CONSTRAINT pessoa_cpf_fkey FOREIGN KEY (pessoa_cpf) REFERENCES pessoa (cpf)
);
