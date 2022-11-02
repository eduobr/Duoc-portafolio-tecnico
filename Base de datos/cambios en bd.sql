 create or replace PROCEDURE MERMAR_MEDICAMENTO
(P_NOM_MED VARCHAR,P_FABRICANTE VARCHAR,P_TIPO VARCHAR, P_GRAMAJE NUMBER,P_TOTAL NUMBER,P_MOTIVO VARCHAR,P_USUARIO VARCHAR, P_RESULTADO OUT VARCHAR)
IS
BEGIN
 DECLARE
 V_STOCK NUMBER(8):=0;
 V_TOTAL NUMBER(8):=P_TOTAL;
 V_CANTIDAD NUMBER(8):=0;
 V_CANT2 NUMBER(8):=0;
 V_SUMA NUMBER(8):=0;
 V_ACUM NUMBER(8):=0;
 V_VALOR_NEGATIVO EXCEPTION;
 V_CODMED NUMBER(8):=0;
  BEGIN
    SELECT CODMEDICAMENTO INTO V_CODMED FROM MEDICAMENTO WHERE NOMBRE=P_NOM_MED AND FABRICANTE=P_FABRICANTE AND TIPO=P_TIPO AND GRAMAJE=P_GRAMAJE;
     FOR V_STOCK IN (SELECT * FROM STOCKDISPONIBLE WHERE MEDICAMENTO_CODMEDICAMENTO=V_CODMED ORDER BY CODSTOCK ASC)
       LOOP 
       SELECT CANTIDAD INTO V_SUMA FROM STOCKDISPONIBLE WHERE CODSTOCK=V_STOCK.CODSTOCK;
       V_ACUM:=V_ACUM+V_SUMA;
     END LOOP;
     IF V_ACUM-P_TOTAL>=0 THEN
     
     FOR V_STOCK IN (SELECT * FROM STOCKDISPONIBLE WHERE MEDICAMENTO_CODMEDICAMENTO=V_CODMED ORDER BY CODSTOCK ASC)
       LOOP 
       SELECT CANTIDAD INTO V_CANTIDAD FROM STOCKDISPONIBLE WHERE CODSTOCK=V_STOCK.CODSTOCK;
       SELECT CANTIDAD-V_TOTAL INTO V_CANT2 FROM STOCKDISPONIBLE WHERE CODSTOCK=V_STOCK.CODSTOCK;
       V_TOTAL:=V_TOTAL-V_CANTIDAD;
      IF V_CANT2<0 THEN
       update STOCKDISPONIBLE set CANTIDAD=0
         where CODSTOCK=V_STOCK.CODSTOCK;
      ELSE
       update STOCKDISPONIBLE set CANTIDAD=V_CANT2
         where CODSTOCK=V_STOCK.CODSTOCK;
      END IF;
      IF V_CANTIDAD <> 0 THEN
       IF V_CANTIDAD-P_TOTAL<=0 THEN
       --DBMS_OUTPUT.PUT_LINE('ENTRO A MENOR');
         INSERT INTO MERMA VALUES(SE_CODMERMA.NEXTVAL,P_MOTIVO,V_CANTIDAD,V_STOCK.CODSTOCK,SYSDATE,P_USUARIO);
         ELSE
         INSERT INTO MERMA VALUES(SE_CODMERMA.NEXTVAL,P_MOTIVO,V_TOTAL+V_CANTIDAD,V_STOCK.CODSTOCK,SYSDATE,P_USUARIO);
       END IF;
       END IF;
       IF V_TOTAL<=0 THEN
          EXIT;
       END IF;
     END LOOP;
    ELSE
      RAISE V_VALOR_NEGATIVO;
    END IF;
    EXCEPTION
    WHEN V_VALOR_NEGATIVO THEN
     P_RESULTADO:='1';
     --DBMS_OUTPUT.PUT_LINE('La cantidad a descontar supera al stock');
  END;
END;