-- Adminer 4.8.1 MySQL 10.5.15-MariaDB-0+deb11u1 dump

SET NAMES utf8;
SET time_zone = '+00:00';
SET foreign_key_checks = 0;
SET sql_mode = 'NO_AUTO_VALUE_ON_ZERO';

SET NAMES utf8mb4;

DROP DATABASE IF EXISTS `runoffdb`;
CREATE DATABASE `runoffdb` /*!40100 DEFAULT CHARACTER SET utf8mb4 */;
USE `runoffdb`;

DROP TABLE IF EXISTS `agrotechnology`;
CREATE TABLE `agrotechnology` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name_cz` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `name_en` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description_cz` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description_en` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `manag_typ` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `note_cz` varchar(500) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `note_en` varchar(500) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;


DROP TABLE IF EXISTS `assignment_type`;
CREATE TABLE `assignment_type` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `description_cz` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description_en` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;


DROP TABLE IF EXISTS `cms`;
CREATE TABLE `cms` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `content` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `language` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `type` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;


DROP TABLE IF EXISTS `crop`;
CREATE TABLE `crop` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `crop_type_id` int(11) DEFAULT NULL,
  `croper_type_id` int(11) DEFAULT NULL,
  `name_cz` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name_en` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `variety` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_catch_crop` tinyint(1) DEFAULT NULL,
  `description_cz` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description_en` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  KEY `IDX_EDC23D9B863EBD0A` (`crop_type_id`) USING BTREE,
  KEY `IDX_EDC23D9B62F62D90` (`croper_type_id`) USING BTREE,
  CONSTRAINT `FK_EDC23D9B62F62D90` FOREIGN KEY (`croper_type_id`) REFERENCES `crop_er_type` (`id`) ON DELETE SET NULL,
  CONSTRAINT `FK_EDC23D9B863EBD0A` FOREIGN KEY (`crop_type_id`) REFERENCES `crop_type` (`id`) ON DELETE SET NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;


DROP TABLE IF EXISTS `crop_er_type`;
CREATE TABLE `crop_er_type` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name_cz` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `name_en` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;


DROP TABLE IF EXISTS `crop_type`;
CREATE TABLE `crop_type` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name_cz` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name_en` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description_cz` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description_en` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;


DROP TABLE IF EXISTS `data`;
CREATE TABLE `data` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `record_id` int(11) NOT NULL,
  `time` time DEFAULT NULL,
  `value` double NOT NULL,
  `related_value_x` double DEFAULT NULL,
  `related_value_y` double DEFAULT NULL,
  `related_value_z` double DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  KEY `IDX_ADF3F3634DFD750C` (`record_id`) USING BTREE,
  CONSTRAINT `FK_ADF3F3634DFD750C` FOREIGN KEY (`record_id`) REFERENCES `record` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;


