CREATE TABLE inquilino (
    cpf varchar2(11),
    renda decimal(7,2),
    valor_max_desejado decimal(7,2),
    CONSTRAINT inquilino_pkey PRIMARY KEY (cpf),
    CONSTRAINT inquilino_fkey FOREIGN KEY (cpf) REFERENCES pessoa (cpf)
);
