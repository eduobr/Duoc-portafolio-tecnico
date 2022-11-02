sELECT * FROM MEDICAMENTO;
SELECT * FROM STOCKDISPONIBLE;
SELECT * FROM Usuario;
SELECT * FROM FUNCIONARIO;

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

create or replace procedure login
(
p_user USUARIO."user"%type,
p_password USUARIO.PASSWORD%type
)as
   
   begin
           
   if v_suma_users=0 then
         p_mensaje:='Usuario o Contraseña Invalido';
   elsif v_suma_users=1 then
         p_mensaje:='Bienvenido ' || P_USER ;
   else
         p_mensaje:='Error Del Sistema.';
   end if;
 
end;

INSERT INTO USUARIO VALUES(1,'FUNCIONARIOUNO','123','Funcionario');
INSERT INTO USUARIO VALUES(2,'FUNCIONARIOdos','123','Funcionario');
INSERT INTO FUNCIONARIO VALUES('1234567890','FUghghg','apell1','apell2',22,'telefon','correo@correo.cl',1);



create or replace PROCEDURE LOGIN2
(P_USER USUARIO."user"%type,P_PASS USUARIO.PASSWORD%type, P_NOMBRE OUT VARCHAR2)
AS
BEGIN
   
    select me.NOMBRE||' '||me.APELLIDOP  INTO P_NOMBRE from FUNCIONARIO me
    join USUARIO u 
    on me.USUARIO_IDUSUARIO=u.IDUSUARIO
    where u."user"= P_USER AND u.PASSWORD=P_PASS;
    DBMS_OUTPUT.PUT_LINE(P_NOMBRE);
  
   exception
   when NO_DATA_FOUND then
   P_NOMBRE := '1';

DBMS_OUTPUT.put_line(P_NOMBRE);
END;


declare
v_v VARCHAR2(255);
BEGIN
LOGIN2('FUNCIONARIoooOUNO','123',v_v);
END;
v_v VARCHAR2(255);
EXECUTE LOGIN2('FUNCIONARIOUNO','123',);

create or replace PROCEDURE LOGIN3 ( 
p_user USUARIO."user"%type,
p_password USUARIO.PASSWORD%type,
p_validacion OUT NUMBER 
) IS 
verificar_pass USUARIO.PASSWORD%type :='VACIO'; 
verificar_usu USUARIO."user"%type:='NADA';
BEGIN 

 SELECT "user",PASSWORD INTO verificar_usu, verificar_pass
 FROM USUARIO 
 WHERE "user" = p_user and PASSWORD = P_PASSWORD;  
 
 IF (verificar_usu=p_user AND VERIFICAR_PASS=P_PASSWORD) THEN 
  p_validacion:=1; 
 ELSE 
  p_validacion:=0; 
 END IF; 

EXCEPTION 
  WHEN OTHERS THEN 
  RAISE_APPLICATION_ERROR(-20001,'Datos Incorrectos'); 

END; 


CREATE OR REPLACE PROCEDURE LOGIN4(p_user IN VARCHAR2,p_pass IN VARCHAR2
) IS
lv_check_txt    VARCHAR2(30) := 'INVALID';
lv_fullname_txt VARCHAR2(88);
       CURSOR MEMBER_CUR IS
          select me.NOMBRE,me.APELLIDOP,u."user",u.PASSWORD from FUNCIONARIO me
    join USUARIO u 
    on me.USUARIO_IDUSUARIO=u.IDUSUARIO
    where u."user"= P_USER AND u.PASSWORD=P_PASS;
   BEGIN
      FOR F_CURSOR IN MEMBER_CUR LOOP
         IF p_user = F_CURSOR."user" AND p_pass = F_CURSOR.PASSWORD THEN
            lv_fullname_txt := F_CURSOR.NOMBRE || ' ' || F_CURSOR.APELLIDOP;
            dbms_output.put_line(lv_fullname_txt);
         ELSE
            dbms_output.put_line(lv_check_txt);
         END IF;
      END LOOP;
   END LOGIN4;
   
   
CREATE OR REPLACE PROCEDURE LOGIN42(p_user IN VARCHAR2,p_pass IN VARCHAR2,P_NOMBRE OUT VARCHAR2
) IS
lv_check_txt    VARCHAR2(7) := 'INVALID';
lv_fullname_txt VARCHAR2(88);
       CURSOR MEMBER_CUR IS
          select me.NOMBRE,me.APELLIDOP,u."user",u.PASSWORD from FUNCIONARIO me
    join USUARIO u 
    on me.USUARIO_IDUSUARIO=u.IDUSUARIO
    where u."user"= P_USER AND u.PASSWORD=P_PASS;
   BEGIN
      FOR F_CURSOR IN MEMBER_CUR LOOP
         IF (p_user = F_CURSOR."user" AND p_pass = F_CURSOR.PASSWORD) THEN
            lv_fullname_txt := F_CURSOR.NOMBRE || ' ' || F_CURSOR.APELLIDOP;
            
            P_NOMBRE:= lv_fullname_txt;
            dbms_output.put_line(P_NOMBRE);
         ELSE
            
            P_NOMBRE:=lv_check_txt ;
            dbms_output.put_line(P_NOMBRE);
         END IF;
      END LOOP;
   END LOGIN42;
   declare
v_v VARCHAR2(55);
   begin LOGIN42('FUNCIONARIOUNO', '123',v_v); end;