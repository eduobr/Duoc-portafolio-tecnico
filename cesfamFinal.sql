SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0;
SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='TRADITIONAL,ALLOW_INVALID_DATES';

CREATE SCHEMA IF NOT EXISTS `mydb` DEFAULT CHARACTER SET utf8 ;
USE `mydb` ;

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
  PRIMARY KEY (`rut`) )
DEFAULT CHARACTER SET = macce;


-- -----------------------------------------------------
-- Table `mydb`.`Reserva`
-- -----------------------------------------------------
CREATE  TABLE IF NOT EXISTS `mydb`.`Reserva` (
  `idreserva` INT NOT NULL AUTO_INCREMENT ,
  `codigo` VARCHAR(45) NOT NULL ,
  `nombreMedicamento` VARCHAR(45) NOT NULL ,
  `cantidad` INT NOT NULL ,
  `fecEntrega` DATE NOT NULL ,
  `rut` VARCHAR(45) NOT NULL ,
  `nomPaciente` VARCHAR(45) NOT NULL ,
  `telefono` VARCHAR(45) NOT NULL ,
  `email` VARCHAR(45) NOT NULL ,
  `Funcionario_rut` VARCHAR(20) NOT NULL ,
  PRIMARY KEY (`idreserva`, `Funcionario_rut`) ,
  INDEX `fk_reserva_Funcionario1_idx` (`Funcionario_rut` ASC) ,
  CONSTRAINT `fk_reserva_Funcionario1`
    FOREIGN KEY (`Funcionario_rut` )
    REFERENCES `mydb`.`Funcionario` (`rut` )
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `mydb`.`Usuario`
-- -----------------------------------------------------
CREATE  TABLE IF NOT EXISTS `mydb`.`Usuario` (
  `idUsuario` INT NOT NULL AUTO_INCREMENT ,
  `user` VARCHAR(45) NULL DEFAULT NULL ,
  `pass` VARCHAR(45) NULL DEFAULT NULL ,
  `tipoUsuario` VARCHAR(45) NULL DEFAULT NULL ,
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
  `Usuario_idUsuario1` INT NOT NULL ,
  `Usuario_Funcionario_rut` VARCHAR(20) NOT NULL ,
  PRIMARY KEY (`rut`, `Usuario_idUsuario`, `Usuario_idUsuario1`, `Usuario_Funcionario_rut`) ,
  INDEX `fk_Medico_Usuario1_idx` (`Usuario_idUsuario1` ASC, `Usuario_Funcionario_rut` ASC) ,
  CONSTRAINT `fk_Medico_Usuario1`
    FOREIGN KEY (`Usuario_idUsuario1` , `Usuario_Funcionario_rut` )
    REFERENCES `mydb`.`Usuario` (`idUsuario` , `Funcionario_rut` )
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
  `Funcionario_rut` VARCHAR(20) NOT NULL ,
  PRIMARY KEY (`idPreescripcion`, `Medico_rut`, `Paciente_rut`, `Funcionario_rut`) ,
  INDEX `fk_Preescripcion_Medico1_idx` (`Medico_rut` ASC) ,
  INDEX `fk_Preescripcion_Paciente1_idx` (`Paciente_rut` ASC) ,
  INDEX `fk_Preescripcion_Funcionario1_idx` (`Funcionario_rut` ASC) ,
  CONSTRAINT `fk_Preescripcion_Medico1`
    FOREIGN KEY (`Medico_rut` )
    REFERENCES `mydb`.`Medico` (`rut` )
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_Preescripcion_Paciente1`
    FOREIGN KEY (`Paciente_rut` )
    REFERENCES `mydb`.`Paciente` (`rut` )
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_Preescripcion_Funcionario1`
    FOREIGN KEY (`Funcionario_rut` )
    REFERENCES `mydb`.`Funcionario` (`rut` )
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
-- Table `mydb`.`Merma`
-- -----------------------------------------------------
CREATE  TABLE IF NOT EXISTS `mydb`.`Merma` (
  `idMerma` INT NOT NULL ,
  `nombreMedicamento` VARCHAR(45) NOT NULL ,
  `motivo` VARCHAR(45) NOT NULL ,
  `cantidad` INT NOT NULL ,
  `Medicamento_codigo` INT NOT NULL ,
  `Medicamento_Funcionario_rut` VARCHAR(20) NOT NULL ,
  PRIMARY KEY (`idMerma`, `Medicamento_codigo`, `Medicamento_Funcionario_rut`) ,
  INDEX `fk_Merma_Medicamento1_idx` (`Medicamento_codigo` ASC, `Medicamento_Funcionario_rut` ASC) ,
  CONSTRAINT `fk_Merma_Medicamento1`
    FOREIGN KEY (`Medicamento_codigo` , `Medicamento_Funcionario_rut` )
    REFERENCES `mydb`.`Medicamento` (`codigo` , `Funcionario_rut` )
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `mydb`.`Informe_Stock`
-- -----------------------------------------------------
CREATE  TABLE IF NOT EXISTS `mydb`.`Informe_Stock` (
  `idInforme_Stock` INT NOT NULL AUTO_INCREMENT ,
  `nombre_medicamento` VARCHAR(45) NOT NULL ,
  `total` INT NOT NULL ,
  `reservado` VARCHAR(45) NOT NULL ,
  `fecEmision` VARCHAR(45) NOT NULL ,
  `funcionario` VARCHAR(45) NOT NULL ,
  `Funcionario_rut` VARCHAR(20) NOT NULL ,
  `Medicamento_codigo` INT NOT NULL ,
  `Medicamento_Funcionario_rut` VARCHAR(20) NOT NULL ,
  `Merma_idMerma` INT NOT NULL ,
  `Merma_Medicamento_codigo` INT NOT NULL ,
  `Merma_Medicamento_Funcionario_rut` VARCHAR(20) NOT NULL ,
  PRIMARY KEY (`idInforme_Stock`, `Funcionario_rut`, `Medicamento_codigo`, `Medicamento_Funcionario_rut`, `Merma_idMerma`, `Merma_Medicamento_codigo`, `Merma_Medicamento_Funcionario_rut`) ,
  INDEX `fk_Informe_Stock_Funcionario1_idx` (`Funcionario_rut` ASC) ,
  INDEX `fk_Informe_Stock_Medicamento1_idx` (`Medicamento_codigo` ASC, `Medicamento_Funcionario_rut` ASC) ,
  INDEX `fk_Informe_Stock_Merma1_idx` (`Merma_idMerma` ASC, `Merma_Medicamento_codigo` ASC, `Merma_Medicamento_Funcionario_rut` ASC) ,
  CONSTRAINT `fk_Informe_Stock_Funcionario1`
    FOREIGN KEY (`Funcionario_rut` )
    REFERENCES `mydb`.`Funcionario` (`rut` )
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_Informe_Stock_Medicamento1`
    FOREIGN KEY (`Medicamento_codigo` , `Medicamento_Funcionario_rut` )
    REFERENCES `mydb`.`Medicamento` (`codigo` , `Funcionario_rut` )
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_Informe_Stock_Merma1`
    FOREIGN KEY (`Merma_idMerma` , `Merma_Medicamento_codigo` , `Merma_Medicamento_Funcionario_rut` )
    REFERENCES `mydb`.`Merma` (`idMerma` , `Medicamento_codigo` , `Medicamento_Funcionario_rut` )
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
  `Medicamento_codigo` INT NOT NULL ,
  `Medicamento_Funcionario_rut` VARCHAR(20) NOT NULL ,
  PRIMARY KEY (`idstockDisponible`, `Medico_rut`, `Medico_Usuario_idUsuario`, `Medicamento_codigo`, `Medicamento_Funcionario_rut`) ,
  INDEX `fk_stockDisponible_Medico1_idx` (`Medico_rut` ASC, `Medico_Usuario_idUsuario` ASC) ,
  INDEX `fk_stockDisponible_Medicamento1_idx` (`Medicamento_codigo` ASC, `Medicamento_Funcionario_rut` ASC) ,
  CONSTRAINT `fk_stockDisponible_Medico1`
    FOREIGN KEY (`Medico_rut` , `Medico_Usuario_idUsuario` )
    REFERENCES `mydb`.`Medico` (`rut` , `Usuario_idUsuario` )
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_stockDisponible_Medicamento1`
    FOREIGN KEY (`Medicamento_codigo` , `Medicamento_Funcionario_rut` )
    REFERENCES `mydb`.`Medicamento` (`codigo` , `Funcionario_rut` )
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `mydb`.`Med_Sin_Reservar`
-- -----------------------------------------------------
CREATE  TABLE IF NOT EXISTS `mydb`.`Med_Sin_Reservar` (
  `idSin_Reservar` INT NOT NULL ,
  `rutCliente` VARCHAR(45) NOT NULL ,
  `nomCliente` VARCHAR(45) NOT NULL ,
  `nomMedicamento` VARCHAR(45) NOT NULL ,
  `Funcionario_rut` VARCHAR(20) NOT NULL ,
  PRIMARY KEY (`idSin_Reservar`, `Funcionario_rut`) ,
  INDEX `fk_Sin_Reservar_Funcionario1_idx` (`Funcionario_rut` ASC) ,
  CONSTRAINT `fk_Sin_Reservar_Funcionario1`
    FOREIGN KEY (`Funcionario_rut` )
    REFERENCES `mydb`.`Funcionario` (`rut` )
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `mydb`.`Informe_Med_Reservados`
-- -----------------------------------------------------
CREATE  TABLE IF NOT EXISTS `mydb`.`Informe_Med_Reservados` (
  `idInforme_Med_Reservados` INT NOT NULL ,
  `codigo` VARCHAR(45) NULL ,
  `nomMedicamento` VARCHAR(45) NULL ,
  `estado` VARCHAR(30) NULL ,
  `rutPaciente` VARCHAR(45) NULL ,
  `nomPaciente` VARCHAR(45) NULL ,
  `Reserva_idreserva` INT NOT NULL ,
  `Reserva_Funcionario_rut` VARCHAR(20) NOT NULL ,
  PRIMARY KEY (`idInforme_Med_Reservados`, `Reserva_idreserva`, `Reserva_Funcionario_rut`) ,
  INDEX `fk_Informe_Med_Reservados_Reserva1_idx` (`Reserva_idreserva` ASC, `Reserva_Funcionario_rut` ASC) ,
  CONSTRAINT `fk_Informe_Med_Reservados_Reserva1`
    FOREIGN KEY (`Reserva_idreserva` , `Reserva_Funcionario_rut` )
    REFERENCES `mydb`.`Reserva` (`idreserva` , `Funcionario_rut` )
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;

USE `mydb` ;


SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;
