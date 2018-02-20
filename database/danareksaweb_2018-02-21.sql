# ************************************************************
# Sequel Pro SQL dump
# Version 4541
#
# http://www.sequelpro.com/
# https://github.com/sequelpro/sequelpro
#
# Host: 127.0.0.1 (MySQL 5.7.21)
# Database: danareksaweb
# Generation Time: 2018-02-20 23:35:59 +0000
# ************************************************************


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;


# Dump of table cms_apicustom
# ------------------------------------------------------------

DROP TABLE IF EXISTS `cms_apicustom`;

CREATE TABLE `cms_apicustom` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `permalink` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `tabel` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `aksi` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `kolom` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `orderby` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `sub_query_1` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `sql_where` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `nama` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `keterangan` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `parameter` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `method_type` varchar(25) COLLATE utf8_unicode_ci DEFAULT NULL,
  `parameters` longtext COLLATE utf8_unicode_ci,
  `responses` longtext COLLATE utf8_unicode_ci,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;



# Dump of table cms_apikey
# ------------------------------------------------------------

DROP TABLE IF EXISTS `cms_apikey`;

CREATE TABLE `cms_apikey` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `screetkey` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `hit` int(11) DEFAULT NULL,
  `status` varchar(25) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'active',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;



# Dump of table cms_dashboard
# ------------------------------------------------------------

DROP TABLE IF EXISTS `cms_dashboard`;

CREATE TABLE `cms_dashboard` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `id_cms_privileges` int(11) DEFAULT NULL,
  `content` longtext COLLATE utf8_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;



# Dump of table cms_email_queues
# ------------------------------------------------------------

DROP TABLE IF EXISTS `cms_email_queues`;

CREATE TABLE `cms_email_queues` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `send_at` datetime DEFAULT NULL,
  `email_recipient` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `email_from_email` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `email_from_name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `email_cc_email` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `email_subject` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `email_content` text COLLATE utf8_unicode_ci,
  `email_attachments` text COLLATE utf8_unicode_ci,
  `is_sent` tinyint(1) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;



# Dump of table cms_email_templates
# ------------------------------------------------------------

DROP TABLE IF EXISTS `cms_email_templates`;

CREATE TABLE `cms_email_templates` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `slug` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `subject` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `content` longtext COLLATE utf8_unicode_ci,
  `description` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `from_name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `from_email` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `cc_email` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

LOCK TABLES `cms_email_templates` WRITE;
/*!40000 ALTER TABLE `cms_email_templates` DISABLE KEYS */;

INSERT INTO `cms_email_templates` (`id`, `name`, `slug`, `subject`, `content`, `description`, `from_name`, `from_email`, `cc_email`, `created_at`, `updated_at`)
VALUES
	(1,'Email Template Forgot Password Backend','forgot_password_backend',NULL,'<p>Hi,</p><p>Someone requested forgot password, here is your new password : </p><p>[password]</p><p><br></p><p>--</p><p>Regards,</p><p>Admin</p>','[password]','System','system@crudbooster.com',NULL,'2018-02-11 06:52:13',NULL);

/*!40000 ALTER TABLE `cms_email_templates` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table cms_logs
# ------------------------------------------------------------

DROP TABLE IF EXISTS `cms_logs`;

CREATE TABLE `cms_logs` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `ipaddress` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `useragent` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `url` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `description` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `details` text COLLATE utf8_unicode_ci,
  `id_cms_users` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

LOCK TABLES `cms_logs` WRITE;
/*!40000 ALTER TABLE `cms_logs` DISABLE KEYS */;

