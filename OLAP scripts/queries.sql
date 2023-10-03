-- a) Visualizar a quantidade e o valor comprado pelos modelos e/ou marcas dos seus produtos
SELECT A.MARCA, A.MODELO, SUM(V.QUANTIDADE) AS QUANTIDADE_TOTAL, SUM(V.VALOR) AS VALOR_TOTAL
FROM VENDA V
JOIN APARELHO A ON V.ID_APARELHO = A.ID_APARELHO
GROUP BY ROLLUP(A.MARCA, A.MODELO);
ORDER BY A.MARCA, A.MODELO;

-- b) Visualizar a quantidade e o valor comprado dos seus produtos, geograficamente, pelas cidades e/ou estados
SELECT L.ESTADO, L.CIDADE, SUM(V.QUANTIDADE) AS QUANTIDADE_TOTAL, SUM(V.VALOR) AS VALOR_TOTAL
FROM VENDA V
JOIN LOCALIDADE L ON V.ID_LOCAL = L.ID_LOCAL
GROUP BY ROLLUP(L.ESTADO, L.CIDADE)
ORDER BY L.ESTADO, L.CIDADE;

-- c) Visualizar a quantidade e o valor comprado dos seus produtos, por quadrimestre e/ou por ano
SELECT T.QUADRIMESTRE, T.ANO, SUM(V.QUANTIDADE) AS QUANTIDADE_TOTAL, SUM(V.VALOR) AS VALOR_TOTAL
FROM VENDA V
JOIN TEMPO T ON V.ID_TEMPO = T.ID_TEMPO
GROUP BY ROLLUP(T.QUADRIMESTRE, T.ANO)
ORDER BY T.QUADRIMESTRE, T.ANO;

-- d) Visualizar a quantidade e o valor comprado dos seus produtos, por gênero
SELECT G.GENERO, SUM(V.QUANTIDADE) AS QUANTIDADE_TOTAL, SUM(V.VALOR) AS VALOR_TOTAL
FROM VENDA V
JOIN GENERO G ON V.ID_GENERO = G.ID_GENERO
GROUP BY G.GENERO;

-- e) Visualizar o ranking dos smartphones mais vendidos em um determinado ano
SELECT 
    T.ANO AS Ano,
    A.MODELO AS Modelo,
    A.MARCA AS Marca,
    SUM(V.QUANTIDADE) AS QUANTIDADE_TOTAL,
    RANK() OVER (PARTITION BY T.ANO ORDER BY SUM(V.QUANTIDADE) DESC) AS RANKING
FROM VENDA V
JOIN APARELHO A ON V.ID_APARELHO = A.ID_APARELHO
JOIN TEMPO T ON V.ID_TEMPO = T.ID_TEMPO
WHERE T.ANO = 2020
GROUP BY T.ANO, A.MODELO, A.MARCA
ORDER BY T.ANO, RANKING;


-- f) Visualizar o ranking dos smartphones com maior valor de venda por estado, em um determinado ano
SELECT 
    L.ESTADO AS Estado,
    A.MODELO AS Modelo,
    A.MARCA AS Marca,
    SUM(V.VALOR) AS VALOR_TOTAL,
    RANK() OVER (PARTITION BY L.ESTADO ORDER BY SUM(V.VALOR) DESC) AS RANKING
FROM VENDA V
JOIN APARELHO A ON V.ID_APARELHO = A.ID_APARELHO
JOIN LOCALIDADE L ON V.ID_LOCAL = L.ID_LOCAL
JOIN TEMPO T ON V.ID_TEMPO = T.ID_TEMPO
WHERE T.ANO = 2020
GROUP BY L.ESTADO, A.MODELO, A.MARCA
ORDER BY L.ESTADO, RANKING;

-- g) Visualizar o percentual de venda de cada smartphone em um determinado quadrimestre e ano;
SELECT 
    A.MODELO, 
    A.MARCA, 
    SUM(V.QUANTIDADE) AS QUANTIDADE_TOTAL,
    SUM(V.VALOR) AS VALOR_TOTAL,
    (SUM(V.QUANTIDADE) / SUM(SUM(V.QUANTIDADE)) OVER()) * 100 AS PERCENTUAL_VENDA
FROM 
    VENDA V
JOIN 
    APARELHO A ON V.ID_APARELHO = A.ID_APARELHO
JOIN 
    TEMPO T ON V.ID_TEMPO = T.ID_TEMPO
WHERE 
    T.ANO = 2020
    AND T.QUADRIMESTRE = 2
GROUP BY 
    A.MODELO, A.MARCA;

-- h) Visualizar a diferença na quantidade das vendas de cada smartphone entre dois anos consecutivos
SELECT T.ANO, A.MARCA, A.MODELO, SUM(V.QUANTIDADE) AS QUANTIDADE_TOTAL, 
	LAG(SUM(V.QUANTIDADE),1,0) OVER (ORDER BY A.MARCA, A.MODELO) AS QUANTIDADE_ANTERIOR, 
	SUM(V.QUANTIDADE) - LAG(SUM(V.QUANTIDADE),1,0) OVER (ORDER BY A.MARCA, A.MODELO) AS DIFERENCA_QUANTIDADE
FROM VENDA V
JOIN APARELHO A ON V.ID_APARELHO = A.ID_APARELHO
JOIN TEMPO T ON V.ID_TEMPO = T.ID_TEMPO
GROUP BY A.MARCA, A.MODELO, T.ANO
ORDER BY A.MARCA, A.MODELO, T.ANO;

