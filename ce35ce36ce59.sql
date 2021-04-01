-- phpMyAdmin SQL Dump
-- version 5.0.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Apr 01, 2021 at 12:15 PM
-- Server version: 10.4.17-MariaDB
-- PHP Version: 8.0.0

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `ce35ce36ce59`
--

-- --------------------------------------------------------

--
-- Table structure for table `courses`
--

CREATE TABLE `courses` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `desc` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `price` int(11) NOT NULL,
  `discount` int(11) NOT NULL,
  `length` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `active` tinyint(1) NOT NULL,
  `thumbnail` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `dayCreated` date NOT NULL,
  `resource` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `prerequisite` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `learning` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `courses`
--

INSERT INTO `courses` (`id`, `name`, `desc`, `price`, `discount`, `length`, `active`, `thumbnail`, `dayCreated`, `resource`, `prerequisite`, `learning`, `created_at`, `updated_at`) VALUES
(1, 'C language', 'Learn C language the easy way', 999, 10, '30 days - 1 hour a day', 1, 'img/1.jpg', '2021-03-29', 'CLanguage.pdf', 'Basic Programming Knowledge', 'C language', '2021-03-29 09:39:01', '2021-03-29 09:39:01'),
(2, 'C++ language', 'Cpp programming language', 500, 15, '30 days 1 hour a day', 1, 'img/2.png', '2021-03-29', 'CppLanguage.pdf', 'C language', 'C++ Programming language', '2021-03-29 13:41:53', '2021-03-29 13:41:53'),
(3, 'Java', 'Java Language', 600, 10, '30 Days - 1 hour per day', 1, 'img/3.jpg', '2021-03-29', 'JavaLanguage.pdf', 'Basic Programming Knowledge', 'Java language', '2021-03-29 14:07:37', '2021-03-29 14:07:37');

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(4, '2014_10_12_200000_add_two_factor_columns_to_users_table', 2),
(5, '2019_12_14_000001_create_personal_access_tokens_table', 2),
(6, '2021_03_27_174959_create_sessions_table', 2),
(7, '2021_03_28_071638_create_courses_table', 3),
(8, '2021_03_28_072742_create_user_courses_table', 4),
(9, '2021_03_29_180138_create_videos_table', 5);

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tokenable_type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tokenable_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `abilities` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `sessions`
--

