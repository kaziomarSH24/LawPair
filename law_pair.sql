-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Mar 25, 2025 at 07:33 AM
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
-- Database: `law_pair`
--

-- --------------------------------------------------------

--
-- Table structure for table `abouts`
--

CREATE TABLE `abouts` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `about` text NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `abouts`
--

INSERT INTO `abouts` (`id`, `about`, `created_at`, `updated_at`) VALUES
(1, '<p><strong style=\"font-size: 34px;\"></strong><span style=\"color: rgb(60, 120, 216); font-family: fontSans, &quot;fontSans Fallback&quot;; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: 400; letter-spacing: normal; orphans: 2; text-align: start; text-indent: 0px; text-transform: none; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; white-space: normal; background-color: rgb(255, 255, 255); text-decoration-thickness: initial; text-decoration-style: initial; text-decoration-color: initial; float: none; display: inline !important; font-size: 16px;\"><strong style=\"font-size: 34px;\">Lorem ipsum,</strong></span><span style=\"color: rgb(0, 0, 0); font-family: fontSans, &quot;fontSans Fallback&quot;; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: 400; letter-spacing: normal; orphans: 2; text-align: start; text-indent: 0px; text-transform: none; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; white-space: normal; background-color: rgb(255, 255, 255); text-decoration-thickness: initial; text-decoration-style: initial; text-decoration-color: initial; float: none; display: inline !important; font-size: 16px;\"><strong style=\"font-size: 34px;\"> or lipsum as it is sometimes known,</strong><br><br> is dummy text used in laying out print, graphic or web designs. The passage is attributed to an unknown typesetter in the 15th century who is thought to have scrambled parts of Cicero\'s De Finibus Bonorum et Malorum for use in a type specimen book. It usually begins with:</span></p>', '2025-02-20 08:14:30', '2025-03-25 05:39:37');

-- --------------------------------------------------------

--
-- Table structure for table `cache`
--

