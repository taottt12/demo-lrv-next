-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jul 01, 2024 at 03:44 AM
-- Server version: 10.4.27-MariaDB
-- PHP Version: 8.2.0

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `demo`
--

-- --------------------------------------------------------

--
-- Table structure for table `auction_status`
--

CREATE TABLE `auction_status` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `description` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `auction_status`
--

INSERT INTO `auction_status` (`id`, `name`, `description`, `created_at`, `updated_at`) VALUES
(1, 'active', 'Product is currently undergoing auction', NULL, NULL),
(2, 'pending', 'Product is waiting for approval to be auctioned', NULL, NULL),
(3, 'closed', 'Auction for the product has ended', NULL, NULL),
(4, 'sold', 'Product has been sold through auction', NULL, NULL),
(5, 'unsold', 'Product did not receive any bids or did not meet reserve price', NULL, NULL),
(6, 'withdrawn', 'Product was withdrawn from auction before completion', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `description` varchar(255) NOT NULL,
  `parent_id` bigint(20) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `name`, `description`, `parent_id`, `created_at`, `updated_at`) VALUES
(1, 'Antique', 'Ancient items', NULL, NULL, NULL),
(2, 'Art', 'Lifetime works', NULL, NULL, NULL),
(3, 'Picture', 'Old photos have great value', NULL, NULL, NULL),
(4, 'Sculpture', 'Statues of a lifetime', NULL, NULL, NULL),
(5, 'Wine', 'adfad', NULL, NULL, NULL),
(6, 'Supercar', 'adfad', NULL, NULL, NULL),
(7, 'Stamp', 'adfad', NULL, NULL, NULL),
(8, 'Coins', 'adfad', NULL, NULL, NULL),
(9, 'Weapon', 'adfad', NULL, NULL, NULL),
(10, 'Wine', 'adfad', NULL, NULL, NULL),
(11, 'alooo', 'akjhkhf', NULL, '2024-06-20 23:34:42', '2024-06-20 23:34:42'),
(14, 'sdv', 'ddad', NULL, '2024-06-21 00:25:21', '2024-06-25 18:36:23');

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
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_reset_tokens_table', 1),
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(4, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(5, '2024_06_20_083617_create_auction_status_table', 1),
(6, '2024_06_20_094638_create_categories_table', 1),
(7, '2024_06_20_095914_create_ownership_status_table', 1),
(8, '2024_06_20_100233_create_products_table', 1);

-- --------------------------------------------------------

--
-- Table structure for table `ownership_status`
--

CREATE TABLE `ownership_status` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `ownership_status`
--

INSERT INTO `ownership_status` (`id`, `name`, `created_at`, `updated_at`) VALUES
(1, 'Owned', NULL, NULL),
(2, 'No owner', NULL, NULL),
(3, 'Consigned', NULL, NULL);

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

--
-- Dumping data for table `personal_access_tokens`
--

INSERT INTO `personal_access_tokens` (`id`, `tokenable_type`, `tokenable_id`, `name`, `token`, `abilities`, `last_used_at`, `expires_at`, `created_at`, `updated_at`) VALUES
(1, 'App\\Models\\User', 1, 'token', '98c318dd253839f76ba4b530ca3e1d864c983206582d3bcecf7888f57067476c', '[\"*\"]', '2024-06-21 02:06:16', NULL, '2024-06-20 19:53:04', '2024-06-21 02:06:16'),
(2, 'App\\Models\\User', 2, 'token', '58ce2f4019a9b4f5bae3673a62e589efa40ef54f505cdd1708beefe83550786d', '[\"*\"]', NULL, NULL, '2024-06-21 02:16:50', '2024-06-21 02:16:50'),
(3, 'App\\Models\\User', 2, 'token', 'c64d7dcfbbd3f1736806d71165286520256add656b48b1473fe20fcf6d1f8d7f', '[\"*\"]', NULL, NULL, '2024-06-21 02:20:14', '2024-06-21 02:20:14'),
(4, 'App\\Models\\User', 3, 'token', '00ac3ee179ae5d6ead9c3eeaba4e36cb03621ebf38751d87713e31281c29f391', '[\"*\"]', NULL, NULL, '2024-06-21 02:22:05', '2024-06-21 02:22:05'),
(5, 'App\\Models\\User', 3, 'token', '6b12ca3a22eae11f87c12a3cc6e9331e27b364a787c70b5fdd8ab0655188151e', '[\"*\"]', NULL, NULL, '2024-06-21 02:23:57', '2024-06-21 02:23:57'),
(6, 'App\\Models\\User', 5, 'token', 'c236945c37611bfd814bf40a0ba9c1e4d0dcf4c5c207b5ae3e31405cf69d8af2', '[\"*\"]', NULL, NULL, '2024-06-21 02:25:06', '2024-06-21 02:25:06'),
(7, 'App\\Models\\User', 6, 'token', 'b8c4d67ce8053033df6632236c426324def9e55ef74c2ec18c404c1596a5b593', '[\"*\"]', NULL, NULL, '2024-06-21 02:26:54', '2024-06-21 02:26:54'),
(8, 'App\\Models\\User', 8, 'token', '3f650fc40883fcc5a078b7c1af5a6772b021fe0908daaa88cd456f6cd06557c8', '[\"*\"]', NULL, NULL, '2024-06-21 02:31:25', '2024-06-21 02:31:25'),
(9, 'App\\Models\\User', 9, 'token', '99a635787cea461d1efec135f3570b1c851b128ddbd41b71104d853f42f539ad', '[\"*\"]', NULL, NULL, '2024-06-21 02:37:22', '2024-06-21 02:37:22'),
(10, 'App\\Models\\User', 10, 'token', '45961693d231c47f5b61c082e24fbe11e90245e7f1826c5d2460143fc73c94af', '[\"*\"]', NULL, NULL, '2024-06-21 02:38:16', '2024-06-21 02:38:16'),
(11, 'App\\Models\\User', 11, 'token', '3825f541f2694ac5fa49fce0c79af0fed0a171ca3d5eb0bb7010176090ac0a3a', '[\"*\"]', NULL, NULL, '2024-06-24 18:43:19', '2024-06-24 18:43:19'),
(12, 'App\\Models\\User', 11, 'token', '1ded2cae1c684347b2b998dc68f91e7f9c7d2a19c0fdd95fa4b2a0713a301a17', '[\"*\"]', NULL, NULL, '2024-06-24 18:43:54', '2024-06-24 18:43:54'),
(13, 'App\\Models\\User', 11, 'token', '39f225d4d1c8af6d20f9a677fd1a9b7d5bde983ae030960da09e50bd0d267a06', '[\"*\"]', '2024-06-24 18:46:52', NULL, '2024-06-24 18:45:53', '2024-06-24 18:46:52'),
(14, 'App\\Models\\User', 11, 'token', '47704ea64aea6d1d3c1fdd98f4466642edbeb45bb3eece5d5f371535e125c1c2', '[\"*\"]', NULL, NULL, '2024-06-24 18:47:16', '2024-06-24 18:47:16'),
(15, 'App\\Models\\User', 11, 'token', '69bc5efec794b10cc9f4a94136e2cf2d6e5160f4b6287bb0d5013d2e7a533f62', '[\"*\"]', NULL, NULL, '2024-06-24 18:47:35', '2024-06-24 18:47:35'),
(16, 'App\\Models\\User', 11, 'token', '214390e77a9bfa85c5074651355242a0feb02b9068b43eff31a361b0b84bfe16', '[\"*\"]', NULL, NULL, '2024-06-24 18:48:00', '2024-06-24 18:48:00'),
(17, 'App\\Models\\User', 12, 'token', 'de5401a19669c0ea1d4a72f4c0effe6f6717e7bd907e1f52e6fdcd4b9a443d0f', '[\"*\"]', NULL, NULL, '2024-06-24 18:49:03', '2024-06-24 18:49:03'),
(18, 'App\\Models\\User', 12, 'token', 'afbd6d814aac97c2fb0a35edacb878937775f5cf73012d856bdb15375b20a3e4', '[\"*\"]', NULL, NULL, '2024-06-24 18:52:27', '2024-06-24 18:52:27'),
(19, 'App\\Models\\User', 12, 'token', '7c04b7096bf23f6ea9dd475d60e68dd7c63c8b6e97a51c7ad4d760453847cedd', '[\"*\"]', NULL, NULL, '2024-06-24 18:54:20', '2024-06-24 18:54:20'),
(20, 'App\\Models\\User', 12, 'token', 'e05d49b08df445db310dd8b44ac2e05cef3afa9e1eb9584524401bec95d74bfa', '[\"*\"]', '2024-06-24 19:00:34', NULL, '2024-06-24 18:55:11', '2024-06-24 19:00:34'),
(21, 'App\\Models\\User', 12, 'token', 'e0e69a28bf35b31dad8e8d8e966ff006f8fe2965241fd0a75d21887ddcbaca8d', '[\"*\"]', NULL, NULL, '2024-06-24 19:00:38', '2024-06-24 19:00:38'),
(22, 'App\\Models\\User', 12, 'token', '2610e8efd7840a1539038d4bf904063b9eacf0d07605f180732d23e970f9c257', '[\"*\"]', NULL, NULL, '2024-06-24 19:00:48', '2024-06-24 19:00:48'),
(23, 'App\\Models\\User', 12, 'token', '76fc249ba7d772cb81cba389be9dea467ebfa4db6a123379f2f50a5c0d7cc948', '[\"*\"]', NULL, NULL, '2024-06-24 19:04:25', '2024-06-24 19:04:25'),
(24, 'App\\Models\\User', 12, 'token', '6f8e32d609e4ccbdf2a3cff4501016011a870139fef0b14c3bdeb68536d1c65b', '[\"*\"]', NULL, NULL, '2024-06-24 19:04:25', '2024-06-24 19:04:25'),
(25, 'App\\Models\\User', 12, 'token', 'd8cdf8e38657ab1d1ca8fa280fad85d32f6e23e93e536e8bbde92854bae65bf5', '[\"*\"]', NULL, NULL, '2024-06-24 19:04:26', '2024-06-24 19:04:26'),
(26, 'App\\Models\\User', 13, 'token', 'b6e2a4af6dafac6c9aa46ac8cb4cc3226829ea2a01673a236c96e219b0284d6b', '[\"*\"]', NULL, NULL, '2024-06-24 19:05:29', '2024-06-24 19:05:29'),
(27, 'App\\Models\\User', 13, 'token', 'beb8d8f4d1619044c268aea651585ea47e897f08056199a41b38eacce9b8cace', '[\"*\"]', NULL, NULL, '2024-06-24 19:05:32', '2024-06-24 19:05:32'),
(28, 'App\\Models\\User', 13, 'token', 'fcfc1aa51fae1de1434cb0b055c3efbdc65300495ffaf9f0521d8d83aa64e81b', '[\"*\"]', NULL, NULL, '2024-06-24 19:05:35', '2024-06-24 19:05:35'),
(29, 'App\\Models\\User', 13, 'token', 'df59396a71823885150ba431fcb6aa742ece5e9f08c23ba66e9c8476848cbdb8', '[\"*\"]', NULL, NULL, '2024-06-24 19:05:35', '2024-06-24 19:05:35'),
(30, 'App\\Models\\User', 13, 'token', '45fce258e20f81f10334d6dbcee5835361cb2fa3408adbfa76377613259875fc', '[\"*\"]', NULL, NULL, '2024-06-24 19:05:35', '2024-06-24 19:05:35'),
(31, 'App\\Models\\User', 13, 'token', '559735862636a74b4e20f1c823c52a6a8ed128a2d24d26ce4181c8766c012b1a', '[\"*\"]', NULL, NULL, '2024-06-24 19:05:40', '2024-06-24 19:05:40'),
(32, 'App\\Models\\User', 13, 'token', 'e0dbdc5147d7b8aa09fb2eac29ff251a4ead050484a16cf3e22b7614744bdd0d', '[\"*\"]', NULL, NULL, '2024-06-24 19:05:40', '2024-06-24 19:05:40'),
(33, 'App\\Models\\User', 13, 'token', '690390c8c3d96c00a78889836a3ae95ac6db24440f168e23e20fb3333d140ad0', '[\"*\"]', NULL, NULL, '2024-06-24 19:05:41', '2024-06-24 19:05:41'),
(34, 'App\\Models\\User', 13, 'token', '73a7bcde4c6778135b3e44128ce771159db85f059b395cb14fccfa0cd071dbd8', '[\"*\"]', NULL, NULL, '2024-06-24 19:05:41', '2024-06-24 19:05:41'),
(35, 'App\\Models\\User', 13, 'token', '779a1105a2306fb5ae8a41009ad3c68a1d5190c182b24dbfb1b4c34dbfa5eb1e', '[\"*\"]', NULL, NULL, '2024-06-24 19:05:41', '2024-06-24 19:05:41'),
(36, 'App\\Models\\User', 13, 'token', '2b0d03215dbfbe8202697a0da945e58f4ccc572fcf126bb6d4394fd336c4b966', '[\"*\"]', NULL, NULL, '2024-06-24 19:05:42', '2024-06-24 19:05:42'),
(37, 'App\\Models\\User', 13, 'token', '17b9781f70660dcbf402b0e72ab7cd9f8bafc38c3584e30dd818dd6ca9b882f1', '[\"*\"]', NULL, NULL, '2024-06-24 19:07:58', '2024-06-24 19:07:58'),
(38, 'App\\Models\\User', 13, 'token', '0b099a56fc44182354a34b7e4adc1b09c4ea8306cfbe71d8c176db685504d416', '[\"*\"]', NULL, NULL, '2024-06-24 19:08:01', '2024-06-24 19:08:01'),
(39, 'App\\Models\\User', 13, 'token', 'f2051521fe2956ae2d2fccb97e480e7cce066f34c48c5a7c61517d8e92f449f4', '[\"*\"]', NULL, NULL, '2024-06-24 19:08:01', '2024-06-24 19:08:01'),
(40, 'App\\Models\\User', 13, 'token', 'fbce58fb34a06f650498d97cdc0fd3dc29b3925304db777f6041668c94c5c7e5', '[\"*\"]', NULL, NULL, '2024-06-24 19:08:02', '2024-06-24 19:08:02'),
(41, 'App\\Models\\User', 13, 'token', '6e26b4f27e67070fb0b9824b23f9af2075ce740f984ee46ff5982cfabd883c12', '[\"*\"]', NULL, NULL, '2024-06-24 19:08:02', '2024-06-24 19:08:02'),
(42, 'App\\Models\\User', 13, 'token', '83527a01a927ecda971522b10209e18f4efd71f5f29b095dc85303ce9a0e9ad1', '[\"*\"]', NULL, NULL, '2024-06-24 19:08:03', '2024-06-24 19:08:03'),
(43, 'App\\Models\\User', 13, 'token', '1d1126a6373edd6f086ee987ebc5b0050ff8549278679e93f360dba26abe0455', '[\"*\"]', NULL, NULL, '2024-06-24 19:08:03', '2024-06-24 19:08:03'),
(44, 'App\\Models\\User', 13, 'token', '6ad9568eef8075d0e45402442c57778942e7f617711cc985e34c2900f726279e', '[\"*\"]', NULL, NULL, '2024-06-24 19:08:04', '2024-06-24 19:08:04'),
(45, 'App\\Models\\User', 13, 'token', '3ee76086cc24c0e8d0057d3ca6f413c1376423aa0403593620e2abfc39829bd8', '[\"*\"]', NULL, NULL, '2024-06-24 19:08:04', '2024-06-24 19:08:04'),
(46, 'App\\Models\\User', 13, 'token', '118329f77b2fbeeeb1b8e3fb8d3c0783eb662a66dad8586a806281e18d139844', '[\"*\"]', '2024-06-24 19:21:41', NULL, '2024-06-24 19:09:08', '2024-06-24 19:21:41'),
(47, 'App\\Models\\User', 12, 'token', 'ed31f7cfe4af068771373c4b3f251fd5393670e4adf08a20742b6a47f10ea990', '[\"*\"]', '2024-06-25 00:18:23', NULL, '2024-06-24 19:21:50', '2024-06-25 00:18:23'),
(48, 'App\\Models\\User', 13, 'token', 'e340c86510bc876e6c2c7e511ac7a015a65024ff6013f3ed02773ffcb006fcb6', '[\"*\"]', '2024-06-25 00:22:53', NULL, '2024-06-25 00:18:56', '2024-06-25 00:22:53'),
(49, 'App\\Models\\User', 12, 'token', 'a0c5aa08ba56248b2ed8518397d6d9418e7077e41b9ec389bf8566ac247595a3', '[\"*\"]', NULL, NULL, '2024-06-25 00:31:06', '2024-06-25 00:31:06'),
(50, 'App\\Models\\User', 11, 'token', 'd63fe1d16018ce68ec40723e5a99f2db4c9d0610bc3981fd465e131b11d8e1b1', '[\"*\"]', NULL, NULL, '2024-06-25 01:00:14', '2024-06-25 01:00:14');

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `price` double(8,2) NOT NULL,
  `quantity` int(11) NOT NULL,
  `image` varchar(255) NOT NULL,
  `status` varchar(255) NOT NULL,
  `ownership_status_id` bigint(20) UNSIGNED NOT NULL,
  `description` varchar(255) NOT NULL,
  `user_id` bigint(20) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `name`, `price`, `quantity`, `image`, `status`, `ownership_status_id`, `description`, `user_id`, `created_at`, `updated_at`) VALUES