INSERT INTO `cms_logs` (`id`, `ipaddress`, `useragent`, `url`, `description`, `details`, `id_cms_users`, `created_at`, `updated_at`)
VALUES
	(1,'172.25.0.1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_12_5) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.132 Safari/537.36','http://localhost:2121/admin/login','admin@crudbooster.com login with IP Address 172.25.0.1','',1,'2018-02-11 06:52:50',NULL),
	(2,'172.25.0.1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_12_5) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.132 Safari/537.36','http://localhost:2121/admin/module_generator/delete/12','Delete data News at Module Generator','',1,'2018-02-11 07:14:42',NULL),
	(3,'172.25.0.1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_12_5) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.132 Safari/537.36','http://localhost:2121/admin/module_generator/delete/13','Delete data News at Module Generator','',1,'2018-02-11 07:33:13',NULL),
	(4,'172.25.0.1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_12_5) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.132 Safari/537.36','http://localhost:2121/admin/news/add-save','Add New Data Test News Danareksa at News','',1,'2018-02-11 07:34:44',NULL),
	(5,'172.25.0.1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_12_5) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.132 Safari/537.36','http://localhost:2121/admin/menu_management/add-save','Add New Data Resources at Menu Management','',1,'2018-02-11 07:36:28',NULL),
	(6,'172.25.0.1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_12_5) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.132 Safari/537.36','http://localhost:2121/admin/menu_management/add-save','Add New Data News at Menu Management','',1,'2018-02-11 07:37:50',NULL),
	(7,'172.25.0.1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_12_5) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.132 Safari/537.36','http://localhost:2121/admin/menu_management/edit-save/5','Update data News at Menu Management','<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>path</td><td>news</td><td></td></tr><tr><td>sorting</td><td>2</td><td></td></tr></tbody></table>',1,'2018-02-11 07:38:39',NULL),
	(8,'172.25.0.1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_12_5) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.132 Safari/537.36','http://localhost:2121/admin/users/add-save','Add New Data admin at Users Management','',1,'2018-02-11 07:44:03',NULL),
	(9,'172.25.0.1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_12_5) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.132 Safari/537.36','http://localhost:2121/admin/users/edit-save/1','Update data Super Admin at Users Management','<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>photo</td><td></td><td>uploads/1/2018-02/1_2.jpg</td></tr><tr><td>email</td><td>admin@crudbooster.com</td><td>septian.gun@gmail.com</td></tr><tr><td>password</td><td>$2y$10$fGRGpDD8/WnZdF0WeinMn.YjfB6jPzfZiYRKn06l7PL/.v56MUGom</td><td>$2y$10$CVrhZScJT1Cu1VGTJglJdedbWEd151vzaKfuUfwBVaZcLZuYVjaoW</td></tr><tr><td>status</td><td>Active</td><td></td></tr></tbody></table>',1,'2018-02-11 07:44:57',NULL),
	(10,'172.25.0.1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_12_5) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.132 Safari/537.36','http://localhost:2121/admin/logout','septian.gun@gmail.com logout','',1,'2018-02-11 07:45:14',NULL),
	(11,'172.25.0.1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_12_5) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.132 Safari/537.36','http://localhost:2121/admin/login','admin@gmail.com login with IP Address 172.25.0.1','',2,'2018-02-11 07:45:21',NULL),
	(12,'172.25.0.1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_12_5) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.132 Safari/537.36','http://localhost:2121/admin/logout','admin@gmail.com logout','',2,'2018-02-11 07:45:28',NULL),
	(13,'172.25.0.1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_12_5) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.132 Safari/537.36','http://localhost:2121/admin/forgot','Someone with IP 172.25.0.1 request a password for septian.gun@gmail.com','',NULL,'2018-02-11 07:45:41',NULL),
	(14,'172.25.0.1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_12_5) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.132 Safari/537.36','http://localhost:2121/admin/login','septian.gun@gmail.com login with IP Address 172.25.0.1','',1,'2018-02-11 07:46:27',NULL),
	(15,'172.25.0.1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_12_5) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.132 Safari/537.36','http://localhost:2121/admin/users/edit-save/1','Update data Super Admin at Users Management','<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>password</td><td>$2y$10$zWc5IXQ67EfAlPSjcgJQReQhY/oMuOiJeKFyjwZxegsPMTKdWeR3S</td><td>$2y$10$xHD3GT2hNTueSHBDsfhCkOD7euNS2K3wb/zG2gmLZR/XAJpAi7CP.</td></tr><tr><td>status</td><td>Active</td><td></td></tr></tbody></table>',1,'2018-02-11 07:46:42',NULL),
	(16,'172.25.0.1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_12_5) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.132 Safari/537.36','http://localhost:2121/admin/users/edit-save/2','Update data admin at Users Management','<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>password</td><td>$2y$10$zWc5IXQ67EfAlPSjcgJQReQhY/oMuOiJeKFyjwZxegsPMTKdWeR3S</td><td></td></tr><tr><td>status</td><td></td><td></td></tr></tbody></table>',1,'2018-02-11 07:46:50',NULL),
	(17,'172.25.0.1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_12_5) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.132 Safari/537.36','http://localhost:2121/admin/gallery/add-save','Add New Data Gallery 1 at Gallery','',1,'2018-02-11 07:53:18',NULL),
	(18,'172.25.0.1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_12_5) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.132 Safari/537.36','http://localhost:2121/admin/statistic_builder/add-save','Add New Data news at Statistic Builder','',1,'2018-02-11 07:55:54',NULL),
	(19,'172.25.0.1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_12_5) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.132 Safari/537.36','http://localhost:2121/admin/statistic_builder/delete/1','Delete data news at Statistic Builder','',1,'2018-02-11 07:56:09',NULL),
	(20,'172.25.0.1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_12_5) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.132 Safari/537.36','http://localhost:2121/admin/menu_management/edit-save/5','Update data News at Menu Management','<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>path</td><td></td><td>news</td></tr><tr><td>parent_id</td><td>4</td><td></td></tr></tbody></table>',1,'2018-02-11 08:40:39',NULL),
	(21,'172.25.0.1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_12_5) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.132 Safari/537.36','http://localhost:2121/admin/menu_management/add-save','Add New Data test at Menu Management','',1,'2018-02-11 08:41:46',NULL),
	(22,'172.25.0.1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_12_5) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.132 Safari/537.36','http://localhost:2121/admin/menu_management/edit-save/9','Update data test at Menu Management','<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>path</td><td>/news/edit/1?return_url=http%3A%2F%2Flocalhost%3A2121%2Fadmin%2Fnews&parent_id=&parent_field=</td><td>/admin/news/edit/1?return_url=http%3A%2F%2Flocalhost%3A2121%2Fadmin%2Fnews&parent_id=&parent_field=</td></tr><tr><td>icon</td><td>fa fa-envelope-o</td><td>fa fa-glass</td></tr><tr><td>sorting</td><td></td><td></td></tr></tbody></table>',1,'2018-02-11 08:42:39',NULL),
	(23,'172.25.0.1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_12_5) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.132 Safari/537.36','http://localhost:2121/admin/menu_management/delete/9','Delete data test at Menu Management','',1,'2018-02-11 08:42:53',NULL),
	(24,'172.25.0.1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_12_5) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.132 Safari/537.36','http://localhost:2121/admin/menu_management/add-save','Add New Data test at Menu Management','',1,'2018-02-11 08:43:28',NULL),
	(25,'172.25.0.1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_12_5) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.132 Safari/537.36','http://localhost:2121/admin/menu_management/edit-save/9','Update data test at Menu Management','<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>path</td><td>/news/edit/1?return_url=http%3A%2F%2Flocalhost%3A2121%2Fadmin%2Fnews&parent_id=&parent_field=</td><td>/admin/news/edit/1?return_url=http%3A%2F%2Flocalhost%3A2121%2Fadmin%2Fnews&parent_id=&parent_field=</td></tr><tr><td>sorting</td><td></td><td></td></tr></tbody></table>',1,'2018-02-11 08:43:43',NULL),
	(26,'172.25.0.1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_12_5) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.132 Safari/537.36','http://localhost:2121/admin/menu_management/delete/9','Delete data test at Menu Management','',1,'2018-02-11 08:43:59',NULL),
	(27,'172.25.0.1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_12_5) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.132 Safari/537.36','http://localhost:2121/admin/menu_management/edit-save/4','Update data Resources at Menu Management','<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody></tbody></table>',1,'2018-02-11 08:45:24',NULL),
	(28,'172.25.0.1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_12_5) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.132 Safari/537.36','http://localhost:2121/admin/logout','septian.gun@gmail.com logout','',1,'2018-02-11 08:46:43',NULL),
	(29,'172.25.0.1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_12_5) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.132 Safari/537.36','http://localhost:2121/admin/login','admin@gmail.com login with IP Address 172.25.0.1','',2,'2018-02-11 08:46:52',NULL),
	(30,'172.25.0.1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_12_5) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.132 Safari/537.36','http://localhost:2121/admin/logout','admin@gmail.com logout','',2,'2018-02-11 08:46:59',NULL),
	(31,'172.25.0.1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_12_5) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.132 Safari/537.36','http://localhost:2121/admin/login','septian.gun@gmail.com login with IP Address 172.25.0.1','',1,'2018-02-11 08:47:08',NULL),
	(32,'172.25.0.1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_12_5) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.132 Safari/537.36','http://localhost:2121/admin/menu_management/add-save','Add New Data Who We Are at Menu Management','',1,'2018-02-11 08:48:01',NULL),
	(33,'172.25.0.1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_12_5) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.132 Safari/537.36','http://localhost:2121/admin/news/edit-save/1','Update data Test News Danareksa at News','<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody></tbody></table>',1,'2018-02-11 08:48:31',NULL),
	(34,'172.25.0.1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_12_5) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.132 Safari/537.36','http://localhost:2121/admin/news/edit-save/1','Update data Test News Danareksa at News','<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody></tbody></table>',1,'2018-02-11 08:48:51',NULL),
	(35,'172.25.0.1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_12_5) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.132 Safari/537.36','http://localhost:2121/admin/news/edit-save/1','Update data Test News Danareksa at News','<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody></tbody></table>',1,'2018-02-11 08:49:23',NULL),
	(36,'172.25.0.1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_12_5) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.132 Safari/537.36','http://localhost:2121/admin/news/edit-save/1','Update data Test News Danareksa at News','<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody></tbody></table>',1,'2018-02-11 08:49:38',NULL),
	(37,'172.25.0.1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_12_5) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.132 Safari/537.36','http://localhost:2121/admin/news/edit-save/1','Update data Test News Danareksa at News','<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody></tbody></table>',1,'2018-02-11 08:49:53',NULL),
	(38,'172.25.0.1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_12_5) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.132 Safari/537.36','http://localhost:2121/admin/gallery/add-save','Add New Data test at Gallery','',1,'2018-02-11 08:58:07',NULL),
	(39,'172.25.0.1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_12_5) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.132 Safari/537.36','http://localhost:2121/admin/pages/add-save','Add New Data About Us at Pages','',1,'2018-02-11 09:03:36',NULL),
	(40,'172.25.0.1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_12_5) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.132 Safari/537.36','http://localhost:2121/admin/pages/delete/1','Delete data About Us at Pages','',1,'2018-02-11 09:06:48',NULL),
	(41,'172.25.0.1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_12_5) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.132 Safari/537.36','http://localhost:2121/admin/pages/add-save','Add New Data About Us at Pages','',1,'2018-02-11 09:07:14',NULL),
	(42,'172.25.0.1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_12_5) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.132 Safari/537.36','http://localhost:2121/admin/pages/add-save','Add New Data Our Culture at Pages','',1,'2018-02-11 09:08:03',NULL),
	(43,'172.25.0.1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_12_5) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.132 Safari/537.36','http://localhost:2121/admin/pages/add-save','Add New Data Benefits at Pages','',1,'2018-02-11 09:08:14',NULL),
	(44,'172.25.0.1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_12_5) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.132 Safari/537.36','http://localhost:2121/admin/pages/add-save','Add New Data Jaringan Distribusi at Pages','',1,'2018-02-11 09:08:44',NULL),
	(45,'172.25.0.1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_12_5) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.132 Safari/537.36','http://localhost:2121/admin/menu_management/edit-save/4','Update data Resources at Menu Management','<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>icon</td><td>fa fa-list-alt</td><td>fa fa-user</td></tr></tbody></table>',1,'2018-02-11 09:30:04',NULL),
	(46,'172.25.0.1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_12_5) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.132 Safari/537.36','http://localhost:2121/admin/menu_management/edit-save/5','Update data News at Menu Management','<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>path</td><td>news</td><td></td></tr><tr><td>icon</td><td>fa fa-pencil</td><td>fa fa-user</td></tr><tr><td>parent_id</td><td>4</td><td></td></tr></tbody></table>',1,'2018-02-11 09:30:15',NULL),
	(47,'172.25.0.1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_12_5) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.132 Safari/537.36','http://localhost:2121/admin/menu_management/edit-save/6','Update data Events at Menu Management','<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>type</td><td>Route</td><td>Module</td></tr><tr><td>path</td><td>AdminEventsControllerGetIndex</td><td>events</td></tr><tr><td>color</td><td></td><td>normal</td></tr><tr><td>icon</td><td>fa fa-calendar</td><td>fa fa-user</td></tr><tr><td>parent_id</td><td>4</td><td></td></tr><tr><td>sorting</td><td>2</td><td></td></tr></tbody></table>',1,'2018-02-11 09:30:38',NULL),
	(48,'172.25.0.1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_12_5) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.132 Safari/537.36','http://localhost:2121/admin/menu_management/edit-save/8','Update data Gallery at Menu Management','<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>type</td><td>Route</td><td>Module</td></tr><tr><td>path</td><td>AdminGalleryControllerGetIndex</td><td>gallery</td></tr><tr><td>color</td><td></td><td>normal</td></tr><tr><td>icon</td><td>fa fa-video-camera</td><td>fa fa-user</td></tr><tr><td>parent_id</td><td>4</td><td></td></tr><tr><td>sorting</td><td>3</td><td></td></tr></tbody></table>',1,'2018-02-11 09:30:53',NULL),
	(49,'172.25.0.1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_12_5) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.132 Safari/537.36','http://localhost:2121/admin/menu_management/edit-save/7','Update data Press Release at Menu Management','<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>type</td><td>Route</td><td>Module</td></tr><tr><td>path</td><td>AdminPressReleaseControllerGetIndex</td><td>press_release</td></tr><tr><td>color</td><td></td><td>normal</td></tr><tr><td>icon</td><td>fa fa-glass</td><td>fa fa-envelope-o</td></tr><tr><td>parent_id</td><td>4</td><td></td></tr><tr><td>sorting</td><td>4</td><td></td></tr></tbody></table>',1,'2018-02-11 09:31:22',NULL),
	(50,'172.25.0.1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_12_5) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.132 Safari/537.36','http://localhost:2121/admin/logout','septian.gun@gmail.com logout','',1,'2018-02-11 09:32:03',NULL),
	(51,'172.25.0.1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_12_5) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.132 Safari/537.36','http://localhost:2121/admin/login','admin@gmail.com login with IP Address 172.25.0.1','',2,'2018-02-11 09:32:15',NULL),
	(52,'172.25.0.1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_12_5) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.132 Safari/537.36','http://localhost:2121/admin/gallery','Try view the data :name at Gallery','',2,'2018-02-11 09:32:23',NULL),
	(53,'172.25.0.1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_12_5) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.132 Safari/537.36','http://localhost:2121/admin/press_release','Try view the data :name at Press Release','',2,'2018-02-11 09:32:27',NULL),
	(54,'172.25.0.1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_12_5) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.132 Safari/537.36','http://localhost:2121/admin/logout','admin@gmail.com logout','',2,'2018-02-11 09:32:32',NULL),
	(55,'172.25.0.1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_12_5) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.132 Safari/537.36','http://localhost:2121/admin/login','septian.gun@gmail.com login with IP Address 172.25.0.1','',1,'2018-02-11 09:32:35',NULL),
	(56,'172.25.0.1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_12_5) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.132 Safari/537.36','http://localhost:2121/admin/menu_management/edit-save/5','Update data News at Menu Management','<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>path</td><td></td><td>news</td></tr><tr><td>parent_id</td><td>4</td><td></td></tr></tbody></table>',1,'2018-02-11 09:32:51',NULL),
	(57,'172.25.0.1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_12_5) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.132 Safari/537.36','http://localhost:2121/admin/logout','septian.gun@gmail.com logout','',1,'2018-02-11 09:34:34',NULL),
	(58,'172.25.0.1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_12_5) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.132 Safari/537.36','http://localhost:2121/admin/login','admin@gmail.com login with IP Address 172.25.0.1','',2,'2018-02-11 09:34:42',NULL),
	(59,'172.25.0.1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_12_5) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.132 Safari/537.36','http://localhost:2121/admin/pages/edit/1','Try edit the data About Us at Pages','',2,'2018-02-11 09:34:45',NULL),
	(60,'172.25.0.1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_12_5) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.132 Safari/537.36','http://localhost:2121/admin/logout','admin@gmail.com logout','',2,'2018-02-11 09:34:50',NULL),
	(61,'172.25.0.1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_12_5) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.132 Safari/537.36','http://localhost:2121/admin/login','septian.gun@gmail.com login with IP Address 172.25.0.1','',1,'2018-02-11 09:34:52',NULL),
	(62,'172.25.0.1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_12_5) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.132 Safari/537.36','http://localhost:2121/admin/logout','septian.gun@gmail.com logout','',1,'2018-02-11 09:35:34',NULL),
	(63,'172.25.0.1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_12_5) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.132 Safari/537.36','http://localhost:2121/admin/logout','septian.gun@gmail.com logout','',1,'2018-02-11 09:35:38',NULL),
	(64,'172.25.0.1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_12_5) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.132 Safari/537.36','http://localhost:2121/admin/login','admin@gmail.com login with IP Address 172.25.0.1','',2,'2018-02-11 09:35:44',NULL),
	(65,'172.25.0.1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_12_5) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.132 Safari/537.36','http://localhost:2121/admin/login','admin@gmail.com login with IP Address 172.25.0.1','',2,'2018-02-11 09:35:53',NULL),
	(66,'172.25.0.1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_12_5) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.132 Safari/537.36','http://localhost:2121/admin/pages/edit-save/1','Update data About Us at Pages','<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>id_cms_users</td><td>1</td><td>2</td></tr></tbody></table>',2,'2018-02-11 09:36:01',NULL),
	(67,'172.25.0.1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_12_5) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.132 Safari/537.36','http://localhost:2121/admin/pages/edit-save/1','Update data About Us at Pages','<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody></tbody></table>',2,'2018-02-11 09:36:15',NULL),
	(68,'172.25.0.1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_12_5) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.132 Safari/537.36','http://localhost:2121/admin/logout','admin@gmail.com logout','',2,'2018-02-11 09:36:32',NULL),
	(69,'172.25.0.1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_12_5) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.132 Safari/537.36','http://localhost:2121/admin/login','septian.gun@gmail.com login with IP Address 172.25.0.1','',1,'2018-02-11 09:36:35',NULL),
	(70,'172.25.0.1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_12_5) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.132 Safari/537.36','http://localhost:2121/admin/login','septian.gun@gmail.com login with IP Address 172.25.0.1','',1,'2018-02-19 15:59:20',NULL),
	(71,'172.25.0.1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_12_5) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.132 Safari/537.36','http://localhost:2121/admin/logout','septian.gun@gmail.com logout','',1,'2018-02-19 16:00:50',NULL),
	(72,'172.25.0.1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_12_5) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.132 Safari/537.36','http://localhost:2121/admin/login','septian.gun@gmail.com login with IP Address 172.25.0.1','',1,'2018-02-19 16:01:28',NULL),
	(73,'172.25.0.1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_12_5) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.132 Safari/537.36','http://localhost:2121/admin/login','septian.gun@gmail.com login with IP Address 172.25.0.1','',1,'2018-02-19 16:09:54',NULL),
	(74,'172.25.0.1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_12_5) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.132 Safari/537.36','http://localhost:2121/admin/logout','septian.gun@gmail.com logout','',1,'2018-02-19 16:11:14',NULL),
	(75,'172.25.0.1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_12_5) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.132 Safari/537.36','http://localhost:2121/admin/logout','septian.gun@gmail.com logout','',1,'2018-02-19 16:13:01',NULL),
	(76,'172.25.0.1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_12_5) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.132 Safari/537.36','http://localhost:2121/admin/login','septian.gun@gmail.com login with IP Address 172.25.0.1','',1,'2018-02-19 16:13:24',NULL),
	(77,'172.25.0.1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_12_5) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.132 Safari/537.36','http://localhost:2121/admin/pages/edit-save/1','Update data About Us at Pages','<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody></tbody></table>',1,'2018-02-19 16:19:55',NULL),
	(78,'172.25.0.1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_12_5) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.132 Safari/537.36','http://localhost:2121/admin/menu_management/add-save','Add New Data About Us at Menu Management','',1,'2018-02-19 16:21:42',NULL),
	(79,'172.25.0.1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_12_5) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.132 Safari/537.36','http://localhost:2121/admin/menu_management/edit-save/11','Update data About Us at Menu Management','<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>type</td><td>Route</td><td>URL</td></tr><tr><td>icon</td><td>fa fa-pencil</td><td>fa fa-pencil-square</td></tr><tr><td>parent_id</td><td>9</td><td></td></tr></tbody></table>',1,'2018-02-19 16:22:31',NULL),
	(80,'172.25.0.1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_12_5) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.132 Safari/537.36','http://localhost:2121/admin/pages/edit-save/1','Update data About Us at Pages','<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody></tbody></table>',1,'2018-02-19 16:22:41',NULL),
	(81,'172.25.0.1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_12_5) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.132 Safari/537.36','http://localhost:2121/admin/menu_management/add-save','Add New Data Our People at Menu Management','',1,'2018-02-19 16:24:04',NULL),
	(82,'172.25.0.1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_12_5) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.132 Safari/537.36','http://localhost:2121/admin/menu_management/add-save','Add New Data Values at Menu Management','',1,'2018-02-19 16:24:57',NULL),
	(83,'172.26.0.1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_12_5) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.132 Safari/537.36','http://localhost:2121/admin/login','septian.gun@gmail.com login with IP Address 172.26.0.1','',1,'2018-02-20 22:07:58',NULL),
	(84,'172.26.0.1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_12_5) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.132 Safari/537.36','http://localhost:2121/admin/menu_management/edit-save/12','Update data Our People at Menu Management','<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>type</td><td>URL</td><td>Module</td></tr><tr><td>path</td><td>#</td><td>people</td></tr><tr><td>parent_id</td><td>9</td><td></td></tr><tr><td>sorting</td><td>3</td><td></td></tr></tbody></table>',1,'2018-02-20 22:13:03',NULL),
	(85,'172.26.0.1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_12_5) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.132 Safari/537.36','http://localhost:2121/admin/people/add-save','Add New Data Kunkun Priyambodo at Our People','',1,'2018-02-20 22:14:42',NULL),
	(86,'172.26.0.1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_12_5) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.132 Safari/537.36','http://localhost:2121/admin/people/add-save','Add New Data Yoyo at Our People','',1,'2018-02-20 22:16:57',NULL),
	(87,'172.26.0.1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_12_5) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.132 Safari/537.36','http://localhost:2121/admin/people/add-save','Add New Data Septian at Our People','',1,'2018-02-20 22:23:35',NULL),
	(88,'172.26.0.1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_12_5) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.132 Safari/537.36','http://localhost:2121/admin/people/edit-save/3','Update data Septian at Our People','<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>type</td><td>director</td><td> commisioner</td></tr></tbody></table>',1,'2018-02-20 22:25:19',NULL),
	(89,'172.26.0.1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_12_5) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.132 Safari/537.36','http://localhost:2121/admin/people/edit-save/3','Update data Septian at Our People','<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>status</td><td>Active</td><td>InActive</td></tr></tbody></table>',1,'2018-02-20 22:25:29',NULL),
	(90,'172.26.0.1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_12_5) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.132 Safari/537.36','http://localhost:2121/admin/menu_management/delete/14','Delete data Our People at Menu Management','',1,'2018-02-20 22:25:59',NULL),
	(91,'172.26.0.1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_12_5) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.132 Safari/537.36','http://localhost:2121/admin/pages/add-save','Add New Data Values at Pages','',1,'2018-02-20 22:26:44',NULL),
	(92,'172.26.0.1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_12_5) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.132 Safari/537.36','http://localhost:2121/admin/pages/add-save','Add New Data Vision Mission at Pages','',1,'2018-02-20 22:27:18',NULL),
	(93,'172.26.0.1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_12_5) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.132 Safari/537.36','http://localhost:2121/admin/pages/add-save','Add New Data Kebijakan Mutu (CARES) at Pages','',1,'2018-02-20 22:27:35',NULL),
	(94,'172.26.0.1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_12_5) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.132 Safari/537.36','http://localhost:2121/admin/pages/add-save','Add New Data Values (I-FAST) at Pages','',1,'2018-02-20 22:27:49',NULL),
	(95,'172.26.0.1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_12_5) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.132 Safari/537.36','http://localhost:2121/admin/pages/add-save','Add New Data Awards at Pages','',1,'2018-02-20 22:28:29',NULL),
	(96,'172.26.0.1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_12_5) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.132 Safari/537.36','http://localhost:2121/admin/pages/add-save','Add New Data Milestone at Pages','',1,'2018-02-20 22:28:48',NULL),
	(97,'172.26.0.1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_12_5) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.132 Safari/537.36','http://localhost:2121/admin/pages/add-save','Add New Data Equity Offering at Pages','',1,'2018-02-20 22:30:46',NULL),
	(98,'172.26.0.1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_12_5) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.132 Safari/537.36','http://localhost:2121/admin/pages/add-save','Add New Data Debt Offering at Pages','',1,'2018-02-20 22:30:59',NULL),
	(99,'172.26.0.1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_12_5) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.132 Safari/537.36','http://localhost:2121/admin/pages/add-save','Add New Data Transactional at Pages','',1,'2018-02-20 22:31:10',NULL),
	(100,'172.26.0.1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_12_5) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.132 Safari/537.36','http://localhost:2121/admin/pages/add-save','Add New Data General at Pages','',1,'2018-02-20 22:31:20',NULL),
	(101,'172.26.0.1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_12_5) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.132 Safari/537.36','http://localhost:2121/admin/pages/add-save','Add New Data Institutional at Pages','',1,'2018-02-20 22:31:30',NULL),
	(102,'172.26.0.1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_12_5) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.132 Safari/537.36','http://localhost:2121/admin/pages/add-save','Add New Data Retail at Pages','',1,'2018-02-20 22:31:42',NULL),
	(103,'172.26.0.1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_12_5) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.132 Safari/537.36','http://localhost:2121/admin/pages/add-save','Add New Data Equity Research at Pages','',1,'2018-02-20 22:31:55',NULL),
	(104,'172.26.0.1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_12_5) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.132 Safari/537.36','http://localhost:2121/admin/pages/add-save','Add New Data Debt Research at Pages','',1,'2018-02-20 22:32:07',NULL),
	(105,'172.26.0.1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_12_5) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.132 Safari/537.36','http://localhost:2121/admin/pages/add-save','Add New Data Our Culture at Pages','',1,'2018-02-20 22:32:20',NULL),
	(106,'172.26.0.1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_12_5) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.132 Safari/537.36','http://localhost:2121/admin/pages/add-save','Add New Data Benefits at Pages','',1,'2018-02-20 22:32:29',NULL),
	(107,'172.26.0.1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_12_5) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.132 Safari/537.36','http://localhost:2121/admin/menu_management/add-save','Add New Data Vision Mission at Menu Management','',1,'2018-02-20 22:33:50',NULL),
	(108,'172.26.0.1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_12_5) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.132 Safari/537.36','http://localhost:2121/admin/menu_management/delete/13','Delete data Values at Menu Management','',1,'2018-02-20 22:48:51',NULL),
	(109,'172.26.0.1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_12_5) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.132 Safari/537.36','http://localhost:2121/admin/menu_management/add-save','Add New Data Kebijakan Mutu at Menu Management','',1,'2018-02-20 22:51:34',NULL),
	(110,'172.26.0.1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_12_5) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.132 Safari/537.36','http://localhost:2121/admin/menu_management/edit-save/14','Update data Vision Mission at Menu Management','<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>path</td><td>/pages/edit/6</td><td>/admin/pages/edit/6</td></tr><tr><td>icon</td><td>fa fa-glass</td><td>fa fa-pencil-square</td></tr><tr><td>parent_id</td><td>9</td><td></td></tr><tr><td>sorting</td><td>2</td><td></td></tr></tbody></table>',1,'2018-02-20 22:52:39',NULL),
	(111,'172.26.0.1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_12_5) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.132 Safari/537.36','http://localhost:2121/admin/menu_management/edit-save/15','Update data Kebijakan Mutu at Menu Management','<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>path</td><td>/pages/edit/7</td><td>/admin/pages/edit/7</td></tr><tr><td>icon</td><td>fa fa-heart</td><td>fa fa-pencil-square</td></tr><tr><td>parent_id</td><td>9</td><td></td></tr><tr><td>sorting</td><td>3</td><td></td></tr></tbody></table>',1,'2018-02-20 22:52:49',NULL),
	(112,'172.26.0.1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_12_5) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.132 Safari/537.36','http://localhost:2121/admin/menu_management/add-save','Add New Data Values at Menu Management','',1,'2018-02-20 22:54:41',NULL),
	(113,'172.26.0.1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_12_5) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.132 Safari/537.36','http://localhost:2121/admin/menu_management/edit-save/16','Update data Values I FAST at Menu Management','<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>name</td><td>Values</td><td>Values I FAST</td></tr><tr><td>parent_id</td><td>9</td><td></td></tr><tr><td>sorting</td><td>3</td><td></td></tr></tbody></table>',1,'2018-02-20 22:55:27',NULL),
	(114,'172.26.0.1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_12_5) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.132 Safari/537.36','http://localhost:2121/admin/pages/add-save','Add New Data Our Service at Pages','',1,'2018-02-20 22:58:18',NULL),
	(115,'172.26.0.1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_12_5) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.132 Safari/537.36','http://localhost:2121/admin/menu_management/add-save','Add New Data What we do at Menu Management','',1,'2018-02-20 22:59:17',NULL),
	(116,'172.26.0.1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_12_5) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.132 Safari/537.36','http://localhost:2121/admin/menu_management/edit-save/20','Update data Our Service at Menu Management','<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>parent_id</td><td>19</td><td></td></tr></tbody></table>',1,'2018-02-20 23:02:02',NULL),
	(117,'172.26.0.1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_12_5) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.132 Safari/537.36','http://localhost:2121/admin/menu_management/edit-save/17','Update data Awards at Menu Management','<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>parent_id</td><td>9</td><td></td></tr><tr><td>sorting</td><td>5</td><td></td></tr></tbody></table>',1,'2018-02-20 23:02:12',NULL),
	(118,'172.26.0.1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_12_5) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.132 Safari/537.36','http://localhost:2121/admin/menu_management/edit-save/18','Update data Milestone at Menu Management','<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>parent_id</td><td>9</td><td></td></tr><tr><td>sorting</td><td>6</td><td></td></tr></tbody></table>',1,'2018-02-20 23:02:20',NULL),
	(119,'172.26.0.1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_12_5) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.132 Safari/537.36','http://localhost:2121/admin/menu_management/add-save','Add New Data Equity Offering at Menu Management','',1,'2018-02-20 23:04:17',NULL),
	(120,'172.26.0.1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_12_5) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.132 Safari/537.36','http://localhost:2121/admin/menu_management/add-save','Add New Data Debt Offering at Menu Management','',1,'2018-02-20 23:04:58',NULL),
	(121,'172.26.0.1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_12_5) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.132 Safari/537.36','http://localhost:2121/admin/menu_management/add-save','Add New Data Transactional at Menu Management','',1,'2018-02-20 23:05:38',NULL),
	(122,'172.26.0.1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_12_5) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.132 Safari/537.36','http://localhost:2121/admin/menu_management/add-save','Add New Data General at Menu Management','',1,'2018-02-20 23:06:15',NULL),
	(123,'172.26.0.1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_12_5) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.132 Safari/537.36','http://localhost:2121/admin/menu_management/add-save','Add New Data Institutional at Menu Management','',1,'2018-02-20 23:06:54',NULL),
	(124,'172.26.0.1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_12_5) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.132 Safari/537.36','http://localhost:2121/admin/menu_management/add-save','Add New Data Retail at Menu Management','',1,'2018-02-20 23:07:24',NULL),
	(125,'172.26.0.1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_12_5) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.132 Safari/537.36','http://localhost:2121/admin/menu_management/add-save','Add New Data Equity Research at Menu Management','',1,'2018-02-20 23:07:51',NULL),
	(126,'172.26.0.1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_12_5) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.132 Safari/537.36','http://localhost:2121/admin/menu_management/add-save','Add New Data Debt Research at Menu Management','',1,'2018-02-20 23:08:21',NULL),
	(127,'172.26.0.1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_12_5) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.132 Safari/537.36','http://localhost:2121/admin/menu_management/add-save','Add New Data Work With Us at Menu Management','',1,'2018-02-20 23:10:07',NULL),
	(128,'172.26.0.1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_12_5) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.132 Safari/537.36','http://localhost:2121/admin/menu_management/add-save','Add New Data Our Culture at Menu Management','',1,'2018-02-20 23:10:47',NULL),
	(129,'172.26.0.1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_12_5) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.132 Safari/537.36','http://localhost:2121/admin/menu_management/add-save','Add New Data Benefits at Menu Management','',1,'2018-02-20 23:11:23',NULL),
	(130,'172.26.0.1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_12_5) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.132 Safari/537.36','http://localhost:2121/admin/menu_management/add-save','Add New Data Vacancies at Menu Management','',1,'2018-02-20 23:11:51',NULL),
	(131,'172.26.0.1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_12_5) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.132 Safari/537.36','http://localhost:2121/admin/logout','septian.gun@gmail.com logout','',1,'2018-02-20 23:12:31',NULL),
	(132,'172.26.0.1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_12_5) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.132 Safari/537.36','http://localhost:2121/admin/login','septian.gun@gmail.com login with IP Address 172.26.0.1','',1,'2018-02-20 23:12:33',NULL),
	(133,'172.26.0.1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_12_5) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.132 Safari/537.36','http://localhost:2121/admin/jobs/add-save','Add New Data Senior Engineer at Job Listing','',1,'2018-02-20 23:20:20',NULL),
	(134,'172.26.0.1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_12_5) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.132 Safari/537.36','http://localhost:2121/admin/jobs/edit-save/1','Update data Senior Engineer at Job Listing','<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody></tbody></table>',1,'2018-02-20 23:20:30',NULL),
	(135,'172.26.0.1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_12_5) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.132 Safari/537.36','http://localhost:2121/admin/users/add-save','Add New Data Kuncoro Yoyo at Users Management','',1,'2018-02-20 23:25:15',NULL),
	(136,'172.26.0.1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_12_5) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.132 Safari/537.36','http://localhost:2121/admin/logout','septian.gun@gmail.com logout','',1,'2018-02-20 23:25:21',NULL),
	(137,'172.26.0.1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_12_5) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.132 Safari/537.36','http://localhost:2121/admin/login','yoyo@ioodesgen.com login with IP Address 172.26.0.1','',3,'2018-02-20 23:25:27',NULL),
	(138,'172.26.0.1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_12_5) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.132 Safari/537.36','http://localhost:2121/admin/pages/edit-save/11','Update data Equity Offering at Pages','<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody></tbody></table>',3,'2018-02-20 23:25:48',NULL),
	(139,'172.26.0.1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_12_5) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.132 Safari/537.36','http://localhost:2121/admin/pages/edit-save/11','Update data Equity Offering at Pages','<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody></tbody></table>',3,'2018-02-20 23:27:28',NULL),
	(140,'172.26.0.1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_12_5) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.132 Safari/537.36','http://localhost:2121/admin/pages/edit-save/11','Update data Equity Offering at Pages','<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody></tbody></table>',3,'2018-02-20 23:28:51',NULL),
	(141,'172.26.0.1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_12_5) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.132 Safari/537.36','http://localhost:2121/admin/pages/edit-save/11','Update data Equity Offering at Pages','<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody></tbody></table>',3,'2018-02-20 23:28:55',NULL),
	(142,'172.26.0.1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_12_5) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.132 Safari/537.36','http://localhost:2121/admin/pages/edit-save/11','Update data Equity Offering at Pages','<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody></tbody></table>',3,'2018-02-20 23:30:02',NULL),
	(143,'172.26.0.1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_12_5) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.132 Safari/537.36','http://localhost:2121/admin/pages/edit-save/11','Update data Equity Offering at Pages','<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody></tbody></table>',3,'2018-02-20 23:30:18',NULL),
	(144,'172.26.0.1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_12_5) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.132 Safari/537.36','http://localhost:2121/admin/pages/edit-save/11','Update data Equity Offering at Pages','<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>description</td><td><p>Equity Offering<br></p></td><td><p>Equity Offering lorem ipsum<br></p></td></tr></tbody></table>',3,'2018-02-20 23:30:31',NULL),
	(145,'172.26.0.1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_12_5) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.132 Safari/537.36','http://localhost:2121/admin/logout','yoyo@ioodesgen.com logout','',3,'2018-02-20 23:31:12',NULL),
	(146,'172.26.0.1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_12_5) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.132 Safari/537.36','http://localhost:2121/admin/login','septian.gun@gmail.com login with IP Address 172.26.0.1','',1,'2018-02-20 23:31:14',NULL),
	(147,'172.26.0.1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_12_5) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.132 Safari/537.36','http://localhost:2121/admin/menu_management/edit-save/33','Update data Job Listing at Menu Management','<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>color</td><td></td><td>normal</td></tr><tr><td>icon</td><td></td><td>fa fa-glass</td></tr><tr><td>parent_id</td><td>29</td><td></td></tr><tr><td>sorting</td><td>9</td><td></td></tr></tbody></table>',1,'2018-02-20 23:31:41',NULL),
	(148,'172.26.0.1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_12_5) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.132 Safari/537.36','http://localhost:2121/admin/statistic_builder/add-save','Add New Data test at Statistic Builder','',1,'2018-02-20 23:32:34',NULL),
	(149,'172.26.0.1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_12_5) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.132 Safari/537.36','http://localhost:2121/admin/users/edit-save/3','Update data Kuncoro Yoyo at Users Management','<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>password</td><td>$2y$10$duNEURy51KkFNp2Tb3WDneRxcWJIddqEZKyREkYwnC6xO8QBsoMKW</td><td></td></tr><tr><td>id_cms_privileges</td><td>2</td><td>1</td></tr><tr><td>status</td><td></td><td></td></tr></tbody></table>',1,'2018-02-20 23:34:28',NULL),
	(150,'172.26.0.1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_12_5) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.132 Safari/537.36','http://localhost:2121/admin/users/add-save','Add New Data admin at Users Management','',1,'2018-02-20 23:34:57',NULL),
	(151,'172.26.0.1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_12_5) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.132 Safari/537.36','http://localhost:2121/admin/logout','septian.gun@gmail.com logout','',1,'2018-02-20 23:35:05',NULL),
	(152,'172.26.0.1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_12_5) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.132 Safari/537.36','http://localhost:2121/admin/login','admin@admin.com login with IP Address 172.26.0.1','',4,'2018-02-20 23:35:12',NULL),
	(153,'172.26.0.1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_12_5) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.132 Safari/537.36','http://localhost:2121/admin/logout','admin@admin.com logout','',4,'2018-02-20 23:35:21',NULL),
	(154,'172.26.0.1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_12_5) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.132 Safari/537.36','http://localhost:2121/admin/logout','admin@admin.com logout','',4,'2018-02-20 23:35:26',NULL),
	(155,'172.26.0.1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_12_5) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.132 Safari/537.36','http://localhost:2121/admin/login','yoyo@ioodesgen.com login with IP Address 172.26.0.1','',3,'2018-02-20 23:35:45',NULL),
	(156,'172.26.0.1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_12_5) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.132 Safari/537.36','http://localhost:2121/admin/logout','yoyo@ioodesgen.com logout','',3,'2018-02-20 23:35:54',NULL);

