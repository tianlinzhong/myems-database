-- MyEMS Energy Database

-- ---------------------------------------------------------------------------------------------------------------------
-- Schema myems_energy_db
-- ---------------------------------------------------------------------------------------------------------------------
-- MyEMS Energy Database
DROP DATABASE IF EXISTS `myems_energy_db` ;

-- ---------------------------------------------------------------------------------------------------------------------
-- Database myems_energy_db
--
-- MyEMS Energy Database
-- ---------------------------------------------------------------------------------------------------------------------
CREATE DATABASE IF NOT EXISTS `myems_energy_db` ;
USE `myems_energy_db` ;

-- ---------------------------------------------------------------------------------------------------------------------
-- Table `myems_energy_db`.`tbl_meter_hourly`
-- ---------------------------------------------------------------------------------------------------------------------
DROP TABLE IF EXISTS `myems_energy_db`.`tbl_meter_hourly` ;

CREATE TABLE IF NOT EXISTS `myems_energy_db`.`tbl_meter_hourly` (
  `id` BIGINT NOT NULL AUTO_INCREMENT,
  `meter_id` BIGINT NOT NULL,
  `start_datetime_utc` DATETIME NOT NULL,
  `actual_value` DOUBLE NOT NULL,
  PRIMARY KEY (`id`));
CREATE INDEX `tbl_meter_hourly_index_1` ON  `myems_energy_db`.`tbl_meter_hourly`   (`meter_id`, `start_datetime_utc`);

-- ---------------------------------------------------------------------------------------------------------------------
-- Table `myems_energy_db`.`tbl_virtual_meter_hourly`
-- ---------------------------------------------------------------------------------------------------------------------
DROP TABLE IF EXISTS `myems_energy_db`.`tbl_virtual_meter_hourly` ;

CREATE TABLE IF NOT EXISTS `myems_energy_db`.`tbl_virtual_meter_hourly` (
  `id` BIGINT NOT NULL AUTO_INCREMENT,
  `virtual_meter_id` BIGINT NOT NULL,
  `start_datetime_utc` DATETIME NOT NULL,
  `actual_value` DOUBLE NOT NULL,
  PRIMARY KEY (`id`));
CREATE INDEX `tbl_virtual_meter_hourly_index_1` ON  `myems_energy_db`.`tbl_virtual_meter_hourly`   (`virtual_meter_id`, `start_datetime_utc`);


-- ---------------------------------------------------------------------------------------------------------------------
-- Table `myems_energy_db`.`tbl_offline_meter_hourly`
-- ---------------------------------------------------------------------------------------------------------------------
DROP TABLE IF EXISTS `myems_energy_db`.`tbl_offline_meter_hourly` ;

CREATE TABLE IF NOT EXISTS `myems_energy_db`.`tbl_offline_meter_hourly` (
  `id` BIGINT NOT NULL AUTO_INCREMENT,
  `offline_meter_id` BIGINT NOT NULL,
  `start_datetime_utc` DATETIME NOT NULL,
  `actual_value` DOUBLE NOT NULL,
  PRIMARY KEY (`id`));
CREATE INDEX `tbl_offline_meter_hourly_index_1` ON  `myems_energy_db`.`tbl_offline_meter_hourly`   (`offline_meter_id`, `start_datetime_utc`);

-- ---------------------------------------------------------------------------------------------------------------------
-- Table `myems_energy_db`.`tbl_equipment_hourly`
-- ---------------------------------------------------------------------------------------------------------------------
DROP TABLE IF EXISTS `myems_energy_db`.`tbl_equipment_hourly` ;

CREATE TABLE IF NOT EXISTS `myems_energy_db`.`tbl_equipment_hourly` (
  `id` BIGINT NOT NULL AUTO_INCREMENT,
  `equipment_id` BIGINT NOT NULL,
  `energy_category_id` BIGINT NOT NULL,
  `start_datetime_utc` DATETIME NOT NULL,
  `actual_value` DOUBLE NOT NULL,
  PRIMARY KEY (`id`));
CREATE INDEX `tbl_equipment_hourly_index_1` ON  `myems_energy_db`.`tbl_equipment_hourly`   (`equipment_id`, `energy_category_id`, `start_datetime_utc`);

-- ---------------------------------------------------------------------------------------------------------------------
-- Table `myems_energy_db`.`tbl_space_hourly`
-- ---------------------------------------------------------------------------------------------------------------------
DROP TABLE IF EXISTS `myems_energy_db`.`tbl_space_hourly` ;

CREATE TABLE IF NOT EXISTS `myems_energy_db`.`tbl_space_hourly` (
  `id` BIGINT NOT NULL AUTO_INCREMENT,
  `space_id` BIGINT NOT NULL,
  `energy_category_id` BIGINT NOT NULL,
  `start_datetime_utc` DATETIME NOT NULL,
  `actual_value` DOUBLE NOT NULL,
  PRIMARY KEY (`id`));
CREATE INDEX `tbl_space_hourly_index_1` ON  `myems_energy_db`.`tbl_space_hourly`   (`space_id`, `energy_category_id`, `start_datetime_utc`);

-- ---------------------------------------------------------------------------------------------------------------------
-- Table `myems_energy_db`.`tbl_equipment_output_hourly`
-- ---------------------------------------------------------------------------------------------------------------------
DROP TABLE IF EXISTS `myems_energy_db`.`tbl_equipment_output_hourly` ;

CREATE TABLE IF NOT EXISTS `myems_energy_db`.`tbl_equipment_output_hourly` (
  `id` BIGINT NOT NULL AUTO_INCREMENT,
  `equipment_id` BIGINT NOT NULL,
  `energy_category_id` BIGINT NOT NULL,
  `start_datetime_utc` DATETIME NOT NULL,
  `actual_value` DOUBLE NOT NULL,
  PRIMARY KEY (`id`));
CREATE INDEX `tbl_equipment_output_hourly_index_1` ON  `myems_energy_db`.`tbl_equipment_output_hourly`   (`equipment_id`, `energy_category_id`, `start_datetime_utc`);

-- ---------------------------------------------------------------------------------------------------------------------
-- Table `myems_energy_db`.`tbl_space_output_hourly`
-- ---------------------------------------------------------------------------------------------------------------------
DROP TABLE IF EXISTS `myems_energy_db`.`tbl_space_output_hourly` ;

CREATE TABLE IF NOT EXISTS `myems_energy_db`.`tbl_space_output_hourly` (
  `id` BIGINT NOT NULL AUTO_INCREMENT,
  `space_id` BIGINT NOT NULL,
  `energy_category_id` BIGINT NOT NULL,
  `start_datetime_utc` DATETIME NOT NULL,
  `actual_value` DOUBLE NOT NULL,
  PRIMARY KEY (`id`));
CREATE INDEX `tbl_space_output_hourly_index_1` ON  `myems_energy_db`.`tbl_space_output_hourly`   (`space_id`, `energy_category_id`, `start_datetime_utc`);