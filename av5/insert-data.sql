---------------------------------------------------------------------------------------------------- INSERTS PROPRIETÁRIO ----------------------------------------------------------------------------------------------------
INSERT INTO tb_proprietario VALUES (tp_proprietario('03176487532', 'Ricardo', TO_DATE('14-03-1962', 'dd-mm-yyyy'), tp_endereco('50740445', 'Rua Visconde de Barbacena', 'Varzea', 82, 'Apt 201'), tp_telefones(tp_telefone('87994566')), tp_dadosBancarios(1726, 1433, 360)));
INSERT INTO tb_proprietario VALUES (tp_proprietario('03178903746', 'Matheus', TO_DATE('14-02-1997', 'dd-mm-yyyy'), tp_endereco('51011330', 'Rua João Bandeira de Melo', 'Pina', 100, NULL), tp_telefones(tp_telefone('31244123'), tp_telefone('62543254')), tp_dadosBancarios(6475, 1433, 360)));
INSERT INTO tb_proprietario VALUES (tp_proprietario('03183642911', 'Beatriz', TO_DATE('24-12-2000', 'dd-mm-yyyy'), tp_endereco('50910510', 'Rua Professor Pedro Augusto', 'Manaira', 100, NULL), tp_telefones(tp_telefone('12321321')), tp_dadosBancarios(5636, 1433, 360)));
INSERT INTO tb_proprietario VALUES (tp_proprietario('58961248956', 'Astolfo', TO_DATE('14-05-1970', 'dd-mm-yyyy'), tp_endereco('50910510', 'Rua Professor Pedro Augusto', 'Manaira', 100, 'Apt 102'), tp_telefones(tp_telefone('32132132'), tp_telefone('32742056')), tp_dadosBancarios(8572, 1433, 360)));
INSERT INTO tb_proprietario VALUES (tp_proprietario('03198653754', 'Pedro', TO_DATE('04-04-1980', 'dd-mm-yyyy'), tp_endereco('51010450', 'Travessa Albacora', 'Pina', 100, NULL), tp_telefones(tp_telefone('13213213')), tp_dadosBancarios(3233, 1433, 360)));
INSERT INTO tb_proprietario VALUES (tp_proprietario('79924233654', 'Almir', TO_DATE('03-06-2001', 'dd-mm-yyyy'), tp_endereco('50620491', 'Rua Piranhas', 'Torre', 100, NULL), tp_telefones(tp_telefone('33213214')), tp_dadosBancarios(9546, 0001, 160)));
INSERT INTO tb_proprietario VALUES (tp_proprietario('23547985463', 'Jéssica', TO_DATE('02-07-1994', 'dd-mm-yyyy'), tp_endereco('50790901', 'Rua Leandro Barreto', 'Manaira', 100, 'Bloco A'), tp_telefones(tp_telefone('57567635'), tp_telefone('32245698')), tp_dadosBancarios(7562, 0001, 160)));
INSERT INTO tb_proprietario VALUES (tp_proprietario('03186390274', 'Laura', TO_DATE('05-08-1998', 'dd-mm-yyyy'), tp_endereco('51011061', 'Rua Vila Alegre', 'Pina', 100, NULL), tp_telefones(tp_telefone('57567635')), tp_dadosBancarios(8816, 0001, 160)));
INSERT INTO tb_proprietario VALUES (tp_proprietario('03182639412', 'Vitória', TO_DATE('20-11-1950', 'dd-mm-yyyy'),  tp_endereco('51345520', 'Rua Bom Jardim', 'COHAB', 100, 'Apt 304'), tp_telefones(tp_telefone('35524534'), tp_telefone('21256587'), tp_telefone('2101111')), tp_dadosBancarios(3916, 6789, 169)));
INSERT INTO tb_proprietario VALUES (tp_proprietario('81335003529', 'Rodolfo', TO_DATE('25-10-1969', 'dd-mm-yyyy'), tp_endereco('50630974', 'Avenida General San Martin', 'Cordeiro', 100, NULL), tp_telefones(tp_telefone('11111111'), tp_telefone('21251732')), tp_dadosBancarios(1235, 6789, 169)));
INSERT INTO tb_proprietario VALUES (tp_proprietario('48831148312', 'Adalberto', TO_DATE('14-09-1984', 'dd-mm-yyyy'), tp_endereco('51160350', 'Rua José da Silva Lucena', 'Imbiribeira', 100, NULL), tp_telefones(tp_telefone('31423432'), tp_telefone('36236282')), tp_dadosBancarios(1250, 6789, 169)));

---------------------------------------------------------------------------------------------------- INSERTS INQUILINO ----------------------------------------------------------------------------------------------------
INSERT INTO tb_inquilino VALUES (tp_inquilino('15069931091', 'Rodolfo', TO_DATE('25-10-1968', 'dd-mm-yyyy'), tp_endereco('56800000', 'Alameda das Araras', 'Enseada', 121, 'Casa'), tp_telefones(tp_telefone('42522452')), 5000, 400));
INSERT INTO tb_inquilino VALUES (tp_inquilino('75477832010', 'Antonio', TO_DATE('25-10-1987', 'dd-mm-yyyy'), tp_endereco('56800000', 'Alameda das Araras', 'Enseada', 000, NULL), tp_telefones(tp_telefone('78577827'), tp_telefone('98762546')), 10000, 350));
INSERT INTO tb_inquilino VALUES (tp_inquilino('45851424010', 'João', TO_DATE('25-10-1978', 'dd-mm-yyyy'), tp_endereco('56789000', 'Alameda das Palmeiras', 'Enseada', 100, 'Segundo andar'), tp_telefones(tp_telefone('31423432'), tp_telefone('36236282')), 1254, 250));
INSERT INTO tb_inquilino VALUES (tp_inquilino('38120912080', 'Maria', TO_DATE('25-10-1980', 'dd-mm-yyyy'), tp_endereco('56800000', 'Alameda das Araras', 'Enseada', 121, 'Casa'), tp_telefones(tp_telefone('28019768'), tp_telefone('78978251')), 8555, 200));
INSERT INTO tb_inquilino VALUES (tp_inquilino('10217341012', 'Rodrigo', TO_DATE('25-10-1978', 'dd-mm-yyyy'), tp_endereco('56800000', 'Alameda das Araras', 'Enseada', 000, NULL),  tp_telefones(tp_telefone('32475425')), 9632, 1000));
INSERT INTO tb_inquilino VALUES (tp_inquilino('92027748032', 'Pietro', TO_DATE('25-10-1974', 'dd-mm-yyyy'), tp_endereco('56789000', 'Alameda das P« almeiras', 'Enseada', 100, 'Segundo andar'), tp_telefones(tp_telefone('42522452')), 71412, 4000));
INSERT INTO tb_inquilino VALUES (tp_inquilino('71033122068', 'Maria', TO_DATE('25-10-1980', 'dd-mm-yyyy'), tp_endereco('56800000', 'Alameda das Araras', 'Enseada', 121, 'Casa'), tp_telefones(tp_telefone('3571478')), 14111, 400));
INSERT INTO tb_inquilino VALUES (tp_inquilino('98643394009', 'Fernanda', TO_DATE('25-10-1955', 'dd-mm-yyyy'), tp_endereco('56800000', 'Alameda das Araras', 'Enseada', 000, NULL), tp_telefones(tp_telefone('42522452')), 5000, 2400));
INSERT INTO tb_inquilino VALUES (tp_inquilino('96458502079', 'Núbia', TO_DATE('25-10-1981', 'dd-mm-yyyy'), tp_endereco('56789000', 'Alameda das Palmeiras', 'Enseada', 100, 'Segundo andar'), tp_telefones(tp_telefone('78753578')), 999 ,200));
INSERT INTO tb_inquilino VALUES (tp_inquilino('90019224060', 'Jair', TO_DATE('25-02-1934', 'dd-mm-yyyy'), tp_endereco('51011330', 'Rua João Bandeira de Melo', 'Pina', 150, NULL), tp_telefones(tp_telefone('36751245')), 5000, 2500));