CREATE TABLE `cache` (
  `key` varchar(255) NOT NULL,
  `value` mediumtext NOT NULL,
  `expiration` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `cache_locks`
--

CREATE TABLE `cache_locks` (
  `key` varchar(255) NOT NULL,
  `owner` varchar(255) NOT NULL,
  `expiration` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `image_icon` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `name`, `image_icon`, `created_at`, `updated_at`) VALUES
(26, 'Immigration', 'uploads/categories/KkCc6lAcRYBfrCIaVK8G7hxjYE45f3bNF1vMmswy.png', '2025-02-23 09:29:08', '2025-02-23 09:29:08'),
(27, 'Wills & Trusts', 'uploads/categories/7j95kRdoLyG8fgcSI5j70i6HEYYKxxzgpMgdBbl5.png', '2025-02-23 09:29:52', '2025-02-23 09:29:52'),
(28, 'Family & Matrimonial', 'uploads/categories/DIdKxzwtcI1dicbidIqkMdiwJHwZitpVp0cV4SHY.png', '2025-02-23 09:30:06', '2025-02-23 09:30:06'),
(29, 'Trademarks', 'uploads/categories/nLNDu5woZYeoQQV6MPB8KCTkSLxMmY2rBjTUTlcH.png', '2025-02-23 09:30:22', '2025-02-23 09:30:22'),
(30, 'Advance Care Planning', 'uploads/categories/NsJy6ACkxJv0ladyZNuiu9vywBa2WtHED5gahIOt.png', '2025-02-23 09:30:39', '2025-02-23 09:30:39'),
(31, 'Criminal Defense', 'uploads/categories/ApLgfFbhHzaRni0c1Jxq2391m7HrsSzl8sIMCCLt.png', '2025-02-23 09:30:51', '2025-02-23 09:30:51'),
(32, 'Residential Real Estate', 'uploads/categories/lbqEIk4TMiwulDUX6CD8jyjxkMThtzN3oW4wV81B.png', '2025-02-23 09:34:04', '2025-02-23 09:34:04');

-- --------------------------------------------------------

--
-- Table structure for table `disclaimers`
--

CREATE TABLE `disclaimers` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `disclaimer` text NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `disclaimers`
--

INSERT INTO `disclaimers` (`id`, `disclaimer`, `created_at`, `updated_at`) VALUES
(1, 'Temporibus ullam veritatis. Ut repellendus modi. Veniam non eum. Enim voluptatem est odit eos veniam ducimus. Culpa quae culpa.\n \rEius iure dolorum veritatis minus dicta. Distinctio ut animi possimus voluptates ipsa consequatur. Dolorem sunt aut et est dolores facilis praesentium. Voluptas aperiam pariatur ea velit ipsa libero non non.\n \rAb id quaerat rerum voluptas distinctio magnam cumque voluptatum. Deleniti est deleniti quod est. Mollitia eligendi voluptate voluptates magni quia et. Est tenetur et eaque voluptas aut neque rerum consequatur eius. Non modi temporibus voluptas ut. Nihil saepe fugit ex deleniti molestias.', '2025-02-20 08:42:46', '2025-03-25 06:02:46');

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
-- Table structure for table `favorites`
--

CREATE TABLE `favorites` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `lawyer_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `favorites`
--

INSERT INTO `favorites` (`id`, `user_id`, `lawyer_id`, `created_at`, `updated_at`) VALUES
(1, 167, 5, '2025-03-16 14:01:56', '2025-03-16 14:01:56'),
(2, 167, 3, '2025-03-16 14:06:48', '2025-03-16 14:06:48'),
(3, 167, 4, '2025-03-16 14:10:18', '2025-03-16 14:10:18'),
(4, 167, 6, '2025-03-16 14:29:56', '2025-03-16 14:29:56'),
(5, 167, 5, '2025-03-16 14:40:00', '2025-03-16 14:40:00'),
(6, 167, 7, '2025-03-17 08:19:41', '2025-03-17 08:19:41'),
(7, 145, 5, '2025-03-17 08:34:09', '2025-03-17 08:34:09'),
(8, 145, 1, '2025-03-17 08:35:33', '2025-03-17 08:35:33'),
(9, 145, 1, '2025-03-17 08:35:36', '2025-03-17 08:35:36'),
(10, 145, 1, '2025-03-17 09:54:05', '2025-03-17 09:54:05'),
(11, 145, 1, '2025-03-18 09:26:57', '2025-03-18 09:26:57'),
(12, 145, 57, '2025-03-18 09:28:57', '2025-03-18 09:28:57'),
(13, 167, 57, '2025-03-18 09:29:25', '2025-03-18 09:29:25'),
(14, 167, 57, '2025-03-18 09:47:40', '2025-03-18 09:47:40'),
(15, 167, 58, '2025-03-18 09:52:20', '2025-03-18 09:52:20'),
(16, 167, 57, '2025-03-18 09:56:39', '2025-03-18 09:56:39'),
(17, 167, 57, '2025-03-18 09:57:04', '2025-03-18 09:57:04'),
(18, 167, 57, '2025-03-18 10:00:54', '2025-03-18 10:00:54'),
(19, 167, 58, '2025-03-18 10:01:07', '2025-03-18 10:01:07'),
(20, 167, 57, '2025-03-18 10:03:23', '2025-03-18 10:03:23'),
(21, 167, 57, '2025-03-18 10:03:56', '2025-03-18 10:03:56'),
(22, 167, 58, '2025-03-18 10:03:58', '2025-03-18 10:03:58'),
(23, 167, 57, '2025-03-18 10:22:44', '2025-03-18 10:22:44'),
(24, 167, 58, '2025-03-18 10:22:48', '2025-03-18 10:22:48'),
(25, 167, 58, '2025-03-18 10:23:06', '2025-03-18 10:23:06'),
(26, 167, 57, '2025-03-18 10:23:08', '2025-03-18 10:23:08'),
(27, 167, 57, '2025-03-18 10:30:55', '2025-03-18 10:30:55'),
(28, 167, 57, '2025-03-18 10:32:17', '2025-03-18 10:32:17'),
(29, 167, 60, '2025-03-18 10:39:58', '2025-03-18 10:39:58'),
(30, 167, 60, '2025-03-18 10:41:13', '2025-03-18 10:41:13'),
(31, 167, 60, '2025-03-18 10:41:51', '2025-03-18 10:41:51'),
(32, 167, 60, '2025-03-18 10:43:59', '2025-03-18 10:43:59'),
(33, 167, 58, '2025-03-18 10:44:44', '2025-03-18 10:44:44'),
(34, 167, 57, '2025-03-18 10:44:47', '2025-03-18 10:44:47'),
(35, 167, 60, '2025-03-18 10:45:03', '2025-03-18 10:45:03'),
(36, 167, 7, '2025-03-18 10:47:01', '2025-03-18 10:47:01'),
(37, 167, 57, '2025-03-18 11:53:23', '2025-03-18 11:53:23'),
(38, 167, 60, '2025-03-18 12:00:33', '2025-03-18 12:00:33'),
(39, 167, 57, '2025-03-18 12:47:58', '2025-03-18 12:47:58'),
(40, 167, 56, '2025-03-18 12:52:56', '2025-03-18 12:52:56'),
(41, 176, 1, '2025-03-19 09:10:54', '2025-03-19 09:10:54'),
(42, 176, 5, '2025-03-19 09:11:21', '2025-03-19 09:11:21'),
(43, 167, 57, '2025-03-20 07:52:10', '2025-03-20 07:52:10'),
(44, 203, 58, '2025-03-22 12:03:40', '2025-03-22 12:03:40'),
(45, 243, 57, '2025-03-23 10:18:39', '2025-03-23 10:18:39'),
(46, 272, 57, '2025-03-23 14:41:00', '2025-03-23 14:41:00'),
(47, 274, 1, '2025-03-23 14:49:03', '2025-03-23 14:49:03'),
(48, 274, 1, '2025-03-23 14:49:40', '2025-03-23 14:49:40'),
(49, 274, 10, '2025-03-23 14:50:07', '2025-03-23 14:50:07'),
(50, 275, 57, '2025-03-24 08:36:49', '2025-03-24 08:36:49'),
(51, 277, 1, '2025-03-24 09:12:02', '2025-03-24 09:12:02');

-- --------------------------------------------------------

--
-- Table structure for table `jobs`
--

CREATE TABLE `jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `queue` varchar(255) NOT NULL,
  `payload` longtext NOT NULL,
  `attempts` tinyint(3) UNSIGNED NOT NULL,
  `reserved_at` int(10) UNSIGNED DEFAULT NULL,
  `available_at` int(10) UNSIGNED NOT NULL,
  `created_at` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `job_batches`
--

CREATE TABLE `job_batches` (
  `id` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `total_jobs` int(11) NOT NULL,
  `pending_jobs` int(11) NOT NULL,
  `failed_jobs` int(11) NOT NULL,
  `failed_job_ids` longtext NOT NULL,
  `options` mediumtext DEFAULT NULL,
  `cancelled_at` int(11) DEFAULT NULL,
  `created_at` int(11) NOT NULL,
  `finished_at` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `lawyers`
--

CREATE TABLE `lawyers` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `service_ids` varchar(255) DEFAULT NULL,
  `practice_area` varchar(255) DEFAULT NULL,
  `experience` varchar(255) DEFAULT NULL,
  `state` varchar(255) DEFAULT NULL,
  `languages` varchar(255) DEFAULT NULL,
  `web_link` varchar(255) DEFAULT NULL,
  `schedule` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL CHECK (json_valid(`schedule`)),
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `lawyers`
--

INSERT INTO `lawyers` (`id`, `user_id`, `service_ids`, `practice_area`, `experience`, `state`, `languages`, `web_link`, `schedule`, `created_at`, `updated_at`) VALUES
(1, 6, '[26,27,32]', 'Riley & Associate Law Firm', '8 years', 'New York', 'English', 'http://www.websitedomain.com', '[{\"day\":\"saturday\",\"time\":\"09:00 - 17:00\"}]', '2024-03-05 11:13:51', '2024-03-05 11:13:51'),
(2, 10, '[26,27,32]', 'Riley & Associate Law Firm', '2 years', 'New York', 'English', 'http://www.websitedomain.com', '[{\"day\":\"saturday\",\"time\":\"09:00 - 17:00\"}]', '2024-08-02 11:13:52', '2024-08-02 11:13:52'),
(3, 11, '[26,27,32]', 'Riley & Associate Law Firm', '6 years', 'New York', 'English', 'http://www.websitedomain.com', '[{\"day\":\"saturday\",\"time\":\"09:00 - 17:00\"}]', '2024-02-27 11:13:52', '2024-02-27 11:13:52'),
(4, 13, '[26,27,32]', 'Riley & Associate Law Firm', '5 years', 'New York', 'English', 'http://www.websitedomain.com', '[{\"day\":\"saturday\",\"time\":\"09:00 - 17:00\"}]', '2025-02-12 11:13:53', '2025-02-12 11:13:53'),
(5, 14, '[26,27,32]', 'Riley & Associate Law Firm', '8 years', 'New York', 'English', 'http://www.websitedomain.com', '[{\"day\":\"saturday\",\"time\":\"09:00 - 17:00\"}]', '2024-04-13 11:13:53', '2024-04-13 11:13:53'),
(6, 17, '[26,27,32]', 'Riley & Associate Law Firm', '6 years', 'New York', 'English', 'http://www.websitedomain.com', '[{\"day\":\"saturday\",\"time\":\"09:00 - 17:00\"}]', '2024-08-09 11:13:53', '2024-08-09 11:13:53'),
(7, 20, '[26,27,32]', 'Riley & Associate Law Firm', '5 years', 'New York', 'English', 'http://www.websitedomain.com', '[{\"day\":\"saturday\",\"time\":\"09:00 - 17:00\"}]', '2024-06-12 11:13:54', '2024-06-12 11:13:54'),
(8, 23, '[26,27,32]', 'Riley & Associate Law Firm', '3 years', 'New York', 'English', 'http://www.websitedomain.com', '[{\"day\":\"saturday\",\"time\":\"09:00 - 17:00\"}]', '2024-07-06 11:13:54', '2024-07-06 11:13:54'),
(9, 24, '[26,27,32]', 'Riley & Associate Law Firm', '4 years', 'New York', 'English', 'http://www.websitedomain.com', '[{\"day\":\"saturday\",\"time\":\"09:00 - 17:00\"}]', '2024-06-18 11:13:55', '2024-06-18 11:13:55'),
(10, 25, '[26,27,32]', 'Riley & Associate Law Firm', '3 years', 'New York', 'English', 'http://www.websitedomain.com', '[{\"day\":\"saturday\",\"time\":\"09:00 - 17:00\"}]', '2024-06-21 11:13:55', '2024-06-21 11:13:55'),
(11, 28, '[26,27,32]', 'Riley & Associate Law Firm', '4 years', 'New York', 'English', 'http://www.websitedomain.com', '[{\"day\":\"saturday\",\"time\":\"09:00 - 17:00\"}]', '2024-08-06 11:13:55', '2024-08-06 11:13:55'),
(12, 29, '[26,27,32]', 'Riley & Associate Law Firm', '5 years', 'New York', 'English', 'http://www.websitedomain.com', '[{\"day\":\"saturday\",\"time\":\"09:00 - 17:00\"}]', '2024-07-13 11:13:56', '2024-07-13 11:13:56'),
(13, 38, '[26,27,32]', 'Riley & Associate Law Firm', '5 years', 'New York', 'English', 'http://www.websitedomain.com', '[{\"day\":\"saturday\",\"time\":\"09:00 - 17:00\"}]', '2025-01-19 11:13:57', '2025-01-19 11:13:57'),
(14, 39, '[26,27,32]', 'Riley & Associate Law Firm', '9 years', 'New York', 'English', 'http://www.websitedomain.com', '[{\"day\":\"saturday\",\"time\":\"09:00 - 17:00\"}]', '2024-02-19 11:13:58', '2024-02-19 11:13:58'),
(15, 40, '[26,27,32]', 'Riley & Associate Law Firm', '6 years', 'New York', 'English', 'http://www.websitedomain.com', '[{\"day\":\"saturday\",\"time\":\"09:00 - 17:00\"}]', '2024-12-29 11:13:58', '2024-12-29 11:13:58'),
(16, 42, '[26,27,32]', 'Riley & Associate Law Firm', '8 years', 'New York', 'English', 'http://www.websitedomain.com', '[{\"day\":\"saturday\",\"time\":\"09:00 - 17:00\"}]', '2024-11-14 11:13:58', '2024-11-14 11:13:58'),
(17, 44, '[26,27,32]', 'Riley & Associate Law Firm', '3 years', 'New York', 'English', 'http://www.websitedomain.com', '[{\"day\":\"saturday\",\"time\":\"09:00 - 17:00\"}]', '2024-06-16 11:13:58', '2024-06-16 11:13:58'),
(18, 45, '[26,27,32]', 'Riley & Associate Law Firm', '1 years', 'New York', 'English', 'http://www.websitedomain.com', '[{\"day\":\"saturday\",\"time\":\"09:00 - 17:00\"}]', '2024-10-14 11:13:59', '2024-10-14 11:13:59'),
(19, 46, '[26,27,32]', 'Riley & Associate Law Firm', '2 years', 'New York', 'English', 'http://www.websitedomain.com', '[{\"day\":\"saturday\",\"time\":\"09:00 - 17:00\"}]', '2024-08-13 11:13:59', '2024-08-13 11:13:59'),
(20, 48, '[26,27,32]', 'Riley & Associate Law Firm', '4 years', 'New York', 'English', 'http://www.websitedomain.com', '[{\"day\":\"saturday\",\"time\":\"09:00 - 17:00\"}]', '2025-01-09 11:13:59', '2025-01-09 11:13:59'),
(21, 49, '[26,27,32]', 'Riley & Associate Law Firm', '7 years', 'New York', 'English', 'http://www.websitedomain.com', '[{\"day\":\"saturday\",\"time\":\"09:00 - 17:00\"}]', '2024-06-20 11:13:59', '2024-06-20 11:13:59'),
(22, 51, '[26,27,32]', 'Riley & Associate Law Firm', '10 years', 'New York', 'English', 'http://www.websitedomain.com', '[{\"day\":\"saturday\",\"time\":\"09:00 - 17:00\"}]', '2024-09-23 11:14:00', '2024-09-23 11:14:00'),
(23, 55, '[26,27,32]', 'Riley & Associate Law Firm', '6 years', 'New York', 'English', 'http://www.websitedomain.com', '[{\"day\":\"saturday\",\"time\":\"09:00 - 17:00\"}]', '2024-06-05 11:14:01', '2024-06-05 11:14:01'),
(24, 57, '[26,27,32]', 'Riley & Associate Law Firm', '4 years', 'New York', 'English', 'http://www.websitedomain.com', '\"[\\n    {\\\"day\\\": \\\"saturday\\\", \\\"time\\\": \\\"09:00 pm - 10:00 pm\\\"},\\n    {\\\"day\\\": \\\"sunday\\\", \\\"time\\\": \\\"07:00 pm - 08:00 pm\\\"},\\n    {\\\"day\\\": \\\"monday\\\", \\\"time\\\": \\\"07:00 pm - 08:00 pm\\\"}\\n]\"', '2024-06-04 11:14:01', '2025-02-23 11:38:07'),
(25, 58, '[26,27,32]', 'Riley & Associate Law Firm', '5 years', 'New York', 'English', 'http://www.websitedomain.com', '[{\"day\":\"saturday\",\"time\":\"09:00 - 17:00\"}]', '2024-06-06 11:14:01', '2024-06-06 11:14:01'),
(26, 59, '[26,27,32]', 'Riley & Associate Law Firm', '2 years', 'New York', 'English', 'http://www.websitedomain.com', '[{\"day\":\"saturday\",\"time\":\"09:00 - 17:00\"}]', '2024-10-10 11:14:02', '2024-10-10 11:14:02'),
(27, 63, '[26,27,32]', 'Riley & Associate Law Firm', '4 years', 'New York', 'English', 'http://www.websitedomain.com', '[{\"day\":\"saturday\",\"time\":\"09:00 - 17:00\"}]', '2024-12-28 11:14:02', '2024-12-28 11:14:02'),
(28, 64, '[26,27,32]', 'Riley & Associate Law Firm', '3 years', 'New York', 'English', 'http://www.websitedomain.com', '[{\"day\":\"saturday\",\"time\":\"09:00 - 17:00\"}]', '2024-12-25 11:14:03', '2024-12-25 11:14:03'),
(29, 65, '[26,27,32]', 'Riley & Associate Law Firm', '5 years', 'New York', 'English', 'http://www.websitedomain.com', '[{\"day\":\"saturday\",\"time\":\"09:00 - 17:00\"}]', '2024-06-21 11:14:03', '2024-06-21 11:14:03'),
(30, 69, '[26,27,32]', 'Riley & Associate Law Firm', '9 years', 'New York', 'English', 'http://www.websitedomain.com', '[{\"day\":\"saturday\",\"time\":\"09:00 - 17:00\"}]', '2025-02-15 11:14:04', '2025-02-15 11:14:04'),
(32, 75, '[26,27,32]', 'Riley & Associate Law Firm', '8 years', 'New York', 'English', 'http://www.websitedomain.com', '[{\"day\":\"saturday\",\"time\":\"09:00 - 17:00\"}]', '2024-07-02 11:14:05', '2024-07-02 11:14:05'),
(33, 76, '[26,27,32]', 'Riley & Associate Law Firm', '7 years', 'New York', 'English', 'http://www.websitedomain.com', '[{\"day\":\"saturday\",\"time\":\"09:00 - 17:00\"}]', '2024-03-02 11:14:05', '2024-03-02 11:14:05'),
(34, 77, '[26,27,32]', 'Riley & Associate Law Firm', '3 years', 'New York', 'English', 'http://www.websitedomain.com', '[{\"day\":\"saturday\",\"time\":\"09:00 - 17:00\"}]', '2024-03-15 11:14:05', '2024-03-15 11:14:05'),
(35, 78, '[26,27,32]', 'Riley & Associate Law Firm', '10 years', 'New York', 'English', 'http://www.websitedomain.com', '[{\"day\":\"saturday\",\"time\":\"09:00 - 17:00\"}]', '2024-04-09 11:14:05', '2024-04-09 11:14:05'),
(36, 79, '[26,27,32]', 'Riley & Associate Law Firm', '5 years', 'New York', 'English', 'http://www.websitedomain.com', '[{\"day\":\"saturday\",\"time\":\"09:00 - 17:00\"}]', '2024-06-02 11:14:06', '2024-06-02 11:14:06'),
(40, 87, '[26,27,32]', 'Riley & Associate Law Firm', '4 years', 'New York', 'English', 'http://www.websitedomain.com', '[{\"day\":\"saturday\",\"time\":\"09:00 - 17:00\"}]', '2024-04-04 11:14:07', '2024-04-04 11:14:07'),
(42, 96, '[26,27,32]', 'Riley & Associate Law Firm', '5 years', 'New York', 'English', 'http://www.websitedomain.com', '[{\"day\":\"saturday\",\"time\":\"09:00 - 17:00\"}]', '2024-06-29 11:14:09', '2024-06-29 11:14:09'),
(43, 99, '[26,27,32]', 'Riley & Associate Law Firm', '9 years', 'New York', 'English', 'http://www.websitedomain.com', '[{\"day\":\"saturday\",\"time\":\"09:00 - 17:00\"}]', '2024-03-02 11:14:09', '2024-03-02 11:14:09'),
(46, 144, '[27,29,31]', 'Aliquid incididunt f', 'undefined', 'Est nostrud sint r', 'English', 'https://law-pair-project.vercel.app/', '\"{\\\"day\\\":\\\"Tuesday\\\",\\\"startTime\\\":\\\"06:00:00\\\",\\\"endTime\\\":\\\"07:00:00\\\"}\"', '2025-03-13 09:28:24', '2025-03-13 09:28:24'),
(47, 162, '[27,29,31]', 'Magna aut incidunt', '1-3 Years', 'Voluptatem Voluptat', 'Spanish', 'https://law-pair-project.vercel.app/', '\"{\\\"day\\\":null,\\\"time\\\":\\\"04:00:00 - 06:00:00\\\"}\"', '2025-03-13 10:54:39', '2025-03-13 10:54:39'),
(48, 163, '[33,31,32]', 'Tenetur sit natus co', '8+ Years', 'Et molestiae qui vel', 'Spanish', 'https://law-pair-project.vercel.app/', '\"{\\\"day\\\":\\\"Thursday\\\",\\\"time\\\":\\\"03:00:00 - 03:00:00\\\"}\"', '2025-03-13 10:56:25', '2025-03-13 10:56:25'),
(49, 164, '[32,30,29]', 'Ut velit dolorem eum', '4-7 Years', 'Magni cupidatat moll', 'Spanish', 'https://law-pair-project.vercel.app/', '\"{\\\"day\\\":\\\"Wednesday\\\",\\\"time\\\":\\\"02:00:00 - 01:00:00\\\"}\"', '2025-03-13 11:13:56', '2025-03-13 11:13:56'),
(50, 165, '[27,28]', 'Rem laboriosam quia', '1-3 Years', 'Quis hic laboris cil', 'Spanish', 'https://www.google.com/', '\"{\\\"day\\\":\\\"Tuesday\\\",\\\"time\\\":\\\"02:00:00 - 05:00:00\\\"}\"', '2025-03-15 10:27:59', '2025-03-15 10:27:59'),
(51, 168, '[26,27,29]', 'Omnis rerum blanditi', '8+ Years', 'Quod mollitia est ut', 'German', 'https://law-pair-project.vercel.app/', '\"{\\\"day\\\":\\\"Tuesday\\\",\\\"time\\\":\\\"03:00:00 - 05:00:00\\\"}\"', '2025-03-16 08:26:12', '2025-03-16 08:26:12'),
(52, 169, '[26,27,29]', 'Voluptas nobis culpa', '4-7 Years', 'Tenetur quia et laud', 'Spanish', 'https://law-pair-project.vercel.app/', '\"{\\\"day\\\":\\\"Wednesday\\\",\\\"time\\\":\\\"02:00:00 - 04:00:00\\\"}\"', '2025-03-16 09:13:12', '2025-03-16 09:13:12'),
(53, 170, '[28,30]', 'Quaerat excepteur od', '4-7 Years', 'Dolore ullamco sunt', 'German', NULL, '\"{\\\"day\\\":\\\"Tuesday\\\",\\\"time\\\":\\\"01:00:00 - 06:00:00\\\"}\"', '2025-03-16 09:54:16', '2025-03-16 09:54:16'),
(54, 171, '[26,27,29]', 'Vitae est deleniti v', '8+ Years', 'Ex voluptatibus cumq', 'Spanish', 'https://law-pair-project.vercel.app/', '\"{\\\"day\\\":\\\"Wednesday\\\",\\\"time\\\":\\\"03:00:00 - 01:00:00\\\"}\"', '2025-03-17 10:09:36', '2025-03-17 10:09:36'),
(55, 172, '[1, 2, 3]', 'Riley & Associate Law Firm', '4 years', 'New York', 'English', 'http://www.websitedomain.com', '\"[\\n    {\\\"day\\\": \\\"saturday\\\", \\\"time\\\": \\\"09:00 pm - 10:00 pm\\\"},\\n    {\\\"day\\\": \\\"sunday\\\", \\\"time\\\": \\\"07:00 pm - 08:00 pm\\\"},\\n    {\\\"day\\\": \\\"monday\\\", \\\"time\\\": \\\"07:00 pm - 08:00 pm\\\"}\\n]\"', '2025-03-17 10:16:33', '2025-03-18 10:16:35'),
(56, 173, '[26]', 'Dolor error nisi ull', '4-7 Years', 'New Jersey', 'Russian', 'https://law-pair-project.vercel.app/', '\"{\\\"day\\\":\\\"Tuesday\\\",\\\"time\\\":\\\"04:00:00 - 05:00:00\\\"}\"', '2025-03-18 08:15:08', '2025-03-18 08:15:08'),
(57, 174, '[27,26]', 'Enim sequi voluptate', '4-7 Years', 'New York', 'Spanish', 'https://law-pair-project.vercel.app/', '\"{\\\"day\\\":\\\"Wednesday\\\",\\\"time\\\":\\\"04:00:00 - 05:00:00\\\"}\"', '2025-03-18 08:27:12', '2025-03-18 08:27:12'),
(58, 175, '[26,27]', 'df', '4-7 Years', 'New York', 'Spanish', NULL, '\"{\\\"day\\\":\\\"Tuesday\\\",\\\"time\\\":\\\"04:00:00 - 05:00:00\\\"}\"', '2025-03-18 08:42:27', '2025-03-18 08:42:27'),
(59, 177, '[26,27]', 'df', '4-7 Years', 'New York', 'English', 'https://law-pair-project.vercel.app/', '\"{\\\"day\\\":\\\"Tuesday\\\",\\\"time\\\":\\\"03:00:00 - 05:00:00\\\"}\"', '2025-03-18 09:13:16', '2025-03-18 09:13:16'),
(60, 182, '[1, 2, 3]', 'Riley & Associate Law Firm', '4 years', 'New York', 'English', 'http://www.websitedomain.com', '\"[\\n    {\\\"day\\\": \\\"saturday\\\", \\\"time\\\": \\\"09:00 pm - 10:00 pm\\\"},\\n    {\\\"day\\\": \\\"sunday\\\", \\\"time\\\": \\\"07:00 pm - 08:00 pm\\\"},\\n    {\\\"day\\\": \\\"monday\\\", \\\"time\\\": \\\"07:00 pm - 08:00 pm\\\"}\\n]\"', '2025-03-18 10:19:32', '2025-03-19 08:51:06'),
(61, 183, '[\"29\",\"30\"]', 'Porro vitae qui Nam', '1-3 Years', 'New York', 'english', 'https://law-pair-project.vercel.app/', '\"[object Object]\"', '2025-03-19 14:05:23', '2025-03-19 14:33:25'),
(62, 184, '[27,26]', 'Consequat Id aut si', '4-7 Years', 'New York', 'Spanish', 'https://law-pair-project.vercel.app/', '\"07:00:00 - 06:00:00\"', '2025-03-20 12:58:04', '2025-03-20 13:21:17'),
(63, 185, '[29,27,26]', 'almas-----------> edit Email :  sfsf@yopmail.com', '8+ Years', 'New York', 'Spanish', 'https://law-pair-project.vercel.app/', '\"07:00:00 - 03:00:00\"', '2025-03-20 13:30:21', '2025-03-20 13:31:30'),
(64, 186, '[29,27,26]', 'Est excepteur eos u', '4-7 Years', 'New York', 'Spanish', 'https://law-pair-project.vercel.app/', '\"null - null\"', '2025-03-20 13:41:57', '2025-03-20 13:58:14'),
(65, 187, '[26,27,31]', 'Ad dolor eiusmod vol', '8+ Years', 'New York', 'Spanish', 'https://law-pair-project.vercel.app/', '\"Fri, 21 Mar 2025 23:00:00 GMT - Fri, 21 Mar 2025 23:00:00 GMT\"', '2025-03-20 14:15:11', '2025-03-22 11:23:12'),
(66, 200, '[26,27,29]', 'Non eu nemo a commod', '4-7 Years', 'New York', 'German', NULL, '\"{\\\"day\\\":\\\"Tuesday\\\",\\\"time\\\":\\\"03:00:00 - 04:00:00\\\"}\"', '2025-03-22 11:36:06', '2025-03-22 11:36:06'),
(67, 201, '[26,27]', 'Ut excepteur harum t', '1-3 Years', 'New York', 'Spanish', 'https://law-pair-project.vercel.app/', '\"Fri, 21 Mar 2025 19:00:00 GMT - Fri, 21 Mar 2025 19:00:00 GMT\"', '2025-03-22 11:39:22', '2025-03-22 11:43:19'),
(68, 202, '[26,27]', 'Ipsa magna dignissi', '1-3 Years', 'New York', 'russian', 'https://law-pair-project.vercel.app/', '\"Fri, 21 Mar 2025 22:00:00 GMT - Fri, 21 Mar 2025 22:00:00 GMT\"', '2025-03-22 11:45:25', '2025-03-22 11:46:00'),
(69, 206, '[26]', 'Dolorem pariatur Si', '4-7 Years', 'New York', 'Spanish', NULL, '\"{\\\"day\\\":null,\\\"time\\\":\\\"null - null\\\"}\"', '2025-03-23 07:04:56', '2025-03-23 07:04:56'),
(70, 220, '[26]', 'Et officia ipsum cu', '1-3 Years', 'New York', 'Spanish', NULL, '\"{\\\"saturday\\\":\\\"2025-03-22T19:00:00.000Z\\\",\\\"sunday\\\":\\\"2025-03-22T20:00:00.000Z\\\",\\\"monday\\\":\\\"2025-03-22T21:00:00.000Z\\\",\\\"tuesday\\\":\\\"2025-03-22T22:00:00.000Z\\\",\\\"wednesday\\\":\\\"2025-03-22T23:00:00.000Z\\\",\\\"thursday\\\":\\\"2025-03-22T18:00:06.000Z\\\",\\\"friday\\\":\\\"2025-03-23T01:00:00.000Z\\\"}\"', '2025-03-23 07:32:22', '2025-03-23 07:32:22'),
(71, 237, '[31]', 'Laborum Id iusto od', '4-7 Years', 'New York', 'Spanish', 'https://law-pair-project.vercel.app/', '\"[{\\\"day\\\":{\\\"day\\\":\\\"saturday\\\",\\\"time\\\":\\\"02:00 am - 03:00 am\\\"},\\\"time\\\":\\\"\\\"},{\\\"day\\\":{\\\"day\\\":\\\"sunday\\\",\\\"time\\\":\\\"05:00 am - 10:00 am\\\"},\\\"time\\\":\\\"\\\"},{\\\"day\\\":{\\\"day\\\":\\\"monday\\\",\\\"time\\\":\\\"\\\"},\\\"time\\\":\\\"\\\"},{\\\"day\\\":{\\\"day\\\":\\\"tuesday\\\",\\\"time\\\":\\\"04:00 am - 04:04 am\\\"},\\\"time\\\":\\\"\\\"},{\\\"day\\\":{\\\"day\\\":\\\"wednesday\\\",\\\"time\\\":\\\"03:00 am - 06:00 am\\\"},\\\"time\\\":\\\"\\\"},{\\\"day\\\":{\\\"day\\\":\\\"thursday\\\",\\\"time\\\":\\\"01:00 am - 07:00 am\\\"},\\\"time\\\":\\\"\\\"},{\\\"day\\\":{\\\"day\\\":\\\"friday\\\",\\\"time\\\":\\\"04:00 am - 07:00 am\\\"},\\\"time\\\":\\\"\\\"}]\"', '2025-03-23 08:27:09', '2025-03-23 09:11:43'),
(72, 238, '[27]', 'Modi voluptate paria', '1-3 Years', 'New York', 'Spanish', 'https://law-pair-project.vercel.app/', '\"[{\\\"day\\\":\\\"saturday\\\",\\\"time\\\":\\\"01:00 am - 01:02 am\\\"},{\\\"day\\\":\\\"sunday\\\",\\\"time\\\":\\\"04:00 am - 08:00 am\\\"},{\\\"day\\\":\\\"monday\\\",\\\"time\\\":\\\"03:00 am - 03:06 am\\\"},{\\\"day\\\":\\\"tuesday\\\",\\\"time\\\":\\\"02:00 am - 02:05 am\\\"},{\\\"day\\\":\\\"wednesday\\\",\\\"time\\\":\\\"07:00 am - 07:07 am\\\"},{\\\"day\\\":\\\"thursday\\\",\\\"time\\\":\\\"06:00 am - 06:06 am\\\"},{\\\"day\\\":\\\"friday\\\",\\\"time\\\":\\\"07:00 am - 07:06 am\\\"}]\"', '2025-03-23 09:33:33', '2025-03-23 09:47:07'),
(73, 239, '[26,27]', 'Reiciendis tempor in', '1-3 Years', 'New York', 'English', NULL, '\"[{\\\"day\\\":\\\"saturday\\\",\\\"time\\\":\\\"02:00 am - 07:00 am\\\"},{\\\"day\\\":\\\"sunday\\\",\\\"time\\\":\\\"\\\"},{\\\"day\\\":\\\"monday\\\",\\\"time\\\":\\\"04:00 am - 09:00 am\\\"},{\\\"day\\\":\\\"tuesday\\\",\\\"time\\\":\\\"\\\"},{\\\"day\\\":\\\"wednesday\\\",\\\"time\\\":\\\"\\\"},{\\\"day\\\":\\\"thursday\\\",\\\"time\\\":\\\"\\\"},{\\\"day\\\":\\\"friday\\\",\\\"time\\\":\\\"\\\"}]\"', '2025-03-23 09:50:17', '2025-03-23 09:50:17'),
(74, 240, '[]', 'Id enim sequi esse q', '1-3 Years', 'New York', 'Spanish', 'https://law-pair-project.vercel.app/', '\"[{\\\"day\\\":\\\"saturday\\\",\\\"time\\\":\\\"03:00 am - 05:00 am\\\"},{\\\"day\\\":\\\"sunday\\\",\\\"time\\\":\\\"01:00 am - 01:03 am\\\"},{\\\"day\\\":\\\"monday\\\",\\\"time\\\":\\\"\\\"},{\\\"day\\\":\\\"tuesday\\\",\\\"time\\\":\\\"\\\"},{\\\"day\\\":\\\"wednesday\\\",\\\"time\\\":\\\"\\\"},{\\\"day\\\":\\\"thursday\\\",\\\"time\\\":\\\"\\\"},{\\\"day\\\":\\\"friday\\\",\\\"time\\\":\\\"\\\"}]\"', '2025-03-23 09:55:09', '2025-03-23 09:55:37'),
(75, 250, '[26]', 'Nihil alias architec', '4-7 Years', 'New York', 'Spanish', NULL, '\"[{\\\"day\\\":\\\"saturday\\\",\\\"time\\\":\\\"02:00 am - 06:00 am\\\"},{\\\"day\\\":\\\"sunday\\\",\\\"time\\\":\\\"\\\"},{\\\"day\\\":\\\"monday\\\",\\\"time\\\":\\\"02:00 am - 02:05 am\\\"},{\\\"day\\\":\\\"tuesday\\\",\\\"time\\\":\\\"\\\"},{\\\"day\\\":\\\"wednesday\\\",\\\"time\\\":\\\"\\\"},{\\\"day\\\":\\\"thursday\\\",\\\"time\\\":\\\"\\\"},{\\\"day\\\":\\\"friday\\\",\\\"time\\\":\\\"\\\"}]\"', '2025-03-23 11:34:18', '2025-03-23 11:34:18'),
(76, 268, '[26]', 'Aliqua Libero cumqu', '1-3 Years', 'New York', 'English', NULL, '\"[{\\\"day\\\":\\\"saturday\\\",\\\"time\\\":\\\"02:00 am - 04:00 am\\\"},{\\\"day\\\":\\\"sunday\\\",\\\"time\\\":\\\"03:00 am - 03:05 am\\\"},{\\\"day\\\":\\\"monday\\\",\\\"time\\\":\\\"04:00 am - 10:01 am\\\"},{\\\"day\\\":\\\"tuesday\\\",\\\"time\\\":\\\"\\\"},{\\\"day\\\":\\\"wednesday\\\",\\\"time\\\":\\\"\\\"},{\\\"day\\\":\\\"thursday\\\",\\\"time\\\":\\\"\\\"},{\\\"day\\\":\\\"friday\\\",\\\"time\\\":\\\"\\\"}]\"', '2025-03-23 14:23:39', '2025-03-23 14:23:39'),
(77, 271, '[]', 'Ad recusandae Accus', '1-3 Years', 'New York', 'Spanish', 'https://law-pair-project.vercel.app/', '\"[{\\\"day\\\":\\\"saturday\\\",\\\"time\\\":\\\"02:00 am - 06:00 am\\\"},{\\\"day\\\":\\\"sunday\\\",\\\"time\\\":\\\"\\\"},{\\\"day\\\":\\\"monday\\\",\\\"time\\\":\\\"\\\"},{\\\"day\\\":\\\"tuesday\\\",\\\"time\\\":\\\"\\\"},{\\\"day\\\":\\\"wednesday\\\",\\\"time\\\":\\\"\\\"},{\\\"day\\\":\\\"thursday\\\",\\\"time\\\":\\\"12:00 pm - 03:00 pm\\\"},{\\\"day\\\":\\\"friday\\\",\\\"time\\\":\\\"\\\"}]\"', '2025-03-23 14:34:57', '2025-03-23 14:36:44'),
(78, 273, '[]', 'Quo voluptatem Est', '1-3 Years', 'New York', 'Spanish', 'https://law-pair-project.vercel.app/', '\"[{\\\"day\\\":\\\"saturday\\\",\\\"time\\\":\\\"02:00 am - 06:00 am\\\"},{\\\"day\\\":\\\"sunday\\\",\\\"time\\\":\\\"\\\"},{\\\"day\\\":\\\"monday\\\",\\\"time\\\":\\\"\\\"},{\\\"day\\\":\\\"tuesday\\\",\\\"time\\\":\\\"\\\"},{\\\"day\\\":\\\"wednesday\\\",\\\"time\\\":\\\"02:05 am - 02:07 am\\\"},{\\\"day\\\":\\\"thursday\\\",\\\"time\\\":\\\"\\\"},{\\\"day\\\":\\\"friday\\\",\\\"time\\\":\\\"\\\"}]\"', '2025-03-23 14:44:52', '2025-03-23 14:45:52'),
(79, 276, '[]', 'Labore reiciendis ac', '4-7 Years', 'New York', 'Spanish', 'https://law-pair-project.vercel.app/', '\"[{\\\"day\\\":\\\"saturday\\\",\\\"time\\\":\\\"01:00 am - 08:00 am\\\"},{\\\"day\\\":\\\"sunday\\\",\\\"time\\\":\\\"01:00 am - 04:00 am\\\"},{\\\"day\\\":\\\"monday\\\",\\\"time\\\":\\\"02:00 am - 02:05 am\\\"},{\\\"day\\\":\\\"tuesday\\\",\\\"time\\\":\\\"\\\"},{\\\"day\\\":\\\"wednesday\\\",\\\"time\\\":\\\"\\\"},{\\\"day\\\":\\\"thursday\\\",\\\"time\\\":\\\"\\\"},{\\\"day\\\":\\\"friday\\\",\\\"time\\\":\\\"\\\"}]\"', '2025-03-24 09:07:18', '2025-03-24 09:08:35'),
(80, 278, '[26,27]', 'Eos nostrum laborios', '1-3 Years', 'New York', 'English', 'https://law-pair-project.vercel.app/', '\"[{\\\"day\\\":\\\"saturday\\\",\\\"time\\\":\\\"01:00 am - 05:00 am\\\"},{\\\"day\\\":\\\"sunday\\\",\\\"time\\\":\\\"01:00 am - 04:00 am\\\"},{\\\"day\\\":\\\"monday\\\",\\\"time\\\":\\\"\\\"},{\\\"day\\\":\\\"tuesday\\\",\\\"time\\\":\\\"\\\"},{\\\"day\\\":\\\"wednesday\\\",\\\"time\\\":\\\"\\\"},{\\\"day\\\":\\\"thursday\\\",\\\"time\\\":\\\"\\\"},{\\\"day\\\":\\\"friday\\\",\\\"time\\\":\\\"\\\"}]\"', '2025-03-24 14:14:59', '2025-03-24 14:15:48'),
(81, 279, '[26]', 'Irure numquam sapien', '4-7 Years', 'New York', 'Spanish', NULL, '\"[{\\\"day\\\":\\\"saturday\\\",\\\"time\\\":\\\"04:00 am - 08:00 am\\\"},{\\\"day\\\":\\\"sunday\\\",\\\"time\\\":\\\"\\\"},{\\\"day\\\":\\\"monday\\\",\\\"time\\\":\\\"\\\"},{\\\"day\\\":\\\"tuesday\\\",\\\"time\\\":\\\"\\\"},{\\\"day\\\":\\\"wednesday\\\",\\\"time\\\":\\\"02:00 am - 06:00 am\\\"},{\\\"day\\\":\\\"thursday\\\",\\\"time\\\":\\\"\\\"},{\\\"day\\\":\\\"friday\\\",\\\"time\\\":\\\"\\\"}]\"', '2025-03-24 14:25:56', '2025-03-24 14:25:56'),
(82, 281, '[26]', 'Ipsa consequatur I', '1-3 Years', 'New York', 'English', 'https://law-pair-project.vercel.app/', '\"[{\\\"day\\\":\\\"saturday\\\",\\\"time\\\":\\\"\\\"},{\\\"day\\\":\\\"sunday\\\",\\\"time\\\":\\\"03:00 am - 07:00 am\\\"},{\\\"day\\\":\\\"monday\\\",\\\"time\\\":\\\"02:00 am - 06:00 am\\\"},{\\\"day\\\":\\\"tuesday\\\",\\\"time\\\":\\\"\\\"},{\\\"day\\\":\\\"wednesday\\\",\\\"time\\\":\\\"\\\"},{\\\"day\\\":\\\"thursday\\\",\\\"time\\\":\\\"\\\"},{\\\"day\\\":\\\"friday\\\",\\\"time\\\":\\\"\\\"}]\"', '2025-03-24 15:30:06', '2025-03-24 15:37:55'),
(83, 282, '[28,30]', 'Tempore saepe quis', '1-3 Years', 'New York', 'Spanish', NULL, '\"[{\\\"day\\\":\\\"saturday\\\",\\\"time\\\":\\\"02:00 am - 08:00 am\\\"},{\\\"day\\\":\\\"sunday\\\",\\\"time\\\":\\\"\\\"},{\\\"day\\\":\\\"monday\\\",\\\"time\\\":\\\"\\\"},{\\\"day\\\":\\\"tuesday\\\",\\\"time\\\":\\\"\\\"},{\\\"day\\\":\\\"wednesday\\\",\\\"time\\\":\\\"\\\"},{\\\"day\\\":\\\"thursday\\\",\\\"time\\\":\\\"\\\"},{\\\"day\\\":\\\"friday\\\",\\\"time\\\":\\\"07:00 am - 07:06 am\\\"}]\"', '2025-03-25 06:09:01', '2025-03-25 06:09:01');

-- --------------------------------------------------------

--
-- Table structure for table `legal_resources`
--

CREATE TABLE `legal_resources` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(255) NOT NULL,
  `description` text NOT NULL,
  `image` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `legal_resources`
--

INSERT INTO `legal_resources` (`id`, `title`, `description`, `image`, `created_at`, `updated_at`) VALUES
(68, 'Your Legal Compass', 'Navigate complex legal matters with clarity and confidence.', 'uploads/legal_resources/ybd2AfourB94oXEUyDNMYUmLtV7AfQI8Mcs30rKz.jpg', '2025-03-23 15:38:13', '2025-03-23 15:38:13'),
(69, 'Your Legal Compass', 'Navigate complex legal matters with clarity and confidence.', 'uploads/legal_resources/sNXepeh1JShiLx8HB0kdb5APnyE7nSgrKiyirrxS.jpg', '2025-03-23 15:41:43', '2025-03-23 15:41:43'),
(70, 'Your Legal Compass', 'Navigate complex legal matters with clarity and confidence.', 'uploads/legal_resources/GWkDd31XMPMyBsW22fgGYk9mIytfGan4Xag4rviU.jpg', '2025-03-23 15:42:51', '2025-03-23 15:42:51'),
(71, 'Your Legal Compass', 'Navigate complex legal matters with clarity and confidence.', 'uploads/legal_resources/bFpqMibUJaKbUsaxmeIDFJu1HQFbf2q901RqIyBd.jpg', '2025-03-23 15:45:04', '2025-03-23 15:45:04'),
(72, 'Your Legal Compass', 'Navigate complex legal matters with clarity and confidence.', 'uploads/legal_resources/tS6cMsurzcrhV398xVagNnaZHLyVXsUq9kMDoUkX.jpg', '2025-03-23 15:45:16', '2025-03-23 15:45:16'),
(74, 'testing', 'descriptin.........', 'uploads/legal_resources/zVGArEg580ylXPAbKpyrQvZXTTZfaActO8wqL8ct.jpg', '2025-03-24 14:41:16', '2025-03-24 14:41:16'),
(75, 'tetteee', 'Lorem ipsum, or lipsum as it is sometimes known, is dummy text used in laying out print, graphic or web designs. The passage is attributed to an unknown typesetter in the 15th century who is thought to have scrambled parts of Cicero\'s De Finibus Bonorum et Malorum for use in a type specimen book. It usually begins with:\r\n\r\n“Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.”\r\n\r\nThe purpose of lorem ipsum is to create a natural looking block of text (sentence, paragraph, page, etc.) that doesn\'t distract from the layout. A practice not without controversy, laying out pages with meaningless filler text can be very useful when the focus is meant to be on design, not content.\r\n\r\nThe passage experienced a surge in popularity during the 1960s when Letraset used it on their dry-transfer sheets, and again during the 90s as desktop publishers bundled the text with their software. Today it\'s seen all around the web; on templates, websites, and stock designs. Use our generator to get your own, or read on for the authoritative history of lorem ipsum.', 'uploads/legal_resources/wKqj7oXWrSlpDlSSgkAiK03T2oU5X3tcIlaxCJK9.jpg', '2025-03-25 06:11:12', '2025-03-25 06:11:12');

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
(1, '0001_01_01_000000_create_users_table', 1),
(2, '0001_01_01_000001_create_cache_table', 1),
(3, '0001_01_01_000002_create_jobs_table', 1),
(4, '2025_01_23_164544_create_personal_access_tokens_table', 1),
(5, '2025_01_25_131349_create_lawyers_table', 1),
(6, '2025_01_26_112052_create_categories_table', 1),
(8, '2025_01_26_180229_create_legal_resources_table', 1),
(9, '2025_01_28_143603_create_favorites_table', 1),
(10, '2025_01_28_161640_create_abouts_table', 1),
(11, '2025_01_28_161702_create_disclaimers_table', 1),
(12, '2025_01_29_103407_add_update_limit_to_users_table', 1);

-- --------------------------------------------------------

--
-- Table structure for table `password_reset_tokens`
--

CREATE TABLE `password_reset_tokens` (
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
  `abilities` text DEFAULT NULL,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `expires_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `sessions`
--

CREATE TABLE `sessions` (
  `id` varchar(255) NOT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `ip_address` varchar(45) DEFAULT NULL,
  `user_agent` text DEFAULT NULL,
  `payload` longtext NOT NULL,
  `last_activity` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `first_name` varchar(255) NOT NULL,
  `last_name` varchar(255) NOT NULL,
  `phone` varchar(255) DEFAULT NULL,
  `email` varchar(255) NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `avatar` varchar(255) DEFAULT NULL,
  `password` varchar(255) NOT NULL,
  `role` enum('super_admin','admin','user','lawyer') NOT NULL DEFAULT 'user',
  `address` varchar(255) DEFAULT NULL,
  `otp` varchar(255) DEFAULT NULL,
  `otp_expire_at` timestamp NULL DEFAULT NULL,
  `remember_token` varchar(100) DEFAULT NULL,
  `google_id` varchar(255) DEFAULT NULL,
  `update_count` int(11) NOT NULL DEFAULT 0,
  `last_updated_at` datetime DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `first_name`, `last_name`, `phone`, `email`, `email_verified_at`, `avatar`, `password`, `role`, `address`, `otp`, `otp_expire_at`, `remember_token`, `google_id`, `update_count`, `last_updated_at`, `created_at`, `updated_at`) VALUES
(1, 'Carla', 'undefined', '66', 'admin@gmail.com', '2025-02-18 11:13:50', 'uploads/avatars/4uS5NQWdLaIC0k1kb0lnveYJaC1ckZqJWWU3oFBi.png', '$2y$12$fOjUQtj6ED2Zp7jsc5ct7uJ8qN1QbLBIn7DLTCW0XomJ1LWNb7FWS', 'admin', 'Cumque cupiditate ea', NULL, NULL, NULL, NULL, 0, NULL, '2025-02-18 11:13:50', '2025-02-20 08:03:21'),
(2, 'Almas', 'undefined', '122555', 'almashossain7384@gmail.com', '2025-02-24 04:57:19', 'uploads/avatars/x85OCa25ydT1lDJs3YJ8Tv7b6IOllu5abySAuZmk.jpg', '$2y$12$noUHSSqwlVGlZOv58n4xXuzrMu7gRyQGqskZy9ehgUc9bja9x3dCu', 'admin', 'Tenetur exercitation', NULL, NULL, NULL, NULL, 0, NULL, '2024-06-24 11:13:50', '2025-03-24 14:37:24'),
(6, 'Alverta', 'Rowe', NULL, 'brandy91@example.com', '2025-02-18 11:13:51', 'img/8.img.jpg', '$2y$12$iBzK5/R3MSBLvy/GWv0qa.PjYsyB/dm372E69ZtKcNaP0dIRUPkxa', 'lawyer', NULL, NULL, NULL, NULL, NULL, 0, NULL, '2024-03-05 11:13:51', '2024-03-05 11:13:51'),
(7, 'Cordie', 'Kemmer', '330.306.8090', 'acarter@example.org', '2025-02-18 11:13:51', 'img/1.img.jpg', '$2y$12$GimY9b6nk9X9JWwaPiOCHevmIoZbxLfvV6nbmneHZW/OLQL8TT0TK', 'user', NULL, NULL, NULL, NULL, NULL, 0, NULL, '2024-07-26 11:13:51', '2024-07-26 11:13:51'),
(8, 'Paolo', 'Hessel', NULL, 'jerdman@example.com', '2025-02-18 11:13:52', 'img/1.img.jpg', '$2y$12$AWVy0qeM.fDtgXcwu5SWc.aAl6CDPQm05oTBL8zUck3OudA8F5jDC', 'user', NULL, NULL, NULL, NULL, NULL, 0, NULL, '2024-06-04 11:13:52', '2024-06-04 11:13:52'),
(9, 'Tyreek', 'Dooley', '(762) 831-0203', 'xpowlowski@example.net', '2025-02-18 11:13:52', 'img/4.img.jpg', '$2y$12$JNaEotug35fZHM/tQ9C9fOtDSElJSGv7wllqZT/Yp.Cx.l.fokHxW', 'user', NULL, NULL, NULL, NULL, NULL, 0, NULL, '2024-08-05 11:13:52', '2024-08-05 11:13:52'),
(10, 'Anderson', 'Mante', '(405) 914-3207', 'clarson@example.org', '2025-02-18 11:13:52', 'img/8.img.jpg', '$2y$12$CImeVu.s/mkVGIWY1ISNy.rQELkYiPCcaUyAUKEKxxryYVOKuhJQy', 'lawyer', NULL, NULL, NULL, NULL, NULL, 0, NULL, '2024-08-02 11:13:52', '2024-08-02 11:13:52'),
(11, 'Baylee', 'Towne', NULL, 'runolfsdottir.fabiola@example.net', '2025-02-18 11:13:52', 'img/3.img.jpg', '$2y$12$5UoJxyGtbL3xaUgtO8f/Eef0rD4BOb5lLdfwG1NNp3rGKh6Hg.bPe', 'lawyer', NULL, NULL, NULL, NULL, NULL, 0, NULL, '2024-02-27 11:13:52', '2024-02-27 11:13:52'),
(12, 'Lonie', 'O\'Connell', NULL, 'beatty.roslyn@example.net', '2025-02-18 11:13:52', 'img/1.img.jpg', '$2y$12$wLDN6NLEOx1hOti1shIa8urWdE4BGLW50FpZZquuOHt/Ixc3yZXjy', 'user', NULL, NULL, NULL, NULL, NULL, 0, NULL, '2025-01-07 11:13:52', '2025-01-07 11:13:52'),
(13, 'Toby', 'Prohaska', NULL, 'eschiller@example.com', '2025-02-18 11:13:53', 'img/5.img.jpg', '$2y$12$GY5tXqEbfy5RXFzuQhNUeuSYPKlgvwtLrWak6g3gN1Vm84Aep87Vi', 'lawyer', NULL, NULL, NULL, NULL, NULL, 0, NULL, '2025-02-12 11:13:53', '2025-02-12 11:13:53'),
(14, 'Kris', 'Stamm', NULL, 'oswaldo.maggio@example.com', '2025-02-18 11:13:53', 'img/5.img.jpg', '$2y$12$dGhl0cjO.0jecqvkzFYuJefBDQAq.lmzuyLC/e0VuIsJ31/f5uswy', 'lawyer', NULL, NULL, NULL, NULL, NULL, 0, NULL, '2024-04-13 11:13:53', '2024-04-13 11:13:53'),
(15, 'Brandy', 'Block', '520.830.2938', 'upton.trinity@example.org', '2025-02-18 11:13:53', 'img/8.img.jpg', '$2y$12$TNuqZtmYplUvgitkDy3fgO19op2fblm7Tlhg68/0OvfTaH3D3OVxm', 'user', NULL, NULL, NULL, NULL, NULL, 0, NULL, '2024-10-21 11:13:53', '2024-10-21 11:13:53'),
(16, 'Ollie', 'Bahringer', '(229) 483-9642', 'jenkins.burley@example.net', '2025-02-18 11:13:53', 'img/8.img.jpg', '$2y$12$.aTKSpfZK2MsjBY9lo.fpe7BUd.Krh0YJ1fKYdvk0Jxko3gDGZ/3i', 'user', NULL, NULL, NULL, NULL, NULL, 0, NULL, '2024-05-28 11:13:53', '2024-05-28 11:13:53'),
(17, 'Barry', 'Bradtke', '386-282-4485', 'levi.harvey@example.org', '2025-02-18 11:13:53', 'img/8.img.jpg', '$2y$12$i6rtoYgXjvnsScDgvXjCYuLb5XS6HE.jCFHDNDVsDGH9/630nheKm', 'lawyer', NULL, NULL, NULL, NULL, NULL, 0, NULL, '2024-08-09 11:13:53', '2024-08-09 11:13:53'),
(18, 'Jessica', 'Jenkins', '760-427-8478', 'dalton.moen@example.net', '2025-02-18 11:13:54', 'img/6.img.jpg', '$2y$12$m9z4NPIsEYhED1L.B2GpaOIrN0J1nWwI8wfhNpFw1qTMx0moL5mci', 'user', NULL, NULL, NULL, NULL, NULL, 0, NULL, '2024-07-30 11:13:54', '2024-07-30 11:13:54'),
(19, 'Derek', 'Graham', NULL, 'regan26@example.org', '2025-02-18 11:13:54', 'img/3.img.jpg', '$2y$12$Rg.iQwHnr67k08K8qdYsU.lJb8FgH0yMeY5JAARU8r9b9cKrXUoYS', 'user', NULL, NULL, NULL, NULL, NULL, 0, NULL, '2025-02-15 11:13:54', '2025-02-15 11:13:54'),
(20, 'Rollin', 'Wiza', '980-295-2137', 'jpacocha@example.org', '2025-02-18 11:13:54', 'img/9.img.jpg', '$2y$12$wcq1uDtzuXEHbFfxanS7N.sSxtA6BJ9Vs1ksK1GyXPmNS5Ktu9Eju', 'lawyer', NULL, NULL, NULL, NULL, NULL, 0, NULL, '2024-06-12 11:13:54', '2024-06-12 11:13:54'),
(21, 'Brett', 'Durgan', NULL, 'wconn@example.org', '2025-02-18 11:13:54', 'img/9.img.jpg', '$2y$12$UmFxVe40Pz0/NFBck16SG.I9fSq9y3Lt2ve/rCzMReCD11joC4DXG', 'user', NULL, NULL, NULL, NULL, NULL, 0, NULL, '2024-06-21 11:13:54', '2024-06-21 11:13:54'),
(22, 'Rhett', 'Roberts', '463-319-9641', 'cronin.xavier@example.net', '2025-02-18 11:13:54', 'img/5.img.jpg', '$2y$12$DFZMVUdII4AEW8v2P/RM5eSbQUX2VWphH0C4o50TmJ51.7VxLVX7q', 'user', NULL, NULL, NULL, NULL, NULL, 0, NULL, '2024-07-20 11:13:54', '2024-07-20 11:13:54'),
(23, 'Alexandrine', 'Collins', '940-942-3253', 'garrison06@example.org', '2025-02-18 11:13:54', 'img/8.img.jpg', '$2y$12$WEjM/xVIeUbVQrPMOdp33upr0nwsom20cBXUbQihKyHSAgS3Y1TmS', 'lawyer', NULL, NULL, NULL, NULL, NULL, 0, NULL, '2024-07-06 11:13:54', '2024-07-06 11:13:54'),
(24, 'Devin', 'Kiehn', '1-818-328-3413', 'rafael35@example.org', '2025-02-18 11:13:55', 'img/6.img.jpg', '$2y$12$IW4JB0x3jCetWkRSm9SF2eiEEBo3nTvm5usGf6FTp33.Sr/9T7vPe', 'lawyer', NULL, NULL, NULL, NULL, NULL, 0, NULL, '2024-06-18 11:13:55', '2024-06-18 11:13:55'),
(25, 'Camila', 'Runolfsson', NULL, 'rowe.eunice@example.org', '2025-02-18 11:13:55', 'img/4.img.jpg', '$2y$12$1Js32Si9Su5/eHg6ip39feZBwv/ChQQUTbeZhGEVo02gd8W4glMGi', 'lawyer', NULL, NULL, NULL, NULL, NULL, 0, NULL, '2024-06-21 11:13:55', '2024-06-21 11:13:55'),
(26, 'Selmer', 'Torp', NULL, 'dolly.feest@example.com', '2025-02-18 11:13:55', 'img/7.img.jpg', '$2y$12$0AlJo82ZZmrGfqVdVZNBKeyBJqX2QrZ4R9iLZl4s5IA6xKTCygKSK', 'user', NULL, NULL, NULL, NULL, NULL, 0, NULL, '2025-02-09 11:13:55', '2025-02-09 11:13:55'),
(27, 'Alayna', 'Block', NULL, 'turcotte.daniela@example.com', '2025-02-18 11:13:55', 'img/5.img.jpg', '$2y$12$7A3/vZjpOHNiFcXJYXIw6ORDCmQxXc0xXUBlwMo82e8rbJlopJFq2', 'user', NULL, NULL, NULL, NULL, NULL, 0, NULL, '2024-04-27 11:13:55', '2024-04-27 11:13:55'),
(28, 'Zane', 'Purdy', NULL, 'stanton.roslyn@example.net', '2025-02-18 11:13:55', 'img/1.img.jpg', '$2y$12$HdsQ7lo2qNIZbf8GmF7ELeQwqrISqKV37l5gCaGto3SPhQcXwnAeO', 'lawyer', NULL, NULL, NULL, NULL, NULL, 0, NULL, '2024-08-06 11:13:55', '2024-08-06 11:13:55'),
(29, 'Anastacio', 'Pollich', NULL, 'yasmine.rosenbaum@example.com', '2025-02-18 11:13:56', 'img/4.img.jpg', '$2y$12$PnXChVMgmteq6a7T1nH7.ex6m6zuThBdxZ3GnQZOYpFHrtylhwnt6', 'lawyer', NULL, NULL, NULL, NULL, NULL, 0, NULL, '2024-07-13 11:13:56', '2024-07-13 11:13:56'),
(30, 'Katlynn', 'Waelchi', NULL, 'trantow.elizabeth@example.org', '2025-02-18 11:13:56', 'img/7.img.jpg', '$2y$12$FM8Dr/a3Oqm36C3x4ixTdu3YMiyzzwlKXLstyNOhGVZiOE/lKkpme', 'user', NULL, NULL, NULL, NULL, NULL, 0, NULL, '2024-08-16 11:13:56', '2024-08-16 11:13:56'),
(31, 'Jules', 'Haley', NULL, 'joesph38@example.com', '2025-02-18 11:13:56', 'img/5.img.jpg', '$2y$12$5E0v.I/nHhamw1PzucldzeBGzNtazq9sgcIBr5HZcr./s5YBVEkwG', 'user', NULL, NULL, NULL, NULL, NULL, 0, NULL, '2025-02-01 11:13:56', '2025-02-01 11:13:56'),
(32, 'Vicente', 'Stehr', NULL, 'anibal.crooks@example.com', '2025-02-18 11:13:56', 'img/5.img.jpg', '$2y$12$2c36GSPqVfkygYgcH.KP6.4aJrTnZ0n.7NYRX84XX1yYiXcupD6i2', 'user', NULL, NULL, NULL, NULL, NULL, 0, NULL, '2024-08-25 11:13:56', '2024-08-25 11:13:56'),
(33, 'Domenic', 'Aufderhar', NULL, 'wcummerata@example.net', '2025-02-18 11:13:56', 'img/1.img.jpg', '$2y$12$UZeyFyw3admIlhCi4Ef92uGhCznv6JcBVT2rDKPT9iuIcv.8MXlaa', 'user', NULL, NULL, NULL, NULL, NULL, 0, NULL, '2024-02-26 11:13:56', '2024-02-26 11:13:56'),
(34, 'Karlee', 'Lindgren', '(512) 974-0800', 'qprice@example.net', '2025-02-18 11:13:57', 'img/5.img.jpg', '$2y$12$ipSLWoSQKcNaMt8BhPjrve1plJR8adVN10CyMgjUPxrjkXV2ciYty', 'user', NULL, NULL, NULL, NULL, NULL, 0, NULL, '2025-01-24 11:13:57', '2025-01-24 11:13:57'),
(35, 'Horace', 'Beer', NULL, 'wolf.dana@example.com', '2025-02-18 11:13:57', 'img/1.img.jpg', '$2y$12$Hy8g1bYf1dMR.uiC.y5F4e2WkwNPAS1DZngxHuXFyqxV4JZywvvsK', 'user', NULL, NULL, NULL, NULL, NULL, 0, NULL, '2024-07-14 11:13:57', '2024-07-14 11:13:57'),
(36, 'Mathilde', 'Beer', NULL, 'ron.kuhlman@example.com', '2025-02-18 11:13:57', 'img/4.img.jpg', '$2y$12$q8m9ALg5a.FIIsbvuO93Y./qJ2CpfRTEB1x5C3sP3dik5tWk2zelO', 'user', NULL, NULL, NULL, NULL, NULL, 0, NULL, '2024-10-29 11:13:57', '2024-10-29 11:13:57'),
(37, 'Pascale', 'Herman', NULL, 'jefferey94@example.com', '2025-02-18 11:13:57', 'img/9.img.jpg', '$2y$12$zMsopxjyMW2XUiauqlXhCO7AL92K2095/20Ay8rUdmr/DXebDPRfa', 'user', NULL, NULL, NULL, NULL, NULL, 0, NULL, '2024-04-23 11:13:57', '2024-04-23 11:13:57'),
(38, 'Rosalyn', 'Green', '(678) 521-5504', 'bryana65@example.org', '2025-02-18 11:13:57', 'img/8.img.jpg', '$2y$12$sTn1SkIFC/JR5oUy9zSpl.sXs5c7Xd6H/06i36jtyC13fCEhI2qdK', 'lawyer', NULL, NULL, NULL, NULL, NULL, 0, NULL, '2025-01-19 11:13:57', '2025-01-19 11:13:57'),
(39, 'Chance', 'Jast', '364.886.9071', 'gaylord.santino@example.org', '2025-02-18 11:13:58', 'img/4.img.jpg', '$2y$12$c0jxsTBBuFYcNOX2tqd8ZupIxxQLaFusqwLJOs60ER9XGrX7Tg/wu', 'lawyer', NULL, NULL, NULL, NULL, NULL, 0, NULL, '2024-02-19 11:13:58', '2024-02-19 11:13:58'),
(40, 'Sterling', 'Walker', '(364) 436-7131', 'ndamore@example.com', '2025-02-18 11:13:58', 'img/8.img.jpg', '$2y$12$.SnYZALGqt7GgAKL/4U5/.c2WDiYXa3He/b2bh/.2ock.rNeyPt12', 'lawyer', NULL, NULL, NULL, NULL, NULL, 0, NULL, '2024-12-29 11:13:58', '2024-12-29 11:13:58'),
(41, 'Lee', 'Fisher', '805.421.8872', 'heller.haleigh@example.com', '2025-02-18 11:13:58', 'img/5.img.jpg', '$2y$12$rrhZWbXREegHadeJqtiFE.82Rn9D8ZMTTNn7Pr/LSfo3a24yxZjlK', 'user', NULL, NULL, NULL, NULL, NULL, 0, NULL, '2025-01-24 11:13:58', '2025-01-24 11:13:58'),
(42, 'Elisha', 'Hettinger', '(480) 455-3991', 'boehm.adan@example.net', '2025-02-18 11:13:58', 'img/2.img.jpg', '$2y$12$p6nyyjxLpAcl/3BffyIudeIlEcy4C9ZUSDRrznwRzo9WaF2OqGFJ6', 'lawyer', NULL, NULL, NULL, NULL, NULL, 0, NULL, '2024-11-14 11:13:58', '2024-11-14 11:13:58'),
(43, 'Abdul', 'Rempel', '480-792-6642', 'jnolan@example.net', '2025-02-18 11:13:58', 'img/5.img.jpg', '$2y$12$pIbyuwIpWEwcxIQ9.E7RxOAv4TiKi6I3L3jjqDSsT4tCAfz00JZqi', 'user', NULL, NULL, NULL, NULL, NULL, 0, NULL, '2024-04-25 11:13:58', '2024-04-25 11:13:58'),
(44, 'Eladio', 'Reynolds', NULL, 'hazel.marvin@example.org', '2025-02-18 11:13:58', 'img/7.img.jpg', '$2y$12$lI1uI8WD4MOJ1DDYkD9qk.tC8p6nXWA6ecGgQ6opBKBFWT5bEzgx6', 'lawyer', NULL, NULL, NULL, NULL, NULL, 0, NULL, '2024-06-16 11:13:58', '2024-06-16 11:13:58'),
(45, 'Walton', 'Wiegand', '234-598-3653', 'jedediah.deckow@example.net', '2025-02-18 11:13:59', 'img/8.img.jpg', '$2y$12$1QSqKHBsnJ7IVPRLRRh7AO3do9FuZsoJRx/6wDWKMSyhjhjJlDpQ2', 'lawyer', NULL, NULL, NULL, NULL, NULL, 0, NULL, '2024-10-14 11:13:59', '2024-10-14 11:13:59'),
(46, 'Haleigh', 'Brown', '+1.534.275.7898', 'yost.emelie@example.net', '2025-02-18 11:13:59', 'img/9.img.jpg', '$2y$12$6NYLz2h1zAeUyGLwiYOZhODXC.D1UKjwDEf/h2MNfpRXy8IjFkRCy', 'lawyer', NULL, NULL, NULL, NULL, NULL, 0, NULL, '2024-08-13 11:13:59', '2024-08-13 11:13:59'),
(47, 'Jaquelin', 'McGlynn', NULL, 'dreichel@example.com', '2025-02-18 11:13:59', 'img/5.img.jpg', '$2y$12$oiUcvJudTWhXgVLRwL.jZeF/sqFDgIgFVcgqCkEa80fS9FKo9T2B.', 'user', NULL, NULL, NULL, NULL, NULL, 0, NULL, '2024-10-03 11:13:59', '2024-10-03 11:13:59'),
(48, 'Glenna', 'McLaughlin', NULL, 'lroberts@example.org', '2025-02-18 11:13:59', 'img/2.img.jpg', '$2y$12$NHx/oOcoDCeBiADDD2f4tu7zg6V2bPaRlJ8jk8pHVGKsmJTOPM/h.', 'lawyer', NULL, NULL, NULL, NULL, NULL, 0, NULL, '2025-01-09 11:13:59', '2025-01-09 11:13:59'),
(49, 'Randall', 'Denesik', NULL, 'dickens.lavinia@example.org', '2025-02-18 11:13:59', 'img/7.img.jpg', '$2y$12$dpuaynpZn8fytcGFB55DGOpS3IJXFRCoZQ4r0d/bbaMgiemGHM6cW', 'lawyer', NULL, NULL, NULL, NULL, NULL, 0, NULL, '2024-06-20 11:13:59', '2024-06-20 11:13:59'),
(50, 'Eric', 'Quigley', NULL, 'ofarrell@example.net', '2025-02-18 11:14:00', 'img/1.img.jpg', '$2y$12$.RJeAoaxnd3qoqQYBlZjauki0JNsAGOBcVWP7jf6LObZcXkQ.krwG', 'user', NULL, NULL, NULL, NULL, NULL, 0, NULL, '2024-03-04 11:14:00', '2024-03-04 11:14:00'),
(51, 'Ben', 'Labadie', NULL, 'chuel@example.com', '2025-02-18 11:14:00', 'img/7.img.jpg', '$2y$12$P240eIz1A5M/HBHpowiAJ.NGUzuBxdzaMp.WdCDGX.RouiEiGHy2y', 'lawyer', NULL, NULL, NULL, NULL, NULL, 0, NULL, '2024-09-23 11:14:00', '2024-09-23 11:14:00'),
(52, 'Ari', 'Breitenberg', NULL, 'iva02@example.net', '2025-02-18 11:14:00', 'img/6.img.jpg', '$2y$12$oiAy9ibtn7zqf2LXIDZz7Om0oq.I3hrd8V0Zv2eo558fLMxD.zHEm', 'user', NULL, NULL, NULL, NULL, NULL, 0, NULL, '2024-06-08 11:14:00', '2024-06-08 11:14:00'),
(53, 'Felix', 'Roob', '1-440-330-5104', 'moses.leuschke@example.com', '2025-02-18 11:14:00', 'img/9.img.jpg', '$2y$12$FOj37lqxCF5RLFc5UG5yS.ioj0PQTP0pqdqfGwbaZaJXFfR9cdxN.', 'user', NULL, NULL, NULL, NULL, NULL, 0, NULL, '2025-01-23 11:14:00', '2025-01-23 11:14:00'),
(54, 'Issac', 'Kertzmann', NULL, 'panderson@example.org', '2025-02-18 11:14:00', 'img/6.img.jpg', '$2y$12$.PWMNaewmgKMpd9GLJDRceiUdp9hLYIuR4/FbtiQH/lAPhGBUd69S', 'user', NULL, NULL, NULL, NULL, NULL, 0, NULL, '2024-12-21 11:14:00', '2024-12-21 11:14:00'),
(55, 'Damian', 'White', '641-360-1451', 'alexandra.corwin@example.net', '2025-02-18 11:14:01', 'img/7.img.jpg', '$2y$12$rgF1bRGBXBqaEibqbPX7zu6zpIrdyEjESnZU1Zo6hQGEbuHk0lJsG', 'lawyer', NULL, NULL, NULL, NULL, NULL, 0, NULL, '2024-06-05 11:14:01', '2024-06-05 11:14:01'),
(56, 'Foster', 'Wiegand', '+19706879788', 'klein.maya@example.com', '2025-02-18 11:14:01', 'img/9.img.jpg', '$2y$12$IkR/Y2DL1dzXqwZojvO2/O6ZWDWkXCkcs/r999br/dIs27LCq6n0G', 'user', NULL, NULL, NULL, NULL, NULL, 0, NULL, '2024-09-04 11:14:01', '2024-09-04 11:14:01'),
(57, 'Harrison', 'Wisoky', '01701029784', 'simone.gorczany@example.org', '2025-02-18 11:14:01', 'img/2.img.jpg', '$2y$12$Jm.lXmv5SESWn6bJDRRF9uCRT3Msso0t282Jo64IQCEZTZLkOeuTq', 'lawyer', 'abcd, USA -1212', NULL, NULL, NULL, NULL, 2, '2025-02-23 17:38:07', '2024-06-04 11:14:01', '2025-02-23 11:38:07'),
(58, 'Chanelle', 'Heaney', '+1.586.451.8323', 'rkilback@example.org', '2025-02-18 11:14:01', 'img/6.img.jpg', '$2y$12$xInXczA8VsxR2RAzSAwbY.hxQ3/7aaf6YwR8GTRKCDI9mKVkVjKB.', 'lawyer', NULL, NULL, NULL, NULL, NULL, 0, NULL, '2024-06-06 11:14:01', '2024-06-06 11:14:01'),
(59, 'Idella', 'Upton', '1-972-954-3936', 'carolyne39@example.com', '2025-02-18 11:14:02', 'img/9.img.jpg', '$2y$12$WNsxSKDboxqpxR1KxKV7dOyiIu21TuBRHgCriGpgPpNSwAHnEVqNK', 'lawyer', NULL, NULL, NULL, NULL, NULL, 0, NULL, '2024-10-10 11:14:02', '2024-10-10 11:14:02'),
(60, 'Gerry', 'Littel', NULL, 'rosalee33@example.net', '2025-02-18 11:14:02', 'img/6.img.jpg', '$2y$12$ID9C8kujEIZTKlbfXnl/3OZXLqUOp3sjYSm3pNzfmAIlxKqlMnkcy', 'user', NULL, NULL, NULL, NULL, NULL, 0, NULL, '2024-09-28 11:14:02', '2024-09-28 11:14:02'),
(61, 'Dereck', 'Mitchell', NULL, 'lharber@example.com', '2025-02-18 11:14:02', 'img/4.img.jpg', '$2y$12$rrm8pZ3VVqjxOFk7d3lwU.1JU64U8.h2vR/bNARgmkNjJpndrt9D6', 'user', NULL, NULL, NULL, NULL, NULL, 0, NULL, '2024-03-08 11:14:02', '2024-03-08 11:14:02'),
(62, 'Patrick', 'Zemlak', NULL, 'gaylord.hannah@example.org', '2025-02-18 11:14:02', 'img/4.img.jpg', '$2y$12$GH/Ofh3KFSmH2yXSQLPU9.YmSKETmIpFPBjVLfpQF3n0Cs8pOKqfK', 'user', NULL, NULL, NULL, NULL, NULL, 0, NULL, '2024-10-30 11:14:02', '2024-10-30 11:14:02'),
(63, 'Clarissa', 'Smith', NULL, 'ffeil@example.org', '2025-02-18 11:14:02', 'img/2.img.jpg', '$2y$12$CJMugI/aOGWE.QNTNE8ozen4cNpOj0xdOEpFa21MA5pWcFCoWjnFi', 'lawyer', NULL, NULL, NULL, NULL, NULL, 0, NULL, '2024-12-28 11:14:02', '2024-12-28 11:14:02'),
(64, 'Ruth', 'Lind', NULL, 'amalia.bradtke@example.net', '2025-02-18 11:14:03', 'img/8.img.jpg', '$2y$12$qsnWk4rIUDvUv.Dz0/.NuOBkkEJB3hNcADl6UvpS6qUugzd8aF4TS', 'lawyer', NULL, NULL, NULL, NULL, NULL, 0, NULL, '2024-12-25 11:14:03', '2024-12-25 11:14:03'),
(65, 'Javonte', 'Oberbrunner', '+1-225-738-4098', 'uhane@example.org', '2025-02-18 11:14:03', 'img/5.img.jpg', '$2y$12$V7aPB9GyginI7oIW.0XKs.n7fyoiwufQcEqbJERvD2bjx6XsKM81a', 'lawyer', NULL, NULL, NULL, NULL, NULL, 0, NULL, '2024-06-21 11:14:03', '2024-06-21 11:14:03'),
(66, 'Imogene', 'Boehm', NULL, 'schimmel.lauretta@example.net', '2025-02-18 11:14:03', 'img/7.img.jpg', '$2y$12$wp05dex3PuSLTRIa88RM9uGsqKJ2TFEv6ZVFqhIIjVwDxNQ8dhEwa', 'user', NULL, NULL, NULL, NULL, NULL, 0, NULL, '2024-12-21 11:14:03', '2024-12-21 11:14:03'),
(67, 'Raegan', 'Altenwerth', NULL, 'murazik.isabel@example.org', '2025-02-18 11:14:03', 'img/8.img.jpg', '$2y$12$0ZWXYjEFNsvzL4iyzIZj8OkRwxBgnj9RLWBRxGYfbmA1YDRn4QCiS', 'user', NULL, NULL, NULL, NULL, NULL, 0, NULL, '2024-10-30 11:14:03', '2024-10-30 11:14:03'),
(68, 'Adrien', 'Parisian', NULL, 'mercedes19@example.net', '2025-02-18 11:14:03', 'img/4.img.jpg', '$2y$12$NJM/C/zBik9gys49CDTpQ.D6F9U29bQtYDaX/e4XA40Zz6PKrRaZ2', 'user', NULL, NULL, NULL, NULL, NULL, 0, NULL, '2025-02-03 11:14:03', '2025-02-03 11:14:03'),
(69, 'Javonte', 'Schowalter', '+1-571-424-5252', 'lhansen@example.com', '2025-02-18 11:14:04', 'img/4.img.jpg', '$2y$12$ZdFTEoNKWwUJk3zsi0V9zeNH6KEkQsXlqwDYCZWKl.XXrPUPoCDom', 'lawyer', NULL, NULL, NULL, NULL, NULL, 0, NULL, '2025-02-15 11:14:04', '2025-02-15 11:14:04'),
(70, 'Leonard', 'Dickinson', NULL, 'kirlin.tiffany@example.com', '2025-02-18 11:14:04', 'img/9.img.jpg', '$2y$12$zV/IYC4RQT2hHP048LwGKuDIKs/nYocKM5WbH91jpmc9gDXH8TYda', 'user', NULL, NULL, NULL, NULL, NULL, 0, NULL, '2024-12-26 11:14:04', '2024-12-26 11:14:04'),
(71, 'Jacklyn', 'Toy', NULL, 'pmarks@example.com', '2025-02-18 11:14:04', 'img/7.img.jpg', '$2y$12$rp1hrf/6XY4v7vpQsweGNubMo2rBkhCkhyFaw5LQa/nZh0ek5YWEe', 'user', NULL, NULL, NULL, NULL, NULL, 0, NULL, '2024-06-04 11:14:04', '2024-06-04 11:14:04'),
(72, 'Nathan', 'Schumm', NULL, 'yoberbrunner@example.org', '2025-02-18 11:14:04', 'img/9.img.jpg', '$2y$12$vRxicC95WisvuDmBa/jkjeVHcUCtxbywrVZ2qCTaiq5yukb2h8s5G', 'user', NULL, NULL, NULL, NULL, NULL, 0, NULL, '2024-07-01 11:14:04', '2024-07-01 11:14:04'),
(73, 'Rosemarie', 'Hegmann', NULL, 'giovanny49@example.org', '2025-02-18 11:14:04', 'img/5.img.jpg', '$2y$12$u0ZdzDZq1IAUtyPfJZytfewKcJz5VkV9jcpMd/7dIxfDPELnnQabG', 'user', NULL, NULL, NULL, NULL, NULL, 0, NULL, '2024-07-06 11:14:04', '2024-07-06 11:14:04'),
(75, 'Mayra', 'Gulgowski', '(334) 656-5382', 'verdie12@example.org', '2025-02-18 11:14:05', 'img/1.img.jpg', '$2y$12$wwd3ak6lSdXw/6QxJeHVr.qMCqTfQJgtY515/VQcNft/kFyLtNOii', 'lawyer', NULL, NULL, NULL, NULL, NULL, 0, NULL, '2024-07-02 11:14:05', '2024-07-02 11:14:05'),
(76, 'Lupe', 'Jerde', NULL, 'beer.roosevelt@example.org', '2025-02-18 11:14:05', 'img/2.img.jpg', '$2y$12$iNjt7cUw1ayvWnr8W8EB5.4MDlosdt1Tlx4NWqidhp8WYkEakGwKW', 'lawyer', NULL, NULL, NULL, NULL, NULL, 0, NULL, '2024-03-02 11:14:05', '2024-03-02 11:14:05'),
(77, 'Jerel', 'Sanford', '1-979-331-7095', 'kub.romaine@example.org', '2025-02-18 11:14:05', 'img/6.img.jpg', '$2y$12$yi2IR4E.c6BNlkGdxqmj8udS6TA6ji3HlPxftsof1.TGc6W29Cz.a', 'lawyer', NULL, NULL, NULL, NULL, NULL, 0, NULL, '2024-03-15 11:14:05', '2024-03-15 11:14:05'),
(78, 'Vicenta', 'Flatley', NULL, 'frieda.mcdermott@example.net', '2025-02-18 11:14:05', 'img/7.img.jpg', '$2y$12$yO1XtawZ0nvb6hwq8fwAy.LNCW9Zv9rO/o1o1kWlUh4w3BmxAgANS', 'lawyer', NULL, NULL, NULL, NULL, NULL, 0, NULL, '2024-04-09 11:14:05', '2024-04-09 11:14:05'),
(79, 'Jan', 'Franecki', '+1 (650) 340-7185', 'lynch.russell@example.org', '2025-02-18 11:14:06', 'img/7.img.jpg', '$2y$12$KEhAk5Dv4anBHP4avJRY8.AFvtHKKE/Hnn..R65rp7gA2N8jEeqxW', 'lawyer', NULL, NULL, NULL, NULL, NULL, 0, NULL, '2024-06-02 11:14:06', '2024-06-02 11:14:06'),
(81, 'Alexis', 'Sauer', NULL, 'xberge@example.net', '2025-02-18 11:14:06', 'img/9.img.jpg', '$2y$12$poZokjC2UOtQ9zu3.Bq3w.b8oLeHj5oyd.CzoBCL2DnHmh2S7ALBy', 'user', NULL, NULL, NULL, NULL, NULL, 0, NULL, '2024-07-20 11:14:06', '2024-07-20 11:14:06'),
(87, 'Albina', 'Stracke', NULL, 'jast.arjun@example.net', '2025-02-18 11:14:07', 'img/8.img.jpg', '$2y$12$tS2o6pXmUQXnYNX6PX/xu.AIBgA2pJtwGZ0jXoe209OZT3o3E5KXG', 'lawyer', NULL, NULL, NULL, NULL, NULL, 0, NULL, '2024-04-04 11:14:07', '2024-04-04 11:14:07'),
(90, 'Evelyn', 'Rogahn', '585.858.4130', 'christophe.veum@example.com', '2025-02-18 11:14:08', 'img/2.img.jpg', '$2y$12$SNRD17JwjgNoW09.yGTGxeCgk2tRuqnHPMePLYSiNcT1BbCmSo8ae', 'user', NULL, NULL, NULL, NULL, NULL, 0, NULL, '2024-03-01 11:14:08', '2024-03-01 11:14:08'),
(94, 'Ava', 'Ledner', NULL, 'sauer.hosea@example.net', '2025-02-18 11:14:08', 'img/5.img.jpg', '$2y$12$JFiegu36pFh1ixthAkNtQOHuyAeCkrcmwoBbDm9aPyHLMsmtRJziq', 'user', NULL, NULL, NULL, NULL, NULL, 0, NULL, '2025-02-15 11:14:08', '2025-02-15 11:14:08'),
(95, 'Javonte', 'Kovacek', NULL, 'murphy.matilda@example.com', '2025-02-18 11:14:09', 'img/3.img.jpg', '$2y$12$InCM1gFWtK1aAFhqL9khVuhZIjIhp.w8vyVi7gc5nf0lGzfovoa0W', 'user', NULL, NULL, NULL, NULL, NULL, 0, NULL, '2024-11-28 11:14:09', '2024-11-28 11:14:09'),
(96, 'Audie', 'Rodriguez', '1-747-280-4265', 'gcassin@example.org', '2025-02-18 11:14:09', 'img/9.img.jpg', '$2y$12$EBS3Xk4pQrWgFrOE4MxIA.vyPya4ZWgsa88zq6uCOiG8Dc8oGBvti', 'lawyer', NULL, NULL, NULL, NULL, NULL, 0, NULL, '2024-06-29 11:14:09', '2024-06-29 11:14:09'),
(97, 'Layne', 'Klocko', NULL, 'grohan@example.net', '2025-02-18 11:14:09', 'img/2.img.jpg', '$2y$12$ZMrXg.KZFNJRxJbIUnifgOtuUfnWfvIq3Fd7IxvRb59upVC0Wy2WG', 'user', NULL, NULL, NULL, NULL, NULL, 0, NULL, '2024-07-24 11:14:09', '2024-07-24 11:14:09'),
(98, 'Corene', 'Robel', '1-341-739-3138', 'cullen39@example.org', '2025-02-18 11:14:09', 'img/4.img.jpg', '$2y$12$ZeViSWSKYJM.h9g3uP7z7Oj.W5Nkup0wVD0m0avjJrL6jAunMoRom', 'user', NULL, NULL, NULL, NULL, NULL, 0, NULL, '2024-04-17 11:14:09', '2024-04-17 11:14:09'),
(99, 'Cassidy', 'Runolfsson', NULL, 'kiarra.jones@example.com', '2025-02-18 11:14:09', 'img/9.img.jpg', '$2y$12$yf7mEIXcB6pyDxGZMI47heoNp8ERIXTfOtK4u/aDrc6fc8aiC9v42', 'lawyer', NULL, NULL, NULL, NULL, NULL, 0, NULL, '2024-03-02 11:14:09', '2024-03-02 11:14:09'),
(102, 'Xena', 'Stevenson', NULL, 'galovebu@mailinator.com', NULL, NULL, '$2y$12$9Pg6xtsPc0uLt7mqJFlZO.2HTN/KKhi1SO3NDvnmrcly9/96kmwZC', 'lawyer', NULL, '578472', '2025-02-19 10:09:35', NULL, NULL, 0, NULL, '2025-02-19 10:04:36', '2025-02-19 10:04:36'),
(103, 'Deirdre', 'Hoover', NULL, 'galovebu@yopmail.com', '2025-02-19 10:05:59', NULL, '$2y$12$gkEdpEXHeRZPREd0L6E95.VsMbGcTvVs6A5td35jMGLDd8ubCXX/u', 'lawyer', NULL, NULL, NULL, NULL, NULL, 0, NULL, '2025-02-19 10:05:20', '2025-02-19 10:05:59'),
(104, 'Kaye', 'Reeves', NULL, 'zisiquj@mailinator.com', NULL, NULL, '$2y$12$qZCQgQnuo7.jqRo88UG9UexcFDrb6fQ9/C7MkNraF/N4DlmbpGT/m', 'lawyer', NULL, '945415', '2025-02-19 10:13:47', NULL, NULL, 0, NULL, '2025-02-19 10:08:47', '2025-02-19 10:08:47'),
(105, 'Ciara', 'Peck', NULL, 'zisiqsfsuj@yopmail.com', '2025-02-19 10:12:46', NULL, '$2y$12$886naBB2caAVBQg2hsxlwukriXA5DAJBolI0IhX4esl/2B1HMzssG', 'lawyer', NULL, NULL, NULL, NULL, NULL, 0, NULL, '2025-02-19 10:12:27', '2025-02-19 10:12:46'),
(106, 'Gary', 'Cochran', NULL, 'doxyhi@mailinator.com', NULL, NULL, '$2y$12$W5qOG1bGUYmMRcq3pOjhBurNe9b7nJYMqVkTvXMwJW6dThVSzaNMC', 'lawyer', NULL, '040246', '2025-02-19 10:18:50', NULL, NULL, 0, NULL, '2025-02-19 10:13:27', '2025-02-19 10:13:50'),
(108, 'Steven', 'Padilla', NULL, 'jocenisije@mailinator.com', NULL, NULL, '$2y$12$FvOAcjrPmIeDQFIhqPPjR.4Aax4lrskWOJPUy8sXT/btklVJggmii', 'user', NULL, '742362', '2025-02-19 10:35:09', NULL, NULL, 0, NULL, '2025-02-19 10:30:09', '2025-02-19 10:30:09'),
(109, 'Ariana', 'Herring', NULL, 'jocefyso@mailinator.com', NULL, NULL, '$2y$12$3/7LRg9A9L6tPY6dQY44v..FlY/btPlsQIakYC1iLn1k09ckbzCYG', 'user', NULL, '053035', '2025-02-19 10:36:18', NULL, NULL, 0, NULL, '2025-02-19 10:31:18', '2025-02-19 10:31:18'),
(110, 'Kaye', 'Howard', NULL, 'zisisfuj@yopmail.com', '2025-02-19 10:39:34', NULL, '$2y$12$omix5fEfa640O3t65Cu68ucj6JAicr/SwZe4AxnAQr7idlPrhHVhi', 'lawyer', NULL, NULL, NULL, NULL, NULL, 0, NULL, '2025-02-19 10:39:14', '2025-02-19 10:39:43'),
(111, 'William', 'Pace', NULL, 'zisj@yopmail.com', '2025-02-19 10:41:17', NULL, '$2y$12$Vjgublb8/4U4NCg4H.yr.OKAAdqqX1ab5P9J430b1NCLqLEw5Qrsi', 'user', NULL, NULL, NULL, NULL, NULL, 0, NULL, '2025-02-19 10:40:57', '2025-02-19 10:41:26'),
(112, 'Carly', 'Hurley', NULL, 'zisjs@yopmail.com', '2025-02-19 11:00:56', NULL, '$2y$12$C5.T/sOh/r9CtcvNDBtVIu8xI8YHm6qmVqZSjyc/yVRsuH/G7RHPe', 'user', NULL, NULL, NULL, NULL, NULL, 0, NULL, '2025-02-19 11:00:29', '2025-02-19 11:01:05'),
(113, 'Preston', 'Mack', NULL, 'asss@yopmail.com', '2025-02-19 11:05:47', NULL, '$2y$12$yEjxGeQOGVFMvgWyF7rztetwfKO5SjdpSLDycAYOwLNJw/s2GsKNO', 'user', NULL, NULL, NULL, NULL, NULL, 0, NULL, '2025-02-19 11:05:31', '2025-02-19 11:05:47'),
(127, 'Melissa', 'Blake', NULL, 'leregope@mailinator.com', NULL, NULL, '$2y$12$Z2nSie4syCi5R.uBs0SsH.fBSYwhIO8iWfa7D4VW0X25ud5ylashy', 'lawyer', NULL, '076922', '2025-02-23 03:20:23', NULL, NULL, 0, NULL, '2025-02-23 03:15:24', '2025-02-23 03:15:24'),
(128, 'Noelani', 'Nixon', NULL, 'comi@mailinator.com', NULL, NULL, '$2y$12$0Cpi1EQ9xOCvhoi10hGV9.ApvNou/pKNojPToB9a9l1KK3dY9vhqO', 'lawyer', NULL, '121034', '2025-02-24 08:29:52', NULL, NULL, 0, NULL, '2025-02-24 08:24:53', '2025-02-24 08:24:53'),
(129, 'Catherine', 'Hodges', NULL, 'abc@yopmail.com', '2025-02-24 08:25:58', NULL, '$2y$12$CK1RyIbheLjayWDejjzKfuVAPIJDVOSor2csNXidpFxkvlueu3UIO', 'lawyer', NULL, NULL, NULL, NULL, NULL, 0, NULL, '2025-02-24 08:25:43', '2025-02-24 08:25:58'),
(130, 'almas', 'hossain', NULL, 'almas001ll@yopmail.com', NULL, NULL, '$2y$12$NROnfYbaNfEkD.qQ3yua1eO0GMecL1oFOeF1qY/t913KnORz5d1kC', 'user', NULL, '941924', '2025-03-08 09:12:07', NULL, NULL, 0, NULL, '2025-03-08 09:06:49', '2025-03-08 09:07:08'),
(131, 'almas', 'hossain', NULL, 'alma@yopmail.com', NULL, NULL, '$2y$12$GGAWtQ95WLZ4UzLDD6zwQOvslVaYsYPpDstpQHfMYCLzMOpoCL8XC', 'user', NULL, '525371', '2025-03-09 08:23:22', NULL, NULL, 0, NULL, '2025-03-09 08:18:23', '2025-03-09 08:18:23'),
(132, 'Ha-one', 'Benton', NULL, 'abcds@yopmail.com', '2025-03-09 08:20:50', NULL, '$2y$12$9V0VmR4PRME7ej4hbvNyT.L/Hi523g7E13QmlyS/bkt4KQHdHFA56', 'user', NULL, NULL, NULL, NULL, NULL, 0, NULL, '2025-03-09 08:19:26', '2025-03-09 08:20:50'),
(133, 'Kimberley', 'Berry', NULL, 'abcdss@yopmail.com', '2025-03-09 08:27:51', NULL, '$2y$12$ZcAUBdITAfolcIzKCfbffeuY/LtNNSbQhcnu35KxgU0iifCzQghE2', 'user', NULL, NULL, NULL, NULL, NULL, 0, NULL, '2025-03-09 08:25:46', '2025-03-09 08:27:51'),
(134, 'Jessica', 'Campos', NULL, 'abcdsssf@yopmail.com', '2025-03-09 08:30:53', NULL, '$2y$12$SUkyFMTMjibFeHSuJj3IuujwL9caXGxeeujh.8pRBm7/WPRaKOxiK', 'user', NULL, NULL, NULL, NULL, NULL, 0, NULL, '2025-03-09 08:29:18', '2025-03-09 08:30:53'),
(135, 'Hector', 'Warner', NULL, 'abcdsssfsf@yopmail.com', '2025-03-09 08:41:19', NULL, '$2y$12$lBptaGxv6IzCZ4s7czBbxu8EtFVsigAAmh6WQp1Tba.g56GqG5B5q', 'lawyer', NULL, NULL, NULL, NULL, NULL, 0, NULL, '2025-03-09 08:40:41', '2025-03-09 08:41:19'),
(136, 'Miranda', 'Cross', NULL, 'adg@yopmail.com', '2025-03-09 08:43:47', NULL, '$2y$12$BJnEPmDby.4w2KEAJYPayOfd07kcYP1pWOWzTTLIctGRjbzeWX/Dq', 'lawyer', NULL, NULL, NULL, NULL, NULL, 0, NULL, '2025-03-09 08:42:20', '2025-03-09 08:43:47'),
(137, 'Holly', 'Phillips', NULL, 'adgd@yopmail.com', '2025-03-09 08:55:12', NULL, '$2y$12$wG12xbJ3rstBTjZ5VCvzge4NqZyM.0DAyQpEMlv4ZRf8PxFZoLsLW', 'user', NULL, NULL, NULL, NULL, NULL, 0, NULL, '2025-03-09 08:53:52', '2025-03-09 08:55:12'),
(138, 'Josiah', 'Melendez', NULL, 'adgdfs@yopmail.com', '2025-03-09 09:00:12', NULL, '$2y$12$JelfEyPDxANLh2SkrPofGuT3e4dKT9FV.sppm08nXxamqm9qHZBla', 'user', NULL, NULL, NULL, NULL, NULL, 0, NULL, '2025-03-09 08:57:25', '2025-03-09 09:00:12'),
(139, 'Merrill', 'Holcomb', NULL, 'adgdfssf@yopmail.com', '2025-03-09 09:06:43', NULL, '$2y$12$VkoeeyqTsbCrrX8.9EwGtOaZxdG9JitErdYLkdarGi2TOajPkWP4y', 'user', NULL, NULL, NULL, NULL, NULL, 0, NULL, '2025-03-09 09:06:25', '2025-03-09 09:06:43'),
(140, 'Reagan', 'Nolan', NULL, 'client@yopmail.com', '2025-03-09 10:17:55', NULL, '$2y$12$Ko5Rb91UY9xfUThrZFNfBOh15C1fHQ8SJtW8WhXsxHEcAhsbqsO0.', 'user', NULL, NULL, NULL, NULL, NULL, 0, NULL, '2025-03-09 10:17:38', '2025-03-09 10:17:55'),
(141, 'almas', 'hossain', NULL, 'clients@yopmail.com', '2025-03-09 10:22:35', NULL, '$2y$12$cFlyKdIXIyGcD8dcMEC5hu3Tn9RDCLCFGZtD52EYsXYOGBuR1.RLS', 'user', NULL, '333297', '2025-03-09 11:28:22', NULL, NULL, 0, NULL, '2025-03-09 10:20:54', '2025-03-09 11:23:22'),
(142, 'mehedi', 'hasan', NULL, 'hamote7936@payposs.com', '2025-03-09 10:28:56', NULL, '$2y$12$5m.Gd576h2Y/uWejZ.znKOkXKbXGUM.EfUQmSTQBNweAYXAGq.6ey', 'user', NULL, NULL, NULL, NULL, NULL, 0, NULL, '2025-03-09 10:28:24', '2025-03-09 10:28:56'),
(143, 'Keegan', 'Carson', NULL, 'clientssf@yopmail.com', '2025-03-09 10:39:01', NULL, '$2y$12$6P6uSWzmL76tz9gpvGuPkOfT.kkkfY.ytTDXHlVx8sVdYzW6lnpGC', 'user', NULL, NULL, NULL, NULL, NULL, 0, NULL, '2025-03-09 10:37:25', '2025-03-09 10:39:01'),
(144, 'Debra', 'Sanford', 'undefined', 'clie@yopmail.com', '2025-03-09 11:26:31', 'uploads/avatars/NmcV8abbmDHNEkpPCSL1s3zzSok5jJN7EQGIXiga.jpg', '$2y$12$MBgOR5p.8wuuV0yDZVuu7.oDf6K4AgeQtaewhnSMWdD.97BXjvOgm', 'lawyer', 'Id nemo eum adipisi', NULL, NULL, NULL, NULL, 2, '2025-03-13 15:28:36', '2025-03-09 10:40:04', '2025-03-13 09:28:36'),
(145, 'Arif hassan', 'ha', '017010297565', 'user@yopmail.com', '2025-03-10 08:07:44', 'uploads/avatars/ORSdEcNrLsee3IFlzUCTEkYq9NXiTOUKS23II85I.jpg', '$2y$12$cQqwPPmjBFF0a5YxtsocUui/RA0/7C/skGicdrzUkL/f1epUr0lha', 'user', 'aaaaa', NULL, NULL, NULL, NULL, 0, NULL, '2025-03-10 08:07:24', '2025-03-20 07:55:03'),
(146, 'Noble', 'Webb', NULL, 'xywy@mailinator.com', NULL, NULL, '$2y$12$itnHM0iN2VpPCR8dkUUnOeD9D.i/Kn/RuA5PKO.tG/YmU7HjBswwu', 'user', NULL, '687742', '2025-03-11 11:54:18', NULL, NULL, 0, NULL, '2025-03-11 11:49:19', '2025-03-11 11:49:19'),
(147, 'Claire', 'Gibbs', NULL, 'dypym@mailinator.com', NULL, NULL, '$2y$12$mPx420Kxeq0QyzR5QKJ2zefY2ZmCGUmLAOqwt.xbLShHJAiFKpK.S', 'lawyer', NULL, '823526', '2025-03-12 11:34:22', NULL, NULL, 0, NULL, '2025-03-12 11:29:22', '2025-03-12 11:29:22'),
(148, 'Faith', 'Schwartz', NULL, 'jekyqy@mailinator.com', NULL, NULL, '$2y$12$s2GwDsH1WiArC/.pcQk9J.hpqFNzMZacmhyk0g9amM6iuviOQob0S', 'lawyer', NULL, '351897', '2025-03-12 12:51:10', NULL, NULL, 0, NULL, '2025-03-12 12:46:11', '2025-03-12 12:46:11'),
(149, 'Roth', 'Reese', NULL, 'das@yopmail.com', NULL, NULL, '$2y$12$0DG/LwVmzIQCpGOjYCkaZuEbmV.C.3qAvaUefrs373u7jk88Kx2aq', 'lawyer', NULL, '841336', '2025-03-12 13:05:00', NULL, NULL, 0, NULL, '2025-03-12 13:00:01', '2025-03-12 13:00:01'),
(150, 'Jermaine', 'Clayton', NULL, 'sfaf@yopmail.com', NULL, NULL, '$2y$12$N9/SYxYd6ziaG6PlzxbQ/eUc8SdwmEPuBevffWuoWlfB4rVOfLeqm', 'lawyer', NULL, '982051', '2025-03-13 08:55:25', NULL, NULL, 0, NULL, '2025-03-13 08:50:25', '2025-03-13 08:50:25'),
(151, 'Adele', 'Hendrix', NULL, 'sfafs@yopmail.com', NULL, NULL, '$2y$12$0G5dPidu571xzWCWVzFvTuN.xLeW794iCPJ4jDp.gILilKbssRSsW', 'lawyer', NULL, '911900', '2025-03-13 09:17:05', NULL, NULL, 0, NULL, '2025-03-13 09:12:06', '2025-03-13 09:12:06'),
(152, 'Ferris', 'Francis', NULL, 'almashossain@yopmail.com', NULL, NULL, '$2y$12$zs19ykq6iAh5FS21USHumOpOMtK3jMIjC9MKwmEI3FinxXjkLU.b6', 'lawyer', NULL, '757694', '2025-03-13 09:23:28', NULL, NULL, 0, NULL, '2025-03-13 09:18:29', '2025-03-13 09:18:29'),
(153, 'Ria', 'Stuart', NULL, 'almashossains@yopmail.com', NULL, NULL, '$2y$12$6wymYYdcKcjIhQoDYnLUaORzqKczdI1n3wsNwWhH5BdJqDPBTipaK', 'lawyer', NULL, '070961', '2025-03-13 09:29:48', NULL, NULL, 0, NULL, '2025-03-13 09:24:48', '2025-03-13 09:24:48'),
(154, 'Rhona', 'Oneil', NULL, 'law@yopmail.com', NULL, NULL, '$2y$12$SgugzR.Gdk.6wRIXQhPVPe1mfrlJM40VoRXo.D1pgnzeHqoRpyA5m', 'lawyer', NULL, '766435', '2025-03-13 09:38:34', NULL, NULL, 0, NULL, '2025-03-13 09:33:34', '2025-03-13 09:33:34'),
(155, 'Jeremy', 'Kelley', NULL, 'lawpai@yopmail.com', NULL, NULL, '$2y$12$uDCoFVYOCDuKalH1fwqvHu/5t7elGsDUcdq8PeVtrjDUmjz3YMBFe', 'lawyer', NULL, '068027', '2025-03-13 09:42:13', NULL, NULL, 0, NULL, '2025-03-13 09:37:13', '2025-03-13 09:37:13'),
(156, 'Rajah', 'Wiggins', NULL, 'lawpaifdf@yopmail.com', NULL, NULL, '$2y$12$DyS.gSZGuIxHVc3IAv1mLeNf6GlONo8BsaDCB1b/HVRd9hvPSRhU.', 'user', NULL, '516101', '2025-03-13 09:54:02', NULL, NULL, 0, NULL, '2025-03-13 09:49:03', '2025-03-13 09:49:03'),
(157, 'Breanna', 'Bryant', NULL, 'la@yopmail.com', NULL, NULL, '$2y$12$C6VZnnXwplH0z3voPdNNtOfWPWB9p2bTfkc1V8F2xR3F1L60B6CwS', 'user', NULL, '302217', '2025-03-13 10:01:56', NULL, NULL, 0, NULL, '2025-03-13 09:56:56', '2025-03-13 09:56:56'),
(158, 'Gabriel', 'Skinner', NULL, 'ladf@yopmail.com', NULL, NULL, '$2y$12$9OJJSSBi6YGsmU6AjBwJF..M4t8dQYkxLJ9m.V3UbjSe7xjGdopu.', 'lawyer', NULL, '751904', '2025-03-13 10:17:37', NULL, NULL, 0, NULL, '2025-03-13 10:12:37', '2025-03-13 10:12:37'),
(159, 'Dieter', 'White', NULL, 'ladfd@yopmail.com', NULL, NULL, '$2y$12$yZJ5TIAI7i.8JSC0rP18lOoCbTeS/pkleAj4c49RKEPudBjoy9nZy', 'lawyer', NULL, '174527', '2025-03-13 10:43:10', NULL, NULL, 0, NULL, '2025-03-13 10:38:11', '2025-03-13 10:38:11'),
(160, 'Kevin', 'Powers', NULL, 'lawpaire@yopmail.com', NULL, NULL, '$2y$12$QYIlJzNwQJlDxY770IZDD.NQT1VlYqiU88AHIqOGYOzCLBOEg5csO', 'lawyer', NULL, '510707', '2025-03-13 10:50:26', NULL, NULL, 0, NULL, '2025-03-13 10:45:26', '2025-03-13 10:45:26'),
(161, 'April', 'Perez', NULL, 'lawpairefdf@yopmail.com', '2025-03-13 10:51:00', NULL, '$2y$12$cFQ5xXhbVUyVR0uatU5mFeNLbfIXXaheavztbXeIK8rmF5UFHPnZW', 'lawyer', NULL, NULL, NULL, NULL, NULL, 0, NULL, '2025-03-13 10:49:20', '2025-03-13 10:51:00'),
(162, 'Thaddeus', 'Quinn', '+1 (206) 144-5251', 'lawpairefdffdf@yopmail.com', '2025-03-13 10:53:04', 'uploads/avatars/BvkFT0wz4ee8SldvEP0FTYUeUXZlD97UAEqVIm7g.jpg', '$2y$12$fQpL7lCxkh7fPnPjkJVs2u08J2CUtm8J6OPnNB0wjopS8Lq.dgp2q', 'lawyer', 'Sit earum dolore vo', NULL, NULL, NULL, NULL, 1, '2025-03-13 16:54:39', '2025-03-13 10:52:19', '2025-03-13 10:54:39'),
(163, 'Yen', 'Sellers', '+1 (741) 114-7512', 'laggdf@yopmail.com', '2025-03-13 10:55:33', 'uploads/avatars/7btsbRWtYmV2DvtT0hSOV6Ihj53UM3fNoCd95vKp.jpg', '$2y$12$wmm61cqgKEX./LjYeYMqBOdrwSMMq7qqPOvAwabH7uzm30k.7ara6', 'lawyer', 'Alias architecto et', NULL, NULL, NULL, NULL, 1, '2025-03-13 16:56:25', '2025-03-13 10:55:16', '2025-03-13 10:56:25'),
(164, 'Cairo', 'Spencer', '+1 (927) 919-3706', 'asdk@yopmail.com', '2025-03-13 11:12:32', 'uploads/avatars/GNdvjH4WLhWcCUHqcdL20vYwDkaLo4UuLrOmWGKL.jpg', '$2y$12$X2bVfA2xHTsF/tYG9IMDF.i/fcQZ8VcslhfvleFRQHcLP0/9DhPc6', 'lawyer', 'Veniam ipsum occae', NULL, NULL, NULL, NULL, 1, '2025-03-13 17:13:56', '2025-03-13 11:11:55', '2025-03-13 11:13:56'),
(165, 'Ian', 'Riggs', '+1 (451) 922-5408', 'asdkff@yopmail.com', '2025-03-15 10:25:04', 'uploads/avatars/qGH93oAexgGztqdQnPwWhEGzyPIikuwdB5lAm3Aj.jpg', '$2y$12$oeseotJygL5Bj/T9dSHRzuTNt5H02uWYBSjTk.dD.eM9SceQiE5Ta', 'lawyer', 'Consequat Maiores v', NULL, NULL, NULL, NULL, 1, '2025-03-15 16:27:59', '2025-03-15 10:24:43', '2025-03-15 10:27:59'),
(166, 'Kadeem', 'Baxter', NULL, 'as@yopmail.com', '2025-03-15 13:28:42', NULL, '$2y$12$XG6CF6CacGKWKI0lLYKi1OH.kdfOIy.Ec9W7ZGxBSP3WOSXS04Ed6', 'user', NULL, NULL, NULL, NULL, NULL, 0, NULL, '2025-03-15 13:28:15', '2025-03-15 13:28:42'),
(167, 'MD.ALMASd', 'HOSSAINd', '+1 (896) 525-855', 'ass@yopmail.com', '2025-03-15 13:49:09', 'uploads/avatars/bFRL8kfb85AGoViiGm1DOETlGQDSRxr5fg7SrcKo.jpg', '$2y$12$Z7dIKsczYEsMDLh/2ZRM/.HVuBM3ekY3HjBzgCz8WfYd/hFd/eIwi', 'user', '456 Justice Avenue, Suite 890 Central Legal Distri ctLos Angeles, CA 90017 United States', NULL, NULL, NULL, NULL, 0, NULL, '2025-03-15 13:48:53', '2025-03-20 09:20:08'),
(168, 'Abel', 'Tucker', '+1 (418) 959-6696', 'assdf@yopmail.com', '2025-03-16 08:25:23', 'uploads/avatars/Gxc7EKQjOFY0G2GuLuSS48vZJcNXOsnPk7x78TaH.jpg', '$2y$12$lt4TkAolt5FWAHOLuFUUwO4teuwuYcdmu2b/ZfpDha2Lw2ield9Pu', 'lawyer', 'Voluptatem ratione', NULL, NULL, NULL, NULL, 1, '2025-03-16 14:26:12', '2025-03-16 08:25:04', '2025-03-16 08:26:12'),
(169, 'Quyn', 'Harding', '+1 (154) 477-8264', 'assdfsf@yopmail.com', '2025-03-16 09:12:04', 'uploads/avatars/J86OFms3N3UbXgrO3eY5afMc4By79186rf7rdmso.jpg', '$2y$12$Vp1JttD8YMxgjnlVOv2IbOmQLhw7m5dH4kAO3vL/lCKo8R9i7b2ii', 'lawyer', 'Cillum dolor in eius', NULL, NULL, NULL, NULL, 1, '2025-03-16 15:13:12', '2025-03-16 09:11:43', '2025-03-16 09:13:12'),
(170, 'Rina', 'Luna', '+1 (896) 525-8515', 'asb@yopmail.com', '2025-03-16 09:53:38', 'uploads/avatars/M1dkOJjxUT20YaZjRvy1CkivWXmGu0kvMyrnZOTa.jpg', '$2y$12$bAOlRSDJY1H0fEM2bnwPGejX5b4v2OwbLBzOu75MP..j/rqbhhBM6', 'lawyer', 'Dolores duis quia do', NULL, NULL, NULL, NULL, 1, '2025-03-16 15:54:16', '2025-03-16 09:53:18', '2025-03-16 09:54:16'),
(171, 'Zeph', 'Holmes', '+1 (762) 221-2148', 'abcd@yopmail.com', '2025-03-17 10:08:52', 'uploads/avatars/vlWJxTgk3pESu6Ism4dExl6HwpNprKoi9FXZ1Hgs.jpg', '$2y$12$xYT38MHQWL/u.uNkeiVpPuTPBQH1bf9f2y2rbQWTLDQeR/LLLJ/.6', 'lawyer', 'Non irure ut volupta', NULL, NULL, NULL, NULL, 1, '2025-03-17 16:09:37', '2025-03-17 10:08:34', '2025-03-17 10:09:37'),
(172, 'Cecilia', 'Campos', '0170102978', 'abcddf@yopmail.com', '2025-03-17 10:15:51', 'uploads/avatars/dxBbyzCWAzBb2emYW3njvCRf1gvEprkXewdeZ8zw.jpg', '$2y$12$8SmkRjCIlR6QDnDFSW4.o.iP3BptJOqY52r0jG8RRk3qxxTa3wEeW', 'lawyer', 'abcd, USA -1212', NULL, NULL, NULL, NULL, 2, '2025-03-18 16:16:35', '2025-03-17 10:15:34', '2025-03-18 10:16:35'),
(173, 'Castor', 'Mclean', '+1 (137) 249-2736', 'abcsf@yopmail.com', '2025-03-18 08:11:37', 'uploads/avatars/qjYT7hQ7yW1sXAphyyTvIomrH8x9lKIiyn4XmihW.jpg', '$2y$12$RZpzGqqyfHfDjqIhLXK4n.wg538NxhgNs.jPrz.UNqa9EcuQWQsDu', 'lawyer', 'Sint odio ipsum odit', NULL, NULL, NULL, NULL, 1, '2025-03-18 14:15:08', '2025-03-18 08:11:17', '2025-03-18 08:15:08'),
(174, 'Prescott', 'Newton', '+1 (266) 139-8681', 'abcsfdf@yopmail.com', '2025-03-18 08:24:51', 'uploads/avatars/aJPtDgwAwJSdV0rpQT1f7KOqjL4Bxey0ej4P8Ydv.jpg', '$2y$12$CfDYISx/9TCZUKRLpbh5Z.DdKGwI65SpYlWSNEQOiET5MU9/YMKWC', 'lawyer', 'Quis distinctio Vel', NULL, NULL, NULL, NULL, 2, '2025-03-18 14:27:20', '2025-03-18 08:24:32', '2025-03-18 08:27:20'),
(175, 'Hanna', 'Myers', 'address', 'same@yopmail.com', '2025-03-18 08:39:35', 'uploads/avatars/3kMruoeelOPgVdGXG30mCYzdufatuFd47hoNTVQ2.jpg', '$2y$12$.fzA1Hd0oaHi6EWjCbWD3.iluJ78TsGQqXZuQ8sECnQSo6IB.QlJi', 'lawyer', 'address', NULL, NULL, NULL, NULL, 1, '2025-03-18 14:42:27', '2025-03-18 08:39:20', '2025-03-18 08:42:27'),
(176, 'Kalia', 'Stanley', '+1 (274) 986-2443', 'sames@yopmail.com', '2025-03-18 09:09:41', 'uploads/avatars/4yXsi9VvS5GB65b3aSBllnhtwuPL011USPTsWueb.jpg', '$2y$12$bISM..wbpqX3s43RbzcbwO.pwcB3rXBC67fR.DO.Mh5bgsyhPugEy', 'user', '456 Justice Avenue, Suite 890 Central Legal District Los Angeles, CA 90017 United States', NULL, NULL, NULL, NULL, 0, NULL, '2025-03-18 09:09:10', '2025-03-19 09:13:30'),
(177, 'Mechelle', 'Forbes', '015485565455', 'samessf@yopmail.com', '2025-03-18 09:12:30', 'uploads/avatars/qQacQXR3A474jRA2blPfOWJlSVwttuzmZh1XBMov.jpg', '$2y$12$ilSEPyJrGyDqyEJAcqMgoO2VXjrhKvkDcp4cP8ol.ZsOOkOj9HXaK', 'lawyer', 'Dolores duis quia do', NULL, NULL, NULL, NULL, 1, '2025-03-18 15:13:16', '2025-03-18 09:11:59', '2025-03-18 09:13:16'),
(178, 'Lester', 'Rush', NULL, 'samessffdf@yopmail.com', '2025-03-18 09:14:25', NULL, '$2y$12$LZreOU/jn4X.YFT3UuYIyO.pqjcS55iV/PdswvEztgTa7bQQDMgg2', 'lawyer', NULL, NULL, NULL, NULL, NULL, 0, NULL, '2025-03-18 09:14:08', '2025-03-18 09:14:25'),
(179, 'Hu', 'Tyson', NULL, 'ssflos@yopmail.com', '2025-03-18 09:16:12', NULL, '$2y$12$eZW8MOeUp5cXBzmXdUbkgeBAtTF9QrlWRCCR5Sm5t1/N.cOqaoiaS', 'lawyer', NULL, NULL, NULL, NULL, NULL, 0, NULL, '2025-03-18 09:15:54', '2025-03-18 09:16:12'),
(180, 'Philip', 'Rios', NULL, 'ssflossfdf@yopmail.com', '2025-03-18 10:05:22', NULL, '$2y$12$vgqbgsjisaBBa/zyUxcIqeygIwe7tmujwelB2W8yi2DEP14eAOTE6', 'lawyer', NULL, NULL, NULL, NULL, NULL, 0, NULL, '2025-03-18 10:05:00', '2025-03-18 10:05:22'),
(181, 'Aurelia', 'Huber', NULL, 'sfd@yopmail.com', '2025-03-18 10:12:30', NULL, '$2y$12$vq1DWnvttlR3gCu5.APT/.PEdhh3QoDlfXzbZHCa6rX7jEMcxFBSS', 'lawyer', NULL, NULL, NULL, NULL, NULL, 0, NULL, '2025-03-18 10:12:12', '2025-03-18 10:12:30'),
(182, 'Rina', 'Weaver', '0170102976', 'sfdfs@yopmail.com', '2025-03-18 10:18:40', 'uploads/avatars/lLvOJLR2XIvpja51FvR98kOlmZlCRS0OUhlprAom.jpg', '$2y$12$islz8E96daSSjgxD8lmRA.jnLDRAB96UcZqXnFJ65AFsN85TMKGV.', 'lawyer', 'abcd, USA -1212', NULL, NULL, NULL, NULL, 2, '2025-03-19 14:51:06', '2025-03-18 10:18:22', '2025-03-19 08:51:06'),
(183, 'Vivien', 'Hayden', '+1 (882) 217-5423', 'fsfsf@yopmail.com', '2025-03-19 14:04:04', 'uploads/avatars/l2mehD1aHmT56y2WwfgkPijDh4rh4ovWvOnzPkqp.jpg', '$2y$12$rFcgk0WFfjyNwLxmFBPNWu0AMcbbrma6kKclA75/bsdwDbK81.2c6', 'lawyer', 'Rerum ea ea expedita', NULL, NULL, NULL, NULL, 2, '2025-03-19 20:33:25', '2025-03-19 14:03:42', '2025-03-19 14:33:25'),
(184, 'Zephania', 'Collier', '+1 (764) 218-4549', 'sfsfsfafe@yopmail.com', '2025-03-20 12:57:15', 'uploads/avatars/0RRQ622MkefaGV4FlTtqi1W1LhzPqlrBCXuYlXGA.jpg', '$2y$12$41abBozPUb2Nu9HyvMMsVOrg7Z3fsVRjSoVwpcE1ru2Nt523Znc8G', 'lawyer', 'Ut porro ex doloremq', NULL, NULL, NULL, NULL, 2, '2025-03-20 19:21:17', '2025-03-20 12:56:55', '2025-03-20 13:21:17'),
(185, 'Brenden', 'Case', '+1 (291) 205-9976', 'sfsf@yopmail.com', '2025-03-20 13:29:06', 'uploads/avatars/LmmRL3IkZmxZD7H7YYr2o2B3BeRLKxSrMVHhB8sQ.png', '$2y$12$zDApUkOa2vqd8lZwcMovjOSuCG0gNX4Q3JgXU42/362cx5TwD3MFC', 'lawyer', 'Dolore reprehenderit', NULL, NULL, NULL, NULL, 2, '2025-03-20 19:31:30', '2025-03-20 13:28:46', '2025-03-20 13:31:30'),
(186, 'Walter', 'Richardson', '+1 (474) 207-6793', 'lawyer@yopmail.com', '2025-03-20 13:40:46', 'uploads/avatars/Dt9Qj8cf34p4RP5957rKiL0sv3PT4oyT6xh9oG3F.jpg', '$2y$12$RUxqpypd0Wft4t2FY.BqGOMYIhZvD/QJP.Ov5nCuj5vEEWYSXav6m', 'lawyer', 'Ea id exercitatione', NULL, NULL, NULL, NULL, 2, '2025-03-20 19:58:14', '2025-03-20 13:40:23', '2025-03-20 13:58:14'),
(187, 'Kane', 'Sexton', '+1 (498) 566-3765', 'ishanrana363@gmail.com', '2025-03-20 14:14:23', 'uploads/avatars/NmtoOREAkSps5lf4IFgucYBlQqg1AhIkjVdERbAQ.jpg', '$2y$12$BDZc43O.EZpCp2y4vrXs8uoOszNtGMT12X4.yst/wF0vfPnM0Gmi.', 'lawyer', 'Tenetur exercitation', NULL, NULL, NULL, NULL, 2, '2025-03-22 17:23:12', '2025-03-20 14:13:19', '2025-03-22 11:23:12'),
(188, 'Diana', 'Beard', NULL, 'new@yopmail.com', NULL, NULL, '$2y$12$VQBvr0spj3EK77y3Yz5lS.LPpqurJIG53kKn6LSghn6leRIAthtRO', 'lawyer', NULL, '264905', '2025-03-21 08:21:54', NULL, NULL, 0, NULL, '2025-03-21 08:15:26', '2025-03-21 08:16:54'),
(189, 'Kamal', 'Zimmerman', NULL, 'newssf@yopmail.com', NULL, NULL, '$2y$12$6iixNrgwKUR37senosV7m.CQjz2UMmX0tZjmrtAlzslDo4d8SFQty', 'lawyer', NULL, '654110', '2025-03-21 08:22:47', NULL, NULL, 0, NULL, '2025-03-21 08:17:48', '2025-03-21 08:17:48'),
(190, 'Brent', 'Delacruz', NULL, 'bolod29960@isorax.com', NULL, NULL, '$2y$12$gbrw0H6FRrYA3rdJgBcIS.oDOI9qJ40qOpkmc.gntOCybd3IxaEVW', 'lawyer', NULL, '644799', '2025-03-21 08:25:13', NULL, NULL, 0, NULL, '2025-03-21 08:20:14', '2025-03-21 08:20:14'),
(191, 'Echo', 'Rocha', NULL, 'zxnwucfrdgfghbrtuz@poplk.com', NULL, NULL, '$2y$12$E0r1jrp.X47smKN1jc1Rb.8B0eDrQyWV7urCmoXhZmnDCpm8mVkZq', 'lawyer', NULL, '514372', '2025-03-21 08:26:41', NULL, NULL, 0, NULL, '2025-03-21 08:21:41', '2025-03-21 08:21:41'),
(192, 'Flynn', 'Coleman', NULL, 'akfds@yopmail.com', NULL, NULL, '$2y$12$yCbCFmXkBdao61FYkOuixeVHLjmgdnc0U4oz6RQmlZCm9Ya3sOar6', 'lawyer', NULL, '588314', '2025-03-21 08:27:51', NULL, NULL, 0, NULL, '2025-03-21 08:22:51', '2025-03-21 08:22:51'),
(193, 'Odette', 'Hicks', NULL, 'akfdsd@yopmail.com', NULL, NULL, '$2y$12$XW.irqgMTlAAx4g/fnJd2e/64mzxb7YuO3GHXjEUnpLcvCIysT3C6', 'user', NULL, '160411', '2025-03-21 08:28:42', NULL, NULL, 0, NULL, '2025-03-21 08:23:43', '2025-03-21 08:23:43'),
(194, 'Fay', 'Gregory', NULL, 'akfdsdfs@yopmail.com', NULL, NULL, '$2y$12$6lf9NMUJTSNUalLRlmP07eh0RaToYyjfZN715aFtbuJ.LmqM05R2q', 'lawyer', NULL, '768422', '2025-03-21 08:29:36', NULL, NULL, 0, NULL, '2025-03-21 08:24:36', '2025-03-21 08:24:36'),
(195, 'almas', 'hossain', NULL, 'almashosssain7384@gmail.com', NULL, NULL, '$2y$12$YHzIPW0JdNjgr0Uu4MXfz.iske7Wv5qEYinWflh1Ukh12l6ekP4c6', 'super_admin', NULL, '693972', '2025-03-22 08:09:57', NULL, NULL, 0, NULL, '2025-03-22 08:04:58', '2025-03-22 08:04:58'),
(196, 'almas', 'hossain', NULL, 'almashosssasin7384@gmail.com', NULL, NULL, '$2y$12$S6CpFae7Dnxmqo6swqawV.LcDrIETMo7JQbOXFrtnWb1XwgPLvJ2m', 'super_admin', NULL, '086824', '2025-03-22 08:27:38', NULL, NULL, 0, NULL, '2025-03-22 08:22:38', '2025-03-22 08:22:38'),
(197, 'mehedi', 'hasan', NULL, 'm@gmail.com', NULL, NULL, '$2y$12$AX2.A5fjYm0qEiRh.pj6IOrdLBW8NTN2/Sohd1sWxopETK4YeO9PG', 'user', NULL, '286294', '2025-03-22 08:29:06', NULL, NULL, 0, NULL, '2025-03-22 08:24:06', '2025-03-22 08:24:06'),
(198, 'Emmanuel', 'Davidson', NULL, 'walehi2669@hikuhu.com', NULL, NULL, '$2y$12$JxYaJOPd1MG2VSx8bN0HaOiHl58bGLXT9oa/9L5zefbCK1O1u3khC', 'lawyer', NULL, '882574', '2025-03-22 11:31:31', NULL, NULL, 0, NULL, '2025-03-22 11:26:32', '2025-03-22 11:26:32'),
(199, 'Sylvester', 'Velasquez', NULL, 'addd@yopmail.com', NULL, NULL, '$2y$12$GjrN/4yPkZtRsYQe/jXFJeJn.9OHPoBQwG.QOHFF6TDwlW87EwNTa', 'lawyer', NULL, '930544', '2025-03-22 11:32:40', NULL, NULL, 0, NULL, '2025-03-22 11:27:40', '2025-03-22 11:27:40'),
(200, 'Vance', 'Avery', '+1 (601) 558-7099', 'asfeew@yopmail.com', '2025-03-22 11:35:13', 'uploads/avatars/uKxTkg3D06F7c0aULbUqk3ty5LxXYXXSArBn6pZG.png', '$2y$12$h/.UsGCs1Zn6BUXzOHJGy.2EPwooss/un/otcP3GmwcbTP1tvIpZu', 'lawyer', 'Architecto esse nequ', NULL, NULL, NULL, NULL, 1, '2025-03-22 17:36:07', '2025-03-22 11:34:54', '2025-03-22 11:36:07'),
(201, 'Martina', 'Christensen', '+1 (749) 896-5999', 'asfeewsf@yopmail.com', '2025-03-22 11:38:43', 'uploads/avatars/FfjO70bqiEApKhU8jhA2FMKPe03TGXOGEYWFOueB.jpg', '$2y$12$1gRBCo46HINw.M8PXXD4x.f69cSlE3PLKsST4dJi.Rqc/4E16iLN2', 'lawyer', 'Quisquam deleniti su', NULL, NULL, NULL, NULL, 2, '2025-03-22 17:43:19', '2025-03-22 11:38:27', '2025-03-22 11:43:19'),
(202, 'Juliet', 'Wolf', '+1 111111111111', 'asfe@yopmail.com', '2025-03-22 11:44:37', 'uploads/avatars/n59fVUyf65B32bdnZLi6CZDZg4oGQs3ndVh1uRVk.jpg', '$2y$12$z0lTAmluwkltDs9AXUrRTeOtREx/Ken3LjO2/YkK3NpWQFR0iAxEG', 'lawyer', 'Eveniet aspernatur', NULL, NULL, NULL, NULL, 2, '2025-03-22 17:46:00', '2025-03-22 11:44:23', '2025-03-22 11:46:00'),
(203, 'Geoffrey', 'Petty', NULL, 'anew@yopmail.com', '2025-03-22 11:58:37', NULL, '$2y$12$g4wjNr6afVgmyVTh8iHqtOUU.NOAKWKGH8iSSr3T5Mxoz7cKCRQdq', 'user', NULL, NULL, NULL, NULL, NULL, 0, NULL, '2025-03-22 11:58:20', '2025-03-22 11:58:37'),
(204, 'Erica', 'Bartlett', NULL, 'sans@yopmail.com', '2025-03-23 06:58:19', NULL, '$2y$12$6gRCHcwXeCV5l1SZ1WvmJOkNTsCdFyp2pDGoWvVkrcxscKrB61bL2', 'lawyer', NULL, NULL, NULL, NULL, NULL, 0, NULL, '2025-03-23 06:58:01', '2025-03-23 06:58:19'),
(205, 'Yvonne', 'Ortega', NULL, 'sansf@yopmail.com', '2025-03-23 07:01:32', NULL, '$2y$12$StlxpaYYZYo2ehASpeGJ0umhzj.6QH5wfDGY8tV6HMIJGqhTPJiBu', 'lawyer', NULL, NULL, NULL, NULL, NULL, 0, NULL, '2025-03-23 06:59:40', '2025-03-23 07:01:32'),
(206, 'Boris', 'Cherry', '+1 (525) 636-3778', 'sansfg@yopmail.com', '2025-03-23 07:02:57', NULL, '$2y$12$icWpBGEK8omN31xKM/WTXO50YD0i9/vPFxFvAVznwWzQjrL/flJoC', 'lawyer', 'Assumenda et illo ma', NULL, NULL, NULL, NULL, 1, '2025-03-23 13:04:56', '2025-03-23 07:02:40', '2025-03-23 07:04:56'),
(207, 'nai', 'nai', NULL, 'nai@gmail.com', NULL, NULL, '$2y$12$g62Fn3wNbSHFkAMSvIYtRuwVKAe.y8R8l.skf.DWWDpLQeVnVusHi', 'user', NULL, '801059', '2025-03-23 07:07:54', NULL, NULL, 0, NULL, '2025-03-23 07:02:55', '2025-03-23 07:02:55'),
(208, 'nai', 'nai', NULL, 'nai2@gmail.com', NULL, NULL, '$2y$12$Ie1tmZ02zgr07yR9buEGB.8n96wHlMhGcpUtzbmnAVyZDHb.M0nxu', 'user', NULL, '728171', '2025-03-23 07:10:01', NULL, NULL, 0, NULL, '2025-03-23 07:05:02', '2025-03-23 07:05:02'),
(209, 'mehedi', 'hasan', NULL, 'mehedi@gmail.com', NULL, NULL, '$2y$12$nfE98koN.P/KdMlqrB/xF.lNoVQpTUQ2fCm/tr3REpidMiQPA1XZ.', 'user', NULL, '228617', '2025-03-23 07:11:14', NULL, NULL, 0, NULL, '2025-03-23 07:06:14', '2025-03-23 07:06:14'),
(210, 'mehedi', 'hasan', NULL, 'mehedi2@gmail.com', NULL, NULL, '$2y$12$g18snYB.7bZGXdTLqdjz6eeSo0mwM26aiaocl3nheHNGBEzssUgqy', 'user', NULL, '500409', '2025-03-23 07:12:35', NULL, NULL, 0, NULL, '2025-03-23 07:07:35', '2025-03-23 07:07:35'),
(211, 'mehedi', 'hasan', NULL, 'mehedi1@gmail.com', NULL, NULL, '$2y$12$rNIvgPhpazihLaID.4WtOushGtH98mxNGVtkA8BSG68gE78OIPalK', 'user', NULL, '260333', '2025-03-23 07:18:20', NULL, NULL, 0, NULL, '2025-03-23 07:13:20', '2025-03-23 07:13:20'),
(212, 'mehedi', 'hasan', NULL, 'mehedi3@gmail.com', NULL, NULL, '$2y$12$oa2BlYgaiHLSGf5CHNAtsewyk8ADFENAvKKahpPwuEPmYQhzM02j6', 'user', NULL, '740101', '2025-03-23 07:19:06', NULL, NULL, 0, NULL, '2025-03-23 07:14:06', '2025-03-23 07:14:06'),
(213, 'mehedi', 'hasan', NULL, 'mehedi4@gmail.com', NULL, NULL, '$2y$12$ammjysxmynbP1lA6UJ2fJe2Gj28mjekVjEit19pATHfvPwCUykemm', 'user', NULL, '001636', '2025-03-23 07:20:05', NULL, NULL, 0, NULL, '2025-03-23 07:15:05', '2025-03-23 07:15:05'),
(214, 'mehedi', 'hasan', NULL, 'mehedi5@gmail.com', NULL, NULL, '$2y$12$eNqoBVrKp8fQgwpwpBh8t.VKXJK4fW/sa.mFAPsRRznmKEahLeww.', 'user', NULL, '815381', '2025-03-23 07:22:00', NULL, NULL, 0, NULL, '2025-03-23 07:17:00', '2025-03-23 07:17:00'),
(215, 'mehedi', 'hasan', NULL, 'mehedi7@gmail.com', NULL, NULL, '$2y$12$QDNuGkhVLz.9LbdO/jJpI.rnCqswtnr6cxrpmJmm1pGX3dsVHxh/u', 'user', NULL, '472662', '2025-03-23 07:23:20', NULL, NULL, 0, NULL, '2025-03-23 07:18:20', '2025-03-23 07:18:20'),
(216, 'Emerson', 'Marshall', NULL, 'sansfgfd@yopmail.com', '2025-03-23 07:18:51', NULL, '$2y$12$FodLMe6mIk9H087hu6.Dy.rRZK.jafKl8s1dle8s7h3JsWTfUMDPO', 'lawyer', NULL, NULL, NULL, NULL, NULL, 0, NULL, '2025-03-23 07:18:30', '2025-03-23 07:18:51'),
(217, 'mehedi', 'hasan', NULL, 'md@gmail.com', NULL, NULL, '$2y$12$4K08AXzPJymYEbaVhgzSieXhVMEtJC2pN0knOOnEB3tiXKKWk8J5O', 'user', NULL, '040633', '2025-03-23 07:25:38', NULL, NULL, 0, NULL, '2025-03-23 07:20:38', '2025-03-23 07:20:38');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `phone`, `email`, `email_verified_at`, `avatar`, `password`, `role`, `address`, `otp`, `otp_expire_at`, `remember_token`, `google_id`, `update_count`, `last_updated_at`, `created_at`, `updated_at`) VALUES
(218, 'name', 'name', NULL, 'name@gmail.com', NULL, NULL, '$2y$12$kC7ADJpDt5heb9OIfhhP0OX5FCn2tFliOv66yVHVK4kZHckGLh3Ka', 'user', NULL, '357074', '2025-03-23 07:28:02', NULL, NULL, 0, NULL, '2025-03-23 07:23:03', '2025-03-23 07:23:03'),
(219, 'm', 'm', NULL, 'n@gmail.com', NULL, NULL, '$2y$12$tEiaYchgPP9hreI3KXLJU.egqGB5y.H4IjCs6tJp9rIeEa3jNPL1m', 'user', NULL, '477012', '2025-03-23 07:30:17', NULL, NULL, 0, NULL, '2025-03-23 07:25:17', '2025-03-23 07:25:17'),
(220, 'Beau', 'Pennington', '+1 (279) 727-7729', 'fake@yopmail.com', '2025-03-23 07:26:31', NULL, '$2y$12$JB8q8VTN2jsOPvxDMtybEejnz7ec2Ass5GC/LsNQVTvIroKN06iFC', 'lawyer', 'Nam pariatur Quidem', NULL, NULL, NULL, NULL, 1, '2025-03-23 13:32:22', '2025-03-23 07:26:16', '2025-03-23 07:32:22'),
(221, 'm', 'm', NULL, 'nm@gmail.com', NULL, NULL, '$2y$12$HNp5tL/wmd0J1mZa9wfOZux6YymegEok37JJXDTok1a6v7DEsbdv6', 'user', NULL, '573313', '2025-03-23 07:33:13', NULL, NULL, 0, NULL, '2025-03-23 07:28:13', '2025-03-23 07:28:13'),
(222, 'nai', 'nai', NULL, 'l@gmail.com', NULL, NULL, '$2y$12$ITCgY8MbTikMH6gm1EmgSO0gJ1sLDVqH.U1YupsfhRfzNhrp5awNq', 'user', NULL, '367322', '2025-03-23 07:33:52', NULL, NULL, 0, NULL, '2025-03-23 07:28:53', '2025-03-23 07:28:53'),
(223, 'nai', 'nai', NULL, 'ls@gmail.com', NULL, NULL, '$2y$12$B.xArlDPh9iIO.8gXlc1L.PWarKJ.X693T84eyBx.rDkOCrSDiiu6', 'user', NULL, '785849', '2025-03-23 07:37:29', NULL, NULL, 0, NULL, '2025-03-23 07:32:29', '2025-03-23 07:32:29'),
(224, 'nai', 'nai', NULL, 'lss@gmail.com', NULL, NULL, '$2y$12$oSAWICFyVtm3HikeNQrTE.fgTg0dJvtfmn0DYs0TK7hq8QJwT2/vO', 'user', NULL, '668241', '2025-03-23 07:40:13', NULL, NULL, 0, NULL, '2025-03-23 07:35:13', '2025-03-23 07:35:13'),
(225, 'nai', 'nai', NULL, 'lsss@gmail.com', NULL, NULL, '$2y$12$21TtnKGjv4nkYS369G7yDOcE6oNrujw5AV7JO5Vzy33xqF1711oMi', 'user', NULL, '156861', '2025-03-23 07:40:43', NULL, NULL, 0, NULL, '2025-03-23 07:35:43', '2025-03-23 07:35:43'),
(226, 'nai', 'nai', NULL, 'lssss@gmail.com', NULL, NULL, '$2y$12$PHhYGlMTh97Q2Xz4pIUHn.JTp.wnJL4oYOc0s.4zjHPCoDn9JJz02', 'user', NULL, '574705', '2025-03-23 07:43:15', NULL, NULL, 0, NULL, '2025-03-23 07:38:15', '2025-03-23 07:38:15'),
(227, 'asd', 'asdf', NULL, 'asd@gmail.com', NULL, NULL, '$2y$12$np67PS.sOHIA1gsjmJwHjOuELRKbm.8CS1kB.flUw/LFp9usPXerW', 'user', NULL, '273995', '2025-03-23 07:44:57', NULL, NULL, 0, NULL, '2025-03-23 07:39:57', '2025-03-23 07:39:57'),
(228, 'sdfg', 'adf', NULL, 'fjfj@gmail.com', NULL, NULL, '$2y$12$CGeZoLP6plgP6cZkyR.6duFc8Mes3ocC6WgVnBODsmCfx5wh/avta', 'user', NULL, '368297', '2025-03-23 07:46:16', NULL, NULL, 0, NULL, '2025-03-23 07:41:17', '2025-03-23 07:41:17'),
(229, 'sdfg', 'adf', NULL, 'fjsfj@gmail.com', NULL, NULL, '$2y$12$mLYpEkn6kdge3lLo2BXPZupxzB1/CnHKmP59Ibe4IjH5WtxLjX0gm', 'user', NULL, '759818', '2025-03-23 07:46:53', NULL, NULL, 0, NULL, '2025-03-23 07:41:53', '2025-03-23 07:41:53'),
(230, 'sdfg', 'adf', NULL, 'fjssfj@gmail.com', NULL, NULL, '$2y$12$/toAJAgL4hZmYfhH91/LteLqO6IDa4hpREf5QUvatTW/hcO2k2lu.', 'user', NULL, '136399', '2025-03-23 07:48:23', NULL, NULL, 0, NULL, '2025-03-23 07:43:23', '2025-03-23 07:43:23'),
(231, 'sdfg', 'adf', NULL, 'fjsssfj@gmail.com', NULL, NULL, '$2y$12$ndXiesoo9CuQAPAM/4eSCu5QcR8YBNytMo5iBnfGZAtrbEGoM6u66', 'user', NULL, '366141', '2025-03-23 07:50:11', NULL, NULL, 0, NULL, '2025-03-23 07:45:11', '2025-03-23 07:45:11'),
(232, 'sdfg', 'adf', NULL, 'fjssssfj@gmail.com', NULL, NULL, '$2y$12$LiJN7EbBQueyBG.hS8YeTOHYkp.QmBxJtdMAtYa8i/yFbVI2NNDV6', 'user', NULL, '877088', '2025-03-23 07:53:02', NULL, NULL, 0, NULL, '2025-03-23 07:48:02', '2025-03-23 07:48:02'),
(233, 'sdfg', 'adf', NULL, 'lsfs@gmail.com', NULL, NULL, '$2y$12$vnH1yZDk/b0n3PNnjyeG0eFoHOvwHYaT27BFik3k5.8SC9vOK7OcW', 'user', NULL, '388017', '2025-03-23 07:54:35', NULL, NULL, 0, NULL, '2025-03-23 07:49:35', '2025-03-23 07:49:35'),
(234, 'Alec', 'Long', NULL, 'fakes@yopmail.com', '2025-03-23 07:56:09', NULL, '$2y$12$BDTCZLbCbe/Ec7C48osCAexrNCokD5yDSLOe.oQsoy7s7FHv/Qlfu', 'lawyer', NULL, NULL, NULL, NULL, NULL, 0, NULL, '2025-03-23 07:55:55', '2025-03-23 07:56:09'),
(235, 'Kevyn', 'Hyde', NULL, 'fakesd@yopmail.com', '2025-03-23 07:57:36', NULL, '$2y$12$Gm3mx2YYy67FU2QSeN3JC.u5BFhg/71JHtdZKftb.IPbnpi5epxLm', 'lawyer', NULL, NULL, NULL, NULL, NULL, 0, NULL, '2025-03-23 07:57:22', '2025-03-23 07:57:36'),
(236, 'Cullen', 'Waller', NULL, 'fakesdd@yopmail.com', '2025-03-23 08:08:44', NULL, '$2y$12$MnIHU/3lJIdMRqXBe7x7MuYtw0HoWdwxDW4nZ1SKcm/rBlaPF6JWK', 'lawyer', NULL, NULL, NULL, NULL, NULL, 0, NULL, '2025-03-23 08:08:26', '2025-03-23 08:08:44'),
(237, 'Martina', 'Burks', '+15575', 'fakesdds@yopmail.com', '2025-03-23 08:26:07', 'uploads/avatars/FUu5bJfWdl705IbS5au2BMXNQWBcEitpNOAeODqk.jpg', '$2y$12$Q5PF2yZNF/DSj40777.rseapkrhWeCqQL04mjmAGSk.p7bLzD0AdO', 'lawyer', 'Deleniti ut accusamu', NULL, NULL, NULL, NULL, 2, '2025-03-23 15:11:43', '2025-03-23 08:25:47', '2025-03-23 09:11:43'),
(238, 'Nevada', 'Wilson', '+1 (108) 406-3959', 'fakesddssf@yopmail.com', '2025-03-23 09:30:07', 'uploads/avatars/GhUVbTUvbIPOMN9JB89TlDI36QrEFMU9RomNbbuA.jpg', '$2y$12$8K7hMaDQP5q3P27wPTt25erKCOZAqVzmwoc/kb4RRpbOuhlTj99UW', 'lawyer', 'Quisquam consequatur', NULL, NULL, NULL, NULL, 2, '2025-03-23 15:47:07', '2025-03-23 09:29:49', '2025-03-23 09:47:07'),
(239, 'Iris', 'Norris', '+1 (123) 108-7699', 'fakd@yopmail.com', '2025-03-23 09:49:43', 'uploads/avatars/laWB3iJr1IT0FiYWGhVMxzxGvVu2yaMh8Aofb7k7.jpg', '$2y$12$XnTJdUb6gJRYpMyDuo8wfe6kNrcetnvpgnkUG7AVExH1ERXIlj6s6', 'lawyer', 'Iste rem eum ducimus', NULL, NULL, NULL, NULL, 1, '2025-03-23 15:50:18', '2025-03-23 09:49:22', '2025-03-23 09:50:18'),
(240, 'Peter', 'Britt', '+1 (824) 356-2143', 'fakdy@yopmail.com', '2025-03-23 09:54:13', 'uploads/avatars/HUFukwvAN5qlP06jsgjG6DMUK8tgq4W5OdtGfPnG.jpg', '$2y$12$jdFjjfuHIh8dVedD0KmvyuY0ROvBmb0p1r0J6pXUYvjGaShn2933S', 'lawyer', 'Incididunt', NULL, NULL, NULL, NULL, 2, '2025-03-23 15:55:37', '2025-03-23 09:53:57', '2025-03-23 09:55:37'),
(241, 'Colorado', 'Rowland', NULL, 'fakdyssf@yopmail.com', '2025-03-23 10:11:01', NULL, '$2y$12$yvMU1r3uu5PQJyfHgpLgOehFxMxZr4RdQiGgS4wPoALMvEsKFln8C', 'user', NULL, NULL, NULL, NULL, NULL, 0, NULL, '2025-03-23 10:10:41', '2025-03-23 10:11:01'),
(242, 'Jameson', 'Marshall', NULL, 'fakdyssfv@yopmail.com', '2025-03-23 10:15:17', NULL, '$2y$12$nrFfJFEcUZlRzEHXqdSca.5VObzYKP72zjLigwSUi9SQdRj7y2IvG', 'user', NULL, NULL, NULL, NULL, NULL, 0, NULL, '2025-03-23 10:15:02', '2025-03-23 10:15:17'),
(243, 'Leslie', 'Mayo', NULL, 'fakdyssfvx@yopmail.com', '2025-03-23 10:18:05', NULL, '$2y$12$ZBdAKgBE26TqouxA/yZWIObWOrhy7HmBxPedKPRwCT35e8SyYAKZK', 'user', NULL, NULL, NULL, NULL, NULL, 0, NULL, '2025-03-23 10:17:40', '2025-03-23 10:18:05'),
(244, 'Uma', 'Hodges', NULL, 'fakdyssfvxv@yopmail.com', '2025-03-23 10:21:41', NULL, '$2y$12$CVwVBaIGWkw5Iy8/LLMLhuJyw6z.wlRCwx3ydiNDJlpv0919RqAuW', 'lawyer', NULL, NULL, NULL, NULL, NULL, 0, NULL, '2025-03-23 10:21:00', '2025-03-23 10:21:41'),
(245, 'Levi', 'Mckenzie', NULL, 'fake2@yopmail.com', '2025-03-23 10:26:02', NULL, '$2y$12$VrmE1MKVm4/./GODH8Y.DelMdjVmSUYEYmOoqNKN4Of7lTp.YdNOq', 'user', NULL, NULL, NULL, NULL, NULL, 0, NULL, '2025-03-23 10:25:43', '2025-03-23 10:26:02'),
(246, 'Aurora', 'Barrett', NULL, 'fake2s@yopmail.com', '2025-03-23 10:27:12', NULL, '$2y$12$1iM/ZOWcl2UhDBGgtlQcw.dxR0Zt59hymINiiGxh/kP3sqL3czCxu', 'lawyer', NULL, NULL, NULL, NULL, NULL, 0, NULL, '2025-03-23 10:26:54', '2025-03-23 10:27:12'),
(247, 'Jermaine', 'Mueller', NULL, 'fake2sv@yopmail.com', '2025-03-23 10:30:23', NULL, '$2y$12$uiMUiUTUM3D.VXx2Y7qgT.xjPZvAsMKkAGSv3KLRNCa5y0M.ZD/Gq', 'lawyer', NULL, NULL, NULL, NULL, NULL, 0, NULL, '2025-03-23 10:30:06', '2025-03-23 10:30:23'),
(248, 'Fay', 'Slater', NULL, 'fake2ssfv@yopmail.com', '2025-03-23 11:30:09', NULL, '$2y$12$QhAJaYL8UHIyf5CduLV/q.g3GTMcJl69LVuJLNthpCTHYttwwlYIq', 'lawyer', NULL, NULL, NULL, NULL, NULL, 0, NULL, '2025-03-23 11:28:28', '2025-03-23 11:30:09'),
(249, 'Dora', 'Ferguson', NULL, 'fakeew@yopmail.com', '2025-03-23 11:31:48', NULL, '$2y$12$azYYT9vKnoyU2D7yXZMehO4fGK3zHaNPsSE951o/OJNc8EmcN2Ubi', 'lawyer', NULL, NULL, NULL, NULL, NULL, 0, NULL, '2025-03-23 11:31:29', '2025-03-23 11:31:48'),
(250, 'Malik', 'Witt', '+1 (597) 413-4896', 'fakeews@yopmail.com', '2025-03-23 11:33:16', 'uploads/avatars/985DWhWtZLu2A3bozVFIlzLBEk4JZw8MXCThd1zm.jpg', '$2y$12$2aO0ExFEGnqHXcnDLl.4nOuvmEm3BPRL1eU3/RSGo2HZiMARzZXzW', 'lawyer', 'Quis ab dolore esse', NULL, NULL, NULL, NULL, 1, '2025-03-23 17:34:18', '2025-03-23 11:33:01', '2025-03-23 11:34:18'),
(251, 'Urielle', 'Ingram', NULL, 'fakeewss@yopmail.com', '2025-03-23 13:16:32', NULL, '$2y$12$MYx3nC50j37BHI7UPZk7yO2FJOsmlFZMFNO4D7FY8Lc8ySbAxrmwG', 'user', NULL, NULL, NULL, NULL, NULL, 0, NULL, '2025-03-23 13:16:10', '2025-03-23 13:16:32'),
(254, 'Abel', 'Gardner', NULL, 'fakeuse@yopmail.com', '2025-03-23 13:26:54', NULL, '$2y$12$pMdjX2ofGmyGzUJaqSrwuelx3feEda9T6IakzF0dyzUDKHsxLSPfu', 'user', NULL, NULL, NULL, NULL, NULL, 0, NULL, '2025-03-23 13:26:35', '2025-03-23 13:26:54'),
(255, 'Margaret', 'Burton', NULL, 'fakeuses@yopmail.com', '2025-03-23 13:36:22', NULL, '$2y$12$8FVRBUTS4KUKWYShIrsDcOpO1HO3hsuEQzZzkJem9U89LPVZ1e7ia', 'user', NULL, NULL, NULL, NULL, NULL, 0, NULL, '2025-03-23 13:35:51', '2025-03-23 13:36:22'),
(256, 'Lara', 'Porter', NULL, 'fakeusesdf@yopmail.com', '2025-03-23 13:37:51', NULL, '$2y$12$ef.rldSoIvy.Em/ZoJHcmObtOcDeM/6.hCHL8la2LE4Xd.FV64P7m', 'lawyer', NULL, NULL, NULL, NULL, NULL, 0, NULL, '2025-03-23 13:37:35', '2025-03-23 13:37:51'),
(257, 'Lucy', 'Cannon', NULL, 'fakeusesdfss@yopmail.com', NULL, NULL, '$2y$12$DPq9qfY68aksqePIGrGnGex6uQth8lgzJm816iEJQG9Cw3qbqnLTi', 'user', NULL, '319877', '2025-03-23 13:48:19', NULL, NULL, 0, NULL, '2025-03-23 13:43:19', '2025-03-23 13:43:19'),
(258, 'Irene', 'Morrison', NULL, 'zeni@mailinator.com', NULL, NULL, '$2y$12$CqPqTmZklgmQM.sH8jxd8OKGoKwIGRnu5AnRvdr81cQk.RfXpgKQm', 'user', NULL, '008638', '2025-03-23 13:59:18', NULL, NULL, 0, NULL, '2025-03-23 13:54:18', '2025-03-23 13:54:18'),
(262, 'Philip', 'Booth', NULL, 'fakedrs@yopmail.com', NULL, NULL, '$2y$12$3j1wLkI4FrfnRrAQkML2MeKFsiPUe/Xs2BodtaBJOzO1TNMxvrOgW', 'lawyer', NULL, '854638', '2025-03-23 14:16:18', NULL, NULL, 0, NULL, '2025-03-23 14:11:19', '2025-03-23 14:11:19'),
(263, 'Philip', 'Booth', NULL, 'fakedrsefsf@yopmail.com', NULL, NULL, '$2y$12$NahJlmanRGMhYKhWCPTOK.W2AfVNOjJDookkqy.BrRL4HRzOzzmUe', 'lawyer', NULL, '474661', '2025-03-23 14:17:03', NULL, NULL, 0, NULL, '2025-03-23 14:12:04', '2025-03-23 14:12:04'),
(264, 'Nichole', 'Lee', NULL, 'test@yopmail.com', NULL, NULL, '$2y$12$IQrHd7MoILFfSqQpBWLtr.RaolgMK.1OsK4b69ZrJEARncqdVpaBO', 'user', NULL, '872846', '2025-03-23 14:18:26', NULL, NULL, 0, NULL, '2025-03-23 14:13:27', '2025-03-23 14:13:27'),
(265, 'Carlos', 'Bridges', NULL, 'tests@yopmail.com', '2025-03-23 14:15:09', NULL, '$2y$12$4YUMvYp1Xv4KvhLttCu.eeHG5ZblY45YeYRetvAFjcmRwvOwM9Ui.', 'lawyer', NULL, NULL, NULL, NULL, NULL, 0, NULL, '2025-03-23 14:14:41', '2025-03-23 14:15:09'),
(266, 'Mari', 'Sargent', NULL, 'testsw@yopmail.com', '2025-03-23 14:17:22', NULL, '$2y$12$SQohnbJ8lnAcaPST.3jdL.OqM9tlsUIZdlMJsP9Lx2JKmUGsJRRhK', 'user', NULL, NULL, NULL, NULL, NULL, 0, NULL, '2025-03-23 14:17:09', '2025-03-23 14:17:22'),
(267, 'Deacon', 'Walls', NULL, 'testswu@yopmail.com', '2025-03-23 14:20:16', NULL, '$2y$12$GC8JJmK8Qp8y1UmeKOWIFOzMchpjqQtQRE7ZApMpeGleK9RuES9dS', 'user', NULL, NULL, NULL, NULL, NULL, 0, NULL, '2025-03-23 14:19:39', '2025-03-23 14:20:16'),
(268, 'Caesar', 'Wolf', '+1 (747) 867-4145', 'testswue@yopmail.com', '2025-03-23 14:22:36', 'uploads/avatars/ghdoUxLeGh8gb6IGGAfsIiXe8ra1kQW9z8o36rhf.jpg', '$2y$12$bTBxjiU68Erpx6zfOg3geukUF5AH9jw8TyYYBp1wLOLD/yk9vyXtC', 'lawyer', 'Dolor id sit quaer', NULL, NULL, NULL, NULL, 1, '2025-03-23 20:23:39', '2025-03-23 14:22:21', '2025-03-23 14:23:39'),
(269, 'Madonna', 'Maddox', NULL, 'testswuee@yopmail.com', '2025-03-23 14:26:25', NULL, '$2y$12$DCg24DQQZtpph14qBYv5ZuMHvSlYWGk4VzW5/BJxSwHy239ZW93Iy', 'user', NULL, NULL, NULL, NULL, NULL, 0, NULL, '2025-03-23 14:26:11', '2025-03-23 14:26:25'),
(270, 'Denise', 'Gibson', NULL, 'testswueev@yopmail.com', '2025-03-23 14:33:06', NULL, '$2y$12$jKJGc0Gyf2gFGdc0zjlhmeoOOeZltxulbo7Z5dHxMC5R4XvqQ9L1a', 'user', NULL, NULL, NULL, NULL, NULL, 0, NULL, '2025-03-23 14:32:53', '2025-03-23 14:33:06'),
(271, 'Nathan', 'Frost', '+1 (138) 956-3172', 'testswueevs@yopmail.com', '2025-03-23 14:34:19', 'uploads/avatars/hEEhigxD2GK9iggV7sHRPftkVlxPtwkMWXCLcO7x.jpg', '$2y$12$qoPEl.L/TrDRtNB0Uqb4R.MGPRE5F3proWF/XtzvBH6lhoCflz2pi', 'lawyer', 'Lorem minim rerum pe', NULL, NULL, NULL, NULL, 2, '2025-03-23 20:36:44', '2025-03-23 14:34:02', '2025-03-23 14:36:44'),
(272, 'Elmo', 'Carrillo', NULL, 'testesd@yopmail.com', '2025-03-23 14:40:30', NULL, '$2y$12$CbEHkreg0.ASlbenaL03SeZy7VceFRgWXckTcaHmA2R.B1UsZARuy', 'user', NULL, NULL, NULL, NULL, NULL, 0, NULL, '2025-03-23 14:40:06', '2025-03-23 14:40:30'),
(273, 'Branden', 'York', '+1 (687) 503-1384', 'testesde@yopmail.com', '2025-03-23 14:44:06', 'uploads/avatars/7Y9UX678B39ZB0PDZWgItnsDPrsWUrzMv6pSaxx9.jpg', '$2y$12$h6kTPUHSR95.eJUjL1YWX.vVPmgTCDoyeYrer4mNkv.xyD5F5/bK.', 'lawyer', 'Est sed placeat non', NULL, NULL, NULL, NULL, 2, '2025-03-23 20:45:52', '2025-03-23 14:43:51', '2025-03-23 14:45:52'),
(274, 'MD.ALMAS', 'HOSSAIN', '+1 (498) 566-376', 'testesdevd@yopmail.com', '2025-03-23 14:48:36', 'uploads/avatars/3GI1p4dre4u0xkfAICNomgtnqlPU7xr6Vim1T9os.jpg', '$2y$12$AzzUw3HH9dkUFetBOtrmPOG.7PuOS3.fjLO43ly97FRRbjKYAJEDy', 'user', 'abcd, USA -1212', NULL, NULL, NULL, NULL, 0, NULL, '2025-03-23 14:48:19', '2025-03-23 14:51:29'),
(275, 'ALMAS', 'HOSSAIN', '+1 (498) 566-37', 'fakeps@yopmail.com', '2025-03-24 08:36:03', 'uploads/avatars/isNhX4ycXjMoUbQsnmD0CiC4JgBIrTl4yhedq4fA.jpg', '$2y$12$2KKlsy6nIjrWhOtrX5BR3.ndfNPM3lQq/gYqiyUe4Us3tc7PxpJKu', 'user', 'Dolores duis quia do', NULL, NULL, NULL, NULL, 0, NULL, '2025-03-24 08:35:44', '2025-03-24 09:02:59'),
(276, 'Ross', 'Ballard', '+1 (708) 373-7245', 'fakepsef@yopmail.com', '2025-03-24 09:06:32', 'uploads/avatars/pKfDUjYI1ziISfSenpjOn8FqMbZ2hMc9w9220cAV.png', '$2y$12$VjX1QpLzpaX94pNHApdWDuLIKPbOhXgk0Dkq0yYYtrz5pXAk2ElbS', 'lawyer', 'Unde incidunt conse', NULL, NULL, NULL, NULL, 2, '2025-03-24 15:08:35', '2025-03-24 09:06:14', '2025-03-24 09:08:35'),
(277, 'Martinaa', 'Camposs', '+1 (764) 218-4548', 'fakepsefse@yopmail.com', '2025-03-24 09:09:41', 'uploads/avatars/7c2BBvDeJJLvDM6TAubQHfuvWFqyoGvEiLSxO4tT.jpg', '$2y$12$.ttcosoXRehbD.TmE7vs6.TUNjNO94Wbdm30y3nyvPhDDwJCKWqIu', 'user', 'Dolores duis quia do', NULL, NULL, NULL, NULL, 0, NULL, '2025-03-24 09:09:25', '2025-03-24 09:19:45'),
(278, 'Jayme', 'Waller', '+1 (983) 817-2398', 'attorneys@yopmail.com', '2025-03-24 14:13:18', 'uploads/avatars/0KEUpdTXVCh4jq4NiuqEqhDB5ZeuMuSoxRmU9pA8.jpg', '$2y$12$I2iuuKXu8jxWOt1xLIDNNuS7ggkkiEDH0zemE5GyuSqm87AS5/Ase', 'lawyer', 'Sed debitis deserunt', NULL, NULL, NULL, NULL, 2, '2025-03-24 20:15:48', '2025-03-24 14:12:44', '2025-03-24 14:15:48'),
(279, 'Iliana', 'Workman', '017010297', 'attor@yopmail.com', '2025-03-24 14:18:35', 'uploads/avatars/W2cYJSv6Za46xUbbkwB4eO29MSuyuFMZbuZly5mf.jpg', '$2y$12$QiapV4xWUsCiN0eXDmPCAeGoJZ05jFz/adhU7G68lVGDA0FS2u6m6', 'lawyer', 'Culpa consequatur i', NULL, NULL, NULL, NULL, 1, '2025-03-24 20:25:56', '2025-03-24 14:18:17', '2025-03-24 14:25:56'),
(280, 'Hillary', 'Klein', NULL, 'attordf@yopmail.com', '2025-03-24 15:05:42', NULL, '$2y$12$gPMs7dWK7vh1vSU1P.id.e5/7LBRoKCHfYo4RqUbbbEMalmDMO0vy', 'lawyer', NULL, NULL, NULL, NULL, NULL, 0, NULL, '2025-03-24 15:05:24', '2025-03-24 15:05:42'),
(281, 'Miranda', 'Oconnor', '+1 (186) 969-4974', 'aokd@yopmail.com', '2025-03-24 15:19:11', 'uploads/avatars/bu55W3YQcCKijAJdYFSg5SHLEOPlaiFUOPWs71Qd.jpg', '$2y$12$252lVLg/8CGNf3fxbEbEsOSKaYbFQhSMhqPymVDiL3ia.jiKTLInm', 'lawyer', 'Ea ipsum consectetur', NULL, NULL, NULL, NULL, 2, '2025-03-24 21:37:55', '2025-03-24 15:18:50', '2025-03-24 15:37:55'),
(282, 'Zeph', 'Beck', '+1 (201) 742-1103', 'aokdd@yopmail.com', '2025-03-25 06:07:55', 'uploads/avatars/YxwAoYGblW8Tv4AA1f0Dzz7zuwwV1KNit8MQWRJl.jpg', '$2y$12$URKxO6/DS.jljQb0NqNjNuL4AADUbAtuUSa5iHMPx3a8qcAtpP/fO', 'lawyer', 'Vitae sed omnis ad a', NULL, NULL, NULL, NULL, 1, '2025-03-25 12:09:01', '2025-03-25 06:07:36', '2025-03-25 06:09:01'),
(283, 'Noelle', 'Schneider', NULL, 'aokdds@yopmail.com', '2025-03-25 06:33:23', NULL, '$2y$12$3YarVDPVYNGm3.NBWEBMVuJ5iLFrfw/kH8KD5obdM/cn48iunoHzW', 'lawyer', NULL, NULL, NULL, NULL, NULL, 0, NULL, '2025-03-25 06:32:53', '2025-03-25 06:33:23');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `abouts`
--
ALTER TABLE `abouts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `cache`
--
ALTER TABLE `cache`
  ADD PRIMARY KEY (`key`);

--
-- Indexes for table `cache_locks`
--
ALTER TABLE `cache_locks`
  ADD PRIMARY KEY (`key`);

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `disclaimers`
--
ALTER TABLE `disclaimers`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indexes for table `favorites`
--
ALTER TABLE `favorites`
  ADD PRIMARY KEY (`id`),
  ADD KEY `favorites_user_id_foreign` (`user_id`),
  ADD KEY `favorites_lawyer_id_foreign` (`lawyer_id`);

--
-- Indexes for table `jobs`
--
ALTER TABLE `jobs`
  ADD PRIMARY KEY (`id`),
  ADD KEY `jobs_queue_index` (`queue`);

--
-- Indexes for table `job_batches`
--
ALTER TABLE `job_batches`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `lawyers`
--
ALTER TABLE `lawyers`
  ADD PRIMARY KEY (`id`),
  ADD KEY `lawyers_user_id_foreign` (`user_id`);

--
-- Indexes for table `legal_resources`
--
ALTER TABLE `legal_resources`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_reset_tokens`
--
ALTER TABLE `password_reset_tokens`
  ADD PRIMARY KEY (`email`);

--
-- Indexes for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Indexes for table `sessions`
--
ALTER TABLE `sessions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `sessions_user_id_index` (`user_id`),
  ADD KEY `sessions_last_activity_index` (`last_activity`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`),
  ADD UNIQUE KEY `users_phone_unique` (`phone`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `abouts`
--
ALTER TABLE `abouts`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=36;

--
-- AUTO_INCREMENT for table `disclaimers`
--
ALTER TABLE `disclaimers`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `favorites`
--
ALTER TABLE `favorites`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=52;

--
-- AUTO_INCREMENT for table `jobs`
--
ALTER TABLE `jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=220;

--
-- AUTO_INCREMENT for table `lawyers`
--
ALTER TABLE `lawyers`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=84;

--
-- AUTO_INCREMENT for table `legal_resources`
--
ALTER TABLE `legal_resources`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=76;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=284;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `favorites`
--
ALTER TABLE `favorites`
  ADD CONSTRAINT `favorites_lawyer_id_foreign` FOREIGN KEY (`lawyer_id`) REFERENCES `lawyers` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `favorites_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `lawyers`
--
ALTER TABLE `lawyers`
  ADD CONSTRAINT `lawyers_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
