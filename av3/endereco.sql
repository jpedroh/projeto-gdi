CREATE TABLE endereco (
    cep varchar2(8),
    rua varchar2(50),
    bairro varchar2(15),
    CONSTRAINT endereco_pkey PRIMARY KEY (cep)
);

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