---------------------------------------------------------------------------------------------------- INSERTS FUNCIONARIO ----------------------------------------------------------------------------------------------------
INSERT INTO tb_funcionario VALUES (tp_funcionario('37383978099', 'Maria', TO_DATE('25-10-1980', 'dd-mm-yyyy'), tp_endereco('56800000', 'Alameda das Araras', 'Enseada', 121, 'Casa'), tp_telefones(tp_telefone('32742056')), 2000, 'Supervisor', NULL));
INSERT INTO tb_funcionario VALUES (tp_funcionario('41893520048', 'Clara', TO_DATE('25-10-1969', 'dd-mm-yyyy'), tp_endereco('56800000', 'Alameda das Araras', 'Enseada', 000, NULL), tp_telefones(tp_telefone('99119016')), 2000, 'Supervisor', NULL));
INSERT INTO tb_funcionario VALUES (tp_funcionario('23251067052', 'Letícia', TO_DATE('25-10-2001', 'dd-mm-yyyy'), tp_endereco('56789000', 'Alameda das Palmeiras', 'Enseada', 100, 'Segundo andar'), tp_telefones(tp_telefone('89572563'), tp_telefone('84567896')), 10000, 'Supervisor', NULL));
INSERT INTO tb_funcionario VALUES (tp_funcionario('51927985072', 'Bião', TO_DATE('25-10-1980', 'dd-mm-yyyy'), tp_endereco('56789000', 'Alameda das Palmeiras', 'Enseada', 100, NULL), tp_telefones(tp_telefone('85786987')), 4000.9, 'Vendedor', (SELECT REF(F) FROM tb_funcionario F WHERE cpf = '37383978099')));
INSERT INTO tb_funcionario VALUES (tp_funcionario('89712208052', 'Gabriel', TO_DATE('25-10-2003', 'dd-mm-yyyy'), tp_endereco('51345520', 'Rua Bom Jardim', 'COHAB', 154, NULL), tp_telefones(tp_telefone('32217892')), 4200.2, 'Vendedor', (SELECT REF(F) FROM tb_funcionario F WHERE cpf = '37383978099')));
INSERT INTO tb_funcionario VALUES (tp_funcionario('35454794040', 'Matheus', TO_DATE('25-10-2004', 'dd-mm-yyyy'), tp_endereco('50630974', 'Avenida General San Martin', 'Cordeiro', 753, 'Apt 324'), tp_telefones(tp_telefone('32257858'), tp_telefone('74586523'), tp_telefone('85475632')), 2200.2, 'Zelador', (SELECT REF(F) FROM tb_funcionario F WHERE cpf = '41893520048')));
INSERT INTO tb_funcionario VALUES (tp_funcionario('99941481091', 'João', TO_DATE('25-10-2001', 'dd-mm-yyyy'), tp_endereco('90730974', 'Rua dos Jiquiás', 'Belo Novo', 666, NULL), tp_telefones(tp_telefone('32744524')), 1999.1, 'Zelador', (SELECT REF(F) FROM tb_funcionario F WHERE cpf = '41893520048')));
INSERT INTO tb_funcionario VALUES (tp_funcionario('19276748083', 'Pedro', TO_DATE('25-10-1969', 'dd-mm-yyyy'), tp_endereco('50635374', 'Rua das Garças', 'Jardim Molhado', 242, NULL), tp_telefones(tp_telefone('32542046')), 999.1, 'Tesoureiro', (SELECT REF(F) FROM tb_funcionario F WHERE cpf = '23251067052')));
INSERT INTO tb_funcionario VALUES (tp_funcionario('08978954014', 'Gabriel', TO_DATE('25-10-1949', 'dd-mm-yyyy'), tp_endereco('50630984', 'Avenida José Maranhão', 'Paulistinha', 111, 'Apt 1234'), tp_telefones(tp_telefone('3224526')), 3999.1, 'Tesoureiro', (SELECT REF(F) FROM tb_funcionario F WHERE cpf = '23251067052')));

---------------------------------------------------------------------------------------------------- INSERTS IMOVEL ----------------------------------------------------------------------------------------------------
INSERT INTO tb_imovel VALUES (tp_imovel('3993258644', 10, 2000.00, tp_endereco('56800000', 'Rua da Federal', 'Varzea', 275, 'Casa'),
  tp_nt_perfil(
    tp_perfil('Familiar'),
    tp_perfil('Aconchegante'),
    tp_perfil('Transporte Público'),
    tp_perfil('Supermercado')
  ),
(SELECT REF(I) FROM tb_proprietario I WHERE cpf='03176487532')));

