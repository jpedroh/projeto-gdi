CREATE TABLE proprietario(
    cpf varchar2(11),
    dados_bancarios_conta integer, 
    dados_bancarios_agencia integer, 
    dados_bancarios_banco integer,
    CONSTRAINT proprietario_pkey PRIMARY KEY (cpf),
    CONSTRAINT proprietario_fkey FOREIGN KEY (cpf) REFERENCES pessoa (cpf) 
);