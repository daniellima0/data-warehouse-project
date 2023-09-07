--LOCALIDADE
DECLARE
    CURSOR cur_Dados IS
    
        SELECT 
            C.DESCRICAO CIDADE, E.DESCRICAO ESTADO 
        FROM 
            C##OLTP.CIDADE C JOIN C##OLTP.ESTADO E ON c.id_estado = e.id_estado;
    
    reg_Dados cur_Dados%ROWTYPE;
    
    V_COUNT NUMERIC;
BEGIN
    OPEN cur_Dados;
    
    LOOP
        FETCH cur_Dados INTO reg_Dados;
        
        EXIT WHEN cur_Dados%NOTFOUND;
        
       --VALIDAR SE OS DADOS JÁ EXISTEM
            SELECT 
                COUNT(*)
            INTO
                V_COUNT
            FROM 
                C##OLAP.LOCALIDADE L
            WHERE 
                L.ESTADO = reg_Dados.ESTADO AND L.CIDADE = reg_Dados.CIDADE;
        IF V_COUNT = 0 THEN
            INSERT INTO C##OLAP.LOCALIDADE (ID_LOCAL, ESTADO, CIDADE)
            VALUES (SQ_LOCALIDADE.NEXTVAL, Reg_Dados.ESTADO, Reg_Dados.CIDADE);
        END IF;
    END LOOP;
    
    CLOSE cur_Dados;
    COMMIT;
EXCEPTION
    WHEN DUP_VAL_ON_INDEX THEN
        -- Trate a exceção de violação de unicidade
        DBMS_OUTPUT.PUT_LINE('DADO:' || Reg_Dados.ESTADO || Reg_Dados.CIDADE);
        DBMS_OUTPUT.PUT_LINE('Erro: Valor duplicado encontrado.');
        ROLLBACK;
        RAISE;
END;

--APARELHO
DECLARE
    CURSOR cur_Dados IS
        SELECT M.DESCRICAO MODELO, MA.DESCRICAO MARCA 
        FROM C##OLTP.MARCA MA JOIN C##OLTP.MODELO M ON m.id_marca =  ma.id_marca;
    reg_Dados cur_Dados%ROWTYPE;
    
    V_COUNT NUMERIC;
BEGIN
    OPEN cur_Dados;
    
    LOOP
        FETCH cur_Dados INTO reg_Dados;
        
        EXIT WHEN cur_Dados%NOTFOUND;
        
        --VALIDAR SE OS DADOS JÁ EXISTEM
        SELECT
            COUNT(*)
        INTO 
            V_COUNT
        FROM
            C##OLAP.APARELHO
        WHERE 
            Reg_Dados.MODELO = APARELHO.MODELO AND Reg_Dados.MARCA = APARELHO.MARCA;
        
        IF V_COUNT = 0 THEN
            --INSERIR OS DADOS
            INSERT INTO C##OLAP.APARELHO (ID_APARELHO, MODELO, MARCA)
            VALUES (SQ_APARELHO.NEXTVAL, Reg_Dados.MODELO, Reg_Dados.MARCA);
        END IF;    
    END LOOP;
    
    CLOSE cur_Dados;
    
    COMMIT;
EXCEPTION
    WHEN DUP_VAL_ON_INDEX THEN
        -- Trate a exceção de violação de unicidade
        DBMS_OUTPUT.PUT_LINE('DADO:' || Reg_Dados.modelo || Reg_Dados.marca);
        DBMS_OUTPUT.PUT_LINE('Erro: Valor duplicado encontrado.');
        ROLLBACK;
        RAISE;
END;

--GENERO
INSERT INTO C##OLAP.GENERO (ID_GENERO, GENERO)
        VALUES (SQ_GENERO.NEXTVAL, 'F');
INSERT INTO C##OLAP.GENERO (ID_GENERO, GENERO)
        VALUES (SQ_GENERO.NEXTVAL, 'M');

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
    V_COUNT NUMERIC;
BEGIN
    OPEN cur_Dados;
    
    LOOP
        FETCH cur_Dados INTO reg_Dados;
        
        EXIT WHEN cur_Dados%NOTFOUND;
        
        --Validar se os dados já existem
        SELECT 
            COUNT(*)
        INTO
            V_COUNT
        FROM
            C##OLAP.TEMPO
        WHERE 
            Reg_Dados.ANO = TEMPO.ANO AND Reg_Dados.QUADRIMESTRE = TEMPO.QUADRIMESTRE ;
        IF V_COUNT = 0 THEN
            INSERT INTO C##OLAP.TEMPO (ID_TEMPO, ANO, QUADRIMESTRE)
            VALUES (SQ_TEMPO.NEXTVAL, reg_Dados.ano, reg_Dados.QUADRIMESTRE);
        END IF;    
    END LOOP;
    
    CLOSE cur_Dados;
    
    COMMIT;
EXCEPTION
    WHEN DUP_VAL_ON_INDEX THEN
        -- Trate a exceção de violação de unicidade
        DBMS_OUTPUT.PUT_LINE('DADO:' || Reg_Dados.ano || Reg_Dados.Quadrimestre);
        DBMS_OUTPUT.PUT_LINE('Erro: Valor duplicado encontrado.');
        ROLLBACK;
        RAISE;
END;


