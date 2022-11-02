-- Generado por Oracle SQL Developer Data Modeler 4.1.5.907
--   en:        2017-05-09 11:11:28 CLST
--   sitio:      Oracle Database 11g
--   tipo:      Oracle Database 11g




CREATE TABLE Atencion
  (
    id_atencion  INTEGER NOT NULL ,
    box          INTEGER NOT NULL ,
    fecAtencion  DATE NOT NULL ,
    Paciente_rut VARCHAR2 (13) NOT NULL ,
    Medico_rut   VARCHAR2 (13) NOT NULL
  ) ;
ALTER TABLE Atencion ADD CONSTRAINT Atencion_PK PRIMARY KEY ( id_atencion ) ;


CREATE TABLE Funcionario
  (
    rut               VARCHAR2 (13) NOT NULL ,
    nombre            VARCHAR2 (45) NOT NULL ,
    apellidoP         VARCHAR2 (45) NOT NULL ,
    apellidoM         VARCHAR2 (45) NOT NULL ,
    edad              INTEGER NOT NULL ,
    telefono          VARCHAR2 (15) NOT NULL ,
    email             VARCHAR2 (100) ,
    Usuario_idUsuario INTEGER NOT NULL
  ) ;
CREATE UNIQUE INDEX Funcionario__IDX ON Funcionario
  (
    Usuario_idUsuario ASC
  )
  ;
ALTER TABLE Funcionario ADD CONSTRAINT Funcionario_PK PRIMARY KEY ( rut ) ;


CREATE TABLE Medicamento
  (
    codMedicamento INTEGER NOT NULL ,
    nombre         VARCHAR2 (45) NOT NULL ,
    componentes    VARCHAR2 (150) NOT NULL ,
    tipo           VARCHAR2 (45) NOT NULL ,
    gramaje        INTEGER NOT NULL
  ) ;
ALTER TABLE Medicamento ADD CONSTRAINT Medicamento_PK PRIMARY KEY ( codMedicamento ) ;


CREATE TABLE Medico
  (
    rut               VARCHAR2 (13) NOT NULL ,
    nombre            VARCHAR2 (45) NOT NULL ,
    apellidoP         VARCHAR2 (45) NOT NULL ,
    apellidoM         VARCHAR2 (45) NOT NULL ,
    edad              INTEGER NOT NULL ,
    telefono          VARCHAR2 (15) NOT NULL ,
    especialidad      VARCHAR2 (45) NOT NULL ,
    Usuario_idUsuario INTEGER NOT NULL
  ) ;
CREATE UNIQUE INDEX Medico__IDX ON Medico
  (
    Usuario_idUsuario ASC
  )
  ;
ALTER TABLE Medico ADD CONSTRAINT Medico_PK PRIMARY KEY ( rut ) ;


CREATE TABLE Merma
  (
    codMerma                 INTEGER NOT NULL ,
    motivo                   VARCHAR2 (45) NOT NULL ,
    cantidadMal              INTEGER NOT NULL ,
    StockDisponible_codStock INTEGER NOT NULL
  ) ;
ALTER TABLE Merma ADD CONSTRAINT Merma_PK PRIMARY KEY ( codMerma ) ;


CREATE TABLE Paciente
  (
    rut       VARCHAR2 (13) NOT NULL ,
    nombre    VARCHAR2 (45) NOT NULL ,
    apellidoP VARCHAR2 (45) NOT NULL ,
    apellidoM VARCHAR2 (45) NOT NULL ,
    edad      INTEGER NOT NULL ,
    telefono  VARCHAR2 (15) NOT NULL ,
    email     VARCHAR2 (100) NOT NULL ,
    direccion VARCHAR2 (85) NOT NULL
  ) ;
ALTER TABLE Paciente ADD CONSTRAINT Paciente_PK PRIMARY KEY ( rut ) ;


CREATE TABLE Prescripcion
  (
    codPrescripcion INTEGER NOT NULL ,
    areaDeSalud     VARCHAR2 (45) NOT NULL ,
    diagnostico     VARCHAR2 (150) NOT NULL ,
    tratamiento     VARCHAR2 (150) NOT NULL ,
    fecAtencion     DATE NOT NULL ,
    Medico_rut      VARCHAR2 (13) NOT NULL ,
    Paciente_rut    VARCHAR2 (13) NOT NULL
  ) ;
ALTER TABLE Prescripcion ADD CONSTRAINT Prescripcion_PK PRIMARY KEY ( codPrescripcion ) ;


CREATE TABLE Receta
  (
    codReceta                    INTEGER NOT NULL ,
    duracionMedicacion           INTEGER NOT NULL ,
    cantidad                     INTEGER NOT NULL ,
    isEntregado                  VARCHAR2 (10) NOT NULL ,
    Prescripcion_codPrescripcion INTEGER NOT NULL ,
    Medicamento_codMedicamento   INTEGER NOT NULL
  ) ;
ALTER TABLE Receta ADD CONSTRAINT Receta_PK PRIMARY KEY ( codReceta ) ;


CREATE TABLE Reserva
  (
    codReserva                 INTEGER NOT NULL ,
    cantidadReservada          INTEGER NOT NULL ,
    fecEntrega                 DATE NOT NULL ,
    Medicamento_codMedicamento INTEGER NOT NULL ,
    Paciente_rut               VARCHAR2 (13) NOT NULL
  ) ;
ALTER TABLE Reserva ADD CONSTRAINT Reserva_PK PRIMARY KEY ( codReserva ) ;


CREATE TABLE StockDisponible
  (
    codStock                   INTEGER NOT NULL ,
    cantidad                   INTEGER NOT NULL ,
    fecVencimiento             DATE NOT NULL ,
    Medicamento_codMedicamento INTEGER NOT NULL
  ) ;