--- USO DO VALUE TROCAR O PERFIL SUPERMERCADO POR SERVIÇOS (uma farmácia abriu próximo ao imóvel)
UPDATE TABLE(SELECT I.perfil FROM tb_imovel I WHERE I.cod_escritura = '3993258644') P SET VALUE(P)=tp_perfil('Serviços') WHERE P.descricao = 'Supermercado';

INSERT INTO tb_imovel VALUES (tp_imovel('6646303088', 5, 1500.00, tp_endereco('54440020', 'Rua Capitão Arruda', 'Pina', 1019, 'Apartamento'),
  tp_nt_perfil(
    tp_perfil('Familiar'),
    tp_perfil('Aconchegante'),
    tp_perfil('Espaçoso')
  ),
(SELECT REF(I) FROM tb_proprietario I WHERE cpf='03178903746')));
INSERT INTO tb_imovel VALUES (tp_imovel('3471019961', 6, 800.00, tp_endereco('50865050', 'Avenida Beira Rio', 'Torre', 78, 'Fazenda'),
  tp_nt_perfil(
    tp_perfil('Familiar'),
    tp_perfil('Aconchegante'),
    tp_perfil('Radical'),
    tp_perfil('Supermercado')
  ),
(SELECT REF(I) FROM tb_proprietario I WHERE cpf='03183642911')));
INSERT INTO tb_imovel VALUES (tp_imovel('8574634983', 2, 500.00, tp_endereco('50790210', 'Rua da Hora', 'Madalena', 900, 'Flat'),
  tp_nt_perfil(
    tp_perfil('Familiar'),
    tp_perfil('Aconchegante'),
    tp_perfil('Espaçoso'),
    tp_perfil('Transporte Público'),
    tp_perfil('Supermercado')
  ),
(SELECT REF(I) FROM tb_proprietario I WHERE cpf='03176487532')));
INSERT INTO tb_imovel VALUES (tp_imovel('8637564621', 3, 7500.00, tp_endereco('55643694', 'Rua do Minuto', 'Bairro Novo', 298, 'Casa'),
  tp_nt_perfil(
    tp_perfil('Aventureiro'),
    tp_perfil('Espaçoso'),
    tp_perfil('Radical'),
    tp_perfil('Transporte Público'),
    tp_perfil('Supermercado')
  ),
(SELECT REF(I) FROM tb_proprietario I WHERE cpf='03198653754')));
INSERT INTO tb_imovel VALUES (tp_imovel('4960932100', 9, 3000.00, tp_endereco('54430010', 'Travessa das Dores', 'Piedade', 111, 'Apartamento'),
  tp_nt_perfil(
    tp_perfil('Aventureiro'),
    tp_perfil('Aconchegante'),
    tp_perfil('Supermercado')
  ),
(SELECT REF(I) FROM tb_proprietario I WHERE cpf='79924233654')));
INSERT INTO tb_imovel VALUES (tp_imovel('9636810223', 1, 950.00, tp_endereco('50660240', 'Rua da Lama', 'COHAB', 141, 'Apartamento'),
  tp_nt_perfil(
    tp_perfil('Familiar'),
    tp_perfil('Aconchegante'),
    tp_perfil('Espaçoso'),
    tp_perfil('Transporte Público')
  ),
(SELECT REF(I) FROM tb_proprietario I WHERE cpf='23547985463')));
INSERT INTO tb_imovel VALUES (tp_imovel('4188415871', 1, 870.00, tp_endereco('55296540', 'Rua da Saudade', 'Curado IV', 768, 'Fazenda'),
  tp_nt_perfil(
    tp_perfil('Familiar'),
    tp_perfil('Aconchegante'),
    tp_perfil('Supermercado')
  ),
(SELECT REF(I) FROM tb_proprietario I WHERE cpf='58961248956')));
INSERT INTO tb_imovel VALUES (tp_imovel('2670703949', 1, 1400.00, tp_endereco('52170000', 'Rua da Felicidade', 'Torre', 387, 'Fazenda'),
  tp_nt_perfil(
    tp_perfil('Aventureiro'),
    tp_perfil('Espaçoso'),
    tp_perfil('Radical')
  ),
(SELECT REF(I) FROM tb_proprietario I WHERE cpf='90019224060')));
INSERT INTO tb_imovel VALUES (tp_imovel('2813137039', 2, 1200.00, tp_endereco('52061140', 'Estrada dos Remédios', 'Derby', 909, 'Apartamento'),
  tp_nt_perfil(
    tp_perfil('Aventureiro'),
    tp_perfil('Familiar'),
    tp_perfil('Aconchegante'),
    tp_perfil('Espaçoso'),
    tp_perfil('Radical'),
    tp_perfil('Transporte Público'),
    tp_perfil('Supermercado')
  ),
(SELECT REF(I) FROM tb_proprietario I WHERE cpf='03186390274')));
INSERT INTO tb_imovel VALUES (tp_imovel('5954115089', 4, 3000.00, tp_endereco('58040030', 'Rua Delegado Motinha', 'Jacarepaguá', 278, 'Casa'),
  tp_nt_perfil(
    tp_perfil('Familiar'),
    tp_perfil('Aconchegante'),
    tp_perfil('Espaçoso'),
    tp_perfil('Transporte Público'),
    tp_perfil('Supermercado')
  ),
(SELECT REF(I) FROM tb_proprietario I WHERE cpf='23547985463')));
INSERT INTO tb_imovel VALUES (tp_imovel('7333288555', 5, 5000.00, tp_endereco('58308282', 'Travessa Sargento Paulo Guerra', 'Oit', 648, 'Casa'),
  tp_nt_perfil(
    tp_perfil('Aventureiro')
  ),
(SELECT REF(I) FROM tb_proprietario I WHERE cpf='48831148312')));
INSERT INTO tb_imovel VALUES (tp_imovel('7152964085', 3, 2900.00, tp_endereco('58703210', 'Avenida Manoel Borba', 'Borges', 12, 'Apartamento'),
  tp_nt_perfil(
    tp_perfil('Familiar'),
    tp_perfil('Aconchegante'),
    tp_perfil('Espaçoso'),
    tp_perfil('Supermercado')
  ),
(SELECT REF(I) FROM tb_proprietario I WHERE cpf='03182639412')));
INSERT INTO tb_imovel VALUES (tp_imovel('5504615237', 2, 400.00, tp_endereco('54520697', 'Rua do Perfume fresco', 'Centro', 99, 'Casa'),
  tp_nt_perfil(
    tp_perfil('Aventureiro'),
    tp_perfil('Transporte Público'),
    tp_perfil('Supermercado')
  ),
(SELECT REF(I) FROM tb_proprietario I WHERE cpf='58961248956')));
INSERT INTO tb_imovel VALUES (tp_imovel('4794574729', 1, 450.00, tp_endereco('56503451', 'Rua Visconde de Barbacena', 'CDU', 1010, 'Apartamento'),
  tp_nt_perfil(
    tp_perfil('Aconchegante'),
    tp_perfil('Espaçoso'),
    tp_perfil('Transporte Público'),
    tp_perfil('Supermercado')
  ),
(SELECT REF(I) FROM tb_proprietario I WHERE cpf='90019224060')));

