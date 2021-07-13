/* ENDEREÇOS */
INSERT INTO endereco VALUES ('50740445', 'Rua Visconde de Barbacena', 'Varzea');
INSERT INTO endereco VALUES ('51011330', 'Rua João Bandeira de Melo', 'Pina');
INSERT INTO endereco VALUES ('50910510', 'Rua Professor Pedro Augusto', 'Manaira');
INSERT INTO endereco VALUES ('51010450', 'Travessa Albacora', 'Pina');
INSERT INTO endereco VALUES ('50620491', 'Rua Piranhas', 'Torre');
INSERT INTO endereco VALUES ('50790901', 'Rua Leandro Barreto', 'Manaira');
INSERT INTO endereco VALUES ('51011061', 'Rua Vila Alegre', 'Pina');
INSERT INTO endereco VALUES ('51160350', 'Rua José da Silva Lucena', 'Imbiribeira');
INSERT INTO endereco VALUES ('51345520', 'Rua Bom Jardim', 'COHAB');
INSERT INTO endereco VALUES ('50630974', 'Avenida General San Martin', 'Cordeiro');
INSERT INTO endereço VALUES ('56789000', 'Alameda das Palmeiras', 'Enseada');
INSERT INTO endereço VALUES ('90730974', 'Rua dos Jiquiás', 'Belo Novo');
INSERT INTO endereço VALUES ('50635374', 'Rua das Garças', 'Jardim Molhado');
INSERT INTO endereço VALUES ('50630984', 'Avenida José Maranhão', 'Paulistinha');
INSERT INTO endereço VALUES ('56800000', 'Alameda das Araras', 'Enseada');


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
/* PESSOAS_FUNCIONÁRIOS */
INSERT INTO pessoa VALUES ('51927985072', 'Bião', TO_DATE('25-10-1980', 'dd-mm-yyyy'), '56789000', 100, NULL);
INSERT INTO pessoa VALUES ('89712208052', 'Gabriel', TO_DATE('25-10-2003', 'dd-mm-yyyy'), '51345520', 154, NULL);
INSERT INTO pessoa VALUES ('35454794040', 'Matheus', TO_DATE('25-10-2004', 'dd-mm-yyyy'), '50630974', 753, 'Apt 324');
INSERT INTO pessoa VALUES ('99941481091', 'João', TO_DATE('25-10-2001', 'dd-mm-yyyy'), '90730974', 666, NULL);
INSERT INTO pessoa VALUES ('19276748083', 'Pedro', TO_DATE('25-10-1969', 'dd-mm-yyyy'), '50635374', 242, NULL);
INSERT INTO pessoa VALUES ('08978954014', 'Gabriel', TO_DATE('25-10-1949', 'dd-mm-yyyy'), '50630984', 111, 'Apt 1234');
/* FUNCIONÁRIOS QUE SÃO SUPERVISORES */
INSERT INTO pessoa VALUES ('37383978099', 'Maria', TO_DATE('25-10-1980', 'dd-mm-yyyy'), '56800000', 121, 'Casa');
INSERT INTO pessoa VALUES ('41893520048', 'Clara', TO_DATE('25-10-1969', 'dd-mm-yyyy'), '56800000', 000, NULL);
INSERT INTO pessoa VALUES ('23251067052', 'Letícia', TO_DATE('25-10-2001', 'dd-mm-yyyy'), '56789000', 100, 'Segundo andar');
/* PESSOAS_INQUILINOS */
INSERT INTO pessoa VALUES ('15069931091', 'Rodolfo', TO_DATE('25-10-1968', 'dd-mm-yyyy'), '56800000', 121, 'Casa');
INSERT INTO pessoa VALUES ('75477832010', 'Antonio', TO_DATE('25-10-1987', 'dd-mm-yyyy'), '56800000', 000, NULL);
INSERT INTO pessoa VALUES ('45851424010', 'João', TO_DATE('25-10-1978', 'dd-mm-yyyy'), '56789000', 100, 'Segundo andar');
INSERT INTO pessoa VALUES ('38120912080', 'Maria', TO_DATE('25-10-1980', 'dd-mm-yyyy'), '56800000', 121, 'Casa');
INSERT INTO pessoa VALUES ('10217341012', 'Rodrigo', TO_DATE('25-10-1978', 'dd-mm-yyyy'), '56800000', 000, NULL);
INSERT INTO pessoa VALUES ('92027748032', 'Pietro', TO_DATE('25-10-1974', 'dd-mm-yyyy'), '56789000', 100, 'Segundo andar');
INSERT INTO pessoa VALUES ('71033122068', 'Maria', TO_DATE('25-10-1980', 'dd-mm-yyyy'), '56800000', 121, 'Casa');
INSERT INTO pessoa VALUES ('98643394009', 'Fernanda', TO_DATE('25-10-1955', 'dd-mm-yyyy'), '56800000', 000, NULL);
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

