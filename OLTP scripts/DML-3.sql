-- Inserção de 3000 itens de compras realizadas
DECLARE
v_id_compra compra.ID_Compra%TYPE;
v_id_aparelho aparelho.ID_Aparelho%TYPE;
v_quantidade NUMBER;
v_valor NUMBER;
BEGIN
FOR i IN 1..3000 LOOP
-- Seleciona um ID_Compra aleatÃ³rio existente na tabela Compras
SELECT ID_Compra INTO v_id_compra
FROM (SELECT ID_Compra FROM compra ORDER BY DBMS_RANDOM.VALUE)
WHERE ROWNUM = 1;
-- Seleciona um ID_Aparelho aleatÃ³rio existente na tabela Aparelhos
SELECT ID_Aparelho INTO v_id_aparelho
FROM (SELECT ID_Aparelho FROM aparelho ORDER BY DBMS_RANDOM.VALUE)
WHERE ROWNUM = 1;
-- Gera uma quantidade aleatÃ³ria entre 1 e 3
v_quantidade := FLOOR(DBMS_RANDOM.VALUE(1, 4));
-- Gera um valor aleatÃ³rio entre 900.00 e 12000.00
v_valor := DBMS_RANDOM.VALUE(900.00, 12000.00);
-- Insere o item de compra na tabela Carrinho
INSERT INTO carrinho (ID_Carrinho, ID_Compra, ID_Aparelho, Quantidade, Valor)
VALUES (SQ_Carrinho.NEXTVAL, v_id_compra, v_id_aparelho, v_quantidade,
v_valor);
END LOOP;
COMMIT;
END;
