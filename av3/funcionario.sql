CREATE TABLE funcionario(
    cpf varchar2(11), 
    salario decimal(7,2), 
    funcao varchar2(15), 
    cpf_supervisor varchar2(11),
    CONSTRAINT funcionario_pkey PRIMARY KEY (cpf),
    CONSTRAINT funcionario_fkey1 FOREIGN KEY (cpf) REFERENCES pessoa (cpf),
    CONSTRAINT funcionario_fkey1 FOREIGN KEY (cpf_supervisor) REFERENCES funcionario (cpf) 
);