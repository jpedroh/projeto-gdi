CREATE TABLE pessoa (
    cpf varchar2(11),
    nome varchar2(50),
    data_de_nascimento date,
    endereco_cep varchar2(8),
    endereco_numero integer,
    endereco_complemento varchar2(15),
    CONSTRAINT pessoa_pkey PRIMARY KEY (cpf),
    CONSTRAINT pessoa_fkey FOREIGN KEY (endereco_cep) REFERENCES endereco (cep)
);

INSERT INTO pessoa VALUES ('03176487532', 'Ricardo', TO_DATE('14-03-1962', 'dd-mm-yyyy'), '50740445', 82, 'Apt 201');
INSERT INTO pessoa VALUES ('03178903746', 'Matheus', TO_DATE('14-02-1997', 'dd-mm-yyyy'), '51011330', 100, NULL);
INSERT INTO pessoa VALUES ('03183642911', 'Beatriz', TO_DATE('24-12-2000', 'dd-mm-yyyy'), '50910510', 100, NULL);
INSERT INTO pessoa VALUES ('58961248956', 'Astolfo', TO_DATE('14-05-1970', 'dd-mm-yyyy'), '50910510', 100, 'Apt 102');
INSERT INTO pessoa VALUES ('03198653754', 'Pedro', TO_DATE('04-04-1980', 'dd-mm-yyyy'), '51010450', 100, NULL);
INSERT INTO pessoa VALUES ('79924233654', 'Almir', TO_DATE('03-06-2001', 'dd-mm-yyyy'), '50620491', 100, NULL);
INSERT INTO pessoa VALUES ('23547985463', 'Jéssica', TO_DATE('02-07-1994', 'dd-mm-yyyy'), '50790901', 100, 'Bloco A');
INSERT INTO pessoa VALUES ('03186390274', 'Laura', TO_DATE('05-08-1998', 'dd-mm-yyyy'), '51011061', 100, NULL);
INSERT INTO pessoa VALUES ('48831148312', 'Adalberto', TO_DATE('14-09-1984', 'dd-mm-yyyy'), '51160350', 100, NULL);
INSERT INTO pessoa VALUES ('03182639412', 'Vitória', TO_DATE('20-11-1950', 'dd-mm-yyyy'), '51345520', 100, 'Apt 304');
INSERT INTO pessoa VALUES ('81335003529', 'Rodolfo', TO_DATE('25-10-1969', 'dd-mm-yyyy'), '50630974', 100, NULL);