/* ENDEREÇOS */
INSERT INTO endereco VALUES ('50740445', 'Rua Visconde de Barbacena', 'Varzea');
INSERT INTO endereco VALUES ('51011330', 'Rua João Bandeira de Melo', 'Pina');
INSERT INTO endereco VALUES ('50910510', 'Rua Professor Pedro Augusto', 'Manaira');
INSERT INTO endereco VALUES ('51010450', 'Travessa Albacora', 'Brasília Teimosa');
INSERT INTO endereco VALUES ('50620491', 'Rua Piranhas', 'Torre');
INSERT INTO endereco VALUES ('50790901', 'Rua Leandro Barreto', 'Manaira');
INSERT INTO endereco VALUES ('51011061', 'Rua Vila Alegre', 'Pina');
INSERT INTO endereco VALUES ('51160350', 'Rua José da Silva Lucena', 'Imbiribeira');
INSERT INTO endereco VALUES ('51345520', 'Rua Bom Jardim', 'COHAB');
INSERT INTO endereco VALUES ('50630974', 'Avenida General San Martin', 'Cordeiro');

/* PESSOAS_PROP */
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
/* PESSOAS_FUNCIONÁRIOS */
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
/* PESSOAS_INQUILINOS */
INSERT INTO pessoa VALUES ('15069931091', 'Rodolfo', TO_DATE('25-10-1968', 'dd-mm-yyyy'), '5680000', 121, 'Casa');
INSERT INTO pessoa VALUES ('75477832010', 'Antonio', TO_DATE('25-10-1987', 'dd-mm-yyyy'), '5680000', 000, NULL);
INSERT INTO pessoa VALUES ('45851424010', 'João', TO_DATE('25-10-1978', 'dd-mm-yyyy'), '56789000', 100, 'Segundo andar');
INSERT INTO pessoa VALUES ('38120912080', 'Maria', TO_DATE('25-10-1980', 'dd-mm-yyyy'), '5680000', 121, 'Casa');
INSERT INTO pessoa VALUES ('10217341012', 'Rodrigo', TO_DATE('25-10-1978', 'dd-mm-yyyy'), '5680000', 000, NULL);
INSERT INTO pessoa VALUES ('92027748032', 'Pietro', TO_DATE('25-10-1974', 'dd-mm-yyyy'), '56789000', 100, 'Segundo andar');
INSERT INTO pessoa VALUES ('71033122068', 'Maria', TO_DATE('25-10-1980', 'dd-mm-yyyy'), '5680000', 121, 'Casa');
INSERT INTO pessoa VALUES ('98643394009', 'Fernanda', TO_DATE('25-10-1955', 'dd-mm-yyyy'), '5680000', 000, NULL);
INSERT INTO pessoa VALUES ('96458502079', 'Núbia', TO_DATE('25-10-1981', 'dd-mm-yyyy'), '56789000', 100, 'Segundo andar');
/* PROPRIETÁRIOS */
INSERT INTO proprietario VALUES ('03176487532', 1726, 1433, 360);
INSERT INTO proprietario VALUES ('03178903746', 6475, 1433, 360);
INSERT INTO proprietario VALUES ('03183642911', 5636, 1433, 360);
INSERT INTO proprietario VALUES ('58961248956', 8572, 1433, 360);
INSERT INTO proprietario VALUES ('03198653754', 3233, 1433, 360);
INSERT INTO proprietario VALUES ('79924233654', 9546, 0001, 160);
INSERT INTO proprietario VALUES ('23547985463', 7562, 0001, 160);
INSERT INTO proprietario VALUES ('03186390274', 8816, 0001, 160);
INSERT INTO proprietario VALUES ('03182639412', 3916, 6789, 169);
INSERT INTO proprietario VALUES ('81335003529', 1840, 6789, 169);
/* FUNCIONÁRIOS */
INSERT INTO funcionario VALUES ('37383978099', 2000, 'Supervisor', NULL);
INSERT INTO funcionario VALUES ('41893520048', 2000, 'Supervisor', NULL);
INSERT INTO funcionario VALUES ('23251067052', 10000, 'Supervisor', NULL);
INSERT INTO funcionario VALUES ('51927985072', 4000.9, 'Vendedor', '37383978099');
INSERT INTO funcionario VALUES ('89712208052', 4200.2, 'Vendedor', '37383978099');
INSERT INTO funcionario VALUES ('35454794040', 2200.2, 'Zelador', '41893520048');
INSERT INTO funcionario VALUES ('99941481091', 1999.1, 'Zelador', '41893520048');
INSERT INTO funcionario VALUES ('19276748083', 999.1, 'Tesoureiro', '23251067052');
INSERT INTO funcionario VALUES ('08978954014', 3999.1, 'Tesoureiro', '23251067052');
/* INQUILINOS */
INSERT INTO inquilino VALUES ('15069931091', 5000, 400);
INSERT INTO inquilino VALUES ('75477832010', 10000, 350);
INSERT INTO inquilino VALUES ('45851424010', 1254, 250);
INSERT INTO inquilino VALUES ('38120912080', 8555, 200);
INSERT INTO inquilino VALUES ('10217341012', 9632, 1000);
INSERT INTO inquilino VALUES ('92027748032', 71412, 4000);
INSERT INTO inquilino VALUES ('71033122068', 14111, 400);
INSERT INTO inquilino VALUES ('98643394009', 5000, 2400);
INSERT INTO inquilino VALUES ('96458502079', 999, 200);