/* TELEFONES */
INSERT INTO telefones VALUES ('03176487532', '8799945666');
INSERT INTO telefones VALUES ('03178903746', '2131244123');
INSERT INTO telefones VALUES ('03183642911', '1412321321');
INSERT INTO telefones VALUES ('58961248956', '2132132132');
INSERT INTO telefones VALUES ('03198653754', '3213213213');
INSERT INTO telefones VALUES ('8121251732', '3213213213');
INSERT INTO telefones VALUES ('79924233654', '2133213214');
INSERT INTO telefones VALUES ('23547985463', '7657567635');
INSERT INTO telefones VALUES ('8140028922', '7657567635');
INSERT INTO telefones VALUES ('03186390274', '6435524534');
INSERT INTO telefones VALUES ('03182639412', '1111111111');
INSERT INTO telefones VALUES ('81335003529', '1231423432');

/* IMÓVEIS */
INSERT INTO imovel VALUES ('3993258644', 10, 2000.00, '56800000', 207, 'Casa', '03176487532');
INSERT INTO imovel VALUES ('6646303088', 5, 1500.00, '54440020', 1019, 'Primeiro Andar', '03178903746');
INSERT INTO imovel VALUES ('3471019961', 6, 800.00, '50865050', 78, 'Bloco A', '03183642911');
INSERT INTO imovel VALUES ('8574634983', 2, 500.00, '50790210', 900, 'Bloco B', '03176487532');
INSERT INTO imovel VALUES ('8637564621', 3, 7500.00, '55643694', 298, 'Casa', '03198653754');
INSERT INTO imovel VALUES ('4960932100', 9, 3000.00, '54430010', 111, 'Bloco A', '79924233654');
INSERT INTO imovel VALUES ('9636810223', 10, 950.00, '50660240', 141, 'Bloco C', '23547985463');
INSERT INTO imovel VALUES ('4188415871', 11, 870.00, '55296540', 768, 'Primeiro Andar', '58961248956');
INSERT INTO imovel VALUES ('2670703949', 1, 1400.00, '52170000', 387, 'Bloco D', '90019224060');
INSERT INTO imovel VALUES ('2813137039', 2, 1200.00, '52061140', 909, 'Bloco B', '03186390274');
INSERT INTO imovel VALUES ('5954115089', 4, 3000.00, '58040030', 278, 'Primeiro Andar', '23547985463');
INSERT INTO imovel VALUES ('7333288555', 5, 5000.00, '58308282', 648, 'Bloco D', '48831148312');
INSERT INTO imovel VALUES ('7152964085', 3, 2900.00, '58703210', 12, 'Bloco A', '03182639412');
INSERT INTO imovel VALUES ('5504615237', 2, 400.00, '54520697', 99, 'Casa', '58961248956');
INSERT INTO imovel VALUES ('4794574729', 1, 450.00, '56503451', 1010, 'Casa', '96759856791');

