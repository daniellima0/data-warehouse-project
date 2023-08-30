/*DROP CASO SEJA NECESSARIO*/
BEGIN
    BEGIN
        EXECUTE IMMEDIATE 'DROP TABLE VENDA';
    EXCEPTION
        WHEN OTHERS THEN
            NULL;
    END;
    
    BEGIN
        EXECUTE IMMEDIATE 'DROP TABLE GENERO';
    EXCEPTION
        WHEN OTHERS THEN
            NULL;
    END;
    
    BEGIN
        EXECUTE IMMEDIATE 'DROP TABLE TEMPO';
    EXCEPTION
        WHEN OTHERS THEN
            NULL;
    END;
    
    BEGIN
        EXECUTE IMMEDIATE 'DROP TABLE LOCALIDADE';
    EXCEPTION
        WHEN OTHERS THEN
            NULL;
    END;
    
    BEGIN
        EXECUTE IMMEDIATE 'DROP TABLE APARELHO';
    EXCEPTION
        WHEN OTHERS THEN
            NULL;
    END;
END;

/*TABELA APARELHO (DIMENSÃO)*/
CREATE TABLE APARELHO (
    ID_APARELHO INTEGER NOT null,
    MODELO VARCHAR(100) NOT null,
    MARCA VARCHAR(100) NOT null,
    CONSTRAINT PK_APARELHO PRIMARY KEY (ID_APARELHO)
);

/*TABELA DA LOGRADURA SIMPLIFICADA (DIMENSÃO)*/
CREATE TABLE LOCALIDADE (
    ID_LOCAL INTEGER NOT null,
    ESTADO VARCHAR(100) NOT NULL,
    CIDADE VARCHAR(100) NOT NULL,
    CONSTRAINT PK_LOCAL PRIMARY KEY (ID_LOCAL)
);

/*TABELA DO TEMPO DA COMPRA (DIMENSÃO)*/
CREATE TABLE TEMPO (
    ID_TEMPO INTEGER NOT null,
    ANO INTEGER NOT null,
    QUADRIMESTRE INTEGER NOT null CONSTRAINT CHK_QUADRIMESTRE CHECK (
        QUADRIMESTRE BETWEEN 1
        AND 3
    ),
    CONSTRAINT PK_TEMPO PRIMARY KEY (ID_TEMPO)
);

/*TABELA DO GENERO DOS COMPRADORES (DIMENSÃO)*/
CREATE TABLE GENERO (
    ID_GENERO INTEGER NOT null,
    GENERO VARCHAR(100) NOT null,
    CONSTRAINT PK_GENERO PRIMARY KEY (ID_GENERO)
);

/* TABELA DE VENDA (FATO) */
CREATE TABLE VENDA (
    ID_VENDA INTEGER NOT null,
    ID_APARELHO INTEGER NOT null,
    ID_LOCAL INTEGER NOT null,
    ID_GENERO INTEGER NOT null,
    ID_TEMPO INTEGER NOT null,
    QUANTIDADE INTEGER NOT null,
    VALOR DECIMAL NOT null,
    CONSTRAINT PK_VENDA PRIMARY KEY (ID_VENDA),
    CONSTRAINT FK_VENDA_APARELHO FOREIGN KEY (ID_APARELHO) REFERENCES APARELHO(ID_APARELHO),
    CONSTRAINT FK_VENDA_LOCAL FOREIGN KEY (ID_LOCAL) REFERENCES LOCALIDADE(ID_LOCAL),
    CONSTRAINT FK_VENDA_GENERO FOREIGN KEY (ID_GENERO) REFERENCES GENERO(ID_GENERO),
    CONSTRAINT FK_VENDA_TEMPO FOREIGN KEY (ID_TEMPO) REFERENCES TEMPO(ID_TEMPO)
);

/*SEQUENCES*/
CREATE SEQUENCE SQ_APARELHO;
CREATE SEQUENCE SQ_LOCALIDADE;
CREATE SEQUENCE SQ_TEMPO;
CREATE SEQUENCE SQ_GENERO;
CREATE SEQUENCE SQ_VENDA;