/* TELEFONE */
INSERT INTO telefones VALUES ('03176487532', '8799945666');
INSERT INTO telefones VALUES ('03178903746', '2131244123');
INSERT INTO telefones VALUES ('03183642911', '1412321321');
INSERT INTO telefones VALUES ('58961248956', '2132132132');
INSERT INTO telefones VALUES ('03198653754', '3213213213');
INSERT INTO telefones VALUES ('79924233654', '2133213214');
INSERT INTO telefones VALUES ('23547985463', '7657567635');
INSERT INTO telefones VALUES ('03186390274', '6435524534');
INSERT INTO telefones VALUES ('03182639412', '1111111111');
INSERT INTO telefones VALUES ('81335003529', '1231423432');

/* CONTRATOS */
INSERT INTO contrato VALUES ('3543', TO_DATE('25-10-2030', 'dd-mm-yyyy'), TO_DATE('25-10-2021', 'dd-mm-yyyy'), '51927985072');
INSERT INTO contrato VALUES ('8272', TO_DATE('25-10-2025', 'dd-mm-yyyy'), TO_DATE('25-05-2016', 'dd-mm-yyyy'), '51927985072');
INSERT INTO contrato VALUES ('6526', TO_DATE('25-10-2022', 'dd-mm-yyyy'), TO_DATE('01-05-2016', 'dd-mm-yyyy'), '51927985072');
INSERT INTO contrato VALUES ('2393', TO_DATE('25-10-2022', 'dd-mm-yyyy'), TO_DATE('01-05-2009', 'dd-mm-yyyy'), '51927985072');
INSERT INTO contrato VALUES ('5932', TO_DATE('25-10-2030', 'dd-mm-yyyy'), TO_DATE('01-09-2009', 'dd-mm-yyyy'), '51927985072');
INSERT INTO contrato VALUES ('5121', TO_DATE('25-10-2030', 'dd-mm-yyyy'), TO_DATE('01-09-2020', 'dd-mm-yyyy'), '51927985072');
INSERT INTO contrato VALUES ('2285', TO_DATE('25-10-2030', 'dd-mm-yyyy'), TO_DATE('01-09-2020', 'dd-mm-yyyy'), '51927985072');
INSERT INTO contrato VALUES ('8105', TO_DATE('25-10-2040', 'dd-mm-yyyy'), TO_DATE('30-10-2018', 'dd-mm-yyyy'), '89712208052');
INSERT INTO contrato VALUES ('8285', TO_DATE('25-10-2040', 'dd-mm-yyyy'), TO_DATE('30-11-2018', 'dd-mm-yyyy'), '89712208052');
INSERT INTO contrato VALUES ('7170', TO_DATE('25-10-2040', 'dd-mm-yyyy'), TO_DATE('30-11-2019', 'dd-mm-yyyy'), '89712208052');
INSERT INTO contrato VALUES ('1464', TO_DATE('25-10-2056', 'dd-mm-yyyy'), TO_DATE('30-11-2019', 'dd-mm-yyyy'), '89712208052');
INSERT INTO contrato VALUES ('6524', TO_DATE('25-10-2056', 'dd-mm-yyyy'), TO_DATE('30-12-2019', 'dd-mm-yyyy'), '89712208052');
INSERT INTO contrato VALUES ('4282', TO_DATE('25-10-2056', 'dd-mm-yyyy'), TO_DATE('30-12-2021', 'dd-mm-yyyy'), '89712208052');
