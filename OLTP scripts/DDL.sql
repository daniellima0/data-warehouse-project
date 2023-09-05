CREATE TABLE Marca (
    ID_Marca INTEGER NOT null,
    Descricao VARCHAR(30) NOT null
);

ALTER TABLE
    Marca
ADD
    CONSTRAINT PK_Marca PRIMARY KEY (ID_Marca);

CREATE TABLE Modelo (
    ID_Modelo INTEGER NOT null,
    Descricao VARCHAR(30) NOT NULL,
    ID_Marca INTEGER NOT null
);

ALTER TABLE
    Modelo
ADD
    CONSTRAINT PK_Modelo PRIMARY KEY (ID_Modelo);

ALTER TABLE
    Modelo
ADD
    CONSTRAINT FK_Modelo_Marca FOREIGN KEY (ID_Marca) REFERENCES Marca(ID_Marca);

CREATE TABLE Aparelho (
    ID_Aparelho INTEGER NOT null,
    Numero_Serie VARCHAR(10) NOT null,
    ID_Modelo INTEGER NOT null
);

ALTER TABLE
    Aparelho
ADD
    CONSTRAINT PK_Aparelho PRIMARY KEY (ID_Aparelho);

ALTER TABLE
    Aparelho
ADD
    CONSTRAINT FK_Aparelho_Modelo FOREIGN KEY (ID_Modelo) REFERENCES Modelo(ID_Modelo);

CREATE TABLE Estado (
    ID_Estado INTEGER NOT null,
    Descricao VARCHAR(30) NOT NULL,
    Sigla CHAR(02) NOT null
);

ALTER TABLE
    Estado
ADD
    CONSTRAINT PK_Estado PRIMARY KEY (ID_Estado);

CREATE TABLE Cidade (
    ID_Cidade INTEGER NOT null,
    Descricao VARCHAR(30) NOT null,
    ID_Estado INTEGER NOT null
);

ALTER TABLE
    Cidade
ADD
    CONSTRAINT PK_Cidade PRIMARY KEY (ID_Cidade);

ALTER TABLE
    Cidade
ADD
    CONSTRAINT FK_Cidade_Estado FOREIGN KEY (ID_Estado) REFERENCES Estado(ID_Estado);

CREATE TABLE Cliente (
    ID_Cliente INTEGER NOT null,
    Nome VARCHAR(30) NOT null,
    Sexo CHAR(01) NOT NULL,
    ID_Cidade INTEGER NOT null
);

ALTER TABLE
    Cliente
ADD
    CONSTRAINT PK_Cliente PRIMARY KEY (ID_Cliente);

ALTER TABLE
    Cliente
ADD
    CONSTRAINT FK_Cliente_Cidade FOREIGN KEY (ID_Cidade) REFERENCES Cidade(ID_Cidade);

CREATE SEQUENCE SQ_COMPRA;

CREATE TABLE Compra (
    ID_Compra INTEGER NOT null,
    ID_Cliente INTEGER NOT null,
    Data DATE NOT null
);

ALTER TABLE
    Compra
ADD
    CONSTRAINT PK_Compra PRIMARY KEY (ID_Compra);

ALTER TABLE
    Compra
ADD
    CONSTRAINT FK_Compra_Cliente FOREIGN KEY (ID_Cliente) REFERENCES Cliente(ID_Cliente);

CREATE SEQUENCE SQ_CARRINHO;

CREATE TABLE Carrinho (
    ID_Carrinho INTEGER NOT null,
    ID_Compra INTEGER NOT null,
    ID_Aparelho INTEGER NOT null,
    Quantidade INT NOT null,
    Valor NUMERIC (11, 2) NOT null
);

ALTER TABLE
    Carrinho
ADD
    CONSTRAINT PK_Carrinho PRIMARY KEY (ID_Carrinho);

ALTER TABLE
    Carrinho
ADD
    CONSTRAINT FK_Carrinho_Compra FOREIGN KEY (ID_Compra) REFERENCES Compra(ID_Compra);

ALTER TABLE
    Carrinho
ADD
    CONSTRAINT FK_Carrinho_Aparelho FOREIGN KEY (ID_Aparelho) REFERENCES Aparelho(ID_Aparelho);
