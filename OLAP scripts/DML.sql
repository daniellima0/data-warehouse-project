--LOCALIDADE
DECLARE
    CURSOR cur_Dados IS
        SELECT C.DESCRICAO CIDADE, E.DESCRICAO ESTADO 
        FROM CIDADE C JOIN ESTADO E ON c.id_cidade = e.id_estado;
    reg_Dados cur_Dados%ROWTYPE;
BEGIN
    OPEN cur_Dados;
    
    LOOP
        FETCH cur_Dados INTO reg_Dados;
        
        EXIT WHEN cur_Dados%NOTFOUND;
        
        INSERT INTO LOCALIDADES (ID_LOCAL, ESTADO, CIDADE)
        VALUES (SQ_LOCALIDADE.NEXTVAL, Reg_Dados.ESTADO, Reg_Dados.CIDADE);
    END LOOP;
    
    CLOSE cur_Dados;
    COMMIT;
EXCEPTION
    WHEN OTHERS THEN
        ROLLBACK;
        RAISE;
END;

--APARELOHS
DECLARE
    CURSOR cur_Dados IS
        SELECT M.DESCRICAO MODELO, MA.DESCRICAO MARCA 
        FROM MODELO M JOIN  APARELHO ON m.id_modelo =  aparelho.id_aparelho JOIN MARCA MA ON aparelho.id_aparelho = ma.id_marca;
    reg_Dados cur_Dados%ROWTYPE;
BEGIN
    OPEN cur_Dados;
    
    LOOP
        FETCH cur_Dados INTO reg_Dados;
        
        EXIT WHEN cur_Dados%NOTFOUND;
        
        INSERT INTO APARELHOS (ID_APARELHO, MODELO, MARCA)
        VALUES (SQ_APARELHOS.NEXTVAL, Reg_Dados.MODELO, Reg_Dados.MARCA);
    END LOOP;
    
    CLOSE cur_Dados;
    
    COMMIT;
EXCEPTION
    WHEN OTHERS THEN
        ROLLBACK;
        RAISE;
END;