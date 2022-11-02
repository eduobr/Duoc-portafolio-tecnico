create or replace PACKAGE PKG_COMBO_MED AS
  TYPE T_CURSOR IS REF CURSOR;
  PROCEDURE VER_MEDICAMENTOS(V_MED OUT T_CURSOR, V_FABR OUT T_CURSOR,V_TIPO OUT T_CURSOR,V_GRAM OUT T_CURSOR,P_NOMBRE_MED VARCHAR,P_FABR_MED VARCHAR,P_TIPO_MED VARCHAR);
END PKG_COMBO_MED;

create or replace PACKAGE BODY PKG_COMBO_MED AS
 PROCEDURE VER_MEDICAMENTOS(V_MED OUT T_CURSOR, V_FABR OUT T_CURSOR,V_TIPO OUT T_CURSOR,V_GRAM OUT T_CURSOR,P_NOMBRE_MED VARCHAR,P_FABR_MED VARCHAR,P_TIPO_MED VARCHAR)
 IS
 BEGIN
   OPEN V_MED FOR SELECT NOMBRE FROM MEDICAMENTO GROUP BY NOMBRE;
   OPEN V_FABR FOR SELECT FABRICANTE FROM MEDICAMENTO WHERE NOMBRE=P_NOMBRE_MED GROUP BY FABRICANTE;
   OPEN V_TIPO FOR SELECT TIPO FROM MEDICAMENTO WHERE NOMBRE=P_NOMBRE_MED AND FABRICANTE=P_FABR_MED GROUP BY TIPO;
   OPEN V_GRAM FOR SELECT GRAMAJE FROM MEDICAMENTO WHERE NOMBRE=P_NOMBRE_MED AND FABRICANTE=P_FABR_MED AND TIPO=P_TIPO_MED GROUP BY GRAMAJE;
 END VER_MEDICAMENTOS;
END PKG_COMBO_MED;

create or replace PACKAGE PKG_MEDICAMENTOS_RESERVADOS AS
TYPE T_CURSOR IS REF CURSOR;
 PROCEDURE VER_MED_RESERVADOS(V_RESERV OUT T_CURSOR);
END PKG_MEDICAMENTOS_RESERVADOS;

create or replace PACKAGE BODY PKG_MEDICAMENTOS_RESERVADOS AS
 PROCEDURE VER_MED_RESERVADOS(V_RESERV OUT T_CURSOR)
 IS
 BEGIN
 OPEN V_RESERV FOR SELECT re.PACIENTE_RUT,p.NOMBRE||' '||p.APELLIDOP,me.NOMBRE,re.CANTIDADRESERVADA,re.FECENTREGA FROM RESERVA re 
 JOIN MEDICAMENTO me ON re.MEDICAMENTO_CODMEDICAMENTO=me.CODMEDICAMENTO JOIN PACIENTE p ON re.PACIENTE_RUT=p.RUT;
END VER_MED_RESERVADOS;
END PKG_MEDICAMENTOS_RESERVADOS;

create or replace PACKAGE PKG_PRESCRIPCION AS
  TYPE T_CURSOR IS REF CURSOR;
  PROCEDURE VER_PRESCRIPCION(V_PRES OUT T_CURSOR);
END PKG_PRESCRIPCION;

create or replace PACKAGE BODY PKG_PRESCRIPCION AS
 PROCEDURE VER_PRESCRIPCION(V_PRES OUT T_CURSOR)
 IS
 BEGIN
 OPEN V_PRES FOR SELECT pr.CODPRESCRIPCION,pa.RUT,pa.NOMBRE,pr.DIAGNOSTICO FROM PRESCRIPCION pr JOIN PACIENTE pa ON pr.PACIENTE_RUT=pa.RUT;
 END VER_PRESCRIPCION;
END PKG_PRESCRIPCION;

create or replace PACKAGE PKG_RECETA AS
  TYPE T_CURSOR IS REF CURSOR;
  PROCEDURE VER_RECETA_PRES(V_RECETA OUT T_CURSOR,P_CODPRES IN NUMBER);
END;

create or replace PACKAGE BODY PKG_RECETA AS
  PROCEDURE VER_RECETA_PRES(V_RECETA OUT T_CURSOR,P_CODPRES IN NUMBER)
  IS
  BEGIN
   OPEN V_RECETA FOR SELECT me.NOMBRE,me.GRAMAJE,re.CODRECETA,re.MEDICAMENTO_CODMEDICAMENTO,re.CANTIDAD FROM MEDICAMENTO me JOIN RECETA re ON me.CODMEDICAMENTO=re.MEDICAMENTO_CODMEDICAMENTO 
                WHERE re.PRESCRIPCION_CODPRESCRIPCION=P_CODPRES AND re.ISENTREGADO='NO' AND re.ISRESERVADO='NO';
  END VER_RECETA_PRES;
END PKG_RECETA;

create or replace PROCEDURE AGREGAR_MEDICAMENTOS
(P_NOMBRE_MED VARCHAR2, P_COMP_MED VARCHAR2,P_TIPO_MED 
VARCHAR2, P_GR_MED NUMBER,P_FABR VARCHAR)

IS
  BEGIN
    INSERT INTO Medicamento(codMedicamento,nombre,componentes,tipo,gramaje,fabricante)
         VALUES (SE_CODMEDICAMENTO.NEXTVAL,P_NOMBRE_MED,P_COMP_MED, P_TIPO_MED,P_GR_MED,P_FABR);   
END;