(1, 'qui', 62.04, 20, 'https://via.placeholder.com/640x480.png/004455?text=sed', 'new', 2, 'Nostrum optio praesentium vitae ex et odio.', 0, '2024-06-20 19:06:27', '2024-06-20 19:06:27'),
(2, 'quos', 45.82, 53, 'https://via.placeholder.com/640x480.png/006655?text=dolores', 'old', 2, 'Et adipisci aut magni.', 0, '2024-06-20 19:06:27', '2024-06-20 19:06:27'),
(3, 'voluptas', 17.15, 6, 'https://via.placeholder.com/640x480.png/00ee55?text=et', 'old', 2, 'Et ipsa tempora voluptas aut quas.', 0, '2024-06-20 19:06:27', '2024-06-20 19:06:27'),
(4, 'nobis', 50.45, 91, 'https://via.placeholder.com/640x480.png/00cc66?text=quo', 'new', 2, 'Architecto suscipit id aperiam laboriosam aut.', 0, '2024-06-20 19:06:27', '2024-06-20 19:06:27'),
(5, 'optio', 75.63, 90, 'https://via.placeholder.com/640x480.png/00ee22?text=unde', 'new', 2, 'Delectus corporis veritatis atque quia placeat aut quae.', 0, '2024-06-20 19:06:27', '2024-06-20 19:06:27'),
(6, 'est', 85.61, 79, 'https://via.placeholder.com/640x480.png/0099dd?text=consequatur', 'old', 2, 'Numquam dicta est quo sint consequatur libero architecto.', 0, '2024-06-20 19:22:34', '2024-06-20 19:22:34'),
(7, 'sint', 75.62, 65, 'https://via.placeholder.com/640x480.png/0066bb?text=mollitia', 'new', 2, 'Ipsa debitis vel omnis neque neque.', 0, '2024-06-20 19:22:34', '2024-06-20 19:22:34'),
(8, 'voluptates', 91.72, 64, 'https://via.placeholder.com/640x480.png/00cc22?text=quaerat', 'new', 2, 'Voluptatum ut dolorem neque ab ut iure.', 0, '2024-06-20 19:22:34', '2024-06-20 19:22:34'),
(9, 'perferendis', 20.08, 32, 'https://via.placeholder.com/640x480.png/00ee22?text=distinctio', 'new', 2, 'Ut itaque consequuntur maiores enim sit.', 0, '2024-06-20 19:22:34', '2024-06-20 19:22:34'),
(10, 'maiores', 27.23, 5, 'https://via.placeholder.com/640x480.png/002288?text=voluptates', 'old', 2, 'Soluta earum fugiat dolore et provident dolore amet.', 0, '2024-06-20 19:22:34', '2024-06-20 19:22:34'),
(11, 'et', 12.39, 60, 'https://via.placeholder.com/640x480.png/007766?text=sit', 'old', 2, 'Voluptates eos explicabo dolorem illo dolorem vel.', 0, '2024-06-20 19:22:34', '2024-06-20 19:22:34'),
(12, 'sint', 95.68, 15, 'https://via.placeholder.com/640x480.png/000055?text=aliquid', 'old', 2, 'Recusandae perspiciatis reiciendis commodi modi impedit.', 0, '2024-06-20 19:22:34', '2024-06-20 19:22:34'),
(13, 'ad', 64.21, 91, 'https://via.placeholder.com/640x480.png/009944?text=consequuntur', 'old', 2, 'Eum et qui enim in reiciendis sint iure.', 0, '2024-06-20 19:22:34', '2024-06-20 19:22:34'),
(14, 'recusandae', 46.00, 3, 'https://via.placeholder.com/640x480.png/0055bb?text=consequuntur', 'old', 2, 'Maxime temporibus sit veritatis aut aut.', 0, '2024-06-20 19:22:34', '2024-06-20 19:22:34'),
(15, 'quibusdam', 64.67, 47, 'https://via.placeholder.com/640x480.png/006655?text=expedita', 'new', 2, 'Tempore voluptatum odio doloribus totam molestiae provident molestias et.', 0, '2024-06-20 19:22:34', '2024-06-20 19:22:34'),
(16, 'vàvasdfv', 12.00, 1, 'images/hdYqBi411jsZTEPSRYx4s8kdWRhFJdr02gV9DGYZ.jpg', 'dsv', 1, 'advadvasv', 13, '2024-06-25 03:29:11', '2024-06-25 03:29:11'),
(17, 'shidfgbh', 12.00, 1, 'images/lddcwIkZnokXev5q0L7SaN8aPPjuWJ1lksZpmxR7.png', 'sdb', 1, 'sger', 13, '2024-06-25 20:04:45', '2024-06-25 20:04:45'),
(18, 'kjaglgv', 137.00, 1, 'images/FROjh36YvmXXUgZS11i2evvzr9seRTGLzFXT43dA.png', 'new', 1, 'mới ra nè', 13, '2024-06-26 19:13:54', '2024-06-26 19:13:54'),
(19, 'super hỉo', 234.00, 1, 'images/wM0UshkwSuKO3re4dCoiIdwEfElTDAJyPp4cvtop.png', 'new', 1, 'duy nhất chỉ có 1 chiếc', 13, '2024-06-26 19:26:03', '2024-06-26 19:26:03'),
(20, 'super hỉo', 234.00, 1, 'images/24BfqGJrzjj1oAHcw6sxa28mFMbHkMKij4SobqTT.png', 'new', 1, 'duy nhất chỉ có 1 chiếc', 13, '2024-06-26 19:26:04', '2024-06-26 19:26:04'),
(21, 'super hỉo', 234.00, 1, 'images/6adl31GlcVKDoMgAnZXs0RHoWRL2ewgsUcu8kYor.png', 'new', 1, 'duy nhất chỉ có 1 chiếc', 13, '2024-06-26 19:26:05', '2024-06-26 19:26:05'),
(22, 'sfvv', 1324.00, 1, 'images/QKwWQtXVT324HvpiS2KHXSPP4GagntDSXWiTjqLC.png', 'sv', 1, 'aefwe', 13, '2024-06-26 19:31:29', '2024-06-26 19:31:29');

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
  `remember_token` varchar(100) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(11, 'éc éc', 'a@gmail.com', NULL, '$2y$10$saWce4OlmidMEP2I6f2mged8oJNQ1MLfYoW7mcbHcHiKX9vX2ELGW', NULL, '2024-06-24 18:42:17', '2024-06-24 18:42:17'),
