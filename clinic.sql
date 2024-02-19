-- phpMyAdmin SQL Dump
-- version 5.2.1deb1ubuntu0.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Sep 30, 2023 at 06:58 AM
-- Server version: 8.0.34
-- PHP Version: 8.0.28

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `clinic`
--

-- --------------------------------------------------------

--
-- Table structure for table `noq_auth_assignment`
--

CREATE TABLE `noq_auth_assignment` (
  `item_name` varchar(64) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL,
  `user_id` varchar(64) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL,
  `created_at` int DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;

--
-- Dumping data for table `noq_auth_assignment`
--

INSERT INTO `noq_auth_assignment` (`item_name`, `user_id`, `created_at`) VALUES
('superAdmin', '1', 1630654228);

-- --------------------------------------------------------

--
-- Table structure for table `noq_auth_item`
--

CREATE TABLE `noq_auth_item` (
  `name` varchar(64) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL,
  `type` smallint NOT NULL,
  `description` text CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci,
  `rule_name` varchar(64) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `data` blob,
  `created_at` int DEFAULT NULL,
  `updated_at` int DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;

--
-- Dumping data for table `noq_auth_item`
--

INSERT INTO `noq_auth_item` (`name`, `type`, `description`, `rule_name`, `data`, `created_at`, `updated_at`) VALUES
('hasAccessOnAbrsa', 2, '', 'hasAccessOnAbrsa', NULL, 1567801510, 1567801633),
('superAdmin', 1, 'مدیر', NULL, NULL, 1514612995, 1514612995),
('user', 1, 'کاربر', NULL, NULL, 1514612995, 1514612995);

-- --------------------------------------------------------

--
-- Table structure for table `noq_auth_item_child`
--

CREATE TABLE `noq_auth_item_child` (
  `parent` varchar(64) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL,
  `child` varchar(64) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `noq_auth_rule`
--

CREATE TABLE `noq_auth_rule` (
  `name` varchar(64) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL,
  `data` blob,
  `created_at` int DEFAULT NULL,
  `updated_at` int DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;

--
-- Dumping data for table `noq_auth_rule`
--

INSERT INTO `noq_auth_rule` (`name`, `data`, `created_at`, `updated_at`) VALUES
('hasAccessOnAbrsa', 0x4f3a33313a22636f6d6d6f6e5c72756c65735c416272736148617341636365737352756c65223a333a7b733a343a226e616d65223b733a31363a226861734163636573734f6e4162727361223b733a393a22637265617465644174223b693a313536373830313435353b733a393a22757064617465644174223b693a313536373830313435353b7d, 1567801455, 1567801455);

-- --------------------------------------------------------

--
-- Table structure for table `noq_migration`
--

CREATE TABLE `noq_migration` (
  `version` varchar(180) CHARACTER SET utf8mb3 COLLATE utf8mb3_persian_ci NOT NULL,
  `apply_time` int DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_persian_ci;

--
-- Dumping data for table `noq_migration`
--

INSERT INTO `noq_migration` (`version`, `apply_time`) VALUES
('m000000_000000_base', 1510059037),
('m140209_132017_init', 1510059044),
('m140403_174025_create_account_table', 1510059050),
('m140504_113157_update_tables', 1510059056),
('m140504_130429_create_token_table', 1510059058),
('m140506_102106_rbac_init', 1510061225),
('m140830_171933_fix_ip_field', 1510059060),
('m140830_172703_change_account_table_name', 1510059060),
('m141222_110026_update_ip_field', 1510059061),
('m141222_135246_alter_username_length', 1510059064),
('m150614_103145_update_social_account_table', 1510059068),
('m150623_212711_fix_username_notnull', 1510059068),
('m151218_234654_add_timezone_to_profile', 1510059069),
('m160929_103127_add_last_login_at_to_user_table', 1510059070),
('m170907_052038_rbac_add_index_on_auth_assignment_user_id', 1510061226);

-- --------------------------------------------------------

--
-- Table structure for table `noq_patient`
--

CREATE TABLE `noq_patient` (
  `id` int NOT NULL,
  `user_id` int NOT NULL,
  `first_name` varchar(20) COLLATE utf8mb3_persian_ci NOT NULL,
  `last_name` varchar(20) COLLATE utf8mb3_persian_ci NOT NULL,
  `image` varchar(32) COLLATE utf8mb3_persian_ci NOT NULL,
  `created_at` int DEFAULT NULL,
  `updated_at` int DEFAULT NULL,
  `is_deleted` tinyint(1) NOT NULL DEFAULT '0',
  `deleted_at` int DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_persian_ci;

--
-- Dumping data for table `noq_patient`
--

INSERT INTO `noq_patient` (`id`, `user_id`, `first_name`, `last_name`, `image`, `created_at`, `updated_at`, `is_deleted`, `deleted_at`) VALUES
(12, 55, 'امین', 'شفیعی', '6278bac3ca11c.png', 1652079299, 1652079299, 0, NULL),
(13, 56, 'ali', 'moradi', '6279ec8ceb209.jpg', 1652157580, 1652157580, 0, NULL),
(14, 57, 'محمد', 'احمدی', '6279ecbb345c1.jpg', 1652157627, 1652157627, 0, NULL),
(15, 58, 'lkk;lk;l', ';lk;l', '627a1edb4a761.png', 1652170459, 1652170459, 1, 1652248369),
(21, 63, 'mor', 'dfkj', '627b4c4abce96.jpg', 1652247626, 1652247626, 1, 1652247851);

-- --------------------------------------------------------

--
-- Table structure for table `noq_profile`
--

CREATE TABLE `noq_profile` (
  `user_id` int NOT NULL,
  `name` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `public_email` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `gravatar_email` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `gravatar_id` varchar(32) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `location` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `website` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `bio` text CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci,
  `timezone` varchar(40) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;

--
-- Dumping data for table `noq_profile`
--

INSERT INTO `noq_profile` (`user_id`, `name`, `public_email`, `gravatar_email`, `gravatar_id`, `location`, `website`, `bio`, `timezone`) VALUES
(1, 'Amin Shafiee', 'amin.shafiee@gmail.com', NULL, NULL, NULL, NULL, NULL, NULL),
(55, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(56, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(57, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(58, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(59, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(60, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(61, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(62, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(63, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `noq_turn`
--

CREATE TABLE `noq_turn` (
  `id` int NOT NULL,
  `user_id` int NOT NULL,
  `date` int NOT NULL,
  `time` time NOT NULL,
  `type` tinyint NOT NULL,
  `created_at` int DEFAULT NULL,
  `updated_at` int DEFAULT NULL,
  `is_deleted` tinyint(1) NOT NULL DEFAULT '0',
  `deleted_at` int DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_persian_ci;

--
-- Dumping data for table `noq_turn`
--

INSERT INTO `noq_turn` (`id`, `user_id`, `date`, `time`, `type`, `created_at`, `updated_at`, `is_deleted`, `deleted_at`) VALUES
(1, 55, 1652124600, '10:00:00', 1, 1652135856, 1652124600, 0, NULL),
(4, 55, 1652038200, '10:00:00', 0, 1652123496, 1652123496, 0, NULL),
(5, 55, 1652211000, '11:30:00', 0, 1652134352, 1652166457, 0, NULL),
(6, 55, 1652211000, '11:00:00', 0, 1652254006, 1652254006, 0, NULL),
(7, 57, 1652211000, '11:00:00', 0, 1652254022, 1652254022, 0, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `noq_turn_time`
--

CREATE TABLE `noq_turn_time` (
  `id` int NOT NULL,
  `time` time NOT NULL,
  `is_deleted` tinyint NOT NULL DEFAULT '0',
  `deleted_at` int DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_persian_ci;

--
-- Dumping data for table `noq_turn_time`
--

INSERT INTO `noq_turn_time` (`id`, `time`, `is_deleted`, `deleted_at`) VALUES
(1, '09:00:00', 0, NULL),
(2, '09:30:00', 0, NULL),
(3, '10:00:00', 0, NULL),
(4, '10:30:00', 0, NULL),
(5, '11:00:00', 0, NULL),
(6, '11:30:00', 0, NULL),
(7, '12:00:00', 0, NULL),
(8, '12:30:00', 0, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `noq_user`
--

CREATE TABLE `noq_user` (
  `id` int NOT NULL,
  `username` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL,
  `email` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `password_hash` varchar(60) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `auth_key` varchar(32) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL,
  `confirmed_at` int DEFAULT NULL,
  `unconfirmed_email` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `blocked_at` int DEFAULT NULL,
  `registration_ip` varchar(45) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `created_at` int NOT NULL,
  `updated_at` int NOT NULL,
  `flags` int NOT NULL DEFAULT '0',
  `last_login_at` int DEFAULT NULL,
  `last_login_point` tinyint DEFAULT NULL,
  `platform` tinyint NOT NULL DEFAULT '0',
  `token` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_persian_ci DEFAULT NULL,
  `status` int NOT NULL DEFAULT '10',
  `authenticator` varchar(60) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `identity_verified` tinyint(1) NOT NULL DEFAULT '0',
  `allowance` int NOT NULL DEFAULT '0',
  `allowance_updated_at` int UNSIGNED NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;

--
-- Dumping data for table `noq_user`
--

INSERT INTO `noq_user` (`id`, `username`, `email`, `password_hash`, `auth_key`, `confirmed_at`, `unconfirmed_email`, `blocked_at`, `registration_ip`, `created_at`, `updated_at`, `flags`, `last_login_at`, `last_login_point`, `platform`, `token`, `status`, `authenticator`, `identity_verified`, `allowance`, `allowance_updated_at`) VALUES
(1, 'admin', 'admin@admin.com', '$2y$13$UOlvmyMqMiDT8xBAOC0APeQqolSZPoXjkSFdpHnG0GrcsdNOzZN/q', 'bpxBEZTOhVdLbPJz1Kq7oz3m9C7W_UcZ', 1488550245, NULL, NULL, '::1', 1488550245, 1516037649, 0, 1693224201, 0, 0, NULL, 10, NULL, 0, 0, 0),
(55, '09162466066', '', NULL, 'FJ8KZq4qWSBG6wOY30cACj_8H7fOkGyG', NULL, NULL, NULL, '127.0.0.1', 1652079299, 1652079299, 0, NULL, NULL, 0, NULL, 10, NULL, 0, 0, 0),
(56, '09037122914', '', NULL, 'T-ONBoxBEfNjmuwvOR4OWZ1X4mfORix_', NULL, NULL, NULL, '127.0.0.1', 1652157580, 1652157580, 0, NULL, NULL, 0, NULL, 10, NULL, 0, 0, 0),
(57, '09027122914', '', NULL, 'Q_Po5NTRG3iKSAIJc3P2nrcxCWt9QJ0h', NULL, NULL, NULL, '127.0.0.1', 1652157627, 1652157627, 0, NULL, NULL, 0, NULL, 10, NULL, 0, 0, 0),
(58, '09456789898', '', NULL, 'rFomCO7FKIW31toTzm59FqMRe9KNBhv1', NULL, NULL, NULL, '127.0.0.1', 1652170459, 1652170459, 0, NULL, NULL, 0, NULL, 10, NULL, 0, 0, 0),
(59, '09543456565', '', NULL, 'WgMnqF-UP4TJghkhfE-Rdux_9igoKxT1', NULL, NULL, NULL, '127.0.0.1', 1652170556, 1652170556, 0, NULL, NULL, 0, NULL, 10, NULL, 0, 0, 0),
(60, '09457654343', '', NULL, 'SNkqCRE_OLo-wiOMv9w49-ONyppo-Wj_', NULL, NULL, NULL, '127.0.0.1', 1652170594, 1652170594, 0, NULL, NULL, 0, NULL, 10, NULL, 0, 0, 0),
(61, '09765432121', '', NULL, 'Ep8AdtLMWY6OO9K41FdR0nGHtL0K0PG8', NULL, NULL, NULL, '127.0.0.1', 1652170854, 1652170854, 0, NULL, NULL, 0, NULL, 10, NULL, 0, 0, 0),
(62, '09875447646', '', NULL, 'xjIMTCYHYXu3W1i3QvYKeH7NKfwurFdE', NULL, NULL, NULL, '127.0.0.1', 1652177403, 1652177403, 0, NULL, NULL, 0, NULL, 10, NULL, 0, 0, 0),
(63, '08764535555', '', NULL, '9KmbV6kZh8uV0hcnjro_CbdubG3OkEsV', NULL, NULL, NULL, '127.0.0.1', 1652178355, 1652178355, 0, NULL, NULL, 0, NULL, 10, NULL, 0, 0, 0);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `noq_auth_assignment`
--
ALTER TABLE `noq_auth_assignment`
  ADD PRIMARY KEY (`item_name`,`user_id`),
  ADD KEY `auth_assignment_user_id_idx` (`user_id`);

--
-- Indexes for table `noq_auth_item`
--
ALTER TABLE `noq_auth_item`
  ADD PRIMARY KEY (`name`),
  ADD KEY `rule_name` (`rule_name`),
  ADD KEY `idx-auth_item-type` (`type`);

--
-- Indexes for table `noq_auth_item_child`
--
ALTER TABLE `noq_auth_item_child`
  ADD PRIMARY KEY (`parent`,`child`),
  ADD KEY `child` (`child`);

--
-- Indexes for table `noq_auth_rule`
--
ALTER TABLE `noq_auth_rule`
  ADD PRIMARY KEY (`name`);

--
-- Indexes for table `noq_migration`
--
ALTER TABLE `noq_migration`
  ADD PRIMARY KEY (`version`);

--
-- Indexes for table `noq_patient`
--
ALTER TABLE `noq_patient`
  ADD PRIMARY KEY (`id`),
  ADD KEY `user_id` (`user_id`);

--
-- Indexes for table `noq_profile`
--
ALTER TABLE `noq_profile`
  ADD PRIMARY KEY (`user_id`);

--
-- Indexes for table `noq_turn`
--
ALTER TABLE `noq_turn`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id` (`id`,`user_id`),
  ADD KEY `user_id` (`user_id`);

--
-- Indexes for table `noq_turn_time`
--
ALTER TABLE `noq_turn_time`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `noq_user`
--
ALTER TABLE `noq_user`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `user_unique_username` (`username`) USING BTREE;

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `noq_patient`
--
ALTER TABLE `noq_patient`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT for table `noq_turn`
--
ALTER TABLE `noq_turn`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `noq_turn_time`
--
ALTER TABLE `noq_turn_time`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `noq_user`
--
ALTER TABLE `noq_user`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=64;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `noq_auth_assignment`
--
ALTER TABLE `noq_auth_assignment`
  ADD CONSTRAINT `noq_auth_assignment_ibfk_1` FOREIGN KEY (`item_name`) REFERENCES `noq_auth_item` (`name`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `noq_auth_item`
--
ALTER TABLE `noq_auth_item`
  ADD CONSTRAINT `noq_auth_item_ibfk_1` FOREIGN KEY (`rule_name`) REFERENCES `noq_auth_rule` (`name`) ON DELETE SET NULL ON UPDATE CASCADE;

--
-- Constraints for table `noq_auth_item_child`
--
ALTER TABLE `noq_auth_item_child`
  ADD CONSTRAINT `noq_auth_item_child_ibfk_1` FOREIGN KEY (`parent`) REFERENCES `noq_auth_item` (`name`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `noq_auth_item_child_ibfk_2` FOREIGN KEY (`child`) REFERENCES `noq_auth_item` (`name`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `noq_patient`
--
ALTER TABLE `noq_patient`
  ADD CONSTRAINT `noq_patient_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `noq_user` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT;

--
-- Constraints for table `noq_turn`
--
ALTER TABLE `noq_turn`
  ADD CONSTRAINT `noq_turn_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `noq_user` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
