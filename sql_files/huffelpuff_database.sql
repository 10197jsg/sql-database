-- ----------------------------------------------------------------------------
-- MySQL Workbench Migration
-- Migrated Schemata: hufflepuff_export
-- Source Schemata: hufflepuff
-- Created: Thu Mar 27 20:50:15 2025
-- Workbench Version: 8.0.30
-- ----------------------------------------------------------------------------

SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------------------------------------------------------
-- Schema hufflepuff_export
-- ----------------------------------------------------------------------------
DROP SCHEMA IF EXISTS `hufflepuff_export` ;
CREATE SCHEMA IF NOT EXISTS `hufflepuff_export` ;

-- ----------------------------------------------------------------------------
-- Table hufflepuff_export.country
-- ----------------------------------------------------------------------------
CREATE TABLE IF NOT EXISTS `hufflepuff_export`.`country` (
  `country` VARCHAR(50) NOT NULL,
  PRIMARY KEY (`country`))
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8mb4
COLLATE = utf8mb4_0900_ai_ci;

-- ----------------------------------------------------------------------------
-- Table hufflepuff_export.global_energy_consumption
-- ----------------------------------------------------------------------------
CREATE TABLE IF NOT EXISTS `hufflepuff_export`.`global_energy_consumption` (
  `country` TEXT NULL DEFAULT NULL,
  `year` INT NULL DEFAULT NULL,
  `total_energy_consumption_(twh)` DOUBLE NULL DEFAULT NULL,
  `per_capita_energy_use_(kwh)` DOUBLE NULL DEFAULT NULL,
  `renewable_energy_share_(%)` DOUBLE NULL DEFAULT NULL,
  `fossil_fuel_dependency_(%)` DOUBLE NULL DEFAULT NULL,
  `industrial_energy_use_(%)` DOUBLE NULL DEFAULT NULL,
  `household_energy_use_(%)` DOUBLE NULL DEFAULT NULL,
  `carbon_emissions_(million_tons)` DOUBLE NULL DEFAULT NULL,
  `energy_price_index_(usd/kwh)` DOUBLE NULL DEFAULT NULL)
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8mb4
COLLATE = utf8mb4_0900_ai_ci;

-- ----------------------------------------------------------------------------
-- Table hufflepuff_export.happiness
-- ----------------------------------------------------------------------------
CREATE TABLE IF NOT EXISTS `hufflepuff_export`.`happiness` (
  `country` TEXT NOT NULL,
  `year` INT NULL DEFAULT NULL,
  `happiness_score` DOUBLE NULL DEFAULT NULL,
  `gdp` DOUBLE NULL DEFAULT NULL,
  `trust_in_government` DOUBLE NULL DEFAULT NULL)
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8mb4
COLLATE = utf8mb4_0900_ai_ci;

-- ----------------------------------------------------------------------------
-- Table hufflepuff_export.year
-- ----------------------------------------------------------------------------
CREATE TABLE IF NOT EXISTS `hufflepuff_export`.`year` (
  `year` INT NOT NULL,
  PRIMARY KEY (`year`))
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8mb4
COLLATE = utf8mb4_0900_ai_ci;
SET FOREIGN_KEY_CHECKS = 1;
