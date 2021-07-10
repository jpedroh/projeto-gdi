CREATE TABLE funcionario(
    cpf varchar2(11), 
    salario decimal(7,2), 
    funcao varchar2(15), 
    cpf_supervisor varchar2(11),
    CONSTRAINT funcionario_pkey PRIMARY KEY (cpf),
    CONSTRAINT funcionario_fkey1 FOREIGN KEY (cpf) REFERENCES pessoa (cpf),
    CONSTRAINT funcionario_fkey2 FOREIGN KEY (cpf_supervisor) REFERENCES funcionario (cpf) 
);

INSERT INTO funcionario VALUES ('37383978099', 2000, 'Supervisor', NULL);
INSERT INTO funcionario VALUES ('41893520048', 2000, 'Supervisor', NULL);
INSERT INTO funcionario VALUES ('23251067052', 10000, 'Supervisor', NULL);
INSERT INTO funcionario VALUES ('51927985072', 4000.9, 'Vendedor', '37383978099');
INSERT INTO funcionario VALUES ('89712208052', 4200.2, 'Vendedor', '37383978099');
INSERT INTO funcionario VALUES ('35454794040', 2200.2, 'Zelador', '41893520048');
INSERT INTO funcionario VALUES ('99941481091', 1999.1, 'Zelador', '41893520048');
INSERT INTO funcionario VALUES ('19276748083', 999.1, 'Tesoureiro', '23251067052');
INSERT INTO funcionario VALUES ('08978954014', 3999.1, 'Tesoureiro', '23251067052');