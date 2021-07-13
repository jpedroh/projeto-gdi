CREATE INDEX id_bairro ON endereco (bairro);

/* Listar endereco e valor do aluguel de todos os imóveis do bairro 'Pina' */
SELECT E.rua, I.numero, I.complemento, I.valor_do_aluguel FROM endereco as E, imovel as I WHERE E.cep = I.cep AND E.bairro = 'Pina';

/* Atualizar um funcionario como supervisionado por outro */
UPDATE funcionario SET cpf_supervisor="51927985072" WHERE cpf="23251067052";

/* ***********Listar endereco e valor do aluguel de todos os imóveis que não estão alugados no momento */
SELECT E.rua, I.numero, I.complemento, I.valor_do_aluguel FROM endereco as E, imovel as I WHERE I.cod_escritura NOT IN (SELECT A.cod_escritura FROM aluga AS A WHERE A.num_contrato NOT IN (SELECT C.numero FROM contrato AS C WHERE data_de_fim < TO_DATE('12-07-2021', 'dd-mm-yyyy')))

/* Listar o numero de contratos fechados e o nome do funcionario que fechou ordenado decrescentemente pela quantidade de contratos fechados */
SELECT (COUNT(*) as contratos_fechados), E.nome FROM funcionario as F, contrato as C WHERE F.cpf = C.cpf_funcionario GROUP BY (F.cpf) ORDER BY contratos_fechados DESC;

/* Listar nome, CPF e salário do funcionário com o maior salário */
SELECT MAX(salario) as salario, nome, cpf from funcionario;

/* Listar nome, CPF e o valor médio das bonificações recebidas por um determinado funcionário */
SELECT F.nome, F.cpf, AVG(B.valor) as valor_medio FROM funcionario as F, bonificacao as B WHERE B.numero_contrato IN (SELECT C.numero FROM contrato AS C WHERE cpf_funcionario = "23251067052");

/* Listar endereco e valor do aluguel dos imoveis que possuem valor de alguel entre 800 e 1200 reais */
SELECT E.rua, E.bairro, I.numero, I.complemento FROM imovel as I INNER JOIN endereco as E ON I.cep = E.cep WHERE i.valor_do_aluguel BETWEEN 800.00 AND 1200.00;

/* Listar nome, cpf e função dos funcionários que não possuem um supervisor atrelado */
SELECT nome, cpf, funcao FROM funcionario WHERE cpf_supervisor IS NULL;

/* Listar nome e CPF do proprietário com imóvel de menor aluguel */
SELECT P.nome, P.cpf FROM pessoa P WHERE P.cpf = (SELECT cpf_proprietario FROM imovel WHERE valor_do_aluguel = (SELECT MIN(valor_do_aluguel) FROM imovel));

/* Listar quanto ganha cada proprietário */
SELECT SUM(*) as total_gain, P.nome, P.cpf from contrato as C, imovel as I, Pessoa as P WHERE C.cpf_funcionario = I.cpf_funcionario AND P.cpf = C.cpf_funcionario GROUP BY P.cpf ORDER BY total_gain DESC;

/* Listar a quantidade de contratos, o nome e cpf dos funcionarios que fecharam menos de 5 contratos no último mês */
SELECT COUNT(*) as contratos_fechados, F.nome, F.cpf from funcionario as F, contrato as C WHERE F.cpf = C.cpf_funcionario AND C.data_de_assinatura BETWEEN TO_DATE('01-03-2020', 'dd-mm-yyyy') AND TO_DATE('31-03-2020', 'dd-mm-yyyy') GROUP BY (F.cpf) HAVING contratos_fechados < 5;

/* Selecionar o nome das pessoas que moram em uma rua*/

SELECT p.nome FROM pessoa AS p WHERE p.endereco_cep IN (SELECT e.cep FROM endereco AS e WHERE e.rua LIKE 'Rua%');

/* Listar endereco e valor do aluguel dos imoveis que possuem perfil 'Familiar' ou 'Espaçoso' */
SELECT E.rua, E.bairro, I.numero, I.complemento FROM imovel as I, perfil as P INNER JOIN endereco as E ON I.cep = E.cep WHERE P.nome IN ('Familiar', 'Espaçoso');

/* Listar número dos contratos que possuem pelo menos uma parcela com data de vencimento maior que "01-02-2023" */
SELECT numero FROM contrato WHERE numero = ANY (SELECT numero_contrato FROM parcela WHERE data_de_vencimento > TO_DATE("01-02-2023", "dd-mm-yyyy"));

/* Listar número dos contratos que tem todas as parcelas com data de vencimento inferior a "01-02-2023" */
SELECT numero FROM contrato WHERE numero = ALL (SELECT numero_contrato FROM parcela WHERE data_de_vencimento < TO_DATE("01-02-2023", "dd-mm-yyyy"));

/* Criar uma visão dos contratos que irão se vencer até o final do ano */
CREATE VIEW contratos_vencendo AS SELECT C.numero C.data_de_fim FROM contrato AS C WHERE C.data_de_fim BETWEEN TO_DATE('12-07-2021', 'dd-mm-yyyy') AND TO_DATE('31-12-2021', 'dd-mm-yyyy')

/* Selecionar os proprietários que também são inquilino*/
(SELECT cpf FROM inquilino) INTERSECT (SELECT cpf FROM proprietario)