create or replace PROCEDURE AGREGAR_STOCK  
(P_NOM_MED VARCHAR,P_FABRICANTE VARCHAR,P_TIPO VARCHAR, P_GRAMAJE NUMBER,P_CANT_MED NUMBER, P_FECHA_VENC VARCHAR)
IS
  BEGIN
   DECLARE
   V_CODMED NUMBER(8):=0;
   BEGIN
      SELECT CODMEDICAMENTO INTO V_CODMED FROM MEDICAMENTO WHERE NOMBRE=P_NOM_MED AND FABRICANTE=P_FABRICANTE AND TIPO=P_TIPO AND GRAMAJE=P_GRAMAJE;
      INSERT INTO STOCKDISPONIBLE(CODSTOCK,CANTIDAD,FECVENCIMIENTO,MEDICAMENTO_CODMEDICAMENTO)VALUES (SE_CODSTOCK.NEXTVAL,P_CANT_MED,P_FECHA_VENC,V_CODMED);   
   END;
END;

create or replace PROCEDURE DESCONTAR_MEDICAMENTO 
   (P_COD NUMBER, P_TOTAL NUMBER,P_COD_RECETA NUMBER)
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
  BEGIN
     FOR V_STOCK IN (SELECT * FROM STOCKDISPONIBLE WHERE MEDICAMENTO_CODMEDICAMENTO=P_COD ORDER BY CODSTOCK ASC)
       LOOP 
       SELECT CANTIDAD INTO V_SUMA FROM STOCKDISPONIBLE WHERE CODSTOCK=V_STOCK.CODSTOCK;
       V_ACUM:=V_ACUM+V_SUMA;
     END LOOP;
     IF V_ACUM-P_TOTAL>=0 THEN
     FOR V_STOCK IN (SELECT * FROM STOCKDISPONIBLE WHERE MEDICAMENTO_CODMEDICAMENTO=P_COD ORDER BY CODSTOCK ASC)
       LOOP 
       SELECT CANTIDAD INTO V_CANTIDAD FROM STOCKDISPONIBLE WHERE CODSTOCK=V_STOCK.CODSTOCK;
       SELECT CANTIDAD-V_TOTAL INTO V_CANT2 FROM STOCKDISPONIBLE WHERE CODSTOCK=V_STOCK.CODSTOCK;
       V_TOTAL:=V_TOTAL-V_CANTIDAD;
       update STOCKDISPONIBLE set CANTIDAD=V_CANT2
         where CODSTOCK=V_STOCK.CODSTOCK;
      UPDATE RECETA SET ISENTREGADO='SI' WHERE CODRECETA=P_COD_RECETA;
       IF V_TOTAL<0 THEN
          EXIT;
       END IF;
       IF V_TOTAL>=0 THEN
         DELETE FROM STOCKDISPONIBLE WHERE CODSTOCK = V_STOCK.CODSTOCK;
       END IF;
     END LOOP;
    ELSE
      RAISE V_VALOR_NEGATIVO;
    END IF;
    EXCEPTION
    WHEN V_VALOR_NEGATIVO THEN
     DBMS_OUTPUT.PUT_LINE('La cantidad a descontar supera al stock');
  END;
END;

create or replace PROCEDURE ENTREGAR(P_COD NUMBER)
IS
BEGIN
  UPDATE RECETA SET ISENTREGADO='SI' WHERE CODRECETA=P_COD;
END;

create or replace PROCEDURE LOGIN_FUNCIONARIO(P_USER VARCHAR2,P_PASS VARCHAR2, P_NOMBRE OUT VARCHAR2)
AS
BEGIN  
    select fu.NOMBRE||' '||fu.APELLIDOP  INTO P_NOMBRE from FUNCIONARIO fu
    join USUARIO u 
    on fu.USUARIO_IDUSUARIO=u.IDUSUARIO
    where u."user"= P_USER AND u.PASSWORD=P_PASS;
    DBMS_OUTPUT.put_line(p_nombre); 
     
   exception
   when NO_DATA_FOUND then
   p_nombre := '1';
  
  --DBMS_OUTPUT.put_line(p_nombre);
END;

create or replace PROCEDURE MERMAR_MEDICAMENTO
(P_NOM_MED VARCHAR,P_FABRICANTE VARCHAR,P_TIPO VARCHAR, P_GRAMAJE NUMBER,P_TOTAL NUMBER,P_MOTIVO VARCHAR,P_USUARIO VARCHAR)
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
       V_TOTAL:=V_TOTAL-V_CANTIDAD;
       IF V_CANTIDAD-P_TOTAL<=0 THEN
       DBMS_OUTPUT.PUT_LINE('ENTRO A MENOR');
         INSERT INTO MERMA VALUES(SE_CODMERMA.NEXTVAL,P_MOTIVO,V_CANTIDAD,V_STOCK.CODSTOCK,SYSDATE,P_USUARIO);
         ELSE
         INSERT INTO MERMA VALUES(SE_CODMERMA.NEXTVAL,P_MOTIVO,V_TOTAL+V_CANTIDAD,V_STOCK.CODSTOCK,SYSDATE,P_USUARIO);
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
     DBMS_OUTPUT.PUT_LINE('La cantidad a descontar supera al stock');
  END;
END;

create or replace PROCEDURE RESERVAR_MEDICAMENTO(P_CANTIDAD NUMBER,P_COD_MED NUMBER,P_RUT VARCHAR,P_CODREC NUMBER)
IS
BEGIN
 INSERT INTO RESERVA VALUES(SE_CODRESERVA.NEXTVAL,P_CANTIDAD,ADD_MONTHS(SYSDATE,1),P_COD_MED,P_RUT);
 UPDATE RECETA SET ISRESERVADO='SI' WHERE CODRECETA=P_CODREC;
END;