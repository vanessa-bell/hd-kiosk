-- MySQL Workbench Forward Engineering

SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0;
SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='TRADITIONAL,ALLOW_INVALID_DATES';

-- -----------------------------------------------------
-- Schema mydb
-- -----------------------------------------------------

-- -----------------------------------------------------
-- Schema mydb
-- -----------------------------------------------------
CREATE SCHEMA IF NOT EXISTS `kioskdb` DEFAULT CHARACTER SET utf8 ;
USE `kioskdb` ;

-- -----------------------------------------------------
-- Table `mydb`.`FAQs`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `kioskdb`.`FAQs` (
  `id` INT UNSIGNED NOT NULL,
  `question` VARCHAR(250) NULL,
  `answer` VARCHAR(250) NULL,
  `counter` INT NULL,
  PRIMARY KEY (`id`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `mydb`.`Statistics`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `kioskdb`.`Statistics` (
  `id` INT UNSIGNED NOT NULL,
  `timestamp` DATETIME NULL,
  `FAQs_id` INT UNSIGNED NOT NULL,
  PRIMARY KEY (`id`, `FAQs_id`),
  INDEX `fk_Statistics_FAQs_idx` (`FAQs_id` ASC),
  CONSTRAINT `fk_Statistics_FAQs`
    FOREIGN KEY (`FAQs_id`)
    REFERENCES `kioskdb`.`FAQs` (`id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;

INSERT INTO faqs ( question, answer, counter ) VALUES ( 'What is Hacker Dojo?', 'Hacker Dojo is a community of engineers, artists, scientists, activists, entrepreneurs and other creative people centered around a co-working and social facility in Mountain View, CA.  Feel free to drop by and see for yourself what the Dojo is all about.   The best times to visit are when one of the many events is taking place.', 0 )