/*!40000 ALTER TABLE `cms_logs` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table cms_menus
# ------------------------------------------------------------

DROP TABLE IF EXISTS `cms_menus`;

CREATE TABLE `cms_menus` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `type` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'url',
  `path` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `color` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `icon` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `parent_id` int(11) DEFAULT NULL,
  `is_active` tinyint(1) NOT NULL DEFAULT '1',
  `is_dashboard` tinyint(1) NOT NULL DEFAULT '0',
  `id_cms_privileges` int(11) DEFAULT NULL,
  `sorting` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

LOCK TABLES `cms_menus` WRITE;
/*!40000 ALTER TABLE `cms_menus` DISABLE KEYS */;

INSERT INTO `cms_menus` (`id`, `name`, `type`, `path`, `color`, `icon`, `parent_id`, `is_active`, `is_dashboard`, `id_cms_privileges`, `sorting`, `created_at`, `updated_at`)
VALUES
	(3,'News','Route','AdminNewsControllerGetIndex',NULL,'',4,0,0,1,1,'2018-02-11 07:33:31',NULL),
	(4,'Resources','URL','#','normal','',0,1,0,1,6,'2018-02-11 07:36:28','2018-02-11 09:30:04'),
	(5,'News','Module','news','normal','',4,1,0,1,1,'2018-02-11 07:37:50','2018-02-11 09:32:51'),
	(6,'Events','Module','events','normal','',4,1,0,1,2,'2018-02-11 07:39:44','2018-02-11 09:30:38'),
	(7,'Press Release','Module','press_release','normal','',4,1,0,1,4,'2018-02-11 07:48:23','2018-02-11 09:31:22'),
	(8,'Gallery','Module','gallery','normal','',4,1,0,1,3,'2018-02-11 07:50:21','2018-02-11 09:30:53'),
	(9,'Who We Are','URL','#','normal','',0,1,0,1,4,'2018-02-11 08:48:01',NULL),
	(10,'Pages','Route','AdminPagesControllerGetIndex',NULL,'',0,1,0,1,8,'2018-02-11 08:50:42',NULL),
	(11,'About Us','URL','/admin/pages/edit/1','normal','',9,1,0,1,1,'2018-02-19 16:21:42','2018-02-19 16:22:31'),
	(12,'Our People','Module','people','normal','',9,1,0,1,7,'2018-02-19 16:24:04','2018-02-20 22:13:03'),
	(14,'Vision Mission','URL','/admin/pages/edit/6','normal','',9,1,0,1,2,'2018-02-20 22:33:50','2018-02-20 22:52:39'),
	(15,'Kebijakan Mutu','URL','/admin/pages/edit/7','normal','',9,1,0,1,3,'2018-02-20 22:51:34','2018-02-20 22:52:49'),
	(16,'Values I FAST','URL','/admin/pages/edit/8','normal','',9,1,0,1,4,'2018-02-20 22:54:41','2018-02-20 22:55:27'),
	(17,'Awards','URL','/admin/pages/edit/9','normal','',9,1,0,1,5,'2018-02-20 22:54:41','2018-02-20 23:02:12'),
	(18,'Milestone','URL','/admin/pages/edit/10','normal','',9,1,0,1,6,'2018-02-20 22:54:41','2018-02-20 23:02:20'),
	(19,'What we do','URL','#','normal','',0,1,0,1,5,'2018-02-20 22:59:17',NULL),
	(20,'Our Service','URL','/admin/pages/edit/21','normal','',19,1,0,1,9,'2018-02-20 22:54:41','2018-02-20 23:02:02'),
	(21,'Equity Offering','URL','/admin/pages/edit/11','normal','',19,1,0,1,1,'2018-02-20 23:04:17',NULL),
	(22,'Debt Offering','URL','/admin/pages/edit/12','normal','',19,1,0,1,2,'2018-02-20 23:04:58',NULL),
	(23,'Transactional','URL','/admin/pages/edit/13','normal','',19,1,0,1,3,'2018-02-20 23:05:38',NULL),
	(24,'General','URL','/admin/pages/edit/14','normal','',19,1,0,1,4,'2018-02-20 23:06:15',NULL),
	(25,'Institutional','URL','/admin/pages/edit/15','normal','',19,1,0,1,5,'2018-02-20 23:06:54',NULL),
	(26,'Retail','URL','/admin/pages/edit/16','normal','',19,1,0,1,6,'2018-02-20 23:07:24',NULL),
	(27,'Equity Research','URL','/admin/pages/edit/17','normal','',19,1,0,1,7,'2018-02-20 23:07:51',NULL),
	(28,'Debt Research','URL','/admin/pages/edit/18','normal','',19,1,0,1,8,'2018-02-20 23:08:21',NULL),
	(29,'Work With Us','URL','#','normal','',0,1,0,1,7,'2018-02-20 23:10:07',NULL),
	(30,'Our Culture','URL','/admin/pages/edit/2','normal','',29,1,0,1,1,'2018-02-20 23:10:47',NULL),
	(31,'Benefits','URL','/admin/pages/edit/3','normal','',29,1,0,1,2,'2018-02-20 23:11:23',NULL),
	(32,'Vacancies','URL','#','normal','',29,1,0,1,3,'2018-02-20 23:11:51',NULL),
	(33,'Job Listing','Route','AdminJobsControllerGetIndex','normal','',29,1,0,1,9,'2018-02-20 23:14:10','2018-02-20 23:31:41');

