SELECT * FROM MEDICAMENTO;
SELECT * FROM STOCKDISPONIBLE;

CREATE SEQUENCE SE_CODMEDICAMENTO
MINVALUE 1
START WITH 1
INCREMENT BY 1
NOMAXVALUE;

CREATE SEQUENCE SE_CODSTOCK
MINVALUE 1
START WITH 1
INCREMENT BY 1
NOMAXVALUE;

CREATE OR REPLACE PROCEDURE AGREGAR_MEDICAMENTOS
(P_NOMBRE_MED VARCHAR2, P_COMP_MED VARCHAR2,P_TIPO_MED 
VARCHAR2, P_GR_MED NUMBER)

IS
  BEGIN
    INSERT INTO Medicamento(codMedicamento,nombre,componentes,tipo,gramaje)
         VALUES (SE_CODMEDICAMENTO.NEXTVAL,P_NOMBRE_MED,P_COMP_MED, P_TIPO_MED,P_GR_MED);   
END;

BEGIN
AGREGAR_MEDICAMENTOS ('IBUPROFENO','c' ,'dolor' ,200);
END;

CREATE OR REPLACE PROCEDURE AGREGAR_STOCK  
(P_COD_MED NUMBER, P_CANT_MED NUMBER, P_FECHA_VENC DATE)
IS
  BEGIN
      INSERT INTO STOCKDISPONIBLE(CODSTOCK,CANTIDAD,FECVENCIMIENTO,MEDICAMENTO_CODMEDICAMENTO)VALUES (SE_CODSTOCK.NEXTVAL,P_CANT_MED,P_FECHA_VENC,P_COD_MED);   
END;

BEGIN
AGREGAR_STOCK (1,10,'10/05/2017');
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
declare
v_v VARCHAR2(255);
BEGIN
LOGIN_FUNCIONARIO('TODY','TODY',v_v);
END;

create or replace PROCEDURE DESCONTAR_MEDICAMENTO 
   (P_COD NUMBER, P_TOTAL NUMBER)
IS
  BEGIN
 DECLARE
 V_STOCK NUMBER(8):=0;
 V_TOTAL NUMBER(8):=P_TOTAL;
 V_CANTIDAD NUMBER(8):=0;
 V_CANT2 NUMBER(8):=0;
  BEGIN
     FOR V_STOCK IN (SELECT * FROM STOCKDISPONIBLE ORDER BY CODSTOCK ASC)
       LOOP 
       SELECT CANTIDAD INTO V_CANTIDAD FROM STOCKDISPONIBLE WHERE CODSTOCK=V_STOCK.CODSTOCK;
       SELECT CANTIDAD-V_TOTAL INTO V_CANT2 FROM STOCKDISPONIBLE WHERE CODSTOCK=V_STOCK.CODSTOCK;
       V_TOTAL:=V_TOTAL-V_CANTIDAD;
       update STOCKDISPONIBLE set CANTIDAD=V_CANT2
         where CODSTOCK=V_STOCK.CODSTOCK;
       IF V_TOTAL<0 THEN
          EXIT;
       END IF;
       IF V_TOTAL>=0 THEN
         DELETE FROM STOCKDISPONIBLE WHERE CODSTOCK = V_STOCK.CODSTOCK;
       END IF;
     END LOOP;
  END;
END;

declare
v_v VARCHAR2(255);
BEGIN
LOGIN_FUNCIONARIO('TODY','TODY',v_v);
END;

SELECT * FROM MEDICAMENTO;
SELECT * FROM STOCKDISPONIBLE;
SELECT * FROM USUARIO;
SELECT * FROM FUNCIONARIO;

create or replace PROCEDURE comboFu( c_med OUT SYS_REFCURSOR)
IS
BEGIN

  OPEN c_med FOR
 SELECT CODMEDICAMENTO,NOMBRE FROM MEDICAMENTO;

END;

INSERT INTO USUARIO VALUES (1,'eduardo','edu123','funcionario');
INSERT INTO FUNCIONARIO VALUES ('12345678-9','Eduardo','Obreuqe','Gonzalez',30,'523456789','ed.obr@hotmail.com',1);


create or replace PROCEDURE VER_PRESCRIPCION( v_pres OUT SYS_REFCURSOR)
IS
BEGIN
  OPEN v_pres FOR
  SELECT pa.RUT,pa.NOMBRE,pr.DIAGNOSTICO FROM PRESCRIPCION pr JOIN PACIENTE pa ON pr.PACIENTE_RUT=pa.RUT;
  
END;

variable rc refcursor;
exec VER_PRESCRIPCION( :rc );
print rc;

CREATE OR REPLACE PACKAGE PKG_PRESCRIPCION AS
  TYPE T_CURSOR IS REF CURSOR;
  PROCEDURE VER_PRESCRIPCION(V_PRES OUT T_CURSOR);
END PKG_PRESCRIPCION;

CREATE OR REPLACE PACKAGE BODY PKG_PRESCRIPCION AS
 PROCEDURE VER_PRESCRIPCION(V_PRES OUT T_CURSOR)
 IS
 BEGIN
 OPEN V_PRES FOR SELECT pr.CODPRESCRIPCION,pa.RUT,pa.NOMBRE,pr.DIAGNOSTICO FROM PRESCRIPCION pr JOIN PACIENTE pa ON pr.PACIENTE_RUT=pa.RUT;
 END VER_PRESCRIPCION;
END PKG_PRESCRIPCION;


CREATE OR REPLACE PACKAGE PKG_RECETA AS
  TYPE T_CURSOR IS REF CURSOR;
  PROCEDURE VER_RECETA_PRES(V_RECETA OUT T_CURSOR,P_CODPRES IN NUMBER);
END;

CREATE OR REPLACE PACKAGE BODY PKG_RECETA AS
  PROCEDURE VER_RECETA_PRES(V_RECETA OUT T_CURSOR,P_CODPRES IN NUMBER)
  IS
  BEGIN
   OPEN V_RECETA FOR SELECT me.NOMBRE,me.GRAMAJE FROM MEDICAMENTO me JOIN RECETA re ON me.CODMEDICAMENTO=re.MEDICAMENTO_CODMEDICAMENTO WHERE re.PRESCRIPCION_CODPRESCRIPCION=P_CODPRES;
  END VER_RECETA_PRES;
END PKG_RECETA;



