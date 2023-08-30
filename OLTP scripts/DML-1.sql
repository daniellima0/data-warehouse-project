-- Inserção de 10000 aparelhos de celular
BEGIN FOR i IN 1..10000 LOOP
INSERT INTO
    aparelho (ID_Aparelho, Numero_Serie, ID_Modelo)
VALUES
    (
        i,
        DBMS_RANDOM.STRING('U', 10),
        TRUNC(DBMS_RANDOM.VALUE(1, 31))
    );

END LOOP;

COMMIT;

END;