/*!40000 ALTER TABLE `cms_menus` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table cms_menus_privileges
# ------------------------------------------------------------

DROP TABLE IF EXISTS `cms_menus_privileges`;

CREATE TABLE `cms_menus_privileges` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `id_cms_menus` int(11) DEFAULT NULL,
  `id_cms_privileges` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

LOCK TABLES `cms_menus_privileges` WRITE;
/*!40000 ALTER TABLE `cms_menus_privileges` DISABLE KEYS */;

INSERT INTO `cms_menus_privileges` (`id`, `id_cms_menus`, `id_cms_privileges`)
VALUES
	(1,1,1),
	(2,2,1),
	(3,3,1),
	(13,9,2),
	(14,9,1),
	(15,10,1),
	(16,4,2),
	(17,4,1),
	(20,6,2),
	(21,6,1),
	(22,8,2),
	(23,8,1),
	(24,7,2),
	(25,7,1),
	(26,5,2),
	(27,5,1),
	(28,11,2),
	(29,11,1),
	(32,13,2),
	(33,13,1),
	(35,12,2),
	(36,12,1),
	(41,14,2),
	(42,14,1),
	(43,15,2),
	(44,15,1),
	(45,16,2),
	(46,16,1),
	(47,19,2),
	(48,19,1),
	(49,20,2),
	(50,20,1),
	(51,17,2),
	(52,17,1),
	(53,18,2),
	(54,18,1),
	(55,21,2),
	(56,21,1),
	(57,22,2),
	(58,22,1),
	(59,23,2),
	(60,23,1),
	(61,24,2),
	(62,24,1),
	(63,25,2),
	(64,25,1),
	(65,26,2),
	(66,26,1),
	(67,27,2),
	(68,27,1),
	(69,28,2),
	(70,28,1),
	(71,29,2),
	(72,29,1),
	(73,30,2),
	(74,30,1),
	(75,31,2),
	(76,31,1),
	(77,32,2),
	(78,32,1),
	(79,33,2),
	(80,33,1);

