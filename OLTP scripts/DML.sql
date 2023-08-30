alter session set nls_date_format='DD.MM.YYYY';
alter session set nls_timestamp_format='DD.MM.YYYY HH:MI:SS';
-- Marca
INSERT INTO Marca VALUES (1, 'Apple');
INSERT INTO Marca VALUES (2, 'Samsung');
INSERT INTO Marca VALUES (3, 'Google');
INSERT INTO Marca VALUES (4, 'OnePlus');
INSERT INTO Marca VALUES (5, 'Xiamoi');
INSERT INTO Marca VALUES (6, 'Sony');
INSERT INTO Marca VALUES (7, 'LG');
INSERT INTO Marca VALUES (8, 'Motorola');
INSERT INTO Marca VALUES (9, 'HUAWEI');
INSERT INTO Marca VALUES (10, 'Nokia');
-- Modelo
INSERT INTO modelo (ID_Modelo, Descricao, ID_Marca) VALUES (1, 'iPhone 13
Pro', 1);
INSERT INTO modelo (ID_Modelo, Descricao, ID_Marca) VALUES (2, 'Samsung
Galaxy S21 Ultra', 2);
INSERT INTO modelo (ID_Modelo, Descricao, ID_Marca) VALUES (3, 'Google Pixel
6 Pro', 3);
INSERT INTO modelo (ID_Modelo, Descricao, ID_Marca) VALUES (4, 'OnePlus 9
Pro', 4);
INSERT INTO modelo (ID_Modelo, Descricao, ID_Marca) VALUES (5, 'Xiaomi Mi 11
Ultra', 5);
INSERT INTO modelo (ID_Modelo, Descricao, ID_Marca) VALUES (6, 'Sony Xperia 1
III', 6);
INSERT INTO modelo (ID_Modelo, Descricao, ID_Marca) VALUES (7, 'LG Wing', 7);
INSERT INTO modelo (ID_Modelo, Descricao, ID_Marca) VALUES (8, 'Motorola
Edge+', 8);
INSERT INTO modelo (ID_Modelo, Descricao, ID_Marca) VALUES (9, 'Huawei P40
Pro', 9);
INSERT INTO modelo (ID_Modelo, Descricao, ID_Marca) VALUES (10, 'Nokia 9
PureView', 10);
INSERT INTO modelo (ID_Modelo, Descricao, ID_Marca) VALUES (11, 'iPhone 12
Mini', 1);
INSERT INTO modelo (ID_Modelo, Descricao, ID_Marca) VALUES (12, 'Samsung
Galaxy Note 20 Ultra', 2);
INSERT INTO modelo (ID_Modelo, Descricao, ID_Marca) VALUES (13, 'Google Pixel
5', 3);
INSERT INTO modelo (ID_Modelo, Descricao, ID_Marca) VALUES (14, 'OnePlus 9',
4);
INSERT INTO modelo (ID_Modelo, Descricao, ID_Marca) VALUES (15, 'Xiaomi Mi
11', 5);
INSERT INTO modelo (ID_Modelo, Descricao, ID_Marca) VALUES (16, 'Sony Xperia
5 II', 6);
INSERT INTO modelo (ID_Modelo, Descricao, ID_Marca) VALUES (17, 'LG Velvet',
7);
INSERT INTO modelo (ID_Modelo, Descricao, ID_Marca) VALUES (18, 'Motorola
Razr 5G', 8);
INSERT INTO modelo (ID_Modelo, Descricao, ID_Marca) VALUES (19, 'Huawei Mate
40 Pro', 9);
INSERT INTO modelo (ID_Modelo, Descricao, ID_Marca) VALUES (20, 'Nokia 8.3',
10);
INSERT INTO modelo (ID_Modelo, Descricao, ID_Marca) VALUES (21, 'iPhone 11
Pro', 1);
INSERT INTO modelo (ID_Modelo, Descricao, ID_Marca) VALUES (22, 'Samsung
Galaxy S20 Ultra', 2);
INSERT INTO modelo (ID_Modelo, Descricao, ID_Marca) VALUES (23, 'Google Pixel
4a', 3);
INSERT INTO modelo (ID_Modelo, Descricao, ID_Marca) VALUES (24, 'OnePlus 8
Pro', 4);
INSERT INTO modelo (ID_Modelo, Descricao, ID_Marca) VALUES (25, 'Xiaomi Mi 10
Pro', 5);
INSERT INTO modelo (ID_Modelo, Descricao, ID_Marca) VALUES (26, 'Sony Xperia
1 II', 6);
INSERT INTO modelo (ID_Modelo, Descricao, ID_Marca) VALUES (27, 'LG G8
ThinQ', 7);
INSERT INTO modelo (ID_Modelo, Descricao, ID_Marca) VALUES (28, 'Motorola
Edge', 8);
INSERT INTO modelo (ID_Modelo, Descricao, ID_Marca) VALUES (29, 'Huawei P30
Pro', 9);
INSERT INTO modelo (ID_Modelo, Descricao, ID_Marca) VALUES (30, 'Nokia 7.2',
10);
-- Estado
INSERT INTO Estado (ID_Estado, Descricao, Sigla) VALUES (1, 'Acre', 'AC');
INSERT INTO Estado (ID_Estado, Descricao, Sigla) VALUES (2, 'Alagoas', 'AL');
INSERT INTO Estado (ID_Estado, Descricao, Sigla) VALUES (3, 'Amapá', 'AP');
INSERT INTO Estado (ID_Estado, Descricao, Sigla) VALUES (4, 'Amazonas',
'AM');
INSERT INTO Estado (ID_Estado, Descricao, Sigla) VALUES (5, 'Bahia', 'BA');
INSERT INTO Estado (ID_Estado, Descricao, Sigla) VALUES (6, 'Ceará', 'CE');
INSERT INTO Estado (ID_Estado, Descricao, Sigla) VALUES (7, 'Distrito
Federal', 'DF');
INSERT INTO Estado (ID_Estado, Descricao, Sigla) VALUES (8, 'Espírito Santo',
'ES');
INSERT INTO Estado (ID_Estado, Descricao, Sigla) VALUES (9, 'Goiás', 'GO');
INSERT INTO Estado (ID_Estado, Descricao, Sigla) VALUES (10, 'Maranhão',
'MA');
INSERT INTO Estado (ID_Estado, Descricao, Sigla) VALUES (11, 'Mato Grosso',
'MT');
INSERT INTO Estado (ID_Estado, Descricao, Sigla) VALUES (12, 'Mato Grosso do
Sul', 'MS');
INSERT INTO Estado (ID_Estado, Descricao, Sigla) VALUES (13, 'Minas Gerais',
'MG');
INSERT INTO Estado (ID_Estado, Descricao, Sigla) VALUES (14, 'Pará', 'PA');
INSERT INTO Estado (ID_Estado, Descricao, Sigla) VALUES (15, 'Paraíba',
'PB');
INSERT INTO Estado (ID_Estado, Descricao, Sigla) VALUES (16, 'Paraná', 'PR');
INSERT INTO Estado (ID_Estado, Descricao, Sigla) VALUES (17, 'Pernambuco',
'PE');
INSERT INTO Estado (ID_Estado, Descricao, Sigla) VALUES (18, 'Piauí', 'PI');
INSERT INTO Estado (ID_Estado, Descricao, Sigla) VALUES (19, 'Rio de
Janeiro', 'RJ');
INSERT INTO Estado (ID_Estado, Descricao, Sigla) VALUES (20, 'Rio Grande do
Norte', 'RN');
INSERT INTO Estado (ID_Estado, Descricao, Sigla) VALUES (21, 'Rio Grande do
Sul', 'RS');
INSERT INTO Estado (ID_Estado, Descricao, Sigla) VALUES (22, 'Rondônia',
'RO');
INSERT INTO Estado (ID_Estado, Descricao, Sigla) VALUES (23, 'Roraima',
'RR');
INSERT INTO Estado (ID_Estado, Descricao, Sigla) VALUES (24, 'Santa
Catarina', 'SC');
INSERT INTO Estado (ID_Estado, Descricao, Sigla) VALUES (25, 'São Paulo',
'SP');
INSERT INTO Estado (ID_Estado, Descricao, Sigla) VALUES (26, 'Sergipe',
'SE');
INSERT INTO Estado (ID_Estado, Descricao, Sigla) VALUES (27, 'Tocantins',
'TO');
-- Cidade
INSERT INTO Cidade (ID_Cidade, Descricao, ID_Estado) VALUES (1, 'Rio Branco', 1);
-- Acre (AC)
INSERT INTO Cidade (ID_Cidade, Descricao, ID_Estado) VALUES (2, 'Maceió', 2);
-- Alagoas (AL)
INSERT INTO Cidade (ID_Cidade, Descricao, ID_Estado) VALUES (3, 'Macapá', 3);
-- AmapÃ¡ (AP)
INSERT INTO Cidade (ID_Cidade, Descricao, ID_Estado) VALUES (4, 'Manaus', 4);
-- Amazonas (AM)
INSERT INTO Cidade (ID_Cidade, Descricao, ID_Estado) VALUES (5, 'Salvador', 5);
-- Bahia (BA)
INSERT INTO Cidade (ID_Cidade, Descricao, ID_Estado) VALUES (6, 'Fortaleza', 6);
-- CearÃ¡ (CE)
INSERT INTO Cidade (ID_Cidade, Descricao, ID_Estado) VALUES (7, 'Brasília', 7);
-- Distrito Federal (DF)
INSERT INTO Cidade (ID_Cidade, Descricao, ID_Estado) VALUES (8, 'Vitória', 8);
-- EspÃrito Santo (ES)
INSERT INTO Cidade (ID_Cidade, Descricao, ID_Estado) VALUES (9, 'Goiânia', 9);
-- GoiÃ¡s (GO)
INSERT INTO Cidade (ID_Cidade, Descricao, ID_Estado) VALUES (10, 'São Luís', 10);
-- MaranhÃ£o (MA)
INSERT INTO Cidade (ID_Cidade, Descricao, ID_Estado) VALUES (11, 'Cuiabá', 11);
-- Mato Grosso (MT)
INSERT INTO Cidade (ID_Cidade, Descricao, ID_Estado) VALUES (12, 'Campo Grande',
12); -- Mato Grosso do Sul (MS)
INSERT INTO Cidade (ID_Cidade, Descricao, ID_Estado) VALUES (13, 'Belo Horizonte',
13); -- Minas Gerais (MG)
INSERT INTO Cidade (ID_Cidade, Descricao, ID_Estado) VALUES (14, 'Belém', 14);
-- ParÃ¡ (PA)
INSERT INTO Cidade (ID_Cidade, Descricao, ID_Estado) VALUES (15, 'João Pessoa',
15); -- ParaÃba (PB)
INSERT INTO Cidade (ID_Cidade, Descricao, ID_Estado) VALUES (16, 'Curitiba', 16);
-- ParanÃ¡ (PR)
INSERT INTO Cidade (ID_Cidade, Descricao, ID_Estado) VALUES (17, 'Recife', 17);
-- Pernambuco (PE)
INSERT INTO Cidade (ID_Cidade, Descricao, ID_Estado) VALUES (18, 'Teresina', 18);
-- PiauÃ (PI)
INSERT INTO Cidade (ID_Cidade, Descricao, ID_Estado) VALUES (19, 'Rio de Janeiro',
19); -- Rio de Janeiro (RJ)
INSERT INTO Cidade (ID_Cidade, Descricao, ID_Estado) VALUES (20, 'Natal', 20);
-- Rio Grande do Norte (RN)
INSERT INTO Cidade (ID_Cidade, Descricao, ID_Estado) VALUES (21, 'Porto Alegre',
21); -- Rio Grande do Sul (RS)
INSERT INTO Cidade (ID_Cidade, Descricao, ID_Estado) VALUES (22, 'Porto Velho',
22); -- RondÃ ́nia (RO)
INSERT INTO Cidade (ID_Cidade, Descricao, ID_Estado) VALUES (23, 'Boa Vista', 23);
-- Roraima (RR)
INSERT INTO Cidade (ID_Cidade, Descricao, ID_Estado) VALUES (24, 'Florianópolis',
24); -- Santa Catarina (SC)
INSERT INTO Cidade (ID_Cidade, Descricao, ID_Estado) VALUES (25, 'São Paulo', 25);
-- SÃ£o Paulo (SP)
INSERT INTO Cidade (ID_Cidade, Descricao, ID_Estado) VALUES (26, 'Aracaju', 26);
-- Sergipe (SE)
INSERT INTO Cidade (ID_Cidade, Descricao, ID_Estado) VALUES (27, 'Palmas', 27);
-- Tocantins (TO)
INSERT INTO Cidade (ID_Cidade, Descricao, ID_Estado) VALUES (28, 'Itabuna', 5);
-- Bahia (BA)
INSERT INTO Cidade (ID_Cidade, Descricao, ID_Estado) VALUES (29, 'Feira de
Santana', 5); -- Bahia (BA)
INSERT INTO Cidade (ID_Cidade, Descricao, ID_Estado) VALUES (30, 'Vitória da
Conquista', 5); -- Bahia (BA)
INSERT INTO Cidade (ID_Cidade, Descricao, ID_Estado) VALUES (31, 'Ilhéus', 5);
-- Bahia (BA)
INSERT INTO Cidade (ID_Cidade, Descricao, ID_Estado) VALUES (32, 'Porto Seguro',
5); -- Bahia (BA)
INSERT INTO Cidade (ID_Cidade, Descricao, ID_Estado) VALUES (33, 'Campos do
Jordão', 25); -- SÃ£o Paulo (SP)
INSERT INTO Cidade (ID_Cidade, Descricao, ID_Estado) VALUES (34, 'Campinas', 25);
-- SÃ£o Paulo (SP)
INSERT INTO Cidade (ID_Cidade, Descricao, ID_Estado) VALUES (35, 'São José dos
Campos', 25); -- SÃ£o Paulo (SP)
INSERT INTO Cidade (ID_Cidade, Descricao, ID_Estado) VALUES (36, 'São Bernardo',
25); -- SÃ£o Paulo (SP)
INSERT INTO Cidade (ID_Cidade, Descricao, ID_Estado) VALUES (37, 'Niterói', 19);
-- Rio de Janeiro (RJ)
INSERT INTO Cidade (ID_Cidade, Descricao, ID_Estado) VALUES (38, 'Paraty', 19);
-- Rio de Janeiro (RJ)
INSERT INTO Cidade (ID_Cidade, Descricao, ID_Estado) VALUES (39, 'Angra dos Reis',
19); -- Rio de Janeiro (RJ)
INSERT INTO Cidade (ID_Cidade, Descricao, ID_Estado) VALUES (40, 'Passos', 13);
-- Minas Gerais (MG)
INSERT INTO Cidade (ID_Cidade, Descricao, ID_Estado) VALUES (41, 'Monte Verde',
13); -- Minas Gerais (MG)
INSERT INTO Cidade (ID_Cidade, Descricao, ID_Estado) VALUES (42, 'Ouro Preto', 13);
-- Minas Gerais (MG)
commit;
-- Cliente
INSERT INTO cliente (ID_Cliente, Nome, Sexo, ID_Cidade) VALUES (1, 'João da Silva',
'M', 1);
INSERT INTO cliente (ID_Cliente, Nome, Sexo, ID_Cidade) VALUES (2, 'Maria
Oliveira', 'F', 2);
INSERT INTO cliente (ID_Cliente, Nome, Sexo, ID_Cidade) VALUES (3, 'Pedro Santos',
'M', 28);
INSERT INTO cliente (ID_Cliente, Nome, Sexo, ID_Cidade) VALUES (4, 'Ana Costa',
'F', 4);
INSERT INTO cliente (ID_Cliente, Nome, Sexo, ID_Cidade) VALUES (5, 'Lucas
Rodrigues', 'M', 5);
INSERT INTO cliente (ID_Cliente, Nome, Sexo, ID_Cidade) VALUES (6, 'Mariana
Almeida', 'F', 29);
INSERT INTO cliente (ID_Cliente, Nome, Sexo, ID_Cidade) VALUES (7, 'Carlos Souza',
'M', 7);
INSERT INTO cliente (ID_Cliente, Nome, Sexo, ID_Cidade) VALUES (8, 'Juliana
Fernandes', 'F', 8);
INSERT INTO cliente (ID_Cliente, Nome, Sexo, ID_Cidade) VALUES (9, 'Rafael Gomes',
'M', 30);
INSERT INTO cliente (ID_Cliente, Nome, Sexo, ID_Cidade) VALUES (10, 'Camila
Martins', 'F', 10);
INSERT INTO cliente (ID_Cliente, Nome, Sexo, ID_Cidade) VALUES (11, 'Fernando
Lima', 'M', 11);
INSERT INTO cliente (ID_Cliente, Nome, Sexo, ID_Cidade) VALUES (12, 'Vanessa
Ribeiro', 'F', 31);
INSERT INTO cliente (ID_Cliente, Nome, Sexo, ID_Cidade) VALUES (13, 'José
Ferreira', 'M', 13);
INSERT INTO cliente (ID_Cliente, Nome, Sexo, ID_Cidade) VALUES (14, 'Carolina
Pires', 'F', 14);
INSERT INTO cliente (ID_Cliente, Nome, Sexo, ID_Cidade) VALUES (15, 'Eduardo
Sousa', 'M', 32);
INSERT INTO cliente (ID_Cliente, Nome, Sexo, ID_Cidade) VALUES (16, 'Luiza
Carvalho', 'F', 16);
INSERT INTO cliente (ID_Cliente, Nome, Sexo, ID_Cidade) VALUES (17, 'Paulo
Andrade', 'M', 17);
INSERT INTO cliente (ID_Cliente, Nome, Sexo, ID_Cidade) VALUES (18, 'Amanda
Nascimento', 'F', 33);
INSERT INTO cliente (ID_Cliente, Nome, Sexo, ID_Cidade) VALUES (19, 'Gustavo
Teixeira', 'M', 19);
INSERT INTO cliente (ID_Cliente, Nome, Sexo, ID_Cidade) VALUES (20, 'Isabela
Barbosa', 'F', 20);
INSERT INTO cliente (ID_Cliente, Nome, Sexo, ID_Cidade) VALUES (21, 'Antônio
Castro', 'M', 34);
INSERT INTO cliente (ID_Cliente, Nome, Sexo, ID_Cidade) VALUES (22, 'Fernanda
Duarte', 'F', 22);
INSERT INTO cliente (ID_Cliente, Nome, Sexo, ID_Cidade) VALUES (23, 'Marcelo
Ferreira', 'M', 23);
INSERT INTO cliente (ID_Cliente, Nome, Sexo, ID_Cidade) VALUES (24, 'Letícia
Cavalcanti', 'F', 35);
INSERT INTO cliente (ID_Cliente, Nome, Sexo, ID_Cidade) VALUES (25, 'André Alves',
'M', 25);
INSERT INTO cliente (ID_Cliente, Nome, Sexo, ID_Cidade) VALUES (26, 'Patrícia
Santos', 'F', 26);
INSERT INTO cliente (ID_Cliente, Nome, Sexo, ID_Cidade) VALUES (27, 'Ricardo
Oliveira', 'M', 36);
INSERT INTO cliente (ID_Cliente, Nome, Sexo, ID_Cidade) VALUES (28, 'Bianca Lima',
'F', 28);
INSERT INTO cliente (ID_Cliente, Nome, Sexo, ID_Cidade) VALUES (29, 'Sérgio
Mendes', 'M', 29);
INSERT INTO cliente (ID_Cliente, Nome, Sexo, ID_Cidade) VALUES (30, 'Mariana
Costa', 'F', 37);
INSERT INTO cliente (ID_Cliente, Nome, Sexo, ID_Cidade) VALUES (31, 'Fernando
Oliveira', 'M', 1);
INSERT INTO cliente (ID_Cliente, Nome, Sexo, ID_Cidade) VALUES (32, 'Mariana
Silva', 'F', 2);
INSERT INTO cliente (ID_Cliente, Nome, Sexo, ID_Cidade) VALUES (33, 'Gustavo
Costa', 'M', 38);
INSERT INTO cliente (ID_Cliente, Nome, Sexo, ID_Cidade) VALUES (34, 'Isabela
Santos', 'F', 4);
INSERT INTO cliente (ID_Cliente, Nome, Sexo, ID_Cidade) VALUES (35, 'Ricardo
Rodrigues', 'M', 5);
INSERT INTO cliente (ID_Cliente, Nome, Sexo, ID_Cidade) VALUES (36, 'Luana
Almeida', 'F', 30);
INSERT INTO cliente (ID_Cliente, Nome, Sexo, ID_Cidade) VALUES (37, 'Henrique
Souza', 'M', 7);
INSERT INTO cliente (ID_Cliente, Nome, Sexo, ID_Cidade) VALUES (38, 'Larissa
Fernandes', 'F', 8);
INSERT INTO cliente (ID_Cliente, Nome, Sexo, ID_Cidade) VALUES (39, 'Rafael Gomes',
'M', 9);
INSERT INTO cliente (ID_Cliente, Nome, Sexo, ID_Cidade) VALUES (40, 'Carolina
Oliveira', 'F', 10);
INSERT INTO cliente (ID_Cliente, Nome, Sexo, ID_Cidade) VALUES (41, 'Bruno Lima',
'M', 11);
INSERT INTO cliente (ID_Cliente, Nome, Sexo, ID_Cidade) VALUES (42, 'Amanda
Ribeiro', 'F', 29);
INSERT INTO cliente (ID_Cliente, Nome, Sexo, ID_Cidade) VALUES (43, 'Rodrigo
Ferreira', 'M', 13);
INSERT INTO cliente (ID_Cliente, Nome, Sexo, ID_Cidade) VALUES (44, 'Marina Pires',
'F', 14);
INSERT INTO cliente (ID_Cliente, Nome, Sexo, ID_Cidade) VALUES (45, 'Diego Sousa',
'M', 15);
INSERT INTO cliente (ID_Cliente, Nome, Sexo, ID_Cidade) VALUES (46, 'Bianca
Carvalho', 'F', 35);
INSERT INTO cliente (ID_Cliente, Nome, Sexo, ID_Cidade) VALUES (47, 'Felipe
Andrade', 'M', 17);
INSERT INTO cliente (ID_Cliente, Nome, Sexo, ID_Cidade) VALUES (48, 'Letícia
Nascimento', 'F', 18);
INSERT INTO cliente (ID_Cliente, Nome, Sexo, ID_Cidade) VALUES (49, 'André
Teixeira', 'M', 19);
INSERT INTO cliente (ID_Cliente, Nome, Sexo, ID_Cidade) VALUES (50, 'Júlia
Barbosa', 'F', 20);
INSERT INTO cliente (ID_Cliente, Nome, Sexo, ID_Cidade) VALUES (51, 'Rafael
Castro', 'M', 37);
INSERT INTO cliente (ID_Cliente, Nome, Sexo, ID_Cidade) VALUES (52, 'Aline Duarte',
'F', 22);
INSERT INTO cliente (ID_Cliente, Nome, Sexo, ID_Cidade) VALUES (53, 'Vinicius
Ferreira', 'M', 23);
INSERT INTO cliente (ID_Cliente, Nome, Sexo, ID_Cidade) VALUES (54, 'Natália
Cavalcanti', 'F', 24);
INSERT INTO cliente (ID_Cliente, Nome, Sexo, ID_Cidade) VALUES (55, 'Marcelo
Alves', 'M', 25);
INSERT INTO cliente (ID_Cliente, Nome, Sexo, ID_Cidade) VALUES (56, 'Patrícia
Santos', 'F', 26);
INSERT INTO cliente (ID_Cliente, Nome, Sexo, ID_Cidade) VALUES (57, 'Lucas
Oliveira', 'M', 27);
INSERT INTO cliente (ID_Cliente, Nome, Sexo, ID_Cidade) VALUES (58, 'Juliana Lima',
'F', 28);
INSERT INTO cliente (ID_Cliente, Nome, Sexo, ID_Cidade) VALUES (59, 'Pedro Mendes',
'M', 29);
INSERT INTO cliente (ID_Cliente, Nome, Sexo, ID_Cidade) VALUES (60, 'Vanessa
Costa', 'F', 36);
INSERT INTO cliente (ID_Cliente, Nome, Sexo, ID_Cidade) VALUES (61, 'Ricardo
Almeida', 'M', 1);
INSERT INTO cliente (ID_Cliente, Nome, Sexo, ID_Cidade) VALUES (62, 'Laura Lima',
'F', 2);
INSERT INTO cliente (ID_Cliente, Nome, Sexo, ID_Cidade) VALUES (63, 'André Costa',
'M', 3);
INSERT INTO cliente (ID_Cliente, Nome, Sexo, ID_Cidade) VALUES (64, 'Gabriela
Oliveira', 'F', 4);
INSERT INTO cliente (ID_Cliente, Nome, Sexo, ID_Cidade) VALUES (65, 'Pedro
Rodrigues', 'M', 5);
INSERT INTO cliente (ID_Cliente, Nome, Sexo, ID_Cidade) VALUES (66, 'Carolina
Alves', 'F', 28);
INSERT INTO cliente (ID_Cliente, Nome, Sexo, ID_Cidade) VALUES (67, 'Lucas Souza',
'M', 7);
INSERT INTO cliente (ID_Cliente, Nome, Sexo, ID_Cidade) VALUES (68, 'Fernanda
Fernandes', 'F', 8);
INSERT INTO cliente (ID_Cliente, Nome, Sexo, ID_Cidade) VALUES (69, 'Gustavo
Gomes', 'M', 9);
INSERT INTO cliente (ID_Cliente, Nome, Sexo, ID_Cidade) VALUES (70, 'Amanda
Santos', 'F', 10);
INSERT INTO cliente (ID_Cliente, Nome, Sexo, ID_Cidade) VALUES (71, 'Bruno
Ribeiro', 'M', 11);
INSERT INTO cliente (ID_Cliente, Nome, Sexo, ID_Cidade) VALUES (72, 'Mariana
Ferreira', 'F', 30);
INSERT INTO cliente (ID_Cliente, Nome, Sexo, ID_Cidade) VALUES (73, 'Rodrigo
Pires', 'M', 13);
INSERT INTO cliente (ID_Cliente, Nome, Sexo, ID_Cidade) VALUES (74, 'Isabela
Sousa', 'F', 14);
INSERT INTO cliente (ID_Cliente, Nome, Sexo, ID_Cidade) VALUES (75, 'Diego Silva',
'M', 15);
INSERT INTO cliente (ID_Cliente, Nome, Sexo, ID_Cidade) VALUES (76, 'Letícia
Carvalho', 'F', 16);
INSERT INTO cliente (ID_Cliente, Nome, Sexo, ID_Cidade) VALUES (77, 'Felipe
Andrade', 'M', 17);
INSERT INTO cliente (ID_Cliente, Nome, Sexo, ID_Cidade) VALUES (78, 'Larissa
Nascimento', 'F', 18);
INSERT INTO cliente (ID_Cliente, Nome, Sexo, ID_Cidade) VALUES (79, 'Henrique
Teixeira', 'M', 19);
INSERT INTO cliente (ID_Cliente, Nome, Sexo, ID_Cidade) VALUES (80, 'Camila
Barbosa', 'F', 31);
INSERT INTO cliente (ID_Cliente, Nome, Sexo, ID_Cidade) VALUES (81, 'Rafael
Castro', 'M', 21);
INSERT INTO cliente (ID_Cliente, Nome, Sexo, ID_Cidade) VALUES (82, 'Natália
Duarte', 'F', 22);
INSERT INTO cliente (ID_Cliente, Nome, Sexo, ID_Cidade) VALUES (83, 'Vinicius
Ferreira', 'M', 23);
INSERT INTO cliente (ID_Cliente, Nome, Sexo, ID_Cidade) VALUES (84, 'Mariana
Cavalcanti', 'F', 24);
INSERT INTO cliente (ID_Cliente, Nome, Sexo, ID_Cidade) VALUES (85, 'Marcelo
Alves', 'M', 25);
INSERT INTO cliente (ID_Cliente, Nome, Sexo, ID_Cidade) VALUES (86, 'Patrícia
Santos', 'F', 26);
INSERT INTO cliente (ID_Cliente, Nome, Sexo, ID_Cidade) VALUES (87, 'Lucas
Oliveira', 'M', 27);
INSERT INTO cliente (ID_Cliente, Nome, Sexo, ID_Cidade) VALUES (88, 'Juliana Lima',
'F', 28);
INSERT INTO cliente (ID_Cliente, Nome, Sexo, ID_Cidade) VALUES (89, 'Pedro Mendes',
'M', 29);
INSERT INTO cliente (ID_Cliente, Nome, Sexo, ID_Cidade) VALUES (90, 'Vanessa
Costa', 'F', 30);
commit;
-- Compras (Cabeçalho)
INSERT INTO Compra (ID_Compra, ID_Cliente, Data)
SELECT
SQ_Compra.Nextval,
FLOOR(DBMS_RANDOM.VALUE(1, (select count(*) from cliente)+1)) AS ID_Cliente,
-- FLOOR(DBMS_RANDOM.VALUE(1, 91)) AS ID_Cliente,
to_DATE('01.01.2020') + NUMTODSINTERVAL(FLOOR(DBMS_RANDOM.VALUE(0, 912)),
'DAY') AS Data_Compra
FROM dual
CONNECT BY LEVEL <= 3000;
commit;
