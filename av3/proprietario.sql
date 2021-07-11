CREATE TABLE proprietario(
    cpf varchar2(11),
    dados_bancarios_conta integer, 
    dados_bancarios_agencia integer, 
    dados_bancarios_banco integer,
    CONSTRAINT proprietario_pkey PRIMARY KEY (cpf),
    CONSTRAINT proprietario_fkey FOREIGN KEY (cpf) REFERENCES pessoa (cpf) 
);

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