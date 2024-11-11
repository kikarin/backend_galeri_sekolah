-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Nov 07, 2024 at 08:53 AM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `web_sekolah1`
--

-- --------------------------------------------------------

--
-- Table structure for table `agendas`
--

CREATE TABLE `agendas` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(255) NOT NULL,
  `description` text DEFAULT NULL,
  `event_date` datetime DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `agendas`
--

INSERT INTO `agendas` (`id`, `title`, `description`, `event_date`, `created_at`, `updated_at`) VALUES
(1, 'Kelas 12', 'flasmop', '2024-11-29 00:00:00', '2024-09-29 05:49:46', '2024-10-09 08:19:26'),
(9, 'TransforKr4b', 'acara pameran', '2024-10-16 00:00:00', '2024-09-29 18:08:09', '2024-10-21 17:07:01');

-- --------------------------------------------------------

--
-- Table structure for table `albums`
--

CREATE TABLE `albums` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(255) NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `albums`
--

INSERT INTO `albums` (`id`, `title`, `user_id`, `created_at`, `updated_at`) VALUES
(3, 'Kegiatan Hari ini', 2, '2024-09-29 23:25:13', '2024-10-18 08:50:07'),
(6, 'Kegiatan P5', 2, '2024-09-30 18:13:50', '2024-10-18 08:49:02');

-- --------------------------------------------------------

--
-- Table structure for table `comments`
--

CREATE TABLE `comments` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `photo_id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `content` text NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `comments`
--

INSERT INTO `comments` (`id`, `photo_id`, `user_id`, `content`, `created_at`, `updated_at`) VALUES
(12, 8, 13, 'wow', '2024-09-29 01:37:32', '2024-09-29 01:37:32'),
(18, 10, 2, 'tes admin', '2024-09-30 19:24:53', '2024-09-30 19:24:53'),
(23, 8, 2, 'tes komen admin', '2024-10-03 17:39:14', '2024-10-03 17:39:14'),
(42, 43, 13, 'kece pak!!!', '2024-10-18 10:37:22', '2024-10-18 10:37:22');

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` varchar(255) NOT NULL,
  `connection` text NOT NULL,
  `queue` text NOT NULL,
  `payload` longtext NOT NULL,
  `exception` longtext NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `galleries`
--

CREATE TABLE `galleries` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(255) NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `galleries`
--

INSERT INTO `galleries` (`id`, `title`, `user_id`, `created_at`, `updated_at`) VALUES
(1, 'Sekolah', 2, '2024-09-28 02:00:35', '2024-10-18 08:24:21'),
(2, 'Event Sekolah', 2, '2024-09-28 02:01:00', '2024-09-28 02:02:02'),
(7, 'Kejuruan', 2, '2024-09-29 04:45:54', '2024-10-18 08:38:01');

-- --------------------------------------------------------

--
-- Table structure for table `infos`
--

CREATE TABLE `infos` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(255) NOT NULL,
  `content` text NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `infos`
--