--VENDA
DECLARE
    CURSOR C_VENDA IS
        SELECT
            DISTINCT
            EXTRACT(YEAR FROM CO.DATA) AS ANO, 
            CASE 
                WHEN TO_CHAR(DATA, 'MM') IN ('01', '02', '03', '04') THEN 1
                WHEN TO_CHAR(DATA, 'MM') IN ('05', '06', '07', '08') THEN 2
                WHEN TO_CHAR(DATA, 'MM') IN ('09', '10', '11', '12') THEN 3
            END AS QUADRIMESTRE,
            M.DESCRICAO AS MODELO,
            MA.DESCRICAO AS MARCA,
            CI.DESCRICAO AS CIDADE,
            ES.DESCRICAO AS ESTADO,
            CL.SEXO,
            CA.QUANTIDADE,
            CA.VALOR
            
        FROM C##OLTP.APARELHO A
            JOIN C##OLTP.MODELO M ON A.ID_MODELO = M.ID_MODELO
            JOIN C##OLTP.MARCA MA ON M.ID_MARCA = MA.ID_MARCA
            JOIN C##OLTP.CARRINHO CA ON A.ID_APARELHO = CA.ID_APARELHO
            JOIN C##OLTP.COMPRA CO ON CA.ID_COMPRA = CO.ID_COMPRA
            JOIN C##OLTP.CLIENTE CL ON CO.ID_CLIENTE = CL.ID_CLIENTE
            JOIN C##OLTP.CIDADE CI ON CL.ID_CIDADE = CI.ID_CIDADE
            JOIN C##OLTP.ESTADO ES ON CI.ID_ESTADO = ES.ID_ESTADO;
                    
        
    LINHA C_VENDA%ROWTYPE;
    
    CURRENT_ID_APARELHO NUMERIC;
    CURRENT_ID_GENERO NUMERIC;
    CURRENT_ID_TEMPO NUMERIC;
    CURRENT_ID_LOCAL NUMERIC;
    V_COUNT NUMERIC;
BEGIN
    OPEN C_VENDA;
    
    LOOP
        FETCH C_VENDA INTO LINHA;
        EXIT WHEN C_VENDA%NOTFOUND;
        
        
        --SELECT APARELHO
        SELECT
            ID_APARELHO
        INTO 
            CURRENT_ID_APARELHO
        FROM
            C##OLAP.APARELHO
        WHERE 
            LINHA.MODELO = APARELHO.MODELO AND LINHA.MARCA = APARELHO.MARCA;
        
                
        --SELECT TEMPO
        SELECT 
            ID_TEMPO
        INTO
            CURRENT_ID_TEMPO
        FROM
            C##OLAP.TEMPO
        WHERE 
            LINHA.ANO = TEMPO.ANO AND LINHA.QUADRIMESTRE = TEMPO.QUADRIMESTRE;
            
            
            
        --SELECT LOCALIDADE
        SELECT 
            ID_LOCAL
        INTO
            CURRENT_ID_LOCAL
        FROM
            C##OLAP.LOCALIDADE
        WHERE
            LINHA.ESTADO = LOCALIDADE.ESTADO AND LINHA.CIDADE = LOCALIDADE.CIDADE;
            
        
        --SELECT GENERO
        SELECT
            G.ID_GENERO
        INTO
            CURRENT_ID_GENERO
        FROM
            C##OLAP.GENERO G
        WHERE
            LINHA.SEXO = G.GENERO;
            
      
        --VALIDAR SE JÁ EXISTE
        SELECT
            COUNT(*)
        INTO 
            V_COUNT
        FROM
            C##OLAP.VENDA
        WHERE
            CURRENT_ID_APARELHO = VENDA.ID_APARELHO AND 
            CURRENT_ID_LOCAL = VENDA.ID_LOCAL AND
            CURRENT_ID_GENERO = VENDA.ID_GENERO AND
            CURRENT_ID_TEMPO = VENDA.ID_TEMPO;
        
        IF V_COUNT = 0 THEN
            --INSERIR OS DADOS
            INSERT INTO C##OLAP.VENDA (ID_VENDA, ID_APARELHO, ID_LOCAL, ID_GENERO, ID_TEMPO, QUANTIDADE, VALOR)
            VALUES (SQ_VENDA.NEXTVAL, CURRENT_ID_APARELHO, CURRENT_ID_LOCAL, CURRENT_ID_GENERO, CURRENT_ID_TEMPO, '1', LINHA.VALOR);
        ELSE 
            -- Se o registro existe, atualize os valores
            UPDATE 
                C##OLAP.VENDA
            SET 
                QUANTIDADE = QUANTIDADE + 1,
                VALOR = VALOR + LINHA.VALOR
            WHERE 
                CURRENT_ID_APARELHO = VENDA.ID_APARELHO AND 
                CURRENT_ID_LOCAL = VENDA.ID_LOCAL AND
                CURRENT_ID_GENERO = VENDA.ID_GENERO AND
                CURRENT_ID_TEMPO = VENDA.ID_TEMPO;
        END IF;
    END LOOP;
    
    CLOSE C_VENDA;

    COMMIT; 

EXCEPTION
    WHEN DUP_VAL_ON_INDEX THEN
        -- Trate a exceção de violação de unicidade
        DBMS_OUTPUT.PUT_LINE('Erro: Valor duplicado encontrado.');
        ROLLBACK;
        RAISE;
END;
