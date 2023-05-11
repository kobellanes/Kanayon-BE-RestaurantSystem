-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 11, 2023 at 04:55 AM
-- Server version: 10.4.27-MariaDB
-- PHP Version: 8.0.25

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `db_kanayon`
--

-- --------------------------------------------------------

--
-- Table structure for table `accounts`
--

CREATE TABLE `accounts` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `isFirst` varchar(50) NOT NULL,
  `isLast` varchar(50) NOT NULL,
  `isAddress` varchar(100) NOT NULL,
  `isEmail` varchar(50) NOT NULL,
  `isPassword` varchar(50) NOT NULL,
  `isGcash` varchar(30) NOT NULL,
  `isStatus` varchar(30) NOT NULL DEFAULT 'ACTIVE',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `accounts`
--

INSERT INTO `accounts` (`id`, `isFirst`, `isLast`, `isAddress`, `isEmail`, `isPassword`, `isGcash`, `isStatus`, `created_at`, `updated_at`) VALUES
(1, '', '', '', 'admin@gmail.com', 'admin12345', '0', 'ADMIN', '2023-05-03 10:19:37', '2023-05-03 10:19:37'),
(53, 'Try', 'Try', 'BBBBB2222333', 'kobe@yahoo.com', 'qweqwe123', '+63 999 999 9999', 'BANNED', '2023-05-07 22:08:07', '2023-05-08 04:58:58'),
(55, 'ban', 'qwe', 'qwe', 'wqe@yahoo.com', '123123123', '+63 999 999 9999', 'ACTIVE', '2023-05-08 02:46:36', '2023-05-08 04:54:10'),
(56, 'Banned', 'user', 'TRYTRYTRY', 'banneduser@gmail.com', '123456789', '+63 999 999 9999', 'BANNED', '2023-05-08 04:59:59', '2023-05-08 05:01:29'),
(58, 'ILL', 'ILL', 'QWE', 'qweqwe1@gmail.com', '12345678', '+63 999 999 9999', 'ACTIVE', '2023-05-08 05:00:50', '2023-05-08 05:00:50');

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
-- Table structure for table `menus`
--

CREATE TABLE `menus` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `menu_pic` varchar(100) NOT NULL,
  `menu_name` varchar(50) NOT NULL,
  `menu_description` varchar(200) NOT NULL,
  `menu_price` int(20) NOT NULL,
  `menu_quantity` int(20) NOT NULL,
  `menu_isEdit` int(10) NOT NULL DEFAULT 0,
  `menu_isSold` int(10) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `menus`
--

INSERT INTO `menus` (`id`, `menu_pic`, `menu_name`, `menu_description`, `menu_price`, `menu_quantity`, `menu_isEdit`, `menu_isSold`, `created_at`, `updated_at`) VALUES
(52, 'http://res.cloudinary.com/dkaekfiuz/image/upload/v1683532964/wwx40cbfjfc4mv91vyh4.jpg', 'Paa Inasal', 'Paa Chicken Inasal with 1 rice', 199, 200, 0, 0, '2023-05-08 00:02:45', '2023-05-08 17:39:49'),
(55, 'http://res.cloudinary.com/dkaekfiuz/image/upload/v1683547546/trzni3wwzpan5jrvwdj8.jpg', 'Pecho Inasal', 'Pecho Chicken Inasal with 1 rice', 500, 25, 0, 0, '2023-05-08 04:05:54', '2023-05-08 19:17:53'),
(56, 'http://res.cloudinary.com/dkaekfiuz/image/upload/v1683547562/sberrujdocwx8fwqkivm.jpg', 'Halo-Halo', 'Extra creamy halo-halo with ice cream, leche flan and ube', 500, 50, 0, 0, '2023-05-08 04:06:06', '2023-05-08 17:39:57'),
(58, 'http://res.cloudinary.com/dkaekfiuz/image/upload/v1683595051/wujskmwa6jegxllsra4u.jpg', 'Sisig', 'Kanayon Sisig with 1 rice', 300, 50, 0, 0, '2023-05-08 17:17:35', '2023-05-08 17:40:03'),
(63, 'http://res.cloudinary.com/dkaekfiuz/image/upload/v1683602292/eoqb1cw5f7izjaixhooi.jpg', 'Liempo', 'Liempo with 1 rice', 500, 5, 0, 0, '2023-05-08 19:18:17', '2023-05-08 19:18:17'),
(64, 'http://res.cloudinary.com/dkaekfiuz/image/upload/v1683773410/z0xlgmnum0n8gksxrphy.png', 'qweqw', 'qweqweqweeq', 31231, 123, 0, 0, '2023-05-10 18:50:23', '2023-05-10 18:50:23');

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
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(4, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(5, '2023_05_03_101153_create_accounts_table', 1),
(6, '2023_05_06_133729_create_menus_table', 2);

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
  `abilities` text DEFAULT NULL,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `expires_at` timestamp NULL DEFAULT NULL,
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
  `remember_token` varchar(100) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `accounts`
--
ALTER TABLE `accounts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indexes for table `menus`
--
ALTER TABLE `menus`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD PRIMARY KEY (`email`);

--
-- Indexes for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

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
-- AUTO_INCREMENT for table `accounts`
--
ALTER TABLE `accounts`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=59;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `menus`
--
ALTER TABLE `menus`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=65;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