DROP TABLE IF EXISTS `doctrine_migration_versions`;
CREATE TABLE `doctrine_migration_versions` (
  `version` varchar(191) COLLATE utf8_unicode_ci NOT NULL,
  `executed_at` datetime DEFAULT NULL,
  `execution_time` int(11) DEFAULT NULL,
  PRIMARY KEY (`version`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;


DROP TABLE IF EXISTS `locality`;
CREATE TABLE `locality` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `organization_id` int(11) DEFAULT NULL,
  `wrb_soil_class_id` int(11) DEFAULT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `lat` double NOT NULL,
  `lng` double NOT NULL,
  `description_cz` varchar(512) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description_en` varchar(512) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  KEY `IDX_E1D6B8E632C8A3DE` (`organization_id`) USING BTREE,
  KEY `IDX_E1D6B8E6D15BAB48` (`wrb_soil_class_id`) USING BTREE,
  CONSTRAINT `FK_E1D6B8E632C8A3DE` FOREIGN KEY (`organization_id`) REFERENCES `organization` (`id`) ON DELETE SET NULL,
  CONSTRAINT `FK_E1D6B8E6D15BAB48` FOREIGN KEY (`wrb_soil_class_id`) REFERENCES `wrb_soil_class` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;


DROP TABLE IF EXISTS `measurement`;
CREATE TABLE `measurement` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `description_cz` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description_en` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `note_cz` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `note_en` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `phenomenon_id` int(11) DEFAULT NULL,
  `plot_id` int(11) DEFAULT NULL,
  `locality_id` int(11) DEFAULT NULL,
  `date` date DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  KEY `IDX_2CE0D811FACA4B0` (`phenomenon_id`) USING BTREE,
  KEY `IDX_2CE0D811680D0B01` (`plot_id`),
  KEY `IDX_2CE0D81188823A92` (`locality_id`),
  KEY `IDX_2CE0D811A76ED395` (`user_id`),
  CONSTRAINT `FK_2CE0D811680D0B01` FOREIGN KEY (`plot_id`) REFERENCES `plot` (`id`) ON DELETE SET NULL,
  CONSTRAINT `FK_2CE0D81188823A92` FOREIGN KEY (`locality_id`) REFERENCES `locality` (`id`) ON DELETE SET NULL,
  CONSTRAINT `FK_2CE0D811A76ED395` FOREIGN KEY (`user_id`) REFERENCES `user` (`id`),
  CONSTRAINT `FK_2CE0D811FACA4B0` FOREIGN KEY (`phenomenon_id`) REFERENCES `phenomenon` (`id`) ON DELETE SET NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;


DROP TABLE IF EXISTS `measurement_run`;
CREATE TABLE `measurement_run` (
  `measurement_id` int(11) NOT NULL,
  `run_id` int(11) NOT NULL,
  PRIMARY KEY (`measurement_id`,`run_id`),
  KEY `IDX_1A847647924EA134` (`measurement_id`),
  KEY `IDX_1A84764784E3FEC4` (`run_id`),
  CONSTRAINT `FK_1A84764784E3FEC4` FOREIGN KEY (`run_id`) REFERENCES `run` (`id`) ON DELETE CASCADE,
  CONSTRAINT `FK_1A847647924EA134` FOREIGN KEY (`measurement_id`) REFERENCES `measurement` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


DROP TABLE IF EXISTS `measurement_soil_sample`;
CREATE TABLE `measurement_soil_sample` (
  `measurement_id` int(11) NOT NULL,
  `soil_sample_id` int(11) NOT NULL,
  PRIMARY KEY (`measurement_id`,`soil_sample_id`),
  KEY `IDX_E1C07083924EA134` (`measurement_id`),
  KEY `IDX_E1C07083340A911F` (`soil_sample_id`),
  CONSTRAINT `FK_E1C07083340A911F` FOREIGN KEY (`soil_sample_id`) REFERENCES `soil_sample` (`id`) ON DELETE CASCADE,
  CONSTRAINT `FK_E1C07083924EA134` FOREIGN KEY (`measurement_id`) REFERENCES `measurement` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


DROP TABLE IF EXISTS `migration_versions`;
CREATE TABLE `migration_versions` (
  `version` varchar(14) COLLATE utf8mb4_unicode_ci NOT NULL,
  `executed_at` datetime NOT NULL COMMENT '(DC2Type:datetime_immutable)',
  PRIMARY KEY (`version`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;


DROP TABLE IF EXISTS `model`;
CREATE TABLE `model` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description_cz` varchar(1024) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description_en` varchar(1024) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `homepage` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `reference` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;


DROP TABLE IF EXISTS `operation`;
CREATE TABLE `operation` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `operation_intensity_id` int(11) NOT NULL,
  `operation_type_id` int(11) DEFAULT NULL,
  `name_cz` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name_en` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `operation_depth_m` double NOT NULL,
  `description_cz` varchar(512) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description_en` varchar(512) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `machinery_type_cz` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `machinery_type_en` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  KEY `IDX_1981A66D783ED65B` (`operation_intensity_id`) USING BTREE,
  KEY `IDX_1981A66D668D0C5E` (`operation_type_id`) USING BTREE,
  CONSTRAINT `FK_1981A66D668D0C5E` FOREIGN KEY (`operation_type_id`) REFERENCES `operation_type` (`id`) ON DELETE SET NULL,
  CONSTRAINT `FK_1981A66D783ED65B` FOREIGN KEY (`operation_intensity_id`) REFERENCES `operation_intensity` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;


DROP TABLE IF EXISTS `operation_intensity`;
CREATE TABLE `operation_intensity` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `description_cz` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description_en` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;


DROP TABLE IF EXISTS `operation_type`;
CREATE TABLE `operation_type` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `description_cz` varchar(512) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description_en` varchar(512) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;


DROP TABLE IF EXISTS `organization`;
CREATE TABLE `organization` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `contact_person` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `contact_number` varchar(10) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `contact_email` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `name_code` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;


DROP TABLE IF EXISTS `phenomenon`;
CREATE TABLE `phenomenon` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name_cz` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name_en` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description_cz` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description_en` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `phenomenon_key` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `model_parameter_set_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  KEY `IDX_2F24836A6C78085B` (`model_parameter_set_id`),
  CONSTRAINT `FK_2F24836A6C78085B` FOREIGN KEY (`model_parameter_set_id`) REFERENCES `model` (`id`) ON DELETE SET NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;


DROP TABLE IF EXISTS `plot`;
CREATE TABLE `plot` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `locality_id` int(11) DEFAULT NULL,
  `soil_origin_locality_id` int(11) DEFAULT NULL,
  `crop_id` int(11) DEFAULT NULL,
  `agrotechnology_id` int(11) DEFAULT NULL,
  `name` varchar(128) COLLATE utf8mb4_unicode_ci NOT NULL,
  `established` date NOT NULL,
  `plot_width` double NOT NULL,
  `plot_length` double NOT NULL,
  `plot_slope` double NOT NULL,
  `note_cz` varchar(512) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `note_en` varchar(512) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `protection_measure_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  KEY `IDX_BEBB8F8988823A92` (`locality_id`) USING BTREE,
  KEY `IDX_BEBB8F8943F85AAA` (`soil_origin_locality_id`) USING BTREE,
  KEY `IDX_BEBB8F89888579EE` (`crop_id`) USING BTREE,
  KEY `IDX_BEBB8F89C0C6DA01` (`agrotechnology_id`) USING BTREE,
  KEY `IDX_BEBB8F892F01CFE` (`protection_measure_id`),
  CONSTRAINT `FK_BEBB8F892F01CFE` FOREIGN KEY (`protection_measure_id`) REFERENCES `protection_measure` (`id`),
  CONSTRAINT `FK_BEBB8F8943F85AAA` FOREIGN KEY (`soil_origin_locality_id`) REFERENCES `locality` (`id`) ON DELETE SET NULL,
  CONSTRAINT `FK_BEBB8F8988823A92` FOREIGN KEY (`locality_id`) REFERENCES `locality` (`id`) ON DELETE CASCADE,
  CONSTRAINT `FK_BEBB8F89888579EE` FOREIGN KEY (`crop_id`) REFERENCES `crop` (`id`) ON DELETE SET NULL,
  CONSTRAINT `FK_BEBB8F89C0C6DA01` FOREIGN KEY (`agrotechnology_id`) REFERENCES `agrotechnology` (`id`) ON DELETE SET NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;


DROP TABLE IF EXISTS `project`;
CREATE TABLE `project` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `project_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description_cz` varchar(512) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description_en` varchar(512) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `funding_agency` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `project_code` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;


DROP TABLE IF EXISTS `project_organization`;
CREATE TABLE `project_organization` (
  `project_id` int(11) NOT NULL,
  `organization_id` int(11) NOT NULL,
  PRIMARY KEY (`project_id`,`organization_id`) USING BTREE,
  KEY `IDX_EB49871F166D1F9C` (`project_id`) USING BTREE,
  KEY `IDX_EB49871F32C8A3DE` (`organization_id`) USING BTREE,
  CONSTRAINT `FK_EB49871F166D1F9C` FOREIGN KEY (`project_id`) REFERENCES `project` (`id`) ON DELETE CASCADE,
  CONSTRAINT `FK_EB49871F32C8A3DE` FOREIGN KEY (`organization_id`) REFERENCES `organization` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;


DROP TABLE IF EXISTS `protection_measure`;
CREATE TABLE `protection_measure` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name_cz` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `name_en` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description_cz` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description_en` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


DROP TABLE IF EXISTS `quality_index`;
CREATE TABLE `quality_index` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name_cz` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `name_en` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description_cz` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description_en` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


DROP TABLE IF EXISTS `record`;
CREATE TABLE `record` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `measurement_id` int(11) DEFAULT NULL,
  `record_type_id` int(11) DEFAULT NULL,
  `unit_id` int(11) DEFAULT NULL,
  `note_cz` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `note_en` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `related_value_xunit_id` int(11) DEFAULT NULL,
  `related_value_yunit_id` int(11) DEFAULT NULL,
  `related_value_zunit_id` int(11) DEFAULT NULL,
  `quality_index_id` int(11) DEFAULT NULL,
  `is_timeline` tinyint(1) DEFAULT NULL,
  `description_cz` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description_en` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  KEY `IDX_9B349F91924EA134` (`measurement_id`) USING BTREE,
  KEY `IDX_9B349F9172938CEE` (`record_type_id`) USING BTREE,
  KEY `IDX_9B349F91F8BD700D` (`unit_id`) USING BTREE,
  KEY `IDX_9B349F915247E50D` (`related_value_xunit_id`) USING BTREE,
  KEY `IDX_9B349F919EEDE593` (`related_value_yunit_id`) USING BTREE,
  KEY `IDX_9B349F911062E270` (`related_value_zunit_id`) USING BTREE,
  KEY `IDX_9B349F919053FA15` (`quality_index_id`),
  CONSTRAINT `FK_9B349F911062E270` FOREIGN KEY (`related_value_zunit_id`) REFERENCES `unit` (`id`) ON DELETE SET NULL,
  CONSTRAINT `FK_9B349F915247E50D` FOREIGN KEY (`related_value_xunit_id`) REFERENCES `unit` (`id`) ON DELETE SET NULL,
  CONSTRAINT `FK_9B349F9172938CEE` FOREIGN KEY (`record_type_id`) REFERENCES `record_type` (`id`) ON DELETE SET NULL,
  CONSTRAINT `FK_9B349F919053FA15` FOREIGN KEY (`quality_index_id`) REFERENCES `quality_index` (`id`),
  CONSTRAINT `FK_9B349F91924EA134` FOREIGN KEY (`measurement_id`) REFERENCES `measurement` (`id`) ON DELETE SET NULL,
  CONSTRAINT `FK_9B349F919EEDE593` FOREIGN KEY (`related_value_yunit_id`) REFERENCES `unit` (`id`) ON DELETE SET NULL,
  CONSTRAINT `FK_9B349F91F8BD700D` FOREIGN KEY (`unit_id`) REFERENCES `unit` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;


DROP TABLE IF EXISTS `record_record`;
CREATE TABLE `record_record` (
  `record_source` int(11) NOT NULL,
  `record_target` int(11) NOT NULL,
  PRIMARY KEY (`record_source`,`record_target`) USING BTREE,
  KEY `IDX_F968D9EF3DD6390D` (`record_source`) USING BTREE,
  KEY `IDX_F968D9EF24336982` (`record_target`) USING BTREE,
  CONSTRAINT `FK_F968D9EF24336982` FOREIGN KEY (`record_target`) REFERENCES `record` (`id`) ON DELETE CASCADE,
  CONSTRAINT `FK_F968D9EF3DD6390D` FOREIGN KEY (`record_source`) REFERENCES `record` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;


DROP TABLE IF EXISTS `record_type`;
CREATE TABLE `record_type` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name_cz` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `name_en` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description_en` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description_cz` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;


DROP TABLE IF EXISTS `run`;
CREATE TABLE `run` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `soil_sample_bulk_id` int(11) DEFAULT NULL,
  `bulk_assignment_type_id` int(11) DEFAULT NULL,
  `soil_sample_texture_id` int(11) DEFAULT NULL,
  `texture_assignment_type_id` int(11) DEFAULT NULL,
  `init_moisture_id` int(11) DEFAULT NULL,
  `rain_intensity_id` int(11) DEFAULT NULL,
  `runoff_start` time DEFAULT NULL,
  `crop_pictures` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `plot_pictures` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `raw_data_path` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `note_cz` varchar(512) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `note_en` varchar(512) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `ponding_start` time DEFAULT NULL,
  `soil_sample_corg_id` int(11) DEFAULT NULL,
  `corg_assignment_type_id` int(11) DEFAULT NULL,
  `plot_id` int(11) DEFAULT NULL,
  `run_group_id` int(11) DEFAULT NULL,
  `surface_cover_id` int(11) DEFAULT NULL,
  `crop_bbch` int(11) DEFAULT NULL,
  `crop_condition_cz` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `crop_condition_en` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  KEY `IDX_5076A4C074BB7406` (`soil_sample_bulk_id`) USING BTREE,
  KEY `IDX_5076A4C0AD5EAFCA` (`bulk_assignment_type_id`) USING BTREE,
  KEY `IDX_5076A4C09380E88E` (`soil_sample_texture_id`) USING BTREE,
  KEY `IDX_5076A4C0F6E9C619` (`texture_assignment_type_id`) USING BTREE,
  KEY `IDX_5076A4C08D74D324` (`init_moisture_id`) USING BTREE,
  KEY `IDX_5076A4C059CE4046` (`rain_intensity_id`) USING BTREE,
  KEY `IDX_5076A4C0E587C814` (`soil_sample_corg_id`) USING BTREE,
  KEY `IDX_5076A4C043D4C368` (`corg_assignment_type_id`) USING BTREE,
  KEY `IDX_5076A4C0680D0B01` (`plot_id`),
  KEY `IDX_5076A4C0C5629BFF` (`run_group_id`),
  KEY `IDX_5076A4C09D3832BF` (`surface_cover_id`),
  CONSTRAINT `FK_5076A4C043D4C368` FOREIGN KEY (`corg_assignment_type_id`) REFERENCES `assignment_type` (`id`) ON DELETE SET NULL,
  CONSTRAINT `FK_5076A4C059CE4046` FOREIGN KEY (`rain_intensity_id`) REFERENCES `record` (`id`) ON DELETE SET NULL,
  CONSTRAINT `FK_5076A4C0680D0B01` FOREIGN KEY (`plot_id`) REFERENCES `plot` (`id`) ON DELETE SET NULL,
  CONSTRAINT `FK_5076A4C074BB7406` FOREIGN KEY (`soil_sample_bulk_id`) REFERENCES `soil_sample` (`id`) ON DELETE SET NULL,
  CONSTRAINT `FK_5076A4C08D74D324` FOREIGN KEY (`init_moisture_id`) REFERENCES `record` (`id`) ON DELETE SET NULL,
  CONSTRAINT `FK_5076A4C09380E88E` FOREIGN KEY (`soil_sample_texture_id`) REFERENCES `soil_sample` (`id`) ON DELETE SET NULL,
  CONSTRAINT `FK_5076A4C09D3832BF` FOREIGN KEY (`surface_cover_id`) REFERENCES `record` (`id`) ON DELETE SET NULL,
  CONSTRAINT `FK_5076A4C0AD5EAFCA` FOREIGN KEY (`bulk_assignment_type_id`) REFERENCES `assignment_type` (`id`) ON DELETE SET NULL,
  CONSTRAINT `FK_5076A4C0C5629BFF` FOREIGN KEY (`run_group_id`) REFERENCES `run_group` (`id`),
  CONSTRAINT `FK_5076A4C0E587C814` FOREIGN KEY (`soil_sample_corg_id`) REFERENCES `soil_sample` (`id`) ON DELETE SET NULL,
  CONSTRAINT `FK_5076A4C0F6E9C619` FOREIGN KEY (`texture_assignment_type_id`) REFERENCES `assignment_type` (`id`) ON DELETE SET NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;


DROP TABLE IF EXISTS `run_group`;
CREATE TABLE `run_group` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `run_type_id` int(11) DEFAULT NULL,
  `sequence_id` int(11) DEFAULT NULL,
  `datetime` datetime NOT NULL,
  `preceding_precipitation` double DEFAULT NULL,
  `note_cz` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `note_en` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `IDX_515F5E4B9D2EFCB3` (`run_type_id`),
  KEY `IDX_515F5E4B98FB19AE` (`sequence_id`),
  CONSTRAINT `FK_515F5E4B98FB19AE` FOREIGN KEY (`sequence_id`) REFERENCES `sequence` (`id`) ON DELETE SET NULL,
  CONSTRAINT `FK_515F5E4B9D2EFCB3` FOREIGN KEY (`run_type_id`) REFERENCES `run_type` (`id`) ON DELETE SET NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


DROP TABLE IF EXISTS `run_type`;
CREATE TABLE `run_type` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name_cz` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `name_en` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description_cz` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description_en` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;


DROP TABLE IF EXISTS `sequence`;
CREATE TABLE `sequence` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `simulator_id` int(11) DEFAULT NULL,
  `date` date NOT NULL,
  `deleted` tinyint(1) DEFAULT 0,
  `user_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  KEY `IDX_5286D72BE4D71D57` (`simulator_id`) USING BTREE,
  KEY `IDX_5286D72BA76ED395` (`user_id`),
  CONSTRAINT `FK_5286D72BA76ED395` FOREIGN KEY (`user_id`) REFERENCES `user` (`id`),
  CONSTRAINT `FK_5286D72BE4D71D57` FOREIGN KEY (`simulator_id`) REFERENCES `simulator` (`id`) ON DELETE SET NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;


DROP TABLE IF EXISTS `sequence_project`;
CREATE TABLE `sequence_project` (
  `project_id` int(11) NOT NULL,
  `sequence_id` int(11) NOT NULL,
  PRIMARY KEY (`project_id`,`sequence_id`) USING BTREE,
  KEY `IDX_6FC85CF0166D1F9C` (`project_id`) USING BTREE,
  KEY `IDX_6FC85CF098FB19AE` (`sequence_id`) USING BTREE,
  CONSTRAINT `FK_6FC85CF0166D1F9C` FOREIGN KEY (`project_id`) REFERENCES `project` (`id`) ON DELETE CASCADE,
  CONSTRAINT `FK_6FC85CF098FB19AE` FOREIGN KEY (`sequence_id`) REFERENCES `sequence` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;


DROP TABLE IF EXISTS `simulator`;
CREATE TABLE `simulator` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `organization_id` int(11) DEFAULT NULL,
  `name_cz` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `name_en` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description_cz` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description_en` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `reference` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  KEY `IDX_81C34CA732C8A3DE` (`organization_id`) USING BTREE,
  CONSTRAINT `FK_81C34CA732C8A3DE` FOREIGN KEY (`organization_id`) REFERENCES `organization` (`id`) ON DELETE SET NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;


DROP TABLE IF EXISTS `soil_sample`;
CREATE TABLE `soil_sample` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `processed_at_id` int(11) DEFAULT NULL,
  `plot_id` int(11) DEFAULT NULL,
  `wrb_soil_class_id` int(11) DEFAULT NULL,
  `locality_id` int(11) DEFAULT NULL,
  `run_id` int(11) DEFAULT NULL,
  `corg_id` int(11) DEFAULT NULL,
  `bulk_density_id` int(11) DEFAULT NULL,
  `moisture_id` int(11) DEFAULT NULL,
  `date_sampled` date NOT NULL,
  `sample_location` varchar(500) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description_cz` varchar(512) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description_en` varchar(512) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `sample_depth_m` double DEFAULT NULL,
  `date_processed` date DEFAULT NULL,
  `texture_record_id` int(11) DEFAULT NULL,
  `raw_data_path` varchar(512) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  KEY `IDX_CE7B16D69A37EDDE` (`processed_at_id`) USING BTREE,
  KEY `IDX_CE7B16D6680D0B01` (`plot_id`) USING BTREE,
  KEY `IDX_CE7B16D688823A92` (`locality_id`) USING BTREE,
  KEY `IDX_CE7B16D684E3FEC4` (`run_id`) USING BTREE,
  KEY `IDX_CE7B16D6627354BE` (`corg_id`) USING BTREE,
  KEY `IDX_CE7B16D6FEF5B8B` (`bulk_density_id`) USING BTREE,
  KEY `IDX_CE7B16D657165454` (`moisture_id`) USING BTREE,
  KEY `IDX_CE7B16D6A9F3404` (`texture_record_id`) USING BTREE,
  KEY `IDX_CE7B16D6D15BAB48` (`wrb_soil_class_id`) USING BTREE,
  KEY `IDX_CE7B16D6A76ED395` (`user_id`),
  CONSTRAINT `FK_CE7B16D657165454` FOREIGN KEY (`moisture_id`) REFERENCES `record` (`id`) ON DELETE SET NULL,
  CONSTRAINT `FK_CE7B16D6627354BE` FOREIGN KEY (`corg_id`) REFERENCES `record` (`id`) ON DELETE SET NULL,
  CONSTRAINT `FK_CE7B16D6680D0B01` FOREIGN KEY (`plot_id`) REFERENCES `plot` (`id`) ON DELETE SET NULL,
  CONSTRAINT `FK_CE7B16D684E3FEC4` FOREIGN KEY (`run_id`) REFERENCES `run` (`id`) ON DELETE SET NULL,
  CONSTRAINT `FK_CE7B16D688823A92` FOREIGN KEY (`locality_id`) REFERENCES `locality` (`id`) ON DELETE SET NULL,
  CONSTRAINT `FK_CE7B16D69A37EDDE` FOREIGN KEY (`processed_at_id`) REFERENCES `organization` (`id`) ON DELETE SET NULL,
  CONSTRAINT `FK_CE7B16D6A76ED395` FOREIGN KEY (`user_id`) REFERENCES `user` (`id`),
  CONSTRAINT `FK_CE7B16D6A9F3404` FOREIGN KEY (`texture_record_id`) REFERENCES `record` (`id`) ON DELETE SET NULL,
  CONSTRAINT `FK_CE7B16D6D15BAB48` FOREIGN KEY (`wrb_soil_class_id`) REFERENCES `wrb_soil_class` (`id`) ON DELETE SET NULL,
  CONSTRAINT `FK_CE7B16D6FEF5B8B` FOREIGN KEY (`bulk_density_id`) REFERENCES `record` (`id`) ON DELETE SET NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;


DROP TABLE IF EXISTS `tillage_sequence`;
CREATE TABLE `tillage_sequence` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `agrotechnology_id` int(11) DEFAULT NULL,
  `operation_id` int(11) DEFAULT NULL,
  `date` date NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  KEY `IDX_865871EBC0C6DA01` (`agrotechnology_id`) USING BTREE,
  KEY `IDX_865871EB44AC3583` (`operation_id`) USING BTREE,
  CONSTRAINT `FK_865871EB44AC3583` FOREIGN KEY (`operation_id`) REFERENCES `operation` (`id`) ON DELETE SET NULL,
  CONSTRAINT `FK_865871EBC0C6DA01` FOREIGN KEY (`agrotechnology_id`) REFERENCES `agrotechnology` (`id`) ON DELETE SET NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;


DROP TABLE IF EXISTS `unit`;
CREATE TABLE `unit` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `decimals` int(11) NOT NULL,
  `name_cz` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `name_en` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `unit` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description_cz` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description_en` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;


DROP TABLE IF EXISTS `user`;
CREATE TABLE `user` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `fullname` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `organization_id` int(11) DEFAULT NULL,
  `role` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  KEY `IDX_8D93D64932C8A3DE` (`organization_id`),
  CONSTRAINT `FK_8D93D64932C8A3DE` FOREIGN KEY (`organization_id`) REFERENCES `organization` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;


DROP TABLE IF EXISTS `wrb_soil_class`;
CREATE TABLE `wrb_soil_class` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `code` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;


-- 2022-11-29 11:11:23