CREATE TABLE `sessions` (
  `id` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `ip_address` varchar(45) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_agent` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `payload` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `last_activity` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `sessions`
--

INSERT INTO `sessions` (`id`, `user_id`, `ip_address`, `user_agent`, `payload`, `last_activity`) VALUES
('6tlfKCcki9cZxExxsEpFhvzaSJmMEuLKjpNpfkfw', NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/89.0.4389.90 Safari/537.36 Edg/89.0.774.63', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiZWZpdnYxUDV0enZycUpqRlJUNUw5dURCeWdreG50RE05SmVPZnlGaiI7czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MjE6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMCI7fX0=', 1617201856);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `two_factor_secret` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `two_factor_recovery_codes` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `two_factor_secret`, `two_factor_recovery_codes`, `remember_token`, `created_at`, `updated_at`) VALUES
(6, 'Jenil Mahyavanshi', 'jenilmahy25@gmail.com', NULL, '$2y$10$bYt86JdrfzJAwLN0T6cTzOG6p5zQv6ixR2wZPxH6gVSRj7yNIxO/i', NULL, NULL, NULL, '2021-03-31 09:10:18', '2021-03-31 09:10:18');

-- --------------------------------------------------------

--
-- Table structure for table `user_courses`
--

CREATE TABLE `user_courses` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `course_id` bigint(20) UNSIGNED NOT NULL,
  `dayCreated` date NOT NULL,
  `payment_status` tinyint(1) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `user_courses`
--

INSERT INTO `user_courses` (`id`, `user_id`, `course_id`, `dayCreated`, `payment_status`, `created_at`, `updated_at`) VALUES
(13, 6, 2, '2021-03-31', 1, '2021-03-31 09:12:21', '2021-03-31 09:12:21');

-- --------------------------------------------------------

--
-- Table structure for table `videos`
--

CREATE TABLE `videos` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `course_id` bigint(20) UNSIGNED NOT NULL,
  `serialnumber` int(11) NOT NULL,
  `link` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `videos`
--

INSERT INTO `videos` (`id`, `title`, `course_id`, `serialnumber`, `link`, `created_at`, `updated_at`) VALUES
(1, 'Introduction', 1, 1, 'CPjZKsUYSXg', '2021-03-29 18:14:15', '2021-03-29 18:14:15'),
(2, 'Installing GCC', 1, 2, '9_goo9L5Uko', '2021-03-29 18:14:15', '2021-03-29 18:14:15'),
(3, 'First Program in C', 1, 3, 'Rw_Pyzuv0Go', '2021-03-29 18:16:10', '2021-03-29 18:16:10'),
(4, 'Variables , Expressions , statements', 1, 4, 'Rwtsx0BfLxk', '2021-03-29 18:59:08', '2021-03-29 18:59:08'),
(5, 'Print variables using prinf', 1, 5, 'tPlT9mg7bkw', '2021-03-29 18:59:08', '2021-03-29 18:59:08'),
(6, 'Taking input from user', 1, 6, 'EA8K2d3USDc', '2021-03-29 19:17:22', '2021-03-29 19:17:22'),
(7, 'Arithmetic Expressions in C ', 1, 7, 'dJWewDL9jSY', '2021-03-29 19:17:22', '2021-03-29 19:17:22'),
(8, 'Basic type casting', 1, 8, 'i7zM3m-J_jk', '2021-03-29 19:17:22', '2021-03-29 19:17:22'),
(9, 'Working with strings', 1, 9, 'qarhSok42Ms', '2021-03-29 19:17:22', '2021-03-29 19:17:22'),
(10, 'Functions in C ', 1, 10, 'AMU3xDnECsU', '2021-03-29 19:17:22', '2021-03-29 19:17:22'),
(11, 'Comments in C', 1, 11, 'AcNKU77vyjg', '2021-03-29 19:17:22', '2021-03-29 19:17:22'),
(12, 'First C++ Program', 2, 1, '37GG-T6B7bc', '2021-03-31 07:17:12', '2021-03-31 07:17:12'),
(13, 'Data types in CPP', 2, 2, 'ATYsrD-jlxw', '2021-03-31 07:17:12', '2021-03-31 07:17:12'),
(14, 'Basic Input Output', 2, 3, 'I16GqVWJXKE', '2021-03-31 07:17:12', '2021-03-31 07:17:12'),
(15, 'Operators in CPP', 2, 4, 'WFy9SFJsAWQ', '2021-03-31 07:17:12', '2021-03-31 07:17:12'),
(16, 'Loops in CPP', 2, 5, 'MbEVFhucVa0', '2021-03-31 07:17:12', '2021-03-31 07:17:12'),
(17, 'Decision Making in CPP', 2, 6, 'Be2m9M3aPDI', '2021-03-31 07:17:12', '2021-03-31 07:17:12'),
(18, 'Switch Case in CPP', 2, 7, 'oxoBe04P8-w', '2021-03-31 07:17:12', '2021-03-31 07:17:12'),
(19, 'Functions in CPP', 2, 8, 'R0dGmkVf0b0', '2021-03-31 07:17:12', '2021-03-31 07:17:12'),
(20, 'Arrays in CPP', 2, 9, 'eOdNhPwOInc', '2021-03-31 07:17:12', '2021-03-31 07:17:12'),
(21, 'Strings in CPP', 2, 10, '3rDp0yOACZQ', '2021-03-31 07:17:12', NULL),
(22, 'Pointers in CPP', 2, 11, '_CaS-QkovH4', '2021-03-31 07:17:12', NULL),
(23, 'Pre and Post increment operators in CPP', 2, 12, '0CwgHphzaa0', '2021-03-31 07:17:12', NULL),
(24, 'Multidimensional arrays', 2, 13, 'eVSbSeJPkDA', '2021-03-31 07:17:12', NULL),
(25, 'Searching and sorting', 2, 14, 'QTjc0HYfjYg', '2021-03-31 07:17:12', NULL),
(26, 'Stack and queue using STL in CPP', 2, 15, 'fV_DchJem0U', '2021-03-31 07:17:12', NULL),
(27, 'Priority queue in CPP STL', 2, 16, 'vc7i0bBuQEM', '2021-03-31 07:17:12', NULL),
(28, 'Vectors in CPP STL', 2, 17, 'Y29tlyp_jBA', '2021-03-31 07:17:12', NULL),
(29, 'Iterators in CPP STL', 2, 18, 'krzOq7dFWUU', '2021-03-31 07:17:12', NULL),
(30, 'Heap in CPP STL', 2, 19, 'BtZIpzxjQf4', '2021-03-31 07:17:12', NULL),
(31, 'Set in CPP STL', 2, 20, 'YuZPHhniZtw', '2021-03-31 07:17:12', NULL),
(32, 'List in CPP STL', 2, 21, 'VcCRXrLFxyc', '2021-03-31 07:17:12', NULL),
(33, 'Pair in CPP STL', 2, 22, '4LG1H3x6-BQ', '2021-03-31 07:17:12', NULL),
(34, 'Multiset in CPP STL', 2, 23, 'xelzlR_OGnI', '2021-03-31 07:17:12', NULL),
(35, 'Map in CPP STL', 2, 24, 'kDwXAmLz47w', '2021-03-31 07:17:12', NULL),
(36, 'Identifiers and Tokens in Java', 3, 1, 'W_6zSjdwR7c', '2021-03-31 09:16:09', NULL),
(37, 'Keywords in Java', 3, 2, 'yLhVhi4rxsA', '2021-03-31 09:16:09', NULL),
(38, 'While Loop in Java', 3, 3, 'xBJ44A1FCTE', '2021-03-31 09:16:09', NULL),
(39, 'Do While Loop in Java', 3, 4, '8AmQkU9AhpU', '2021-03-31 09:16:09', NULL),
(40, 'For Loop in Java', 3, 5, 'JkSQ8KtOA14', '2021-03-31 09:16:09', NULL),
(41, 'For each Loop in Java', 3, 6, 'DUVqtwVJ3DI', '2021-03-31 09:16:09', NULL),
(42, 'If-Else in Java', 3, 7, 'LLQVi7kCuTA', '2021-03-31 09:16:09', NULL),
(43, 'Switch Case', 3, 8, 'Ptlafta8zTI', '2021-03-31 09:16:09', NULL),
(44, 'Break Continue', 3, 9, '4uqb7-QpOAc', '2021-03-31 09:16:09', NULL),
(45, 'Main method', 3, 10, '6hy_kiXlvnc', '2021-03-31 09:16:09', NULL),
(46, 'Inheritance in Java', 3, 11, 'kfZkCT9J2Q4', '2021-03-31 09:16:09', NULL),
(47, 'Method Overloading(part-i)', 3, 12, 'MHns-oaIHIs', '2021-03-31 09:16:09', NULL),
(48, 'Method Overriding(part-ii)', 3, 13, 'i6GzimCuFhM', '2021-03-31 09:16:09', NULL),
(49, 'Abstract Classes', 3, 14, 'DWmpxZ59JW0', '2021-03-31 09:16:09', NULL),
(50, 'Interfaces', 3, 15, '8ZdbOOCqEII', '2021-03-31 09:16:09', NULL),
(51, 'Packages', 3, 16, 'fhWCG4G1oHY', '2021-03-31 09:16:09', NULL),
(52, 'Uses of final Keyword', 3, 17, 'yz-BIVvLR9w', '2021-03-31 09:16:09', NULL);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `courses`
--
ALTER TABLE `courses`
  ADD PRIMARY KEY (`id`);

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
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- Indexes for table `user_courses`
--
ALTER TABLE `user_courses`
  ADD PRIMARY KEY (`id`),
  ADD KEY `user_courses_user_id_index` (`user_id`),
  ADD KEY `user_courses_course_id_index` (`course_id`);

--
-- Indexes for table `videos`
--
ALTER TABLE `videos`
  ADD PRIMARY KEY (`id`),
  ADD KEY `videos_course_id_index` (`course_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `courses`
--
ALTER TABLE `courses`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `user_courses`
--
ALTER TABLE `user_courses`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `videos`
--
ALTER TABLE `videos`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=53;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `user_courses`
--
ALTER TABLE `user_courses`
  ADD CONSTRAINT `user_courses_course_id_foreign` FOREIGN KEY (`course_id`) REFERENCES `courses` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `user_courses_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `videos`
--
ALTER TABLE `videos`
  ADD CONSTRAINT `videos_course_id_foreign` FOREIGN KEY (`course_id`) REFERENCES `courses` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
