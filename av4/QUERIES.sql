CREATE INDEX indice_bairro ON endereco (bairro);

/* Listar endereco e valor do aluguel de todos os imóveis do bairro 'Torre' */
SELECT E.rua, E.bairro, I.endereco_numero, I.endereco_complemento, I.valor_do_aluguel FROM endereco E, imovel I WHERE E.cep = I.endereco_cep AND E.bairro = 'Torre';

/* Atualizar um funcionario como supervisionado por outro */
UPDATE funcionario SET cpf_supervisor="51927985072" WHERE cpf="23251067052";

/* Listar endereco e valor de todos os imóveis que não estão alugados no momento */
SELECT I.cod_escritura, E.rua, I.endereco_numero, I.endereco_complemento, I.valor_do_aluguel FROM endereco E, imovel I WHERE E.cep=I.endereco_cep AND I.cod_escritura NOT IN (SELECT A.cod_escritura FROM aluga A WHERE A.num_contrato NOT IN (SELECT C.numero FROM contrato C WHERE data_de_fim < TO_DATE('12-07-2023', 'dd-mm-yyyy')));

/* Listar o cpf e o numero de contratos fechados de um funcionario ordenado decrescentemente pela quantidade de contratos fechados */
SELECT COUNT(C.numero) as contratos_fechados, F.cpf FROM funcionario F LEFT JOIN contrato C ON F.cpf = C.cpf_funcionario GROUP BY F.cpf ORDER BY contratos_fechados DESC;

/* Listar nome, CPF e salário do funcionário com o maior salário */
SELECT F.cpf, P.nome, F.salario FROM funcionario F INNER JOIN pessoa P ON F.cpf=P.cpf WHERE F.salario IN (SELECT MAX(salario) FROM funcionario);

/* Listar valor médio das bonificações recebidas por funcionarios que receberma bonificação */
SELECT F.cpf, AVG(B.valor) as valor_medio FROM funcionario F INNER JOIN contrato C on F.cpf=C.cpf_funcionario INNER JOIN bonificacao B on B.numero_contrato=C.numero GROUP BY F.cpf ORDER BY valor_medio DESC;

/* Listar endereco e valor do aluguel dos imoveis que possuem valor de alguel entre 800 e 1200 reais */
SELECT E.rua, E.bairro, I.endereco_numero, I.endereco_complemento, I.valor_do_aluguel FROM imovel I INNER JOIN endereco E ON I.endereco_cep = E.cep WHERE i.valor_do_aluguel BETWEEN 800.00 AND 1200.00 ORDER BY valor_do_aluguel ASC;

/* Listar nome, cpf e função dos funcionários que não possuem um supervisor atrelado */
SELECT P.nome, F.cpf, F.funcao FROM funcionario F INNER JOIN pessoa P on F.cpf = P.cpf WHERE cpf_supervisor IS NULL;

/* Listar nome e CPF do proprietário com imóvel de menor aluguel */
SELECT P.nome, P.cpf FROM pessoa P WHERE P.cpf = (SELECT cpf_proprietario FROM imovel WHERE valor_do_aluguel = (SELECT MIN(valor_do_aluguel) FROM imovel));

/* Listar a quantidade de contratos e cpf dos funcionarios que fecharam menos de 7 contratos */
SELECT COUNT(C.numero), F.cpf from funcionario F LEFT JOIN contrato C on F.cpf = C.cpf_funcionario GROUP BY (F.cpf) HAVING COUNT(C.numero) < 7;

/* Selecionar o nome, cep e endereço das pessoas que moram em uma rua*/
SELECT p.nome, p.endereco_cep, e.rua FROM pessoa p, endereco e WHERE p.endereco_cep = e.cep AND p.endereco_cep IN (SELECT e.cep FROM endereco e WHERE e.rua LIKE 'Rua%');

/* Listar endereco e valor do aluguel dos imoveis que possuem perfil 'Festivo' ou 'Aventureiro' */
SELECT E.rua, E.bairro, I.endereco_numero, I.endereco_complemento, I.valor_do_aluguel FROM imovel I INNER JOIN endereco E on E.cep = I.endereco_cep WHERE I.cod_escritura IN (SELECT cod_escritura from perfil P WHERE P.perfil IN ('Festivo', 'Aventureiro'));

/* Listar número dos contratos que possuem pelo menos uma parcela com data de vencimento maior que "01-02-2023" */
SELECT numero FROM contrato WHERE numero = ANY (SELECT numero_contrato FROM parcela WHERE data_vencimento > TO_DATE('01-02-2023', 'dd-mm-yyyy'));

/* Lista endereco e valor dos imoveis cujos valores de aluguel são menores do que o valor de cada imóvel do bairro 'Torre' */
SELECT E.rua, E.bairro, I.endereco_numero, I.endereco_complemento, I.valor_do_aluguel FROM imovel I, endereco E WHERE I.endereco_cep = E.cep AND valor_do_aluguel < ALL (SELECT valor_do_aluguel FROM endereco E, imovel I WHERE E.cep = I.endereco_cep AND E.bairro = 'Torre');

/* Criar uma visão dos contratos que irão se vencer até o final do ano */
CREATE VIEW contratos_vencendo AS SELECT C.numero, C.data_de_fim FROM contrato AS C WHERE C.data_de_fim BETWEEN TO_DATE('12-07-2021', 'dd-mm-yyyy') AND TO_DATE('31-12-2021', 'dd-mm-yyyy')

/* Selecionar os proprietários que também são inquilino*/
(SELECT cpf FROM inquilino) INTERSECT (SELECT cpf FROM proprietario)

--Adicionando atributo de descrição em imovel
ALTER TABLE imovel ADD (descricao varchar2(200));

INSERT INTO endereco VALUES ('56809867', 'Alameda das Aves', 'Torre');

DELETE FROM endereco WHERE cep = '56809867';

--Dá privilégios de acesso a todos os usuários e depois tira
GRANT SELECT ON pessoa TO '*'@'localhost';

REVOKE SELECT ON pessoa FROM '*'@'localhost';