INSERT INTO `infos` (`id`, `title`, `content`, `created_at`, `updated_at`) VALUES
(1, 'Senin', 'Upacara Bendera', '2024-09-29 05:45:06', '2024-09-29 05:45:06'),
(3, 'selasa-rabu', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Pellentesque ac sodales velit. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia curae; Vivamus imperdiet a est non vestibulum. Phasellus ante erat, porttitor a ex vel, malesuada suscipit ex. Duis et lobortis magna, at viverra mi. Nullam gravida iaculis ullamcorper. Praesent feugiat ligula sed nunc dignissim, non facilisis ante luctus. Sed quam erat, porta ut turpis a, faucibus ornare arcu. Vestibulum in bibendum erat. Praesent tincidunt eleifend interdum. Curabitur condimentum vitae orci vel suscipit. Morbi nulla magna, cursus ut eleifend in, euismod id nulla.', '2024-09-29 05:47:46', '2024-10-04 07:53:05'),
(4, 'kamis', 'P5 senam di lapangan', '2024-09-29 06:15:36', '2024-10-21 17:05:22'),
(8, 'Jumat', 'Libur tanggal merah', '2024-10-21 17:05:45', '2024-10-21 17:05:45');

-- --------------------------------------------------------

--
-- Table structure for table `likes`
--

CREATE TABLE `likes` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `photo_id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `likes`
--

INSERT INTO `likes` (`id`, `photo_id`, `user_id`, `created_at`, `updated_at`) VALUES
(2, 10, 2, '2024-10-18 07:01:13', '2024-10-18 07:01:13'),
(10, 8, 20, '2024-10-18 09:03:01', '2024-10-18 09:03:01'),
(11, 43, 20, '2024-10-18 09:03:05', '2024-10-18 09:03:05'),
(12, 8, 24, '2024-10-18 09:03:35', '2024-10-18 09:03:35'),
(13, 43, 24, '2024-10-18 09:03:39', '2024-10-18 09:03:39'),
(14, 8, 25, '2024-10-18 09:04:07', '2024-10-18 09:04:07'),
(15, 43, 25, '2024-10-18 09:04:11', '2024-10-18 09:04:11'),
(16, 8, 26, '2024-10-18 09:04:59', '2024-10-18 09:04:59'),
(17, 43, 26, '2024-10-18 09:05:04', '2024-10-18 09:05:04'),
(19, 43, 13, '2024-10-18 10:37:29', '2024-10-18 10:37:29'),
(20, 33, 13, '2024-10-18 10:37:36', '2024-10-18 10:37:36'),
(28, 10, 13, '2024-10-19 00:24:52', '2024-10-19 00:24:52'),
(30, 8, 13, '2024-10-19 00:27:57', '2024-10-19 00:27:57'),
(31, 33, 24, '2024-10-19 02:20:15', '2024-10-19 02:20:15'),
(32, 32, 2, '2024-10-29 19:53:34', '2024-10-29 19:53:34'),
(35, 8, 2, '2024-11-06 22:17:41', '2024-11-06 22:17:41'),
(38, 43, 2, '2024-11-06 22:21:44', '2024-11-06 22:21:44');

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(18, '2014_10_12_100000_create_password_resets_table', 1),
(19, '2019_08_19_000000_create_failed_jobs_table', 1),
(20, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(21, '2024_09_22_123507_create_users_table', 1),
(22, '2024_09_22_123533_create_gallery_table', 1),
(23, '2024_09_22_123551_create_photos_table', 1),
(24, '2024_09_22_123605_create_comments_table', 1),
(25, '2024_09_22_123619_create_info_table', 1),
(26, '2024_09_22_123636_create_agendas_table', 1),
(27, '2024_09_22_123659_create_albums_table', 1),
(28, '2024_09_22_123712_create_pictures_table', 1),
(29, '2024_09_28_084839_add_title_and_description_to_photos_table', 2),
(30, '2024_09_28_085511_remove_description_from_galleries_table', 3),
(31, '2024_09_29_060802_create_profiles_table', 4),
(32, '2024_09_30_045911_remove_description_from_albums_table', 5),
(40, '2024_10_18_125242_create_likes_table', 6);

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) NOT NULL,
  `token` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tokenable_type` varchar(255) NOT NULL,
  `tokenable_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `token` varchar(64) NOT NULL,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `abilities` text DEFAULT NULL,
  `expires_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `personal_access_tokens`
--

INSERT INTO `personal_access_tokens` (`id`, `tokenable_type`, `tokenable_id`, `name`, `token`, `last_used_at`, `abilities`, `expires_at`, `created_at`, `updated_at`) VALUES
(1, 'App\\Models\\User', 1, 'auth_token', '14864dbbadc3e61a16ffa25987164da9c1341e00b89cf0e47932af26ab4d94d3', NULL, '[\"*\"]', NULL, '2024-09-27 08:48:24', '2024-09-27 08:48:24'),
(2, 'App\\Models\\User', 2, 'auth_token', '896c91f95cf765a871a8ec864b4a47d13cf52eeaef4fa43baceea50955d7df6c', NULL, '[\"*\"]', NULL, '2024-09-27 08:51:23', '2024-09-27 08:51:23'),
(3, 'App\\Models\\User', 2, 'auth_token', '01d511a46f2ecd9ac576d679048f4468f1aab5e10d1c2c0c7b5426d2e4ef2e95', NULL, '[\"*\"]', NULL, '2024-09-27 22:12:23', '2024-09-27 22:12:23'),
(4, 'App\\Models\\User', 2, 'auth_token', '532f70aa4199a6bc20b19fdecf03e7b85315041db6a27eb94cea2457e058d5ed', NULL, '[\"*\"]', NULL, '2024-09-27 23:00:10', '2024-09-27 23:00:10'),
(5, 'App\\Models\\User', 12, 'auth_token', '380c30ae96cfcf4e4cb5933954ce9082478fa1e4283162a9944a879a24bf891f', NULL, '[\"*\"]', NULL, '2024-09-27 23:01:09', '2024-09-27 23:01:09'),
(6, 'App\\Models\\User', 13, 'auth_token', 'ee5e5a868f7a0366ac11ebf288a5d63ef1195f2c7a1cc488e7f0a95b62a20a7e', NULL, '[\"*\"]', NULL, '2024-09-27 23:04:58', '2024-09-27 23:04:58'),
(7, 'App\\Models\\User', 2, 'auth_token', '89e6f4e2de4251039b84bb042461ceeaf2acc6569a0c6c5d464a3be0807e6506', NULL, '[\"*\"]', NULL, '2024-09-27 23:13:36', '2024-09-27 23:13:36'),
(8, 'App\\Models\\User', 13, 'auth_token', 'a10b6b96187d55d959d06ca521bf50597a496b35314067eb3fdf1fba7452a048', NULL, '[\"*\"]', NULL, '2024-09-27 23:14:37', '2024-09-27 23:14:37'),
(9, 'App\\Models\\User', 2, 'auth_token', '1a55100f6d3bcec102ea951b64c0b1de4efd5d8dfd4e92529350215fa3e0e8af', NULL, '[\"*\"]', NULL, '2024-09-28 01:22:47', '2024-09-28 01:22:47'),
(10, 'App\\Models\\User', 13, 'auth_token', 'ce228653bb083eb557c5673d837300ef4d3b5607dc60ac63f018fc1fb3a9896d', NULL, '[\"*\"]', NULL, '2024-09-28 03:10:11', '2024-09-28 03:10:11'),
(11, 'App\\Models\\User', 2, 'auth_token', '3240976b0e619c267a5df349c6a9fe7250d5d3a87b5a422c3910eb203f1a1876', NULL, '[\"*\"]', NULL, '2024-09-28 03:10:35', '2024-09-28 03:10:35'),
(12, 'App\\Models\\User', 13, 'auth_token', '1bee1412a17cf320525d0eca3d6ed72e1f7a67c49e40fd1b43d6163618ae68e3', NULL, '[\"*\"]', NULL, '2024-09-28 07:42:56', '2024-09-28 07:42:56'),
(13, 'App\\Models\\User', 1, 'auth_token', 'c5c9583e8de09c13b0cafa5a6921d7cbb5816d4e1fea9d767e6aa31c1559ecba', NULL, '[\"*\"]', NULL, '2024-09-28 09:06:45', '2024-09-28 09:06:45'),
(14, 'App\\Models\\User', 1, 'auth_token', 'f75098867b20102900bc9bd31e73eac0f7039867d7b84aac197a3ad12ade0d5f', NULL, '[\"*\"]', NULL, '2024-09-28 09:06:48', '2024-09-28 09:06:48'),
(15, 'App\\Models\\User', 1, 'auth_token', '5476723d4748a4a5e953369e38988001f68d929d7b38f47a36f60fe4f7da00fd', NULL, '[\"*\"]', NULL, '2024-09-28 09:06:49', '2024-09-28 09:06:49'),
(16, 'App\\Models\\User', 1, 'auth_token', '5cb7648f4e23e6e699a853f0d3c84530bba7d6c2eee2c0b1b87d507a4a7de1a0', NULL, '[\"*\"]', NULL, '2024-09-28 09:06:57', '2024-09-28 09:06:57'),
(17, 'App\\Models\\User', 1, 'auth_token', 'c59d0d9f22bb79fc6a10d6fcd96d73df69385ab23438313a89b462144e015ad3', NULL, '[\"*\"]', NULL, '2024-09-28 09:07:00', '2024-09-28 09:07:00'),
(18, 'App\\Models\\User', 1, 'auth_token', 'a1fd1769e3835ace79bf1b2d1fbe72015d65ec6cc39ecdb2630dfe41444931dc', NULL, '[\"*\"]', NULL, '2024-09-28 09:07:00', '2024-09-28 09:07:00'),
(19, 'App\\Models\\User', 1, 'auth_token', '029b391c2dd06c421271087485796d719300ebc9f76a5fd0c076c361819159f1', NULL, '[\"*\"]', NULL, '2024-09-28 09:07:01', '2024-09-28 09:07:01'),
(20, 'App\\Models\\User', 1, 'auth_token', '49f6f52da28ff8d869548cbfe44028c1964e3676c3221c668fe7ce78378893cd', NULL, '[\"*\"]', NULL, '2024-09-28 09:07:02', '2024-09-28 09:07:02'),
(21, 'App\\Models\\User', 1, 'auth_token', '5b9f67d7c1a1617ca4935f2ea61d86b2e6d94c8e28931c32ab040e0c4e03f9a6', NULL, '[\"*\"]', NULL, '2024-09-28 09:07:02', '2024-09-28 09:07:02'),
(22, 'App\\Models\\User', 1, 'auth_token', '53dd49066e30aea0eb19acbfb2a05d74b821dda83590ca56867f0e765abd51ed', NULL, '[\"*\"]', NULL, '2024-09-28 09:07:03', '2024-09-28 09:07:03'),
(23, 'App\\Models\\User', 1, 'auth_token', 'd7984e09668af8715aff3578587e73f3f32ddcdd71ea8cfa956f025435953fe5', NULL, '[\"*\"]', NULL, '2024-09-28 09:07:07', '2024-09-28 09:07:07'),
(24, 'App\\Models\\User', 1, 'auth_token', '3f96a2689fbd76d44bc6d1e23261b3172f19cc60e14b824003061010768df288', NULL, '[\"*\"]', NULL, '2024-09-28 09:07:08', '2024-09-28 09:07:08'),
(25, 'App\\Models\\User', 1, 'auth_token', '01ad8c98cb46ad70800dfa3974498f3bdad15e0870d157fbc046b7696140a3f3', NULL, '[\"*\"]', NULL, '2024-09-28 09:07:08', '2024-09-28 09:07:08'),
(26, 'App\\Models\\User', 1, 'auth_token', '92116e2337b80be45ef734a055daad3067f5f9d9e3c8124305d3fa8acd1e40cc', NULL, '[\"*\"]', NULL, '2024-09-28 09:07:09', '2024-09-28 09:07:09'),
(27, 'App\\Models\\User', 1, 'auth_token', 'a62c4fe44fd97d3aa56517a7295323a4acd97fb0fe2d5ec0d702e5412b9786b9', NULL, '[\"*\"]', NULL, '2024-09-28 09:07:09', '2024-09-28 09:07:09'),
(28, 'App\\Models\\User', 1, 'auth_token', '455650bd5195149bbb9da757a1a3a9c0451ccd40f8fde7b104bc668ae0e078ad', NULL, '[\"*\"]', NULL, '2024-09-28 09:07:09', '2024-09-28 09:07:09'),
(29, 'App\\Models\\User', 1, 'auth_token', 'd9adcca1ad2b22ecfd2256c066eb8f7d83765e1daa8cd4fb76530d567d8b3d41', NULL, '[\"*\"]', NULL, '2024-09-28 09:07:10', '2024-09-28 09:07:10'),
(30, 'App\\Models\\User', 13, 'auth_token', 'e4147448b42f2cfa1fff121b5798fbd263e144e827da9a7be87c607a15883f71', NULL, '[\"*\"]', NULL, '2024-09-28 09:07:27', '2024-09-28 09:07:27'),
(31, 'App\\Models\\User', 12, 'auth_token', 'fdabacce92206694e2726f9940b6ebdac28df466941a2050a786c9cd91adc06c', NULL, '[\"*\"]', NULL, '2024-09-28 09:08:16', '2024-09-28 09:08:16'),
(32, 'App\\Models\\User', 2, 'auth_token', 'fea0df576cf885b7d836bc2f59d003324718b97234f8dcc0f424400f06de885c', NULL, '[\"*\"]', NULL, '2024-09-28 23:32:11', '2024-09-28 23:32:11'),
(33, 'App\\Models\\User', 12, 'auth_token', 'b56ff6cc6807710ae9eeff9ce7468068515ab9b5be9f2329470acae1ec3856e0', NULL, '[\"*\"]', NULL, '2024-09-28 23:32:52', '2024-09-28 23:32:52'),
(34, 'App\\Models\\User', 14, 'auth_token', '1f33af6c24eba0de07cad354d2437419c849599b2164af0ba899a5b24e000a7c', NULL, '[\"*\"]', NULL, '2024-09-28 23:37:30', '2024-09-28 23:37:30'),
(35, 'App\\Models\\User', 13, 'auth_token', '6efe411713c5a341f2564ed9d9e6a2a4ae60f67f2d657cac3e094a8b7a1e4c06', NULL, '[\"*\"]', NULL, '2024-09-28 23:43:03', '2024-09-28 23:43:03'),
(36, 'App\\Models\\User', 2, 'auth_token', 'f611928519ef1f9d61fa0dca0d0e291f4b3b7e17d978f7ad6c7654e413c14a25', NULL, '[\"*\"]', NULL, '2024-09-28 23:50:05', '2024-09-28 23:50:05'),
(37, 'App\\Models\\User', 13, 'auth_token', '6a512e9564cf42ac4866d9c5b1c906b11392bfde8ec7b234105ee7e2800ad9ba', NULL, '[\"*\"]', NULL, '2024-09-28 23:51:08', '2024-09-28 23:51:08'),
(38, 'App\\Models\\User', 13, 'auth_token', 'd3aa8d37d1321831767a6fe20d58bc017d6be89e8272223cee3163bce6070e50', NULL, '[\"*\"]', NULL, '2024-09-28 23:59:20', '2024-09-28 23:59:20'),
(39, 'App\\Models\\User', 13, 'auth_token', 'e01eef58a2fc212bf9de5580fa1ee235492d8d3379ba0c75484203ed55b22af7', NULL, '[\"*\"]', NULL, '2024-09-29 00:05:43', '2024-09-29 00:05:43'),
(40, 'App\\Models\\User', 2, 'auth_token', 'f47f44eaca9e12e27f9efd0e4784c771f1adddc74c01310618cb13bf00f7a719', NULL, '[\"*\"]', NULL, '2024-09-29 00:29:33', '2024-09-29 00:29:33'),
(41, 'App\\Models\\User', 2, 'auth_token', '5004352a5622fba6aa3acc65fc6673d46d54e824ed4c9a31ab6de8399dee01da', NULL, '[\"*\"]', NULL, '2024-09-29 00:39:19', '2024-09-29 00:39:19'),
(42, 'App\\Models\\User', 14, 'auth_token', 'afb7bba948afe5b393b77206da8d1574216356b5c1891af257f4244a0a6b0df8', NULL, '[\"*\"]', NULL, '2024-09-29 00:55:08', '2024-09-29 00:55:08'),
(43, 'App\\Models\\User', 13, 'auth_token', '8de2f99a13deba30b697523dba9f1b965c2d8d407c382f2ec1729f3dc86e66bc', NULL, '[\"*\"]', NULL, '2024-09-29 01:33:34', '2024-09-29 01:33:34'),
(44, 'App\\Models\\User', 14, 'auth_token', 'b1724d94642db6b165f5f08ab4c84616337d22af109dc1b81b415657ba6a75ad', NULL, '[\"*\"]', NULL, '2024-09-29 01:47:20', '2024-09-29 01:47:20'),
(45, 'App\\Models\\User', 2, 'auth_token', 'a1de4c4731adbbe9bf14c488b05d54a3ac3e5f42fe9e09a0fe00a45dabbf5603', NULL, '[\"*\"]', NULL, '2024-09-29 02:33:48', '2024-09-29 02:33:48'),
(46, 'App\\Models\\User', 2, 'auth_token', 'e8830cc61918278ca08482adab1d1fdeff7eab5435d41f336dd45e135342e2d7', NULL, '[\"*\"]', NULL, '2024-09-29 02:46:54', '2024-09-29 02:46:54'),
(47, 'App\\Models\\User', 2, 'auth_token', 'ef67a333823845abc7bf4b7905ca95abbb84672aeaab01be89d3f19a4d2c86a5', NULL, '[\"*\"]', NULL, '2024-09-29 02:49:20', '2024-09-29 02:49:20'),
(48, 'App\\Models\\User', 2, 'auth_token', '36cce6b604b018dcf014a5715b75395b5da6e2054cc50300fda56b13d48f5d4d', NULL, '[\"*\"]', NULL, '2024-09-29 02:57:58', '2024-09-29 02:57:58'),
(49, 'App\\Models\\User', 2, 'auth_token', 'c39dd38df0fc635ef9907170a94d8c94fd631565ac4be3faf7225011e7df027d', NULL, '[\"*\"]', NULL, '2024-09-29 03:00:18', '2024-09-29 03:00:18'),
(50, 'App\\Models\\User', 2, 'auth_token', '9436764ad64396ff0ea923c0e72a3a21956923c396057e81a45344b7959eaad3', NULL, '[\"*\"]', NULL, '2024-09-29 03:06:49', '2024-09-29 03:06:49'),
(51, 'App\\Models\\User', 2, 'auth_token', 'c1e606a77b800a2f54997b096eb06abd52bd4f3d0724fcfdf10677a2f9a2f4bd', NULL, '[\"*\"]', NULL, '2024-09-29 03:10:30', '2024-09-29 03:10:30'),
(52, 'App\\Models\\User', 2, 'auth_token', '859344d8f850b54c6eaebc2b6fa514f8e9dba30020dd98816c2f9ebe2c00a72a', NULL, '[\"*\"]', NULL, '2024-09-29 03:21:41', '2024-09-29 03:21:41'),
(53, 'App\\Models\\User', 2, 'auth_token', 'a8f78e2090a2b90b13e4bd842eb1aa11f7e26e0fb1fbf0fe6f79ec288190c8a4', NULL, '[\"*\"]', NULL, '2024-09-29 03:36:34', '2024-09-29 03:36:34'),
(54, 'App\\Models\\User', 2, 'auth_token', '88048bd6b9a2cb1dc9d621fa0b1379d358db2f73b2ecc68fb536711c0adf7b0b', NULL, '[\"*\"]', NULL, '2024-09-29 03:39:39', '2024-09-29 03:39:39'),
(55, 'App\\Models\\User', 2, 'auth_token', '5996aa2b7d9d7c7ce73f1df21a433a6286958521ce3d37c0e2810555f1fa278b', NULL, '[\"*\"]', NULL, '2024-09-29 03:42:04', '2024-09-29 03:42:04'),
(56, 'App\\Models\\User', 2, 'auth_token', '79408200625b6606d6388a9a95ad8b20a1dc660ccdee952f2437debf8aeb90e9', NULL, '[\"*\"]', NULL, '2024-09-29 03:43:50', '2024-09-29 03:43:50'),
(57, 'App\\Models\\User', 2, 'auth_token', '06a1ba15875b00d6ec83773a3456b2b562f1f9443a007a149a4b15777ed209d0', NULL, '[\"*\"]', NULL, '2024-09-29 05:10:20', '2024-09-29 05:10:20'),
(58, 'App\\Models\\User', 2, 'auth_token', '9f3cc059da592bf0904e60806796095c12f689e4f438e8d8611452932035ed4a', NULL, '[\"*\"]', NULL, '2024-09-29 05:29:14', '2024-09-29 05:29:14'),
(59, 'App\\Models\\User', 2, 'auth_token', '79155eddc895bfc103660c0d03b17c3de4afe3b324e7f87ea780f1b7aa73d9a3', NULL, '[\"*\"]', NULL, '2024-09-29 05:44:30', '2024-09-29 05:44:30'),
(60, 'App\\Models\\User', 2, 'auth_token', '295799316aa2179677c5f0e96eedc17adf46785d916ad8ba66b81128e29c5f70', NULL, '[\"*\"]', NULL, '2024-09-29 05:47:13', '2024-09-29 05:47:13'),
(61, 'App\\Models\\User', 2, 'auth_token', 'a1ae7fa455dbe20ca5f4b1ea90dd6706bbfda9c9cd6f3a056b1a81e247e014b0', NULL, '[\"*\"]', NULL, '2024-09-29 05:55:48', '2024-09-29 05:55:48'),
(62, 'App\\Models\\User', 2, 'auth_token', 'cfd55783adf4046ad9a3850a84725b4fb523a7abd6b24215c66885a4ae2dc498', NULL, '[\"*\"]', NULL, '2024-09-29 06:14:09', '2024-09-29 06:14:09'),
(63, 'App\\Models\\User', 2, 'auth_token', '65eb0dd0cd829af273d2454411ee477edfd27e49462ad5cbf586db63992914d4', NULL, '[\"*\"]', NULL, '2024-09-29 06:18:43', '2024-09-29 06:18:43'),
(64, 'App\\Models\\User', 2, 'auth_token', '443f313faa48339fcdf00e9cb47c63956883a8ba585d5c662fe8f0400f6904e8', NULL, '[\"*\"]', NULL, '2024-09-29 06:30:25', '2024-09-29 06:30:25'),
(65, 'App\\Models\\User', 2, 'auth_token', '676ef062af29b1e1435bf01ae3af1f6d98886ebe8de526358d466e5c2fd31d48', NULL, '[\"*\"]', NULL, '2024-09-29 06:32:06', '2024-09-29 06:32:06'),
(66, 'App\\Models\\User', 2, 'auth_token', '945d9556416a8b0de1efe9d357aabc6a596468c93905c1f065233fe8d33ba778', NULL, '[\"*\"]', NULL, '2024-09-29 06:35:02', '2024-09-29 06:35:02'),
(67, 'App\\Models\\User', 2, 'auth_token', '012ca3e5a44fd815aeab88b4c652cae71d67ba1925928425e6a1629152036177', NULL, '[\"*\"]', NULL, '2024-09-29 07:22:47', '2024-09-29 07:22:47'),
(68, 'App\\Models\\User', 2, 'auth_token', '8578bf0efca3a0bd1234e65715fe5ae6934aaa4c88d79896391c338ca1738a92', NULL, '[\"*\"]', NULL, '2024-09-29 07:40:07', '2024-09-29 07:40:07'),
(69, 'App\\Models\\User', 2, 'auth_token', '9837da5369d8abd4eb553761e4faf193239e402e5ad2f92426e5b0d4c8e61804', NULL, '[\"*\"]', NULL, '2024-09-29 07:47:28', '2024-09-29 07:47:28'),
(70, 'App\\Models\\User', 2, 'auth_token', '80d087d988ea29c8aabe84f93e57e2ed1b69be83121d2df07e99f9154246e066', NULL, '[\"*\"]', NULL, '2024-09-29 07:52:54', '2024-09-29 07:52:54'),
(71, 'App\\Models\\User', 2, 'auth_token', '3a00bc5d9570725cf1dfb88639c8653456635468541a96c3737e9ad79cd27232', NULL, '[\"*\"]', NULL, '2024-09-29 07:56:20', '2024-09-29 07:56:20'),
(72, 'App\\Models\\User', 2, 'auth_token', '36fc18b8bd6c84e2551395194f676e9470e430f1d13883a63241dbea4e4c4cfd', NULL, '[\"*\"]', NULL, '2024-09-29 08:08:58', '2024-09-29 08:08:58'),
(73, 'App\\Models\\User', 2, 'auth_token', 'e617d51a47588a07f9b5b9d953338a44f5631740d6bc89b5e4463515ef4760ff', NULL, '[\"*\"]', NULL, '2024-09-29 08:17:45', '2024-09-29 08:17:45'),
(74, 'App\\Models\\User', 2, 'auth_token', 'cff267e9399ed0f0edee97af4dd1c0fd9c2c052d64950567c8f8e22fa73ca536', NULL, '[\"*\"]', NULL, '2024-09-29 08:21:11', '2024-09-29 08:21:11'),
(75, 'App\\Models\\User', 2, 'auth_token', '772c594baf3fef7728c36298746472d71a38ecb11f0255361f498f974b676f91', NULL, '[\"*\"]', NULL, '2024-09-29 17:59:17', '2024-09-29 17:59:17'),
(76, 'App\\Models\\User', 2, 'auth_token', 'bb75aeab45fbe1725d25ece5777dd97a196f5896c5f09d1b3f38508a7f3889e0', NULL, '[\"*\"]', NULL, '2024-09-29 18:00:49', '2024-09-29 18:00:49'),
(77, 'App\\Models\\User', 2, 'auth_token', 'f5bd73976f036d00de71e55b86d7e11f6d6b215ea9a8a2142a0e88e36aa13dad', NULL, '[\"*\"]', NULL, '2024-09-29 19:34:35', '2024-09-29 19:34:35'),
(78, 'App\\Models\\User', 2, 'auth_token', '9c119e32e012b1633c765da0f1a6bd1501e7a82c7202fb7e5fae948e70515306', NULL, '[\"*\"]', NULL, '2024-09-29 19:43:06', '2024-09-29 19:43:06'),
(79, 'App\\Models\\User', 2, 'auth_token', 'd8af64d96fcc7090648a5cabb57955f6f3daa2dda9b573cb76816cb036f62c5d', NULL, '[\"*\"]', NULL, '2024-09-29 20:44:39', '2024-09-29 20:44:39'),
(80, 'App\\Models\\User', 2, 'auth_token', 'dd8f938007bce0884112aea848723691e7649f011193a85c43f508953acdc831', NULL, '[\"*\"]', NULL, '2024-09-29 22:51:59', '2024-09-29 22:51:59'),
(81, 'App\\Models\\User', 2, 'auth_token', 'b4504f2a1ed2770c55a1e88ab3de7597f60b41498ae186691935324f3154bcf8', NULL, '[\"*\"]', NULL, '2024-09-29 23:30:44', '2024-09-29 23:30:44'),
(82, 'App\\Models\\User', 2, 'auth_token', '96b9effcca83356fd408f29f30c8640e684ee666a83440f39dd4f643dbd4987f', NULL, '[\"*\"]', NULL, '2024-09-30 07:02:10', '2024-09-30 07:02:10'),
(83, 'App\\Models\\User', 2, 'auth_token', 'b844fd6a6d117501029a0c32679237667929cc20fd8d6fab084968ce56d6f323', NULL, '[\"*\"]', NULL, '2024-09-30 17:22:38', '2024-09-30 17:22:38'),
(84, 'App\\Models\\User', 2, 'auth_token', '43042a7e7a4a16aa701bd1e0d2c7a8d53ec8b0a9cb3707dd3314423ab50c4234', NULL, '[\"*\"]', NULL, '2024-09-30 17:36:33', '2024-09-30 17:36:33'),
(85, 'App\\Models\\User', 2, 'auth_token', '9d99242bd04f2636d9d388749aefc06dbcd11b02cfc0a8f5898018bfd9437f08', NULL, '[\"*\"]', NULL, '2024-09-30 18:13:30', '2024-09-30 18:13:30'),
(86, 'App\\Models\\User', 13, 'auth_token', '4b99d7bc947edf08a042571fab52356adea70a83983d5ba39f65be3cb6d994ed', NULL, '[\"*\"]', NULL, '2024-09-30 19:23:47', '2024-09-30 19:23:47'),
(87, 'App\\Models\\User', 2, 'auth_token', 'ec0aadc881444e8db4971b382bb92f0a71b54b36213297be038d54060293cf90', NULL, '[\"*\"]', NULL, '2024-09-30 19:24:04', '2024-09-30 19:24:04'),
(88, 'App\\Models\\User', 2, 'auth_token', '2ceb3830bd6b7fc5f685cb7d44b90029988ed1b23a1aefa31df27f9b13053553', NULL, '[\"*\"]', NULL, '2024-09-30 19:26:16', '2024-09-30 19:26:16'),
(89, 'App\\Models\\User', 2, 'auth_token', 'c98d7fad2331b23b0efa1825982938f9b85c701893310e7737d5c1b4987b783d', NULL, '[\"*\"]', NULL, '2024-09-30 20:15:56', '2024-09-30 20:15:56'),
(90, 'App\\Models\\User', 2, 'auth_token', '35d74f297315ee1764fd37138ec3b69a380d63b57d55c509dd476ec58fe8f961', NULL, '[\"*\"]', NULL, '2024-09-30 20:17:27', '2024-09-30 20:17:27'),
(91, 'App\\Models\\User', 2, 'auth_token', '719de2c2ae7a9a67dca2dc7723d48ef025d9c431cf689b500234a14a8af0ee32', NULL, '[\"*\"]', NULL, '2024-09-30 20:21:21', '2024-09-30 20:21:21'),
(92, 'App\\Models\\User', 2, 'auth_token', 'ef2b4ce92385583559b09966d837a62d27fc36dd56ef93a77e2dab6aec2acf1b', NULL, '[\"*\"]', NULL, '2024-09-30 20:32:44', '2024-09-30 20:32:44'),
(93, 'App\\Models\\User', 15, 'auth_token', 'f2cbda026337f1e821ac0397ecf9e62224edc3498862c3723b23c5667dabae51', NULL, '[\"*\"]', NULL, '2024-09-30 20:37:52', '2024-09-30 20:37:52'),
(94, 'App\\Models\\User', 2, 'auth_token', '6ac0c14051299a1374f8db71ff21dc1571f328e7d8c7bb150d3056c0140b36b8', NULL, '[\"*\"]', NULL, '2024-09-30 20:57:55', '2024-09-30 20:57:55'),
(95, 'App\\Models\\User', 2, 'auth_token', '137ba56ab9b2faa99b7b4a5848a5dd09e2a2a9407988f98cff85733862207d8d', NULL, '[\"*\"]', NULL, '2024-09-30 21:03:59', '2024-09-30 21:03:59'),
(96, 'App\\Models\\User', 2, 'auth_token', 'c1bb3fd6b02ba6fcba03ef0af1469d5ac777010bd00e1c79737c7f1407d7897e', NULL, '[\"*\"]', NULL, '2024-09-30 23:39:32', '2024-09-30 23:39:32'),
(97, 'App\\Models\\User', 13, 'auth_token', '233b3ab54f1af9cd8043725934cfaa8aea18e4825391e886a00f692d446a3058', NULL, '[\"*\"]', NULL, '2024-10-01 05:48:57', '2024-10-01 05:48:57'),
(98, 'App\\Models\\User', 13, 'auth_token', '7691195512d05b3ed861186ae8e07b5bd6ae879ed4beae342ab6bc6d4f9d72d7', NULL, '[\"*\"]', NULL, '2024-10-01 06:13:08', '2024-10-01 06:13:08'),
(99, 'App\\Models\\User', 13, 'auth_token', 'acc608cb91fb4d92b7a0b56ce9e23a84be3b06762f977f2b7e05c34922a73105', NULL, '[\"*\"]', NULL, '2024-10-01 06:14:13', '2024-10-01 06:14:13'),
(100, 'App\\Models\\User', 2, 'auth_token', '5df6ca40de29e6b8b2e073efac2cde2c42d720e5cc068f4987bee2bf5d678a51', NULL, '[\"*\"]', NULL, '2024-10-01 06:20:12', '2024-10-01 06:20:12'),
(101, 'App\\Models\\User', 2, 'auth_token', 'bda889affb963b8a3ec4fb25bf3fc216bfe10460851eb4f3b45969a6e5a806ed', NULL, '[\"*\"]', NULL, '2024-10-01 06:20:55', '2024-10-01 06:20:55'),
(102, 'App\\Models\\User', 2, 'auth_token', '0c00a9e71d5975a9e6a6fd96b18b019d6dbb82df9ac93b5b81ad1a1de8c92cff', NULL, '[\"*\"]', NULL, '2024-10-01 06:22:21', '2024-10-01 06:22:21'),
(103, 'App\\Models\\User', 2, 'auth_token', '4cad6d600e14f06a859c5f133d89bc74a2420a6502366bdeeb5f578e8e845c8e', NULL, '[\"*\"]', NULL, '2024-10-01 06:28:04', '2024-10-01 06:28:04'),
(104, 'App\\Models\\User', 2, 'auth_token', 'c077cb0ebb1cc131dabaff02a3fe1a9a61d6495b5c19947c14b92ecf456d7b4f', NULL, '[\"*\"]', NULL, '2024-10-01 06:34:15', '2024-10-01 06:34:15'),
(105, 'App\\Models\\User', 2, 'auth_token', 'aa9c4ee3e0330505410ba7ece53dd0a23578ef6c899ab44569b2a1f22d089bc5', NULL, '[\"*\"]', NULL, '2024-10-01 08:43:07', '2024-10-01 08:43:07'),
(106, 'App\\Models\\User', 2, 'auth_token', '551e442c51444229fffac66af96b48f7c73c3140a3ca7a32ada0f600d6ea442f', NULL, '[\"*\"]', NULL, '2024-10-01 09:01:21', '2024-10-01 09:01:21'),
(107, 'App\\Models\\User', 13, 'auth_token', '54525e6bfbfb1b9a803923efd239c1fcbd92c3c75850d697b6bac6b9ec1707c2', NULL, '[\"*\"]', NULL, '2024-10-02 07:20:41', '2024-10-02 07:20:41'),
(108, 'App\\Models\\User', 13, 'auth_token', '6b1f59c74a7e59910d064e0d2433610646289aa14cdcf0fa35b19085b4abd550', NULL, '[\"*\"]', NULL, '2024-10-02 07:20:42', '2024-10-02 07:20:42'),
(109, 'App\\Models\\User', 13, 'auth_token', '2872ec87ffc63e3c57ae1dab7d9db8f790b49fa1f83603c461bb8e082e35d131', NULL, '[\"*\"]', NULL, '2024-10-02 07:27:28', '2024-10-02 07:27:28'),
(110, 'App\\Models\\User', 13, 'auth_token', '02702b11bd25e07e91920c11ebdd0e05a4b77a7b0def717cc1e848bf3b6bf221', NULL, '[\"*\"]', NULL, '2024-10-02 08:01:39', '2024-10-02 08:01:39'),
(111, 'App\\Models\\User', 2, 'auth_token', '71a92ec048be05bcc0646804164346d238dfe6e8c8768aa89dcb6420530112b6', NULL, '[\"*\"]', NULL, '2024-10-03 07:21:12', '2024-10-03 07:21:12'),
(112, 'App\\Models\\User', 13, 'auth_token', '4bf8664543724b175d2e96d8315ef6d99602e526bab185e0e8ce142179d4347f', NULL, '[\"*\"]', NULL, '2024-10-03 07:58:00', '2024-10-03 07:58:00'),
(113, 'App\\Models\\User', 13, 'auth_token', '64d94962b87a10da319acb996859a32abd1a62060d431ad36eaf7afb9dc015f1', NULL, '[\"*\"]', NULL, '2024-10-03 08:20:08', '2024-10-03 08:20:08'),
(114, 'App\\Models\\User', 13, 'auth_token', '74198d546cd87908fb7c29bf310cda0106a301fae7c340e7fa7be7d53f51dde8', NULL, '[\"*\"]', NULL, '2024-10-03 10:37:39', '2024-10-03 10:37:39'),
(115, 'App\\Models\\User', 13, 'auth_token', 'f5bb39646d570dc1b5223d0d20f7c3bff7625344f27efec9416b77c804f794d5', NULL, '[\"*\"]', NULL, '2024-10-03 10:46:09', '2024-10-03 10:46:09'),
(116, 'App\\Models\\User', 13, 'auth_token', '831cbf3bd6b62db39a8c904b5e8eaef78ec5d70d50594c34c48de3b2c07874ab', NULL, '[\"*\"]', NULL, '2024-10-03 11:15:45', '2024-10-03 11:15:45'),
(117, 'App\\Models\\User', 2, 'auth_token', '9ab4cc4e7ff79116c118bde1acaee311d5271adfceda2165aeabe177cc5b3d76', NULL, '[\"*\"]', NULL, '2024-10-03 11:21:05', '2024-10-03 11:21:05'),
(118, 'App\\Models\\User', 2, 'auth_token', '2c9ccb0c77b51cc5ab64bd3c9b6fd0cfd1c5d7f4a94850e47fb246874c464347', NULL, '[\"*\"]', NULL, '2024-10-03 11:25:05', '2024-10-03 11:25:05'),
(119, 'App\\Models\\User', 13, 'auth_token', '9ef88101a25fe8e586d8fa2413277870dc0eade7f3a5a82f5579ea637c21d38a', NULL, '[\"*\"]', NULL, '2024-10-03 17:08:49', '2024-10-03 17:08:49'),
(120, 'App\\Models\\User', 2, 'auth_token', 'dae66abdd6fcbaef5184988fb8b7fde24df500f8ea57203a9c247a94ccd6c3e2', NULL, '[\"*\"]', NULL, '2024-10-03 17:09:40', '2024-10-03 17:09:40'),
(121, 'App\\Models\\User', 2, 'auth_token', '166e3b7dc8662f1c89aa5ef9ef2d1b243f31efc67f9794ea55ed7c3637b2cbaf', NULL, '[\"*\"]', NULL, '2024-10-03 17:10:52', '2024-10-03 17:10:52'),
(122, 'App\\Models\\User', 13, 'auth_token', 'ac776b4da7147f09e34e54cabbfacd419131b2497104bc568118e59281cb21bf', NULL, '[\"*\"]', NULL, '2024-10-03 17:12:08', '2024-10-03 17:12:08'),
(123, 'App\\Models\\User', 15, 'auth_token', '50aecf02d110d5ea8089dc2765c0ec085ef27006d2bd379777928ac271d6199f', NULL, '[\"*\"]', NULL, '2024-10-03 17:37:25', '2024-10-03 17:37:25'),
(124, 'App\\Models\\User', 2, 'auth_token', '0b2f1b7cd38e38d7137ff5415d545ec6050b1c8b286328990805831ce16f5ebb', NULL, '[\"*\"]', NULL, '2024-10-03 17:38:57', '2024-10-03 17:38:57'),
(125, 'App\\Models\\User', 13, 'auth_token', 'f659aecbc7c4461e273a7d2c6e24bf4c45fedbb54c077dc74638d2024388246c', NULL, '[\"*\"]', NULL, '2024-10-03 18:33:25', '2024-10-03 18:33:25'),
(126, 'App\\Models\\User', 13, 'auth_token', '833c6e2a6b1468eea685643198308207c3ac4808ed3dce37dd8070348a498db8', NULL, '[\"*\"]', NULL, '2024-10-03 18:37:31', '2024-10-03 18:37:31'),
(127, 'App\\Models\\User', 2, 'auth_token', '99c5d01ccc561db12133e4df4ca2208e082235dae096aa01ba477e22404d3d44', NULL, '[\"*\"]', NULL, '2024-10-03 18:40:42', '2024-10-03 18:40:42'),
(128, 'App\\Models\\User', 13, 'auth_token', 'e9c798fc8de58e1af54e22a77cfdfa1fdab76c0e5d2271a4d4845ba6ce0db57b', NULL, '[\"*\"]', NULL, '2024-10-03 18:44:47', '2024-10-03 18:44:47'),
(129, 'App\\Models\\User', 16, 'auth_token', '0162de3bbbeba524ecea37e96cbad9e92bc9922d68b57e27f159f8b63c15808d', NULL, '[\"*\"]', NULL, '2024-10-03 18:47:21', '2024-10-03 18:47:21'),
(130, 'App\\Models\\User', 16, 'auth_token', '8c8a267bcbf132250474e4abb0bcdae4b90354c86ecd36fefac0013193c0f91c', NULL, '[\"*\"]', NULL, '2024-10-03 18:53:37', '2024-10-03 18:53:37'),
(131, 'App\\Models\\User', 13, 'auth_token', '2b1173f5e86c0cb0879ceccef0b9a82b91ec4908767307c0d162b5c259347a2e', NULL, '[\"*\"]', NULL, '2024-10-03 18:56:24', '2024-10-03 18:56:24'),
(132, 'App\\Models\\User', 2, 'auth_token', '19a8769c153852d1d24677316714d6e84399e2a566c1d70b5d8415745dd81d38', NULL, '[\"*\"]', NULL, '2024-10-03 19:22:04', '2024-10-03 19:22:04'),
(133, 'App\\Models\\User', 2, 'auth_token', '5d65298ec7d87340426a71c96a0ac2a0a46b862798ef074c35c1a8bd7ee0e515', NULL, '[\"*\"]', NULL, '2024-10-03 20:45:40', '2024-10-03 20:45:40'),
(134, 'App\\Models\\User', 2, 'auth_token', '8a3bf1162513ae1de1bb43c621178d0eab0b82edab53c7936a9f7c256a89c078', NULL, '[\"*\"]', NULL, '2024-10-03 20:47:17', '2024-10-03 20:47:17'),
(135, 'App\\Models\\User', 2, 'auth_token', 'f5fbe49deedcf8d31b20b33cf9edc71ab0daba397ae4cfd9c70fc8f85bb5bb3e', NULL, '[\"*\"]', NULL, '2024-10-03 20:50:33', '2024-10-03 20:50:33'),
(136, 'App\\Models\\User', 2, 'auth_token', 'b8f7030d2436212e889d458e4d6f5db08996a97bdf6acf165d8a4204595101bf', NULL, '[\"*\"]', NULL, '2024-10-03 20:52:13', '2024-10-03 20:52:13'),
(137, 'App\\Models\\User', 2, 'auth_token', '6d564f4b5152a57488af3dba753674962d3a489671713853bca7d06ac48cd519', NULL, '[\"*\"]', NULL, '2024-10-03 20:54:06', '2024-10-03 20:54:06'),
(138, 'App\\Models\\User', 2, 'auth_token', 'd8a6e31f495f56f59e1715d4f64ba11e1bd2fdc3bbf565ab8faa97eb1fb184de', NULL, '[\"*\"]', NULL, '2024-10-03 22:58:42', '2024-10-03 22:58:42'),
(139, 'App\\Models\\User', 13, 'auth_token', '2d6727e5f7557a07dab0a48f449389146a220378c16ae48620a9a573aff84b2c', NULL, '[\"*\"]', NULL, '2024-10-04 06:17:15', '2024-10-04 06:17:15'),
(140, 'App\\Models\\User', 2, 'auth_token', 'c524eb6d36e14d303d1989909383b29500a2f4da711a325fac8d53dfc9141e71', NULL, '[\"*\"]', NULL, '2024-10-04 07:52:54', '2024-10-04 07:52:54'),
(141, 'App\\Models\\User', 2, 'auth_token', '58a485e121488163387985012c3d33ccd785d0f5bb124b3abe919cd88a3d5479', NULL, '[\"*\"]', NULL, '2024-10-04 10:20:03', '2024-10-04 10:20:03'),
(142, 'App\\Models\\User', 2, 'auth_token', 'f13d6166e9523074606f53f422403ff6d67283d162b70f3dfed7720282ec48ee', NULL, '[\"*\"]', NULL, '2024-10-04 21:28:31', '2024-10-04 21:28:31'),
(143, 'App\\Models\\User', 13, 'auth_token', 'bf389182b52f9670567bab27c8990f4b7f7fefe75d9bb29ed67c342c3cb552bb', NULL, '[\"*\"]', NULL, '2024-10-04 23:40:07', '2024-10-04 23:40:07'),
(144, 'App\\Models\\User', 13, 'auth_token', 'e171482982d86995316ae91f2331d41608f2c52a409dad292f506149756e997a', NULL, '[\"*\"]', NULL, '2024-10-05 00:10:01', '2024-10-05 00:10:01'),
(145, 'App\\Models\\User', 13, 'auth_token', '28bd70fa4e5ee3db7b2950740c2d1ce8b23f239fba3d3d173a9ac29e8b07e3e8', NULL, '[\"*\"]', NULL, '2024-10-05 00:36:05', '2024-10-05 00:36:05'),
(146, 'App\\Models\\User', 2, 'auth_token', '1baf0b0b8135b11846d42e5f1f0eb715ce95014db3734a8dc39900af7f857347', NULL, '[\"*\"]', NULL, '2024-10-05 00:36:25', '2024-10-05 00:36:25'),
(147, 'App\\Models\\User', 13, 'auth_token', '5429bb4c806d9e5cb2d64a2c114660b93d0786bea7fe863f8360a85224f178fe', NULL, '[\"*\"]', NULL, '2024-10-05 00:45:00', '2024-10-05 00:45:00'),
(148, 'App\\Models\\User', 2, 'auth_token', '6d2d1bb7cd2497133df9bbf736099c924fadbcb80405918d83fe1be92a523e53', NULL, '[\"*\"]', NULL, '2024-10-05 00:46:21', '2024-10-05 00:46:21'),
(149, 'App\\Models\\User', 2, 'auth_token', '0783a20df3469aab28fc01fcc0120716e226d7889df3b33f12297bb045520411', NULL, '[\"*\"]', NULL, '2024-10-05 00:51:25', '2024-10-05 00:51:25'),
(150, 'App\\Models\\User', 2, 'auth_token', 'a1e7f00bd56aa7734f36891bd1449271203de1ca6c1a0e8f88d3848e97b4ecaa', NULL, '[\"*\"]', NULL, '2024-10-05 00:56:29', '2024-10-05 00:56:29'),
(151, 'App\\Models\\User', 2, 'auth_token', '2cef9ab7aee4d4405eb53dbcdf06f625ce506e63a1fc557b0318375e55e0fe95', NULL, '[\"*\"]', NULL, '2024-10-05 23:02:11', '2024-10-05 23:02:11'),
(152, 'App\\Models\\User', 2, 'auth_token', '70e0d6989f5a5f9a5caedd26e3da85a68bb8ccac81293bc845156ec3ebff9a36', NULL, '[\"*\"]', NULL, '2024-10-05 23:17:13', '2024-10-05 23:17:13'),
(153, 'App\\Models\\User', 13, 'auth_token', '70a6e5aa2eaf84e0c2fd905f5100b20d31c6779cfbebcd40eedaa762c85c2a5b', NULL, '[\"*\"]', NULL, '2024-10-05 23:42:50', '2024-10-05 23:42:50'),
(154, 'App\\Models\\User', 2, 'auth_token', '2e72d017a615c4b8aca3b0d2b216a5c4fbb153b29661127274e0adf969ce8ff5', NULL, '[\"*\"]', NULL, '2024-10-07 05:51:10', '2024-10-07 05:51:10'),
(155, 'App\\Models\\User', 13, 'auth_token', 'df4f51cfa93a154d68d063bbc94d1d44e2794a7fbdf1cd752ac0a12e3f0f5288', NULL, '[\"*\"]', NULL, '2024-10-07 07:10:16', '2024-10-07 07:10:16'),
(156, 'App\\Models\\User', 13, 'auth_token', '74063c6dbed8750bcef76e6887a0334e650b8ea72475a577f2d283e58ee39bf1', NULL, '[\"*\"]', NULL, '2024-10-07 07:28:05', '2024-10-07 07:28:05'),
(157, 'App\\Models\\User', 13, 'auth_token', '277ca016b96549ec610ffcadf4f664afb172d418e309312d74682e15744b6f8c', NULL, '[\"*\"]', NULL, '2024-10-07 07:31:05', '2024-10-07 07:31:05'),
(158, 'App\\Models\\User', 2, 'auth_token', '84887f2b38060df7282a098377ea3279c16a607320cb3fbaf83f746f3aeccfb2', NULL, '[\"*\"]', NULL, '2024-10-09 07:20:37', '2024-10-09 07:20:37'),
(159, 'App\\Models\\User', 2, 'auth_token', '810a228b3b9953225e5c3db71174d312add8a59a264f988be080acf6d4e184da', NULL, '[\"*\"]', NULL, '2024-10-09 07:32:36', '2024-10-09 07:32:36'),
(160, 'App\\Models\\User', 2, 'auth_token', 'a4b787e64ffbe0f4dfc49504f672065dc667a799b50f7dd4969eb66708136e16', NULL, '[\"*\"]', NULL, '2024-10-09 08:02:42', '2024-10-09 08:02:42'),
(161, 'App\\Models\\User', 2, 'auth_token', '64e49f46abc844034ace5c22fbbc3e4b2ad252ea6bbac6506cf3d54e720dfd3f', NULL, '[\"*\"]', NULL, '2024-10-09 08:19:10', '2024-10-09 08:19:10'),
(162, 'App\\Models\\User', 13, 'auth_token', '0e7a46a64f1af3f1050fccc70ed9ad9604e94569f6622c26b925918dbe8f0d6b', NULL, '[\"*\"]', NULL, '2024-10-09 08:50:20', '2024-10-09 08:50:20'),
(163, 'App\\Models\\User', 13, 'auth_token', '8de270ea2699e2a4d1a6c44a26324dd17bc4a7ac9f376ee6b7a9a5c6bb74bad1', NULL, '[\"*\"]', NULL, '2024-10-10 06:34:34', '2024-10-10 06:34:34'),
(164, 'App\\Models\\User', 13, 'auth_token', '86c2a2ea7e54c9dae68816e072ee5b37e91c4fe875f06130ea9f8ccc5455f740', NULL, '[\"*\"]', NULL, '2024-10-10 06:39:43', '2024-10-10 06:39:43'),
(165, 'App\\Models\\User', 2, 'auth_token', '15c8d0f76f80556d1777060395e6fab3e206d759eb6a0796acb73cc49883ce32', NULL, '[\"*\"]', NULL, '2024-10-10 06:41:09', '2024-10-10 06:41:09'),
(166, 'App\\Models\\User', 2, 'auth_token', 'bb5f3c84ed73966e61e5b5e298f456376ec073ec10c14407513d380f7cfc5d70', NULL, '[\"*\"]', NULL, '2024-10-10 06:49:32', '2024-10-10 06:49:32'),
(167, 'App\\Models\\User', 16, 'auth_token', '3c23b0045daa70b2065b2b676e23ca92212d8fa0c7754e05fa618da616111be9', NULL, '[\"*\"]', NULL, '2024-10-10 06:49:54', '2024-10-10 06:49:54'),
(168, 'App\\Models\\User', 2, 'auth_token', '60fccc39dc1a1af9406815d3546d36d88acd9121747be1ea30bdebfed07fa9a8', NULL, '[\"*\"]', NULL, '2024-10-10 07:58:55', '2024-10-10 07:58:55'),
(169, 'App\\Models\\User', 13, 'auth_token', 'f2178904fb1c12f2fa4f8293e5946a9e362259e3c62e81412b9a4b20a3d57fa6', NULL, '[\"*\"]', NULL, '2024-10-11 20:41:47', '2024-10-11 20:41:47'),
(170, 'App\\Models\\User', 17, 'auth_token', 'b7fa11397c367c067b951ee98d1604da2a0fa4da89f92e2838ef2594b1977ea7', NULL, '[\"*\"]', NULL, '2024-10-11 20:48:59', '2024-10-11 20:48:59'),
(171, 'App\\Models\\User', 2, 'auth_token', '25a3d02e2bb9dfe4d62b79876390cb72e4278b222106fdb0ea4f8e9816585a2b', NULL, '[\"*\"]', NULL, '2024-10-11 20:53:02', '2024-10-11 20:53:02'),
(172, 'App\\Models\\User', 2, 'auth_token', 'cce12f0e2d98b78cca2c88bbf24f2a0973151d5e602093d89e521f45099fc8d8', NULL, '[\"*\"]', NULL, '2024-10-12 02:47:00', '2024-10-12 02:47:00'),
(173, 'App\\Models\\User', 2, 'auth_token', 'c440b2dedc8fde0035b3eccc59deef223aaea976641cb64ba61be2f2a614fb74', NULL, '[\"*\"]', NULL, '2024-10-12 03:48:41', '2024-10-12 03:48:41'),
(174, 'App\\Models\\User', 13, 'auth_token', 'c7466e35393e83648e55e16bc52b5456789a8dd1e6a7a8b8d82c5cd154dfa29e', NULL, '[\"*\"]', NULL, '2024-10-12 21:44:56', '2024-10-12 21:44:56'),
(175, 'App\\Models\\User', 18, 'auth_token', 'ab4daa12966bc040e1af967c1e4a50386341134bebb39bbc628981231db8910a', NULL, '[\"*\"]', NULL, '2024-10-12 21:50:06', '2024-10-12 21:50:06'),
(176, 'App\\Models\\User', 19, 'auth_token', '621df6374884d0cbeb7e198e9afdd596f5258f17daabe041bb28e987fe71f1cf', NULL, '[\"*\"]', NULL, '2024-10-12 21:51:08', '2024-10-12 21:51:08'),
(177, 'App\\Models\\User', 2, 'auth_token', '35dcbed06f1f1196bb21c646d3193a6f614036ebaf9b64096a5bee8ce2d042b6', NULL, '[\"*\"]', NULL, '2024-10-12 21:51:33', '2024-10-12 21:51:33'),
(178, 'App\\Models\\User', 13, 'auth_token', 'f50a3d6e9eca2a6709adecfa678a4c58c585dc43e1a371c5c9ced15c9aeefa2a', NULL, '[\"*\"]', NULL, '2024-10-12 21:59:20', '2024-10-12 21:59:20'),
(179, 'App\\Models\\User', 13, 'auth_token', '2c43a94b5185e1f5d5a32b838f72c4a1cc24b652b6c40a73f3fc405e0ce6a2de', NULL, '[\"*\"]', NULL, '2024-10-12 21:59:56', '2024-10-12 21:59:56'),
(180, 'App\\Models\\User', 2, 'auth_token', 'fccc37cc8377c73a6adfcaac349e5d1ca8bec906a5e879859fc88b8613f0de57', NULL, '[\"*\"]', NULL, '2024-10-12 22:09:51', '2024-10-12 22:09:51'),
(181, 'App\\Models\\User', 2, 'auth_token', 'b6b625c4f08de1762529e9287627d6892d121c09b46ee488e7f3739c6eceda43', NULL, '[\"*\"]', NULL, '2024-10-12 23:21:38', '2024-10-12 23:21:38'),
(182, 'App\\Models\\User', 2, 'auth_token', '1b43c7b170e0e547ce05222cb2ec3499f2c10ad846c3c47da610b53336a30be4', NULL, '[\"*\"]', NULL, '2024-10-12 23:27:30', '2024-10-12 23:27:30'),
(183, 'App\\Models\\User', 2, 'auth_token', 'c317076189ed9c5c4ef7ee5149a1742a241405ebe6408efd1b65830ef6f96577', NULL, '[\"*\"]', NULL, '2024-10-12 23:35:47', '2024-10-12 23:35:47'),
(184, 'App\\Models\\User', 2, 'auth_token', '3892a4032f43a11e29066b2e462ff86eb00941860ab69b3189ba4a2e69c658ae', NULL, '[\"*\"]', NULL, '2024-10-12 23:37:47', '2024-10-12 23:37:47'),
(185, 'App\\Models\\User', 20, 'auth_token', '2869943cb87861b06da7a498c20a7e449cfe5c54f9081c56f17b7e8048427bb6', NULL, '[\"*\"]', NULL, '2024-10-13 02:40:29', '2024-10-13 02:40:29'),
(186, 'App\\Models\\User', 2, 'auth_token', 'cd0cfe18048540194841e9745bce8430f617d0cddbc8034087c6ed4917c707d2', NULL, '[\"*\"]', NULL, '2024-10-13 02:41:11', '2024-10-13 02:41:11'),
(187, 'App\\Models\\User', 2, 'auth_token', '0f87632e62dbd476b22fe1687c68ebb57916303056585ba4849aedd712c35fd2', NULL, '[\"*\"]', NULL, '2024-10-13 20:14:42', '2024-10-13 20:14:42'),
(188, 'App\\Models\\User', 13, 'auth_token', '397269bd5c8d3ddd39d260a246e5b92f397b5a20fc276f820a6e6262a50dcd98', NULL, '[\"*\"]', NULL, '2024-10-17 22:57:17', '2024-10-17 22:57:17'),
(189, 'App\\Models\\User', 13, 'auth_token', '00be317db6a5fd7b1a2326f15ff5fb15b3a105855d376d161f91448f3b3c4f75', NULL, '[\"*\"]', NULL, '2024-10-17 23:08:37', '2024-10-17 23:08:37'),
(190, 'App\\Models\\User', 20, 'auth_token', '292c2d1e112cb0ed04469730067d27c4306da2dc9de8eeff354b5322674ef2f7', NULL, '[\"*\"]', NULL, '2024-10-17 23:10:04', '2024-10-17 23:10:04'),
(191, 'App\\Models\\User', 2, 'auth_token', '702c78c58dcc0015d9750fa665af8f13580c568fd8eb6cd3740a3f8d762b04cc', NULL, '[\"*\"]', NULL, '2024-10-17 23:11:37', '2024-10-17 23:11:37'),
(192, 'App\\Models\\User', 2, 'auth_token', '00ed40738b665938102a6614fd26393619ebd8d5e9b799f821845a25943d221f', NULL, '[\"*\"]', NULL, '2024-10-17 23:22:53', '2024-10-17 23:22:53'),
(193, 'App\\Models\\User', 2, 'auth_token', 'b18608299f46b43f4af6812d7e34314a4451e96184fdb14f070503fab3bd236e', NULL, '[\"*\"]', NULL, '2024-10-17 23:30:31', '2024-10-17 23:30:31'),
(194, 'App\\Models\\User', 2, 'auth_token', '45be20a5916ea4357ac60ea404970734bb7fc2f48deecd8471466ce70e68b725', NULL, '[\"*\"]', NULL, '2024-10-17 23:48:52', '2024-10-17 23:48:52'),
(195, 'App\\Models\\User', 2, 'auth_token', '7e3c82d5fa9ed8e5f952b39fc66641f11d5e63af394688848c3352768e05ad0e', NULL, '[\"*\"]', NULL, '2024-10-17 23:53:40', '2024-10-17 23:53:40'),
(196, 'App\\Models\\User', 2, 'auth_token', '4a356b2d381d7bcc2526fb80bd39351dabce64e7dc3b374dfff28ce6e18e1e5a', NULL, '[\"*\"]', NULL, '2024-10-17 23:54:04', '2024-10-17 23:54:04'),
(197, 'App\\Models\\User', 13, 'auth_token', '1b28464c00881a4847779e2ca721eb8394bcacf0384fd1dcc3c5a3751eef1913', NULL, '[\"*\"]', NULL, '2024-10-18 00:05:51', '2024-10-18 00:05:51'),
(198, 'App\\Models\\User', 2, 'auth_token', '4dd4404668cb7a8460b5e53954bbc1d262aa43f78a129eea353683c6d631e41a', NULL, '[\"*\"]', NULL, '2024-10-18 00:07:02', '2024-10-18 00:07:02'),
(199, 'App\\Models\\User', 2, 'auth_token', '6c2cc34d411edd1cde24f476967cf382576177c7598106755e0586c7c02119a2', NULL, '[\"*\"]', NULL, '2024-10-18 00:07:03', '2024-10-18 00:07:03'),
(200, 'App\\Models\\User', 2, 'auth_token', 'a30009670f4300e97958bf2beb982679f3efa04e78377a389b9d820974cd7bfc', NULL, '[\"*\"]', NULL, '2024-10-18 00:25:04', '2024-10-18 00:25:04'),
(201, 'App\\Models\\User', 2, 'auth_token', '96429efe46a2b8ec6b3bc6ce0f5d7aad90bb6771463d432ef1c666f090c0d762', NULL, '[\"*\"]', NULL, '2024-10-18 00:35:32', '2024-10-18 00:35:32'),
(202, 'App\\Models\\User', 2, 'auth_token', '54946041f4a1524a89e810cb2a38779c8e9279187842a8e5d8c735709f7512e9', NULL, '[\"*\"]', NULL, '2024-10-18 00:37:33', '2024-10-18 00:37:33'),
(203, 'App\\Models\\User', 13, 'auth_token', 'ab7587eb300647451a73a9ab02cb2af8e928373aada4673db798e98b406a783c', NULL, '[\"*\"]', NULL, '2024-10-18 01:35:57', '2024-10-18 01:35:57'),
(204, 'App\\Models\\User', 2, 'auth_token', '8a462cc9efb9b5fedadb54d658d59ff03721b7fc3faff76adb54fd313e1c3f3a', NULL, '[\"*\"]', NULL, '2024-10-18 01:37:02', '2024-10-18 01:37:02'),
(205, 'App\\Models\\User', 2, 'auth_token', 'ba2c19299b8b871500269be5d0bed0c2834ec4648b46b16be7458e7eef990b06', NULL, '[\"*\"]', NULL, '2024-10-18 03:26:25', '2024-10-18 03:26:25'),
(206, 'App\\Models\\User', 13, 'auth_token', '871e9d661e90ce94146a44cbdc8787cc31f6034cf2b2369ec7f32e14b6172143', '2024-10-18 06:29:31', '[\"*\"]', NULL, '2024-10-18 06:27:40', '2024-10-18 06:29:31'),
(207, 'App\\Models\\User', 2, 'auth_token', '2d36291a42f2e2441d7ade4a0dff810a3fe2433a2c596820d674154dfca9e5c0', '2024-10-18 07:01:27', '[\"*\"]', NULL, '2024-10-18 06:30:07', '2024-10-18 07:01:27'),
(208, 'App\\Models\\User', 13, 'auth_token', 'b428ed469b473573a451bad3ec751fdf3379a0ebe4b3154250d6226e95c8281c', '2024-10-18 07:11:22', '[\"*\"]', NULL, '2024-10-18 07:10:57', '2024-10-18 07:11:22'),
(209, 'App\\Models\\User', 23, 'auth_token', 'e9146c754cb7bd13a158044db45272afc7a7700ab73cc617c9c44905e99c9b70', NULL, '[\"*\"]', NULL, '2024-10-18 07:12:37', '2024-10-18 07:12:37'),
(210, 'App\\Models\\User', 2, 'auth_token', 'ab43a0159e8522662fab8dcf62d72b443e7c087caa635c5ce07ce365f34da079', '2024-10-18 08:42:54', '[\"*\"]', NULL, '2024-10-18 07:14:46', '2024-10-18 08:42:54'),
(211, 'App\\Models\\User', 2, 'auth_token', '60db4b7a75b2382f5169718a9073954382ed95aba97ce944e98dcc1c8c44634e', '2024-10-18 07:21:01', '[\"*\"]', NULL, '2024-10-18 07:19:42', '2024-10-18 07:21:01'),
(212, 'App\\Models\\User', 2, 'auth_token', 'b83d1a5bce087358753df0e3aa5538ce1711cb5bfb6c163e87caeee6496bd6c8', '2024-10-18 08:44:05', '[\"*\"]', NULL, '2024-10-18 08:21:31', '2024-10-18 08:44:05'),
(213, 'App\\Models\\User', 20, 'auth_token', 'f7a19f43cf5db6e065a115aa647a5e1ab993fd49bab8357376c02d44676fab73', '2024-10-18 09:03:05', '[\"*\"]', NULL, '2024-10-18 09:02:53', '2024-10-18 09:03:05'),
(214, 'App\\Models\\User', 24, 'auth_token', '5c30af79ea1d5c4d2f66b2e0541cc84718d41fb01047a1e66b118c52da37f1a5', '2024-10-18 09:03:39', '[\"*\"]', NULL, '2024-10-18 09:03:28', '2024-10-18 09:03:39'),
(215, 'App\\Models\\User', 25, 'auth_token', '581640a01316682a1e889d15ce2ca9260f07123c295a34292b0e82a326d28731', '2024-10-18 09:04:11', '[\"*\"]', NULL, '2024-10-18 09:03:58', '2024-10-18 09:04:11'),
(216, 'App\\Models\\User', 26, 'auth_token', '28c17aea53b993896c455521a0458381ca451d9d63e6ca8f58be7afad2004096', '2024-10-18 09:05:04', '[\"*\"]', NULL, '2024-10-18 09:04:49', '2024-10-18 09:05:04'),
(217, 'App\\Models\\User', 13, 'auth_token', 'c196b20844d8c39f0a6558d796ee87320eed45d645cf9a2fda890941025c3f2f', '2024-10-18 10:37:36', '[\"*\"]', NULL, '2024-10-18 10:36:36', '2024-10-18 10:37:36'),
(218, 'App\\Models\\User', 2, 'auth_token', '6c71e3b796f0185fb415c2063d6853b8c575ae8c85f3a32fb2ae3f91676c62df', '2024-10-18 23:50:50', '[\"*\"]', NULL, '2024-10-18 10:39:11', '2024-10-18 23:50:50'),
(219, 'App\\Models\\User', 13, 'auth_token', 'b0db36dcc3611565f1c8dda6424f17ea37a5b89f50f129300567066a759e469f', '2024-10-19 00:27:57', '[\"*\"]', NULL, '2024-10-19 00:03:40', '2024-10-19 00:27:57'),
(220, 'App\\Models\\User', 2, 'auth_token', '90d6d63be6d04173ca40bbd9a5586027ae417404bf20d052051687fb1ba600ee', NULL, '[\"*\"]', NULL, '2024-10-19 01:56:15', '2024-10-19 01:56:15'),
(221, 'App\\Models\\User', 24, 'auth_token', '942074ab2d91344d3d3069595ef925379700bfbfc3c06c7f08406617761aedac', '2024-10-19 02:20:15', '[\"*\"]', NULL, '2024-10-19 02:18:43', '2024-10-19 02:20:15'),
(222, 'App\\Models\\User', 2, 'auth_token', '3a4a614f4029d1bf26feb7cac12dd6c3cfd36a9f0a776882a95ee4ee99bbb0cb', NULL, '[\"*\"]', NULL, '2024-10-19 02:22:16', '2024-10-19 02:22:16'),
(223, 'App\\Models\\User', 13, 'auth_token', 'd654e37c6177689b55cabbcb83495fb9643d155c529ff0a6fc4be898f2dd4875', NULL, '[\"*\"]', NULL, '2024-10-27 18:41:56', '2024-10-27 18:41:56'),
(224, 'App\\Models\\User', 2, 'auth_token', '1554d6da0e68acbac2367f773baefc64b6c68daf7059fe9cd716f3cb6965584f', NULL, '[\"*\"]', NULL, '2024-10-27 18:43:12', '2024-10-27 18:43:12'),
(225, 'App\\Models\\User', 2, 'auth_token', '0fd1a9770a93fd911b467b78bd80b1dbb51d0aaea1570c78da2630a5fe559931', '2024-11-06 22:21:43', '[\"*\"]', NULL, '2024-10-29 19:53:18', '2024-11-06 22:21:43'),
(226, 'App\\Models\\User', 2, 'auth_token', '4aaed588ff49f459065c76e5ba0facdd61483b4dd815ee0a9fc113678efef669', NULL, '[\"*\"]', NULL, '2024-11-06 23:44:12', '2024-11-06 23:44:12'),
(227, 'App\\Models\\User', 29, 'auth_token', '30005f9f590bf4853dade722e6e7db4eab04166ec0c3823d5fc133f99765bf1a', NULL, '[\"*\"]', NULL, '2024-11-06 23:45:45', '2024-11-06 23:45:45'),
(228, 'App\\Models\\User', 13, 'auth_token', '58d30bf5c03320333386869a3f8ce1aaf44537293e7fcf2279d21c6b6343b002', NULL, '[\"*\"]', NULL, '2024-11-07 00:00:23', '2024-11-07 00:00:23'),
(229, 'App\\Models\\User', 2, 'auth_token', 'cb3ccc01b26152c540a5fa4bdd1395ac1b8e864c046f4c2a50c94cd4f8ccc0ed', NULL, '[\"*\"]', NULL, '2024-11-07 00:00:51', '2024-11-07 00:00:51'),
(230, 'App\\Models\\User', 13, 'auth_token', '2420faa9727280a77af434fff999e7dcb0158e9e92f710e11c0afd23c72c3126', NULL, '[\"*\"]', NULL, '2024-11-07 00:06:20', '2024-11-07 00:06:20'),
(231, 'App\\Models\\User', 13, 'auth_token', 'b1a17f721626b6dbf1689a683442d27907945d85fa88439726445067fc81709b', NULL, '[\"*\"]', NULL, '2024-11-07 00:06:25', '2024-11-07 00:06:25'),
(232, 'App\\Models\\User', 13, 'auth_token', '245d0b2d3c55463e5d425f41e3a51437883e437a86c99e9314a83789ce8a1e47', NULL, '[\"*\"]', NULL, '2024-11-07 00:06:29', '2024-11-07 00:06:29'),
(233, 'App\\Models\\User', 2, 'auth_token', '0180c73aa49f66526562164b3580ecee8cf39f115ce015641e55cd382a3cebdc', NULL, '[\"*\"]', NULL, '2024-11-07 00:06:50', '2024-11-07 00:06:50'),
(234, 'App\\Models\\User', 2, 'auth_token', '751c8e29bb2c5ce285077f6755d6685849a8583772eb2b51685d2ea0454507d3', NULL, '[\"*\"]', NULL, '2024-11-07 00:06:57', '2024-11-07 00:06:57'),
(235, 'App\\Models\\User', 2, 'auth_token', '935507654ad7feff662d915b3351694c5e2bafbc5c55e4a87e5a03cb59d2940c', NULL, '[\"*\"]', NULL, '2024-11-07 00:07:31', '2024-11-07 00:07:31'),
(236, 'App\\Models\\User', 13, 'auth_token', '907e74fb7c4e2dc69f32982d13d90919566405aac27c9990955bd984781c1cb2', NULL, '[\"*\"]', NULL, '2024-11-07 00:10:28', '2024-11-07 00:10:28'),
(237, 'App\\Models\\User', 13, 'auth_token', 'cdfd52f89747a023188eb3573fa4ec4bcd0b0a8482ba9a2743109da667c75178', NULL, '[\"*\"]', NULL, '2024-11-07 00:10:30', '2024-11-07 00:10:30'),
(238, 'App\\Models\\User', 13, 'auth_token', '9182cba4696401c828137ccd889c2e2bbbd575e781c0589c344ddd9916da0d29', NULL, '[\"*\"]', NULL, '2024-11-07 00:10:34', '2024-11-07 00:10:34'),
(239, 'App\\Models\\User', 13, 'auth_token', '6cc0a13bba90ed677bbade040d05df7ec7b3209795c1fb681d885e4db1235cf7', NULL, '[\"*\"]', NULL, '2024-11-07 00:10:57', '2024-11-07 00:10:57'),
(240, 'App\\Models\\User', 2, 'auth_token', 'fbc6d081a4fd8c8ef32bdcae9320b6e77bff7e6951870568f87a0a1d432bcb03', NULL, '[\"*\"]', NULL, '2024-11-07 00:11:15', '2024-11-07 00:11:15');

-- --------------------------------------------------------

--
-- Table structure for table `photos`
--

CREATE TABLE `photos` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(255) NOT NULL,
  `description` text DEFAULT NULL,
  `image_url` varchar(255) NOT NULL,
  `gallery_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `photos`
--

INSERT INTO `photos` (`id`, `title`, `description`, `image_url`, `gallery_id`, `created_at`, `updated_at`) VALUES
(8, 'Halaman Sekolah', 'Lorem Ipsum adalah contoh teks atau dummy dalam industri percetakan dan penataan huruf atau typesetting.', 'https://smkn4bogor.sch.id/assets/images/background/smkn4bogor_2.jpg', 1, '2024-09-28 02:09:00', '2024-10-18 08:26:37'),
(10, 'Title', 'Lorem Ipsum adalah contoh teks atau dummy dalam industri percetakan dan penataan huruf atau typesetting.', 'https://smkn4bogor.sch.id/assets/images/background/smkn4bogor_3.jpg', 1, '2024-09-29 05:22:32', '2024-10-18 08:32:55'),
(23, 'Title', 'des', 'https://i.ytimg.com/vi/33lLn44_AfM/maxresdefault_live.jpg', 2, '2024-10-18 02:20:49', '2024-10-18 08:34:09'),
(32, 'Foto', 'Lorem Ipsum adalah contoh teks atau dummy dalam industri percetakan dan penataan huruf atau typesetting.', 'https://i.ytimg.com/vi/N6cmqCbQllo/maxresdefault.jpg', 1, '2024-10-18 08:30:55', '2024-10-18 08:30:55'),
(33, 'Judul', 'Lorem Ipsum adalah contoh teks atau dummy dalam industri percetakan dan penataan huruf atau typesetting.', 'https://i.ytimg.com/vi/PUkodmusvC8/maxresdefault.jpg?sqp=-oaymwEmCIAKENAF8quKqQMa8AEB-AH-CYAC0AWKAgwIABABGGUgZShlMA8=&rs=AOn4CLBd6ZUWbvRPJKM-2UlIPY9B1LT6kQ', 1, '2024-10-18 08:32:37', '2024-10-18 08:33:07'),
(34, 'Title', 'des', 'http://cdn-2.tstatic.net/bogor/foto/bank/images/smkn-4-kota-bogor-mobil-listrik_20160426_180755.jpg', 2, '2024-10-18 08:35:15', '2024-10-18 08:35:15'),
(35, 'Title', 'des', 'https://cdn-2.tstatic.net/bogor/foto/bank/images/smkn-4-kota-bogor-mobil-listrik_20160426_180728.jpg', 2, '2024-10-18 08:35:52', '2024-10-18 08:35:52'),
(36, 'Title', 'des', 'https://www.kobrapostonline.com/wp-content/uploads/2022/08/smkn-4.jpg', 2, '2024-10-18 08:36:56', '2024-10-18 08:36:56'),
(37, 'Title', '1', 'https://static.republika.co.id/uploads/images/inpicture_slide/sukses-menerapkan-pendidikan-vokasi-melalui-empat-program-kelas-industri_221112194712-854.jpg', 7, '2024-10-18 08:38:48', '2024-10-18 08:38:48'),
(38, 'Title', '2', 'https://asset-2.tstatic.net/jabar/foto/bank/images/1-Sukses-menerapkan-pendidikan-vokasi-pada-siswa-siswanya-melalui-empat-program-Kelas-Industri.jpg', 7, '2024-10-18 08:39:16', '2024-10-18 08:39:16'),
(39, 'Title', 'des', 'https://www.harapanrakyat.com/wp-content/uploads/2022/11/SMKN-4-Bogor.jpg', 7, '2024-10-18 08:40:19', '2024-10-18 08:40:19'),
(40, 'Title', '1', 'http://hayoo.id/wp-content/uploads/2022/11/Sukses-Terapkan-Pendidikan-Vokasi-SMKN-4-Bogor-Dilirik-Banyak-Perusahaan-Industri-Ternama-IST-2.jpg', 7, '2024-10-18 08:41:13', '2024-10-18 08:41:13'),
(41, 'Title', '1', 'https://smkn4bogor.sch.id/assets/images/background/tkr.jpeg', 7, '2024-10-18 08:41:41', '2024-10-18 08:41:41'),
(43, 'Kepala Sekolah', 'Tentang Kami', 'https://smkn4bogor.sch.id/assets/images/avatar/kepala_sekolah.jpg', 1, '2024-10-18 08:47:10', '2024-10-18 08:47:10'),
(44, 'Title', 'w', 'https://smkn4bogor.sch.id/assets/images/background/pplg_2.jpg', 7, '2024-10-18 08:54:32', '2024-10-18 08:54:32'),
(45, 'Title', 'w', 'https://smkn4bogor.sch.id/assets/images/background/tjkt_2.jpg', 7, '2024-10-18 08:55:12', '2024-10-18 08:55:12'),
(46, 'Title', 'des', 'https://smkn4bogor.sch.id/assets/images/background/tjkt_3.jpg', 7, '2024-10-18 08:55:29', '2024-10-18 08:55:29');

-- --------------------------------------------------------

--
-- Table structure for table `pictures`
--

CREATE TABLE `pictures` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `album_id` bigint(20) UNSIGNED NOT NULL,
  `image_url` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `pictures`
--

INSERT INTO `pictures` (`id`, `album_id`, `image_url`, `created_at`, `updated_at`) VALUES
(10, 3, 'https://smkn4bogor.sch.id/assets/images/background/taman_1.jpg', '2024-10-18 08:51:06', '2024-10-18 08:51:06'),
(11, 3, 'https://smkn4bogor.sch.id/assets/images/background/tpfl_1.jpg', '2024-10-18 08:52:05', '2024-10-18 08:52:05'),
(12, 3, 'https://smkn4bogor.sch.id/assets/images/background/pplg_1.jpg', '2024-10-18 08:55:57', '2024-10-18 08:55:57'),
(13, 3, 'https://i.ytimg.com/vi/p_FIRHblPg0/maxresdefault.jpg', '2024-10-18 08:56:36', '2024-10-18 08:56:36'),
(14, 3, 'https://tse2.mm.bing.net/th?id=OIP.7rEJeNkA9iesexDBLAeFFwHaE8&pid=Api&P=0&h=180', '2024-10-18 08:58:04', '2024-10-18 08:58:04'),
(15, 3, 'https://tse3.mm.bing.net/th?id=OIP.8aDULJfgroKbPNewzBnYoQHaE8&pid=Api&P=0&h=180', '2024-10-18 08:58:19', '2024-10-18 08:58:19'),
(16, 3, 'https://www.kobrapostonline.com/wp-content/uploads/2022/08/smkn-4.jpg', '2024-10-18 08:58:36', '2024-10-18 08:58:36'),
(17, 3, 'https://www.ikons.id/wp-content/uploads/2017/09/21371370_1742489572430843_2443425467616778128_n-640x438.jpg', '2024-10-18 08:58:52', '2024-10-18 08:58:52'),
(18, 3, 'https://tse4.mm.bing.net/th?id=OIP.PGeHl0xp1I7qp7MrOwHj6QHaEx&pid=Api&P=0&h=180', '2024-10-18 08:59:36', '2024-10-18 08:59:36');

-- --------------------------------------------------------

--
-- Table structure for table `profiles`
--

CREATE TABLE `profiles` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `class` varchar(255) DEFAULT NULL,
  `birthdate` date DEFAULT NULL,
  `bio` text DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) NOT NULL,
  `role` varchar(255) NOT NULL,
  `remember_token` varchar(100) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `role`, `remember_token`, `created_at`, `updated_at`) VALUES
(2, 'admin1', 'admin1@gmail.com', NULL, 'admin1', 'admin', NULL, NULL, '2024-09-29 00:51:08'),
(13, 'zan kikarin', 'zan@gmail.com', NULL, '123456', 'user', NULL, '2024-09-27 23:04:15', '2024-10-19 01:51:51'),
(20, 'tesuser', 'tesuser@gmail.com', NULL, '123456', 'user', NULL, '2024-10-13 02:39:57', '2024-10-13 02:39:57'),
(24, 'Ilham Pauzan', 'user1@gmail.com', NULL, '123456', 'user', NULL, '2024-10-18 09:01:03', '2024-10-19 02:19:37'),
(25, 'user2', 'user2@gmail.com', NULL, '123456', 'user', NULL, '2024-10-18 09:01:17', '2024-10-18 09:01:17'),
(26, 'user3', 'user3@gmail.com', NULL, '123456', 'user', NULL, '2024-10-18 09:01:48', '2024-10-18 09:01:48'),
(29, 'admin2', 'admin2@gmail.com', NULL, 'admin2', 'admin', NULL, '2024-11-06 23:43:52', '2024-11-06 23:45:03');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `agendas`
--
ALTER TABLE `agendas`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `albums`
--
ALTER TABLE `albums`
  ADD PRIMARY KEY (`id`),
  ADD KEY `albums_user_id_foreign` (`user_id`);

--
-- Indexes for table `comments`
--
ALTER TABLE `comments`
  ADD PRIMARY KEY (`id`),
  ADD KEY `comments_photo_id_foreign` (`photo_id`),
  ADD KEY `comments_user_id_foreign` (`user_id`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indexes for table `galleries`
--
ALTER TABLE `galleries`
  ADD PRIMARY KEY (`id`),
  ADD KEY `galleries_user_id_foreign` (`user_id`);

--
-- Indexes for table `infos`
--
ALTER TABLE `infos`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `likes`
--
ALTER TABLE `likes`
  ADD PRIMARY KEY (`id`),
  ADD KEY `likes_photo_id_foreign` (`photo_id`),
  ADD KEY `likes_user_id_foreign` (`user_id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indexes for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Indexes for table `photos`
--
ALTER TABLE `photos`
  ADD PRIMARY KEY (`id`),
  ADD KEY `photos_gallery_id_foreign` (`gallery_id`);

--
-- Indexes for table `pictures`
--
ALTER TABLE `pictures`
  ADD PRIMARY KEY (`id`),
  ADD KEY `pictures_album_id_foreign` (`album_id`);

--
-- Indexes for table `profiles`
--
ALTER TABLE `profiles`
  ADD PRIMARY KEY (`id`),
  ADD KEY `profiles_user_id_foreign` (`user_id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `agendas`
--
ALTER TABLE `agendas`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `albums`
--
ALTER TABLE `albums`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `comments`
--
ALTER TABLE `comments`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=49;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `galleries`
--
ALTER TABLE `galleries`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;

--
-- AUTO_INCREMENT for table `infos`
--
ALTER TABLE `infos`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `likes`
--
ALTER TABLE `likes`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=39;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=42;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=241;

--
-- AUTO_INCREMENT for table `photos`
--
ALTER TABLE `photos`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=52;

--
-- AUTO_INCREMENT for table `pictures`
--
ALTER TABLE `pictures`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;

--
-- AUTO_INCREMENT for table `profiles`
--
ALTER TABLE `profiles`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=30;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `albums`
--
ALTER TABLE `albums`
  ADD CONSTRAINT `albums_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `comments`
--
ALTER TABLE `comments`
  ADD CONSTRAINT `comments_photo_id_foreign` FOREIGN KEY (`photo_id`) REFERENCES `photos` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `comments_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `galleries`
--
ALTER TABLE `galleries`
  ADD CONSTRAINT `galleries_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `likes`
--
ALTER TABLE `likes`
  ADD CONSTRAINT `likes_photo_id_foreign` FOREIGN KEY (`photo_id`) REFERENCES `photos` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `likes_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `photos`
--
ALTER TABLE `photos`
  ADD CONSTRAINT `photos_gallery_id_foreign` FOREIGN KEY (`gallery_id`) REFERENCES `galleries` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `pictures`
--
ALTER TABLE `pictures`
  ADD CONSTRAINT `pictures_album_id_foreign` FOREIGN KEY (`album_id`) REFERENCES `albums` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `profiles`
--
ALTER TABLE `profiles`
  ADD CONSTRAINT `profiles_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
