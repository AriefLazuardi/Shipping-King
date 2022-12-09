-- --------------------------------------------------------
-- Host:                         127.0.0.1
-- Server version:               5.7.33 - MySQL Community Server (GPL)
-- Server OS:                    Win64
-- HeidiSQL Version:             11.2.0.6213
-- --------------------------------------------------------

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8 */;
/*!50503 SET NAMES utf8mb4 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;


-- Dumping database structure for shippingking
CREATE DATABASE IF NOT EXISTS `shippingking` /*!40100 DEFAULT CHARACTER SET latin1 */;
USE `shippingking`;

-- Dumping structure for table shippingking.ekspedisi
CREATE TABLE IF NOT EXISTS `ekspedisi` (
  `id` int(11) NOT NULL,
  `nama_ekspedisi` varchar(255) NOT NULL,
  `url` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Dumping data for table shippingking.ekspedisi: ~10 rows (approximately)
/*!40000 ALTER TABLE `ekspedisi` DISABLE KEYS */;
INSERT INTO `ekspedisi` (`id`, `nama_ekspedisi`, `url`) VALUES
	(1, 'JNE', 'https://www.jne.co.id/'),
	(2, 'POS', 'https://www.posindonesia.co.id/'),
	(3, 'Expedito', 'http://expedito.co.id'),
	(4, 'Citra Van Titipan Kilat (TIKI)', 'https://tiki.id/'),
	(5, 'J&T Express (J&T)', 'https://www.jet.co.id'),
	(6, 'Wahana Prestasi Logistik (Wahana)', 'http://wahana.com'),
	(7, 'SiCepat Express (SiCepat)', 'https://sicepat.com'),
	(8, 'Lion Parcel (LION)', 'http://lionparcel.com'),
	(9, 'Ninja Xpress (NINJA)', 'http://www.ninjaxpress.co'),
	(10, 'Nusantara Surya Sakti (NSS)', 'http://nssxpress.co.id');
/*!40000 ALTER TABLE `ekspedisi` ENABLE KEYS */;

-- Dumping structure for table shippingking.failed_jobs
CREATE TABLE IF NOT EXISTS `failed_jobs` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `uuid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table shippingking.failed_jobs: ~0 rows (approximately)
/*!40000 ALTER TABLE `failed_jobs` DISABLE KEYS */;
/*!40000 ALTER TABLE `failed_jobs` ENABLE KEYS */;

-- Dumping structure for table shippingking.layanan
CREATE TABLE IF NOT EXISTS `layanan` (
  `id` int(11) NOT NULL,
  `ekspedisi_id` int(11) NOT NULL,
  `deskripsi_layanan` varchar(255) DEFAULT NULL,
  `nama_layanan` varchar(255) NOT NULL,
  `harga_pergram` float NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `Index 2` (`ekspedisi_id`),
  CONSTRAINT `FK_layanan_ekspedisi` FOREIGN KEY (`ekspedisi_id`) REFERENCES `ekspedisi` (`id`) ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Dumping data for table shippingking.layanan: ~21 rows (approximately)
/*!40000 ALTER TABLE `layanan` DISABLE KEYS */;
INSERT INTO `layanan` (`id`, `ekspedisi_id`, `deskripsi_layanan`, `nama_layanan`, `harga_pergram`) VALUES
	(1, 1, 'Ongkos Kirim Ekonomis', 'OKE', 25000),
	(2, 2, 'Pos Reguler', 'Pos Reguler', 75000),
	(3, 3, NULL, 'SkySaver by Skynet Worldwide', 128000),
	(4, 4, NULL, 'WDX', 352057),
	(5, 1, 'Ongkos Kirim Ekonomis', 'OKE', 69000),
	(6, 4, 'T03', 'T03', 42000),
	(7, 2, 'Pos Ekonomi', 'Pos Ekonomi', 57000),
	(8, 4, 'Economy Service', 'ECO', 60000),
	(9, 5, 'EZ', 'Regular Service', 63000),
	(10, 4, 'T05', 'T05', 67500),
	(11, 1, 'Ongkos Kirim Ekonomis', 'OKE', 69000),
	(12, 4, 'Reguler Service', 'REG', 72000),
	(13, 2, 'Pos Reguler', 'Pos Reguler', 75000),
	(14, 1, 'Layanan Reguler', 'REG', 75000),
	(15, 7, 'Layanan Reguler', 'REG', 79500),
	(16, 8, 'Economy Service', 'JAGOPACK', 81000),
	(17, 7, 'SiUntung', 'SIUNT', 85500),
	(18, 4, 'Over Night Service', 'ONS', 96000),
	(19, 8, 'Reguler Service', 'REGPACK', 99000),
	(20, 4, 'Trucking', 'TRC', 130000),
	(21, 4, 'Same Day Service', 'SDS', 135000);
/*!40000 ALTER TABLE `layanan` ENABLE KEYS */;

-- Dumping structure for table shippingking.migrations
CREATE TABLE IF NOT EXISTS `migrations` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table shippingking.migrations: ~7 rows (approximately)
/*!40000 ALTER TABLE `migrations` DISABLE KEYS */;
INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
	(1, '2014_10_12_000000_create_users_table', 1),
	(2, '2014_10_12_100000_create_password_resets_table', 1),
	(3, '2019_08_19_000000_create_failed_jobs_table', 1),
	(4, '2019_12_14_000001_create_personal_access_tokens_table', 1),
	(5, '2022_10_20_035713_create_todo_table', 1),
	(6, '2022_10_20_040506_create_posts_table', 1),
	(7, '2022_10_23_043456_create_tasks_table', 1);
/*!40000 ALTER TABLE `migrations` ENABLE KEYS */;

-- Dumping structure for table shippingking.password_resets
CREATE TABLE IF NOT EXISTS `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  KEY `password_resets_email_index` (`email`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table shippingking.password_resets: ~0 rows (approximately)
/*!40000 ALTER TABLE `password_resets` DISABLE KEYS */;
/*!40000 ALTER TABLE `password_resets` ENABLE KEYS */;

-- Dumping structure for table shippingking.pengiriman
CREATE TABLE IF NOT EXISTS `pengiriman` (
  `id` int(11) NOT NULL,
  `layanan_id` int(11) NOT NULL,
  `asal` varchar(255) NOT NULL,
  `tujuan` varchar(255) NOT NULL,
  `berat_gram` float NOT NULL,
  `estimasi` varchar(255) DEFAULT NULL,
  `jenis_pengiriman` varchar(255) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `Index 2` (`layanan_id`),
  CONSTRAINT `FK_pengiriman_layanan` FOREIGN KEY (`layanan_id`) REFERENCES `layanan` (`id`) ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Dumping data for table shippingking.pengiriman: ~20 rows (approximately)
/*!40000 ALTER TABLE `pengiriman` DISABLE KEYS */;
INSERT INTO `pengiriman` (`id`, `layanan_id`, `asal`, `tujuan`, `berat_gram`, `estimasi`, `jenis_pengiriman`) VALUES
	(1, 1, 'Pontianak', 'Jakarta Selatan', 3000, '2-3 hari', 'Domestik'),
	(2, 2, 'Kolaka', 'Batam', 2000, '6 hari', 'Domestik'),
	(3, 3, 'Jakarta Pusat', 'Singapura', 1000, NULL, 'Internasional'),
	(4, 4, 'Semarang', 'Malaysia', 1000, NULL, 'Internasional'),
	(5, 6, 'Pontianak', 'Jakarta Selatan', 3000, '7 hari', 'Domestik'),
	(6, 7, 'Pontianak', 'Jakarta Selatan', 3000, '7-14 Hari', 'Domestik'),
	(7, 8, 'Pontianak', 'Jakarta Selatan', 3000, '4 Hari', 'Domestik'),
	(8, 9, 'Pontianak', 'Jakarta Selatan', 3000, NULL, 'Domestik'),
	(9, 10, 'Pontianak', 'Jakarta Selatan', 3000, '7 hari', 'Domestik'),
	(10, 11, 'Pontianak', 'Jakarta Selatan', 3000, '2-3 hari', 'Domestik'),
	(11, 12, 'Pontianak', 'Jakarta Selatan', 3000, '2 hari', 'Domestik'),
	(12, 13, 'Pontianak', 'Jakarta Selatan', 3000, '4 HARI', 'Domestik'),
	(13, 14, 'Pontianak', 'Jakarta Selatan', 3000, '1-2 hari', 'Domestik'),
	(14, 15, 'Pontianak', 'Jakarta Selatan', 3000, '2-3 hari', 'Domestik'),
	(15, 16, 'Pontianak', 'Jakarta Selatan', 3000, '7-10 hari', 'Domestik'),
	(16, 17, 'Pontianak', 'Jakarta Selatan', 3000, '2-3 hari', 'Domestik'),
	(17, 18, 'Pontianak', 'Jakarta Selatan', 3000, '1 hari', 'Domestik'),
	(18, 19, 'Pontianak', 'Jakarta Selatan', 3000, '2-3 hari', 'Domestik'),
	(19, 20, 'Pontianak', 'Jakarta Selatan', 3000, '7 hari', 'Domestik'),
	(20, 21, 'Pontianak', 'Jakarta Selatan', 3000, '0 hari', 'Domestik');
/*!40000 ALTER TABLE `pengiriman` ENABLE KEYS */;

-- Dumping structure for table shippingking.personal_access_tokens
CREATE TABLE IF NOT EXISTS `personal_access_tokens` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `tokenable_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tokenable_id` bigint(20) unsigned NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `abilities` text COLLATE utf8mb4_unicode_ci,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `expires_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table shippingking.personal_access_tokens: ~0 rows (approximately)
/*!40000 ALTER TABLE `personal_access_tokens` DISABLE KEYS */;
/*!40000 ALTER TABLE `personal_access_tokens` ENABLE KEYS */;

-- Dumping structure for table shippingking.posts
CREATE TABLE IF NOT EXISTS `posts` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `content` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table shippingking.posts: ~0 rows (approximately)
/*!40000 ALTER TABLE `posts` DISABLE KEYS */;
/*!40000 ALTER TABLE `posts` ENABLE KEYS */;

-- Dumping structure for table shippingking.tasks
CREATE TABLE IF NOT EXISTS `tasks` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- Dumping structure for table shippingking.todo
CREATE TABLE IF NOT EXISTS `todo` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table shippingking.todo: ~0 rows (approximately)
/*!40000 ALTER TABLE `todo` DISABLE KEYS */;
/*!40000 ALTER TABLE `todo` ENABLE KEYS */;

-- Dumping structure for table shippingking.users
CREATE TABLE IF NOT EXISTS `users` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `users_email_unique` (`email`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table shippingking.users: ~0 rows (approximately)
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
/*!40000 ALTER TABLE `users` ENABLE KEYS */;

/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IFNULL(@OLD_FOREIGN_KEY_CHECKS, 1) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40111 SET SQL_NOTES=IFNULL(@OLD_SQL_NOTES, 1) */;
