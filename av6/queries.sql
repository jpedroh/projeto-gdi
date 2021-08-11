/* Listar endereco e valor do aluguel de todos os imóveis do bairro 'Torre' */
SELECT I.endereco.rua, I.endereco.bairro, I.endereco.numero, I.endereco.complemento, I.valor_do_aluguel FROM tb_imovel I WHERE I.endereco.bairro = 'Torre';

/* Listar endereco e valor de todos os imóveis que não estão alugados no momento */ 
SELECT I.cod_escritura, I.endereco.rua, I.endereco.numero, I.endereco.complemento, I.valor_do_aluguel FROM tb_imovel I
    WHERE I.cod_escritura NOT IN
        (SELECT A.imovel.cod_escritura FROM tb_aluga A WHERE A.contrato NOT IN
        (SELECT REF(C) FROM tb_contrato C WHERE data_de_fim < TO_DATE('12-07-2021', 'dd-mm-yyyy')));

/* Listar o cpf e o numero de contratos fechados de um funcionario ordenado decrescentemente pela quantidade de contratos fechados */
SELECT DEREF(C.funcionario).cpf as cpf, DEREF(C.funcionario).nome as nome, COUNT(C.numero) as contratos_fechados FROM tb_contrato C GROUP BY DEREF(C.funcionario).cpf, DEREF(C.funcionario).nome ORDER BY contratos_fechados DESC;

/* Listar nome, CPF e salário do funcionário com o maior salário */
SELECT F.cpf, F.nome, F.salario FROM tb_funcionario F WHERE F.salario IN (SELECT MAX(salario) FROM tb_funcionario);

/** Recuperar todos os telefones da proprietária de nome "Vitória" (CONSULTA A VARRAY!) */
SELECT P.cpf, P.nome, T.numero from tb_proprietario P, TABLE(P.telefones) T WHERE P.nome = 'Vitória';

/** Listar contratos fechados pelo funcionário de cpf 89712208052 **/
SELECT C.numero, C.data_de_assinatura FROM tb_contrato C WHERE C.funcionario = (SELECT REF(F) FROM tb_funcionario F WHERE F.cpf = '89712208052');

/* Listar valor médio das bonificações recebidas por funcionarios que receberma bonificação */
SELECT C.funcionario.cpf, C.funcionario.nome, AVG(C.bonificacao.valor) as valor_medio FROM tb_celebra C GROUP BY C.funcionario.cpf, C.funcionario.nome ORDER BY valor_medio DESC;

/* Listar endereco e valor do aluguel dos imoveis que possuem valor de alguel entre 800 e 1200 reais */
SELECT I.endereco.rua, I.endereco.bairro, I.endereco.numero, I.endereco.complemento, I.valor_do_aluguel FROM tb_imovel I WHERE I.valor_do_aluguel BETWEEN 800.00 AND 1200.00 ORDER BY valor_do_aluguel ASC;

/* Listar nome, cpf e função dos funcionários que não possuem um supervisor atrelado */
SELECT F.nome, F.cpf, F.funcao FROM tb_funcionario F WHERE supervisor IS NULL;

/* Listar nome e CPF do proprietário com imóvel de menor aluguel */
SELECT DEREF(I.proprietario).cpf as cpf, DEREF(I.proprietario).nome, I.valor_do_aluguel FROM tb_imovel I WHERE I.valor_do_aluguel = (SELECT MIN(valor_do_aluguel) FROM tb_imovel);

/* Listar cpf, nome e a quantidade de contratos dos funcionarios que fecharam menos de 7 contratos */
SELECT C.funcionario.cpf, C.funcionario.nome, COUNT(C.numero) from tb_contrato C GROUP BY (C.funcionario.cpf, C.funcionario.nome) HAVING COUNT(C.numero) < 7;

/* Selecionar o nome, cep e endereço das pessoas que moram em uma rua*/
SELECT p.nome, p.endereco.rua FROM tb_proprietario p WHERE p.endereco.rua LIKE 'Rua%' UNION SELECT i.nome, i.endereco.rua FROM tb_inquilino i WHERE i.endereco.rua LIKE 'Rua%' UNION SELECT f.nome, f.endereco.rua FROM tb_funcionario f WHERE f.endereco.rua LIKE 'Rua%';

/* Listar endereco e valor do aluguel dos imoveis que possuem perfil 'Aventureiro' */
SELECT I.endereco.rua, I.endereco.bairro, I.endereco.numero, I.endereco.complemento, I.valor_do_aluguel FROM tb_imovel I, TABLE(I.perfil) P WHERE P.descricao = 'Aventureiro';

/* Listar número e data de fim dos contratos que possuem pelo menos uma parcela com data de vencimento maior que "01-01-2022" */
SELECT C.numero, C.data_de_fim FROM tb_contrato C WHERE C.numero = ANY (SELECT C.numero FROM tb_contrato C, TABLE(c.parcelas) P WHERE P.data_vencimento > TO_DATE('01-01-2022', 'dd-mm-yyyy'));

/* Lista endereco e valor dos imoveis cujos valores de aluguel são menores do que o valor de cada imóvel do bairro 'Torre' */
SELECT I.endereco.rua, I.endereco.bairro, I.endereco.numero, I.endereco.complemento, I.valor_do_aluguel FROM tb_imovel I WHERE valor_do_aluguel < ALL (SELECT valor_do_aluguel FROM tb_imovel I WHERE I.endereco.bairro = 'Torre');

/* Listar endereço e valor dos menores alugueis agrupado por bairro */
SELECT I.endereco.bairro as bairro, MIN(I.valor_do_aluguel) as valor_do_aluguel FROM tb_imovel I GROUP BY I.endereco.bairro;

/* Listar o valor antigo e o novo valor hipotético após um reajuste de 5% no valor do aluguel de todos os imóveis */
SELECT I.endereco.rua, I.endereco.bairro, I.endereco.numero, I.endereco.complemento, I.valor_do_aluguel, I.calcularReajuste(0.05) as novo_valor_do_aluguel FROM tb_imovel I;