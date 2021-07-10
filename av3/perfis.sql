CREATE TABLE perfis(
    cod_escritura varchar2(20),
    perfil varchar2(20),
    CONSTRAINT perfis_pkey PRIMARY KEY (cod_escritura, perfil),
    CONSTRAINT perfis_fkey FOREIGN KEY (cod_escritura) REFERENCES imovel (cod_escritura)
);