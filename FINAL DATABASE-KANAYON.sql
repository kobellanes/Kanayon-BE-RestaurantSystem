-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 22, 2023 at 03:59 AM
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
  `isPassword` varchar(100) NOT NULL,
  `isGcash` varchar(30) NOT NULL,
  `isStatus` varchar(30) NOT NULL DEFAULT 'ACTIVE',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `accounts`
--

INSERT INTO `accounts` (`id`, `isFirst`, `isLast`, `isAddress`, `isEmail`, `isPassword`, `isGcash`, `isStatus`, `created_at`, `updated_at`) VALUES
(62, '', '', '', 'admin@gmail.com', '$2a$10$VC1JNMGs5vmQXyeLRuE.t.9iP.zQ7I5l4VeW0HFZ5xZci.UYp/cri', '', 'ADMIN', '2023-05-14 23:33:48', '2023-05-17 22:38:31'),
(63, '', '', '', 'backup@gmail.com', '$2a$10$H4nx9X06MhiJB122rdNX2O4fuiW7FmgEHAxSYtZ/hLP/Q.8V2oJ8y', '', 'ADMIN', '2023-05-14 23:51:36', '2023-05-14 23:51:36'),
(64, 'qwe', 'qwe', 'qwe', 'qwe@yahoo.com', '$2a$10$MzqM5xTXGmfTVoo6QvEYquuBzTmcVWhV/dF9/zGNkrkuHTe4imem6', '+63 966 666 6666', 'ACTIVE', '2023-05-14 23:58:33', '2023-05-17 17:55:52'),
(65, 'Try', 'Try', 'TRYTRYTRY', 'qweqwe@yahoo.com', '$2a$10$GQ1CIY1Ks51VwGnyAaDOQu1hbH6R0Ca2qZTuFUtsLLC.UlIUr6Lm.', '+63 999 999 9999', 'BANNED', '2023-05-15 05:31:28', '2023-05-15 05:52:57'),
(66, 'NEw', 'ACCOUNT', 'NEW ACCOUNT', 'newaccount@gmail.com', '$2a$10$HK2DYQS69T6vRTOOHl.k3O5bZEEe79a4tGJxZ//zSljaXlFtOvYFm', '+63 999 999 9999', 'ACTIVE', '2023-05-15 12:46:06', '2023-05-17 17:54:28'),
(67, 'Try', 'TRY', 'TRy', 'try@yahoo.com', '$2a$10$EwEZSFj3XkkxiwUh0XhEtuxcjTlIOtj4pJNUd0oXKpKypVtOzYqUa', '+63 999 999 9999', 'ACTIVE', '2023-05-19 06:03:29', '2023-05-19 06:03:29');

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
(52, 'http://res.cloudinary.com/dkaekfiuz/image/upload/v1683532964/wwx40cbfjfc4mv91vyh4.jpg', 'Paa Inasal', 'Paa Chicken Inasal with 1 rice', 199, 50, 0, 10, '2023-05-08 00:02:45', '2023-05-14 17:32:37'),
(55, 'http://res.cloudinary.com/dkaekfiuz/image/upload/v1683547546/trzni3wwzpan5jrvwdj8.jpg', 'Pecho Inasal', 'Pecho Chicken Inasal with 1 rice', 500, 50, 0, 2, '2023-05-08 04:05:54', '2023-05-12 14:30:43'),
(56, 'http://res.cloudinary.com/dkaekfiuz/image/upload/v1683547562/sberrujdocwx8fwqkivm.jpg', 'Halo-Halo', 'Extra creamy halo-halo with ice cream, leche flan and ube', 500, 50, 0, 0, '2023-05-08 04:06:06', '2023-05-13 07:08:15'),
(58, 'http://res.cloudinary.com/dkaekfiuz/image/upload/v1683595051/wujskmwa6jegxllsra4u.jpg', 'Sisig', 'Kanayon Sisig with 1 rice', 300, 50, 0, 2, '2023-05-08 17:17:35', '2023-05-13 07:11:32'),
(63, 'http://res.cloudinary.com/dkaekfiuz/image/upload/v1683602292/eoqb1cw5f7izjaixhooi.jpg', 'Liempo', 'Liempo with 1 rice', 500, 50, 0, 2, '2023-05-08 19:18:17', '2023-05-13 07:14:42');

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
(6, '2023_05_06_133729_create_menus_table', 2),
(7, '2023_05_13_065525_create_orders_table', 3);

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_isName` varchar(100) NOT NULL,
  `user_isAddress` varchar(100) NOT NULL,
  `user_isEmail` varchar(50) NOT NULL,
  `user_isGcash` varchar(20) NOT NULL,
  `order_isList` varchar(500) NOT NULL,
  `order_isPrice` int(20) NOT NULL,
  `order_isMethod` varchar(30) NOT NULL,
  `isStatus` varchar(40) NOT NULL DEFAULT 'PENDING ORDER',
  `date` date DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `orders`
--

INSERT INTO `orders` (`id`, `user_isName`, `user_isAddress`, `user_isEmail`, `user_isGcash`, `order_isList`, `order_isPrice`, `order_isMethod`, `isStatus`, `date`, `created_at`, `updated_at`) VALUES
(30, 'Try Try', 'TRYTRYTRY', 'qweqwe@yahoo.com', '+63 999 999 9999', '2x—Paa Inasal', 448, 'Delivery', 'RECEIVED PAYMENT', '2023-05-16', '2023-05-15 05:32:09', '2023-05-15 15:30:55'),
(31, 'qwe qwe', 'qwe', 'qwe@yahoo.com', '+63 999 999 9999', '2x—Paa Inasal', 448, 'Delivery', 'ORDER CANCELLED', '2023-05-16', '2023-05-15 06:58:25', '2023-05-15 07:17:52'),
(32, 'qwe qwe', 'qwe', 'qwe@yahoo.com', '+63 999 999 9999', '3x—Pecho Inasal', 1500, 'Dine in', 'PENDING ORDER', '2023-05-16', '2023-05-15 12:44:41', '2023-05-15 12:44:41'),
(33, 'qwe qwe', 'qwe', 'qwe@yahoo.com', '+63 966 666 6666', '2x—Halo-Halo,  2x—Sisig', 1650, 'Delivery', 'COMPLETED ORDER', '2023-05-16', '2023-05-15 12:44:54', '2023-05-15 16:18:49'),
(34, 'NEw ACCOUNT', 'NEW ACCOUNT', 'newaccount@gmail.com', '+63 999 999 9999', '5x—Paa Inasal,  2x—Liempo', 2045, 'Delivery', 'PENDING ORDER', '2023-05-16', '2023-05-15 12:46:32', '2023-05-15 12:46:32'),
(35, 'NEw ACCOUNT', 'NEW ACCOUNT', 'newaccount@gmail.com', '+63 999 999 9999', '2x—Halo-Halo,  2x—Pecho Inasal', 2000, 'Dine in', 'RECEIVED PAYMENT', '2023-05-16', '2023-05-15 12:46:44', '2023-05-15 15:33:11');

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
-- Indexes for table `orders`
--
ALTER TABLE `orders`
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
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=68;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `menus`
--
ALTER TABLE `menus`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=66;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=36;

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