/* CONTRATOS */
INSERT INTO contrato VALUES (3543, TO_DATE('25-10-2030', 'dd-mm-yyyy'), TO_DATE('25-10-2023', 'dd-mm-yyyy'), '51927985072');
INSERT INTO contrato VALUES (8272, TO_DATE('25-10-2025', 'dd-mm-yyyy'), TO_DATE('25-05-2016', 'dd-mm-yyyy'), '51927985072');
INSERT INTO contrato VALUES (6526, TO_DATE('25-10-2022', 'dd-mm-yyyy'), TO_DATE('01-05-2016', 'dd-mm-yyyy'), '51927985072');
INSERT INTO contrato VALUES (2393, TO_DATE('25-10-2022', 'dd-mm-yyyy'), TO_DATE('01-05-2009', 'dd-mm-yyyy'), '51927985072');
INSERT INTO contrato VALUES (5932, TO_DATE('25-10-2030', 'dd-mm-yyyy'), TO_DATE('01-09-2009', 'dd-mm-yyyy'), '51927985072');
INSERT INTO contrato VALUES (5121, TO_DATE('25-10-2030', 'dd-mm-yyyy'), TO_DATE('01-09-2020', 'dd-mm-yyyy'), '51927985072');
INSERT INTO contrato VALUES (2285, TO_DATE('25-10-2030', 'dd-mm-yyyy'), TO_DATE('25-10-2025', 'dd-mm-yyyy'), '51927985072');
INSERT INTO contrato VALUES (8105, TO_DATE('25-10-2040', 'dd-mm-yyyy'), TO_DATE('30-10-2018', 'dd-mm-yyyy'), '89712208052');
INSERT INTO contrato VALUES (8285, TO_DATE('25-10-2040', 'dd-mm-yyyy'), TO_DATE('30-11-2030', 'dd-mm-yyyy'), '89712208052');
INSERT INTO contrato VALUES (7170, TO_DATE('25-10-2040', 'dd-mm-yyyy'), TO_DATE('30-11-2019', 'dd-mm-yyyy'), '89712208052');
INSERT INTO contrato VALUES (1464, TO_DATE('25-10-2056', 'dd-mm-yyyy'), TO_DATE('30-11-2049', 'dd-mm-yyyy'), '89712208052');
INSERT INTO contrato VALUES (6524, TO_DATE('25-10-2056', 'dd-mm-yyyy'), TO_DATE('30-12-2019', 'dd-mm-yyyy'), '89712208052');
INSERT INTO contrato VALUES (4282, TO_DATE('25-10-2056', 'dd-mm-yyyy'), TO_DATE('30-12-2021', 'dd-mm-yyyy'), '89712208052');

/* Aluga */
INSERT INTO aluga VALUES ('3993258644', '15069931091', 3543, TO_DATE('25-11-2023', 'dd-mm-yyyy'));
INSERT INTO aluga VALUES ('6646303088', '75477832010', 8272, TO_DATE('25-05-2016', 'dd-mm-yyyy'));
INSERT INTO aluga VALUES ('3471019961', '38120912080', 6526, TO_DATE('01-05-2016', 'dd-mm-yyyy'));
INSERT INTO aluga VALUES ('8574634983', '15069931091', 2393, TO_DATE('01-06-2009', 'dd-mm-yyyy'));
INSERT INTO aluga VALUES ('8637564621', '71033122068', 5932, TO_DATE('01-09-2009', 'dd-mm-yyyy'));
INSERT INTO aluga VALUES ('4960932100', '45851424010', 5121, TO_DATE('01-09-2020', 'dd-mm-yyyy'));
INSERT INTO aluga VALUES ('9636810223', '75477832010', 2285, TO_DATE('01-09-2020', 'dd-mm-yyyy'));
INSERT INTO aluga VALUES ('4188415871', '10217341012', 8105, TO_DATE('30-10-2018', 'dd-mm-yyyy'));
INSERT INTO aluga VALUES ('2670703949', '45851424010', 8285, TO_DATE('30-11-2018', 'dd-mm-yyyy'));
INSERT INTO aluga VALUES ('2813137039', '96458502079', 7170, TO_DATE('30-11-2019', 'dd-mm-yyyy'));
INSERT INTO aluga VALUES ('5954115089', '10217341012', 1464, TO_DATE('30-11-2019', 'dd-mm-yyyy'));
INSERT INTO aluga VALUES ('7333288555', '92027748032', 6524, TO_DATE('30-12-2019', 'dd-mm-yyyy'));
INSERT INTO aluga VALUES ('7152964085', '98643394009', 4282, TO_DATE('30-12-2021', 'dd-mm-yyyy'));