ALTER TABLE StockDisponible ADD CONSTRAINT StockDisponible_PK PRIMARY KEY ( codStock ) ;


CREATE TABLE Tutor
  (
    rut          VARCHAR2 (13) NOT NULL ,
    nombre       VARCHAR2 (45) NOT NULL ,
    apellidoPa   VARCHAR2 (45) NOT NULL ,
    apellidoMa   VARCHAR2 (45) NOT NULL ,
    edad         INTEGER NOT NULL ,
    telefono     VARCHAR2 (45) NOT NULL ,
    email        VARCHAR2 (100) NOT NULL ,
    direccion    VARCHAR2 (85) NOT NULL ,
    Paciente_rut VARCHAR2 (13) NOT NULL
  ) ;
CREATE UNIQUE INDEX Tutor__IDX ON Tutor
  (
    Paciente_rut ASC
  )
  ;
ALTER TABLE Tutor ADD CONSTRAINT Tutor_PK PRIMARY KEY ( rut ) ;


CREATE TABLE Usuario
  (
    idUsuario   INTEGER NOT NULL ,
    "user"      VARCHAR2 (45) NOT NULL ,
    password    VARCHAR2 (45) NOT NULL ,
    tipoUsuario VARCHAR2 (45) NOT NULL
  ) ;
ALTER TABLE Usuario ADD CONSTRAINT Usuario_PK PRIMARY KEY ( idUsuario ) ;


ALTER TABLE Atencion ADD CONSTRAINT Atencion_Medico_FK FOREIGN KEY ( Medico_rut ) REFERENCES Medico ( rut ) ;

ALTER TABLE Atencion ADD CONSTRAINT Atencion_Paciente_FK FOREIGN KEY ( Paciente_rut ) REFERENCES Paciente ( rut ) ;

ALTER TABLE Funcionario ADD CONSTRAINT Funcionario_Usuario_FK FOREIGN KEY ( Usuario_idUsuario ) REFERENCES Usuario ( idUsuario ) ;

ALTER TABLE Medico ADD CONSTRAINT Medico_Usuario_FK FOREIGN KEY ( Usuario_idUsuario ) REFERENCES Usuario ( idUsuario ) ;

ALTER TABLE Merma ADD CONSTRAINT Merma_StockDisponible_FK FOREIGN KEY ( StockDisponible_codStock ) REFERENCES StockDisponible ( codStock ) ;

ALTER TABLE Prescripcion ADD CONSTRAINT Prescripcion_Medico_FK FOREIGN KEY ( Medico_rut ) REFERENCES Medico ( rut ) ;

ALTER TABLE Prescripcion ADD CONSTRAINT Prescripcion_Paciente_FK FOREIGN KEY ( Paciente_rut ) REFERENCES Paciente ( rut ) ;

ALTER TABLE Receta ADD CONSTRAINT Receta_Medicamento_FK FOREIGN KEY ( Medicamento_codMedicamento ) REFERENCES Medicamento ( codMedicamento ) ;

ALTER TABLE Receta ADD CONSTRAINT Receta_Prescripcion_FK FOREIGN KEY ( Prescripcion_codPrescripcion ) REFERENCES Prescripcion ( codPrescripcion ) ;

ALTER TABLE Reserva ADD CONSTRAINT Reserva_Medicamento_FK FOREIGN KEY ( Medicamento_codMedicamento ) REFERENCES Medicamento ( codMedicamento ) ;

ALTER TABLE Reserva ADD CONSTRAINT Reserva_Paciente_FK FOREIGN KEY ( Paciente_rut ) REFERENCES Paciente ( rut ) ;

ALTER TABLE StockDisponible ADD CONSTRAINT StockDisponible_Medicamento_FK FOREIGN KEY ( Medicamento_codMedicamento ) REFERENCES Medicamento ( codMedicamento ) ;

ALTER TABLE Tutor ADD CONSTRAINT Tutor_Paciente_FK FOREIGN KEY ( Paciente_rut ) REFERENCES Paciente ( rut ) ;


-- Informe de Resumen de Oracle SQL Developer Data Modeler: 
-- 
-- CREATE TABLE                            12
-- CREATE INDEX                             3
-- ALTER TABLE                             25
-- CREATE VIEW                              0
-- ALTER VIEW                               0
-- CREATE PACKAGE                           0
-- CREATE PACKAGE BODY                      0
-- CREATE PROCEDURE                         0
-- CREATE FUNCTION                          0
-- CREATE TRIGGER                           0
-- ALTER TRIGGER                            0
-- CREATE COLLECTION TYPE                   0
-- CREATE STRUCTURED TYPE                   0
-- CREATE STRUCTURED TYPE BODY              0
-- CREATE CLUSTER                           0
-- CREATE CONTEXT                           0
-- CREATE DATABASE                          0
-- CREATE DIMENSION                         0
-- CREATE DIRECTORY                         0
-- CREATE DISK GROUP                        0
-- CREATE ROLE                              0
-- CREATE ROLLBACK SEGMENT                  0
-- CREATE SEQUENCE                          0
-- CREATE MATERIALIZED VIEW                 0
-- CREATE SYNONYM                           0
-- CREATE TABLESPACE                        0
-- CREATE USER                              0
-- 
-- DROP TABLESPACE                          0
-- DROP DATABASE                            0
-- 
-- REDACTION POLICY                         0
-- 
-- ORDS DROP SCHEMA                         0
-- ORDS ENABLE SCHEMA                       0
-- ORDS ENABLE OBJECT                       0
-- 
-- ERRORS                                   0
-- WARNINGS                                 0
