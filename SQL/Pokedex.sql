-- MySQL Workbench Forward Engineering

SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0;
SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION';

-- -----------------------------------------------------
-- Schema mydb
-- -----------------------------------------------------
-- -----------------------------------------------------
-- Schema pokemon
-- -----------------------------------------------------

-- -----------------------------------------------------
-- Schema pokemon
-- -----------------------------------------------------
CREATE SCHEMA IF NOT EXISTS `pokemon` DEFAULT CHARACTER SET utf8mb3 ;
USE `pokemon` ;

-- -----------------------------------------------------
-- Table `pokemon`.`categoria`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `pokemon`.`categoria` (
  `idCategoria` INT NOT NULL,
  `Nome` VARCHAR(255) NOT NULL,
  `descricao` VARCHAR(255) NOT NULL,
  PRIMARY KEY (`idCategoria`))
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8mb3;


-- -----------------------------------------------------
-- Table `pokemon`.`habilidade`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `pokemon`.`habilidade` (
  `idHabilidade` INT NOT NULL,
  `nome_habilidade` VARCHAR(255) NOT NULL,
  `habilidade_secundaria` VARCHAR(255) NULL DEFAULT NULL,
  PRIMARY KEY (`idHabilidade`))
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8mb3;


-- -----------------------------------------------------
-- Table `pokemon`.`raridade`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `pokemon`.`raridade` (
  `idRaridade` INT NOT NULL,
  `tipo_raridade` VARCHAR(255) NOT NULL,
  `descricao` VARCHAR(255) NOT NULL,
  PRIMARY KEY (`idRaridade`))
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8mb3;


-- -----------------------------------------------------
-- Table `pokemon`.`pokemon`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `pokemon`.`pokemon` (
  `idPokemon` INT NOT NULL,
  `Nome_Especie` VARCHAR(255) NOT NULL,
  `Altura` VARCHAR(255) NOT NULL,
  `Peso` VARCHAR(255) NOT NULL,
  `ValorAtaque` VARCHAR(255) NOT NULL,
  `ValorDefesa` VARCHAR(255) NOT NULL,
  `VelocidadeMedia` VARCHAR(255) NOT NULL,
  `Raridade_idRaridade` INT NOT NULL,
  `Categoria_idCategoria` INT NOT NULL,
  PRIMARY KEY (`idPokemon`),
  INDEX `fk_Pokemon_Raridade_idx` (`Raridade_idRaridade` ASC) VISIBLE,
  INDEX `fk_Pokemon_Categoria1_idx` (`Categoria_idCategoria` ASC) VISIBLE,
  CONSTRAINT `fk_Pokemon_Categoria1`
    FOREIGN KEY (`Categoria_idCategoria`)
    REFERENCES `pokemon`.`categoria` (`idCategoria`),
  CONSTRAINT `fk_Pokemon_Raridade`
    FOREIGN KEY (`Raridade_idRaridade`)
    REFERENCES `pokemon`.`raridade` (`idRaridade`))
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8mb3;


-- -----------------------------------------------------
-- Table `pokemon`.`pokemon_has_habilidade`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `pokemon`.`pokemon_has_habilidade` (
  `Pokemon_idPokemon` INT NOT NULL,
  `Habilidade_idHabilidade` INT NOT NULL,
  `oculta` TINYINT NULL DEFAULT NULL,
  PRIMARY KEY (`Pokemon_idPokemon`, `Habilidade_idHabilidade`),
  INDEX `fk_Pokemon_has_Habilidade_Habilidade1_idx` (`Habilidade_idHabilidade` ASC) VISIBLE,
  INDEX `fk_Pokemon_has_Habilidade_Pokemon1_idx` (`Pokemon_idPokemon` ASC) VISIBLE,
  CONSTRAINT `fk_Pokemon_has_Habilidade_Habilidade1`
    FOREIGN KEY (`Habilidade_idHabilidade`)
    REFERENCES `pokemon`.`habilidade` (`idHabilidade`),
  CONSTRAINT `fk_Pokemon_has_Habilidade_Pokemon1`
    FOREIGN KEY (`Pokemon_idPokemon`)
    REFERENCES `pokemon`.`pokemon` (`idPokemon`))
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8mb3;


