CREATE TABLE contrato (
    numero integer,
    data_de_fim date,
    data_de_assinatura date,
    cpf_funcionario varchar2(11),
    CONSTRAINT contrato_pkey PRIMARY KEY (numero),
    CONSTRAINT contrato_fkey FOREIGN KEY (cpf_funcionario) REFERENCES funcionario (cpf)
);

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
