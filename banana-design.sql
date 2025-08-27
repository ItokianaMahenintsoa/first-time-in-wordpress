-- --------------------------------------------------------
-- Hôte:                         127.0.0.1
-- Version du serveur:           8.4.3 - MySQL Community Server - GPL
-- SE du serveur:                Win64
-- HeidiSQL Version:             12.8.0.6908
-- --------------------------------------------------------

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8 */;
/*!50503 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;


-- Listage de la structure de la base pour banana-design
CREATE DATABASE IF NOT EXISTS `banana-design` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `banana-design`;

-- Listage de la structure de table banana-design. wp_actionscheduler_actions
CREATE TABLE IF NOT EXISTS `wp_actionscheduler_actions` (
  `action_id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `hook` varchar(191) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `status` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `scheduled_date_gmt` datetime DEFAULT '0000-00-00 00:00:00',
  `scheduled_date_local` datetime DEFAULT '0000-00-00 00:00:00',
  `priority` tinyint unsigned NOT NULL DEFAULT '10',
  `args` varchar(191) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `schedule` longtext COLLATE utf8mb4_unicode_520_ci,
  `group_id` bigint unsigned NOT NULL DEFAULT '0',
  `attempts` int NOT NULL DEFAULT '0',
  `last_attempt_gmt` datetime DEFAULT '0000-00-00 00:00:00',
  `last_attempt_local` datetime DEFAULT '0000-00-00 00:00:00',
  `claim_id` bigint unsigned NOT NULL DEFAULT '0',
  `extended_args` varchar(8000) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  PRIMARY KEY (`action_id`),
  KEY `hook_status_scheduled_date_gmt` (`hook`(163),`status`,`scheduled_date_gmt`),
  KEY `status_scheduled_date_gmt` (`status`,`scheduled_date_gmt`),
  KEY `scheduled_date_gmt` (`scheduled_date_gmt`),
  KEY `args` (`args`),
  KEY `group_id` (`group_id`),
  KEY `last_attempt_gmt` (`last_attempt_gmt`),
  KEY `claim_id_status_priority_scheduled_date_gmt` (`claim_id`,`status`,`priority`,`scheduled_date_gmt`),
  KEY `status_last_attempt_gmt` (`status`,`last_attempt_gmt`),
  KEY `status_claim_id` (`status`,`claim_id`)
) ENGINE=InnoDB AUTO_INCREMENT=64 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- Les données exportées n'étaient pas sélectionnées.

-- Listage de la structure de table banana-design. wp_actionscheduler_claims
CREATE TABLE IF NOT EXISTS `wp_actionscheduler_claims` (
  `claim_id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `date_created_gmt` datetime DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`claim_id`),
  KEY `date_created_gmt` (`date_created_gmt`)
) ENGINE=InnoDB AUTO_INCREMENT=612 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- Les données exportées n'étaient pas sélectionnées.

-- Listage de la structure de table banana-design. wp_actionscheduler_groups
CREATE TABLE IF NOT EXISTS `wp_actionscheduler_groups` (
  `group_id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `slug` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  PRIMARY KEY (`group_id`),
  KEY `slug` (`slug`(191))
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- Les données exportées n'étaient pas sélectionnées.

-- Listage de la structure de table banana-design. wp_actionscheduler_logs
CREATE TABLE IF NOT EXISTS `wp_actionscheduler_logs` (
  `log_id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `action_id` bigint unsigned NOT NULL,
  `message` text COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `log_date_gmt` datetime DEFAULT '0000-00-00 00:00:00',
  `log_date_local` datetime DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`log_id`),
  KEY `action_id` (`action_id`),
  KEY `log_date_gmt` (`log_date_gmt`)
) ENGINE=InnoDB AUTO_INCREMENT=101 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- Les données exportées n'étaient pas sélectionnées.

-- Listage de la structure de table banana-design. wp_blc_filters
CREATE TABLE IF NOT EXISTS `wp_blc_filters` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(100) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `params` text COLLATE utf8mb4_unicode_520_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- Les données exportées n'étaient pas sélectionnées.

-- Listage de la structure de table banana-design. wp_blc_instances
CREATE TABLE IF NOT EXISTS `wp_blc_instances` (
  `instance_id` int unsigned NOT NULL AUTO_INCREMENT,
  `link_id` int unsigned NOT NULL,
  `container_id` int unsigned NOT NULL,
  `container_type` varchar(40) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'post',
  `link_text` text COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `parser_type` varchar(40) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'link',
  `container_field` varchar(250) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `link_context` varchar(250) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `raw_url` text COLLATE utf8mb4_unicode_520_ci NOT NULL,
  PRIMARY KEY (`instance_id`),
  KEY `link_id` (`link_id`),
  KEY `source_id` (`container_type`,`container_id`),
  KEY `parser_type` (`parser_type`)
) ENGINE=InnoDB AUTO_INCREMENT=472 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- Les données exportées n'étaient pas sélectionnées.

-- Listage de la structure de table banana-design. wp_blc_links
CREATE TABLE IF NOT EXISTS `wp_blc_links` (
  `link_id` int unsigned NOT NULL AUTO_INCREMENT,
  `url` text CHARACTER SET utf8mb3 COLLATE utf8mb3_bin NOT NULL,
  `first_failure` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `last_check` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `last_success` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `last_check_attempt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `check_count` int unsigned NOT NULL DEFAULT '0',
  `final_url` text CHARACTER SET latin1 COLLATE latin1_general_cs NOT NULL,
  `redirect_count` smallint unsigned NOT NULL DEFAULT '0',
  `log` text COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `http_code` smallint NOT NULL DEFAULT '0',
  `status_code` varchar(100) COLLATE utf8mb4_unicode_520_ci DEFAULT '',
  `status_text` varchar(250) COLLATE utf8mb4_unicode_520_ci DEFAULT '',
  `request_duration` float NOT NULL DEFAULT '0',
  `timeout` tinyint unsigned NOT NULL DEFAULT '0',
  `broken` tinyint unsigned NOT NULL DEFAULT '0',
  `warning` tinyint unsigned NOT NULL DEFAULT '0',
  `may_recheck` tinyint(1) NOT NULL DEFAULT '1',
  `being_checked` tinyint(1) NOT NULL DEFAULT '0',
  `result_hash` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `false_positive` tinyint(1) NOT NULL DEFAULT '0',
  `dismissed` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`link_id`),
  KEY `url` (`url`(150)),
  KEY `final_url` (`final_url`(150)),
  KEY `http_code` (`http_code`),
  KEY `broken` (`broken`),
  KEY `last_check_attempt` (`last_check_attempt`),
  KEY `may_recheck` (`may_recheck`),
  KEY `check_count` (`check_count`)
) ENGINE=InnoDB AUTO_INCREMENT=35 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- Les données exportées n'étaient pas sélectionnées.

-- Listage de la structure de table banana-design. wp_blc_synch
CREATE TABLE IF NOT EXISTS `wp_blc_synch` (
  `container_id` int unsigned NOT NULL,
  `container_type` varchar(40) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `synched` tinyint unsigned NOT NULL,
  `last_synch` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`container_type`,`container_id`),
  KEY `synched` (`synched`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- Les données exportées n'étaient pas sélectionnées.

-- Listage de la structure de table banana-design. wp_commentmeta
CREATE TABLE IF NOT EXISTS `wp_commentmeta` (
  `meta_id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `comment_id` bigint unsigned NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_520_ci,
  PRIMARY KEY (`meta_id`),
  KEY `comment_id` (`comment_id`),
  KEY `meta_key` (`meta_key`(191))
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- Les données exportées n'étaient pas sélectionnées.

-- Listage de la structure de table banana-design. wp_comments
CREATE TABLE IF NOT EXISTS `wp_comments` (
  `comment_ID` bigint unsigned NOT NULL AUTO_INCREMENT,
  `comment_post_ID` bigint unsigned NOT NULL DEFAULT '0',
  `comment_author` tinytext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `comment_author_email` varchar(100) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `comment_author_url` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `comment_author_IP` varchar(100) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `comment_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `comment_date_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `comment_content` text COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `comment_karma` int NOT NULL DEFAULT '0',
  `comment_approved` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '1',
  `comment_agent` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `comment_type` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'comment',
  `comment_parent` bigint unsigned NOT NULL DEFAULT '0',
  `user_id` bigint unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`comment_ID`),
  KEY `comment_post_ID` (`comment_post_ID`),
  KEY `comment_approved_date_gmt` (`comment_approved`,`comment_date_gmt`),
  KEY `comment_date_gmt` (`comment_date_gmt`),
  KEY `comment_parent` (`comment_parent`),
  KEY `comment_author_email` (`comment_author_email`(10))
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- Les données exportées n'étaient pas sélectionnées.

-- Listage de la structure de table banana-design. wp_e_events
CREATE TABLE IF NOT EXISTS `wp_e_events` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `event_data` text COLLATE utf8mb4_unicode_520_ci,
  `created_at` datetime NOT NULL,
  PRIMARY KEY (`id`),
  KEY `created_at_index` (`created_at`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- Les données exportées n'étaient pas sélectionnées.

-- Listage de la structure de table banana-design. wp_hustle_entries
CREATE TABLE IF NOT EXISTS `wp_hustle_entries` (
  `entry_id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `entry_type` varchar(191) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `module_id` bigint unsigned NOT NULL,
  `date_created` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`entry_id`),
  KEY `entry_type` (`entry_type`),
  KEY `entry_module_id` (`module_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- Les données exportées n'étaient pas sélectionnées.

-- Listage de la structure de table banana-design. wp_hustle_entries_meta
CREATE TABLE IF NOT EXISTS `wp_hustle_entries_meta` (
  `meta_id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `entry_id` bigint unsigned NOT NULL,
  `meta_key` varchar(191) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_520_ci,
  `date_created` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `date_updated` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`meta_id`),
  KEY `meta_key` (`meta_key`),
  KEY `meta_entry_id` (`entry_id`),
  KEY `meta_key_object` (`entry_id`,`meta_key`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- Les données exportées n'étaient pas sélectionnées.

-- Listage de la structure de table banana-design. wp_hustle_modules
CREATE TABLE IF NOT EXISTS `wp_hustle_modules` (
  `module_id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `blog_id` bigint unsigned NOT NULL DEFAULT '0',
  `module_name` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `module_type` varchar(100) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `active` tinyint DEFAULT '1',
  `module_mode` varchar(100) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  PRIMARY KEY (`module_id`),
  KEY `active` (`active`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- Les données exportées n'étaient pas sélectionnées.

-- Listage de la structure de table banana-design. wp_hustle_modules_meta
CREATE TABLE IF NOT EXISTS `wp_hustle_modules_meta` (
  `meta_id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `module_id` bigint unsigned NOT NULL DEFAULT '0',
  `meta_key` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `meta_value` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci,
  PRIMARY KEY (`meta_id`),
  KEY `module_id` (`module_id`),
  KEY `meta_key` (`meta_key`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- Les données exportées n'étaient pas sélectionnées.

-- Listage de la structure de table banana-design. wp_hustle_tracking
CREATE TABLE IF NOT EXISTS `wp_hustle_tracking` (
  `tracking_id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `module_id` bigint unsigned NOT NULL,
  `page_id` bigint unsigned NOT NULL,
  `module_type` varchar(100) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `action` varchar(100) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `ip` varchar(191) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `counter` mediumint unsigned NOT NULL DEFAULT '1',
  `date_created` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `date_updated` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`tracking_id`),
  KEY `tracking_module_id` (`module_id`),
  KEY `action` (`action`),
  KEY `tracking_module_object` (`action`,`module_id`,`module_type`),
  KEY `tracking_module_object_ip` (`module_id`,`tracking_id`,`ip`),
  KEY `tracking_date_created` (`date_created` DESC)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- Les données exportées n'étaient pas sélectionnées.

-- Listage de la structure de table banana-design. wp_imagify_files
CREATE TABLE IF NOT EXISTS `wp_imagify_files` (
  `file_id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `folder_id` bigint unsigned NOT NULL DEFAULT '0',
  `file_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `path` varchar(191) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `hash` varchar(32) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `mime_type` varchar(100) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `modified` tinyint unsigned NOT NULL DEFAULT '0',
  `width` smallint unsigned NOT NULL DEFAULT '0',
  `height` smallint unsigned NOT NULL DEFAULT '0',
  `original_size` int unsigned NOT NULL DEFAULT '0',
  `optimized_size` int unsigned DEFAULT NULL,
  `percent` smallint unsigned DEFAULT NULL,
  `optimization_level` tinyint unsigned DEFAULT NULL,
  `status` varchar(20) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `error` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `data` longtext COLLATE utf8mb4_unicode_520_ci,
  PRIMARY KEY (`file_id`),
  UNIQUE KEY `path` (`path`),
  KEY `folder_id` (`folder_id`),
  KEY `optimization_level` (`optimization_level`),
  KEY `status` (`status`),
  KEY `modified` (`modified`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- Les données exportées n'étaient pas sélectionnées.

-- Listage de la structure de table banana-design. wp_imagify_folders
CREATE TABLE IF NOT EXISTS `wp_imagify_folders` (
  `folder_id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `path` varchar(191) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `active` tinyint unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`folder_id`),
  UNIQUE KEY `path` (`path`),
  KEY `active` (`active`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- Les données exportées n'étaient pas sélectionnées.

-- Listage de la structure de table banana-design. wp_links
CREATE TABLE IF NOT EXISTS `wp_links` (
  `link_id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `link_url` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `link_name` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `link_image` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `link_target` varchar(25) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `link_description` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `link_visible` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'Y',
  `link_owner` bigint unsigned NOT NULL DEFAULT '1',
  `link_rating` int NOT NULL DEFAULT '0',
  `link_updated` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `link_rel` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `link_notes` mediumtext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `link_rss` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  PRIMARY KEY (`link_id`),
  KEY `link_visible` (`link_visible`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- Les données exportées n'étaient pas sélectionnées.

-- Listage de la structure de table banana-design. wp_options
CREATE TABLE IF NOT EXISTS `wp_options` (
  `option_id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `option_name` varchar(191) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `option_value` longtext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `autoload` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'yes',
  PRIMARY KEY (`option_id`),
  UNIQUE KEY `option_name` (`option_name`),
  KEY `autoload` (`autoload`)
) ENGINE=InnoDB AUTO_INCREMENT=1522 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- Les données exportées n'étaient pas sélectionnées.

-- Listage de la structure de table banana-design. wp_postmeta
CREATE TABLE IF NOT EXISTS `wp_postmeta` (
  `meta_id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `post_id` bigint unsigned NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_520_ci,
  PRIMARY KEY (`meta_id`),
  KEY `post_id` (`post_id`),
  KEY `meta_key` (`meta_key`(191))
) ENGINE=InnoDB AUTO_INCREMENT=1107 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- Les données exportées n'étaient pas sélectionnées.

-- Listage de la structure de table banana-design. wp_posts
CREATE TABLE IF NOT EXISTS `wp_posts` (
  `ID` bigint unsigned NOT NULL AUTO_INCREMENT,
  `post_author` bigint unsigned NOT NULL DEFAULT '0',
  `post_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_date_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_content` longtext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `post_title` text COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `post_excerpt` text COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `post_status` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'publish',
  `comment_status` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'open',
  `ping_status` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'open',
  `post_password` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `post_name` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `to_ping` text COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `pinged` text COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `post_modified` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_modified_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_content_filtered` longtext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `post_parent` bigint unsigned NOT NULL DEFAULT '0',
  `guid` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `menu_order` int NOT NULL DEFAULT '0',
  `post_type` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'post',
  `post_mime_type` varchar(100) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `comment_count` bigint NOT NULL DEFAULT '0',
  PRIMARY KEY (`ID`),
  KEY `post_name` (`post_name`(191)),
  KEY `type_status_date` (`post_type`,`post_status`,`post_date`,`ID`),
  KEY `post_parent` (`post_parent`),
  KEY `post_author` (`post_author`)
) ENGINE=InnoDB AUTO_INCREMENT=670 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- Les données exportées n'étaient pas sélectionnées.

-- Listage de la structure de table banana-design. wp_seopress_content_analysis
CREATE TABLE IF NOT EXISTS `wp_seopress_content_analysis` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `post_id` bigint DEFAULT NULL,
  `title` longtext COLLATE utf8mb4_unicode_520_ci,
  `description` longtext COLLATE utf8mb4_unicode_520_ci,
  `og_title` longtext COLLATE utf8mb4_unicode_520_ci,
  `og_description` longtext COLLATE utf8mb4_unicode_520_ci,
  `og_image` longtext COLLATE utf8mb4_unicode_520_ci,
  `og_url` longtext COLLATE utf8mb4_unicode_520_ci,
  `og_site_name` longtext COLLATE utf8mb4_unicode_520_ci,
  `twitter_title` longtext COLLATE utf8mb4_unicode_520_ci,
  `twitter_description` longtext COLLATE utf8mb4_unicode_520_ci,
  `twitter_image` longtext COLLATE utf8mb4_unicode_520_ci,
  `twitter_image_src` longtext COLLATE utf8mb4_unicode_520_ci,
  `canonical` longtext COLLATE utf8mb4_unicode_520_ci,
  `h1` longtext COLLATE utf8mb4_unicode_520_ci,
  `h2` longtext COLLATE utf8mb4_unicode_520_ci,
  `h3` longtext COLLATE utf8mb4_unicode_520_ci,
  `images` longtext COLLATE utf8mb4_unicode_520_ci,
  `meta_robots` longtext COLLATE utf8mb4_unicode_520_ci,
  `meta_google` longtext COLLATE utf8mb4_unicode_520_ci,
  `links_no_follow` longtext COLLATE utf8mb4_unicode_520_ci,
  `outbound_links` longtext COLLATE utf8mb4_unicode_520_ci,
  `internal_links` longtext COLLATE utf8mb4_unicode_520_ci,
  `json_schemas` longtext COLLATE utf8mb4_unicode_520_ci,
  `keywords` text COLLATE utf8mb4_unicode_520_ci,
  `permalink` text COLLATE utf8mb4_unicode_520_ci,
  `score` text COLLATE utf8mb4_unicode_520_ci,
  `analysis_date` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `idx_post_id` (`post_id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- Les données exportées n'étaient pas sélectionnées.

-- Listage de la structure de table banana-design. wp_termmeta
CREATE TABLE IF NOT EXISTS `wp_termmeta` (
  `meta_id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `term_id` bigint unsigned NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_520_ci,
  PRIMARY KEY (`meta_id`),
  KEY `term_id` (`term_id`),
  KEY `meta_key` (`meta_key`(191))
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- Les données exportées n'étaient pas sélectionnées.

-- Listage de la structure de table banana-design. wp_terms
CREATE TABLE IF NOT EXISTS `wp_terms` (
  `term_id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `slug` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `term_group` bigint NOT NULL DEFAULT '0',
  PRIMARY KEY (`term_id`),
  KEY `slug` (`slug`(191)),
  KEY `name` (`name`(191))
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- Les données exportées n'étaient pas sélectionnées.

-- Listage de la structure de table banana-design. wp_term_relationships
CREATE TABLE IF NOT EXISTS `wp_term_relationships` (
  `object_id` bigint unsigned NOT NULL DEFAULT '0',
  `term_taxonomy_id` bigint unsigned NOT NULL DEFAULT '0',
  `term_order` int NOT NULL DEFAULT '0',
  PRIMARY KEY (`object_id`,`term_taxonomy_id`),
  KEY `term_taxonomy_id` (`term_taxonomy_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- Les données exportées n'étaient pas sélectionnées.

-- Listage de la structure de table banana-design. wp_term_taxonomy
CREATE TABLE IF NOT EXISTS `wp_term_taxonomy` (
  `term_taxonomy_id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `term_id` bigint unsigned NOT NULL DEFAULT '0',
  `taxonomy` varchar(32) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `description` longtext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `parent` bigint unsigned NOT NULL DEFAULT '0',
  `count` bigint NOT NULL DEFAULT '0',
  PRIMARY KEY (`term_taxonomy_id`),
  UNIQUE KEY `term_id_taxonomy` (`term_id`,`taxonomy`),
  KEY `taxonomy` (`taxonomy`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- Les données exportées n'étaient pas sélectionnées.

-- Listage de la structure de table banana-design. wp_usermeta
CREATE TABLE IF NOT EXISTS `wp_usermeta` (
  `umeta_id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `user_id` bigint unsigned NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_520_ci,
  PRIMARY KEY (`umeta_id`),
  KEY `user_id` (`user_id`),
  KEY `meta_key` (`meta_key`(191))
) ENGINE=InnoDB AUTO_INCREMENT=27 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- Les données exportées n'étaient pas sélectionnées.

-- Listage de la structure de table banana-design. wp_users
CREATE TABLE IF NOT EXISTS `wp_users` (
  `ID` bigint unsigned NOT NULL AUTO_INCREMENT,
  `user_login` varchar(60) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_pass` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_nicename` varchar(50) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_email` varchar(100) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_url` varchar(100) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_registered` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `user_activation_key` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_status` int NOT NULL DEFAULT '0',
  `display_name` varchar(250) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  PRIMARY KEY (`ID`),
  KEY `user_login_key` (`user_login`),
  KEY `user_nicename` (`user_nicename`),
  KEY `user_email` (`user_email`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- Les données exportées n'étaient pas sélectionnées.

-- Listage de la structure de table banana-design. wp_wpforms_logs
CREATE TABLE IF NOT EXISTS `wp_wpforms_logs` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `title` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `message` longtext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `types` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `create_at` datetime NOT NULL,
  `form_id` bigint DEFAULT NULL,
  `entry_id` bigint DEFAULT NULL,
  `user_id` bigint DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=30 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- Les données exportées n'étaient pas sélectionnées.

-- Listage de la structure de table banana-design. wp_wpforms_payments
CREATE TABLE IF NOT EXISTS `wp_wpforms_payments` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `form_id` bigint NOT NULL,
  `status` varchar(10) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `subtotal_amount` decimal(26,8) NOT NULL DEFAULT '0.00000000',
  `discount_amount` decimal(26,8) NOT NULL DEFAULT '0.00000000',
  `total_amount` decimal(26,8) NOT NULL DEFAULT '0.00000000',
  `currency` varchar(3) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `entry_id` bigint NOT NULL DEFAULT '0',
  `gateway` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `type` varchar(12) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `mode` varchar(4) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `transaction_id` varchar(40) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `customer_id` varchar(40) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `subscription_id` varchar(40) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `subscription_status` varchar(10) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `title` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `date_created_gmt` datetime NOT NULL,
  `date_updated_gmt` datetime NOT NULL,
  `is_published` tinyint(1) NOT NULL DEFAULT '1',
  PRIMARY KEY (`id`),
  KEY `form_id` (`form_id`),
  KEY `status` (`status`(8)),
  KEY `total_amount` (`total_amount`),
  KEY `type` (`type`(8)),
  KEY `transaction_id` (`transaction_id`(32)),
  KEY `customer_id` (`customer_id`(32)),
  KEY `subscription_id` (`subscription_id`(32)),
  KEY `subscription_status` (`subscription_status`(8)),
  KEY `title` (`title`(64))
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- Les données exportées n'étaient pas sélectionnées.

-- Listage de la structure de table banana-design. wp_wpforms_payment_meta
CREATE TABLE IF NOT EXISTS `wp_wpforms_payment_meta` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `payment_id` bigint NOT NULL,
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_520_ci,
  PRIMARY KEY (`id`),
  KEY `payment_id` (`payment_id`),
  KEY `meta_key` (`meta_key`(191)),
  KEY `meta_value` (`meta_value`(191))
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- Les données exportées n'étaient pas sélectionnées.

-- Listage de la structure de table banana-design. wp_wpforms_tasks_meta
CREATE TABLE IF NOT EXISTS `wp_wpforms_tasks_meta` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `action` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `data` longtext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `date` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- Les données exportées n'étaient pas sélectionnées.

/*!40103 SET TIME_ZONE=IFNULL(@OLD_TIME_ZONE, 'system') */;
/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IFNULL(@OLD_FOREIGN_KEY_CHECKS, 1) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40111 SET SQL_NOTES=IFNULL(@OLD_SQL_NOTES, 1) */;