-- -----------------------------------------------------
-- Table `pokemon`.`tipo`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `pokemon`.`tipo` (
  `idTipo` INT NOT NULL,
  `tipo_primario` VARCHAR(255) NOT NULL,
  `tipo_secundario` VARCHAR(255) NULL DEFAULT NULL,
  PRIMARY KEY (`idTipo`))
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8mb3;


-- -----------------------------------------------------
-- Table `pokemon`.`pokemon_has_tipo`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `pokemon`.`pokemon_has_tipo` (
  `pokemon_idPokemon` INT NOT NULL,
  `tipo_idTipo` INT NOT NULL,
  PRIMARY KEY (`pokemon_idPokemon`, `tipo_idTipo`),
  INDEX `fk_pokemon_has_tipo_tipo1_idx` (`tipo_idTipo` ASC) VISIBLE,
  INDEX `fk_pokemon_has_tipo_pokemon1_idx` (`pokemon_idPokemon` ASC) VISIBLE,
  CONSTRAINT `fk_pokemon_has_tipo_pokemon1`
    FOREIGN KEY (`pokemon_idPokemon`)
    REFERENCES `pokemon`.`pokemon` (`idPokemon`),
  CONSTRAINT `fk_pokemon_has_tipo_tipo1`
    FOREIGN KEY (`tipo_idTipo`)
    REFERENCES `pokemon`.`tipo` (`idTipo`))
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8mb3;


-- -----------------------------------------------------
-- Table `pokemon`.`tipo_has_pokemon`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `pokemon`.`tipo_has_pokemon` (
  `Tipo_idTipo` INT NOT NULL,
  `Pokemon_idPokemon` INT NOT NULL,
  PRIMARY KEY (`Tipo_idTipo`, `Pokemon_idPokemon`),
  INDEX `fk_Tipo_has_Pokemon_Pokemon1_idx` (`Pokemon_idPokemon` ASC) VISIBLE,
  INDEX `fk_Tipo_has_Pokemon_Tipo1_idx` (`Tipo_idTipo` ASC) VISIBLE,
  CONSTRAINT `fk_Tipo_has_Pokemon_Pokemon1`
    FOREIGN KEY (`Pokemon_idPokemon`)
    REFERENCES `pokemon`.`pokemon` (`idPokemon`),
  CONSTRAINT `fk_Tipo_has_Pokemon_Tipo1`
    FOREIGN KEY (`Tipo_idTipo`)
    REFERENCES `pokemon`.`tipo` (`idTipo`))
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8mb3;

USE `pokemon` ;

-- -----------------------------------------------------
-- Placeholder table for view `pokemon`.`pokemon_habilidades_count`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `pokemon`.`pokemon_habilidades_count` (`idPokemon` INT, `Nome_Especie` INT, `Total_Habilidades` INT);

-- -----------------------------------------------------
-- Placeholder table for view `pokemon`.`pokemon_tipo_count`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `pokemon`.`pokemon_tipo_count` (`tipo_primario` INT, `Total_Pokemon` INT);

-- -----------------------------------------------------
-- View `pokemon`.`pokemon_habilidades_count`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `pokemon`.`pokemon_habilidades_count`;
USE `pokemon`;
CREATE  OR REPLACE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `pokemon`.`pokemon_habilidades_count` AS select `p`.`idPokemon` AS `idPokemon`,`p`.`Nome_Especie` AS `Nome_Especie`,count(`ph`.`Habilidade_idHabilidade`) AS `Total_Habilidades` from (`pokemon`.`pokemon` `p` left join `pokemon`.`pokemon_has_habilidade` `ph` on((`p`.`idPokemon` = `ph`.`Pokemon_idPokemon`))) group by `p`.`idPokemon`,`p`.`Nome_Especie`;

-- -----------------------------------------------------
-- View `pokemon`.`pokemon_tipo_count`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `pokemon`.`pokemon_tipo_count`;
USE `pokemon`;
CREATE  OR REPLACE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `pokemon`.`pokemon_tipo_count` AS select `t`.`tipo_primario` AS `tipo_primario`,count(`p`.`idPokemon`) AS `Total_Pokemon` from ((`pokemon`.`pokemon` `p` join `pokemon`.`pokemon_has_tipo` `pt` on((`p`.`idPokemon` = `pt`.`pokemon_idPokemon`))) join `pokemon`.`tipo` `t` on((`pt`.`tipo_idTipo` = `t`.`idTipo`))) group by `t`.`tipo_primario`;

SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;