/*!40000 ALTER TABLE `cms_menus_privileges` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table cms_moduls
# ------------------------------------------------------------

DROP TABLE IF EXISTS `cms_moduls`;

CREATE TABLE `cms_moduls` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `icon` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `path` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `table_name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `controller` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `is_protected` tinyint(1) NOT NULL DEFAULT '0',
  `is_active` tinyint(1) NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

LOCK TABLES `cms_moduls` WRITE;
/*!40000 ALTER TABLE `cms_moduls` DISABLE KEYS */;

INSERT INTO `cms_moduls` (`id`, `name`, `icon`, `path`, `table_name`, `controller`, `is_protected`, `is_active`, `created_at`, `updated_at`, `deleted_at`)
VALUES
	(1,'Notifications','fa fa-cog','notifications','cms_notifications','NotificationsController',1,1,'2018-02-11 06:52:12',NULL,NULL),
	(2,'Privileges','fa fa-cog','privileges','cms_privileges','PrivilegesController',1,1,'2018-02-11 06:52:12',NULL,NULL),
	(3,'Privileges Roles','fa fa-cog','privileges_roles','cms_privileges_roles','PrivilegesRolesController',1,1,'2018-02-11 06:52:12',NULL,NULL),
	(4,'Users Management','fa fa-users','users','cms_users','AdminCmsUsersController',0,1,'2018-02-11 06:52:12',NULL,NULL),
	(5,'Settings','fa fa-cog','settings','cms_settings','SettingsController',1,1,'2018-02-11 06:52:12',NULL,NULL),
	(6,'Module Generator','fa fa-database','module_generator','cms_moduls','ModulsController',1,1,'2018-02-11 06:52:12',NULL,NULL),
	(7,'Menu Management','fa fa-bars','menu_management','cms_menus','MenusController',1,1,'2018-02-11 06:52:12',NULL,NULL),
	(8,'Email Templates','fa fa-envelope-o','email_templates','cms_email_templates','EmailTemplatesController',1,1,'2018-02-11 06:52:12',NULL,NULL),
	(9,'Statistic Builder','fa fa-dashboard','statistic_builder','cms_statistics','StatisticBuilderController',1,1,'2018-02-11 06:52:12',NULL,NULL),
	(10,'API Generator','fa fa-cloud-download','api_generator','','ApiCustomController',1,1,'2018-02-11 06:52:12',NULL,NULL),
	(11,'Log User Access','fa fa-flag-o','logs','cms_logs','LogsController',1,1,'2018-02-11 06:52:12',NULL,NULL),
	(12,'News','fa fa-pencil','news','news','AdminNewsController',0,0,'2018-02-11 07:00:54',NULL,'2018-02-11 07:14:42'),
	(13,'News','fa fa-pencil','news','news','AdminNewsController',0,0,'2018-02-11 07:15:02',NULL,'2018-02-11 07:33:13'),
	(14,'News','fa fa-pencil','news','news','AdminNewsController',0,0,'2018-02-11 07:33:31',NULL,NULL),
	(15,'Events','fa fa-calendar','events','events','AdminEventsController',0,0,'2018-02-11 07:39:44',NULL,NULL),
	(16,'Press Release','fa fa-glass','press_release','press_release','AdminPressReleaseController',0,0,'2018-02-11 07:48:23',NULL,NULL),
	(17,'Gallery','fa fa-video-camera','gallery','gallery','AdminGalleryController',0,0,'2018-02-11 07:50:21',NULL,NULL),
	(18,'Pages','fa fa-cog','pages','pages','AdminPagesController',0,0,'2018-02-11 08:50:42',NULL,NULL),
	(19,'Our People','fa fa-plus-circle','people','people','AdminPeopleController',0,0,'2018-02-20 22:11:09',NULL,NULL),
	(20,'Job Listing','fa fa-glass','jobs','jobs','AdminJobsController',0,0,'2018-02-20 23:14:09',NULL,NULL);

