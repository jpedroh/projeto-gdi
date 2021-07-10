CREATE TABLE telefones (
    cpf varchar2(11),
    telefone varchar2(11),
    CONSTRAINT telefones_pkey PRIMARY KEY (cpf, telefone),
    CONSTRAINT telefones_fkey FOREIGN KEY (cpf) REFERENCES pessoa (cpf) 
);