---------------------------------------------------------------------------------------------------- INSERTS CONTRATO ----------------------------------------------------------------------------------------------------
INSERT INTO tb_contrato VALUES (tp_contrato(3543, TO_DATE('01-08-2022', 'dd-mm-yyyy'), TO_DATE('25-10-2021', 'dd-mm-yyyy'),
  tp_gera(
    tp_parcela(1, 2000.00, TO_DATE('01-11-2021', 'dd-mm-yyyy')),
    tp_parcela(2, 2000.00, TO_DATE('01-12-2021', 'dd-mm-yyyy')),
    tp_parcela(3, 2000.00, TO_DATE('01-01-2022', 'dd-mm-yyyy')),
    tp_parcela(4, 2000.00, TO_DATE('01-02-2022', 'dd-mm-yyyy')),
    tp_parcela(5, 2000.00, TO_DATE('01-03-2022', 'dd-mm-yyyy')),
    tp_parcela(6, 2000.00, TO_DATE('01-04-2022', 'dd-mm-yyyy')),
    tp_parcela(7, 2000.00, TO_DATE('01-05-2022', 'dd-mm-yyyy')),
    tp_parcela(8, 3000.00, TO_DATE('01-06-2022', 'dd-mm-yyyy')),
    tp_parcela(9, 2000.00, TO_DATE('01-07-2022', 'dd-mm-yyyy')),
    tp_parcela(10, 2000.00, TO_DATE('01-08-2022', 'dd-mm-yyyy'))
  ),
(SELECT REF (C) FROM tb_funcionario C WHERE cpf = '51927985072')));

INSERT INTO tb_contrato VALUES (tp_contrato(8272, TO_DATE('01-11-2022', 'dd-mm-yyyy'), TO_DATE('25-08-2021', 'dd-mm-yyyy'),
  tp_gera(
    tp_parcela(1, 1500.00, TO_DATE('01-09-2021', 'dd-mm-yyyy')),
    tp_parcela(2, 1500.00, TO_DATE('01-10-2021', 'dd-mm-yyyy')),
    tp_parcela(3, 1500.00, TO_DATE('01-11-2021', 'dd-mm-yyyy')),
    tp_parcela(4, 1500.00, TO_DATE('01-12-2021', 'dd-mm-yyyy')),
    tp_parcela(5, 1500.00, TO_DATE('01-01-2022', 'dd-mm-yyyy')),
    tp_parcela(6, 2000.00, TO_DATE('01-02-2022', 'dd-mm-yyyy')),
    tp_parcela(7, 2000.00, TO_DATE('01-03-2022', 'dd-mm-yyyy')),
    tp_parcela(8, 2000.00, TO_DATE('01-04-2022', 'dd-mm-yyyy')),
    tp_parcela(9, 2000.00, TO_DATE('01-05-2022', 'dd-mm-yyyy')),
    tp_parcela(10, 2000.00, TO_DATE('01-06-2022', 'dd-mm-yyyy')),
    tp_parcela(11, 2000.00, TO_DATE('01-07-2022', 'dd-mm-yyyy')),
    tp_parcela(12, 2000.00, TO_DATE('01-08-2022', 'dd-mm-yyyy')),
    tp_parcela(12, 2000.00, TO_DATE('01-09-2022', 'dd-mm-yyyy')),
    tp_parcela(12, 2000.00, TO_DATE('01-10-2022', 'dd-mm-yyyy')),
    tp_parcela(12, 2000.00, TO_DATE('01-11-2022', 'dd-mm-yyyy'))
  ),
(SELECT REF (C) FROM tb_funcionario C WHERE cpf = '51927985072')));
INSERT INTO tb_contrato VALUES (tp_contrato(6526, TO_DATE('01-05-2022', 'dd-mm-yyyy'), TO_DATE('01-06-2021', 'dd-mm-yyyy'),
  tp_gera(
    tp_parcela(1, 800.00, TO_DATE('01-07-2021', 'dd-mm-yyyy')),
    tp_parcela(2, 800.00, TO_DATE('01-08-2021', 'dd-mm-yyyy')),
    tp_parcela(3, 800.00, TO_DATE('01-09-2021', 'dd-mm-yyyy')),
    tp_parcela(4, 800.00, TO_DATE('01-10-2021', 'dd-mm-yyyy')),
    tp_parcela(5, 800.00, TO_DATE('01-11-2021', 'dd-mm-yyyy')),
    tp_parcela(6, 800.00, TO_DATE('01-12-2021', 'dd-mm-yyyy')),
    tp_parcela(7, 900.00, TO_DATE('01-01-2022', 'dd-mm-yyyy')),
    tp_parcela(8, 900.00, TO_DATE('01-02-2022', 'dd-mm-yyyy')),
    tp_parcela(9, 900.00, TO_DATE('01-03-2022', 'dd-mm-yyyy')),
    tp_parcela(10, 900.00, TO_DATE('01-04-2022', 'dd-mm-yyyy')),
    tp_parcela(11, 900.00, TO_DATE('01-05-2022', 'dd-mm-yyyy'))
  ),
  (SELECT REF (C) FROM tb_funcionario C WHERE cpf = '51927985072')));
