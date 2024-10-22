-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Aug 07, 2024 at 05:16 PM
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
-- Database: `paytm_anpr`
--

-- --------------------------------------------------------

--
-- Table structure for table `auth_group`
--

CREATE TABLE `auth_group` (
  `id` int(11) NOT NULL,
  `name` varchar(150) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `auth_group_permissions`
--

CREATE TABLE `auth_group_permissions` (
  `id` bigint(20) NOT NULL,
  `group_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `auth_permission`
--

CREATE TABLE `auth_permission` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `content_type_id` int(11) NOT NULL,
  `codename` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `auth_permission`
--

INSERT INTO `auth_permission` (`id`, `name`, `content_type_id`, `codename`) VALUES
(1, 'Can add log entry', 1, 'add_logentry'),
(2, 'Can change log entry', 1, 'change_logentry'),
(3, 'Can delete log entry', 1, 'delete_logentry'),
(4, 'Can view log entry', 1, 'view_logentry'),
(5, 'Can add permission', 2, 'add_permission'),
(6, 'Can change permission', 2, 'change_permission'),
(7, 'Can delete permission', 2, 'delete_permission'),
(8, 'Can view permission', 2, 'view_permission'),
(9, 'Can add group', 3, 'add_group'),
(10, 'Can change group', 3, 'change_group'),
(11, 'Can delete group', 3, 'delete_group'),
(12, 'Can view group', 3, 'view_group'),
(13, 'Can add user', 4, 'add_user'),
(14, 'Can change user', 4, 'change_user'),
(15, 'Can delete user', 4, 'delete_user'),
(16, 'Can view user', 4, 'view_user'),
(17, 'Can add content type', 5, 'add_contenttype'),
(18, 'Can change content type', 5, 'change_contenttype'),
(19, 'Can delete content type', 5, 'delete_contenttype'),
(20, 'Can view content type', 5, 'view_contenttype'),
(21, 'Can add session', 6, 'add_session'),
(22, 'Can change session', 6, 'change_session'),
(23, 'Can delete session', 6, 'delete_session'),
(24, 'Can view session', 6, 'view_session'),
(25, 'Can add boomsig', 7, 'add_boomsig'),
(26, 'Can change boomsig', 7, 'change_boomsig'),
(27, 'Can delete boomsig', 7, 'delete_boomsig'),
(28, 'Can view boomsig', 7, 'view_boomsig'),
(29, 'Can add plate', 8, 'add_plate'),
(30, 'Can change plate', 8, 'change_plate'),
(31, 'Can delete plate', 8, 'delete_plate'),
(32, 'Can view plate', 8, 'view_plate'),
(33, 'Can add exit', 9, 'add_exit'),
(34, 'Can change exit', 9, 'change_exit'),
(35, 'Can delete exit', 9, 'delete_exit'),
(36, 'Can view exit', 9, 'view_exit'),
(37, 'Can add history', 10, 'add_history'),
(38, 'Can change history', 10, 'change_history'),
(39, 'Can delete history', 10, 'delete_history'),
(40, 'Can view history', 10, 'view_history'),
(41, 'Can add order', 11, 'add_order'),
(42, 'Can change order', 11, 'change_order'),
(43, 'Can delete order', 11, 'delete_order'),
(44, 'Can view order', 11, 'view_order');

-- --------------------------------------------------------

--
-- Table structure for table `auth_user`
--

CREATE TABLE `auth_user` (
  `id` int(11) NOT NULL,
  `password` varchar(128) NOT NULL,
  `last_login` datetime(6) DEFAULT NULL,
  `is_superuser` tinyint(1) NOT NULL,
  `username` varchar(150) NOT NULL,
  `first_name` varchar(150) NOT NULL,
  `last_name` varchar(150) NOT NULL,
  `email` varchar(254) NOT NULL,
  `is_staff` tinyint(1) NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  `date_joined` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `auth_user_groups`
--

CREATE TABLE `auth_user_groups` (
  `id` bigint(20) NOT NULL,
  `user_id` int(11) NOT NULL,
  `group_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `auth_user_user_permissions`
--

CREATE TABLE `auth_user_user_permissions` (
  `id` bigint(20) NOT NULL,
  `user_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `boomsig`
--

CREATE TABLE `boomsig` (
  `id` int(11) NOT NULL,
  `entryboom` varchar(1) NOT NULL,
  `entrysynctime` datetime(6) NOT NULL,
  `exitboom` varchar(1) NOT NULL,
  `exitsynctime` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `boomsig`
--

INSERT INTO `boomsig` (`id`, `entryboom`, `entrysynctime`, `exitboom`, `exitsynctime`) VALUES
(1, 'N', '2024-08-07 11:33:34.552756', 'N', '2024-07-26 15:55:36.471675');

-- --------------------------------------------------------

--
-- Table structure for table `django_admin_log`
--

CREATE TABLE `django_admin_log` (
  `id` int(11) NOT NULL,
  `action_time` datetime(6) NOT NULL,
  `object_id` longtext DEFAULT NULL,
  `object_repr` varchar(200) NOT NULL,
  `action_flag` smallint(5) UNSIGNED NOT NULL CHECK (`action_flag` >= 0),
  `change_message` longtext NOT NULL,
  `content_type_id` int(11) DEFAULT NULL,
  `user_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `django_content_type`
--

CREATE TABLE `django_content_type` (
  `id` int(11) NOT NULL,
  `app_label` varchar(100) NOT NULL,
  `model` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `django_content_type`
--

INSERT INTO `django_content_type` (`id`, `app_label`, `model`) VALUES
(1, 'admin', 'logentry'),
(3, 'auth', 'group'),
(2, 'auth', 'permission'),
(4, 'auth', 'user'),
(5, 'contenttypes', 'contenttype'),
(7, 'entry_exit', 'boomsig'),
(9, 'entry_exit', 'exit'),
(10, 'entry_exit', 'history'),
(8, 'entry_exit', 'plate'),
(11, 'paymentsys', 'order'),
(6, 'sessions', 'session');

-- --------------------------------------------------------

--
-- Table structure for table `django_migrations`
--

CREATE TABLE `django_migrations` (
  `id` bigint(20) NOT NULL,
  `app` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `applied` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `django_migrations`
--

INSERT INTO `django_migrations` (`id`, `app`, `name`, `applied`) VALUES
(1, 'contenttypes', '0001_initial', '2024-07-25 07:07:35.504417'),
(2, 'auth', '0001_initial', '2024-07-25 07:07:36.259786'),
(3, 'admin', '0001_initial', '2024-07-25 07:07:36.468862'),
(4, 'admin', '0002_logentry_remove_auto_add', '2024-07-25 07:07:36.484497'),
(5, 'admin', '0003_logentry_add_action_flag_choices', '2024-07-25 07:07:36.495917'),
(6, 'contenttypes', '0002_remove_content_type_name', '2024-07-25 07:07:36.567734'),
(7, 'auth', '0002_alter_permission_name_max_length', '2024-07-25 07:07:36.659448'),
(8, 'auth', '0003_alter_user_email_max_length', '2024-07-25 07:07:36.668280'),
(9, 'auth', '0004_alter_user_username_opts', '2024-07-25 07:07:36.690062'),
(10, 'auth', '0005_alter_user_last_login_null', '2024-07-25 07:07:36.752361'),
(11, 'auth', '0006_require_contenttypes_0002', '2024-07-25 07:07:36.756365'),
(12, 'auth', '0007_alter_validators_add_error_messages', '2024-07-25 07:07:36.765908'),
(13, 'auth', '0008_alter_user_username_max_length', '2024-07-25 07:07:36.785235'),
(14, 'auth', '0009_alter_user_last_name_max_length', '2024-07-25 07:07:36.803943'),
(15, 'auth', '0010_alter_group_name_max_length', '2024-07-25 07:07:36.821702'),
(16, 'auth', '0011_update_proxy_permissions', '2024-07-25 07:07:36.832842'),
(17, 'auth', '0012_alter_user_first_name_max_length', '2024-07-25 07:07:36.853424'),
(18, 'dashboard', '0001_initial', '2024-07-25 07:07:36.876329'),
(19, 'dashboard', '0002_alter_anpr_plate', '2024-07-25 07:07:36.950907'),
(20, 'dashboard', '0003_delete_anpr', '2024-07-25 07:07:36.966818'),
(21, 'entry_exit', '0001_initial', '2024-07-25 07:07:37.025651'),
(22, 'entry_exit', '0002_rename_entrysynctime_boomsig_entrysynctime_and_more', '2024-07-25 07:07:37.044333'),
(23, 'entry_exit', '0003_alter_boomsig_entrysynctime_and_more', '2024-07-25 07:07:37.051572'),
(24, 'entry_exit', '0004_rename_entryboom_boomsig_entryboom_and_more', '2024-07-25 07:07:37.165535'),
(25, 'entry_exit', '0005_alter_plate_gate_alter_plate_vehicle_plate_image', '2024-07-25 07:07:37.289827'),
(26, 'entry_exit', '0006_exit_history', '2024-07-25 07:07:37.335761'),
(27, 'entry_exit', '0007_exit_created_at', '2024-07-25 07:07:37.359823'),
(28, 'entry_exit', '0008_alter_history_plate_image', '2024-07-25 07:07:37.543657'),
(29, 'entry_exit', '0009_delete_exit_delete_history', '2024-07-25 07:07:37.593088'),
(30, 'entry_exit', '0010_exit_history', '2024-07-25 07:07:37.635598'),
(31, 'entry_exit', '0011_rename_exit_time_exit_vehicle_exit_time_and_more', '2024-07-25 07:07:38.204176'),
(32, 'entry_exit', '0012_remove_history_status_history_vehicle_image', '2024-07-25 07:07:38.245792'),
(33, 'plate_search', '0001_initial', '2024-07-25 07:07:38.266574'),
(34, 'plate_search', '0002_delete_anprlogs', '2024-07-25 07:07:38.287429'),
(35, 'sessions', '0001_initial', '2024-07-25 07:07:38.326875'),
(36, 'paymentsys', '0001_initial', '2024-07-26 07:22:54.692488');

-- --------------------------------------------------------

--
-- Table structure for table `django_session`
--

CREATE TABLE `django_session` (
  `session_key` varchar(40) NOT NULL,
  `session_data` longtext NOT NULL,
  `expire_date` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `exit`
--

CREATE TABLE `exit` (
  `id` int(11) NOT NULL,
  `vehicle_number` varchar(64) NOT NULL,
  `vehicle_type` varchar(64) NOT NULL,
  `vehicle_plate_image` varchar(100) DEFAULT NULL,
  `vehicle_exit_time` datetime(6) NOT NULL,
  `created_at` datetime(6) NOT NULL,
  `updated_at` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `exit`
--

INSERT INTO `exit` (`id`, `vehicle_number`, `vehicle_type`, `vehicle_plate_image`, `vehicle_exit_time`, `created_at`, `updated_at`) VALUES
(1, 'xyz897zbc', 'CAR', 'uploads/20240725071857_image12.jpg', '2024-07-25 07:18:57.847241', '2024-07-25 07:18:57.848241', '2024-07-25 07:18:57.848241'),
(2, 'abcd897ghi', 'CAR', 'image16.jpg', '2024-07-26 05:19:04.914571', '2024-07-26 05:19:05.192770', '2024-07-26 05:19:05.192770');

-- --------------------------------------------------------

--
-- Table structure for table `history`
--

CREATE TABLE `history` (
  `id` int(11) NOT NULL,
  `vehicle_number` varchar(64) NOT NULL,
  `vehicle_type` varchar(64) NOT NULL,
  `vehicle_image` varchar(100) DEFAULT NULL,
  `entry_time` datetime(6) NOT NULL,
  `exit_time` datetime(6) DEFAULT NULL,
  `price` decimal(10,2) DEFAULT NULL,
  `txn_status` varchar(64) DEFAULT NULL,
  `created_at` datetime(6) NOT NULL,
  `updated_at` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `history`
--

INSERT INTO `history` (`id`, `vehicle_number`, `vehicle_type`, `vehicle_image`, `entry_time`, `exit_time`, `price`, `txn_status`, `created_at`, `updated_at`) VALUES
(1, 'xyz897zbc', 'CAR', 'uploads/20240725071857_image12.jpg', '2024-07-25 07:14:13.724131', '2024-07-25 07:15:35.789934', 20.00, 'Completed', '2024-07-25 07:14:13.724131', '2024-07-25 07:14:13.724131'),
(2, 'xyz897zbc', 'CAR', 'uploads/20240725071857_image11.jpg', '2024-07-25 07:20:34.198376', NULL, NULL, NULL, '2024-07-25 07:20:34.199078', '2024-07-25 07:20:34.199078'),
(3, 'abc897def', 'CAR', 'uploads/20240725071857_image10.jpg', '2024-07-25 07:42:44.469806', NULL, NULL, NULL, '2024-07-25 07:42:44.469806', '2024-07-25 07:42:44.469806'),
(4, 'abcd897gh', 'CAR', 'image15.jpg', '2024-07-25 09:44:19.198658', NULL, NULL, NULL, '2024-07-25 09:44:19.198658', '2024-07-25 09:44:19.198658'),
(5, 'abcd897ghi', 'CAR', 'image16.jpg', '2024-07-26 05:18:01.438418', '2024-07-26 05:19:04.914571', 20.00, 'Completed', '2024-07-26 05:18:01.438418', '2024-07-26 05:18:01.438418'),
(6, 'UP160A2006', 'vehicle_type', 'uploads/20240805120018_UP160A2006_2024-08-05_120020_15hZ3ud.jpg', '2024-08-05 06:30:18.244832', NULL, NULL, NULL, '2024-08-05 06:30:18.244832', '2024-08-05 06:30:18.244832'),
(7, 'UP16AU2115', 'vehicle_type', 'uploads/20240805120627_UP16AU2115_2024-08-05_120630_dq88j1g.jpg', '2024-08-05 06:36:27.516044', NULL, NULL, NULL, '2024-08-05 06:36:27.521966', '2024-08-05 06:36:27.521966'),
(8, 'FUP16AU2115', 'vehicle_type', 'uploads/20240805120628_FUP16AU2115_2024-08-05_120631_EhTSpuj.jpg', '2024-08-05 06:36:28.255396', NULL, NULL, NULL, '2024-08-05 06:36:28.263918', '2024-08-05 06:36:28.263918'),
(9, 'FUP16AU2115', 'vehicle_type', 'uploads/20240805141051_FUP16AU2115_2024-08-05_194054_vJj1qTK.jpg', '2024-08-05 08:40:51.953670', NULL, NULL, NULL, '2024-08-05 08:40:51.970495', '2024-08-05 08:40:51.970495'),
(10, 'UP16AU2115', 'vehicle_type', 'uploads/20240807164957_UP16AU2115_2024-08-07_164957_I9gkOyc.jpg', '2024-08-07 11:19:57.739446', NULL, NULL, NULL, '2024-08-07 11:19:57.739446', '2024-08-07 11:19:57.739446'),
(11, 'FUP16AU2115', 'vehicle_type', 'uploads/20240807164959_FUP16AU2115_2024-08-07_164959_7i9He4g.jpg', '2024-08-07 11:19:59.808512', NULL, NULL, NULL, '2024-08-07 11:19:59.826071', '2024-08-07 11:19:59.826071'),
(12, 'UP16AU2115', 'vehicle_type', 'uploads/20240807165047_UP16AU2115_2024-08-07_165046_r8tminE.jpg', '2024-08-07 11:20:47.116540', NULL, NULL, NULL, '2024-08-07 11:20:47.118671', '2024-08-07 11:20:47.118671'),
(13, 'UP160A2006', 'vehicle_type', 'uploads/20240807165114_UP160A2006_2024-08-07_165114_0yrnmSQ.jpg', '2024-08-07 11:21:14.974624', NULL, NULL, NULL, '2024-08-07 11:21:14.974624', '2024-08-07 11:21:14.974624'),
(14, 'UP16DA2006', 'vehicle_type', 'uploads/20240807165128_UP16DA2006_2024-08-07_165128_CitBmE3.jpg', '2024-08-07 11:21:28.530137', NULL, NULL, NULL, '2024-08-07 11:21:28.530137', '2024-08-07 11:21:28.530137'),
(15, 'UP160A2006', 'vehicle_type', 'uploads/20240807165154_UP160A2006_2024-08-07_165154_daL86ly.jpg', '2024-08-07 11:21:54.399142', NULL, NULL, NULL, '2024-08-07 11:21:54.399142', '2024-08-07 11:21:54.399142'),
(16, 'UP16DA2006', 'vehicle_type', 'uploads/20240807165213_UP16DA2006_2024-08-07_165212_1C8XXN6.jpg', '2024-08-07 11:22:13.155673', NULL, NULL, NULL, '2024-08-07 11:22:13.155673', '2024-08-07 11:22:13.155673'),
(17, 'UP160A2006', 'vehicle_type', 'uploads/20240807165332_UP160A2006_2024-08-07_165331_5i1prQa.jpg', '2024-08-07 11:23:32.287287', NULL, NULL, NULL, '2024-08-07 11:23:32.302905', '2024-08-07 11:23:32.302905'),
(18, 'UP16DA2006', 'vehicle_type', 'uploads/20240807165345_UP16DA2006_2024-08-07_165345_BuaXOSC.jpg', '2024-08-07 11:23:45.926707', NULL, NULL, NULL, '2024-08-07 11:23:45.926707', '2024-08-07 11:23:45.926707'),
(19, 'UP160A2006', 'vehicle_type', 'uploads/20240807170032_UP160A2006_2024-08-07_170032_GroQYZ9.jpg', '2024-08-07 11:30:32.715711', NULL, NULL, NULL, '2024-08-07 11:30:32.731340', '2024-08-07 11:30:32.731340'),
(20, 'UP16DA2006', 'vehicle_type', 'uploads/20240807170042_UP16DA2006_2024-08-07_170042_k0eKXuf.jpg', '2024-08-07 11:30:42.817363', NULL, NULL, NULL, '2024-08-07 11:30:42.817363', '2024-08-07 11:30:42.817363'),
(21, 'UP160A2006', 'vehicle_type', 'uploads/20240807170137_UP160A2006_2024-08-07_170137_pilt2Ni.jpg', '2024-08-07 11:31:37.874467', NULL, NULL, NULL, '2024-08-07 11:31:37.874467', '2024-08-07 11:31:37.874467'),
(22, 'UP16DA2006', 'vehicle_type', 'uploads/20240807170152_UP16DA2006_2024-08-07_170152_1ReRQhd.jpg', '2024-08-07 11:31:52.465087', NULL, NULL, NULL, '2024-08-07 11:31:52.465087', '2024-08-07 11:31:52.465087'),
(23, 'PUPT6DA2006', 'vehicle_type', 'uploads/20240807170320_PUPT6DA2006_2024-08-07_170320_3gQFNa6.jpg', '2024-08-07 11:33:20.771062', NULL, NULL, NULL, '2024-08-07 11:33:20.786533', '2024-08-07 11:33:20.786533'),
(24, 'UPT6DA2006', 'vehicle_type', 'uploads/20240807170320_UPT6DA2006_2024-08-07_170320_No4zQvg.jpg', '2024-08-07 11:33:20.927156', NULL, NULL, NULL, '2024-08-07 11:33:20.927156', '2024-08-07 11:33:20.927156'),
(25, '9007Y091DN', 'vehicle_type', 'uploads/20240807170321_9007Y091DN_2024-08-07_170321_oKBbZSb.jpg', '2024-08-07 11:33:21.805451', NULL, NULL, NULL, '2024-08-07 11:33:21.821099', '2024-08-07 11:33:21.821099'),
(26, 'PUP16DA2006', 'vehicle_type', 'uploads/20240807170332_PUP16DA2006_2024-08-07_170332_gb41qLI.jpg', '2024-08-07 11:33:32.406324', NULL, NULL, NULL, '2024-08-07 11:33:32.406324', '2024-08-07 11:33:32.406324'),
(27, 'FUP16DA2006', 'vehicle_type', 'uploads/20240807170333_FUP16DA2006_2024-08-07_170333_9thFWWb.jpg', '2024-08-07 11:33:33.126812', NULL, NULL, NULL, '2024-08-07 11:33:33.126812', '2024-08-07 11:33:33.126812'),
(28, 'EUP160A2006', 'vehicle_type', 'uploads/20240807170334_EUP160A2006_2024-08-07_170334_egYBa65.jpg', '2024-08-07 11:33:34.536814', NULL, NULL, NULL, '2024-08-07 11:33:34.536814', '2024-08-07 11:33:34.536814');

-- --------------------------------------------------------

--
-- Table structure for table `paymentsys_order`
--

CREATE TABLE `paymentsys_order` (
  `id` bigint(20) NOT NULL,
  `user_email` varchar(100) NOT NULL,
  `product_name` varchar(100) NOT NULL,
  `order_amount` varchar(25) NOT NULL,
  `isPaid` tinyint(1) NOT NULL,
  `order_date` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `paymentsys_order`
--

INSERT INTO `paymentsys_order` (`id`, `user_email`, `product_name`, `order_amount`, `isPaid`, `order_date`) VALUES
(1, 'test@example.com', 'Test Product', '100', 0, '2024-07-26 07:23:09.405336'),
(2, 'test1@example.com', 'Test Product', '50', 0, '2024-07-27 11:12:05.092481');

-- --------------------------------------------------------

--
-- Table structure for table `plate`
--

CREATE TABLE `plate` (
  `id` int(11) NOT NULL,
  `vehicle_number` varchar(64) NOT NULL,
  `vehicle_type` varchar(64) NOT NULL,
  `vehicle_plate_image` varchar(100) DEFAULT NULL,
  `vehicle_entry_time` datetime(6) NOT NULL,
  `gate` varchar(10) NOT NULL,
  `status` tinyint(1) NOT NULL,
  `created_at` datetime(6) NOT NULL,
  `updated_at` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `plate`
--

INSERT INTO `plate` (`id`, `vehicle_number`, `vehicle_type`, `vehicle_plate_image`, `vehicle_entry_time`, `gate`, `status`, `created_at`, `updated_at`) VALUES
(1, 'xyz897zbc', 'CAR', 'uploads/20240725071857_image12.jpg', '2024-07-25 07:20:34.191077', 'IN', 1, '2024-07-25 07:20:34.191077', '2024-07-25 07:20:34.191077'),
(2, 'abc897def', 'CAR', 'uploads/20240725071857_image11.jpg', '2024-07-25 07:42:44.463807', 'IN', 1, '2024-07-25 07:42:44.463807', '2024-07-25 07:42:44.463807'),
(3, 'abcd897gh', 'CAR', 'image15.jpg', '2024-07-25 09:44:19.198658', 'IN', 1, '2024-07-25 09:44:19.198658', '2024-07-25 09:44:19.198658'),
(4, 'abcd897ghi', 'CAR', 'image16.jpg', '2024-07-26 05:18:01.432418', 'IN', 0, '2024-07-26 05:19:05.198036', '2024-07-26 05:19:05.198036'),
(20, 'UP160A2006', 'vehicle_type', 'uploads/20240807170137_UP160A2006_2024-08-07_170137.jpg', '2024-08-07 11:31:37.874467', 'IN', 1, '2024-08-07 11:31:37.874467', '2024-08-07 11:31:37.874467'),
(21, 'UP16DA2006', 'vehicle_type', 'uploads/20240807170152_UP16DA2006_2024-08-07_170152.jpg', '2024-08-07 11:31:52.465087', 'IN', 1, '2024-08-07 11:31:52.465087', '2024-08-07 11:31:52.465087'),
(22, 'PUPT6DA2006', 'vehicle_type', 'uploads/20240807170320_PUPT6DA2006_2024-08-07_170320.jpg', '2024-08-07 11:33:20.771062', 'IN', 1, '2024-08-07 11:33:20.771062', '2024-08-07 11:33:20.771062'),
(23, 'UPT6DA2006', 'vehicle_type', 'uploads/20240807170320_UPT6DA2006_2024-08-07_170320.jpg', '2024-08-07 11:33:20.911872', 'IN', 1, '2024-08-07 11:33:20.911872', '2024-08-07 11:33:20.911872'),
(24, '9007Y091DN', 'vehicle_type', 'uploads/20240807170321_9007Y091DN_2024-08-07_170321.jpg', '2024-08-07 11:33:21.805451', 'IN', 1, '2024-08-07 11:33:21.805451', '2024-08-07 11:33:21.805451'),
(25, 'PUP16DA2006', 'vehicle_type', 'uploads/20240807170332_PUP16DA2006_2024-08-07_170332.jpg', '2024-08-07 11:33:32.406324', 'IN', 1, '2024-08-07 11:33:32.406324', '2024-08-07 11:33:32.406324'),
(26, 'FUP16DA2006', 'vehicle_type', 'uploads/20240807170333_FUP16DA2006_2024-08-07_170333.jpg', '2024-08-07 11:33:33.112802', 'IN', 1, '2024-08-07 11:33:33.112802', '2024-08-07 11:33:33.112802'),
(27, 'EUP160A2006', 'vehicle_type', 'uploads/20240807170334_EUP160A2006_2024-08-07_170334.jpg', '2024-08-07 11:33:34.536814', 'IN', 1, '2024-08-07 11:33:34.536814', '2024-08-07 11:33:34.536814');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `auth_group`
--
ALTER TABLE `auth_group`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `name` (`name`);

--
-- Indexes for table `auth_group_permissions`
--
ALTER TABLE `auth_group_permissions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_group_permissions_group_id_permission_id_0cd325b0_uniq` (`group_id`,`permission_id`),
  ADD KEY `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` (`permission_id`);

--
-- Indexes for table `auth_permission`
--
ALTER TABLE `auth_permission`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_permission_content_type_id_codename_01ab375a_uniq` (`content_type_id`,`codename`);

--
-- Indexes for table `auth_user`
--
ALTER TABLE `auth_user`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `username` (`username`);

--
-- Indexes for table `auth_user_groups`
--
ALTER TABLE `auth_user_groups`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_user_groups_user_id_group_id_94350c0c_uniq` (`user_id`,`group_id`),
  ADD KEY `auth_user_groups_group_id_97559544_fk_auth_group_id` (`group_id`);

--
-- Indexes for table `auth_user_user_permissions`
--
ALTER TABLE `auth_user_user_permissions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_user_user_permissions_user_id_permission_id_14a6b632_uniq` (`user_id`,`permission_id`),
  ADD KEY `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm` (`permission_id`);

--
-- Indexes for table `boomsig`
--
ALTER TABLE `boomsig`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `django_admin_log`
--
ALTER TABLE `django_admin_log`
  ADD PRIMARY KEY (`id`),
  ADD KEY `django_admin_log_content_type_id_c4bce8eb_fk_django_co` (`content_type_id`),
  ADD KEY `django_admin_log_user_id_c564eba6_fk_auth_user_id` (`user_id`);

--
-- Indexes for table `django_content_type`
--
ALTER TABLE `django_content_type`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `django_content_type_app_label_model_76bd3d3b_uniq` (`app_label`,`model`);

--
-- Indexes for table `django_migrations`
--
ALTER TABLE `django_migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `django_session`
--
ALTER TABLE `django_session`
  ADD PRIMARY KEY (`session_key`),
  ADD KEY `django_session_expire_date_a5c62663` (`expire_date`);

--
-- Indexes for table `exit`
--
ALTER TABLE `exit`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `history`
--
ALTER TABLE `history`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `paymentsys_order`
--
ALTER TABLE `paymentsys_order`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `plate`
--
ALTER TABLE `plate`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `auth_group`
--
ALTER TABLE `auth_group`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `auth_group_permissions`
--
ALTER TABLE `auth_group_permissions`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `auth_permission`
--
ALTER TABLE `auth_permission`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=45;

--
-- AUTO_INCREMENT for table `auth_user`
--
ALTER TABLE `auth_user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `auth_user_groups`
--
ALTER TABLE `auth_user_groups`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `auth_user_user_permissions`
--
ALTER TABLE `auth_user_user_permissions`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `boomsig`
--
ALTER TABLE `boomsig`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `django_admin_log`
--
ALTER TABLE `django_admin_log`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `django_content_type`
--
ALTER TABLE `django_content_type`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `django_migrations`
--
ALTER TABLE `django_migrations`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=37;

--
-- AUTO_INCREMENT for table `exit`
--
ALTER TABLE `exit`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `history`
--
ALTER TABLE `history`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=29;

--
-- AUTO_INCREMENT for table `paymentsys_order`
--
ALTER TABLE `paymentsys_order`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `plate`
--
ALTER TABLE `plate`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `auth_group_permissions`
--
ALTER TABLE `auth_group_permissions`
  ADD CONSTRAINT `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  ADD CONSTRAINT `auth_group_permissions_group_id_b120cbf9_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`);

--
-- Constraints for table `auth_permission`
--
ALTER TABLE `auth_permission`
  ADD CONSTRAINT `auth_permission_content_type_id_2f476e4b_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`);

--
-- Constraints for table `auth_user_groups`
--
ALTER TABLE `auth_user_groups`
  ADD CONSTRAINT `auth_user_groups_group_id_97559544_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`),
  ADD CONSTRAINT `auth_user_groups_user_id_6a12ed8b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);

--
-- Constraints for table `auth_user_user_permissions`
--
ALTER TABLE `auth_user_user_permissions`
  ADD CONSTRAINT `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  ADD CONSTRAINT `auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);

--
-- Constraints for table `django_admin_log`
--
ALTER TABLE `django_admin_log`
  ADD CONSTRAINT `django_admin_log_content_type_id_c4bce8eb_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`),
  ADD CONSTRAINT `django_admin_log_user_id_c564eba6_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
