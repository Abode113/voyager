-- phpMyAdmin SQL Dump
-- version 4.8.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Feb 22, 2019 at 06:22 PM
-- Server version: 10.1.34-MariaDB
-- PHP Version: 7.2.7

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `angular1`
--

-- --------------------------------------------------------

--
-- Table structure for table `data_rows`
--

CREATE TABLE `data_rows` (
  `id` int(10) UNSIGNED NOT NULL,
  `data_type_id` int(10) UNSIGNED NOT NULL,
  `field` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `display_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `required` tinyint(1) NOT NULL DEFAULT '0',
  `browse` tinyint(1) NOT NULL DEFAULT '1',
  `read` tinyint(1) NOT NULL DEFAULT '1',
  `edit` tinyint(1) NOT NULL DEFAULT '1',
  `add` tinyint(1) NOT NULL DEFAULT '1',
  `delete` tinyint(1) NOT NULL DEFAULT '1',
  `details` text COLLATE utf8mb4_unicode_ci,
  `order` int(11) NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `data_rows`
--

INSERT INTO `data_rows` (`id`, `data_type_id`, `field`, `type`, `display_name`, `required`, `browse`, `read`, `edit`, `add`, `delete`, `details`, `order`) VALUES
(1, 1, 'id', 'number', 'ID', 1, 0, 0, 0, 0, 0, NULL, 1),
(2, 1, 'name', 'text', 'Name', 1, 1, 1, 1, 1, 1, NULL, 2),
(3, 1, 'email', 'text', 'Email', 1, 1, 1, 1, 1, 1, NULL, 3),
(4, 1, 'password', 'password', 'Password', 1, 0, 0, 1, 1, 0, NULL, 4),
(5, 1, 'remember_token', 'text', 'Remember Token', 0, 0, 0, 0, 0, 0, NULL, 5),
(6, 1, 'created_at', 'timestamp', 'Created At', 0, 1, 1, 0, 0, 0, NULL, 6),
(7, 1, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, NULL, 7),
(8, 1, 'avatar', 'image', 'Avatar', 0, 1, 1, 1, 1, 1, NULL, 8),
(9, 1, 'user_belongsto_role_relationship', 'relationship', 'Role', 0, 1, 1, 1, 1, 0, '{\"model\":\"TCG\\\\Voyager\\\\Models\\\\Role\",\"table\":\"roles\",\"type\":\"belongsTo\",\"column\":\"role_id\",\"key\":\"id\",\"label\":\"display_name\",\"pivot_table\":\"roles\",\"pivot\":0}', 10),
(10, 1, 'user_belongstomany_role_relationship', 'relationship', 'Roles', 0, 1, 1, 1, 1, 0, '{\"model\":\"TCG\\\\Voyager\\\\Models\\\\Role\",\"table\":\"roles\",\"type\":\"belongsToMany\",\"column\":\"id\",\"key\":\"id\",\"label\":\"display_name\",\"pivot_table\":\"user_roles\",\"pivot\":\"1\",\"taggable\":\"0\"}', 11),
(11, 1, 'locale', 'text', 'Locale', 0, 1, 1, 1, 1, 0, NULL, 12),
(12, 1, 'settings', 'hidden', 'Settings', 0, 0, 0, 0, 0, 0, NULL, 12),
(13, 2, 'id', 'number', 'ID', 1, 0, 0, 0, 0, 0, NULL, 1),
(14, 2, 'name', 'text', 'Name', 1, 1, 1, 1, 1, 1, NULL, 2),
(15, 2, 'created_at', 'timestamp', 'Created At', 0, 0, 0, 0, 0, 0, NULL, 3),
(16, 2, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, NULL, 4),
(17, 3, 'id', 'number', 'ID', 1, 0, 0, 0, 0, 0, NULL, 1),
(18, 3, 'name', 'text', 'Name', 1, 1, 1, 1, 1, 1, NULL, 2),
(19, 3, 'created_at', 'timestamp', 'Created At', 0, 0, 0, 0, 0, 0, NULL, 3),
(20, 3, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, NULL, 4),
(21, 3, 'display_name', 'text', 'Display Name', 1, 1, 1, 1, 1, 1, NULL, 5),
(22, 1, 'role_id', 'text', 'Role', 1, 1, 1, 1, 1, 1, NULL, 9),
(90, 20, 'id', 'text', 'Id', 1, 0, 0, 0, 0, 0, '{}', 1),
(91, 20, 'name_2', 'text', 'Name 2', 0, 1, 1, 1, 1, 1, '{}', 2),
(92, 20, 'created_at', 'timestamp', 'Created At', 0, 1, 1, 1, 0, 1, '{}', 3),
(93, 20, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, '{}', 4),
(94, 20, 'two_id', 'text', 'Two Id', 0, 1, 1, 1, 1, 1, '{}', 5),
(95, 21, 'id', 'text', 'Id', 1, 0, 0, 0, 0, 0, '{}', 1),
(96, 21, 'name_1', 'text', 'Name 1', 0, 1, 1, 1, 1, 1, '{}', 2),
(97, 21, 'created_at', 'timestamp', 'Created At', 0, 1, 1, 1, 0, 1, '{}', 3),
(98, 21, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, '{}', 4),
(99, 21, 'ttwo_id', 'text', 'Ttwo Id', 0, 1, 1, 1, 1, 1, '{}', 5),
(100, 21, 'two_test_hasmany_ttwo_test_relationship', 'relationship', 'ttwo_tests', 0, 1, 1, 1, 1, 1, '{\"model\":\"App\\\\TtwoTest\",\"table\":\"ttwo_tests\",\"type\":\"hasMany\",\"column\":\"two_id\",\"key\":\"id\",\"label\":\"name_2\",\"pivot_table\":\"answers\",\"pivot\":\"0\",\"taggable\":null}', 6),
(101, 20, 'ttwo_test_belongsto_two_test_relationship', 'relationship', 'two_tests', 0, 1, 1, 1, 1, 1, '{\"model\":\"App\\\\TwoTest\",\"table\":\"two_tests\",\"type\":\"belongsTo\",\"column\":\"two_id\",\"key\":\"id\",\"label\":\"name_1\",\"pivot_table\":\"answers\",\"pivot\":\"0\",\"taggable\":null}', 6),
(104, 22, 'id', 'text', 'Id', 1, 0, 0, 0, 0, 0, '{}', 1),
(105, 22, 'Model_name', 'text', 'Model Name', 0, 1, 1, 1, 1, 1, '{}', 2),
(106, 22, 'created_at', 'timestamp', 'Created At', 0, 1, 1, 1, 0, 1, '{}', 3),
(107, 22, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, '{}', 4),
(108, 23, 'id', 'text', 'Id', 1, 0, 0, 0, 0, 0, '{}', 1),
(109, 23, 'Question_text', 'text', 'Question Text', 0, 1, 1, 1, 1, 1, '{}', 2),
(110, 23, 'Model_id', 'text', 'Model Id', 0, 1, 1, 1, 1, 1, '{}', 3),
(111, 23, 'created_at', 'timestamp', 'Created At', 0, 1, 1, 1, 0, 1, '{}', 4),
(112, 23, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, '{}', 5),
(118, 22, 'moddel_hasmany_question_relationship', 'relationship', 'questions', 0, 1, 1, 1, 1, 1, '{\"model\":\"App\\\\Question\",\"table\":\"questions\",\"type\":\"hasMany\",\"column\":\"model_id\",\"key\":\"id\",\"label\":\"question_text\",\"pivot_table\":\"data_rows\",\"pivot\":\"0\",\"taggable\":\"0\"}', 5),
(119, 23, 'question_belongsto_moddel_relationship', 'relationship', 'moddels', 0, 1, 1, 1, 1, 1, '{\"model\":\"App\\\\Moddel\",\"table\":\"moddels\",\"type\":\"belongsTo\",\"column\":\"Model_id\",\"key\":\"id\",\"label\":\"model_name\",\"pivot_table\":\"data_rows\",\"pivot\":\"0\",\"taggable\":\"0\"}', 6);

-- --------------------------------------------------------

--
-- Table structure for table `data_types`
--

CREATE TABLE `data_types` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `display_name_singular` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `display_name_plural` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `icon` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `model_name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `policy_name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `controller` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `generate_permissions` tinyint(1) NOT NULL DEFAULT '0',
  `server_side` tinyint(4) NOT NULL DEFAULT '0',
  `details` text COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `data_types`
--

INSERT INTO `data_types` (`id`, `name`, `slug`, `display_name_singular`, `display_name_plural`, `icon`, `model_name`, `policy_name`, `controller`, `description`, `generate_permissions`, `server_side`, `details`, `created_at`, `updated_at`) VALUES
(1, 'users', 'users', 'User', 'Users', 'voyager-person', 'TCG\\Voyager\\Models\\User', 'TCG\\Voyager\\Policies\\UserPolicy', '', '', 1, 0, NULL, '2019-02-21 14:44:24', '2019-02-21 14:44:24'),
(2, 'menus', 'menus', 'Menu', 'Menus', 'voyager-list', 'TCG\\Voyager\\Models\\Menu', NULL, '', '', 1, 0, NULL, '2019-02-21 14:44:26', '2019-02-21 14:44:26'),
(3, 'roles', 'roles', 'Role', 'Roles', 'voyager-lock', 'TCG\\Voyager\\Models\\Role', NULL, '', '', 1, 0, NULL, '2019-02-21 14:44:26', '2019-02-21 14:44:26'),
(20, 'ttwo_tests', 'ttwo-tests', 'Ttwo Test', 'Ttwo Tests', NULL, 'App\\TtwoTest', NULL, NULL, NULL, 1, 0, '{\"order_column\":null,\"order_display_column\":null,\"order_direction\":\"asc\",\"default_search_key\":null}', '2019-02-22 14:15:51', '2019-02-22 14:15:51'),
(21, 'two_tests', 'two-tests', 'Two Test', 'Two Tests', NULL, 'App\\TwoTest', NULL, NULL, NULL, 1, 0, '{\"order_column\":null,\"order_display_column\":null,\"order_direction\":\"asc\",\"default_search_key\":null}', '2019-02-22 14:16:02', '2019-02-22 14:16:02'),
(22, 'moddels', 'moddels', 'Moddel', 'Moddels', NULL, 'App\\Moddel', NULL, NULL, NULL, 1, 0, '{\"order_column\":null,\"order_display_column\":null,\"order_direction\":\"asc\",\"default_search_key\":null}', '2019-02-22 14:29:44', '2019-02-22 15:08:02'),
(23, 'questions', 'questions', 'Question', 'Questions', NULL, 'App\\Question', NULL, NULL, NULL, 1, 0, '{\"order_column\":null,\"order_display_column\":null,\"order_direction\":\"asc\",\"default_search_key\":null}', '2019-02-22 14:31:19', '2019-02-22 15:09:15');

-- --------------------------------------------------------

--
-- Table structure for table `menus`
--

CREATE TABLE `menus` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `menus`
--

INSERT INTO `menus` (`id`, `name`, `created_at`, `updated_at`) VALUES
(1, 'admin', '2019-02-21 14:44:28', '2019-02-21 14:44:28');

-- --------------------------------------------------------

--
-- Table structure for table `menu_items`
--

CREATE TABLE `menu_items` (
  `id` int(10) UNSIGNED NOT NULL,
  `menu_id` int(10) UNSIGNED DEFAULT NULL,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `url` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `target` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '_self',
  `icon_class` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `color` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `parent_id` int(11) DEFAULT NULL,
  `order` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `route` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `parameters` text COLLATE utf8mb4_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `menu_items`
--

INSERT INTO `menu_items` (`id`, `menu_id`, `title`, `url`, `target`, `icon_class`, `color`, `parent_id`, `order`, `created_at`, `updated_at`, `route`, `parameters`) VALUES
(1, 1, 'Dashboard', '', '_self', 'voyager-boat', NULL, NULL, 2, '2019-02-21 14:44:28', '2019-02-21 15:53:55', 'voyager.dashboard', NULL),
(2, 1, 'Media', '', '_self', 'voyager-images', NULL, NULL, 5, '2019-02-21 14:44:28', '2019-02-21 15:53:56', 'voyager.media.index', NULL),
(3, 1, 'Users', '', '_self', 'voyager-person', NULL, NULL, 4, '2019-02-21 14:44:28', '2019-02-21 15:53:55', 'voyager.users.index', NULL),
(4, 1, 'Roles', '', '_self', 'voyager-lock', NULL, NULL, 3, '2019-02-21 14:44:28', '2019-02-21 15:53:55', 'voyager.roles.index', NULL),
(5, 1, 'Tools', '', '_self', 'voyager-tools', NULL, NULL, 9, '2019-02-21 14:44:28', '2019-02-21 14:44:28', NULL, NULL),
(6, 1, 'Menu Builder', '', '_self', 'voyager-list', NULL, 5, 1, '2019-02-21 14:44:28', '2019-02-21 15:53:52', 'voyager.menus.index', NULL),
(7, 1, 'Database', '', '_self', 'voyager-data', NULL, NULL, 1, '2019-02-21 14:44:28', '2019-02-21 15:53:55', 'voyager.database.index', NULL),
(8, 1, 'Compass', '', '_self', 'voyager-compass', NULL, 5, 2, '2019-02-21 14:44:28', '2019-02-21 15:53:52', 'voyager.compass.index', NULL),
(9, 1, 'BREAD', '', '_self', 'voyager-bread', NULL, 5, 3, '2019-02-21 14:44:28', '2019-02-21 15:53:52', 'voyager.bread.index', NULL),
(10, 1, 'Settings', '', '_self', 'voyager-settings', NULL, NULL, 10, '2019-02-21 14:44:28', '2019-02-21 15:53:52', 'voyager.settings.index', NULL),
(14, 1, 'Hooks', '', '_self', 'voyager-hook', NULL, 5, 4, '2019-02-21 14:44:47', '2019-02-21 15:53:52', 'voyager.hooks', NULL),
(22, 1, 'Ttwo Tests', '', '_self', NULL, NULL, NULL, 14, '2019-02-22 14:15:52', '2019-02-22 14:15:52', 'voyager.ttwo-tests.index', NULL),
(23, 1, 'Two Tests', '', '_self', NULL, NULL, NULL, 15, '2019-02-22 14:16:03', '2019-02-22 14:16:03', 'voyager.two-tests.index', NULL),
(24, 1, 'Moddels', '', '_self', NULL, NULL, NULL, 16, '2019-02-22 14:29:46', '2019-02-22 14:29:46', 'voyager.moddels.index', NULL),
(25, 1, 'Questions', '', '_self', NULL, NULL, NULL, 17, '2019-02-22 14:31:19', '2019-02-22 14:31:19', 'voyager.questions.index', NULL);

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
(3, '2016_01_01_000000_add_voyager_user_fields', 2),
(4, '2016_01_01_000000_create_data_types_table', 2),
(5, '2016_05_19_173453_create_menu_table', 2),
(6, '2016_10_21_190000_create_roles_table', 2),
(7, '2016_10_21_190000_create_settings_table', 2),
(8, '2016_11_30_135954_create_permission_table', 2),
(9, '2016_11_30_141208_create_permission_role_table', 2),
(10, '2016_12_26_201236_data_types__add__server_side', 2),
(11, '2017_01_13_000000_add_route_to_menu_items_table', 2),
(12, '2017_01_14_005015_create_translations_table', 2),
(13, '2017_01_15_000000_make_table_name_nullable_in_permissions_table', 2),
(14, '2017_03_06_000000_add_controller_to_data_types_table', 2),
(15, '2017_04_21_000000_add_order_to_data_rows_table', 2),
(16, '2017_07_05_210000_add_policyname_to_data_types_table', 2),
(17, '2017_08_05_000000_add_group_to_settings_table', 2),
(18, '2017_11_26_013050_add_user_role_relationship', 2),
(19, '2017_11_26_015000_create_user_roles_table', 2),
(20, '2018_03_11_000000_add_user_settings', 2),
(21, '2018_03_14_000000_add_details_to_data_types_table', 2),
(22, '2018_03_16_000000_make_settings_value_nullable', 2),
(23, '2016_01_01_000000_create_pages_table', 3),
(24, '2016_01_01_000000_create_posts_table', 3),
(25, '2016_02_15_204651_create_categories_table', 3),
(26, '2017_04_11_000000_alter_post_nullable_fields_table', 3);

-- --------------------------------------------------------

--
-- Table structure for table `moddels`
--

CREATE TABLE `moddels` (
  `id` int(10) UNSIGNED NOT NULL,
  `Model_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `moddels`
--

INSERT INTO `moddels` (`id`, `Model_name`, `created_at`, `updated_at`) VALUES
(3, 'model_1', '2019-02-22 15:09:41', '2019-02-22 15:09:41');

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
-- Table structure for table `permissions`
--

CREATE TABLE `permissions` (
  `id` int(10) UNSIGNED NOT NULL,
  `key` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `table_name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `permissions`
--

INSERT INTO `permissions` (`id`, `key`, `table_name`, `created_at`, `updated_at`) VALUES
(1, 'browse_admin', NULL, '2019-02-21 14:44:29', '2019-02-21 14:44:29'),
(2, 'browse_bread', NULL, '2019-02-21 14:44:29', '2019-02-21 14:44:29'),
(3, 'browse_database', NULL, '2019-02-21 14:44:29', '2019-02-21 14:44:29'),
(4, 'browse_media', NULL, '2019-02-21 14:44:29', '2019-02-21 14:44:29'),
(5, 'browse_compass', NULL, '2019-02-21 14:44:29', '2019-02-21 14:44:29'),
(6, 'browse_menus', 'menus', '2019-02-21 14:44:29', '2019-02-21 14:44:29'),
(7, 'read_menus', 'menus', '2019-02-21 14:44:29', '2019-02-21 14:44:29'),
(8, 'edit_menus', 'menus', '2019-02-21 14:44:29', '2019-02-21 14:44:29'),
(9, 'add_menus', 'menus', '2019-02-21 14:44:29', '2019-02-21 14:44:29'),
(10, 'delete_menus', 'menus', '2019-02-21 14:44:30', '2019-02-21 14:44:30'),
(11, 'browse_roles', 'roles', '2019-02-21 14:44:30', '2019-02-21 14:44:30'),
(12, 'read_roles', 'roles', '2019-02-21 14:44:30', '2019-02-21 14:44:30'),
(13, 'edit_roles', 'roles', '2019-02-21 14:44:30', '2019-02-21 14:44:30'),
(14, 'add_roles', 'roles', '2019-02-21 14:44:30', '2019-02-21 14:44:30'),
(15, 'delete_roles', 'roles', '2019-02-21 14:44:30', '2019-02-21 14:44:30'),
(16, 'browse_users', 'users', '2019-02-21 14:44:30', '2019-02-21 14:44:30'),
(17, 'read_users', 'users', '2019-02-21 14:44:30', '2019-02-21 14:44:30'),
(18, 'edit_users', 'users', '2019-02-21 14:44:30', '2019-02-21 14:44:30'),
(19, 'add_users', 'users', '2019-02-21 14:44:30', '2019-02-21 14:44:30'),
(20, 'delete_users', 'users', '2019-02-21 14:44:30', '2019-02-21 14:44:30'),
(21, 'browse_settings', 'settings', '2019-02-21 14:44:30', '2019-02-21 14:44:30'),
(22, 'read_settings', 'settings', '2019-02-21 14:44:30', '2019-02-21 14:44:30'),
(23, 'edit_settings', 'settings', '2019-02-21 14:44:30', '2019-02-21 14:44:30'),
(24, 'add_settings', 'settings', '2019-02-21 14:44:30', '2019-02-21 14:44:30'),
(25, 'delete_settings', 'settings', '2019-02-21 14:44:31', '2019-02-21 14:44:31'),
(41, 'browse_hooks', NULL, '2019-02-21 14:44:47', '2019-02-21 14:44:47'),
(77, 'browse_ttwo_tests', 'ttwo_tests', '2019-02-22 14:15:52', '2019-02-22 14:15:52'),
(78, 'read_ttwo_tests', 'ttwo_tests', '2019-02-22 14:15:52', '2019-02-22 14:15:52'),
(79, 'edit_ttwo_tests', 'ttwo_tests', '2019-02-22 14:15:52', '2019-02-22 14:15:52'),
(80, 'add_ttwo_tests', 'ttwo_tests', '2019-02-22 14:15:52', '2019-02-22 14:15:52'),
(81, 'delete_ttwo_tests', 'ttwo_tests', '2019-02-22 14:15:52', '2019-02-22 14:15:52'),
(82, 'browse_two_tests', 'two_tests', '2019-02-22 14:16:02', '2019-02-22 14:16:02'),
(83, 'read_two_tests', 'two_tests', '2019-02-22 14:16:03', '2019-02-22 14:16:03'),
(84, 'edit_two_tests', 'two_tests', '2019-02-22 14:16:03', '2019-02-22 14:16:03'),
(85, 'add_two_tests', 'two_tests', '2019-02-22 14:16:03', '2019-02-22 14:16:03'),
(86, 'delete_two_tests', 'two_tests', '2019-02-22 14:16:03', '2019-02-22 14:16:03'),
(87, 'browse_moddels', 'moddels', '2019-02-22 14:29:44', '2019-02-22 14:29:44'),
(88, 'read_moddels', 'moddels', '2019-02-22 14:29:44', '2019-02-22 14:29:44'),
(89, 'edit_moddels', 'moddels', '2019-02-22 14:29:44', '2019-02-22 14:29:44'),
(90, 'add_moddels', 'moddels', '2019-02-22 14:29:44', '2019-02-22 14:29:44'),
(91, 'delete_moddels', 'moddels', '2019-02-22 14:29:44', '2019-02-22 14:29:44'),
(92, 'browse_questions', 'questions', '2019-02-22 14:31:19', '2019-02-22 14:31:19'),
(93, 'read_questions', 'questions', '2019-02-22 14:31:19', '2019-02-22 14:31:19'),
(94, 'edit_questions', 'questions', '2019-02-22 14:31:19', '2019-02-22 14:31:19'),
(95, 'add_questions', 'questions', '2019-02-22 14:31:19', '2019-02-22 14:31:19'),
(96, 'delete_questions', 'questions', '2019-02-22 14:31:19', '2019-02-22 14:31:19');

-- --------------------------------------------------------

--
-- Table structure for table `permission_role`
--

CREATE TABLE `permission_role` (
  `permission_id` int(10) UNSIGNED NOT NULL,
  `role_id` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `permission_role`
--

INSERT INTO `permission_role` (`permission_id`, `role_id`) VALUES
(1, 1),
(2, 1),
(3, 1),
(4, 1),
(5, 1),
(6, 1),
(7, 1),
(8, 1),
(9, 1),
(10, 1),
(11, 1),
(12, 1),
(13, 1),
(14, 1),
(15, 1),
(16, 1),
(17, 1),
(18, 1),
(19, 1),
(20, 1),
(21, 1),
(22, 1),
(23, 1),
(24, 1),
(25, 1),
(41, 1),
(77, 1),
(78, 1),
(79, 1),
(80, 1),
(81, 1),
(82, 1),
(83, 1),
(84, 1),
(85, 1),
(86, 1),
(87, 1),
(88, 1),
(89, 1),
(90, 1),
(91, 1),
(92, 1),
(93, 1),
(94, 1),
(95, 1),
(96, 1);

-- --------------------------------------------------------

--
-- Table structure for table `questions`
--

CREATE TABLE `questions` (
  `id` int(10) UNSIGNED NOT NULL,
  `Question_text` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `Model_id` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `roles`
--

CREATE TABLE `roles` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `display_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `roles`
--

INSERT INTO `roles` (`id`, `name`, `display_name`, `created_at`, `updated_at`) VALUES
(1, 'admin', 'Administrator', '2019-02-21 14:44:29', '2019-02-21 14:44:29'),
(2, 'user', 'Normal User', '2019-02-21 14:44:29', '2019-02-21 14:44:29');

-- --------------------------------------------------------

--
-- Table structure for table `settings`
--

CREATE TABLE `settings` (
  `id` int(10) UNSIGNED NOT NULL,
  `key` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `display_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `value` text COLLATE utf8mb4_unicode_ci,
  `details` text COLLATE utf8mb4_unicode_ci,
  `type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `order` int(11) NOT NULL DEFAULT '1',
  `group` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `settings`
--

INSERT INTO `settings` (`id`, `key`, `display_name`, `value`, `details`, `type`, `order`, `group`) VALUES
(1, 'site.title', 'Site Title', 'Site Title', '', 'text', 1, 'Site'),
(2, 'site.description', 'Site Description', 'Site Description', '', 'text', 2, 'Site'),
(3, 'site.logo', 'Site Logo', '', '', 'image', 3, 'Site'),
(4, 'site.google_analytics_tracking_id', 'Google Analytics Tracking ID', '', '', 'text', 4, 'Site'),
(5, 'admin.bg_image', 'Admin Background Image', '', '', 'image', 5, 'Admin'),
(6, 'admin.title', 'Admin Title', 'Voyager', '', 'text', 1, 'Admin'),
(7, 'admin.description', 'Admin Description', 'Welcome to Voyager. The Missing Admin for Laravel', '', 'text', 2, 'Admin'),
(8, 'admin.loader', 'Admin Loader', '', '', 'image', 3, 'Admin'),
(9, 'admin.icon_image', 'Admin Icon Image', '', '', 'image', 4, 'Admin'),
(10, 'admin.google_analytics_client_id', 'Google Analytics Client ID (used for admin dashboard)', '', '', 'text', 1, 'Admin');

-- --------------------------------------------------------

--
-- Table structure for table `translations`
--

CREATE TABLE `translations` (
  `id` int(10) UNSIGNED NOT NULL,
  `table_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `column_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `foreign_key` int(10) UNSIGNED NOT NULL,
  `locale` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `value` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `translations`
--

INSERT INTO `translations` (`id`, `table_name`, `column_name`, `foreign_key`, `locale`, `value`, `created_at`, `updated_at`) VALUES
(1, 'data_types', 'display_name_singular', 5, 'pt', 'Post', '2019-02-21 14:44:44', '2019-02-21 14:44:44'),
(2, 'data_types', 'display_name_singular', 6, 'pt', 'Página', '2019-02-21 14:44:44', '2019-02-21 14:44:44'),
(3, 'data_types', 'display_name_singular', 1, 'pt', 'Utilizador', '2019-02-21 14:44:44', '2019-02-21 14:44:44'),
(4, 'data_types', 'display_name_singular', 4, 'pt', 'Categoria', '2019-02-21 14:44:44', '2019-02-21 14:44:44'),
(5, 'data_types', 'display_name_singular', 2, 'pt', 'Menu', '2019-02-21 14:44:44', '2019-02-21 14:44:44'),
(6, 'data_types', 'display_name_singular', 3, 'pt', 'Função', '2019-02-21 14:44:44', '2019-02-21 14:44:44'),
(7, 'data_types', 'display_name_plural', 5, 'pt', 'Posts', '2019-02-21 14:44:44', '2019-02-21 14:44:44'),
(8, 'data_types', 'display_name_plural', 6, 'pt', 'Páginas', '2019-02-21 14:44:45', '2019-02-21 14:44:45'),
(9, 'data_types', 'display_name_plural', 1, 'pt', 'Utilizadores', '2019-02-21 14:44:45', '2019-02-21 14:44:45'),
(10, 'data_types', 'display_name_plural', 4, 'pt', 'Categorias', '2019-02-21 14:44:45', '2019-02-21 14:44:45'),
(11, 'data_types', 'display_name_plural', 2, 'pt', 'Menus', '2019-02-21 14:44:45', '2019-02-21 14:44:45'),
(12, 'data_types', 'display_name_plural', 3, 'pt', 'Funções', '2019-02-21 14:44:45', '2019-02-21 14:44:45'),
(13, 'categories', 'slug', 1, 'pt', 'categoria-1', '2019-02-21 14:44:45', '2019-02-21 14:44:45'),
(14, 'categories', 'name', 1, 'pt', 'Categoria 1', '2019-02-21 14:44:45', '2019-02-21 14:44:45'),
(15, 'categories', 'slug', 2, 'pt', 'categoria-2', '2019-02-21 14:44:45', '2019-02-21 14:44:45'),
(16, 'categories', 'name', 2, 'pt', 'Categoria 2', '2019-02-21 14:44:45', '2019-02-21 14:44:45'),
(17, 'pages', 'title', 1, 'pt', 'Olá Mundo', '2019-02-21 14:44:45', '2019-02-21 14:44:45'),
(18, 'pages', 'slug', 1, 'pt', 'ola-mundo', '2019-02-21 14:44:45', '2019-02-21 14:44:45'),
(19, 'pages', 'body', 1, 'pt', '<p>Olá Mundo. Scallywag grog swab Cat o\'nine tails scuttle rigging hardtack cable nipper Yellow Jack. Handsomely spirits knave lad killick landlubber or just lubber deadlights chantey pinnace crack Jennys tea cup. Provost long clothes black spot Yellow Jack bilged on her anchor league lateen sail case shot lee tackle.</p>\r\n<p>Ballast spirits fluke topmast me quarterdeck schooner landlubber or just lubber gabion belaying pin. Pinnace stern galleon starboard warp carouser to go on account dance the hempen jig jolly boat measured fer yer chains. Man-of-war fire in the hole nipperkin handsomely doubloon barkadeer Brethren of the Coast gibbet driver squiffy.</p>', '2019-02-21 14:44:45', '2019-02-21 14:44:45'),
(20, 'menu_items', 'title', 1, 'pt', 'Painel de Controle', '2019-02-21 14:44:45', '2019-02-21 14:44:45'),
(21, 'menu_items', 'title', 2, 'pt', 'Media', '2019-02-21 14:44:45', '2019-02-21 14:44:45'),
(22, 'menu_items', 'title', 12, 'pt', 'Publicações', '2019-02-21 14:44:45', '2019-02-21 14:44:45'),
(23, 'menu_items', 'title', 3, 'pt', 'Utilizadores', '2019-02-21 14:44:45', '2019-02-21 14:44:45'),
(24, 'menu_items', 'title', 11, 'pt', 'Categorias', '2019-02-21 14:44:45', '2019-02-21 14:44:45'),
(25, 'menu_items', 'title', 13, 'pt', 'Páginas', '2019-02-21 14:44:45', '2019-02-21 14:44:45'),
(26, 'menu_items', 'title', 4, 'pt', 'Funções', '2019-02-21 14:44:45', '2019-02-21 14:44:45'),
(27, 'menu_items', 'title', 5, 'pt', 'Ferramentas', '2019-02-21 14:44:46', '2019-02-21 14:44:46'),
(28, 'menu_items', 'title', 6, 'pt', 'Menus', '2019-02-21 14:44:46', '2019-02-21 14:44:46'),
(29, 'menu_items', 'title', 7, 'pt', 'Base de dados', '2019-02-21 14:44:46', '2019-02-21 14:44:46'),
(30, 'menu_items', 'title', 10, 'pt', 'Configurações', '2019-02-21 14:44:46', '2019-02-21 14:44:46');

-- --------------------------------------------------------

--
-- Table structure for table `ttwo_tests`
--

CREATE TABLE `ttwo_tests` (
  `id` int(10) UNSIGNED NOT NULL,
  `name_2` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `two_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `ttwo_tests`
--

INSERT INTO `ttwo_tests` (`id`, `name_2`, `created_at`, `updated_at`, `two_id`) VALUES
(2, 'name_2_1', '2019-02-22 14:19:20', '2019-02-22 14:19:20', 2);

-- --------------------------------------------------------

--
-- Table structure for table `two_tests`
--

CREATE TABLE `two_tests` (
  `id` int(10) UNSIGNED NOT NULL,
  `name_1` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `ttwo_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `two_tests`
--

INSERT INTO `two_tests` (`id`, `name_1`, `created_at`, `updated_at`, `ttwo_id`) VALUES
(2, 'name_1_1', '2019-02-22 14:19:03', '2019-02-22 14:19:03', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(10) UNSIGNED NOT NULL,
  `role_id` int(10) UNSIGNED DEFAULT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `avatar` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT 'users/default.png',
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `settings` text COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `role_id`, `name`, `email`, `avatar`, `email_verified_at`, `password`, `remember_token`, `settings`, `created_at`, `updated_at`) VALUES
(1, 1, 'Admin', 'admin@admin.com', 'users/default.png', NULL, '$2y$10$3H7vOgSu3yi32qN/PbyuwezS7MXaIvrjU60KlqGVABz5US.gIQxhi', 'RKfmo8b5dgttsH9qm9Dc0yY1k1WgQpNVIJ9lbiNXinsFL6Gh0TqeCincAitM', NULL, '2019-02-21 14:44:40', '2019-02-21 14:44:40');

-- --------------------------------------------------------

--
-- Table structure for table `user_roles`
--

CREATE TABLE `user_roles` (
  `user_id` int(10) UNSIGNED NOT NULL,
  `role_id` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `data_rows`
--
ALTER TABLE `data_rows`
  ADD PRIMARY KEY (`id`),
  ADD KEY `data_rows_data_type_id_foreign` (`data_type_id`);

--
-- Indexes for table `data_types`
--
ALTER TABLE `data_types`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `data_types_name_unique` (`name`),
  ADD UNIQUE KEY `data_types_slug_unique` (`slug`);

--
-- Indexes for table `menus`
--
ALTER TABLE `menus`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `menus_name_unique` (`name`);

--
-- Indexes for table `menu_items`
--
ALTER TABLE `menu_items`
  ADD PRIMARY KEY (`id`),
  ADD KEY `menu_items_menu_id_foreign` (`menu_id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `moddels`
--
ALTER TABLE `moddels`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indexes for table `permissions`
--
ALTER TABLE `permissions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `permissions_key_index` (`key`);

--
-- Indexes for table `permission_role`
--
ALTER TABLE `permission_role`
  ADD PRIMARY KEY (`permission_id`,`role_id`),
  ADD KEY `permission_role_permission_id_index` (`permission_id`),
  ADD KEY `permission_role_role_id_index` (`role_id`);

--
-- Indexes for table `questions`
--
ALTER TABLE `questions`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `roles`
--
ALTER TABLE `roles`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `roles_name_unique` (`name`);

--
-- Indexes for table `settings`
--
ALTER TABLE `settings`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `settings_key_unique` (`key`);

--
-- Indexes for table `translations`
--
ALTER TABLE `translations`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `translations_table_name_column_name_foreign_key_locale_unique` (`table_name`,`column_name`,`foreign_key`,`locale`);

--
-- Indexes for table `ttwo_tests`
--
ALTER TABLE `ttwo_tests`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `two_tests`
--
ALTER TABLE `two_tests`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`),
  ADD KEY `users_role_id_foreign` (`role_id`);

--
-- Indexes for table `user_roles`
--
ALTER TABLE `user_roles`
  ADD PRIMARY KEY (`user_id`,`role_id`),
  ADD KEY `user_roles_user_id_index` (`user_id`),
  ADD KEY `user_roles_role_id_index` (`role_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `data_rows`
--
ALTER TABLE `data_rows`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=120;

--
-- AUTO_INCREMENT for table `data_types`
--
ALTER TABLE `data_types`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;

--
-- AUTO_INCREMENT for table `menus`
--
ALTER TABLE `menus`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `menu_items`
--
ALTER TABLE `menu_items`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;

--
-- AUTO_INCREMENT for table `moddels`
--
ALTER TABLE `moddels`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `permissions`
--
ALTER TABLE `permissions`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=97;

--
-- AUTO_INCREMENT for table `questions`
--
ALTER TABLE `questions`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `roles`
--
ALTER TABLE `roles`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `settings`
--
ALTER TABLE `settings`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `translations`
--
ALTER TABLE `translations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;

--
-- AUTO_INCREMENT for table `ttwo_tests`
--
ALTER TABLE `ttwo_tests`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `two_tests`
--
ALTER TABLE `two_tests`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `data_rows`
--
ALTER TABLE `data_rows`
  ADD CONSTRAINT `data_rows_data_type_id_foreign` FOREIGN KEY (`data_type_id`) REFERENCES `data_types` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `menu_items`
--
ALTER TABLE `menu_items`
  ADD CONSTRAINT `menu_items_menu_id_foreign` FOREIGN KEY (`menu_id`) REFERENCES `menus` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `permission_role`
--
ALTER TABLE `permission_role`
  ADD CONSTRAINT `permission_role_permission_id_foreign` FOREIGN KEY (`permission_id`) REFERENCES `permissions` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `permission_role_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `users`
--
ALTER TABLE `users`
  ADD CONSTRAINT `users_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`);

--
-- Constraints for table `user_roles`
--
ALTER TABLE `user_roles`
  ADD CONSTRAINT `user_roles_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `user_roles_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
