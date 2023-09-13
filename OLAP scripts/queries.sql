-- a) Visualizar a quantidade e o valor comprado pelos modelos e/ou marcas dos seus produtos
SELECT A.MARCA, A.MODELO, SUM(V.QUANTIDADE) AS QUANTIDADE_TOTAL, SUM(V.VALOR) AS VALOR_TOTAL
FROM VENDA V
JOIN APARELHO A ON V.ID_APARELHO = A.ID_APARELHO
GROUP BY ROLLUP(A.MARCA, A.MODELO);

-- b) Visualizar a quantidade e o valor comprado dos seus produtos, geograficamente, pelas cidades e/ou estados
SELECT L.ESTADO, L.CIDADE, SUM(V.QUANTIDADE) AS QUANTIDADE_TOTAL, SUM(V.VALOR) AS VALOR_TOTAL
FROM VENDA V
JOIN LOCALIDADE L ON V.ID_LOCAL = L.ID_LOCAL
GROUP BY ROLLUP(L.ESTADO, L.CIDADE);

-- c) Visualizar a quantidade e o valor comprado dos seus produtos, por quadrimestre e/ou por ano
SELECT T.QUADRIMESTRE, T.ANO, SUM(V.QUANTIDADE) AS QUANTIDADE_TOTAL, SUM(V.VALOR) AS VALOR_TOTAL
FROM VENDA V
JOIN TEMPO T ON V.ID_TEMPO = T.ID_TEMPO
GROUP BY ROLLUP(T.QUADRIMESTRE, T.ANO);

-- d) Visualizar a quantidade e o valor comprado dos seus produtos, por gênero
SELECT G.GENERO, SUM(V.QUANTIDADE) AS QUANTIDADE_TOTAL, SUM(V.VALOR) AS VALOR_TOTAL
FROM VENDA V
JOIN GENERO G ON V.ID_GENERO = G.ID_GENERO
GROUP BY G.GENERO;

-- e) Visualizar o ranking dos smartphones mais vendidos em um determinado ano
SELECT A.MARCA, A.MODELO, SUM(V.QUANTIDADE) AS QUANTIDADE_TOTAL
FROM VENDA V
JOIN APARELHO A ON V.ID_APARELHO = A.ID_APARELHO
GROUP BY ROLLUP(A.MARCA, A.MODELO)
ORDER BY MARCA, MODELO;

-- f) Visualizar o ranking dos smartphones com maior valor de venda por estado, em um determinado ano


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


-- i) Visualizar a diferença entre a quantidade e os valores vendidos entre a nossa empresa e a concorrente por quadrimestre e/ou ano