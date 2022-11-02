SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0;
SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='TRADITIONAL,ALLOW_INVALID_DATES';

CREATE SCHEMA IF NOT EXISTS `mydb` DEFAULT CHARACTER SET utf8 COLLATE utf8_general_ci ;
USE `mydb` ;

-- -----------------------------------------------------
-- Table `mydb`.`reserva`
-- -----------------------------------------------------
CREATE  TABLE IF NOT EXISTS `mydb`.`reserva` (
  `idreserva` INT NOT NULL AUTO_INCREMENT ,
  `nombreMedicamento` VARCHAR(45) NOT NULL ,
  `cantidad` INT NOT NULL ,
  `fecEntrega` DATE NOT NULL ,
  `funcionario` VARCHAR(45) NOT NULL ,
  PRIMARY KEY (`idreserva`) )
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `mydb`.`Funcionario`
-- -----------------------------------------------------
CREATE  TABLE IF NOT EXISTS `mydb`.`Funcionario` (
  `rut` VARCHAR(20) NOT NULL ,
  `nombre` VARCHAR(45) NOT NULL ,
  `apellidoP` VARCHAR(45) NOT NULL ,
  `apellidoM` VARCHAR(45) NOT NULL ,
  `edad` INT NOT NULL ,
  `telefono` VARCHAR(45) NOT NULL ,
  `email` VARCHAR(100) NOT NULL ,
  `usuario` VARCHAR(45) NOT NULL ,
  `reserva_idreserva` INT NOT NULL ,
  PRIMARY KEY (`rut`, `reserva_idreserva`) ,
  INDEX `fk_Funcionario_reserva1_idx` (`reserva_idreserva` ASC) ,
  CONSTRAINT `fk_Funcionario_reserva1`
    FOREIGN KEY (`reserva_idreserva` )
    REFERENCES `mydb`.`reserva` (`idreserva` )
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
DEFAULT CHARACTER SET = macce;


-- -----------------------------------------------------
-- Table `mydb`.`Usuario`
-- -----------------------------------------------------
CREATE  TABLE IF NOT EXISTS `mydb`.`Usuario` (
  `idUsuario` INT NOT NULL AUTO_INCREMENT ,
  `user` VARCHAR(45) NULL ,
  `pass` VARCHAR(45) NULL ,
  `tipoUsuario` VARCHAR(45) NULL ,
  `Funcionario_rut` VARCHAR(20) NOT NULL ,
  PRIMARY KEY (`idUsuario`, `Funcionario_rut`) ,
  INDEX `fk_Usuario_Funcionario1_idx` (`Funcionario_rut` ASC) ,
  CONSTRAINT `fk_Usuario_Funcionario1`
    FOREIGN KEY (`Funcionario_rut` )
    REFERENCES `mydb`.`Funcionario` (`rut` )
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `mydb`.`Medico`
-- -----------------------------------------------------
CREATE  TABLE IF NOT EXISTS `mydb`.`Medico` (
  `rut` VARCHAR(20) NOT NULL ,
  `nombre` VARCHAR(45) NOT NULL ,
  `apellidoP` VARCHAR(45) NOT NULL ,
  `apellidoM` VARCHAR(45) NOT NULL ,
  `edad` INT NOT NULL ,
  `telefono` VARCHAR(45) NOT NULL ,
  `email` VARCHAR(100) NOT NULL ,
  `usuario` VARCHAR(45) NOT NULL ,
  `medicamento` INT NOT NULL ,
  `Usuario_idUsuario` INT NOT NULL ,
  PRIMARY KEY (`rut`, `Usuario_idUsuario`) ,
  INDEX `fk_Medico_Usuario1_idx` (`Usuario_idUsuario` ASC) ,
  CONSTRAINT `fk_Medico_Usuario1`
    FOREIGN KEY (`Usuario_idUsuario` )
    REFERENCES `mydb`.`Usuario` (`idUsuario` )
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
DEFAULT CHARACTER SET = macce;


-- -----------------------------------------------------
-- Table `mydb`.`Medicamento`
-- -----------------------------------------------------
CREATE  TABLE IF NOT EXISTS `mydb`.`Medicamento` (
  `codigo` INT NOT NULL AUTO_INCREMENT ,
  `descripcion` VARCHAR(45) NOT NULL ,
  `fabricante` VARCHAR(45) NOT NULL ,
  `componentes` VARCHAR(45) NOT NULL ,
  `cantidad` INT NOT NULL ,
  `gramaje` INT NOT NULL ,
  `fecVencimiento` DATE NOT NULL ,
  `tipo` VARCHAR(45) NOT NULL ,
  `Funcionario_rut` VARCHAR(20) NOT NULL ,
  PRIMARY KEY (`codigo`, `Funcionario_rut`) ,
  INDEX `fk_Medicamento_Funcionario1_idx` (`Funcionario_rut` ASC) ,
  CONSTRAINT `fk_Medicamento_Funcionario1`
    FOREIGN KEY (`Funcionario_rut` )
    REFERENCES `mydb`.`Funcionario` (`rut` )
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `mydb`.`email`
-- -----------------------------------------------------
CREATE  TABLE IF NOT EXISTS `mydb`.`email` (
  `idemail` INT NOT NULL AUTO_INCREMENT ,
  `correo` VARCHAR(45) NOT NULL ,
  `nombrePaciente` VARCHAR(45) NOT NULL ,
  `asunto` VARCHAR(45) NOT NULL ,
  `descripcion` VARCHAR(45) NOT NULL ,
  `fecEnvio` DATE NOT NULL ,
  PRIMARY KEY (`idemail`) )
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `mydb`.`Paciente`
-- -----------------------------------------------------
CREATE  TABLE IF NOT EXISTS `mydb`.`Paciente` (
  `rut` VARCHAR(20) NOT NULL ,
  `nombre` VARCHAR(45) NOT NULL ,
  `apellidoP` VARCHAR(45) NOT NULL ,
  `apellidoM` VARCHAR(45) NOT NULL ,
  `edad` INT NOT NULL ,
  `telefono` VARCHAR(45) NOT NULL ,
  `email` VARCHAR(100) NOT NULL ,
  `direccion` VARCHAR(45) NOT NULL ,
  `email_idemail` INT NOT NULL ,
  PRIMARY KEY (`rut`, `email_idemail`) ,
  INDEX `fk_Paciente_email1_idx` (`email_idemail` ASC) ,
  CONSTRAINT `fk_Paciente_email1`
    FOREIGN KEY (`email_idemail` )
    REFERENCES `mydb`.`email` (`idemail` )
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
DEFAULT CHARACTER SET = macce;


-- -----------------------------------------------------
-- Table `mydb`.`Preescripcion`
-- -----------------------------------------------------
CREATE  TABLE IF NOT EXISTS `mydb`.`Preescripcion` (
  `idPreescripcion` INT NOT NULL AUTO_INCREMENT ,
  `paciente` VARCHAR(45) NOT NULL ,
  `diagnostico` VARCHAR(45) NOT NULL ,
  `areaDeSalud` VARCHAR(45) NOT NULL ,
  `tratamiento` VARCHAR(45) NOT NULL ,
  `medico` VARCHAR(200) NOT NULL ,
  `receta` VARCHAR(200) NOT NULL ,
  `Medico_rut` VARCHAR(20) NOT NULL ,
  `Paciente_rut` VARCHAR(20) NOT NULL ,
  PRIMARY KEY (`idPreescripcion`, `Medico_rut`, `Paciente_rut`) ,
  INDEX `fk_Preescripcion_Medico1_idx` (`Medico_rut` ASC) ,
  INDEX `fk_Preescripcion_Paciente1_idx` (`Paciente_rut` ASC) ,
  CONSTRAINT `fk_Preescripcion_Medico1`
    FOREIGN KEY (`Medico_rut` )
    REFERENCES `mydb`.`Medico` (`rut` )
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_Preescripcion_Paciente1`
    FOREIGN KEY (`Paciente_rut` )
    REFERENCES `mydb`.`Paciente` (`rut` )
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `mydb`.`Receta`
-- -----------------------------------------------------
CREATE  TABLE IF NOT EXISTS `mydb`.`Receta` (
  `codigoEntrega` INT NOT NULL AUTO_INCREMENT ,
  `paciente` VARCHAR(45) NOT NULL ,
  `nombreMedicamento` VARCHAR(45) NOT NULL ,
  `dosis` VARCHAR(45) NOT NULL ,
  `descripcion` VARCHAR(200) NOT NULL ,
  `fecEntrega` DATE NOT NULL ,
  `Preescripcion_idPreescripcion` INT NOT NULL ,
  `Preescripcion_Medico_rut` VARCHAR(20) NOT NULL ,
  PRIMARY KEY (`codigoEntrega`, `Preescripcion_idPreescripcion`, `Preescripcion_Medico_rut`) ,
  INDEX `fk_Receta_Preescripcion1_idx` (`Preescripcion_idPreescripcion` ASC, `Preescripcion_Medico_rut` ASC) ,
  CONSTRAINT `fk_Receta_Preescripcion1`
    FOREIGN KEY (`Preescripcion_idPreescripcion` , `Preescripcion_Medico_rut` )
    REFERENCES `mydb`.`Preescripcion` (`idPreescripcion` , `Medico_rut` )
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `mydb`.`Informe_Stock`
-- -----------------------------------------------------
CREATE  TABLE IF NOT EXISTS `mydb`.`Informe_Stock` (
  `idInforme_Stock` INT NOT NULL AUTO_INCREMENT ,
  `estado` VARCHAR(45) NOT NULL ,
  `total` INT NOT NULL ,
  `reservado` VARCHAR(45) NOT NULL ,
  `demanda` VARCHAR(45) NOT NULL ,
  `descripcion` VARCHAR(45) NOT NULL ,
  `funcionario` VARCHAR(45) NOT NULL ,
  `Funcionario_rut` VARCHAR(20) NOT NULL ,
  PRIMARY KEY (`idInforme_Stock`, `Funcionario_rut`) ,
  INDEX `fk_Informe_Stock_Funcionario1_idx` (`Funcionario_rut` ASC) ,
  CONSTRAINT `fk_Informe_Stock_Funcionario1`
    FOREIGN KEY (`Funcionario_rut` )
    REFERENCES `mydb`.`Funcionario` (`rut` )
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `mydb`.`stockDisponible`
-- -----------------------------------------------------
CREATE  TABLE IF NOT EXISTS `mydb`.`stockDisponible` (
  `idstockDisponible` INT NOT NULL AUTO_INCREMENT ,
  `nombreMedicamento` VARCHAR(45) NOT NULL ,
  `cantidad` VARCHAR(45) NOT NULL ,
  `tipo` VARCHAR(45) NOT NULL ,
  `Medico_rut` VARCHAR(20) NOT NULL ,
  `Medico_Usuario_idUsuario` INT NOT NULL ,
  PRIMARY KEY (`idstockDisponible`, `Medico_rut`, `Medico_Usuario_idUsuario`) ,
  INDEX `fk_stockDisponible_Medico1_idx` (`Medico_rut` ASC, `Medico_Usuario_idUsuario` ASC) ,
  CONSTRAINT `fk_stockDisponible_Medico1`
    FOREIGN KEY (`Medico_rut` , `Medico_Usuario_idUsuario` )
    REFERENCES `mydb`.`Medico` (`rut` , `Usuario_idUsuario` )
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;

USE `mydb` ;


SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;
