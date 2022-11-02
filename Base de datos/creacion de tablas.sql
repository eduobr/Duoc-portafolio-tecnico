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
    gramaje        INTEGER NOT NULL ,
    fecVencimiento DATE NOT NULL ,
    cantidad       INTEGER NOT NULL
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
    codMerma    INTEGER NOT NULL ,
    motivo      VARCHAR2 (45) NOT NULL ,
    cantidadMal INTEGER NOT NULL
  ) ;
ALTER TABLE Merma ADD CONSTRAINT Merma_PK PRIMARY KEY ( codMerma ) ;


CREATE TABLE Paciente
  (
    rut                VARCHAR2 (13) NOT NULL ,
    nombre             VARCHAR2 (45) NOT NULL ,
    apellidoP          VARCHAR2 (45) NOT NULL ,
    apellidoM          VARCHAR2 (45) NOT NULL ,
    edad               INTEGER NOT NULL ,
    telefono           VARCHAR2 (15) NOT NULL ,
    email              VARCHAR2 (100) NOT NULL ,
    direccion          VARCHAR2 (85) NOT NULL ,
    Reserva_codReserva INTEGER NOT NULL
  ) ;
ALTER TABLE Paciente ADD CONSTRAINT Paciente_PK PRIMARY KEY ( rut ) ;


CREATE TABLE Preescripcion
  (
    codPreescripcion INTEGER NOT NULL ,
    areaDeSalud      VARCHAR2 (45) NOT NULL ,
    diagnostico      VARCHAR2 (150) NOT NULL ,
    tratamiento      VARCHAR2 (150) NOT NULL ,
    fecAtencion      DATE NOT NULL ,
    Medico_rut       VARCHAR2 (13) NOT NULL ,
    Paciente_rut     VARCHAR2 (13) NOT NULL ,
    Funcionario_rut  VARCHAR2 (13) NOT NULL
  ) ;
ALTER TABLE Preescripcion ADD CONSTRAINT Preescripcion_PK PRIMARY KEY ( codPreescripcion ) ;


CREATE TABLE Receta
  (
    codReceta                      INTEGER NOT NULL ,
    duracionMedicacion             INTEGER NOT NULL ,
    isEntregado                    VARCHAR2 (10) NOT NULL ,
    Preescripcion_codPreescripcion INTEGER NOT NULL ,
    Medicamento_codMedicamento     INTEGER NOT NULL
  ) ;
ALTER TABLE Receta ADD CONSTRAINT Receta_PK PRIMARY KEY ( codReceta ) ;


CREATE TABLE Reserva
  (
    codReserva                 INTEGER NOT NULL ,
    cantidadReservada          INTEGER NOT NULL ,
    fecEntrega                 DATE NOT NULL ,
    Medicamento_codMedicamento INTEGER NOT NULL
  ) ;
ALTER TABLE Reserva ADD CONSTRAINT Reserva_PK PRIMARY KEY ( codReserva ) ;


CREATE TABLE StockDisponible
  (
    codStock                   INTEGER NOT NULL ,
    total                      INTEGER NOT NULL ,
    Medicamento_codMedicamento INTEGER NOT NULL
  ) ;
ALTER TABLE StockDisponible ADD CONSTRAINT StockDisponible_PK PRIMARY KEY ( codStock, Medicamento_codMedicamento ) ;


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


ALTER TABLE Funcionario ADD CONSTRAINT Funcionario_Usuario_FK FOREIGN KEY ( Usuario_idUsuario ) REFERENCES Usuario ( idUsuario ) ;

ALTER TABLE Medico ADD CONSTRAINT Medico_Usuario_FK FOREIGN KEY ( Usuario_idUsuario ) REFERENCES Usuario ( idUsuario ) ;

ALTER TABLE Paciente ADD CONSTRAINT Paciente_Reserva_FK FOREIGN KEY ( Reserva_codReserva ) REFERENCES Reserva ( codReserva ) ;

ALTER TABLE Preescripcion ADD CONSTRAINT Preescripcion_Funcionario_FK FOREIGN KEY ( Funcionario_rut ) REFERENCES Funcionario ( rut ) ;

ALTER TABLE Preescripcion ADD CONSTRAINT Preescripcion_Medico_FK FOREIGN KEY ( Medico_rut ) REFERENCES Medico ( rut ) ;

ALTER TABLE Preescripcion ADD CONSTRAINT Preescripcion_Paciente_FK FOREIGN KEY ( Paciente_rut ) REFERENCES Paciente ( rut ) ;

ALTER TABLE Receta ADD CONSTRAINT Receta_Medicamento_FK FOREIGN KEY ( Medicamento_codMedicamento ) REFERENCES Medicamento ( codMedicamento ) ;

ALTER TABLE Receta ADD CONSTRAINT Receta_Preescripcion_FK FOREIGN KEY ( Preescripcion_codPreescripcion ) REFERENCES Preescripcion ( codPreescripcion ) ;

ALTER TABLE Reserva ADD CONSTRAINT Reserva_Medicamento_FK FOREIGN KEY ( Medicamento_codMedicamento ) REFERENCES Medicamento ( codMedicamento ) ;

ALTER TABLE StockDisponible ADD CONSTRAINT StockDisponible_Medicamento_FK FOREIGN KEY ( Medicamento_codMedicamento ) REFERENCES Medicamento ( codMedicamento ) ;

ALTER TABLE Tutor ADD CONSTRAINT Tutor_Paciente_FK FOREIGN KEY ( Paciente_rut ) REFERENCES Paciente ( rut ) ;

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