/*!40000 ALTER TABLE `cms_moduls` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table cms_notifications
# ------------------------------------------------------------

DROP TABLE IF EXISTS `cms_notifications`;

CREATE TABLE `cms_notifications` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `id_cms_users` int(11) DEFAULT NULL,
  `content` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `url` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `is_read` tinyint(1) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;



# Dump of table cms_privileges
# ------------------------------------------------------------

DROP TABLE IF EXISTS `cms_privileges`;

CREATE TABLE `cms_privileges` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `is_superadmin` tinyint(1) DEFAULT NULL,
  `theme_color` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

LOCK TABLES `cms_privileges` WRITE;
/*!40000 ALTER TABLE `cms_privileges` DISABLE KEYS */;

INSERT INTO `cms_privileges` (`id`, `name`, `is_superadmin`, `theme_color`, `created_at`, `updated_at`)
VALUES
	(1,'Super Administrator',1,'skin-red','2018-02-11 06:52:12',NULL),
	(2,'Administrator',0,'skin-blue',NULL,NULL);

/*!40000 ALTER TABLE `cms_privileges` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table cms_privileges_roles
# ------------------------------------------------------------

DROP TABLE IF EXISTS `cms_privileges_roles`;

CREATE TABLE `cms_privileges_roles` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `is_visible` tinyint(1) DEFAULT NULL,
  `is_create` tinyint(1) DEFAULT NULL,
  `is_read` tinyint(1) DEFAULT NULL,
  `is_edit` tinyint(1) DEFAULT NULL,
  `is_delete` tinyint(1) DEFAULT NULL,
  `id_cms_privileges` int(11) DEFAULT NULL,
  `id_cms_moduls` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

LOCK TABLES `cms_privileges_roles` WRITE;
/*!40000 ALTER TABLE `cms_privileges_roles` DISABLE KEYS */;