-- i) Visualizar a diferença entre a quantidade e os valores vendidos entre a nossa empresa e a concorrente por quadrimestre e/ou ano
SELECT A.MARCA, A.MODELO, T1.ANO AS Ano, T2.ANO AS Ano_Concorrente, 
       V1.QUANTIDADE AS Quantidade_Ano, V2.QUANTIDADE AS Quantidade_Ano_Concorrente,
       V1.VALOR AS Valor_Ano, V2.VALOR AS Valor_Ano_Concorrente,
       (V2.QUANTIDADE - V1.QUANTIDADE) AS Diferenca_Quantidade,
       (V2.VALOR - V1.VALOR) AS Diferenca_Valor
FROM VENDA V1
JOIN VENDA V2 ON V1.ID_APARELHO = V2.ID_APARELHO
JOIN APARELHO A ON V1.ID_APARELHO = A.ID_APARELHO
JOIN TEMPO T1 ON V1.ID_TEMPO = T1.ID_TEMPO AND T1.QUADRIMESTRE = 1
JOIN TEMPO T2 ON V2.ID_TEMPO = T2.ID_TEMPO AND T2.QUADRIMESTRE = 1
WHERE T2.ANO = T1.ANO + 1; 

--NOVA
--FUNÇÃO NOSSE EMPRESA
CREATE OR REPLACE VIEW RELATORIO_DE_VENDAS_DA_NOSSA_EMPRESA AS
    SELECT 
        NVL(TO_CHAR(T.ANO), 'TOTAL_GERAL') AS ANO,
        NVL(TO_CHAR(T.QUADRIMESTRE), 'TOTAL_ANUAL') AS QUADRIMESTRE,
        SUM(V.QUANTIDADE) AS TOTAL_QUANTIDADE,
        SUM(V.VALOR) AS TOTAL_VALOR
    FROM
        VENDA V
    JOIN 
        TEMPO T ON V.ID_TEMPO = T.ID_TEMPO
    GROUP BY ROLLUP 
        (T.ANO, T.QUADRIMESTRE);


--VIEW EMPRESA CONCORRENTE
CREATE OR REPLACE VIEW CONCORRENCIA_VIEW AS
    SELECT 
        ANO,
        CASE
            WHEN MÊS BETWEEN 1 AND 4 THEN '1'
            WHEN MÊS BETWEEN 5 AND 8 THEN '2'
            ELSE '3'
        END AS QUADRIMESTRE,
        QUANTIDADE AS QUANTIDADE,
        VALOR AS VALOR
    FROM 
        CONCORRENTE;


--FUNÇÃO EMPRESA CONCORRENTE 
CREATE OR REPLACE VIEW RELATORIO_DA_CONCORRENCIA AS
    SELECT 
        NVL(TO_CHAR(ANO), 'TOTAL_GERAL_CONCORRENCIA') AS ANO,
        NVL(TO_CHAR(QUADRIMESTRE), 'TOTAL_ANUAL_CONCORRENCIA') AS QUADRIMESTRE,
        SUM(QUANTIDADE) AS TOTAL_QUANTIDADE,
        SUM(VALOR) AS TOTAL_CONCORRENCIA
    FROM 
        CONCORRENCIA_VIEW
    GROUP BY ROLLUP 
        (ANO, QUADRIMESTRE);

-- SELECT DE ANÁLISE COMPARATIVA
SELECT 
    COALESCE(TO_CHAR(E.ANO), 'TOTAL_ANO') AS ANO, 
    COALESCE(E.QUADRIMESTRE, 'TOTAL_QUAD') AS QUADRIMESTRE, 
    SUM(E.total_quantidade) AS total_nossa_empresa,
    SUM(E.total_valor) AS valor_nossa_empresa,
    SUM(C.total_concorrencia) AS total_concorrencia,
    SUM(C.total_quantidade) AS total_quantidade_concorrencia
FROM RELATORIO_DE_VENDAS_DA_NOSSA_EMPRESA E
JOIN RELATORIO_DA_CONCORRENCIA C 
ON E.ANO = C.ANO AND E.QUADRIMESTRE = C.QUADRIMESTRE
WHERE E.ANO = '2020' AND C.ANO = '2020' 
    OR (E.ANO = '2021' AND C.ANO = '2021')
    OR (E.ANO = '2022' AND C.ANO = '2022')
    OR (E.ANO = '2023' AND C.ANO = '2023')
GROUP BY ROLLUP (E.ANO, E.QUADRIMESTRE);


- ANÁLISE DAS VENDAS DA NOSSA EMPRESA
SELECT 
    COALESCE(TO_CHAR(E.ANO), 'TOTAL') AS ANO, 
    COALESCE(E.QUADRIMESTRE, 'TOTAL') AS QUADRIMESTRE, 
    SUM(E.total_quantidade) AS total_nossa_empresa,
    SUM(E.total_valor) AS valor_nossa_empresa
FROM RELATORIO_DE_VENDAS_DA_NOSSA_EMPRESA E
WHERE E.ANO = '2020'
GROUP BY ROLLUP (E.ANO, E.QUADRIMESTRE);

-- ANÁLISE DAS VENDAS DA CONCORRÊNCIA
SELECT 
    COALESCE(TO_CHAR(C.ANO), 'TOTAL') AS ANO, 
    COALESCE(C.QUADRIMESTRE, 'TOTAL') AS QUADRIMESTRE, 
    SUM(C.total_concorrencia) AS total_concorrencia,
    SUM(C.total_quantidade) AS total_quantidade_concorrencia
FROM RELATORIO_DA_CONCORRENCIA C
WHERE C.ANO = '2023'
GROUP BY ROLLUP (C.ANO, C.QUADRIMESTRE);
