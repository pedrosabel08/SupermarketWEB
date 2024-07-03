-- MySQL Workbench Forward Engineering

SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0;
SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION';

-- -----------------------------------------------------
-- Schema mydb
-- -----------------------------------------------------
-- -----------------------------------------------------
-- Schema bd_ss
-- -----------------------------------------------------

-- -----------------------------------------------------
-- Schema bd_ss
-- -----------------------------------------------------
CREATE SCHEMA IF NOT EXISTS `bd_ss` DEFAULT CHARACTER SET utf8mb4 ;
USE `bd_ss` ;

-- -----------------------------------------------------
-- Table `bd_ss`.`usuario`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `bd_ss`.`usuario` (
  `idusuario` INT(11) NOT NULL AUTO_INCREMENT,
  `nome` VARCHAR(45) NOT NULL,
  `sobrenome` VARCHAR(45) NOT NULL,
  `telefone` VARCHAR(45) NOT NULL,
  `email` VARCHAR(45) NOT NULL,
  `senha` VARCHAR(45) NOT NULL,
  PRIMARY KEY (`idusuario`))
ENGINE = InnoDB
AUTO_INCREMENT = 3
DEFAULT CHARACTER SET = utf8mb4;


-- -----------------------------------------------------
-- Table `bd_ss`.`unidadeMedida`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `bd_ss`.`unidadeMedida` (
  `idunidadeMedida` INT NOT NULL AUTO_INCREMENT,
  `nome` VARCHAR(45) NULL,
  PRIMARY KEY (`idunidadeMedida`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `bd_ss`.`categoria`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `bd_ss`.`categoria` (
  `idcategoriaProdutos` INT NOT NULL AUTO_INCREMENT,
  `nome` VARCHAR(45) NOT NULL,
  PRIMARY KEY (`idcategoriaProdutos`))
ENGINE = InnoDB;

-- -----------------------------------------------------
-- Table `bd_ss`.`produto`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `bd_ss`.`produto` (
  `idproduto` INT NOT NULL AUTO_INCREMENT,
  `nome` VARCHAR(45) NOT NULL,
  `quantidade` VARCHAR(45) NOT NULL,
  `preco` DECIMAL(10,2) NOT NULL,
  `unidadeMedida_id` INT NOT NULL,
  `categoria_id` INT NOT NULL,
  PRIMARY KEY (`idproduto`, `unidadeMedida_id`, `categoria_id`),
  CONSTRAINT `fk_produto_unidadeMedida`
    FOREIGN KEY (`unidadeMedida_id`)
    REFERENCES `bd_ss`.`unidadeMedida` (`idunidadeMedida`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_produto_categoria1`
    FOREIGN KEY (`categoria_id`)
    REFERENCES `bd_ss`.`categoria` (`idcategoriaProdutos`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


DELIMITER //
CREATE DEFINER=`root`@`localhost` FUNCTION `insertCategoria`() RETURNS int(11)
BEGIN
	insert into categoria (nome) values ('Frutas');
	insert into categoria (nome) values ('Legumes');
    insert into categoria (nome) values ('Padaria');
    insert into categoria (nome) values ('Carnes');
    insert into categoria (nome) values ('Frios');
    insert into categoria (nome) values ('Laticínios');
    insert into categoria (nome) values ('Marcearia');
    insert into categoria (nome) values ('Bebidas');
    insert into categoria (nome) values ('Higiene Pessoal');
	insert into categoria (nome) values ('Limpeza');
	insert into categoria (nome) values ('Pet Shop');
    insert into categoria (nome) values ('Congelados');

RETURN 1;
END
//

DELIMITER //
CREATE DEFINER=`root`@`localhost` FUNCTION `insertProdutos`() RETURNS int(11)
BEGIN

INSERT INTO produtos (nome, quantidade, preco, unidadeMedida_id, categoria_id) VALUES 

-- Frutas
('Morango', 20, 6.99, 1, 1),
('Abacaxi', 15, 8.99, 1, 1),
('Maçã', 18, 5.49, 1, 1),
('Uva', 18, 5.49, 1, 1),
('Banana', 25, 5.49, 1, 1),
('Laranja', 18, 5.49, 1, 1),
('Melancia', 18, 5.49, 1, 1),
('Manga', 18, 5.49, 1, 1),
('Pêssego', 18, 5.49, 1, 1),
('Limão', 18, 5.49, 1, 1),
('Pera', 18, 5.49, 1, 1),
('Kiwi', 18, 5.49, 1, 1),

-- Legumes

RETURN 1;
END
//

SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;