INSERT INTO `cms_privileges_roles` (`id`, `is_visible`, `is_create`, `is_read`, `is_edit`, `is_delete`, `id_cms_privileges`, `id_cms_moduls`, `created_at`, `updated_at`)
VALUES
	(1,1,0,0,0,0,1,1,'2018-02-11 06:52:12',NULL),
	(2,1,1,1,1,1,1,2,'2018-02-11 06:52:12',NULL),
	(3,0,1,1,1,1,1,3,'2018-02-11 06:52:12',NULL),
	(4,1,1,1,1,1,1,4,'2018-02-11 06:52:12',NULL),
	(5,1,1,1,1,1,1,5,'2018-02-11 06:52:12',NULL),
	(6,1,1,1,1,1,1,6,'2018-02-11 06:52:12',NULL),
	(7,1,1,1,1,1,1,7,'2018-02-11 06:52:12',NULL),
	(8,1,1,1,1,1,1,8,'2018-02-11 06:52:12',NULL),
	(9,1,1,1,1,1,1,9,'2018-02-11 06:52:12',NULL),
	(10,1,1,1,1,1,1,10,'2018-02-11 06:52:12',NULL),
	(11,1,0,1,0,1,1,11,'2018-02-11 06:52:12',NULL),
	(12,1,1,1,1,1,1,12,NULL,NULL),
	(13,1,1,1,1,1,1,13,NULL,NULL),
	(14,1,1,1,1,1,1,14,NULL,NULL),
	(15,1,1,1,1,1,1,15,NULL,NULL),
	(16,1,1,1,1,1,2,15,NULL,NULL),
	(17,1,1,1,1,1,2,14,NULL,NULL),
	(18,1,1,1,1,1,2,4,NULL,NULL),
	(19,1,1,1,1,1,1,16,NULL,NULL),
	(20,1,1,1,1,1,1,17,NULL,NULL),
	(21,1,1,1,1,1,1,18,NULL,NULL),
	(22,1,1,1,1,1,2,17,NULL,NULL),
	(23,1,1,1,1,1,2,12,NULL,NULL),
	(24,1,1,1,1,1,2,13,NULL,NULL),
	(25,1,0,1,1,0,2,18,NULL,NULL),
	(26,1,1,1,1,1,2,16,NULL,NULL),
	(27,1,1,1,1,1,1,19,NULL,NULL),
	(28,1,1,1,1,1,1,20,NULL,NULL);

/*!40000 ALTER TABLE `cms_privileges_roles` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table cms_settings
# ------------------------------------------------------------

DROP TABLE IF EXISTS `cms_settings`;

CREATE TABLE `cms_settings` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `content` text COLLATE utf8_unicode_ci,
  `content_input_type` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `dataenum` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `helper` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `group_setting` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `label` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

LOCK TABLES `cms_settings` WRITE;
/*!40000 ALTER TABLE `cms_settings` DISABLE KEYS */;

INSERT INTO `cms_settings` (`id`, `name`, `content`, `content_input_type`, `dataenum`, `helper`, `created_at`, `updated_at`, `group_setting`, `label`)
VALUES
	(1,'login_background_color','ffffff ','text',NULL,'Input hexacode','2018-02-11 06:52:12',NULL,'Login Register Style','Login Background Color'),
	(2,'login_font_color','','text',NULL,'Input hexacode','2018-02-11 06:52:12',NULL,'Login Register Style','Login Font Color'),
	(3,'login_background_image',NULL,'upload_image',NULL,NULL,'2018-02-11 06:52:12',NULL,'Login Register Style','Login Background Image'),
	(4,'email_sender','support@crudbooster.com','text',NULL,NULL,'2018-02-11 06:52:13',NULL,'Email Setting','Email Sender'),
	(5,'smtp_driver','mail','select','smtp,mail,sendmail',NULL,'2018-02-11 06:52:13',NULL,'Email Setting','Mail Driver'),
	(6,'smtp_host','','text',NULL,NULL,'2018-02-11 06:52:13',NULL,'Email Setting','SMTP Host'),
	(7,'smtp_port','25','text',NULL,'default 25','2018-02-11 06:52:13',NULL,'Email Setting','SMTP Port'),
	(8,'smtp_username','','text',NULL,NULL,'2018-02-11 06:52:13',NULL,'Email Setting','SMTP Username'),
	(9,'smtp_password','','text',NULL,NULL,'2018-02-11 06:52:13',NULL,'Email Setting','SMTP Password'),
	(10,'appname','DANAREKSA','text',NULL,NULL,'2018-02-11 06:52:13',NULL,'Application Setting','Application Name'),
	(11,'default_paper_size','Legal','text',NULL,'Paper size, ex : A4, Legal, etc','2018-02-11 06:52:13',NULL,'Application Setting','Default Paper Print Size'),
	(12,'logo','uploads/2018-02/2141d41beceaa47fd39042430eebcf20.jpg','upload_image',NULL,NULL,'2018-02-11 06:52:13',NULL,'Application Setting','Logo'),
	(13,'favicon',NULL,'upload_image',NULL,NULL,'2018-02-11 06:52:13',NULL,'Application Setting','Favicon'),
	(14,'api_debug_mode','false','select','true,false',NULL,'2018-02-11 06:52:13',NULL,'Application Setting','API Debug Mode'),
	(15,'google_api_key','','text',NULL,NULL,'2018-02-11 06:52:13',NULL,'Application Setting','Google API Key'),
	(16,'google_fcm_key','','text',NULL,NULL,'2018-02-11 06:52:13',NULL,'Application Setting','Google FCM Key');

/*!40000 ALTER TABLE `cms_settings` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table cms_statistic_components
# ------------------------------------------------------------

DROP TABLE IF EXISTS `cms_statistic_components`;

CREATE TABLE `cms_statistic_components` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `id_cms_statistics` int(11) DEFAULT NULL,
  `componentID` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `component_name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `area_name` varchar(55) COLLATE utf8_unicode_ci DEFAULT NULL,
  `sorting` int(11) DEFAULT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `config` longtext COLLATE utf8_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

LOCK TABLES `cms_statistic_components` WRITE;
/*!40000 ALTER TABLE `cms_statistic_components` DISABLE KEYS */;

INSERT INTO `cms_statistic_components` (`id`, `id_cms_statistics`, `componentID`, `component_name`, `area_name`, `sorting`, `name`, `config`, `created_at`, `updated_at`)
VALUES
	(1,1,'5fafceb3a3a8cafcee19dba0afebfd24','smallbox',NULL,0,'Untitled',NULL,'2018-02-20 23:32:47',NULL),
	(2,1,'f52868af470d864919c29fdc99320e49','smallbox','area2',0,'Untitled',NULL,'2018-02-20 23:33:02',NULL);

/*!40000 ALTER TABLE `cms_statistic_components` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table cms_statistics
# ------------------------------------------------------------

DROP TABLE IF EXISTS `cms_statistics`;

CREATE TABLE `cms_statistics` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `slug` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

LOCK TABLES `cms_statistics` WRITE;
/*!40000 ALTER TABLE `cms_statistics` DISABLE KEYS */;

INSERT INTO `cms_statistics` (`id`, `name`, `slug`, `created_at`, `updated_at`)
VALUES
	(1,'test','test','2018-02-20 23:32:34',NULL);

/*!40000 ALTER TABLE `cms_statistics` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table cms_users
# ------------------------------------------------------------

DROP TABLE IF EXISTS `cms_users`;

CREATE TABLE `cms_users` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `photo` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `email` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `password` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `id_cms_privileges` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `status` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

LOCK TABLES `cms_users` WRITE;
/*!40000 ALTER TABLE `cms_users` DISABLE KEYS */;

INSERT INTO `cms_users` (`id`, `name`, `photo`, `email`, `password`, `id_cms_privileges`, `created_at`, `updated_at`, `status`)
VALUES
	(1,'Super Admin','uploads/1/2018-02/1_2.jpg','septian.gun@gmail.com','$2y$10$xHD3GT2hNTueSHBDsfhCkOD7euNS2K3wb/zG2gmLZR/XAJpAi7CP.',1,'2018-02-11 06:52:12','2018-02-11 07:46:42','Active'),
	(2,'admin','uploads/1/2018-02/djavu_jaket_kulit_sintetis_aril_sk24_pria_list_hitam_1485243539_47555031_ad478d5d6bcff466b594b2ec71d_800x800.jpg','admin@gmail.com','$2y$10$zWc5IXQ67EfAlPSjcgJQReQhY/oMuOiJeKFyjwZxegsPMTKdWeR3S',2,'2018-02-11 07:44:03','2018-02-11 07:46:50',NULL),
	(3,'Kuncoro Yoyo','uploads/1/2018-02/kuncoro.png','yoyo@ioodesgen.com','$2y$10$duNEURy51KkFNp2Tb3WDneRxcWJIddqEZKyREkYwnC6xO8QBsoMKW',1,'2018-02-20 23:25:15','2018-02-20 23:34:28',NULL),
	(4,'admin','uploads/1/2018-02/163438_1761843855225_958341_n.jpg','admin@admin.com','$2y$10$KE9NjykcTGNoyDQELZyQ7..Mj/1SOFH.vHOyMhrxoVJhUedi96XyK',2,'2018-02-20 23:34:57',NULL,NULL);

/*!40000 ALTER TABLE `cms_users` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table events
# ------------------------------------------------------------

DROP TABLE IF EXISTS `events`;

CREATE TABLE `events` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `description` text COLLATE utf8_unicode_ci,
  `image` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `id_cms_users` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `status` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;



# Dump of table gallery
# ------------------------------------------------------------

DROP TABLE IF EXISTS `gallery`;

CREATE TABLE `gallery` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `description` text COLLATE utf8_unicode_ci,
  `media` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `id_cms_users` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `status` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

LOCK TABLES `gallery` WRITE;
/*!40000 ALTER TABLE `gallery` DISABLE KEYS */;