INSERT INTO tb_contrato VALUES (tp_contrato(2393, TO_DATE('01-06-2022', 'dd-mm-yyyy'), TO_DATE('01-05-2021', 'dd-mm-yyyy'),
  tp_gera(
    tp_parcela(1, 1200.00, TO_DATE('01-06-2021', 'dd-mm-yyyy')),
    tp_parcela(2, 1200.00, TO_DATE('01-07-2021', 'dd-mm-yyyy')),
    tp_parcela(3, 1200.00, TO_DATE('01-08-2021', 'dd-mm-yyyy')),
    tp_parcela(4, 1200.00, TO_DATE('01-09-2021', 'dd-mm-yyyy')),
    tp_parcela(5, 1200.00, TO_DATE('01-10-2021', 'dd-mm-yyyy')),
    tp_parcela(6, 1200.00, TO_DATE('01-11-2021', 'dd-mm-yyyy')),
    tp_parcela(7, 1200.00, TO_DATE('01-12-2021', 'dd-mm-yyyy')),
    tp_parcela(8, 1500.00, TO_DATE('01-01-2022', 'dd-mm-yyyy')),
    tp_parcela(9, 1500.00, TO_DATE('01-02-2022', 'dd-mm-yyyy')),
    tp_parcela(10, 1500.00, TO_DATE('01-03-2022', 'dd-mm-yyyy')),
    tp_parcela(11, 1500.00, TO_DATE('01-04-2022', 'dd-mm-yyyy')),
    tp_parcela(12, 1500.00, TO_DATE('01-05-2022', 'dd-mm-yyyy')),
    tp_parcela(13, 1500.00, TO_DATE('01-05-2022', 'dd-mm-yyyy'))
  ),
  (SELECT REF (C) FROM tb_funcionario C WHERE cpf = '51927985072')));
INSERT INTO tb_contrato VALUES (tp_contrato(5932, TO_DATE('01-06-2022', 'dd-mm-yyyy'), TO_DATE('01-02-2021', 'dd-mm-yyyy'),
  tp_gera(
    tp_parcela(1, 900.00, TO_DATE('01-02-2021', 'dd-mm-yyyy')),
    tp_parcela(2, 900.00, TO_DATE('01-03-2021', 'dd-mm-yyyy')),
    tp_parcela(3, 900.00, TO_DATE('01-04-2021', 'dd-mm-yyyy')),
    tp_parcela(4, 900.00, TO_DATE('01-05-2021', 'dd-mm-yyyy')),
    tp_parcela(5, 900.00, TO_DATE('01-06-2021', 'dd-mm-yyyy')),
    tp_parcela(6, 900.00, TO_DATE('01-07-2021', 'dd-mm-yyyy')),
    tp_parcela(7, 900.00, TO_DATE('01-08-2021', 'dd-mm-yyyy')),
    tp_parcela(8, 900.00, TO_DATE('01-09-2021', 'dd-mm-yyyy')),
    tp_parcela(9, 900.00, TO_DATE('01-10-2021', 'dd-mm-yyyy')),
    tp_parcela(10, 900.00, TO_DATE('01-11-2021', 'dd-mm-yyyy')),
    tp_parcela(11, 900.00, TO_DATE('01-12-2021', 'dd-mm-yyyy')),
    tp_parcela(12, 1300.00, TO_DATE('01-01-2022', 'dd-mm-yyyy')),
    tp_parcela(13, 1300.00, TO_DATE('01-02-2022', 'dd-mm-yyyy')),
    tp_parcela(14, 1300.00, TO_DATE('01-03-2022', 'dd-mm-yyyy')),
    tp_parcela(15, 1300.00, TO_DATE('01-04-2022', 'dd-mm-yyyy')),
    tp_parcela(16, 1300.00, TO_DATE('01-05-2022', 'dd-mm-yyyy')),
    tp_parcela(17, 1300.00, TO_DATE('01-05-2022', 'dd-mm-yyyy'))
  ),
  (SELECT REF (C) FROM tb_funcionario C WHERE cpf = '51927985072')));
INSERT INTO tb_contrato VALUES (tp_contrato(5121, TO_DATE('01-06-2021', 'dd-mm-yyyy'), TO_DATE('01-09-2020', 'dd-mm-yyyy'),
  tp_gera(
    tp_parcela(1, 900.00, TO_DATE('01-10-2021', 'dd-mm-yyyy')),
    tp_parcela(2, 900.00, TO_DATE('01-11-2021', 'dd-mm-yyyy')),
    tp_parcela(3, 900.00, TO_DATE('01-12-2021', 'dd-mm-yyyy')),
    tp_parcela(4, 1100.00, TO_DATE('01-01-2021', 'dd-mm-yyyy')),
    tp_parcela(5, 1100.00, TO_DATE('01-02-2021', 'dd-mm-yyyy')),
    tp_parcela(6, 1100.00, TO_DATE('01-03-2021', 'dd-mm-yyyy')),
    tp_parcela(7, 1100.00, TO_DATE('01-04-2021', 'dd-mm-yyyy')),
    tp_parcela(8, 1100.00, TO_DATE('01-05-2021', 'dd-mm-yyyy')),
    tp_parcela(9, 1100.00, TO_DATE('01-06-2021', 'dd-mm-yyyy'))
  ),
  (SELECT REF (C) FROM tb_funcionario C WHERE cpf = '51927985072')));
INSERT INTO tb_contrato VALUES (tp_contrato(2285, TO_DATE('01-03-2022', 'dd-mm-yyyy'), TO_DATE('21-08-2020', 'dd-mm-yyyy'),
  tp_gera(
    tp_parcela(1, 900.00, TO_DATE('01-09-2020', 'dd-mm-yyyy')),
    tp_parcela(2, 900.00, TO_DATE('01-10-2020', 'dd-mm-yyyy')),
    tp_parcela(3, 900.00, TO_DATE('01-11-2020', 'dd-mm-yyyy')),
    tp_parcela(4, 900.00, TO_DATE('01-12-2020', 'dd-mm-yyyy')),
    tp_parcela(5, 1100.00, TO_DATE('01-01-2021', 'dd-mm-yyyy')),
    tp_parcela(6, 1100.00, TO_DATE('01-02-2021', 'dd-mm-yyyy')),
    tp_parcela(7, 1100.00, TO_DATE('01-03-2021', 'dd-mm-yyyy')),
    tp_parcela(8, 1100.00, TO_DATE('01-04-2021', 'dd-mm-yyyy')),
    tp_parcela(9, 1100.00, TO_DATE('01-05-2021', 'dd-mm-yyyy')),
    tp_parcela(10, 1100.00, TO_DATE('01-06-2021', 'dd-mm-yyyy')),
    tp_parcela(11, 1100.00, TO_DATE('01-07-2021', 'dd-mm-yyyy')),
    tp_parcela(12, 1100.00, TO_DATE('01-08-2021', 'dd-mm-yyyy')),
    tp_parcela(13, 1100.00, TO_DATE('01-09-2021', 'dd-mm-yyyy')),
    tp_parcela(14, 1100.00, TO_DATE('01-10-2021', 'dd-mm-yyyy')),
    tp_parcela(15, 1100.00, TO_DATE('01-11-2021', 'dd-mm-yyyy')),
    tp_parcela(16, 1100.00, TO_DATE('01-12-2021', 'dd-mm-yyyy')),
    tp_parcela(17, 1100.00, TO_DATE('01-01-2022', 'dd-mm-yyyy')),
    tp_parcela(18, 1100.00, TO_DATE('01-02-2022', 'dd-mm-yyyy')),
    tp_parcela(19, 1100.00, TO_DATE('01-03-2022', 'dd-mm-yyyy'))
  ),
  (SELECT REF (C) FROM tb_funcionario C WHERE cpf = '51927985072')));
