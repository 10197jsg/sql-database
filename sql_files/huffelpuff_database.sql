-- ----------------------------------------------------------------------------
-- MySQL Workbench Migration
-- Migrated Schemata: hufflepuff
-- Source Schemata: hufflepuff_export
-- Created: Fri Mar 28 15:04:08 2025
-- Workbench Version: 8.0.40
-- ----------------------------------------------------------------------------

SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------------------------------------------------------
-- Schema hufflepuff
-- ----------------------------------------------------------------------------
DROP SCHEMA IF EXISTS `hufflepuff` ;
CREATE SCHEMA IF NOT EXISTS `hufflepuff` ;

-- ----------------------------------------------------------------------------
-- Table hufflepuff.country
-- ----------------------------------------------------------------------------
CREATE TABLE IF NOT EXISTS `hufflepuff`.`country` (
  `country` VARCHAR(50) NOT NULL,
  PRIMARY KEY (`country`))
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8mb4
COLLATE = utf8mb4_0900_ai_ci;

-- ----------------------------------------------------------------------------
-- Table hufflepuff.global_energy_consumption
-- ----------------------------------------------------------------------------
CREATE TABLE IF NOT EXISTS `hufflepuff`.`global_energy_consumption` (
  `id` INT NOT NULL AUTO_INCREMENT,
  `country` VARCHAR(50) NULL DEFAULT NULL,
  `year` INT NULL DEFAULT NULL,
  `total_energy_consumption_(twh)` DOUBLE NULL DEFAULT NULL,
  `per_capita_energy_use_(kwh)` DOUBLE NULL DEFAULT NULL,
  `renewable_energy_share_(%)` DOUBLE NULL DEFAULT NULL,
  `fossil_fuel_dependency_(%)` DOUBLE NULL DEFAULT NULL,
  `industrial_energy_use_(%)` DOUBLE NULL DEFAULT NULL,
  `household_energy_use_(%)` DOUBLE NULL DEFAULT NULL,
  `carbon_emissions_(million_tons)` DOUBLE NULL DEFAULT NULL,
  `energy_price_index_(usd/kwh)` DOUBLE NULL DEFAULT NULL,
  `country_country` VARCHAR(50) NULL DEFAULT NULL,
  `global_energy_consumptioncol` VARCHAR(45) NULL DEFAULT NULL,
  `country_country1` VARCHAR(50) NOT NULL,
  `year_year` INT NOT NULL,
  PRIMARY KEY (`id`, `country_country1`, `year_year`),
  INDEX `fk_global_energy_consumption_country1_idx` (`country_country1` ASC) VISIBLE,
  INDEX `fk_global_energy_consumption_year1_idx` (`year_year` ASC) VISIBLE,
  CONSTRAINT `fk_global_energy_consumption_country1`
    FOREIGN KEY (`country_country1`)
    REFERENCES `hufflepuff`.`country` (`country`),
  CONSTRAINT `fk_global_energy_consumption_year1`
    FOREIGN KEY (`year_year`)
    REFERENCES `hufflepuff`.`year` (`year`))
ENGINE = InnoDB
AUTO_INCREMENT = 6
DEFAULT CHARACTER SET = utf8mb4
COLLATE = utf8mb4_0900_ai_ci;

-- ----------------------------------------------------------------------------
-- Table hufflepuff.happiness
-- ----------------------------------------------------------------------------
CREATE TABLE IF NOT EXISTS `hufflepuff`.`happiness` (
  `id` INT NOT NULL AUTO_INCREMENT,
  `country` VARCHAR(50) NULL DEFAULT NULL,
  `year` INT NULL DEFAULT NULL,
  `happiness_score` DOUBLE NULL DEFAULT NULL,
  `gdp` DOUBLE NULL DEFAULT NULL,
  `trust_in_government` DOUBLE NULL DEFAULT NULL,
  `year_year` INT NOT NULL,
  `country_country` VARCHAR(50) NOT NULL,
  PRIMARY KEY (`id`, `year_year`, `country_country`),
  INDEX `fk_happiness_year_idx` (`year_year` ASC) VISIBLE,
  INDEX `fk_happiness_country1_idx` (`country_country` ASC) VISIBLE,
  CONSTRAINT `fk_happiness_country1`
    FOREIGN KEY (`country_country`)
    REFERENCES `hufflepuff`.`country` (`country`),
  CONSTRAINT `fk_happiness_year`
    FOREIGN KEY (`year_year`)
    REFERENCES `hufflepuff`.`year` (`year`))
ENGINE = InnoDB
AUTO_INCREMENT = 782
DEFAULT CHARACTER SET = utf8mb4
COLLATE = utf8mb4_0900_ai_ci;

-- ----------------------------------------------------------------------------
-- Table hufflepuff.year
-- ----------------------------------------------------------------------------
CREATE TABLE IF NOT EXISTS `hufflepuff`.`year` (
  `year` INT NOT NULL,
  PRIMARY KEY (`year`))
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8mb4
COLLATE = utf8mb4_0900_ai_ci;
SET FOREIGN_KEY_CHECKS = 1;
