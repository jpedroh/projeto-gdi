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
/* PROPRIETÁRIOS */
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
/* DAQUI PRA BAIXO TEM Q INSERIR NOS ENDEREÇOS */
/* FUNCIONÁRIOS */
INSERT INTO pessoa VALUES ('51927985072', 'Bião', TO_DATE('25-10-1980', 'dd-mm-yyyy'), '56789000', 100, NULL);
INSERT INTO pessoa VALUES ('89712208052', 'Gabriel', TO_DATE('25-10-2003', 'dd-mm-yyyy'), '51345520', 154, NULL);
INSERT INTO pessoa VALUES ('35454794040', 'Matheus', TO_DATE('25-10-2004', 'dd-mm-yyyy'), '50630974', 753, 'Apt 324');
INSERT INTO pessoa VALUES ('99941481091', 'João', TO_DATE('25-10-2001', 'dd-mm-yyyy'), '90730974', 666, NULL);
INSERT INTO pessoa VALUES ('19276748083', 'Pedro', TO_DATE('25-10-1969', 'dd-mm-yyyy'), '50635374', 242, NULL);
INSERT INTO pessoa VALUES ('08978954014', 'Gabriel', TO_DATE('25-10-1949', 'dd-mm-yyyy'), '50630984', 111, 'Apt 1234');
/* FUNCIONÁRIOS QUE SÃO SUPERVISORES */
INSERT INTO pessoa VALUES ('37383978099', 'Maria', TO_DATE('25-10-1980', 'dd-mm-yyyy'), '5680000', 121, 'Casa');
INSERT INTO pessoa VALUES ('41893520048', 'Clara', TO_DATE('25-10-1969', 'dd-mm-yyyy'), '5680000', 000, NULL);
INSERT INTO pessoa VALUES ('23251067052', 'Letícia', TO_DATE('25-10-2001', 'dd-mm-yyyy'), '56789000', 100, 'Segundo andar');
/* INQUILINOS */
INSERT INTO pessoa VALUES ('15069931091', 'Rodolfo', TO_DATE('25-10-1968', 'dd-mm-yyyy'), '5680000', 121, 'Casa');
INSERT INTO pessoa VALUES ('75477832010', 'Antonio', TO_DATE('25-10-1987', 'dd-mm-yyyy'), '5680000', 000, NULL);
INSERT INTO pessoa VALUES ('45851424010', 'João', TO_DATE('25-10-1978', 'dd-mm-yyyy'), '56789000', 100, 'Segundo andar');
INSERT INTO pessoa VALUES ('38120912080', 'Maria', TO_DATE('25-10-1980', 'dd-mm-yyyy'), '5680000', 121, 'Casa');
INSERT INTO pessoa VALUES ('10217341012', 'Rodrigo', TO_DATE('25-10-1978', 'dd-mm-yyyy'), '5680000', 000, NULL);
INSERT INTO pessoa VALUES ('92027748032', 'Pietro', TO_DATE('25-10-1974', 'dd-mm-yyyy'), '56789000', 100, 'Segundo andar');
INSERT INTO pessoa VALUES ('71033122068', 'Maria', TO_DATE('25-10-1980', 'dd-mm-yyyy'), '5680000', 121, 'Casa');
INSERT INTO pessoa VALUES ('98643394009', 'Fernanda', TO_DATE('25-10-1955', 'dd-mm-yyyy'), '5680000', 000, NULL);
INSERT INTO pessoa VALUES ('96458502079', 'Núbia', TO_DATE('25-10-1981', 'dd-mm-yyyy'), '56789000', 100, 'Segundo andar');