INSERT INTO tb_contrato VALUES (tp_contrato(8105, TO_DATE('01-07-2022', 'dd-mm-yyyy'), TO_DATE('30-10-2021', 'dd-mm-yyyy'),
  tp_gera(
        tp_parcela(1, 750.00, TO_DATE('01-11-2021', 'dd-mm-yyyy')),
        tp_parcela(2, 750.00, TO_DATE('01-12-2021', 'dd-mm-yyyy')),
        tp_parcela(3, 1000.00, TO_DATE('01-01-2022', 'dd-mm-yyyy')),
        tp_parcela(4, 1000.00, TO_DATE('01-02-2022', 'dd-mm-yyyy')),
        tp_parcela(5, 1000.00, TO_DATE('01-03-2022', 'dd-mm-yyyy')),
        tp_parcela(6, 1000.00, TO_DATE('01-04-2022', 'dd-mm-yyyy')),
        tp_parcela(7, 1000.00, TO_DATE('01-05-2022', 'dd-mm-yyyy')),
        tp_parcela(8, 1200.00, TO_DATE('01-06-2022', 'dd-mm-yyyy')),
        tp_parcela(9, 1200.00, TO_DATE('01-07-2022', 'dd-mm-yyyy'))
  ),
  (SELECT REF (C) FROM tb_funcionario C WHERE cpf = '89712208052')));
INSERT INTO tb_contrato VALUES (tp_contrato(8285, TO_DATE('01-09-2021', 'dd-mm-yyyy'), TO_DATE('30-10-2020', 'dd-mm-yyyy'),
  tp_gera(
        tp_parcela(1, 1100.00, TO_DATE('01-11-2020', 'dd-mm-yyyy')),
        tp_parcela(2, 1100.00, TO_DATE('01-12-2020', 'dd-mm-yyyy')),
        tp_parcela(3, 1350.00, TO_DATE('01-01-2021', 'dd-mm-yyyy')),
        tp_parcela(4, 1350.00, TO_DATE('01-02-2021', 'dd-mm-yyyy')),
        tp_parcela(5, 1350.00, TO_DATE('01-03-2021', 'dd-mm-yyyy')),
        tp_parcela(6, 1350.00, TO_DATE('01-04-2021', 'dd-mm-yyyy')),
        tp_parcela(7, 1350.00, TO_DATE('01-05-2021', 'dd-mm-yyyy')),
        tp_parcela(8, 1350.00, TO_DATE('01-06-2021', 'dd-mm-yyyy')),
        tp_parcela(9, 1350.00, TO_DATE('01-07-2021', 'dd-mm-yyyy')),
        tp_parcela(10, 1350.00, TO_DATE('01-08-2021', 'dd-mm-yyyy')),
        tp_parcela(11, 1350.00, TO_DATE('01-09-2021', 'dd-mm-yyyy')),
        tp_parcela(12, 1350.00, TO_DATE('01-10-2021', 'dd-mm-yyyy'))
  ),
  (SELECT REF (C) FROM tb_funcionario C WHERE cpf = '89712208052')));
INSERT INTO tb_contrato VALUES (tp_contrato(7170, TO_DATE('01-02-2021', 'dd-mm-yyyy'), TO_DATE('30-11-2020', 'dd-mm-yyyy'),
  tp_gera(
        tp_parcela(1, 1500.00, TO_DATE('01-12-2020', 'dd-mm-yyyy')),
        tp_parcela(2, 1500.00, TO_DATE('01-01-2021', 'dd-mm-yyyy')),
        tp_parcela(3, 1500.00, TO_DATE('01-02-2021', 'dd-mm-yyyy'))
  ),
  (SELECT REF (C) FROM tb_funcionario C WHERE cpf = '89712208052')));
INSERT INTO tb_contrato VALUES (tp_contrato(1464, TO_DATE('01-04-2021', 'dd-mm-yyyy'), TO_DATE('23-11-2020', 'dd-mm-yyyy'),
  tp_gera(
        tp_parcela(1, 2500.00, TO_DATE('01-12-2020', 'dd-mm-yyyy')),
        tp_parcela(2, 2500.00, TO_DATE('01-01-2021', 'dd-mm-yyyy')),
        tp_parcela(3, 2500.00, TO_DATE('01-02-2021', 'dd-mm-yyyy')),
        tp_parcela(4, 2500.00, TO_DATE('01-03-2021', 'dd-mm-yyyy')),
        tp_parcela(5, 2500.00, TO_DATE('01-04-2021', 'dd-mm-yyyy'))
  ),
  (SELECT REF (C) FROM tb_funcionario C WHERE cpf = '89712208052')));
