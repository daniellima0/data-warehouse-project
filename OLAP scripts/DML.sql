--LOCALIDADE
DECLARE
    CURSOR cur_Dados IS
        SELECT C.DESCRICAO CIDADE, E.DESCRICAO ESTADO 
        FROM C##OLTP.CIDADE C JOIN C##OLTP.ESTADO E ON c.id_cidade = e.id_estado;
    reg_Dados cur_Dados%ROWTYPE;
BEGIN
    OPEN cur_Dados;
    
    LOOP
        FETCH cur_Dados INTO reg_Dados;
        
        EXIT WHEN cur_Dados%NOTFOUND;
        
        INSERT INTO LOCALIDADE (ID_LOCAL, ESTADO, CIDADE)
        VALUES (SQ_LOCALIDADE.NEXTVAL, Reg_Dados.ESTADO, Reg_Dados.CIDADE);
    END LOOP;
    
    CLOSE cur_Dados;
    COMMIT;
EXCEPTION
    WHEN OTHERS THEN
        ROLLBACK;
        RAISE;
END;

--APARELHO
DECLARE
    CURSOR cur_Dados IS
        SELECT M.DESCRICAO MODELO, MA.DESCRICAO MARCA 
        FROM C##OLTP.MODELO M JOIN C##OLTP.APARELHO ON m.id_modelo =  aparelho.id_aparelho JOIN C##OLTP.MARCA MA ON aparelho.id_aparelho = ma.id_marca;
    reg_Dados cur_Dados%ROWTYPE;
BEGIN
    OPEN cur_Dados;
    
    LOOP
        FETCH cur_Dados INTO reg_Dados;
        
        EXIT WHEN cur_Dados%NOTFOUND;
        
        INSERT INTO APARELHO (ID_APARELHO, MODELO, MARCA)
        VALUES (SQ_APARELHO.NEXTVAL, Reg_Dados.MODELO, Reg_Dados.MARCA);
    END LOOP;
    
    CLOSE cur_Dados;
    
    COMMIT;
EXCEPTION
    WHEN OTHERS THEN
        ROLLBACK;
        RAISE;
END;

--GENERO
INSERT INTO GENERO (ID_GENERO, GENERO)
        VALUES (SQ_GENERO.NEXTVAL, 'F');

--TEMPO
DECLARE
    CURSOR cur_Dados IS
        SELECT DISTINCT
            EXTRACT(YEAR FROM C.DATA) AS ANO, 
            CASE 
                WHEN TO_CHAR(DATA, 'MM') IN ('01', '02', '03', '04') THEN 1
                WHEN TO_CHAR(DATA, 'MM') IN ('05', '06', '07', '08') THEN 2
                WHEN TO_CHAR(DATA, 'MM') IN ('09', '10', '11', '12') THEN 3
            END AS QUADRIMESTRE
        FROM C##OLTP.COMPRA C;
    reg_Dados cur_Dados%ROWTYPE;
    QUADRIMESTRE NUMBER;
BEGIN
    OPEN cur_Dados;
    
    LOOP
        FETCH cur_Dados INTO reg_Dados;
        
        EXIT WHEN cur_Dados%NOTFOUND;
        
        INSERT INTO TEMPO (ID_TEMPO, ANO, QUADRIMESTRE)
        VALUES (SQ_TEMPO.NEXTVAL, reg_Dados.ano, reg_Dados.QUADRIMESTRE);
    END LOOP;
    
    CLOSE cur_Dados;
    
    COMMIT;
EXCEPTION
    WHEN OTHERS THEN
        ROLLBACK;
        RAISE;
END;