/* Bonificações */
INSERT INTO bonificacao VALUES (bonificacao_id_sequence.nextval, 500.00, 3543);
INSERT INTO bonificacao VALUES (bonificacao_id_sequence.nextval, 235.00, 2393);
INSERT INTO bonificacao VALUES (bonificacao_id_sequence.nextval, 165.00, 5932);
INSERT INTO bonificacao VALUES (bonificacao_id_sequence.nextval, 385.00, 8285);
INSERT INTO bonificacao VALUES (bonificacao_id_sequence.nextval, 420.00, 6524);
INSERT INTO bonificacao VALUES (bonificacao_id_sequence.nextval, 630.00, 4282);

/* Parcela */
INSERT INTO parcela VALUES (3543, 1, TO_DATE('05-11-2030', 'dd-mm-yyyy'), 1850.00);
INSERT INTO parcela VALUES (3543, 2, TO_DATE('05-12-2030', 'dd-mm-yyyy'), 1850.00);
INSERT INTO parcela VALUES (3543, 3, TO_DATE('05-01-2031', 'dd-mm-yyyy'), 1850.00);
INSERT INTO parcela VALUES (3543, 4, TO_DATE('05-02-2031', 'dd-mm-yyyy'), 1850.00);
INSERT INTO parcela VALUES (3543, 5, TO_DATE('05-03-2031', 'dd-mm-yyyy'), 1850.00);
INSERT INTO parcela VALUES (3543, 6, TO_DATE('05-04-2031', 'dd-mm-yyyy'), 1850.00);
INSERT INTO parcela VALUES (8272, 1, TO_DATE('07-11-2025', 'dd-mm-yyyy'), 1450.00);
INSERT INTO parcela VALUES (8272, 2, TO_DATE('07-12-2025', 'dd-mm-yyyy'), 1450.00);
INSERT INTO parcela VALUES (8272, 3, TO_DATE('07-01-2026', 'dd-mm-yyyy'), 1450.00);
INSERT INTO parcela VALUES (8272, 4, TO_DATE('07-02-2026', 'dd-mm-yyyy'), 1450.00);
INSERT INTO parcela VALUES (8272, 5, TO_DATE('07-03-2026', 'dd-mm-yyyy'), 1450.00);
INSERT INTO parcela VALUES (8272, 6, TO_DATE('07-04-2026', 'dd-mm-yyyy'), 1450.00);
INSERT INTO parcela VALUES (8272, 7, TO_DATE('07-05-2026', 'dd-mm-yyyy'), 1450.00);
INSERT INTO parcela VALUES (6526, 1, TO_DATE('03-11-2022', 'dd-mm-yyyy'), 850.00);
INSERT INTO parcela VALUES (6526, 2, TO_DATE('03-12-2022', 'dd-mm-yyyy'), 850.00);
INSERT INTO parcela VALUES (6526, 3, TO_DATE('03-01-2023', 'dd-mm-yyyy'), 850.00);
INSERT INTO parcela VALUES (6526, 4, TO_DATE('03-02-2023', 'dd-mm-yyyy'), 850.00);
INSERT INTO parcela VALUES (6526, 5, TO_DATE('03-03-2023', 'dd-mm-yyyy'), 850.00);
INSERT INTO parcela VALUES (6526, 6, TO_DATE('03-04-2023', 'dd-mm-yyyy'), 850.00);
INSERT INTO parcela VALUES (2393, 1, TO_DATE('25-11-2022', 'dd-mm-yyyy'), 500.00);
INSERT INTO parcela VALUES (2393, 2, TO_DATE('25-12-2022', 'dd-mm-yyyy'), 500.00);
INSERT INTO parcela VALUES (2393, 3, TO_DATE('25-01-2023', 'dd-mm-yyyy'), 500.00);
INSERT INTO parcela VALUES (2393, 4, TO_DATE('25-02-2023', 'dd-mm-yyyy'), 500.00);
INSERT INTO parcela VALUES (5932, 1, TO_DATE('15-11-2030', 'dd-mm-yyyy'), 7000.00);
INSERT INTO parcela VALUES (5932, 2, TO_DATE('15-12-2030', 'dd-mm-yyyy'), 7000.00);
INSERT INTO parcela VALUES (5932, 3, TO_DATE('15-01-2031', 'dd-mm-yyyy'), 7000.00);
INSERT INTO parcela VALUES (5932, 4, TO_DATE('15-02-2031', 'dd-mm-yyyy'), 7000.00);
INSERT INTO parcela VALUES (5121, 1, TO_DATE('03-11-2030', 'dd-mm-yyyy'), 2949.00);
INSERT INTO parcela VALUES (5121, 2, TO_DATE('03-12-2030', 'dd-mm-yyyy'), 2949.00);
INSERT INTO parcela VALUES (5121, 3, TO_DATE('03-01-2031', 'dd-mm-yyyy'), 2949.00);
INSERT INTO parcela VALUES (5121, 4, TO_DATE('03-01-2031', 'dd-mm-yyyy'), 2949.00);
INSERT INTO parcela VALUES (2285, 1, TO_DATE('04-02-2031', 'dd-mm-yyyy'), 950.00);
INSERT INTO parcela VALUES (2285, 2, TO_DATE('04-03-2031', 'dd-mm-yyyy'), 950.00);
INSERT INTO parcela VALUES (2285, 3, TO_DATE('04-04-2031', 'dd-mm-yyyy'), 950.00);
INSERT INTO parcela VALUES (2285, 4, TO_DATE('04-05-2031', 'dd-mm-yyyy'), 950.00);
INSERT INTO parcela VALUES (2285, 5, TO_DATE('04-06-2031', 'dd-mm-yyyy'), 950.00);
INSERT INTO parcela VALUES (8105, 1, TO_DATE('31-10-2041', 'dd-mm-yyyy'), 850.00);
INSERT INTO parcela VALUES (8105, 2, TO_DATE('31-11-2041', 'dd-mm-yyyy'), 850.00);
INSERT INTO parcela VALUES (8105, 3, TO_DATE('31-12-2041', 'dd-mm-yyyy'), 850.00);
INSERT INTO parcela VALUES (8105, 4, TO_DATE('31-01-2042', 'dd-mm-yyyy'), 850.00);
INSERT INTO parcela VALUES (8105, 5, TO_DATE('31-02-2042', 'dd-mm-yyyy'), 850.00);
INSERT INTO parcela VALUES (8105, 6, TO_DATE('31-03-2042', 'dd-mm-yyyy'), 850.00);
INSERT INTO parcela VALUES (8285, 1, TO_DATE('25-02-2040', 'dd-mm-yyyy'), 1300.00);
INSERT INTO parcela VALUES (8285, 2, TO_DATE('25-03-2040', 'dd-mm-yyyy'), 1300.00);
INSERT INTO parcela VALUES (8285, 3, TO_DATE('25-04-2040', 'dd-mm-yyyy'), 1300.00);
INSERT INTO parcela VALUES (8285, 4, TO_DATE('25-05-2040', 'dd-mm-yyyy'), 1300.00);
INSERT INTO parcela VALUES (8285, 5, TO_DATE('25-06-2040', 'dd-mm-yyyy'), 1300.00);
INSERT INTO parcela VALUES (1464, 1, TO_DATE('25-10-2056', 'dd-mm-yyyy'), 3000.00);
INSERT INTO parcela VALUES (6524, 1, TO_DATE('25-10-2056', 'dd-mm-yyyy'), 5000.00);
INSERT INTO parcela VALUES (4282, 1, TO_DATE('10-05-2056', 'dd-mm-yyyy'), 2750.00);
INSERT INTO parcela VALUES (4282, 2, TO_DATE('10-06-2056', 'dd-mm-yyyy'), 2750.00);
INSERT INTO parcela VALUES (4282, 3, TO_DATE('10-07-2056', 'dd-mm-yyyy'), 2750.00);
INSERT INTO parcela VALUES (4282, 4, TO_DATE('10-08-2056', 'dd-mm-yyyy'), 2750.00);
INSERT INTO parcela VALUES (4282, 5, TO_DATE('10-09-2056', 'dd-mm-yyyy'), 2750.00);