INSERT INTO `gallery` (`id`, `title`, `description`, `media`, `id_cms_users`, `created_at`, `updated_at`, `status`)
VALUES
	(1,'Gallery 1','Gallery 1','uploads/1/2018-02/meeting.jpg',1,'2018-02-11 07:53:18',NULL,'Active'),
	(2,'test','testtesttesttest','uploads/1/2018-02/download.png',1,'2018-02-11 08:58:07',NULL,'Active');

/*!40000 ALTER TABLE `gallery` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table jobs
# ------------------------------------------------------------

DROP TABLE IF EXISTS `jobs`;

CREATE TABLE `jobs` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `description` text COLLATE utf8_unicode_ci,
  `image` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `id_cms_users` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `status` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

LOCK TABLES `jobs` WRITE;
/*!40000 ALTER TABLE `jobs` DISABLE KEYS */;

INSERT INTO `jobs` (`id`, `title`, `description`, `image`, `id_cms_users`, `created_at`, `updated_at`, `status`)
VALUES
	(1,'Senior Engineer','lorem ipsum doler si amet',NULL,1,'2018-02-20 23:20:20','2018-02-20 23:20:30','Active');

/*!40000 ALTER TABLE `jobs` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table migrations
# ------------------------------------------------------------

DROP TABLE IF EXISTS `migrations`;

CREATE TABLE `migrations` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `migration` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

LOCK TABLES `migrations` WRITE;
/*!40000 ALTER TABLE `migrations` DISABLE KEYS */;

INSERT INTO `migrations` (`id`, `migration`, `batch`)
VALUES
	(1,'2016_08_07_145904_add_table_cms_apicustom',1),
	(2,'2016_08_07_150834_add_table_cms_dashboard',1),
	(3,'2016_08_07_151210_add_table_cms_logs',1),
	(4,'2016_08_07_151211_add_details_cms_logs',1),
	(5,'2016_08_07_152014_add_table_cms_privileges',1),
	(6,'2016_08_07_152214_add_table_cms_privileges_roles',1),
	(7,'2016_08_07_152320_add_table_cms_settings',1),
	(8,'2016_08_07_152421_add_table_cms_users',1),
	(9,'2016_08_07_154624_add_table_cms_menus_privileges',1),
	(10,'2016_08_07_154624_add_table_cms_moduls',1),
	(11,'2016_08_17_225409_add_status_cms_users',1),
	(12,'2016_08_20_125418_add_table_cms_notifications',1),
	(13,'2016_09_04_033706_add_table_cms_email_queues',1),
	(14,'2016_09_16_035347_add_group_setting',1),
	(15,'2016_09_16_045425_add_label_setting',1),
	(16,'2016_09_17_104728_create_nullable_cms_apicustom',1),
	(17,'2016_10_01_141740_add_method_type_apicustom',1),
	(18,'2016_10_01_141846_add_parameters_apicustom',1),
	(19,'2016_10_01_141934_add_responses_apicustom',1),
	(20,'2016_10_01_144826_add_table_apikey',1),
	(21,'2016_11_14_141657_create_cms_menus',1),
	(22,'2016_11_15_132350_create_cms_email_templates',1),
	(23,'2016_11_15_190410_create_cms_statistics',1),
	(24,'2016_11_17_102740_create_cms_statistic_components',1),
	(25,'2017_06_06_164501_add_deleted_at_cms_moduls',1);

/*!40000 ALTER TABLE `migrations` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table news
# ------------------------------------------------------------

DROP TABLE IF EXISTS `news`;

CREATE TABLE `news` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `description` text COLLATE utf8_unicode_ci,
  `image` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `id_cms_users` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `status` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

LOCK TABLES `news` WRITE;
/*!40000 ALTER TABLE `news` DISABLE KEYS */;

INSERT INTO `news` (`id`, `title`, `description`, `image`, `id_cms_users`, `created_at`, `updated_at`, `status`)
VALUES
	(1,'Test News Danareksa','Test News Danareksa','uploads/1/2018-02/download.png',1,'2018-02-11 07:34:44','2018-02-11 08:49:53','Active');

/*!40000 ALTER TABLE `news` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table pages
# ------------------------------------------------------------

DROP TABLE IF EXISTS `pages`;

CREATE TABLE `pages` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `description` text COLLATE utf8_unicode_ci,
  `image` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `id_cms_users` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `status` enum('Active','InActive') COLLATE utf8_unicode_ci DEFAULT 'Active',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

LOCK TABLES `pages` WRITE;
/*!40000 ALTER TABLE `pages` DISABLE KEYS */;

INSERT INTO `pages` (`id`, `title`, `description`, `image`, `id_cms_users`, `created_at`, `updated_at`, `status`)
VALUES
	(1,'About Us','About Us',NULL,2,'2018-02-11 09:07:14','2018-02-19 16:22:41','Active'),
	(2,'Our Culture','Our Culture',NULL,1,'2018-02-11 09:08:03',NULL,'Active'),
	(3,'Benefits','Benefits',NULL,1,'2018-02-11 09:08:14',NULL,'Active'),
	(4,'Jaringan Distribusi','Jaringan Distribusi',NULL,1,'2018-02-11 09:08:44',NULL,'Active'),
	(5,'Values','<p>lorem ipsum doler siamet</p>',NULL,1,'2018-02-20 22:26:44',NULL,'Active'),
	(6,'Vision Mission','<p>Vision Mission<br></p>',NULL,2,'2018-02-20 22:27:18',NULL,'Active'),
	(7,'Kebijakan Mutu (CARES)','<p>\r\n		\r\n	\r\n	\r\n		</p><div class=\"page\" title=\"Page 1\">\r\n			<div class=\"section\">\r\n				<div class=\"layoutArea\">\r\n					<div class=\"column\">\r\n						<p>Kebijakan Mutu (CARES)<br></p>\r\n					</div>\r\n				</div>\r\n			</div>\r\n		</div>',NULL,2,'2018-02-20 22:27:35',NULL,'Active'),
	(8,'Values (I-FAST)','<p>Values (I-FAST)<br></p>',NULL,2,'2018-02-20 22:27:49',NULL,'Active'),
	(9,'Awards','Awards',NULL,2,'2018-02-20 22:28:29',NULL,'Active'),
	(10,'Milestone','<p>Milestone<br></p>',NULL,2,'2018-02-20 22:28:48',NULL,'Active'),
	(11,'Equity Offering','<p>Equity Offering lorem ipsum<br></p>',NULL,2,'2018-02-20 22:30:46','2018-02-20 23:30:31','Active'),
	(12,'Debt Offering','<p>Debt Offering<br></p>',NULL,2,'2018-02-20 22:30:59',NULL,'Active'),
	(13,'Transactional','<p>Transactional<br></p>',NULL,2,'2018-02-20 22:31:10',NULL,'Active'),
	(14,'General','<p>General<br></p>',NULL,2,'2018-02-20 22:31:20',NULL,'Active'),
	(15,'Institutional','<p>Institutional<br></p>',NULL,2,'2018-02-20 22:31:30',NULL,'Active'),
	(16,'Retail','<p>Retail<br></p>',NULL,2,'2018-02-20 22:31:42',NULL,'Active'),
	(17,'Equity Research','<p>\r\n		\r\n	\r\n	\r\n		</p><div class=\"page\" title=\"Page 1\">\r\n			<div class=\"section\">\r\n				<div class=\"layoutArea\">\r\n					<div class=\"column\">\r\n						<p>Equity Research<br></p>\r\n					</div>\r\n				</div>\r\n			</div>\r\n		</div>',NULL,2,'2018-02-20 22:31:55',NULL,'Active'),
	(18,'Debt Research','<p>Debt Research<br></p>',NULL,2,'2018-02-20 22:32:07',NULL,'Active'),
	(19,'Our Culture','<p>Our Culture<br></p>',NULL,2,'2018-02-20 22:32:20',NULL,'Active'),
	(20,'Benefits','<p>Benefits<br></p>',NULL,2,'2018-02-20 22:32:29',NULL,'Active'),
	(21,'Our Service','<p>Our Service<br></p>',NULL,2,'2018-02-20 22:58:18',NULL,'Active');

/*!40000 ALTER TABLE `pages` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table people
# ------------------------------------------------------------

DROP TABLE IF EXISTS `people`;

CREATE TABLE `people` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `description` text COLLATE utf8_unicode_ci,
  `image` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `id_cms_users` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `status` enum('Active','InActive') COLLATE utf8_unicode_ci DEFAULT 'Active',
  `type` varchar(255) COLLATE utf8_unicode_ci DEFAULT '',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

LOCK TABLES `people` WRITE;
/*!40000 ALTER TABLE `people` DISABLE KEYS */;

INSERT INTO `people` (`id`, `title`, `description`, `image`, `id_cms_users`, `created_at`, `updated_at`, `status`, `type`)
VALUES
	(1,'Kunkun Priyambodo','lorem ipsum doler siamet','uploads/1/2018-02/kuncoro.png',2,'2018-02-20 22:14:42',NULL,'Active','director'),
	(2,'Yoyo','lorem ipsum doler si amet','uploads/1/2018-02/163438_1761843855225_958341_n.jpg',2,'2018-02-20 22:16:57',NULL,'Active','commisioner'),
	(3,'Septian','lorem ipsum doler','uploads/1/2018-02/dollar_sign_vector.jpg',2,'2018-02-20 22:23:35','2018-02-20 22:25:29','InActive',' commisioner');

/*!40000 ALTER TABLE `people` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table press_release
# ------------------------------------------------------------

DROP TABLE IF EXISTS `press_release`;

CREATE TABLE `press_release` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `description` text COLLATE utf8_unicode_ci,
  `image` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `id_cms_users` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `status` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;




/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