INSERT INTO tb_contrato VALUES (tp_contrato(6524, TO_DATE('01-05-2022', 'dd-mm-yyyy'), TO_DATE('30-12-2020', 'dd-mm-yyyy'), 
    tp_gera(
        tp_parcela(1, 900.00, TO_DATE('01-01-2022', 'dd-mm-yyyy')),
        tp_parcela(2, 900.00, TO_DATE('01-02-2022', 'dd-mm-yyyy')),
        tp_parcela(3, 900.00, TO_DATE('01-03-2022', 'dd-mm-yyyy')),
        tp_parcela(4, 900.00, TO_DATE('01-04-2022', 'dd-mm-yyyy')),
        tp_parcela(5, 1100.00, TO_DATE('01-05-2022', 'dd-mm-yyyy')),
        tp_parcela(6, 1100.00, TO_DATE('01-06-2022', 'dd-mm-yyyy')),
        tp_parcela(7, 1100.00, TO_DATE('01-07-2022', 'dd-mm-yyyy')),
        tp_parcela(8, 1100.00, TO_DATE('01-08-2022', 'dd-mm-yyyy')),
        tp_parcela(9, 1100.00, TO_DATE('01-09-2022', 'dd-mm-yyyy')),
        tp_parcela(10, 1100.00, TO_DATE('01-10-2022', 'dd-mm-yyyy')),
        tp_parcela(11, 1500.00, TO_DATE('01-11-2022', 'dd-mm-yyyy')),
        tp_parcela(12, 1500.00, TO_DATE('01-12-2022', 'dd-mm-yyyy'))
  ),
(SELECT REF (C) FROM tb_funcionario C WHERE cpf = '89712208052')));

INSERT INTO tb_contrato VALUES (tp_contrato(4282, TO_DATE('01-06-2022', 'dd-mm-yyyy'), TO_DATE('10-08-2020', 'dd-mm-yyyy'), tp_gera(
    tp_parcela(1, 2750.00, TO_DATE('10-08-2020', 'dd-mm-yyyy')),
    tp_parcela(2, 2750.00, TO_DATE('10-09-2020', 'dd-mm-yyyy')),
    tp_parcela(3, 2750.00, TO_DATE('10-10-2020', 'dd-mm-yyyy')),
    tp_parcela(4, 2750.00, TO_DATE('10-11-2020', 'dd-mm-yyyy')),
    tp_parcela(5, 2750.00, TO_DATE('10-12-2020', 'dd-mm-yyyy')),
    tp_parcela(6, 2750.00, TO_DATE('10-01-2021', 'dd-mm-yyyy')),
    tp_parcela(7, 2750.00, TO_DATE('10-02-2021', 'dd-mm-yyyy')),
    tp_parcela(8, 2750.00, TO_DATE('10-03-2021', 'dd-mm-yyyy')),
    tp_parcela(9, 2750.00, TO_DATE('10-04-2021', 'dd-mm-yyyy')),
    tp_parcela(10, 2750.00, TO_DATE('10-05-2021', 'dd-mm-yyyy')),
    tp_parcela(11, 2750.00, TO_DATE('10-06-2021', 'dd-mm-yyyy')),
    tp_parcela(12, 2750.00, TO_DATE('10-07-2021', 'dd-mm-yyyy')),
    tp_parcela(13, 3250.00, TO_DATE('10-08-2021', 'dd-mm-yyyy')),
    tp_parcela(14, 3250.00, TO_DATE('10-09-2021', 'dd-mm-yyyy')),
    tp_parcela(15, 3250.00, TO_DATE('10-10-2021', 'dd-mm-yyyy')),
    tp_parcela(16, 3250.00, TO_DATE('10-11-2021', 'dd-mm-yyyy')),
    tp_parcela(17, 3250.00, TO_DATE('10-12-2021', 'dd-mm-yyyy')),
    tp_parcela(18, 3250.00, TO_DATE('10-01-2022', 'dd-mm-yyyy')),
    tp_parcela(19, 3250.00, TO_DATE('10-02-2022', 'dd-mm-yyyy')),
    tp_parcela(20, 3750.00, TO_DATE('10-03-2022', 'dd-mm-yyyy')),
    tp_parcela(21, 3750.00, TO_DATE('10-04-2022', 'dd-mm-yyyy')),
    tp_parcela(22, 3750.00, TO_DATE('10-05-2022', 'dd-mm-yyyy'))
),
(SELECT REF (C) FROM tb_funcionario C WHERE cpf = '89712208052')));

---------------------------------------------------------------------------------------------------- INSERTS BONIFICAÇÃO ----------------------------------------------------------------------------------------------------
DROP SEQUENCE IF EXISTS bonificacao_id_sequence;
CREATE SEQUENCE bonificacao_id_sequence INCREMENT BY 1 START WITH 1;

INSERT INTO tb_bonificacao VALUES (tp_bonificacao(bonificacao_id_sequence.nextval, 500.00));
INSERT INTO tb_bonificacao VALUES (tp_bonificacao(bonificacao_id_sequence.nextval, 350.00));
INSERT INTO tb_bonificacao VALUES (tp_bonificacao(bonificacao_id_sequence.nextval, 200.00));
INSERT INTO tb_bonificacao VALUES (tp_bonificacao(bonificacao_id_sequence.nextval, 100.00));
INSERT INTO tb_bonificacao VALUES (tp_bonificacao(bonificacao_id_sequence.nextval, 50.00));
INSERT INTO tb_bonificacao VALUES (tp_bonificacao(bonificacao_id_sequence.nextval, 60.00));
INSERT INTO tb_bonificacao VALUES (tp_bonificacao(bonificacao_id_sequence.nextval, 100.00));
INSERT INTO tb_bonificacao VALUES (tp_bonificacao(bonificacao_id_sequence.nextval, 80.00));

---------------------------------------------------------------------------------------------------- INSERTS BONIFICAÇÃO ----------------------------------------------------------------------------------------------------
INSERT INTO tb_celebra VALUES (tp_celebra((SELECT REF (C) FROM tb_contrato C WHERE numero = 3543), (SELECT REF (B) FROM tb_bonificacao B WHERE id = 1),  (SELECT REF (F) FROM tb_funcionario F WHERE cpf = '37383978099')));
INSERT INTO tb_celebra VALUES (tp_celebra((SELECT REF (C) FROM tb_contrato C WHERE numero = 8272), (SELECT REF (B) FROM tb_bonificacao B WHERE id = 2),  (SELECT REF (F) FROM tb_funcionario F WHERE cpf = '41893520048')));
INSERT INTO tb_celebra VALUES (tp_celebra((SELECT REF (C) FROM tb_contrato C WHERE numero = 6526), (SELECT REF (B) FROM tb_bonificacao B WHERE id = 3),  (SELECT REF (F) FROM tb_funcionario F WHERE cpf = '23251067052')));
INSERT INTO tb_celebra VALUES (tp_celebra((SELECT REF (C) FROM tb_contrato C WHERE numero = 2393), (SELECT REF (B) FROM tb_bonificacao B WHERE id = 4),  (SELECT REF (F) FROM tb_funcionario F WHERE cpf = '51927985072')));
INSERT INTO tb_celebra VALUES (tp_celebra((SELECT REF (C) FROM tb_contrato C WHERE numero = 5121), (SELECT REF (B) FROM tb_bonificacao B WHERE id = 5),  (SELECT REF (F) FROM tb_funcionario F WHERE cpf = '89712208052')));
INSERT INTO tb_celebra VALUES (tp_celebra((SELECT REF (C) FROM tb_contrato C WHERE numero = 7170), (SELECT REF (B) FROM tb_bonificacao B WHERE id = 6),  (SELECT REF (F) FROM tb_funcionario F WHERE cpf = '35454794040')));
INSERT INTO tb_celebra VALUES (tp_celebra((SELECT REF (C) FROM tb_contrato C WHERE numero = 1464), (SELECT REF (B) FROM tb_bonificacao B WHERE id = 7),  (SELECT REF (F) FROM tb_funcionario F WHERE cpf = '99941481091')));
INSERT INTO tb_celebra VALUES (tp_celebra((SELECT REF (C) FROM tb_contrato C WHERE numero = 4282), (SELECT REF (B) FROM tb_bonificacao B WHERE id = 8),  (SELECT REF (F) FROM tb_funcionario F WHERE cpf = '99941481091')));