(12, 'Huỳnh Văn Lộc', '123hs@gmail.com', NULL, '$2y$10$d/D9rmPPiyadWgMiXXZ5S.Ray6PqLfQ9NniXOOcy0YpbdaAswS8/e', NULL, '2024-06-24 18:48:59', '2024-06-24 18:48:59'),
(13, 'Lộc', 'assd@gmail.com', NULL, '$2y$10$cxc5cVJo8RR4BTa5BAPlvuZJPRntq8ovESf3L7kZ/B3pJK71QHcea', NULL, '2024-06-24 19:05:25', '2024-06-24 19:05:25');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `auction_status`
--
ALTER TABLE `auction_status`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`),
  ADD KEY `categories_parent_id_foreign` (`parent_id`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `ownership_status`
--
ALTER TABLE `ownership_status`
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
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`),
  ADD KEY `products_ownership_status_id_foreign` (`ownership_status_id`),
  ADD KEY `user_id` (`user_id`);

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
-- AUTO_INCREMENT for table `auction_status`
--
ALTER TABLE `auction_status`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `ownership_status`
--
ALTER TABLE `ownership_status`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=51;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `categories`
--
ALTER TABLE `categories`
  ADD CONSTRAINT `categories_parent_id_foreign` FOREIGN KEY (`parent_id`) REFERENCES `categories` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `products`
--
ALTER TABLE `products`
  ADD CONSTRAINT `products_ownership_status_id_foreign` FOREIGN KEY (`ownership_status_id`) REFERENCES `ownership_status` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