/* PERFIS */
INSERT INTO perfis VALUES ('3993258644', 'Familiar');
INSERT INTO perfis VALUES ('3993258644', 'Aventureiro');
INSERT INTO perfis VALUES ('3993258644', 'Espaçoso');
INSERT INTO perfis VALUES ('3993258644', 'Rústico');
INSERT INTO perfis VALUES ('6646303088', 'Festivo');
INSERT INTO perfis VALUES ('6646303088', 'Familiar');
INSERT INTO perfis VALUES ('3471019961', 'Espaçoso');
INSERT INTO perfis VALUES ('3471019961', 'Rústico');
INSERT INTO perfis VALUES ('5504615237', 'Familiar');
INSERT INTO perfis VALUES ('5504615237', 'Aventureiro');
INSERT INTO perfis VALUES ('5504615237', 'Rústico');
INSERT INTO perfis VALUES ('4794574729', 'Familiar');
INSERT INTO perfis VALUES ('8574634983', 'Aventureiro');
INSERT INTO perfis VALUES ('8574634983', 'Rústico');
INSERT INTO perfis VALUES ('8637564621', 'Rústico');
INSERT INTO perfis VALUES ('8637564621', 'Espaçoso');
INSERT INTO perfis VALUES ('8637564621', 'Festivo');
INSERT INTO perfis VALUES ('4960932100', 'Rústico');
INSERT INTO perfis VALUES ('4960932100', 'Espaçoso');
INSERT INTO perfis VALUES ('4960932100', 'Aventureiro');
INSERT INTO perfis VALUES ('9636810223', 'Familiar');
INSERT INTO perfis VALUES ('9636810223', 'Rústico');
INSERT INTO perfis VALUES ('4188415871', 'Rústico');
INSERT INTO perfis VALUES ('2670703949', 'Aventureiro');
INSERT INTO perfis VALUES ('2670703949', 'Espaçoso');
INSERT INTO perfis VALUES ('2813137039', 'Espaçoso');
INSERT INTO perfis VALUES ('5954115089', 'Espaçoso');
INSERT INTO perfis VALUES ('7333288555', 'Espaçoso');
INSERT INTO perfis VALUES ('7333288555', 'Aventureiro');
INSERT INTO perfis VALUES ('7333288555', 'Rústico');
INSERT INTO perfis VALUES ('7152964085', 'Espaçoso');
INSERT INTO perfis VALUES ('7152964085', 'Familiar');
INSERT INTO perfis VALUES ('7152964085', 'Aventureiro');
INSERT INTO perfis VALUES ('7152964085', 'Rústico');