---------------------------------------------------------------------------------------------------- INSERTS ALUGA ----------------------------------------------------------------------------------------------------
INSERT INTO tb_aluga VALUES (tp_aluga((SELECT REF(I) FROM tb_imovel I WHERE cod_escritura = '3993258644'), (SELECT REF(I) from tb_inquilino I WHERE cpf = '15069931091'), (SELECT REF(C) FROM tb_contrato C WHERE numero = 3543), TO_DATE('01-11-2021', 'dd-mm-yyyy')));
INSERT INTO tb_aluga VALUES (tp_aluga((SELECT REF(I) FROM tb_imovel I WHERE cod_escritura = '6646303088'), (SELECT REF(I) from tb_inquilino I WHERE cpf = '75477832010'), (SELECT REF(C) FROM tb_contrato C WHERE numero = 8272), TO_DATE('01-09-2021', 'dd-mm-yyyy')));
INSERT INTO tb_aluga VALUES (tp_aluga((SELECT REF(I) FROM tb_imovel I WHERE cod_escritura = '3471019961'), (SELECT REF(I) from tb_inquilino I WHERE cpf = '75477832010'), (SELECT REF(C) FROM tb_contrato C WHERE numero = 6526), TO_DATE('07-06-2021', 'dd-mm-yyyy')));
INSERT INTO tb_aluga VALUES (tp_aluga((SELECT REF(I) FROM tb_imovel I WHERE cod_escritura = '8574634983'), (SELECT REF(I) from tb_inquilino I WHERE cpf = '45851424010'), (SELECT REF(C) FROM tb_contrato C WHERE numero = 2393), TO_DATE('01-05-2021', 'dd-mm-yyyy')));
INSERT INTO tb_aluga VALUES (tp_aluga((SELECT REF(I) FROM tb_imovel I WHERE cod_escritura = '8637564621'), (SELECT REF(I) from tb_inquilino I WHERE cpf = '38120912080'), (SELECT REF(C) FROM tb_contrato C WHERE numero = 5932), TO_DATE('01-02-2021', 'dd-mm-yyyy')));
INSERT INTO tb_aluga VALUES (tp_aluga((SELECT REF(I) FROM tb_imovel I WHERE cod_escritura = '4960932100'), (SELECT REF(I) from tb_inquilino I WHERE cpf = '10217341012'), (SELECT REF(C) FROM tb_contrato C WHERE numero = 5121), TO_DATE('01-09-2020', 'dd-mm-yyyy')));
INSERT INTO tb_aluga VALUES (tp_aluga((SELECT REF(I) FROM tb_imovel I WHERE cod_escritura = '9636810223'), (SELECT REF(I) from tb_inquilino I WHERE cpf = '92027748032'), (SELECT REF(C) FROM tb_contrato C WHERE numero = 2285), TO_DATE('08-09-2020', 'dd-mm-yyyy')));
INSERT INTO tb_aluga VALUES (tp_aluga((SELECT REF(I) FROM tb_imovel I WHERE cod_escritura = '4188415871'), (SELECT REF(I) from tb_inquilino I WHERE cpf = '71033122068'), (SELECT REF(C) FROM tb_contrato C WHERE numero = 8105), TO_DATE('01-12-2021', 'dd-mm-yyyy')));
INSERT INTO tb_aluga VALUES (tp_aluga((SELECT REF(I) FROM tb_imovel I WHERE cod_escritura = '2670703949'), (SELECT REF(I) from tb_inquilino I WHERE cpf = '98643394009'), (SELECT REF(C) FROM tb_contrato C WHERE numero = 8285), TO_DATE('01-12-2020', 'dd-mm-yyyy')));
INSERT INTO tb_aluga VALUES (tp_aluga((SELECT REF(I) FROM tb_imovel I WHERE cod_escritura = '2813137039'), (SELECT REF(I) from tb_inquilino I WHERE cpf = '96458502079'), (SELECT REF(C) FROM tb_contrato C WHERE numero = 7170), TO_DATE('01-11-2020', 'dd-mm-yyyy')));
INSERT INTO tb_aluga VALUES (tp_aluga((SELECT REF(I) FROM tb_imovel I WHERE cod_escritura = '5954115089'), (SELECT REF(I) from tb_inquilino I WHERE cpf = '90019224060'), (SELECT REF(C) FROM tb_contrato C WHERE numero = 1464), TO_DATE('05-12-2020', 'dd-mm-yyyy')));
INSERT INTO tb_aluga VALUES (tp_aluga((SELECT REF(I) FROM tb_imovel I WHERE cod_escritura = '7333288555'), (SELECT REF(I) from tb_inquilino I WHERE cpf = '15069931091'), (SELECT REF(C) FROM tb_contrato C WHERE numero = 6524), TO_DATE('10-01-2020', 'dd-mm-yyyy')));
INSERT INTO tb_aluga VALUES (tp_aluga((SELECT REF(I) FROM tb_imovel I WHERE cod_escritura = '5504615237'), (SELECT REF(I) from tb_inquilino I WHERE cpf = '90019224060'), (SELECT REF(C) FROM tb_contrato C WHERE numero = 4282), TO_DATE('01-09-2020', 'dd-mm-yyyy')));

