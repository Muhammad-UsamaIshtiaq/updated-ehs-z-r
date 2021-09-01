-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Sep 01, 2021 at 10:39 AM
-- Server version: 10.4.11-MariaDB
-- PHP Version: 7.3.17

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `nehs_db`
--

-- --------------------------------------------------------

--
-- Table structure for table `ackn_forms`
--

CREATE TABLE `ackn_forms` (
  `id` int(250) NOT NULL,
  `name` varchar(250) NOT NULL,
  `course_id` int(100) NOT NULL,
  `form_id` int(100) NOT NULL,
  `lng` varchar(10) NOT NULL DEFAULT 'eng',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `ackn_forms`
--

INSERT INTO `ackn_forms` (`id`, `name`, `course_id`, `form_id`, `lng`, `created_at`, `updated_at`) VALUES
(1, 'newd', 5, 3, 'eng', '2021-07-10 11:44:01', '2021-07-10 11:44:01'),
(2, '2ndassignment', 5, 4, 'eng', '2021-07-13 06:50:11', '2021-07-13 06:50:11'),
(4, 'dsfsff', 5, 9, 'esp', '2021-07-28 06:55:26', '2021-07-28 06:55:26'),
(5, 'HEAT ILLNESS', 17, 12, 'eng', '2021-08-10 22:10:43', '2021-08-10 22:10:43'),
(6, 'qwertyuiop', 18, 13, 'eng', '2021-08-14 16:27:47', '2021-08-14 16:27:47');

-- --------------------------------------------------------

--
-- Table structure for table `assignments`
--

CREATE TABLE `assignments` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `course_id` int(11) NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `file` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `lng` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'eng',
  `type` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `assignments`
--

INSERT INTO `assignments` (`id`, `course_id`, `title`, `description`, `file`, `lng`, `type`, `status`, `created_at`, `updated_at`) VALUES
(3, 4, 'Makhna', 'abc', '3fwtD3SplNM', 'eng', 'video', '1', '2021-07-07 12:29:06', '2021-07-07 12:29:06'),
(5, 5, 'testtt', 'dff', 'rUWxSEwctFU', 'eng', 'video', '1', '2021-07-10 08:44:56', '2021-07-10 08:44:56'),
(6, 6, 'hkjh', 'hghjg', 'n1A-cSlaRXU', 'eng', 'video', '1', '2021-07-10 12:22:05', '2021-07-28 11:44:10'),
(7, 5, 'hkjh', 'hghjg', 'c1Uss2V38I0', 'eng', 'video', '1', '2021-07-12 05:35:55', '2021-07-29 07:49:21'),
(11, 16, 'PREBA-1', 'test', 'bjL6NCgxa_c', 'eng', 'video', '1', '2021-08-10 00:25:36', '2021-08-10 00:25:36'),
(12, 16, 'PREBA-1', 'test', 'bjL6NCgxa_c', 'eng', 'video', '1', '2021-08-10 00:30:56', '2021-08-10 00:30:56'),
(13, 18, 'TEst 2', 'test', 'bsgzgWDSHPI', 'eng', 'video', '1', '2021-08-11 23:17:30', '2021-08-11 23:23:27'),
(14, 18, '15', 'Second Test', 'bsgzgWDSHPI', 'eng', 'video', '1', '2021-08-11 23:25:51', '2021-08-11 23:25:51'),
(15, 18, '15', 'Second Test', 'bsgzgWDSHPI', 'eng', 'video', '1', '2021-08-11 23:39:27', '2021-08-11 23:39:27'),
(16, 18, 'PREBA-1', 'test', 'bjL6NCgxa_c', 'eng', 'video', '1', '2021-08-14 16:28:25', '2021-08-14 16:28:25'),
(17, 18, '15', 'Second Test', 'bsgzgWDSHPI', 'eng', 'video', '1', '2021-08-14 16:28:42', '2021-08-14 16:28:42'),
(18, 16, 'PREBA-1', 'test', 'bjL6NCgxa_c', 'eng', 'video', '1', '2021-08-17 21:02:40', '2021-08-17 21:02:40');

-- --------------------------------------------------------

--
-- Table structure for table `assignquestions`
--

CREATE TABLE `assignquestions` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `course_id` int(11) NOT NULL,
  `question_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `assignquestions`
--

INSERT INTO `assignquestions` (`id`, `course_id`, `question_id`, `created_at`, `updated_at`) VALUES
(1, 4, 6, '2021-04-29 06:48:35', '2021-04-29 06:48:35'),
(2, 4, 6, '2021-04-29 06:49:44', '2021-04-29 06:49:45'),
(3, 4, 1, '2021-04-29 07:00:54', '2021-04-29 07:00:54'),
(4, 4, 7, '2021-04-29 07:00:54', '2021-04-29 07:00:54'),
(5, 4, 6, '2021-04-29 07:00:54', '2021-04-29 07:00:54'),
(6, 5, 5, '2021-04-30 01:21:51', '2021-04-30 01:21:51'),
(7, 4, 1, '2021-04-30 04:32:59', '2021-04-30 04:32:59'),
(8, 4, 1, '2021-04-30 11:02:52', '2021-04-30 11:02:52'),
(9, 4, 7, '2021-04-30 11:02:52', '2021-04-30 11:02:52'),
(10, 4, 6, '2021-04-30 11:02:52', '2021-04-30 11:02:52'),
(11, 4, 8, '2021-04-30 11:02:52', '2021-04-30 11:02:52'),
(12, 4, 1, '2021-06-19 06:03:34', '2021-06-19 06:03:34'),
(13, 4, 7, '2021-06-19 06:03:34', '2021-06-19 06:03:34'),
(14, 4, 6, '2021-06-19 06:03:34', '2021-06-19 06:03:34'),
(15, 4, 9, '2021-06-19 06:03:34', '2021-06-19 06:03:34'),
(16, 5, 5, '2021-06-21 06:00:13', '2021-06-21 06:00:13');

-- --------------------------------------------------------

--
-- Table structure for table `assign_commons`
--

CREATE TABLE `assign_commons` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `course_id` int(11) NOT NULL,
  `department_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `assign_commons`
--

INSERT INTO `assign_commons` (`id`, `course_id`, `department_id`, `created_at`, `updated_at`) VALUES
(2, 5, 3, '2021-04-29 07:19:18', '2021-04-29 07:19:18'),
(3, 5, 3, '2021-04-30 01:23:52', '2021-04-30 01:23:52');

-- --------------------------------------------------------

--
-- Table structure for table `certificates`
--

CREATE TABLE `certificates` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `course_id` int(11) NOT NULL,
  `course_type` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `issuer` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `ticket` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `expiray_date` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `accuqired` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `company_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `certificates`
--

INSERT INTO `certificates` (`id`, `course_id`, `course_type`, `issuer`, `ticket`, `expiray_date`, `accuqired`, `created_at`, `updated_at`, `company_id`) VALUES
(6, 7, '8 Hour HAZWOPER REFRESHER', 'Admin', '500', '2021-05-22', '2021-05-12', '2021-05-07 10:03:24', '2021-05-07 10:03:53', 0),
(7, 16, 'FALL PROTECTION TRAINING', 'Hugo Trevino / Safety Director', '001', '2023-09-09', '2021-08-06', '2021-08-06 21:54:57', '2021-08-12 18:16:02', 1),
(8, 17, 'BOOM LIFT TRAINING', 'a', '600', '2021-08-13', '2021-08-12', '2021-08-12 18:15:40', '2021-08-12 18:15:40', 1);

-- --------------------------------------------------------

--
-- Table structure for table `certificate_types`
--

CREATE TABLE `certificate_types` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` tinyint(4) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `company_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `certificate_types`
--

INSERT INTO `certificate_types` (`id`, `name`, `status`, `created_at`, `updated_at`, `company_id`) VALUES
(5, 'Cargo Securement', 1, '2021-05-07 09:58:07', '2021-05-07 09:58:07', 0),
(6, 'CTL Driver\'s Liscence', 1, '2021-05-07 09:58:18', '2021-05-07 09:58:18', 0),
(7, 'FALL PROTECTION TRAINING', 1, '2021-08-06 21:24:39', '2021-08-06 21:24:39', 1),
(8, 'SCISSOR LIFT TRAINING', 1, '2021-08-10 01:11:17', '2021-08-10 01:11:17', 1),
(9, 'FORKLIFT TRAINING', 1, '2021-08-10 01:11:27', '2021-08-10 01:11:27', 1),
(10, 'SKYTRACK TRAINING', 1, '2021-08-10 01:11:35', '2021-08-10 01:11:35', 1),
(11, 'SKID STEER TRAINING', 1, '2021-08-10 01:11:43', '2021-08-10 01:11:43', 1),
(12, 'BOOM LIFT TRAINING', 1, '2021-08-10 01:11:52', '2021-08-10 01:11:52', 1),
(13, 'FRONT END LOADER TRAINING', 1, '2021-08-10 01:12:08', '2021-08-10 01:12:08', 1),
(14, 'FIRST AID / CPR / AED TRAINING', 1, '2021-08-10 01:12:21', '2021-08-10 01:12:21', 1),
(15, 'GHS', 1, '2021-08-10 01:13:59', '2021-08-10 01:13:59', 1);

-- --------------------------------------------------------

--
-- Table structure for table `companies`
--

CREATE TABLE `companies` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `logo` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` tinyint(4) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `companies`
--

INSERT INTO `companies` (`id`, `name`, `description`, `logo`, `status`, `created_at`, `updated_at`) VALUES
(1, 'City Wide', 'sdfdsf', 'log.png', 1, '2021-07-15 08:24:45', '2021-08-02 19:43:24'),
(2, 'Dell', 'dell sfsdf', 'Dell1627372116.jpg', 1, '2021-07-15 08:26:39', '2021-07-27 07:48:36'),
(4, 'thekjbvjdsbv', 'vfvfvdvvwd', 'thekjbvjdsbv1627915882.jpg', 1, '2021-08-02 19:51:22', '2021-08-02 19:51:22');

-- --------------------------------------------------------

--
-- Table structure for table `coursecategory`
--

CREATE TABLE `coursecategory` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `esp_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` tinyint(4) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `company_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `coursecategory`
--

INSERT INTO `coursecategory` (`id`, `name`, `esp_name`, `status`, `created_at`, `updated_at`, `company_id`) VALUES
(4, 'test123', 'test123', 1, '2021-04-20 08:24:42', '2021-04-20 08:24:42', 2),
(10, 'SAFETY', 'SEGURIDAD', 1, '2021-08-10 00:07:55', '2021-08-10 00:07:55', 1),
(11, 'HEAT ILLNESS', 'ENFERMEDAD POR CALOR', 1, '2021-08-10 22:08:17', '2021-08-10 22:08:17', 1),
(12, 'TEST 2', 'Preba 2', 1, '2021-08-11 23:15:35', '2021-08-11 23:15:35', 1);

-- --------------------------------------------------------

--
-- Table structure for table `courses`
--

CREATE TABLE `courses` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `esp_name` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` tinyint(4) NOT NULL,
  `cat_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `department_id` int(100) DEFAULT NULL,
  `esp_description` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `company_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `courses`
--

INSERT INTO `courses` (`id`, `name`, `description`, `esp_name`, `status`, `cat_id`, `created_at`, `updated_at`, `department_id`, `esp_description`, `company_id`) VALUES
(16, 'TEST-1', 'Preba', 'PREBA-1', 1, 10, '2021-08-10 00:11:08', '2021-08-10 00:11:08', 5, 'Preba', 1),
(17, 'HEAT ILLNESS', 'HEAT ILLNESS', 'ENFERMEDAD POR CALOR', 1, 11, '2021-08-10 22:09:26', '2021-08-10 22:09:26', 5, 'ENFERMEDAD POR CALOR', 1),
(18, 'TEST 2', 'Test 2', 'Preba 2', 1, 12, '2021-08-11 23:16:26', '2021-08-11 23:16:26', 5, 'Prebbbbba 2', 1),
(19, 'ui', 'rtyuio', 'rtuio', 1, 10, '2021-08-17 19:36:25', '2021-08-17 19:36:25', 5, 'tyuj', 1);

-- --------------------------------------------------------

--
-- Table structure for table `course_results`
--

CREATE TABLE `course_results` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `worker_id` int(11) DEFAULT NULL,
  `course_id` int(11) DEFAULT NULL,
  `correct` int(11) DEFAULT NULL,
  `wrong` int(11) DEFAULT NULL,
  `attempt` int(11) DEFAULT NULL,
  `total` int(11) DEFAULT NULL,
  `grade` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `assign` tinyint(4) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `file_no` varchar(10) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `vid_no` varchar(10) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `start` float DEFAULT NULL,
  `end` varchar(10) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `state` varchar(10) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `type` varchar(10) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `company_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `course_results`
--

INSERT INTO `course_results` (`id`, `worker_id`, `course_id`, `correct`, `wrong`, `attempt`, `total`, `grade`, `assign`, `created_at`, `updated_at`, `file_no`, `vid_no`, `start`, `end`, `state`, `type`, `company_id`) VALUES
(35, 86, 16, NULL, NULL, NULL, NULL, NULL, 0, '2021-08-11 01:45:53', '2021-08-11 01:47:40', NULL, '2', 0, NULL, 'pause', 'video', 1),
(36, 86, 17, NULL, NULL, NULL, NULL, NULL, 0, '2021-08-11 01:48:10', '2021-08-11 01:48:10', NULL, NULL, NULL, NULL, 'in_progres', NULL, 1),
(37, 96, 16, NULL, NULL, NULL, NULL, NULL, 0, '2021-08-11 16:01:09', '2021-08-11 16:01:09', NULL, NULL, NULL, NULL, 'in_progres', NULL, 1),
(38, 96, 17, NULL, NULL, NULL, NULL, NULL, 0, '2021-08-11 16:03:12', '2021-08-11 16:03:12', NULL, NULL, NULL, NULL, 'in_progres', NULL, 1),
(39, 86, 18, NULL, NULL, NULL, NULL, NULL, 0, '2021-08-11 23:41:43', '2021-08-11 23:41:43', NULL, NULL, NULL, NULL, 'in_progres', NULL, 1),
(40, 90, 16, NULL, NULL, NULL, NULL, NULL, 0, '2021-08-19 23:53:54', '2021-08-19 23:53:54', NULL, NULL, NULL, NULL, 'in_progres', NULL, 1),
(41, 87, 16, NULL, NULL, NULL, NULL, NULL, 0, '2021-08-25 21:04:46', '2021-08-25 21:04:46', NULL, NULL, NULL, NULL, 'in_progres', NULL, 1);

-- --------------------------------------------------------

--
-- Table structure for table `departments`
--

CREATE TABLE `departments` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` tinyint(4) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `company_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `departments`
--

INSERT INTO `departments` (`id`, `name`, `description`, `status`, `created_at`, `updated_at`, `company_id`) VALUES
(5, 'SAFETY', 'SAFETY', 1, '2021-08-05 23:21:29', '2021-08-11 00:22:35', 1),
(6, 'PLUMBING SERVICE', 'PLUMBING SERVICE', 1, '2021-08-09 18:51:41', '2021-08-09 18:51:41', 1),
(7, 'HAVC START UP / SERVICE', 'HAVC START UP', 1, '2021-08-09 18:53:12', '2021-08-09 19:46:25', 1),
(8, 'PLUMBING', 'PLUMBING', 1, '2021-08-09 18:53:43', '2021-08-09 18:53:43', 1),
(9, 'SHOP', 'SHOP', 1, '2021-08-09 18:56:20', '2021-08-09 18:56:20', 1),
(10, 'HVAC CONSTRUCTION', 'HVAC CONSTRUCTION', 1, '2021-08-09 18:57:17', '2021-08-11 00:22:23', 1),
(11, 'SHEET METAL SHOP', 'SHEET METAL SHOP', 1, '2021-08-09 19:00:25', '2021-08-09 19:00:25', 1),
(12, 'PLUMBING SUBCONTRACTORS', 'PLUMBING SUBCONTRACTORS', 1, '2021-08-09 19:00:59', '2021-08-09 19:00:59', 1),
(13, 'FIELD MANAGEMENT / PLUMBING / HVAC', 'FIELD MANAGEMENT / PLUMBING / HVAC', 1, '2021-08-09 19:10:22', '2021-08-09 19:10:22', 1),
(20, 'a', 'cgftyu', 1, '2021-08-17 19:42:56', '2021-08-17 19:42:56', 1),
(21, 'b', 'ghhjhggh', 1, '2021-08-17 19:43:07', '2021-08-17 19:43:07', 1);

-- --------------------------------------------------------

--
-- Table structure for table `department_has_courses`
--

CREATE TABLE `department_has_courses` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `department_id` bigint(20) NOT NULL,
  `course_id` bigint(20) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `email_templates`
--

CREATE TABLE `email_templates` (
  `id` int(6) UNSIGNED NOT NULL,
  `id_admin` int(10) NOT NULL DEFAULT 1,
  `num_send` int(8) NOT NULL DEFAULT 0,
  `name` varchar(150) DEFAULT NULL,
  `email_from` varchar(150) DEFAULT NULL,
  `from_man` varchar(150) DEFAULT NULL,
  `subject` varchar(150) DEFAULT NULL,
  `descr` longtext NOT NULL,
  `subject_esp` varchar(150) NOT NULL DEFAULT '',
  `descr_esp` longtext NOT NULL,
  `variables_text` text NOT NULL,
  `status` tinyint(4) NOT NULL DEFAULT 1
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `email_templates`
--

INSERT INTO `email_templates` (`id`, `id_admin`, `num_send`, `name`, `email_from`, `from_man`, `subject`, `descr`, `subject_esp`, `descr_esp`, `variables_text`, `status`) VALUES
(1, 1, 0, 'Invitation for Manager with Confirmation', 'noreply@citywide.com', 'City Wide Mechanical', 'You are assigned as a Managerr', 'Dear&nbsp;<br>\r\nYou are assigned as a Manager.<br><br>\r\nThis email is automatically generated so please do not reply to it.\r\n<br><br>\r\nTo activate your account and confirm your registration details are correct, please click on the link below:\r\n<br><br>citywide.com', '', '', '', 1),
(2, 1, 0, 'Account Registration Confirmation - 2nd attempt  [Manager]dd', 'noreply@citywide.com', 'City Wide Mechanical', 'Account Registration Confirmationd', 'Dear [name],ddd<br>\r\nYou are assigned as a Manager for <b>[district_name]</b>\r\n<br><br>\r\nThis email is automatically generated so please do not reply to it.\r\n<br><br>\r\nTo activate your account and confirm your registration details are correct, please click on the link below:\r\n<br><br>\r\n<a class=\"button\" href=\"[confirm_url]\">Activate</a> \r\n<br><br>\r\n<b>Your email:</b> [email]<br>\r\n<b>Your password:</b> [password] \r\n<br><br>CITYWIDE MECHANICAL', '', '', '', 1),
(3, 1, 0, 'Send Invite for Personnel', 'noreply@citywide.com', 'City Wide Mechanical', 'You are invited to the city wide mechanical system', '<p><br><br>\r\nWelcome to the City wide mechanical training and assessment process! Please fill out your profile.<br><br><span style=\"font-family: Poppins, Helvetica, sans-serif;\">City wide mechanical&nbsp;</span>Team<br><br>\r\n¡Bienvenidos al proceso de capacitación y evaluación de&nbsp;<span style=\"font-family: Poppins, Helvetica, sans-serif;\">City wide mechanical</span>!&nbsp;Por favor complete su perfil.</p><p><br>\r\nEquipo&nbsp;<span style=\"font-family: Poppins, Helvetica, sans-serif;\">City wide mechanical</span></p>', '', '', '', 1),
(4, 1, 0, 'Re-Send Invite for Personnel', 'farhanbashir06@gmail.com', 'City Wide Mechanical', 'You are invited to the city wide mechanical system', '<br style=\"font-family: Poppins, Helvetica, sans-serif;\"><br style=\"font-family: Poppins, Helvetica, sans-serif;\"><span style=\"font-family: Poppins, Helvetica, sans-serif;\">Welcome to the City wide mechanical training and assessment process!</span><br style=\"font-family: Poppins, Helvetica, sans-serif;\"><br style=\"font-family: Poppins, Helvetica, sans-serif;\"><span style=\"font-family: Poppins, Helvetica, sans-serif;\">City wide mechanical&nbsp;</span><span style=\"font-family: Poppins, Helvetica, sans-serif;\">Team</span><br style=\"font-family: Poppins, Helvetica, sans-serif;\"><br style=\"font-family: Poppins, Helvetica, sans-serif;\"><span style=\"font-family: Poppins, Helvetica, sans-serif;\">¡Bienvenidos al proceso de capacitación y evaluación de&nbsp;</span><span style=\"font-family: Poppins, Helvetica, sans-serif;\">City wide mechanical</span><span style=\"font-family: Poppins, Helvetica, sans-serif;\">!</span><br style=\"font-family: Poppins, Helvetica, sans-serif;\"><br style=\"font-family: Poppins, Helvetica, sans-serif;\"><span style=\"font-family: Poppins, Helvetica, sans-serif;\">Equipo&nbsp;</span><span style=\"font-family: Poppins, Helvetica, sans-serif;\">City wide mechanical</span><br>', '', '', '', 1),
(8, 1, 0, 'Notification for Personnel about new assigned task', 'noreply@citywide.com', 'City Wide Mechanical', 'You have new Course / Nueva tarea', '<b>[New Course Assign]</b>,\r\n<br><br>\r\nHi ! You are assigned to a new Course.\r\n<br><br>\r\nPlease Click to <a class=\"button\" href=\"[login_url]\">Account</a> to log into your account or just log in with your username and password.\r\n<br><br>\r\nCITYWIDE MECHANICAL<br>', '', '', '', 1),
(11, 1, 0, 'Notifying You !You are added in new Group', 'noreply@citywide.com', 'City Wide Mechanical', 'Added in New Group', '<b>[New Group Joining]</b>,\r\n<br><br>\r\nHi ! You are Added in new Group.\r\n<br><br><br><br>\r\nDFWCZ Team<br>', '', '', '', 1);

-- --------------------------------------------------------

--
-- Table structure for table `equipments`
--

CREATE TABLE `equipments` (
  `id` int(6) UNSIGNED NOT NULL,
  `id_company` int(6) DEFAULT NULL,
  `name` varchar(150) NOT NULL DEFAULT '',
  `descr` text NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 1,
  `pos` int(5) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `equipments`
--

INSERT INTO `equipments` (`id`, `id_company`, `name`, `descr`, `status`, `pos`, `created_at`, `updated_at`) VALUES
(7, 1, 'SISSOR LIFT', 'abc', 1, 5, '2021-05-08 06:22:21', '2021-05-09 07:58:49'),
(8, 1, 'SKY TRAK', 'sdgdsf', 1, 7, '2021-05-10 06:22:27', '2021-05-09 09:46:55'),
(9, 1, 'FORK LIFT', '', 1, 3, '2021-05-18 06:22:30', '0000-00-00 00:00:00'),
(10, 1, 'BOOM LIFT', 'abc', 1, 2, '2021-05-10 06:22:57', '2021-05-12 11:48:24'),
(11, 1, 'SPIDER LIFT', 'abc', 1, 6, '2021-05-09 03:35:07', '2021-05-09 07:58:14');

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `faqs`
--

CREATE TABLE `faqs` (
  `id` int(11) NOT NULL,
  `question` varchar(50) NOT NULL,
  `answer` varchar(400) NOT NULL,
  `company_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `faqs`
--

INSERT INTO `faqs` (`id`, `question`, `answer`, `company_id`) VALUES
(1, 'why you need to work hard?', 'you need to work hard only then you will succeed otherwise you will loose your self-respect as well as your job so dont waste your time if you are not interested.j', 1),
(2, 'what i need to do ??', 'you need many things', 1),
(6, 'why', 'is this not done', 1);

-- --------------------------------------------------------

--
-- Table structure for table `fields`
--

CREATE TABLE `fields` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `field_type` enum('input','textarea','select','radio','checkbox') COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `folders`
--

CREATE TABLE `folders` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `company_id` int(50) NOT NULL,
  `type` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `folders`
--

INSERT INTO `folders` (`id`, `name`, `company_id`, `type`, `created_at`, `updated_at`) VALUES
(21, 'mytoolbox', 2, 'toolbox', '2021-07-16 13:15:09', '2021-07-16 13:15:09'),
(23, 'Form folder', 1, 'form', '2021-07-24 07:57:17', '2021-07-24 07:57:17'),
(32, 'CWM EMPLOYEE HANDBOOK', 1, 'resource', '2021-08-09 19:53:24', '2021-08-09 19:53:24'),
(33, 'SAFETY DATA SHEETS', 1, 'resource', '2021-08-09 19:56:00', '2021-08-09 19:56:00'),
(39, 'TOOLS-ARIEMENTAS', 1, 'toolbox', '2021-08-09 20:31:49', '2021-08-09 20:31:49'),
(40, 'PPE-EPP', 1, 'toolbox', '2021-08-09 20:32:30', '2021-08-09 20:32:30'),
(41, 'FALL PROTECTION-PROTECTCION ENCONTRA CAIDAS', 1, 'toolbox', '2021-08-09 20:33:11', '2021-08-09 20:33:11'),
(42, 'SCAFFOLDS-ANDAMIOS', 1, 'toolbox', '2021-08-09 20:34:18', '2021-08-09 20:34:18'),
(43, 'GENERAL SAFETY', 1, 'toolbox', '2021-08-09 20:38:43', '2021-08-09 20:38:43'),
(44, 'LADDER SAFETY-SEGURIDAD EN ESCALERA', 1, 'toolbox', '2021-08-09 20:39:58', '2021-08-09 20:39:58'),
(45, 'FIRST AID-PRIMEROS AUXILIOS', 1, 'toolbox', '2021-08-09 20:43:12', '2021-08-09 20:43:12'),
(46, 'ELECTRICAL-ELECTRICO', 1, 'toolbox', '2021-08-09 20:47:25', '2021-08-09 20:47:25'),
(47, 'EXTREME TEMPATURE-TEMPATURA EXTREMA', 1, 'toolbox', '2021-08-09 20:52:57', '2021-08-09 20:52:57'),
(48, 'CONFINED SPACE', 1, 'toolbox', '2021-08-09 20:53:58', '2021-08-09 20:53:58'),
(49, 'CRANE-GRUA', 1, 'toolbox', '2021-08-09 21:14:54', '2021-08-09 21:14:54'),
(50, 'COMPANY POLICY-POLITICA DE LA COMPANIA', 1, 'toolbox', '2021-08-09 21:18:54', '2021-08-09 21:18:54'),
(51, 'PATHOGENS-PATOGENAS', 1, 'toolbox', '2021-08-09 21:21:11', '2021-08-09 21:21:11'),
(52, 'FLEET-FLOTA', 1, 'toolbox', '2021-08-09 21:29:46', '2021-08-09 21:29:46'),
(53, 'ELECTRICAL AND GAS EQUIPMENT-EQUIPOS ELECTRICOS Y DE GAS', 1, 'toolbox', '2021-08-09 21:31:51', '2021-08-09 21:31:51'),
(54, 'TRENCHING-ZANJA', 1, 'toolbox', '2021-08-09 21:32:30', '2021-08-09 21:32:30'),
(55, 'GAS AND CYLYNDERS-GAS Y CILINDROS', 1, 'toolbox', '2021-08-09 21:34:24', '2021-08-09 21:34:24'),
(56, 'FLAMABLE-INFLAMABLE', 1, 'toolbox', '2021-08-09 21:40:33', '2021-08-14 11:05:11'),
(57, 'TRAFFIC CONTROL-CONTROL DE TRAFICO', 1, 'toolbox', '2021-08-09 21:48:35', '2021-08-09 21:48:35'),
(58, 'MEDICAL', 1, 'resource', '2021-08-10 01:06:52', '2021-08-10 01:06:52'),
(59, 'EMERGENCY PROCEDURES', 1, 'resource', '2021-08-10 01:09:15', '2021-08-10 01:09:15'),
(60, 'EVALUATION FORMS', 1, 'form', '2021-08-10 18:44:15', '2021-08-10 18:44:15'),
(68, 'ccc', 1, 'toolbox', '2021-08-13 23:53:06', '2021-08-13 23:53:06'),
(69, 'abc', 1, 'toolbox', '2021-08-13 23:55:40', '2021-08-13 23:55:40'),
(70, 'aab', 1, 'toolbox', '2021-08-13 23:55:49', '2021-08-13 23:55:49'),
(71, 'ddd', 1, 'toolbox', '2021-08-13 23:55:53', '2021-08-13 23:55:53'),
(72, 'ghhhhhhh', 1, 'toolbox', '2021-08-17 20:43:15', '2021-08-17 20:43:32'),
(73, 'df', 1, 'resource', '2021-08-23 03:42:43', '2021-08-23 03:42:43');

-- --------------------------------------------------------

--
-- Table structure for table `forms`
--

CREATE TABLE `forms` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `form_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `file_name` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `form_img` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `data` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `company_id` int(100) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `json` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `forms`
--

INSERT INTO `forms` (`id`, `form_name`, `file_name`, `form_img`, `data`, `company_id`, `created_at`, `updated_at`, `json`) VALUES
(1, 'Safety form', NULL, NULL, '<div class=\"rendered-form\">\r\n<div class=\"formbuilder-button form-group field-button-1624955111863\">\r\n<button type=\"button\" class=\"btn-default btn\" name=\"button-1624955111863\" access=\"false\" style=\"default\" id=\"button-1624955111863\">Button</button>\r\n</div>\r\n<div class=\"formbuilder-text form-group field-text-1624955112597\">\r\n<label for=\"text-1624955112597\" class=\"formbuilder-text-label\">Text Field</label>\r\n<input type=\"text\" class=\"form-control\" name=\"text-1624955112597\" access=\"false\" value=\"ok i am fine\" id=\"text-1624955112597\">\r\n</div>\r\n<div class=\"formbuilder-number form-group field-number-1624955113029\">\r\n<label for=\"number-1624955113029\" class=\"formbuilder-number-label\">Number</label>\r\n<input type=\"number\" class=\"form-control\" name=\"number-1624955113029\" access=\"false\" value=\"04040\" id=\"number-1624955113029\">\r\n</div>\r\n<div class=\"formbuilder-radio-group form-group field-radio-group-1624969311202\">\r\n<label for=\"radio-group-1624969311202\" class=\"formbuilder-radio-group-label\">Radio Group</label>\r\n<div class=\"radio-group\">\r\n<div class=\"formbuilder-radio\">\r\n<input name=\"radio-group-1624969311202\" access=\"false\" id=\"radio-group-1624969311202-0\" value=\"option-1\" type=\"radio\">\r\n<label for=\"radio-group-1624969311202-0\">Option 1</label>\r\n</div>\r\n<div class=\"formbuilder-radio\">\r\n<input name=\"radio-group-1624969311202\" access=\"false\" id=\"radio-group-1624969311202-1\" value=\"option-2\" type=\"radio\" checked=\"checked\">\r\n<label for=\"radio-group-1624969311202-1\">Option 2</label>\r\n</div>\r\n<div class=\"formbuilder-radio\">\r\n<input name=\"radio-group-1624969311202\" access=\"false\" id=\"radio-group-1624969311202-2\" value=\"option-3\" type=\"radio\">\r\n<label for=\"radio-group-1624969311202-2\">Option 3</label>\r\n</div>\r\n</div>\r\n</div>\r\n</div>', 1, '2021-06-29 08:25:25', '2021-07-24 07:09:24', '[{\"type\":\"button\",\"label\":\"Button\",\"subtype\":\"button\",\"className\":\"btn-default btn\",\"name\":\"button-1624955111863\",\"access\":false,\"style\":\"default\"},{\"type\":\"text\",\"required\":false,\"label\":\"Text Field\",\"className\":\"form-control\",\"name\":\"text-1624955112597\",\"access\":false,\"value\":\"ok i am fine\",\"subtype\":\"text\"},{\"type\":\"number\",\"required\":false,\"label\":\"Number\",\"className\":\"form-control\",\"name\":\"number-1624955113029\",\"access\":false,\"value\":\"04040\"},{\"type\":\"radio-group\",\"required\":false,\"label\":\"Radio Group\",\"inline\":false,\"name\":\"radio-group-1624969311202\",\"access\":false,\"other\":false,\"values\":[{\"label\":\"Option 1\",\"value\":\"option-1\",\"selected\":false},{\"label\":\"Option 2\",\"value\":\"option-2\",\"selected\":true},{\"label\":\"Option 3\",\"value\":\"option-3\",\"selected\":false}]}]'),
(2, 'sdsd', NULL, NULL, '<div class=\"rendered-form\">\r\n<div class=\"formbuilder-file form-group field-file-1625829058667\">\r\n<label for=\"file-1625829058667\" class=\"formbuilder-file-label\">File Upload</label>\r\n<input type=\"file\" class=\"form-control\" name=\"file-1625829058667[]\" access=\"false\" multiple=\"true\" id=\"file-1625829058667\">\r\n</div>\r\n<div class=\"formbuilder-text form-group field-text-1625829157787\">\r\n<label for=\"text-1625829157787\" class=\"formbuilder-text-label\">dfsdf</label>\r\n<input type=\"text\" class=\"form-control\" name=\"text-1625829157787\" access=\"false\" value=\"fsdfdf\" id=\"text-1625829157787\">\r\n</div>\r\n</div>', 1, '2021-07-09 11:12:48', '2021-07-09 11:15:02', '[{\"type\":\"file\",\"required\":false,\"label\":\"File Upload\",\"className\":\"form-control\",\"name\":\"file-1625829058667\",\"access\":false,\"subtype\":\"file\",\"multiple\":true},{\"type\":\"text\",\"required\":false,\"label\":\"dfsdf\",\"className\":\"form-control\",\"name\":\"text-1625829157787\",\"access\":false,\"value\":\"fsdfdf\",\"subtype\":\"text\"}]'),
(3, 'newd', '16259174367760.pdf', NULL, '<div class=\"rendered-form\">\r\n<div class=\"formbuilder-autocomplete form-group field-autocomplete-1625917430516\">\r\n<label for=\"autocomplete-1625917430516\" class=\"formbuilder-autocomplete-label\">Autocomplete</label>\r\n<input class=\"form-control\" access=\"false\" require-valid-option=\"false\" id=\"autocomplete-1625917430516-input\" autocomplete=\"off\">\r\n<input class=\"form-control\" name=\"autocomplete-1625917430516\" access=\"false\" require-valid-option=\"false\" id=\"autocomplete-1625917430516\" type=\"hidden\">\r\n<ul id=\"autocomplete-1625917430516-list\" class=\"formbuilder-autocomplete-list\">\r\n<li value=\"option-1\">Option 1</li>\r\n<li value=\"option-2\">Option 2</li>\r\n<li value=\"option-3\">Option 3</li>\r\n</ul>\r\n</div>\r\n<input type=\"hidden\" name=\"hidden-1625917431096\" access=\"false\" id=\"hidden-1625917431096\">\r\n<div class=\"formbuilder-radio-group form-group field-radio-group-1625917431688\">\r\n<label for=\"radio-group-1625917431688\" class=\"formbuilder-radio-group-label\">Radio Group</label>\r\n<div class=\"radio-group\">\r\n<div class=\"formbuilder-radio\">\r\n<input name=\"radio-group-1625917431688\" access=\"false\" id=\"radio-group-1625917431688-0\" value=\"option-1\" type=\"radio\">\r\n<label for=\"radio-group-1625917431688-0\">Option 1</label>\r\n</div>\r\n<div class=\"formbuilder-radio\">\r\n<input name=\"radio-group-1625917431688\" access=\"false\" id=\"radio-group-1625917431688-1\" value=\"option-2\" type=\"radio\">\r\n<label for=\"radio-group-1625917431688-1\">Option 2</label>\r\n</div>\r\n<div class=\"formbuilder-radio\">\r\n<input name=\"radio-group-1625917431688\" access=\"false\" id=\"radio-group-1625917431688-2\" value=\"option-3\" type=\"radio\">\r\n<label for=\"radio-group-1625917431688-2\">Option 3</label>\r\n</div>\r\n</div>\r\n</div>\r\n<div class=\"formbuilder-select form-group field-select-1625917432847\">\r\n<label for=\"select-1625917432847\" class=\"formbuilder-select-label\">Select</label>\r\n<select class=\"form-control\" name=\"select-1625917432847\" id=\"select-1625917432847\">\r\n<option value=\"option-1\" selected=\"true\" id=\"select-1625917432847-0\">Option 1</option>\r\n<option value=\"option-2\" id=\"select-1625917432847-1\">Option 2</option>\r\n<option value=\"option-3\" id=\"select-1625917432847-2\">Option 3</option>\r\n</select>\r\n</div>\r\n</div>', 1, '2021-07-10 11:44:01', '2021-07-10 11:44:01', '[{\"type\":\"autocomplete\",\"required\":false,\"label\":\"Autocomplete\",\"className\":\"form-control\",\"name\":\"autocomplete-1625917430516\",\"access\":false,\"requireValidOption\":false,\"values\":[{\"label\":\"Option 1\",\"value\":\"option-1\",\"selected\":true},{\"label\":\"Option 2\",\"value\":\"option-2\",\"selected\":false},{\"label\":\"Option 3\",\"value\":\"option-3\",\"selected\":false}]},{\"type\":\"hidden\",\"name\":\"hidden-1625917431096\",\"access\":false},{\"type\":\"radio-group\",\"required\":false,\"label\":\"Radio Group\",\"inline\":false,\"name\":\"radio-group-1625917431688\",\"access\":false,\"other\":false,\"values\":[{\"label\":\"Option 1\",\"value\":\"option-1\",\"selected\":false},{\"label\":\"Option 2\",\"value\":\"option-2\",\"selected\":false},{\"label\":\"Option 3\",\"value\":\"option-3\",\"selected\":false}]},{\"type\":\"select\",\"required\":false,\"label\":\"Select\",\"className\":\"form-control\",\"name\":\"select-1625917432847\",\"access\":false,\"multiple\":false,\"values\":[{\"label\":\"Option 1\",\"value\":\"option-1\",\"selected\":true},{\"label\":\"Option 2\",\"value\":\"option-2\",\"selected\":false},{\"label\":\"Option 3\",\"value\":\"option-3\",\"selected\":false}]}]'),
(4, '2ndassignment', '16261590077897.pdf', NULL, '<div class=\"rendered-form\">\r\n<input type=\"hidden\" name=\"hidden-1626158982094\" access=\"false\" id=\"hidden-1626158982094\">\r\n<div class=\"formbuilder-radio-group form-group field-radio-group-1626158982994\">\r\n<label for=\"radio-group-1626158982994\" class=\"formbuilder-radio-group-label\">Radio Group</label>\r\n<div class=\"radio-group\">\r\n<div class=\"formbuilder-radio\">\r\n<input name=\"radio-group-1626158982994\" access=\"false\" id=\"radio-group-1626158982994-0\" value=\"option-1\" type=\"radio\">\r\n<label for=\"radio-group-1626158982994-0\">Option 1</label>\r\n</div>\r\n<div class=\"formbuilder-radio\">\r\n<input name=\"radio-group-1626158982994\" access=\"false\" id=\"radio-group-1626158982994-1\" value=\"option-2\" type=\"radio\">\r\n<label for=\"radio-group-1626158982994-1\">Option 2</label>\r\n</div>\r\n<div class=\"formbuilder-radio\">\r\n<input name=\"radio-group-1626158982994\" access=\"false\" id=\"radio-group-1626158982994-2\" value=\"option-3\" type=\"radio\">\r\n<label for=\"radio-group-1626158982994-2\">Option 3</label>\r\n</div>\r\n</div>\r\n</div>\r\n<div class=\"formbuilder-text form-group field-text-1626158983353\">\r\n<label for=\"text-1626158983353\" class=\"formbuilder-text-label\">Text Field</label>\r\n<input type=\"text\" class=\"form-control\" name=\"text-1626158983353\" access=\"false\" id=\"text-1626158983353\">\r\n</div>\r\n<div class=\"\">\r\n<p access=\"false\" id=\"control-2009215\">Paragraph</p>\r\n</div>\r\n</div>', 1, '2021-07-13 06:50:11', '2021-07-13 06:50:11', '[{\"type\":\"hidden\",\"name\":\"hidden-1626158982094\",\"access\":false},{\"type\":\"radio-group\",\"required\":false,\"label\":\"Radio Group\",\"inline\":false,\"name\":\"radio-group-1626158982994\",\"access\":false,\"other\":false,\"values\":[{\"label\":\"Option 1\",\"value\":\"option-1\",\"selected\":false},{\"label\":\"Option 2\",\"value\":\"option-2\",\"selected\":false},{\"label\":\"Option 3\",\"value\":\"option-3\",\"selected\":false}]},{\"type\":\"text\",\"required\":false,\"label\":\"Text Field\",\"className\":\"form-control\",\"name\":\"text-1626158983353\",\"access\":false,\"subtype\":\"text\"},{\"type\":\"paragraph\",\"subtype\":\"p\",\"label\":\"Paragraph\",\"access\":false}]'),
(7, 'new', NULL, NULL, '<div class=\"rendered-form\">\r\n<div class=\"\">\r\n<h1 access=\"false\" id=\"control-3732001\">Header</h1>\r\n</div>\r\n<div class=\"\">\r\n<p access=\"false\" id=\"control-6643102\">Paragraph</p>\r\n</div>\r\n<div class=\"formbuilder-text form-group field-text-1627114080448-0\">\r\n<label for=\"text-1627114080448-0\" class=\"formbuilder-text-label\">Text Field</label>\r\n<input type=\"text\" class=\"form-control\" name=\"text-1627114080448-0\" access=\"false\" value=\"okoooooofosdfkdsf\" id=\"text-1627114080448-0\">\r\n</div>\r\n<div class=\"formbuilder-textarea form-group field-textarea-1627114081076-0\">\r\n<label for=\"textarea-1627114081076-0\" class=\"formbuilder-textarea-label\">Text Area</label>\r\n<textarea type=\"textarea\" class=\"form-control\" name=\"textarea-1627114081076-0\" access=\"false\" id=\"textarea-1627114081076-0\">okokoko</textarea>\r\n</div>\r\n<div class=\"\">\r\n<p access=\"false\" id=\"control-2303282\">Paragraph</p>\r\n</div>\r\n<div class=\"formbuilder-textarea form-group field-textarea-1628006236619-0\">\r\n<label for=\"textarea-1628006236619-0\" class=\"formbuilder-textarea-label\">Text Area</label>\r\n<textarea type=\"textarea\" class=\"form-control\" name=\"textarea-1628006236619-0\" access=\"false\" id=\"textarea-1628006236619-0\">\r\n</textarea>\r\n</div>\r\n</div>', 1, '2021-07-24 08:08:46', '2021-08-03 20:57:19', '[{\"type\":\"header\",\"subtype\":\"h1\",\"label\":\"Header\",\"access\":false},{\"type\":\"paragraph\",\"subtype\":\"p\",\"label\":\"Paragraph\",\"access\":false},{\"type\":\"text\",\"required\":false,\"label\":\"Text Field\",\"className\":\"form-control\",\"name\":\"text-1627114080448-0\",\"access\":false,\"value\":\"okoooooofosdfkdsf\",\"subtype\":\"text\"},{\"type\":\"textarea\",\"required\":false,\"label\":\"Text Area\",\"className\":\"form-control\",\"name\":\"textarea-1627114081076-0\",\"access\":false,\"value\":\"okokoko\",\"subtype\":\"textarea\"},{\"type\":\"paragraph\",\"subtype\":\"p\",\"label\":\"Paragraph\",\"access\":false},{\"type\":\"textarea\",\"required\":false,\"label\":\"Text Area\",\"className\":\"form-control\",\"name\":\"textarea-1628006236619-0\",\"access\":false,\"subtype\":\"textarea\"}]'),
(9, 'dsfsff', '16274553238577.pdf', NULL, '<div class=\"rendered-form\">\r\n<div class=\"\">\r\n<p access=\"false\" id=\"control-5421749\">Paragraph</p>\r\n</div>\r\n<div class=\"formbuilder-select form-group field-select-1627455316111-0\">\r\n<label for=\"select-1627455316111-0\" class=\"formbuilder-select-label\">Select</label>\r\n<select class=\"form-control\" name=\"select-1627455316111-0\" id=\"select-1627455316111-0\">\r\n<option value=\"option-1\" selected=\"true\" id=\"select-1627455316111-0-0\">Option 1</option>\r\n<option value=\"option-2\" id=\"select-1627455316111-0-1\">Option 2</option>\r\n<option value=\"option-3\" id=\"select-1627455316111-0-2\">Option 3</option>\r\n</select>\r\n</div>\r\n<div class=\"formbuilder-select form-group field-select-1627455317063-0\">\r\n<label for=\"select-1627455317063-0\" class=\"formbuilder-select-label\">Select</label>\r\n<select class=\"form-control\" name=\"select-1627455317063-0\" id=\"select-1627455317063-0\">\r\n<option value=\"option-1\" selected=\"true\" id=\"select-1627455317063-0-0\">Option 1</option>\r\n<option value=\"option-2\" id=\"select-1627455317063-0-1\">Option 2</option>\r\n<option value=\"option-3\" id=\"select-1627455317063-0-2\">Option 3</option>\r\n</select>\r\n</div>\r\n<div class=\"formbuilder-text form-group field-text-1627455317559-0\">\r\n<label for=\"text-1627455317559-0\" class=\"formbuilder-text-label\">Text Field</label>\r\n<input type=\"text\" class=\"form-control\" name=\"text-1627455317559-0\" access=\"false\" id=\"text-1627455317559-0\">\r\n</div>\r\n<div class=\"formbuilder-select form-group field-select-1627562442396-0\">\r\n<label for=\"select-1627562442396-0\" class=\"formbuilder-select-label\">Select</label>\r\n<select class=\"form-control\" name=\"select-1627562442396-0\" id=\"select-1627562442396-0\">\r\n<option value=\"option-1\" selected=\"true\" id=\"select-1627562442396-0-0\">Option 1</option>\r\n<option value=\"option-2\" id=\"select-1627562442396-0-1\">Option 2</option>\r\n<option value=\"option-3\" id=\"select-1627562442396-0-2\">Option 3</option>\r\n</select>\r\n</div>\r\n<div class=\"formbuilder-text form-group field-text-1627562469049-0\">\r\n<label for=\"text-1627562469049-0\" class=\"formbuilder-text-label\">Text Field</label>\r\n<input type=\"text\" class=\"form-control\" name=\"text-1627562469049-0\" access=\"false\" id=\"text-1627562469049-0\">\r\n</div>\r\n</div>', NULL, '2021-07-28 06:55:26', '2021-07-29 12:41:11', '[{\"type\":\"paragraph\",\"subtype\":\"p\",\"label\":\"Paragraph\",\"access\":false},{\"type\":\"select\",\"required\":false,\"label\":\"Select\",\"className\":\"form-control\",\"name\":\"select-1627455316111-0\",\"access\":false,\"multiple\":false,\"values\":[{\"label\":\"Option 1\",\"value\":\"option-1\",\"selected\":true},{\"label\":\"Option 2\",\"value\":\"option-2\",\"selected\":false},{\"label\":\"Option 3\",\"value\":\"option-3\",\"selected\":false}]},{\"type\":\"select\",\"required\":false,\"label\":\"Select\",\"className\":\"form-control\",\"name\":\"select-1627455317063-0\",\"access\":false,\"multiple\":false,\"values\":[{\"label\":\"Option 1\",\"value\":\"option-1\",\"selected\":true},{\"label\":\"Option 2\",\"value\":\"option-2\",\"selected\":false},{\"label\":\"Option 3\",\"value\":\"option-3\",\"selected\":false}]},{\"type\":\"text\",\"required\":false,\"label\":\"Text Field\",\"className\":\"form-control\",\"name\":\"text-1627455317559-0\",\"access\":false,\"subtype\":\"text\"},{\"type\":\"select\",\"required\":false,\"label\":\"Select\",\"className\":\"form-control\",\"name\":\"select-1627562442396-0\",\"access\":false,\"multiple\":false,\"values\":[{\"label\":\"Option 1\",\"value\":\"option-1\",\"selected\":true},{\"label\":\"Option 2\",\"value\":\"option-2\",\"selected\":false},{\"label\":\"Option 3\",\"value\":\"option-3\",\"selected\":false}]},{\"type\":\"text\",\"required\":false,\"label\":\"Text Field\",\"className\":\"form-control\",\"name\":\"text-1627562469049-0\",\"access\":false,\"subtype\":\"text\"}]'),
(10, 'new data form', NULL, NULL, '<div class=\"rendered-form\">\r\n<div class=\"formbuilder-text form-group field-text-1628006324277-0\">\r\n<label for=\"text-1628006324277-0\" class=\"formbuilder-text-label\">Name</label>\r\n<input type=\"text\" class=\"form-control\" name=\"text-1628006324277-0\" access=\"false\" id=\"text-1628006324277-0\">\r\n</div>\r\n<div class=\"formbuilder-text form-group field-text-1628006339706-0\">\r\n<label for=\"text-1628006339706-0\" class=\"formbuilder-text-label\">Email</label>\r\n<input type=\"text\" class=\"form-control\" name=\"text-1628006339706-0\" access=\"false\" id=\"text-1628006339706-0\">\r\n</div>\r\n<div class=\"formbuilder-text form-group field-text-1628006341467-0\">\r\n<label for=\"text-1628006341467-0\" class=\"formbuilder-text-label\">Subject</label>\r\n<input type=\"text\" class=\"form-control\" name=\"text-1628006341467-0\" access=\"false\" id=\"text-1628006341467-0\">\r\n</div>\r\n<div class=\"formbuilder-button form-group field-button-1628006372578-0\">\r\n<button type=\"button\" class=\"btn-primary btn\" name=\"button-1628006372578-0\" access=\"false\" style=\"primary\" id=\"button-1628006372578-0\">yes</button>\r\n</div>\r\n<div class=\"formbuilder-text form-group field-text-1628006485604-0\">\r\n<label for=\"text-1628006485604-0\" class=\"formbuilder-text-label\">The main&nbsp;</label>\r\n<input type=\"text\" class=\"form-control\" name=\"text-1628006485604-0\" access=\"false\" id=\"text-1628006485604-0\">\r\n</div>\r\n<div class=\"formbuilder-text form-group field-text-1628006500275-0\">\r\n<label for=\"text-1628006500275-0\" class=\"formbuilder-text-label\">The second</label>\r\n<input type=\"text\" class=\"form-control\" name=\"text-1628006500275-0\" access=\"false\" id=\"text-1628006500275-0\">\r\n</div>\r\n</div>', 1, '2021-08-03 21:00:02', '2021-08-03 21:01:56', '[{\"type\":\"text\",\"required\":false,\"label\":\"Name\",\"className\":\"form-control\",\"name\":\"text-1628006324277-0\",\"access\":false,\"subtype\":\"text\"},{\"type\":\"text\",\"required\":false,\"label\":\"Email\",\"className\":\"form-control\",\"name\":\"text-1628006339706-0\",\"access\":false,\"subtype\":\"text\"},{\"type\":\"text\",\"required\":false,\"label\":\"Subject\",\"className\":\"form-control\",\"name\":\"text-1628006341467-0\",\"access\":false,\"subtype\":\"text\"},{\"type\":\"button\",\"label\":\"yes\",\"subtype\":\"button\",\"className\":\"btn-primary btn\",\"name\":\"button-1628006372578-0\",\"access\":false,\"style\":\"primary\"},{\"type\":\"text\",\"required\":false,\"label\":\"The main&nbsp;\",\"className\":\"form-control\",\"name\":\"text-1628006485604-0\",\"access\":false,\"subtype\":\"text\"},{\"type\":\"text\",\"required\":false,\"label\":\"The second\",\"className\":\"form-control\",\"name\":\"text-1628006500275-0\",\"access\":false,\"subtype\":\"text\"}]'),
(11, 'SCISSOR LIFT', NULL, NULL, '<div class=\"rendered-form\">\r\n<div class=\"\">\r\n<h1 access=\"false\" id=\"control-7310782\">SCISSOR LIFT CERTIFICATION</h1>\r\n</div>\r\n<div class=\"formbuilder-date form-group field-date-1628603568536-0\">\r\n<label for=\"date-1628603568536-0\" class=\"formbuilder-date-label\">Date Field</label>\r\n<input type=\"date\" class=\"form-control\" name=\"date-1628603568536-0\" access=\"false\" id=\"date-1628603568536-0\">\r\n</div>\r\n<div class=\"formbuilder-text form-group field-text-1628603671709-0\">\r\n<label for=\"text-1628603671709-0\" class=\"formbuilder-text-label\">OPERATOR NAME</label>\r\n<input type=\"text\" class=\"form-control\" name=\"text-1628603671709-0\" access=\"false\" id=\"text-1628603671709-0\">\r\n</div>\r\n<div class=\"\">\r\n<h1 access=\"false\" id=\"control-7062356\">OBSERVATIONS</h1>\r\n</div>\r\n<div class=\"formbuilder-checkbox-group form-group field-checkbox-group-1628603084400-0\">\r\n<label for=\"checkbox-group-1628603084400-0\" class=\"formbuilder-checkbox-group-label\">DID A COMPLETE WALK THROUGH</label>\r\n<div class=\"checkbox-group\">\r\n<div class=\"formbuilder-checkbox\">\r\n<input name=\"checkbox-group-1628603084400-0[]\" access=\"false\" id=\"checkbox-group-1628603084400-0-0\" value=\"NO\" type=\"checkbox\">\r\n<label for=\"checkbox-group-1628603084400-0-0\">YES</label>\r\n</div>\r\n<div class=\"formbuilder-checkbox\">\r\n<input name=\"checkbox-group-1628603084400-0[]\" access=\"false\" id=\"checkbox-group-1628603084400-0-1\" type=\"checkbox\">\r\n<label for=\"checkbox-group-1628603084400-0-1\">NO</label>\r\n</div>\r\n</div>\r\n</div>\r\n<div class=\"formbuilder-checkbox-group form-group field-checkbox-group-1628603159760\">\r\n<label for=\"checkbox-group-1628603159760\" class=\"formbuilder-checkbox-group-label\">USED THREE POINTS OF CONTACT ENTERING AND EXITING THE SCISSOR LIFT</label>\r\n<div class=\"checkbox-group\">\r\n<div class=\"formbuilder-checkbox\">\r\n<input name=\"checkbox-group-1628603159760[]\" access=\"false\" id=\"checkbox-group-1628603159760-0\" value=\"NO\" type=\"checkbox\">\r\n<label for=\"checkbox-group-1628603159760-0\">YES</label>\r\n</div>\r\n<div class=\"formbuilder-checkbox\">\r\n<input name=\"checkbox-group-1628603159760[]\" access=\"false\" id=\"checkbox-group-1628603159760-1\" type=\"checkbox\">\r\n<label for=\"checkbox-group-1628603159760-1\">NO</label>\r\n</div>\r\n</div>\r\n</div>\r\n<div class=\"formbuilder-checkbox-group form-group field-checkbox-group-1628603244031\">\r\n<label for=\"checkbox-group-1628603244031\" class=\"formbuilder-checkbox-group-label\">USED PROPER PPE</label>\r\n<div class=\"checkbox-group\">\r\n<div class=\"formbuilder-checkbox\">\r\n<input name=\"checkbox-group-1628603244031[]\" access=\"false\" id=\"checkbox-group-1628603244031-0\" value=\"NO\" type=\"checkbox\">\r\n<label for=\"checkbox-group-1628603244031-0\">YES</label>\r\n</div>\r\n<div class=\"formbuilder-checkbox\">\r\n<input name=\"checkbox-group-1628603244031[]\" access=\"false\" id=\"checkbox-group-1628603244031-1\" type=\"checkbox\">\r\n<label for=\"checkbox-group-1628603244031-1\">NO</label>\r\n</div>\r\n</div>\r\n</div>\r\n<div class=\"formbuilder-checkbox-group form-group field-checkbox-group-1628603275442\">\r\n<label for=\"checkbox-group-1628603275442\" class=\"formbuilder-checkbox-group-label\">DEMONSTRATED PROPER OPERATING SKILLS</label>\r\n<div class=\"checkbox-group\">\r\n<div class=\"formbuilder-checkbox\">\r\n<input name=\"checkbox-group-1628603275442[]\" access=\"false\" id=\"checkbox-group-1628603275442-0\" value=\"NO\" type=\"checkbox\">\r\n<label for=\"checkbox-group-1628603275442-0\">YES</label>\r\n</div>\r\n<div class=\"formbuilder-checkbox\">\r\n<input name=\"checkbox-group-1628603275442[]\" access=\"false\" id=\"checkbox-group-1628603275442-1\" type=\"checkbox\">\r\n<label for=\"checkbox-group-1628603275442-1\">NO</label>\r\n</div>\r\n</div>\r\n</div>\r\n<div class=\"formbuilder-checkbox-group form-group field-checkbox-group-1628603314029\">\r\n<label for=\"checkbox-group-1628603314029\" class=\"formbuilder-checkbox-group-label\">MANEUVERS PROPERLY</label>\r\n<div class=\"checkbox-group\">\r\n<div class=\"formbuilder-checkbox\">\r\n<input name=\"checkbox-group-1628603314029[]\" access=\"false\" id=\"checkbox-group-1628603314029-0\" value=\"NO\" type=\"checkbox\">\r\n<label for=\"checkbox-group-1628603314029-0\">YES</label>\r\n</div>\r\n<div class=\"formbuilder-checkbox\">\r\n<input name=\"checkbox-group-1628603314029[]\" access=\"false\" id=\"checkbox-group-1628603314029-1\" type=\"checkbox\">\r\n<label for=\"checkbox-group-1628603314029-1\">NO</label>\r\n</div>\r\n</div>\r\n</div>\r\n<div class=\"formbuilder-checkbox-group form-group field-checkbox-group-1628603359269\">\r\n<label for=\"checkbox-group-1628603359269\" class=\"formbuilder-checkbox-group-label\">POINTED OUT POSSIBLE HAZARDS</label>\r\n<div class=\"checkbox-group\">\r\n<div class=\"formbuilder-checkbox\">\r\n<input name=\"checkbox-group-1628603359269[]\" access=\"false\" id=\"checkbox-group-1628603359269-0\" value=\"NO\" type=\"checkbox\">\r\n<label for=\"checkbox-group-1628603359269-0\">YES</label>\r\n</div>\r\n<div class=\"formbuilder-checkbox\">\r\n<input name=\"checkbox-group-1628603359269[]\" access=\"false\" id=\"checkbox-group-1628603359269-1\" type=\"checkbox\">\r\n<label for=\"checkbox-group-1628603359269-1\">NO</label>\r\n</div>\r\n</div>\r\n</div>\r\n<div class=\"formbuilder-checkbox-group form-group field-checkbox-group-1628603390437\">\r\n<label for=\"checkbox-group-1628603390437\" class=\"formbuilder-checkbox-group-label\">DEMONSTRATES EMERGENCY CONTROLS</label>\r\n<div class=\"checkbox-group\">\r\n<div class=\"formbuilder-checkbox\">\r\n<input name=\"checkbox-group-1628603390437[]\" access=\"false\" id=\"checkbox-group-1628603390437-0\" value=\"NO\" type=\"checkbox\">\r\n<label for=\"checkbox-group-1628603390437-0\">YES</label>\r\n</div>\r\n<div class=\"formbuilder-checkbox\">\r\n<input name=\"checkbox-group-1628603390437[]\" access=\"false\" id=\"checkbox-group-1628603390437-1\" type=\"checkbox\">\r\n<label for=\"checkbox-group-1628603390437-1\">NO</label>\r\n</div>\r\n</div>\r\n</div>\r\n<div class=\"formbuilder-checkbox-group form-group field-checkbox-group-1628603417988\">\r\n<label for=\"checkbox-group-1628603417988\" class=\"formbuilder-checkbox-group-label\">HAS PROPER PAPERWORK FOR INSPECTION</label>\r\n<div class=\"checkbox-group\">\r\n<div class=\"formbuilder-checkbox\">\r\n<input name=\"checkbox-group-1628603417988[]\" access=\"false\" id=\"checkbox-group-1628603417988-0\" value=\"NO\" type=\"checkbox\">\r\n<label for=\"checkbox-group-1628603417988-0\">YES</label>\r\n</div>\r\n<div class=\"formbuilder-checkbox\">\r\n<input name=\"checkbox-group-1628603417988[]\" access=\"false\" id=\"checkbox-group-1628603417988-1\" type=\"checkbox\">\r\n<label for=\"checkbox-group-1628603417988-1\">NO</label>\r\n</div>\r\n</div>\r\n</div>\r\n<div class=\"formbuilder-checkbox-group form-group field-checkbox-group-1628603445784\">\r\n<label for=\"checkbox-group-1628603445784\" class=\"formbuilder-checkbox-group-label\">HAS COMPLETED TRAINING AND UNDERSTANDS COMPANY POLICY</label>\r\n<div class=\"checkbox-group\">\r\n<div class=\"formbuilder-checkbox\">\r\n<input name=\"checkbox-group-1628603445784[]\" access=\"false\" id=\"checkbox-group-1628603445784-0\" value=\"NO\" type=\"checkbox\">\r\n<label for=\"checkbox-group-1628603445784-0\">YES</label>\r\n</div>\r\n<div class=\"formbuilder-checkbox\">\r\n<input name=\"checkbox-group-1628603445784[]\" access=\"false\" id=\"checkbox-group-1628603445784-1\" type=\"checkbox\">\r\n<label for=\"checkbox-group-1628603445784-1\">NO</label>\r\n</div>\r\n</div>\r\n</div>\r\n<div class=\"\">\r\n<h1 access=\"false\" id=\"control-9450306\">ACKNOWLEDGED BY HUGO TREVINO / SAFETY DIRECTOR</h1>\r\n</div>\r\n</div>', 1, '2021-08-10 18:57:43', '2021-08-10 18:57:43', '[{\"type\":\"header\",\"subtype\":\"h1\",\"label\":\"SCISSOR LIFT CERTIFICATION\",\"access\":false},{\"type\":\"date\",\"required\":false,\"label\":\"Date Field\",\"className\":\"form-control\",\"name\":\"date-1628603568536-0\",\"access\":false},{\"type\":\"text\",\"required\":false,\"label\":\"OPERATOR NAME\",\"className\":\"form-control\",\"name\":\"text-1628603671709-0\",\"access\":false,\"subtype\":\"text\"},{\"type\":\"header\",\"subtype\":\"h1\",\"label\":\"OBSERVATIONS\",\"access\":false},{\"type\":\"checkbox-group\",\"required\":false,\"label\":\"DID A COMPLETE WALK THROUGH\",\"toggle\":false,\"inline\":false,\"name\":\"checkbox-group-1628603084400-0\",\"access\":false,\"other\":false,\"values\":[{\"label\":\"YES\",\"value\":\"NO\",\"selected\":false},{\"label\":\"NO\",\"value\":\"\",\"selected\":false}]},{\"type\":\"checkbox-group\",\"required\":false,\"label\":\"USED THREE POINTS OF CONTACT ENTERING AND EXITING THE SCISSOR LIFT\",\"toggle\":false,\"inline\":false,\"name\":\"checkbox-group-1628603159760\",\"access\":false,\"other\":false,\"values\":[{\"label\":\"YES\",\"value\":\"NO\",\"selected\":false},{\"label\":\"NO\",\"value\":\"\",\"selected\":false}]},{\"type\":\"checkbox-group\",\"required\":false,\"label\":\"USED PROPER PPE\",\"toggle\":false,\"inline\":false,\"name\":\"checkbox-group-1628603244031\",\"access\":false,\"other\":false,\"values\":[{\"label\":\"YES\",\"value\":\"NO\",\"selected\":false},{\"label\":\"NO\",\"value\":\"\",\"selected\":false}]},{\"type\":\"checkbox-group\",\"required\":false,\"label\":\"DEMONSTRATED PROPER OPERATING SKILLS\",\"toggle\":false,\"inline\":false,\"name\":\"checkbox-group-1628603275442\",\"access\":false,\"other\":false,\"values\":[{\"label\":\"YES\",\"value\":\"NO\",\"selected\":false},{\"label\":\"NO\",\"value\":\"\",\"selected\":false}]},{\"type\":\"checkbox-group\",\"required\":false,\"label\":\"MANEUVERS PROPERLY\",\"toggle\":false,\"inline\":false,\"name\":\"checkbox-group-1628603314029\",\"access\":false,\"other\":false,\"values\":[{\"label\":\"YES\",\"value\":\"NO\",\"selected\":false},{\"label\":\"NO\",\"value\":\"\",\"selected\":false}]},{\"type\":\"checkbox-group\",\"required\":false,\"label\":\"POINTED OUT POSSIBLE HAZARDS\",\"toggle\":false,\"inline\":false,\"name\":\"checkbox-group-1628603359269\",\"access\":false,\"other\":false,\"values\":[{\"label\":\"YES\",\"value\":\"NO\",\"selected\":false},{\"label\":\"NO\",\"value\":\"\",\"selected\":false}]},{\"type\":\"checkbox-group\",\"required\":false,\"label\":\"DEMONSTRATES EMERGENCY CONTROLS\",\"toggle\":false,\"inline\":false,\"name\":\"checkbox-group-1628603390437\",\"access\":false,\"other\":false,\"values\":[{\"label\":\"YES\",\"value\":\"NO\",\"selected\":false},{\"label\":\"NO\",\"value\":\"\",\"selected\":false}]},{\"type\":\"checkbox-group\",\"required\":false,\"label\":\"HAS PROPER PAPERWORK FOR INSPECTION\",\"toggle\":false,\"inline\":false,\"name\":\"checkbox-group-1628603417988\",\"access\":false,\"other\":false,\"values\":[{\"label\":\"YES\",\"value\":\"NO\",\"selected\":false},{\"label\":\"NO\",\"value\":\"\",\"selected\":false}]},{\"type\":\"checkbox-group\",\"required\":false,\"label\":\"HAS COMPLETED TRAINING AND UNDERSTANDS COMPANY POLICY\",\"toggle\":false,\"inline\":false,\"name\":\"checkbox-group-1628603445784\",\"access\":false,\"other\":false,\"values\":[{\"label\":\"YES\",\"value\":\"NO\",\"selected\":false},{\"label\":\"NO\",\"value\":\"\",\"selected\":false}]},{\"type\":\"header\",\"subtype\":\"h1\",\"label\":\"ACKNOWLEDGED BY HUGO TREVINO / SAFETY DIRECTOR\",\"access\":false}]'),
(12, 'HEAT ILLNESS', '16286154413789.pdf', NULL, '<div class=\"rendered-form\">\r\n<div class=\"formbuilder-file form-group field-file-1628615360377-0\">\r\n<label for=\"file-1628615360377-0\" class=\"formbuilder-file-label\">File Upload</label>\r\n<input type=\"file\" class=\"form-control\" name=\"file-1628615360377-0\" access=\"false\" multiple=\"false\" id=\"file-1628615360377-0\">\r\n</div>\r\n</div>', NULL, '2021-08-10 22:10:43', '2021-08-10 22:10:43', '[{\"type\":\"file\",\"required\":false,\"label\":\"File Upload\",\"className\":\"form-control\",\"name\":\"file-1628615360377-0\",\"access\":false,\"subtype\":\"file\",\"multiple\":false}]'),
(13, 'qwertyuiop', '16289404647238.pdf', NULL, '<div class=\"rendered-form\">\r\n<div class=\"formbuilder-autocomplete form-group field-autocomplete-1628940444847-0\">\r\n<label for=\"autocomplete-1628940444847-0\" class=\"formbuilder-autocomplete-label\">Autocomplete</label>\r\n<input class=\"form-control\" access=\"false\" require-valid-option=\"false\" id=\"autocomplete-1628940444847-0-input\" autocomplete=\"off\">\r\n<input class=\"form-control\" name=\"autocomplete-1628940444847-0\" access=\"false\" require-valid-option=\"false\" id=\"autocomplete-1628940444847-0\" type=\"hidden\">\r\n<ul id=\"autocomplete-1628940444847-0-list\" class=\"formbuilder-autocomplete-list\">\r\n<li value=\"option-1\">Option 1</li>\r\n<li value=\"option-2\">Option 2</li>\r\n<li value=\"option-3\">Option 3</li>\r\n</ul>\r\n</div>\r\n<div class=\"formbuilder-number form-group field-number-1628940445562-0\">\r\n<label for=\"number-1628940445562-0\" class=\"formbuilder-number-label\">Number</label>\r\n<input type=\"number\" class=\"form-control\" name=\"number-1628940445562-0\" access=\"false\" id=\"number-1628940445562-0\">\r\n</div>\r\n<div class=\"formbuilder-radio-group form-group field-radio-group-1628940446566-0\">\r\n<label for=\"radio-group-1628940446566-0\" class=\"formbuilder-radio-group-label\">Radio Group</label>\r\n<div class=\"radio-group\">\r\n<div class=\"formbuilder-radio\">\r\n<input name=\"radio-group-1628940446566-0\" access=\"false\" id=\"radio-group-1628940446566-0-0\" value=\"option-1\" type=\"radio\">\r\n<label for=\"radio-group-1628940446566-0-0\">Option 1</label>\r\n</div>\r\n<div class=\"formbuilder-radio\">\r\n<input name=\"radio-group-1628940446566-0\" access=\"false\" id=\"radio-group-1628940446566-0-1\" value=\"option-2\" type=\"radio\">\r\n<label for=\"radio-group-1628940446566-0-1\">Option 2</label>\r\n</div>\r\n<div class=\"formbuilder-radio\">\r\n<input name=\"radio-group-1628940446566-0\" access=\"false\" id=\"radio-group-1628940446566-0-2\" value=\"option-3\" type=\"radio\">\r\n<label for=\"radio-group-1628940446566-0-2\">Option 3</label>\r\n</div>\r\n</div>\r\n</div>\r\n<div class=\"formbuilder-text form-group field-text-1628940447873-0\">\r\n<label for=\"text-1628940447873-0\" class=\"formbuilder-text-label\">Text Field</label>\r\n<input type=\"text\" class=\"form-control\" name=\"text-1628940447873-0\" access=\"false\" id=\"text-1628940447873-0\">\r\n</div>\r\n<div class=\"formbuilder-select form-group field-select-1628940447262-0\">\r\n<label for=\"select-1628940447262-0\" class=\"formbuilder-select-label\">Select</label>\r\n<select class=\"form-control\" name=\"select-1628940447262-0\" id=\"select-1628940447262-0\">\r\n<option value=\"option-1\" selected=\"true\" id=\"select-1628940447262-0-0\">Option 1</option>\r\n<option value=\"option-2\" id=\"select-1628940447262-0-1\">Option 2</option>\r\n<option value=\"option-3\" id=\"select-1628940447262-0-2\">Option 3</option>\r\n</select>\r\n</div>\r\n</div>', NULL, '2021-08-14 16:27:47', '2021-08-14 16:27:47', '[{\"type\":\"autocomplete\",\"required\":false,\"label\":\"Autocomplete\",\"className\":\"form-control\",\"name\":\"autocomplete-1628940444847-0\",\"access\":false,\"requireValidOption\":false,\"values\":[{\"label\":\"Option 1\",\"value\":\"option-1\",\"selected\":true},{\"label\":\"Option 2\",\"value\":\"option-2\",\"selected\":false},{\"label\":\"Option 3\",\"value\":\"option-3\",\"selected\":false}]},{\"type\":\"number\",\"required\":false,\"label\":\"Number\",\"className\":\"form-control\",\"name\":\"number-1628940445562-0\",\"access\":false},{\"type\":\"radio-group\",\"required\":false,\"label\":\"Radio Group\",\"inline\":false,\"name\":\"radio-group-1628940446566-0\",\"access\":false,\"other\":false,\"values\":[{\"label\":\"Option 1\",\"value\":\"option-1\",\"selected\":false},{\"label\":\"Option 2\",\"value\":\"option-2\",\"selected\":false},{\"label\":\"Option 3\",\"value\":\"option-3\",\"selected\":false}]},{\"type\":\"text\",\"required\":false,\"label\":\"Text Field\",\"className\":\"form-control\",\"name\":\"text-1628940447873-0\",\"access\":false,\"subtype\":\"text\"},{\"type\":\"select\",\"required\":false,\"label\":\"Select\",\"className\":\"form-control\",\"name\":\"select-1628940447262-0\",\"access\":false,\"multiple\":false,\"values\":[{\"label\":\"Option 1\",\"value\":\"option-1\",\"selected\":true},{\"label\":\"Option 2\",\"value\":\"option-2\",\"selected\":false},{\"label\":\"Option 3\",\"value\":\"option-3\",\"selected\":false}]}]'),
(14, 'asdfsd', NULL, NULL, '<div class=\"rendered-form\">\r\n<div class=\"formbuilder-radio-group form-group field-radio-group-1629272437471-0\">\r\n<label for=\"radio-group-1629272437471-0\" class=\"formbuilder-radio-group-label\">Radio Group</label>\r\n<div class=\"radio-group\">\r\n<div class=\"formbuilder-radio\">\r\n<input name=\"radio-group-1629272437471-0\" access=\"false\" id=\"radio-group-1629272437471-0-0\" value=\"option-1\" type=\"radio\">\r\n<label for=\"radio-group-1629272437471-0-0\">Option 1</label>\r\n</div>\r\n<div class=\"formbuilder-radio\">\r\n<input name=\"radio-group-1629272437471-0\" access=\"false\" id=\"radio-group-1629272437471-0-1\" value=\"option-2\" type=\"radio\">\r\n<label for=\"radio-group-1629272437471-0-1\">Option 2</label>\r\n</div>\r\n<div class=\"formbuilder-radio\">\r\n<input name=\"radio-group-1629272437471-0\" access=\"false\" id=\"radio-group-1629272437471-0-2\" value=\"option-3\" type=\"radio\">\r\n<label for=\"radio-group-1629272437471-0-2\">Option 3</label>\r\n</div>\r\n</div>\r\n</div>\r\n</div>', 1, '2021-08-18 19:40:39', '2021-08-18 19:40:39', '[{\"type\":\"radio-group\",\"required\":false,\"label\":\"Radio Group\",\"inline\":false,\"name\":\"radio-group-1629272437471-0\",\"access\":false,\"other\":false,\"values\":[{\"label\":\"Option 1\",\"value\":\"option-1\",\"selected\":false},{\"label\":\"Option 2\",\"value\":\"option-2\",\"selected\":false},{\"label\":\"Option 3\",\"value\":\"option-3\",\"selected\":false}]}]'),
(15, 'df', NULL, 'D:\\xampp\\htdocs\\hs\\public\\assets/form_images/1629274274.image_be-build-your-admin-and-user-pannel.jpeg', '<div class=\"rendered-form\">\r\n</div>', 1, '2021-08-18 20:11:14', '2021-08-18 20:11:14', '[]'),
(16, 'asdfsd', NULL, '/public/assets/form_images/1629274335.image_be-build-your-admin-and-user-pannel.jpeg', '<div class=\"rendered-form\">\r\n</div>', 1, '2021-08-18 20:12:15', '2021-08-18 20:12:15', '[]'),
(17, 'zuabir', NULL, '/public/assets/form_images/1629274599.image_be-build-your-admin-and-user-pannel.jpeg', '<div class=\"rendered-form\">\r\n</div>', 1, '2021-08-18 20:16:39', '2021-08-18 20:16:39', '[]'),
(18, 'zuabir', NULL, '/public/assets/form_images/1629274614.image_be-build-your-admin-and-user-pannel.jpeg', '<div class=\"rendered-form\">\r\n</div>', 1, '2021-08-18 20:16:54', '2021-08-18 20:16:54', '[]'),
(19, 'dfsdgf', NULL, '/public/assets/form_images/1629274856.image_89611250_2791943734220006_3014011124082278400_n.jpg', '<div class=\"rendered-form\">\r\n</div>', 1, '2021-08-18 20:20:56', '2021-08-18 20:20:56', '[]'),
(20, 'zubair1', NULL, '/public/assets/form_images/1629274889.image_89611250_2791943734220006_3014011124082278400_n.jpg', '<div class=\"rendered-form\">\r\n</div>', 1, '2021-08-18 20:21:29', '2021-08-18 20:21:29', '[]'),
(21, 'zubair 2', NULL, '/public/assets/form_images/1629274946.image_89611250_2791943734220006_3014011124082278400_n.jpg', '<div class=\"rendered-form\">\r\n</div>', 1, '2021-08-18 20:22:26', '2021-08-18 20:22:26', '[]'),
(22, 'zubair Basharat', NULL, NULL, '<div class=\"rendered-form\">\r\n<input type=\"hidden\" name=\"hidden-1629274998105-0\" access=\"false\" id=\"hidden-1629274998105-0\">\r\n<div class=\"formbuilder-file form-group field-file-1629274995936-0\">\r\n<label for=\"file-1629274995936-0\" class=\"formbuilder-file-label\">File Upload</label>\r\n<input type=\"file\" class=\"form-control\" name=\"file-1629274995936-0\" access=\"false\" multiple=\"false\" id=\"file-1629274995936-0\">\r\n</div>\r\n<div class=\"formbuilder-number form-group field-number-1629274993776-0\">\r\n<label for=\"number-1629274993776-0\" class=\"formbuilder-number-label\">Number</label>\r\n<input type=\"number\" class=\"form-control\" name=\"number-1629274993776-0\" access=\"false\" id=\"number-1629274993776-0\">\r\n</div>\r\n<div class=\"formbuilder-select form-group field-select-1629275003254-0\">\r\n<label for=\"select-1629275003254-0\" class=\"formbuilder-select-label\">Select</label>\r\n<select class=\"form-control\" name=\"select-1629275003254-0\" id=\"select-1629275003254-0\">\r\n<option value=\"option-1\" selected=\"true\" id=\"select-1629275003254-0-0\">Option 1</option>\r\n<option value=\"option-2\" id=\"select-1629275003254-0-1\">Option 2</option>\r\n<option value=\"option-3\" id=\"select-1629275003254-0-2\">Option 3</option>\r\n</select>\r\n</div>\r\n<div class=\"\">\r\n<p access=\"false\" id=\"control-2595801\">Paragraph</p>\r\n</div>\r\n<div class=\"\">\r\n<h1 access=\"false\" id=\"control-9973698\">Header</h1>\r\n</div>\r\n<div class=\"formbuilder-file form-group field-file-1629274977627-0\">\r\n<label for=\"file-1629274977627-0\" class=\"formbuilder-file-label\">File Upload</label>\r\n<input type=\"file\" class=\"form-control\" name=\"file-1629274977627-0\" access=\"false\" multiple=\"false\" id=\"file-1629274977627-0\">\r\n</div>\r\n<div class=\"formbuilder-button form-group field-button-1629274975910-0\">\r\n<button type=\"button\" class=\"btn-default btn\" name=\"button-1629274975910-0\" access=\"false\" style=\"default\" id=\"button-1629274975910-0\">Button</button>\r\n</div>\r\n</div>', 1, '2021-08-18 20:23:29', '2021-08-18 20:23:29', '[{\"type\":\"hidden\",\"name\":\"hidden-1629274998105-0\",\"access\":false},{\"type\":\"file\",\"required\":false,\"label\":\"File Upload\",\"className\":\"form-control\",\"name\":\"file-1629274995936-0\",\"access\":false,\"subtype\":\"file\",\"multiple\":false},{\"type\":\"number\",\"required\":false,\"label\":\"Number\",\"className\":\"form-control\",\"name\":\"number-1629274993776-0\",\"access\":false},{\"type\":\"select\",\"required\":false,\"label\":\"Select\",\"className\":\"form-control\",\"name\":\"select-1629275003254-0\",\"access\":false,\"multiple\":false,\"values\":[{\"label\":\"Option 1\",\"value\":\"option-1\",\"selected\":true},{\"label\":\"Option 2\",\"value\":\"option-2\",\"selected\":false},{\"label\":\"Option 3\",\"value\":\"option-3\",\"selected\":false}]},{\"type\":\"paragraph\",\"subtype\":\"p\",\"label\":\"Paragraph\",\"access\":false},{\"type\":\"header\",\"subtype\":\"h1\",\"label\":\"Header\",\"access\":false},{\"type\":\"file\",\"required\":false,\"label\":\"File Upload\",\"className\":\"form-control\",\"name\":\"file-1629274977627-0\",\"access\":false,\"subtype\":\"file\",\"multiple\":false},{\"type\":\"button\",\"label\":\"Button\",\"subtype\":\"button\",\"className\":\"btn-default btn\",\"name\":\"button-1629274975910-0\",\"access\":false,\"style\":\"default\"}]'),
(23, 'zubair Basharat', NULL, '/public/assets/form_images/1629275017.image_89611250_2791943734220006_3014011124082278400_n.jpg', '<div class=\"rendered-form\">\r\n<input type=\"hidden\" name=\"hidden-1629274998105-0\" access=\"false\" id=\"hidden-1629274998105-0\">\r\n<div class=\"formbuilder-file form-group field-file-1629274995936-0\">\r\n<label for=\"file-1629274995936-0\" class=\"formbuilder-file-label\">File Upload</label>\r\n<input type=\"file\" class=\"form-control\" name=\"file-1629274995936-0\" access=\"false\" multiple=\"false\" id=\"file-1629274995936-0\">\r\n</div>\r\n<div class=\"formbuilder-number form-group field-number-1629274993776-0\">\r\n<label for=\"number-1629274993776-0\" class=\"formbuilder-number-label\">Number</label>\r\n<input type=\"number\" class=\"form-control\" name=\"number-1629274993776-0\" access=\"false\" id=\"number-1629274993776-0\">\r\n</div>\r\n<div class=\"formbuilder-select form-group field-select-1629275003254-0\">\r\n<label for=\"select-1629275003254-0\" class=\"formbuilder-select-label\">Select</label>\r\n<select class=\"form-control\" name=\"select-1629275003254-0\" id=\"select-1629275003254-0\">\r\n<option value=\"option-1\" selected=\"true\" id=\"select-1629275003254-0-0\">Option 1</option>\r\n<option value=\"option-2\" id=\"select-1629275003254-0-1\">Option 2</option>\r\n<option value=\"option-3\" id=\"select-1629275003254-0-2\">Option 3</option>\r\n</select>\r\n</div>\r\n<div class=\"\">\r\n<p access=\"false\" id=\"control-1755474\">Paragraph</p>\r\n</div>\r\n<div class=\"\">\r\n<h1 access=\"false\" id=\"control-8693339\">Header</h1>\r\n</div>\r\n<div class=\"formbuilder-file form-group field-file-1629274977627-0\">\r\n<label for=\"file-1629274977627-0\" class=\"formbuilder-file-label\">File Upload</label>\r\n<input type=\"file\" class=\"form-control\" name=\"file-1629274977627-0\" access=\"false\" multiple=\"false\" id=\"file-1629274977627-0\">\r\n</div>\r\n<div class=\"formbuilder-button form-group field-button-1629274975910-0\">\r\n<button type=\"button\" class=\"btn-default btn\" name=\"button-1629274975910-0\" access=\"false\" style=\"default\" id=\"button-1629274975910-0\">Button</button>\r\n</div>\r\n</div>', 1, '2021-08-18 20:23:37', '2021-08-18 20:23:37', '[{\"type\":\"hidden\",\"name\":\"hidden-1629274998105-0\",\"access\":false},{\"type\":\"file\",\"required\":false,\"label\":\"File Upload\",\"className\":\"form-control\",\"name\":\"file-1629274995936-0\",\"access\":false,\"subtype\":\"file\",\"multiple\":false},{\"type\":\"number\",\"required\":false,\"label\":\"Number\",\"className\":\"form-control\",\"name\":\"number-1629274993776-0\",\"access\":false},{\"type\":\"select\",\"required\":false,\"label\":\"Select\",\"className\":\"form-control\",\"name\":\"select-1629275003254-0\",\"access\":false,\"multiple\":false,\"values\":[{\"label\":\"Option 1\",\"value\":\"option-1\",\"selected\":true},{\"label\":\"Option 2\",\"value\":\"option-2\",\"selected\":false},{\"label\":\"Option 3\",\"value\":\"option-3\",\"selected\":false}]},{\"type\":\"paragraph\",\"subtype\":\"p\",\"label\":\"Paragraph\",\"access\":false},{\"type\":\"header\",\"subtype\":\"h1\",\"label\":\"Header\",\"access\":false},{\"type\":\"file\",\"required\":false,\"label\":\"File Upload\",\"className\":\"form-control\",\"name\":\"file-1629274977627-0\",\"access\":false,\"subtype\":\"file\",\"multiple\":false},{\"type\":\"button\",\"label\":\"Button\",\"subtype\":\"button\",\"className\":\"btn-default btn\",\"name\":\"button-1629274975910-0\",\"access\":false,\"style\":\"default\"}]'),
(24, 'test file image', NULL, NULL, '<div class=\"rendered-form\">\r\n<div class=\"formbuilder-date form-group field-date-1629847060454-0\">\r\n<label for=\"date-1629847060454-0\" class=\"formbuilder-date-label\">Date Field</label>\r\n<input type=\"date\" class=\"form-control\" name=\"date-1629847060454-0\" access=\"false\" id=\"date-1629847060454-0\">\r\n</div>\r\n<div class=\"formbuilder-file form-group field-file-1629847062941-0\">\r\n<label for=\"file-1629847062941-0\" class=\"formbuilder-file-label\">File Upload</label>\r\n<input type=\"file\" class=\"form-control\" name=\"file-1629847062941-0\" access=\"false\" multiple=\"false\" id=\"file-1629847062941-0\">\r\n</div>\r\n</div>', 1, '2021-08-25 11:18:35', '2021-08-25 11:18:35', '[{\"type\":\"date\",\"required\":false,\"label\":\"Date Field\",\"className\":\"form-control\",\"name\":\"date-1629847060454-0\",\"access\":false},{\"type\":\"file\",\"required\":false,\"label\":\"File Upload\",\"className\":\"form-control\",\"name\":\"file-1629847062941-0\",\"access\":false,\"subtype\":\"file\",\"multiple\":false}]'),
(25, 'adsfd', NULL, NULL, '<div class=\"rendered-form\">\r\n<div class=\"formbuilder-file form-group field-file-1629968189581-0\">\r\n<label for=\"file-1629968189581-0\" class=\"formbuilder-file-label\">File Upload</label>\r\n<input type=\"file\" class=\"form-control\" name=\"file-1629968189581-0\" access=\"false\" multiple=\"false\" id=\"file-1629968189581-0\">\r\n</div>\r\n</div>', 1, '2021-08-26 20:59:05', '2021-08-26 20:59:05', '[{\"type\":\"file\",\"required\":false,\"label\":\"File Upload\",\"className\":\"form-control\",\"name\":\"file-1629968189581-0\",\"access\":false,\"subtype\":\"file\",\"multiple\":false}]'),
(26, 'test image', NULL, NULL, '<div class=\"rendered-form\">\r\n<div class=\"formbuilder-file form-group field-file-1630101382050-0\">\r\n<label for=\"file-1630101382050-0\" class=\"formbuilder-file-label\">File Upload</label>\r\n<img src=\"http://localhost/hs/company/logos/City%20Wide1627915404.png\">\r\n</div>\r\n</div>', 1, '2021-08-28 09:56:23', '2021-08-28 09:56:23', '[{\"type\":\"file\",\"required\":false,\"label\":\"File Upload\",\"className\":\"form-control\",\"name\":\"file-1630101382050-0\",\"access\":false,\"subtype\":\"file\",\"multiple\":false}]'),
(27, 'new  asdasdasdasdasd', NULL, NULL, '<div class=\"rendered-form\">\r\n<div class=\"formbuilder-file form-group field-file-1630106243817-0\">\r\n\r\n<img src=\"http://localhost/hs//public/assets/form_images/1630106247.image_photo-1626736940710-1ce0af273527.jpg\">\r\n</div>\r\n<div class=\"formbuilder-file form-group field-file-1630106287702-0\">\r\n<label for=\"file-1630106287702-0\" class=\"formbuilder-file-label\">File Upload</label>\r\n<input type=\"file\" class=\"form-control\" name=\"file-1630106287702-0\" access=\"false\" multiple=\"false\" id=\"file-1630106287702-0\">\r\n</div>\r\n</div>', 1, '2021-08-28 11:18:58', '2021-08-28 11:18:58', '[{\"type\":\"file\",\"required\":false,\"label\":\"File Upload\",\"className\":\"form-control\",\"name\":\"file-1630106243817-0\",\"access\":false,\"subtype\":\"file\",\"multiple\":false},{\"type\":\"file\",\"required\":false,\"label\":\"File Upload\",\"className\":\"form-control\",\"name\":\"file-1630106287702-0\",\"access\":false,\"subtype\":\"file\",\"multiple\":false}]');
INSERT INTO `forms` (`id`, `form_name`, `file_name`, `form_img`, `data`, `company_id`, `created_at`, `updated_at`, `json`) VALUES
(28, 'test formmmmm', NULL, NULL, '<div class=\"rendered-form\">\r\n<div class=\"formbuilder-date form-group field-date-1630226261735-0\">\r\n<label for=\"date-1630226261735-0\" class=\"formbuilder-date-label\">Date Field</label>\r\n<input type=\"date\" class=\"form-control\" name=\"date-1630226261735-0\" access=\"false\" value=\"2021-08-25\" id=\"date-1630226261735-0\">\r\n</div>\r\n<div class=\"\">\r\n<h1 access=\"false\" id=\"control-6529363\">test header</h1>\r\n</div>\r\n<div class=\"formbuilder-text form-group field-text-1630226273260-0\">\r\n<label for=\"text-1630226273260-0\" class=\"formbuilder-text-label\">Text Field</label>\r\n<input type=\"text\" class=\"form-control\" name=\"text-1630226273260-0\" access=\"false\" value=\"HEll\" id=\"text-1630226273260-0\">\r\n</div>\r\n<div class=\"formbuilder-textarea form-group field-textarea-1630226372567-0\">\r\n<label for=\"textarea-1630226372567-0\" class=\"formbuilder-textarea-label\">Text Area</label>\r\n<textarea type=\"textarea\" class=\"form-control\" name=\"textarea-1630226372567-0\" access=\"false\" id=\"textarea-1630226372567-0\">\r\n</textarea>\r\n</div>\r\n<div class=\"formbuilder-radio-group form-group field-radio-group-1630226270347-0\">\r\n<label for=\"radio-group-1630226270347-0\" class=\"formbuilder-radio-group-label\">Radio Group</label>\r\n<div class=\"radio-group\">\r\n<div class=\"formbuilder-radio\">\r\n<input name=\"radio-group-1630226270347-0\" access=\"false\" id=\"radio-group-1630226270347-0-0\" value=\"option-1\" type=\"radio\">\r\n<label for=\"radio-group-1630226270347-0-0\">Option 1</label>\r\n</div>\r\n<div class=\"formbuilder-radio\">\r\n<input name=\"radio-group-1630226270347-0\" access=\"false\" id=\"radio-group-1630226270347-0-1\" value=\"option-2\" type=\"radio\">\r\n<label for=\"radio-group-1630226270347-0-1\">Option 2</label>\r\n</div>\r\n<div class=\"formbuilder-radio\">\r\n<input name=\"radio-group-1630226270347-0\" access=\"false\" id=\"radio-group-1630226270347-0-2\" value=\"option-3\" type=\"radio\">\r\n<label for=\"radio-group-1630226270347-0-2\">Option 3</label>\r\n</div>\r\n</div>\r\n</div>\r\n<div class=\"formbuilder-file form-group field-file-1630226277637-0\">\r\n\r\n<img src=\"http://localhost/hs/public/assets/form_images/1630226283.image_photo-1626736940710-1ce0af273527.jpg\">\r\n</div>\r\n<div class=\"\">\r\n<p access=\"false\" id=\"control-1490433\">Paragraph</p>\r\n</div>\r\n</div>', 1, '2021-08-29 20:39:44', '2021-08-29 20:39:44', '[{\"type\":\"date\",\"required\":false,\"label\":\"Date Field\",\"className\":\"form-control\",\"name\":\"date-1630226261735-0\",\"access\":false,\"value\":\"2021-08-25\"},{\"type\":\"header\",\"subtype\":\"h1\",\"label\":\"test header\",\"access\":false},{\"type\":\"text\",\"required\":false,\"label\":\"Text Field\",\"className\":\"form-control\",\"name\":\"text-1630226273260-0\",\"access\":false,\"value\":\"HEll\",\"subtype\":\"text\"},{\"type\":\"textarea\",\"required\":false,\"label\":\"Text Area\",\"className\":\"form-control\",\"name\":\"textarea-1630226372567-0\",\"access\":false,\"subtype\":\"textarea\"},{\"type\":\"radio-group\",\"required\":false,\"label\":\"Radio Group\",\"inline\":false,\"name\":\"radio-group-1630226270347-0\",\"access\":false,\"other\":false,\"values\":[{\"label\":\"Option 1\",\"value\":\"option-1\",\"selected\":false},{\"label\":\"Option 2\",\"value\":\"option-2\",\"selected\":false},{\"label\":\"Option 3\",\"value\":\"option-3\",\"selected\":false}]},{\"type\":\"file\",\"required\":false,\"label\":\"File Upload\",\"className\":\"form-control\",\"name\":\"file-1630226277637-0\",\"access\":false,\"subtype\":\"file\",\"multiple\":false},{\"type\":\"paragraph\",\"subtype\":\"p\",\"label\":\"Paragraph\",\"access\":false}]'),
(29, 'dfsvd', NULL, NULL, '<div class=\"rendered-form\">\r\n<div class=\"formbuilder-number form-group field-number-1630236338016-0\">\r\n<label for=\"number-1630236338016-0\" class=\"formbuilder-number-label\">Number</label>\r\n<input type=\"number\" class=\"form-control\" name=\"number-1630236338016-0\" access=\"false\" value=\"66565\" id=\"number-1630236338016-0\">\r\n</div>\r\n</div>', 1, '2021-08-29 23:25:50', '2021-08-29 23:25:50', '[{\"type\":\"number\",\"required\":false,\"label\":\"Number\",\"className\":\"form-control\",\"name\":\"number-1630236338016-0\",\"access\":false,\"value\":\"66565\"}]'),
(30, 'testhjkdhdjfhskjdfhkjshfksdjhfjksdhfjksdhfjkdshfjksdfs', NULL, NULL, '<div class=\"rendered-form\">\r\n<input type=\"hidden\" name=\"hidden-1630236386027-0\" access=\"false\" id=\"hidden-1630236386027-0\">\r\n<div class=\"formbuilder-number form-group field-number-1630236400629-0\">\r\n<label for=\"number-1630236400629-0\" class=\"formbuilder-number-label\">Number</label>\r\n<input type=\"number\" class=\"form-control\" name=\"number-1630236400629-0\" access=\"false\" value=\"4654655456\" id=\"number-1630236400629-0\">\r\n</div>\r\n</div>', 1, '2021-08-29 23:26:43', '2021-08-29 23:26:43', '[{\"type\":\"hidden\",\"name\":\"hidden-1630236386027-0\",\"access\":false},{\"type\":\"number\",\"required\":false,\"label\":\"Number\",\"className\":\"form-control\",\"name\":\"number-1630236400629-0\",\"access\":false,\"value\":\"4654655456\"}]'),
(31, 'ds', NULL, NULL, '<div class=\"rendered-form\">\r\n<div class=\"formbuilder-radio-group form-group field-radio-group-1630236776008-0\">\r\n<label for=\"radio-group-1630236776008-0\" class=\"formbuilder-radio-group-label\">Radio Group</label>\r\n<div class=\"radio-group\">\r\n<div class=\"formbuilder-radio\">\r\n<input name=\"radio-group-1630236776008-0\" access=\"false\" id=\"radio-group-1630236776008-0-0\" value=\"option-1\" type=\"radio\">\r\n<label for=\"radio-group-1630236776008-0-0\">Option 1</label>\r\n</div>\r\n<div class=\"formbuilder-radio\">\r\n<input name=\"radio-group-1630236776008-0\" access=\"false\" id=\"radio-group-1630236776008-0-1\" value=\"option-2\" type=\"radio\">\r\n<label for=\"radio-group-1630236776008-0-1\">Option 2</label>\r\n</div>\r\n<div class=\"formbuilder-radio\">\r\n<input name=\"radio-group-1630236776008-0\" access=\"false\" id=\"radio-group-1630236776008-0-2\" value=\"option-3\" type=\"radio\" checked=\"checked\">\r\n<label for=\"radio-group-1630236776008-0-2\">Option 3</label>\r\n</div>\r\n</div>\r\n</div>\r\n</div>', 1, '2021-08-29 23:33:00', '2021-08-29 23:33:00', '[{\"type\":\"radio-group\",\"required\":false,\"label\":\"Radio Group\",\"inline\":false,\"name\":\"radio-group-1630236776008-0\",\"access\":false,\"other\":false,\"values\":[{\"label\":\"Option 1\",\"value\":\"option-1\",\"selected\":false},{\"label\":\"Option 2\",\"value\":\"option-2\",\"selected\":false},{\"label\":\"Option 3\",\"value\":\"option-3\",\"selected\":true}]}]'),
(32, 'dvb', NULL, NULL, '<div class=\"rendered-form\">\r\n<div class=\"formbuilder-number form-group field-number-1630237660006-0\">\r\n<label for=\"number-1630237660006-0\" class=\"formbuilder-number-label\">Number</label>\r\n<input type=\"number\" class=\"form-control\" name=\"number-1630237660006-0\" access=\"false\" value=\"444\" id=\"number-1630237660006-0\">\r\n</div>\r\n</div>', 1, '2021-08-29 23:47:57', '2021-08-29 23:47:57', '[{\"type\":\"number\",\"required\":false,\"label\":\"Number\",\"className\":\"form-control\",\"name\":\"number-1630237660006-0\",\"access\":false,\"value\":\"444\"}]'),
(33, 'autocomplete', NULL, NULL, '<div class=\"rendered-form\">\r\n<div class=\"formbuilder-autocomplete form-group field-autocomplete-1630238587043-0\">\r\n<label for=\"autocomplete-1630238587043-0\" class=\"formbuilder-autocomplete-label\">Autocomplete</label>\r\n<input class=\"form-control\" access=\"false\" require-valid-option=\"false\" id=\"autocomplete-1630238587043-0-input\" autocomplete=\"off\">\r\n<input class=\"form-control\" name=\"autocomplete-1630238587043-0\" access=\"false\" require-valid-option=\"false\" id=\"autocomplete-1630238587043-0\" type=\"hidden\">\r\n<ul id=\"autocomplete-1630238587043-0-list\" class=\"formbuilder-autocomplete-list\">\r\n<li value=\"option-1\">Option 1</li>\r\n<li value=\"option-2\">Option 2</li>\r\n<li value=\"option-3\">Option 3</li>\r\n</ul>\r\n</div>\r\n</div>', 1, '2021-08-30 00:03:28', '2021-08-30 00:03:28', '[{\"type\":\"autocomplete\",\"required\":false,\"label\":\"Autocomplete\",\"className\":\"form-control\",\"name\":\"autocomplete-1630238587043-0\",\"access\":false,\"requireValidOption\":false,\"values\":[{\"label\":\"Option 1\",\"value\":\"option-1\",\"selected\":true},{\"label\":\"Option 2\",\"value\":\"option-2\",\"selected\":false},{\"label\":\"Option 3\",\"value\":\"option-3\",\"selected\":false}]}]'),
(34, 'autocomplete', NULL, NULL, '<div class=\"rendered-form\">\r\n<div class=\"formbuilder-autocomplete form-group field-autocomplete-1630238587043-0\">\r\n<label for=\"autocomplete-1630238587043-0\" class=\"formbuilder-autocomplete-label\">Autocomplete</label>\r\n<input class=\"form-control\" access=\"false\" require-valid-option=\"false\" id=\"autocomplete-1630238587043-0-input\" autocomplete=\"off\">\r\n<input class=\"form-control\" name=\"autocomplete-1630238587043-0\" access=\"false\" require-valid-option=\"false\" id=\"autocomplete-1630238587043-0\" type=\"hidden\">\r\n<ul id=\"autocomplete-1630238587043-0-list\" class=\"formbuilder-autocomplete-list\">\r\n<li value=\"option-1\">Option 1</li>\r\n<li value=\"option-2\">Option 2</li>\r\n<li value=\"option-3\">Option 3</li>\r\n</ul>\r\n</div>\r\n</div>', 1, '2021-08-30 00:03:36', '2021-08-30 00:03:36', '[{\"type\":\"autocomplete\",\"required\":false,\"label\":\"Autocomplete\",\"className\":\"form-control\",\"name\":\"autocomplete-1630238587043-0\",\"access\":false,\"requireValidOption\":false,\"values\":[{\"label\":\"Option 1\",\"value\":\"option-1\",\"selected\":true},{\"label\":\"Option 2\",\"value\":\"option-2\",\"selected\":false},{\"label\":\"Option 3\",\"value\":\"option-3\",\"selected\":false}]}]'),
(35, 'autooooooo', NULL, NULL, '<div class=\"rendered-form\">\r\n<div class=\"formbuilder-autocomplete form-group field-autocomplete-1630238680598-0\">\r\n<label for=\"autocomplete-1630238680598-0\" class=\"formbuilder-autocomplete-label\">Autocomplete</label>\r\n<input class=\"form-control\" access=\"false\" require-valid-option=\"false\" id=\"autocomplete-1630238680598-0-input\" autocomplete=\"off\">\r\n<input class=\"form-control\" name=\"autocomplete-1630238680598-0\" access=\"false\" require-valid-option=\"false\" id=\"autocomplete-1630238680598-0\" type=\"hidden\">\r\n<ul id=\"autocomplete-1630238680598-0-list\" class=\"formbuilder-autocomplete-list\">\r\n<li value=\"option-1\">Option 1</li>\r\n<li value=\"option-2\">Option 2</li>\r\n<li value=\"option-3\">Option 3</li>\r\n</ul>\r\n</div>\r\n</div>', 1, '2021-08-30 00:04:50', '2021-08-30 00:04:50', '[{\"type\":\"autocomplete\",\"required\":false,\"label\":\"Autocomplete\",\"className\":\"form-control\",\"name\":\"autocomplete-1630238680598-0\",\"access\":false,\"requireValidOption\":false,\"values\":[{\"label\":\"Option 1\",\"value\":\"option-1\",\"selected\":true},{\"label\":\"Option 2\",\"value\":\"option-2\",\"selected\":false},{\"label\":\"Option 3\",\"value\":\"option-3\",\"selected\":false}]}]'),
(36, 'check box', NULL, NULL, '<div class=\"rendered-form\">\r\n<div class=\"formbuilder-checkbox-group form-group field-checkbox-group-1630238800947-0\">\r\n<label for=\"checkbox-group-1630238800947-0\" class=\"formbuilder-checkbox-group-label\">Checkbox&nbsp;</label>\r\n<div class=\"checkbox-group\">\r\n<div class=\"formbuilder-checkbox\">\r\n<input name=\"checkbox-group-1630238800947-0[]\" access=\"false\" id=\"checkbox-group-1630238800947-0-0\" value=\"option-1\" type=\"checkbox\">\r\n<label for=\"checkbox-group-1630238800947-0-0\">Option 1</label>\r\n</div>\r\n</div>\r\n</div>\r\n</div>', 1, '2021-08-30 00:07:06', '2021-08-30 00:07:06', '[{\"type\":\"checkbox-group\",\"required\":false,\"label\":\"Checkbox&nbsp;\",\"toggle\":false,\"inline\":false,\"name\":\"checkbox-group-1630238800947-0\",\"access\":false,\"other\":false,\"values\":[{\"label\":\"Option 1\",\"value\":\"option-1\",\"selected\":false}]}]'),
(37, 'chekc box 2', NULL, NULL, '<div class=\"rendered-form\">\r\n<div class=\"formbuilder-checkbox-group form-group field-checkbox-group-1630239140546-0\">\r\n<label for=\"checkbox-group-1630239140546-0\" class=\"formbuilder-checkbox-group-label\">Checkbox Group</label>\r\n<div class=\"checkbox-group\">\r\n<div class=\"formbuilder-checkbox\">\r\n<input name=\"checkbox-group-1630239140546-0[]\" access=\"false\" id=\"checkbox-group-1630239140546-0-0\" value=\"option-1\" type=\"checkbox\" checked=\"checked\">\r\n<label for=\"checkbox-group-1630239140546-0-0\">Option 1</label>\r\n</div>\r\n</div>\r\n</div>\r\n</div>', 1, '2021-08-30 00:12:23', '2021-08-30 00:12:23', '[{\"type\":\"checkbox-group\",\"required\":false,\"label\":\"Checkbox Group\",\"toggle\":false,\"inline\":false,\"name\":\"checkbox-group-1630239140546-0\",\"access\":false,\"other\":false,\"values\":[{\"label\":\"Option 1\",\"value\":\"option-1\",\"selected\":true}]}]'),
(38, 'checkkkk', NULL, NULL, '<div class=\"rendered-form\">\r\n<div class=\"formbuilder-checkbox-group form-group field-checkbox-group-1630239273267-0\">\r\n<label for=\"checkbox-group-1630239273267-0\" class=\"formbuilder-checkbox-group-label\">Checkbox Group</label>\r\n<div class=\"checkbox-group\">\r\n<div class=\"formbuilder-checkbox\">\r\n<input name=\"checkbox-group-1630239273267-0[]\" access=\"false\" id=\"checkbox-group-1630239273267-0-0\" value=\"option-1\" type=\"checkbox\">\r\n<label for=\"checkbox-group-1630239273267-0-0\">Option 1</label>\r\n</div>\r\n</div>\r\n</div>\r\n</div>', 1, '2021-08-30 00:14:37', '2021-08-30 00:14:37', '[{\"type\":\"checkbox-group\",\"required\":false,\"label\":\"Checkbox Group\",\"toggle\":false,\"inline\":false,\"name\":\"checkbox-group-1630239273267-0\",\"access\":false,\"other\":false,\"values\":[{\"label\":\"Option 1\",\"value\":\"option-1\",\"selected\":false}]}]'),
(39, 'date', NULL, NULL, '<div class=\"rendered-form\">\r\n<div class=\"formbuilder-date form-group field-date-1630239439673-0\">\r\n<label for=\"date-1630239439673-0\" class=\"formbuilder-date-label\">Date Field</label>\r\n<input type=\"date\" class=\"form-control\" name=\"date-1630239439673-0\" access=\"false\" value=\"2021-09-11\" id=\"date-1630239439673-0\">\r\n</div>\r\n</div>', 1, '2021-08-30 00:17:33', '2021-08-30 00:17:33', '[{\"type\":\"date\",\"required\":false,\"label\":\"Date Field\",\"className\":\"form-control\",\"name\":\"date-1630239439673-0\",\"access\":false,\"value\":\"2021-09-11\"}]'),
(40, 'paragraph', NULL, NULL, '<div class=\"rendered-form\">\r\n<div class=\"\">\r\n<h1 access=\"false\" id=\"control-8423567\">Header</h1>\r\n</div>\r\n<div class=\"\">\r\n<p access=\"false\" id=\"control-2873854\">Paragraphdsfdsfddfsdfsdfsdfsdfsdfsdf</p>\r\n</div>\r\n</div>', 1, '2021-08-30 00:23:35', '2021-08-30 00:23:35', '[{\"type\":\"header\",\"subtype\":\"h1\",\"label\":\"Header\",\"access\":false},{\"type\":\"paragraph\",\"subtype\":\"p\",\"label\":\"Paragraphdsfdsfddfsdfsdfsdfsdfsdfsdf\",\"access\":false}]'),
(41, 'radio btn', NULL, NULL, '<div class=\"rendered-form\">\r\n<div class=\"formbuilder-select form-group field-select-1630239903815-0\">\r\n<label for=\"select-1630239903815-0\" class=\"formbuilder-select-label\">Select</label>\r\n<select class=\"form-control\" name=\"select-1630239903815-0\" id=\"select-1630239903815-0\">\r\n<option value=\"option-1\" selected=\"true\" id=\"select-1630239903815-0-0\">Option 1</option>\r\n<option value=\"option-2\" id=\"select-1630239903815-0-1\">Option 2</option>\r\n<option value=\"option-3\" id=\"select-1630239903815-0-2\">Option 3</option>\r\n</select>\r\n</div>\r\n</div>', 1, '2021-08-30 00:25:34', '2021-08-30 00:25:34', '[{\"type\":\"select\",\"required\":false,\"label\":\"Select\",\"className\":\"form-control\",\"name\":\"select-1630239903815-0\",\"access\":false,\"multiple\":false,\"values\":[{\"label\":\"Option 1\",\"value\":\"option-1\",\"selected\":true},{\"label\":\"Option 2\",\"value\":\"option-2\",\"selected\":false},{\"label\":\"Option 3\",\"value\":\"option-3\",\"selected\":false}]}]'),
(42, 'radiio', NULL, NULL, '<div class=\"rendered-form\">\r\n<div class=\"formbuilder-radio-group form-group field-radio-group-1630241683221-0\">\r\n<label for=\"radio-group-1630241683221-0\" class=\"formbuilder-radio-group-label\">Radio Group</label>\r\n<div class=\"radio-group\">\r\n<div class=\"formbuilder-radio\">\r\n<input name=\"radio-group-1630241683221-0\" access=\"false\" id=\"radio-group-1630241683221-0-0\" value=\"option-1\" type=\"radio\">\r\n<label for=\"radio-group-1630241683221-0-0\">Option 1</label>\r\n</div>\r\n<div class=\"formbuilder-radio\">\r\n<input name=\"radio-group-1630241683221-0\" access=\"false\" id=\"radio-group-1630241683221-0-1\" value=\"option-2\" type=\"radio\">\r\n<label for=\"radio-group-1630241683221-0-1\">Option 2</label>\r\n</div>\r\n<div class=\"formbuilder-radio\">\r\n<input name=\"radio-group-1630241683221-0\" access=\"false\" id=\"radio-group-1630241683221-0-2\" value=\"option-3\" type=\"radio\" checked=\"checked\">\r\n<label for=\"radio-group-1630241683221-0-2\">Option 3</label>\r\n</div>\r\n</div>\r\n</div>\r\n</div>', 1, '2021-08-30 00:55:18', '2021-08-30 00:55:18', '[{\"type\":\"radio-group\",\"required\":false,\"label\":\"Radio Group\",\"inline\":false,\"name\":\"radio-group-1630241683221-0\",\"access\":false,\"other\":false,\"values\":[{\"label\":\"Option 1\",\"value\":\"option-1\",\"selected\":false},{\"label\":\"Option 2\",\"value\":\"option-2\",\"selected\":false},{\"label\":\"Option 3\",\"value\":\"option-3\",\"selected\":true}]}]'),
(43, 'test text', NULL, NULL, '<div class=\"rendered-form\">\r\n<div class=\"formbuilder-text form-group field-text-1630243897147-0\">\r\n<label for=\"text-1630243897147-0\" class=\"formbuilder-text-label\">Text Field</label>\r\n<input type=\"text\" class=\"form-control\" name=\"text-1630243897147-0\" access=\"false\" value=\"dsfdbfdfd\" id=\"text-1630243897147-0\">\r\n</div>\r\n</div>', 1, '2021-08-30 01:31:50', '2021-08-30 01:31:50', '[{\"type\":\"text\",\"required\":false,\"label\":\"Text Field\",\"className\":\"form-control\",\"name\":\"text-1630243897147-0\",\"access\":false,\"value\":\"dsfdbfdfd\",\"subtype\":\"text\"}]'),
(44, 'text area', NULL, NULL, '<div class=\"rendered-form\">\r\n<div class=\"formbuilder-textarea form-group field-textarea-1630244012086-0\">\r\n<label for=\"textarea-1630244012086-0\" class=\"formbuilder-textarea-label\">Text Area</label>\r\n<textarea type=\"textarea\" class=\"form-control\" name=\"textarea-1630244012086-0\" access=\"false\" id=\"textarea-1630244012086-0\">asdsfdsdafsdsdf</textarea>\r\n</div>\r\n</div>', 1, '2021-08-30 01:33:43', '2021-08-30 01:33:43', '[{\"type\":\"textarea\",\"required\":false,\"label\":\"Text Area\",\"className\":\"form-control\",\"name\":\"textarea-1630244012086-0\",\"access\":false,\"value\":\"asdsfdsdafsdsdf\",\"subtype\":\"textarea\"}]'),
(45, 'final test', NULL, NULL, '<div class=\"rendered-form\">\r\n<div class=\"formbuilder-date form-group field-date-1630244413290-0\">\r\n<label for=\"date-1630244413290-0\" class=\"formbuilder-date-label\">Date Field</label>\r\n<input type=\"date\" class=\"form-control\" name=\"date-1630244413290-0\" access=\"false\" id=\"date-1630244413290-0\">\r\n</div>\r\n<div class=\"formbuilder-file form-group field-file-1630244416192-0\">\r\n\r\n<img src=\"http://localhost/hs/public/assets/form_images/1630244427.image_89611250_2791943734220006_3014011124082278400_n.jpg\">\r\n</div>\r\n<div class=\"formbuilder-number form-group field-number-1630244418544-0\">\r\n<label for=\"number-1630244418544-0\" class=\"formbuilder-number-label\">Number</label>\r\n<input type=\"number\" class=\"form-control\" name=\"number-1630244418544-0\" access=\"false\" value=\"1\" id=\"number-1630244418544-0\">\r\n</div>\r\n<div class=\"formbuilder-textarea form-group field-textarea-1630244420311-0\">\r\n<label for=\"textarea-1630244420311-0\" class=\"formbuilder-textarea-label\">Text Area</label>\r\n<textarea type=\"textarea\" class=\"form-control\" name=\"textarea-1630244420311-0\" access=\"false\" id=\"textarea-1630244420311-0\">tes</textarea>\r\n</div>\r\n<div class=\"formbuilder-text form-group field-text-1630244421893-0\">\r\n<label for=\"text-1630244421893-0\" class=\"formbuilder-text-label\">Text Field</label>\r\n<input type=\"text\" class=\"form-control\" name=\"text-1630244421893-0\" access=\"false\" value=\"dsdasd\" id=\"text-1630244421893-0\">\r\n</div>\r\n</div>', 1, '2021-08-30 01:40:35', '2021-08-30 01:40:35', '[{\"type\":\"date\",\"required\":false,\"label\":\"Date Field\",\"className\":\"form-control\",\"name\":\"date-1630244413290-0\",\"access\":false},{\"type\":\"file\",\"required\":false,\"label\":\"File Upload\",\"className\":\"form-control\",\"name\":\"file-1630244416192-0\",\"access\":false,\"subtype\":\"file\",\"multiple\":false},{\"type\":\"number\",\"required\":false,\"label\":\"Number\",\"className\":\"form-control\",\"name\":\"number-1630244418544-0\",\"access\":false,\"value\":\"1\"},{\"type\":\"textarea\",\"required\":false,\"label\":\"Text Area\",\"className\":\"form-control\",\"name\":\"textarea-1630244420311-0\",\"access\":false,\"value\":\"tes\",\"subtype\":\"textarea\"},{\"type\":\"text\",\"required\":false,\"label\":\"Text Field\",\"className\":\"form-control\",\"name\":\"text-1630244421893-0\",\"access\":false,\"value\":\"dsdasd\",\"subtype\":\"text\"}]'),
(46, 'fdgf', NULL, NULL, '<div class=\"rendered-form\">\r\n<div class=\"formbuilder-date form-group field-date-1630244568050-0\">\r\n<label for=\"date-1630244568050-0\" class=\"formbuilder-date-label\">Date Field</label>\r\n<input type=\"date\" class=\"form-control\" name=\"date-1630244568050-0\" access=\"false\" value=\"2021-09-11\" id=\"date-1630244568050-0\">\r\n</div>\r\n</div>', 1, '2021-08-30 01:42:53', '2021-08-30 01:42:53', '[{\"type\":\"date\",\"required\":false,\"label\":\"Date Field\",\"className\":\"form-control\",\"name\":\"date-1630244568050-0\",\"access\":false,\"value\":\"2021-09-11\"}]'),
(47, 'full final test', NULL, NULL, '<div class=\"rendered-form\">\r\n<div class=\"formbuilder-autocomplete form-group field-autocomplete-1630265088107-0\">\r\n<label for=\"autocomplete-1630265088107-0\" class=\"formbuilder-autocomplete-label\">Autocomplete</label>\r\n<input class=\"form-control\" access=\"false\" require-valid-option=\"false\" id=\"autocomplete-1630265088107-0-input\" autocomplete=\"off\">\r\n<input class=\"form-control\" name=\"autocomplete-1630265088107-0\" access=\"false\" require-valid-option=\"false\" id=\"autocomplete-1630265088107-0\" type=\"hidden\">\r\n<ul id=\"autocomplete-1630265088107-0-list\" class=\"formbuilder-autocomplete-list\">\r\n<li value=\"option-1\">Option 1</li>\r\n<li value=\"option-2\">Option 2</li>\r\n<li value=\"option-3\">Option 3</li>\r\n</ul>\r\n</div>\r\n<div class=\"formbuilder-file form-group field-file-1630265092265-0\">\r\n\r\n<img style=\"widht:50%\" src=\"http://localhost/hs/public/assets/form_images/1630265103.image_be-build-your-admin-and-user-pannel.jpeg\">\r\n</div>\r\n<div class=\"formbuilder-date form-group field-date-1630265093806-0\">\r\n<label for=\"date-1630265093806-0\" class=\"formbuilder-date-label\">Date Field</label>\r\n<input type=\"date\" class=\"form-control\" name=\"date-1630265093806-0\" access=\"false\" value=\"2021-08-12\" id=\"date-1630265093806-0\">\r\n</div>\r\n<div class=\"formbuilder-number form-group field-number-1630265095432-0\">\r\n<label for=\"number-1630265095432-0\" class=\"formbuilder-number-label\">Number</label>\r\n<input type=\"number\" class=\"form-control\" name=\"number-1630265095432-0\" access=\"false\" value=\"12\" id=\"number-1630265095432-0\">\r\n</div>\r\n<div class=\"formbuilder-select form-group field-select-1630265097764-0\">\r\n<label for=\"select-1630265097764-0\" class=\"formbuilder-select-label\">Select</label>\r\n<select class=\"form-control\" name=\"select-1630265097764-0\" id=\"select-1630265097764-0\">\r\n<option value=\"option-1\" id=\"select-1630265097764-0-0\">Option 1</option>\r\n<option value=\"option-2\" selected=\"true\" id=\"select-1630265097764-0-1\">Option 2</option>\r\n<option value=\"option-3\" id=\"select-1630265097764-0-2\">Option 3</option>\r\n</select>\r\n</div>\r\n</div>', 1, '2021-08-30 07:25:26', '2021-08-30 07:25:26', '[{\"type\":\"autocomplete\",\"required\":false,\"label\":\"Autocomplete\",\"className\":\"form-control\",\"name\":\"autocomplete-1630265088107-0\",\"access\":false,\"requireValidOption\":false,\"values\":[{\"label\":\"Option 1\",\"value\":\"option-1\",\"selected\":true},{\"label\":\"Option 2\",\"value\":\"option-2\",\"selected\":false},{\"label\":\"Option 3\",\"value\":\"option-3\",\"selected\":false}]},{\"type\":\"file\",\"required\":false,\"label\":\"File Upload\",\"className\":\"form-control\",\"name\":\"file-1630265092265-0\",\"access\":false,\"subtype\":\"file\",\"multiple\":false},{\"type\":\"date\",\"required\":false,\"label\":\"Date Field\",\"className\":\"form-control\",\"name\":\"date-1630265093806-0\",\"access\":false,\"value\":\"2021-08-12\"},{\"type\":\"number\",\"required\":false,\"label\":\"Number\",\"className\":\"form-control\",\"name\":\"number-1630265095432-0\",\"access\":false,\"value\":\"12\"},{\"type\":\"select\",\"required\":false,\"label\":\"Select\",\"className\":\"form-control\",\"name\":\"select-1630265097764-0\",\"access\":false,\"multiple\":false,\"values\":[{\"label\":\"Option 1\",\"value\":\"option-1\",\"selected\":false},{\"label\":\"Option 2\",\"value\":\"option-2\",\"selected\":true},{\"label\":\"Option 3\",\"value\":\"option-3\",\"selected\":false}]}]'),
(48, 'akheer test', NULL, NULL, '<div class=\"rendered-form\">\r\n<div class=\"formbuilder-file form-group field-file-1630265268219-0\">\r\n\r\n<img style=\"width:22%\" src=\"http://localhost/hs/public/assets/form_images/1630265284.image_be-build-your-admin-and-user-pannel.jpeg\">\r\n</div>\r\n<div class=\"formbuilder-number form-group field-number-1630265270039-0\">\r\n<label for=\"number-1630265270039-0\" class=\"formbuilder-number-label\">Number</label>\r\n<input type=\"number\" class=\"form-control\" name=\"number-1630265270039-0\" access=\"false\" value=\"12\" id=\"number-1630265270039-0\">\r\n</div>\r\n<div class=\"formbuilder-select form-group field-select-1630265271375-0\">\r\n<label for=\"select-1630265271375-0\" class=\"formbuilder-select-label\">Select</label>\r\n<select class=\"form-control\" name=\"select-1630265271375-0\" id=\"select-1630265271375-0\">\r\n<option value=\"option-1\" id=\"select-1630265271375-0-0\">Option 1</option>\r\n<option value=\"option-2\" selected=\"true\" id=\"select-1630265271375-0-1\">Option 2</option>\r\n<option value=\"option-3\" id=\"select-1630265271375-0-2\">Option 3</option>\r\n</select>\r\n</div>\r\n<div class=\"formbuilder-text form-group field-text-1630265272408-0\">\r\n<label for=\"text-1630265272408-0\" class=\"formbuilder-text-label\">Text Field</label>\r\n<input type=\"text\" class=\"form-control\" name=\"text-1630265272408-0\" access=\"false\" value=\"sdafsd\" id=\"text-1630265272408-0\">\r\n</div>\r\n<div class=\"formbuilder-textarea form-group field-textarea-1630265273021-0\">\r\n<label for=\"textarea-1630265273021-0\" class=\"formbuilder-textarea-label\">Text Area</label>\r\n<textarea type=\"textarea\" class=\"form-control\" name=\"textarea-1630265273021-0\" access=\"false\" id=\"textarea-1630265273021-0\">dafs</textarea>\r\n</div>\r\n<div class=\"formbuilder-date form-group field-date-1630265278110-0\">\r\n<label for=\"date-1630265278110-0\" class=\"formbuilder-date-label\">Date Field</label>\r\n<input type=\"date\" class=\"form-control\" name=\"date-1630265278110-0\" access=\"false\" value=\"2021-09-11\" id=\"date-1630265278110-0\">\r\n</div>\r\n</div>', 1, '2021-08-30 07:28:16', '2021-08-30 07:28:16', '[{\"type\":\"file\",\"required\":false,\"label\":\"File Upload\",\"className\":\"form-control\",\"name\":\"file-1630265268219-0\",\"access\":false,\"subtype\":\"file\",\"multiple\":false},{\"type\":\"number\",\"required\":false,\"label\":\"Number\",\"className\":\"form-control\",\"name\":\"number-1630265270039-0\",\"access\":false,\"value\":\"12\"},{\"type\":\"select\",\"required\":false,\"label\":\"Select\",\"className\":\"form-control\",\"name\":\"select-1630265271375-0\",\"access\":false,\"multiple\":false,\"values\":[{\"label\":\"Option 1\",\"value\":\"option-1\",\"selected\":false},{\"label\":\"Option 2\",\"value\":\"option-2\",\"selected\":true},{\"label\":\"Option 3\",\"value\":\"option-3\",\"selected\":false}]},{\"type\":\"text\",\"required\":false,\"label\":\"Text Field\",\"className\":\"form-control\",\"name\":\"text-1630265272408-0\",\"access\":false,\"value\":\"sdafsd\",\"subtype\":\"text\"},{\"type\":\"textarea\",\"required\":false,\"label\":\"Text Area\",\"className\":\"form-control\",\"name\":\"textarea-1630265273021-0\",\"access\":false,\"value\":\"dafs\",\"subtype\":\"textarea\"},{\"type\":\"date\",\"required\":false,\"label\":\"Date Field\",\"className\":\"form-control\",\"name\":\"date-1630265278110-0\",\"access\":false,\"value\":\"2021-09-11\"}]'),
(49, 'abcdefghijk;', NULL, NULL, '<div class=\"rendered-form\">\r\n<div class=\"formbuilder-select form-group field-select-1630269305218-0\">\r\n<label for=\"select-1630269305218-0\" class=\"formbuilder-select-label\">Select</label>\r\n<select class=\"form-control\" name=\"select-1630269305218-0\" id=\"select-1630269305218-0\">\r\n<option value=\"option-1\" selected=\"true\" id=\"select-1630269305218-0-0\">Option 1</option>\r\n<option value=\"option-2\" id=\"select-1630269305218-0-1\">Option 2</option>\r\n<option value=\"option-3\" id=\"select-1630269305218-0-2\">Option 3</option>\r\n</select>\r\n</div>\r\n</div>', 1, '2021-08-30 08:35:14', '2021-08-30 08:35:14', '[{\"type\":\"select\",\"required\":false,\"label\":\"Select\",\"className\":\"form-control\",\"name\":\"select-1630269305218-0\",\"access\":false,\"multiple\":false,\"values\":[{\"label\":\"Option 1\",\"value\":\"option-1\",\"selected\":true},{\"label\":\"Option 2\",\"value\":\"option-2\",\"selected\":false},{\"label\":\"Option 3\",\"value\":\"option-3\",\"selected\":false}]}]'),
(50, 'file upload', NULL, NULL, '<div class=\"rendered-form\">\r\n<div class=\"formbuilder-file form-group field-file-1630360843796-0\">\r\n<label for=\"file-1630360843796-0\" class=\"formbuilder-file-label\">File Upload</label>\r\n<input type=\"file\" class=\"form-control\" name=\"file-1630360843796-0\" access=\"false\" multiple=\"false\" id=\"file-1630360843796-0\">\r\n</div>\r\n</div>', 1, '2021-08-31 10:00:53', '2021-08-31 10:00:53', '[{\"type\":\"file\",\"required\":false,\"label\":\"File Upload\",\"className\":\"form-control\",\"name\":\"file-1630360843796-0\",\"access\":false,\"subtype\":\"file\",\"multiple\":false}]');

-- --------------------------------------------------------

--
-- Table structure for table `form_fields`
--

CREATE TABLE `form_fields` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `form_id` int(11) NOT NULL,
  `field_id` int(11) NOT NULL,
  `options` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL CHECK (json_valid(`options`))
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `groups`
--

CREATE TABLE `groups` (
  `id` int(8) UNSIGNED NOT NULL,
  `company_id` int(6) NOT NULL DEFAULT 0,
  `id_user` int(10) NOT NULL DEFAULT 0,
  `name` varchar(150) NOT NULL DEFAULT '',
  `descr` text NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `groups`
--

INSERT INTO `groups` (`id`, `company_id`, `id_user`, `name`, `descr`, `status`, `created_at`, `updated_at`) VALUES
(16, 0, 0, 'test', 'anva sifjds', 1, '2021-06-23 12:58:26', '2021-06-23 12:58:26'),
(17, 1, 0, 'FIELD MANAGEMENT / PLUMBING / HVAC', 'FIELD MANAGEMENT / PLUMBING / HVAC', 1, '2021-08-10 00:15:42', '2021-08-10 00:15:42'),
(18, 1, 0, 'SHOP', 'SHOP', 1, '2021-08-10 00:16:20', '2021-08-10 00:16:20'),
(19, 1, 0, 'START UP', 'START UP', 1, '2021-08-10 00:18:41', '2021-08-10 00:18:41');

-- --------------------------------------------------------

--
-- Table structure for table `manager_has_toolbox`
--

CREATE TABLE `manager_has_toolbox` (
  `id` int(100) NOT NULL,
  `manager_id` int(100) NOT NULL,
  `toolbox_id` int(100) NOT NULL,
  `folder_id` int(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `manager_has_toolbox`
--

INSERT INTO `manager_has_toolbox` (`id`, `manager_id`, `toolbox_id`, `folder_id`) VALUES
(12, 12, 37, 39);

-- --------------------------------------------------------

--
-- Table structure for table `manager_projects`
--

CREATE TABLE `manager_projects` (
  `id` int(11) NOT NULL,
  `manager_id` int(11) NOT NULL,
  `project_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `master`
--

CREATE TABLE `master` (
  `id` int(10) NOT NULL,
  `name` varchar(10) NOT NULL,
  `email` varchar(100) NOT NULL,
  `password` longtext NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `master`
--

INSERT INTO `master` (`id`, `name`, `email`, `password`) VALUES
(1, 'master', 'master@gmail.com', '$2y$10$SnVnsXloXTjUHGzTGfmo9O/EHZhKHPUyWHiRUiuEUsCfR9euQ5Aei');

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(4, '2021_04_16_105421_create_permission_tables', 1),
(6, '2021_04_18_084204_create_companies_table', 2),
(7, '2021_04_18_120728_create_departments_table', 3),
(10, '2021_04_18_123846_create_courses_table', 4),
(11, '2021_04_18_123537_create_coursecategory_table', 5),
(13, '2021_04_18_180029_create_certificates_table', 5),
(15, '2021_04_18_144631_create_videos_table', 6),
(16, '2021_04_19_062532_create_video_categories_table', 7),
(17, '2021_04_19_124750_create_workers_table', 8),
(19, '2021_04_20_052107_create_questions_table', 9),
(21, '2021_04_20_113144_create_table_worker_courses_table', 10),
(22, '2021_04_22_111932_create_department_has_courses_table', 11),
(24, '2021_04_23_114243_create_course_results_table', 12),
(25, '2019_11_05_094345_create_forms_table', 13),
(26, '2019_11_05_094809_create_fields_table', 13),
(27, '2019_11_05_094833_create_form_fields_table', 13),
(28, '2021_04_28_185555_create_assignments_table', 14),
(29, '2021_04_28_231319_assignquestions', 15),
(30, '2021_04_29_001312_create_assign_commons_table', 16),
(31, '2021_04_29_080241_create_folders_table', 17),
(32, '2021_05_03_101920_create_notifications_table', 18),
(33, '2021_05_07_144115_create_certificate_types_table', 19),
(34, '2021_05_07_164421_create_projects_table', 20);

-- --------------------------------------------------------

--
-- Table structure for table `model_has_permissions`
--

CREATE TABLE `model_has_permissions` (
  `permission_id` bigint(20) UNSIGNED NOT NULL,
  `model_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `model_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `model_has_permissions`
--

INSERT INTO `model_has_permissions` (`permission_id`, `model_type`, `model_id`) VALUES
(1, 'App\\Models\\User', 27),
(1, 'App\\Models\\User', 28),
(1, 'App\\Models\\User', 29),
(1, 'App\\Models\\User', 30),
(1, 'App\\Models\\User', 64),
(1, 'App\\Models\\User', 86),
(1, 'App\\Models\\User', 87),
(1, 'App\\Models\\User', 88),
(1, 'App\\Models\\User', 89),
(1, 'App\\Models\\User', 90),
(1, 'App\\Models\\User', 91),
(1, 'App\\Models\\User', 92),
(1, 'App\\Models\\User', 93),
(1, 'App\\Models\\User', 94),
(1, 'App\\Models\\User', 96),
(1, 'App\\Models\\User', 103),
(1, 'App\\Models\\User', 104),
(1, 'App\\Models\\User', 105),
(1, 'App\\Models\\User', 106),
(1, 'App\\Models\\User', 110),
(1, 'App\\Models\\User', 111),
(2, 'App\\Models\\User', 1),
(2, 'App\\Models\\User', 2),
(2, 'App\\Models\\User', 27),
(2, 'App\\Models\\User', 28),
(2, 'App\\Models\\User', 29),
(2, 'App\\Models\\User', 30),
(2, 'App\\Models\\User', 64),
(2, 'App\\Models\\User', 86),
(2, 'App\\Models\\User', 87),
(2, 'App\\Models\\User', 88),
(2, 'App\\Models\\User', 89),
(2, 'App\\Models\\User', 90),
(2, 'App\\Models\\User', 91),
(2, 'App\\Models\\User', 92),
(2, 'App\\Models\\User', 93),
(2, 'App\\Models\\User', 94),
(2, 'App\\Models\\User', 96),
(2, 'App\\Models\\User', 103),
(2, 'App\\Models\\User', 104),
(2, 'App\\Models\\User', 105),
(2, 'App\\Models\\User', 106),
(2, 'App\\Models\\User', 110),
(2, 'App\\Models\\User', 111),
(3, 'App\\Models\\User', 27),
(3, 'App\\Models\\User', 28),
(3, 'App\\Models\\User', 29),
(3, 'App\\Models\\User', 30),
(3, 'App\\Models\\User', 64),
(3, 'App\\Models\\User', 86),
(3, 'App\\Models\\User', 87),
(3, 'App\\Models\\User', 88),
(3, 'App\\Models\\User', 89),
(3, 'App\\Models\\User', 90),
(3, 'App\\Models\\User', 91),
(3, 'App\\Models\\User', 92),
(3, 'App\\Models\\User', 93),
(3, 'App\\Models\\User', 94),
(3, 'App\\Models\\User', 96),
(3, 'App\\Models\\User', 103),
(3, 'App\\Models\\User', 104),
(3, 'App\\Models\\User', 105),
(3, 'App\\Models\\User', 106),
(3, 'App\\Models\\User', 110),
(3, 'App\\Models\\User', 111),
(4, 'App\\Models\\User', 27),
(4, 'App\\Models\\User', 28),
(4, 'App\\Models\\User', 29),
(4, 'App\\Models\\User', 30),
(4, 'App\\Models\\User', 64),
(4, 'App\\Models\\User', 86),
(4, 'App\\Models\\User', 87),
(4, 'App\\Models\\User', 88),
(4, 'App\\Models\\User', 89),
(4, 'App\\Models\\User', 90),
(4, 'App\\Models\\User', 91),
(4, 'App\\Models\\User', 92),
(4, 'App\\Models\\User', 93),
(4, 'App\\Models\\User', 94),
(4, 'App\\Models\\User', 96),
(4, 'App\\Models\\User', 103),
(4, 'App\\Models\\User', 104),
(4, 'App\\Models\\User', 105),
(4, 'App\\Models\\User', 106),
(4, 'App\\Models\\User', 110),
(4, 'App\\Models\\User', 111),
(5, 'App\\Models\\User', 2),
(5, 'App\\Models\\User', 27),
(5, 'App\\Models\\User', 28),
(5, 'App\\Models\\User', 29),
(5, 'App\\Models\\User', 30),
(5, 'App\\Models\\User', 64),
(5, 'App\\Models\\User', 86),
(5, 'App\\Models\\User', 87),
(5, 'App\\Models\\User', 88),
(5, 'App\\Models\\User', 89),
(5, 'App\\Models\\User', 90),
(5, 'App\\Models\\User', 91),
(5, 'App\\Models\\User', 92),
(5, 'App\\Models\\User', 93),
(5, 'App\\Models\\User', 94),
(5, 'App\\Models\\User', 96),
(5, 'App\\Models\\User', 103),
(5, 'App\\Models\\User', 104),
(5, 'App\\Models\\User', 105),
(5, 'App\\Models\\User', 106),
(5, 'App\\Models\\User', 110),
(5, 'App\\Models\\User', 111),
(6, 'App\\Models\\User', 2),
(6, 'App\\Models\\User', 27),
(6, 'App\\Models\\User', 28),
(6, 'App\\Models\\User', 29),
(6, 'App\\Models\\User', 30),
(6, 'App\\Models\\User', 64),
(6, 'App\\Models\\User', 86),
(6, 'App\\Models\\User', 87),
(6, 'App\\Models\\User', 88),
(6, 'App\\Models\\User', 89),
(6, 'App\\Models\\User', 90),
(6, 'App\\Models\\User', 91),
(6, 'App\\Models\\User', 92),
(6, 'App\\Models\\User', 93),
(6, 'App\\Models\\User', 94),
(6, 'App\\Models\\User', 96),
(6, 'App\\Models\\User', 103),
(6, 'App\\Models\\User', 104),
(6, 'App\\Models\\User', 105),
(6, 'App\\Models\\User', 106),
(6, 'App\\Models\\User', 110),
(6, 'App\\Models\\User', 111),
(7, 'App\\Models\\User', 2),
(7, 'App\\Models\\User', 27),
(7, 'App\\Models\\User', 28),
(7, 'App\\Models\\User', 29),
(7, 'App\\Models\\User', 30),
(7, 'App\\Models\\User', 64),
(7, 'App\\Models\\User', 86),
(7, 'App\\Models\\User', 87),
(7, 'App\\Models\\User', 88),
(7, 'App\\Models\\User', 89),
(7, 'App\\Models\\User', 90),
(7, 'App\\Models\\User', 91),
(7, 'App\\Models\\User', 92),
(7, 'App\\Models\\User', 93),
(7, 'App\\Models\\User', 94),
(7, 'App\\Models\\User', 96),
(7, 'App\\Models\\User', 103),
(7, 'App\\Models\\User', 104),
(7, 'App\\Models\\User', 105),
(7, 'App\\Models\\User', 106),
(7, 'App\\Models\\User', 110),
(7, 'App\\Models\\User', 111),
(8, 'App\\Models\\User', 2),
(8, 'App\\Models\\User', 27),
(8, 'App\\Models\\User', 28),
(8, 'App\\Models\\User', 29),
(8, 'App\\Models\\User', 30),
(8, 'App\\Models\\User', 64),
(8, 'App\\Models\\User', 86),
(8, 'App\\Models\\User', 87),
(8, 'App\\Models\\User', 88),
(8, 'App\\Models\\User', 89),
(8, 'App\\Models\\User', 90),
(8, 'App\\Models\\User', 91),
(8, 'App\\Models\\User', 92),
(8, 'App\\Models\\User', 93),
(8, 'App\\Models\\User', 94),
(8, 'App\\Models\\User', 96),
(8, 'App\\Models\\User', 103),
(8, 'App\\Models\\User', 104),
(8, 'App\\Models\\User', 105),
(8, 'App\\Models\\User', 106),
(8, 'App\\Models\\User', 110),
(8, 'App\\Models\\User', 111),
(9, 'App\\Models\\User', 27),
(9, 'App\\Models\\User', 28),
(9, 'App\\Models\\User', 29),
(9, 'App\\Models\\User', 30),
(9, 'App\\Models\\User', 64),
(9, 'App\\Models\\User', 86),
(9, 'App\\Models\\User', 87),
(9, 'App\\Models\\User', 88),
(9, 'App\\Models\\User', 89),
(9, 'App\\Models\\User', 90),
(9, 'App\\Models\\User', 91),
(9, 'App\\Models\\User', 92),
(9, 'App\\Models\\User', 93),
(9, 'App\\Models\\User', 94),
(9, 'App\\Models\\User', 96),
(9, 'App\\Models\\User', 103),
(9, 'App\\Models\\User', 104),
(9, 'App\\Models\\User', 105),
(9, 'App\\Models\\User', 106),
(9, 'App\\Models\\User', 110),
(9, 'App\\Models\\User', 111),
(10, 'App\\Models\\User', 27),
(10, 'App\\Models\\User', 28),
(10, 'App\\Models\\User', 29),
(10, 'App\\Models\\User', 30),
(10, 'App\\Models\\User', 64),
(10, 'App\\Models\\User', 86),
(10, 'App\\Models\\User', 87),
(10, 'App\\Models\\User', 88),
(10, 'App\\Models\\User', 89),
(10, 'App\\Models\\User', 90),
(10, 'App\\Models\\User', 91),
(10, 'App\\Models\\User', 92),
(10, 'App\\Models\\User', 93),
(10, 'App\\Models\\User', 94),
(10, 'App\\Models\\User', 96),
(10, 'App\\Models\\User', 103),
(10, 'App\\Models\\User', 104),
(10, 'App\\Models\\User', 105),
(10, 'App\\Models\\User', 106),
(10, 'App\\Models\\User', 110),
(10, 'App\\Models\\User', 111),
(11, 'App\\Models\\User', 2),
(11, 'App\\Models\\User', 27),
(11, 'App\\Models\\User', 28),
(11, 'App\\Models\\User', 29),
(11, 'App\\Models\\User', 30),
(11, 'App\\Models\\User', 64),
(11, 'App\\Models\\User', 86),
(11, 'App\\Models\\User', 87),
(11, 'App\\Models\\User', 88),
(11, 'App\\Models\\User', 89),
(11, 'App\\Models\\User', 90),
(11, 'App\\Models\\User', 91),
(11, 'App\\Models\\User', 92),
(11, 'App\\Models\\User', 93),
(11, 'App\\Models\\User', 94),
(11, 'App\\Models\\User', 96),
(11, 'App\\Models\\User', 103),
(11, 'App\\Models\\User', 104),
(11, 'App\\Models\\User', 105),
(11, 'App\\Models\\User', 106),
(11, 'App\\Models\\User', 110),
(11, 'App\\Models\\User', 111),
(12, 'App\\Models\\User', 27),
(12, 'App\\Models\\User', 28),
(12, 'App\\Models\\User', 29),
(12, 'App\\Models\\User', 30),
(12, 'App\\Models\\User', 64),
(12, 'App\\Models\\User', 86),
(12, 'App\\Models\\User', 87),
(12, 'App\\Models\\User', 88),
(12, 'App\\Models\\User', 89),
(12, 'App\\Models\\User', 90),
(12, 'App\\Models\\User', 91),
(12, 'App\\Models\\User', 92),
(12, 'App\\Models\\User', 93),
(12, 'App\\Models\\User', 94),
(12, 'App\\Models\\User', 96),
(12, 'App\\Models\\User', 103),
(12, 'App\\Models\\User', 104),
(12, 'App\\Models\\User', 105),
(12, 'App\\Models\\User', 106),
(12, 'App\\Models\\User', 110),
(12, 'App\\Models\\User', 111),
(13, 'App\\Models\\User', 2),
(13, 'App\\Models\\User', 27),
(13, 'App\\Models\\User', 28),
(13, 'App\\Models\\User', 29),
(13, 'App\\Models\\User', 30),
(13, 'App\\Models\\User', 64),
(13, 'App\\Models\\User', 86),
(13, 'App\\Models\\User', 87),
(13, 'App\\Models\\User', 88),
(13, 'App\\Models\\User', 89),
(13, 'App\\Models\\User', 90),
(13, 'App\\Models\\User', 91),
(13, 'App\\Models\\User', 92),
(13, 'App\\Models\\User', 93),
(13, 'App\\Models\\User', 94),
(13, 'App\\Models\\User', 96),
(13, 'App\\Models\\User', 103),
(13, 'App\\Models\\User', 104),
(13, 'App\\Models\\User', 105),
(13, 'App\\Models\\User', 106),
(13, 'App\\Models\\User', 110),
(13, 'App\\Models\\User', 111),
(14, 'App\\Models\\User', 27),
(14, 'App\\Models\\User', 28),
(14, 'App\\Models\\User', 29),
(14, 'App\\Models\\User', 30),
(14, 'App\\Models\\User', 64),
(14, 'App\\Models\\User', 86),
(14, 'App\\Models\\User', 87),
(14, 'App\\Models\\User', 88),
(14, 'App\\Models\\User', 89),
(14, 'App\\Models\\User', 90),
(14, 'App\\Models\\User', 91),
(14, 'App\\Models\\User', 92),
(14, 'App\\Models\\User', 93),
(14, 'App\\Models\\User', 94),
(14, 'App\\Models\\User', 96),
(14, 'App\\Models\\User', 103),
(14, 'App\\Models\\User', 104),
(14, 'App\\Models\\User', 105),
(14, 'App\\Models\\User', 106),
(14, 'App\\Models\\User', 110),
(14, 'App\\Models\\User', 111),
(15, 'App\\Models\\User', 27),
(15, 'App\\Models\\User', 28),
(15, 'App\\Models\\User', 29),
(15, 'App\\Models\\User', 30),
(15, 'App\\Models\\User', 64),
(15, 'App\\Models\\User', 86),
(15, 'App\\Models\\User', 87),
(15, 'App\\Models\\User', 88),
(15, 'App\\Models\\User', 89),
(15, 'App\\Models\\User', 90),
(15, 'App\\Models\\User', 91),
(15, 'App\\Models\\User', 92),
(15, 'App\\Models\\User', 93),
(15, 'App\\Models\\User', 94),
(15, 'App\\Models\\User', 96),
(15, 'App\\Models\\User', 103),
(15, 'App\\Models\\User', 104),
(15, 'App\\Models\\User', 105),
(15, 'App\\Models\\User', 106),
(15, 'App\\Models\\User', 110),
(15, 'App\\Models\\User', 111),
(16, 'App\\Models\\User', 27),
(16, 'App\\Models\\User', 28),
(16, 'App\\Models\\User', 29),
(16, 'App\\Models\\User', 30),
(16, 'App\\Models\\User', 64),
(16, 'App\\Models\\User', 86),
(16, 'App\\Models\\User', 87),
(16, 'App\\Models\\User', 88),
(16, 'App\\Models\\User', 89),
(16, 'App\\Models\\User', 90),
(16, 'App\\Models\\User', 91),
(16, 'App\\Models\\User', 92),
(16, 'App\\Models\\User', 93),
(16, 'App\\Models\\User', 94),
(16, 'App\\Models\\User', 96),
(16, 'App\\Models\\User', 103),
(16, 'App\\Models\\User', 104),
(16, 'App\\Models\\User', 105),
(16, 'App\\Models\\User', 106),
(16, 'App\\Models\\User', 110),
(16, 'App\\Models\\User', 111),
(17, 'App\\Models\\User', 2),
(17, 'App\\Models\\User', 12),
(17, 'App\\Models\\User', 19),
(17, 'App\\Models\\User', 27),
(17, 'App\\Models\\User', 28),
(17, 'App\\Models\\User', 29),
(17, 'App\\Models\\User', 30),
(17, 'App\\Models\\User', 64),
(17, 'App\\Models\\User', 86),
(17, 'App\\Models\\User', 87),
(17, 'App\\Models\\User', 88),
(17, 'App\\Models\\User', 89),
(17, 'App\\Models\\User', 90),
(17, 'App\\Models\\User', 91),
(17, 'App\\Models\\User', 92),
(17, 'App\\Models\\User', 93),
(17, 'App\\Models\\User', 94),
(17, 'App\\Models\\User', 96),
(17, 'App\\Models\\User', 103),
(17, 'App\\Models\\User', 104),
(17, 'App\\Models\\User', 105),
(17, 'App\\Models\\User', 106),
(17, 'App\\Models\\User', 110),
(17, 'App\\Models\\User', 111),
(18, 'App\\Models\\User', 12),
(18, 'App\\Models\\User', 19),
(18, 'App\\Models\\User', 27),
(18, 'App\\Models\\User', 28),
(18, 'App\\Models\\User', 29),
(18, 'App\\Models\\User', 30),
(18, 'App\\Models\\User', 64),
(18, 'App\\Models\\User', 86),
(18, 'App\\Models\\User', 87),
(18, 'App\\Models\\User', 88),
(18, 'App\\Models\\User', 89),
(18, 'App\\Models\\User', 90),
(18, 'App\\Models\\User', 91),
(18, 'App\\Models\\User', 92),
(18, 'App\\Models\\User', 93),
(18, 'App\\Models\\User', 94),
(18, 'App\\Models\\User', 96),
(18, 'App\\Models\\User', 103),
(18, 'App\\Models\\User', 104),
(18, 'App\\Models\\User', 105),
(18, 'App\\Models\\User', 106),
(18, 'App\\Models\\User', 110),
(18, 'App\\Models\\User', 111),
(19, 'App\\Models\\User', 12),
(19, 'App\\Models\\User', 19),
(19, 'App\\Models\\User', 27),
(19, 'App\\Models\\User', 28),
(19, 'App\\Models\\User', 29),
(19, 'App\\Models\\User', 30),
(19, 'App\\Models\\User', 64),
(19, 'App\\Models\\User', 86),
(19, 'App\\Models\\User', 87),
(19, 'App\\Models\\User', 88),
(19, 'App\\Models\\User', 89),
(19, 'App\\Models\\User', 90),
(19, 'App\\Models\\User', 91),
(19, 'App\\Models\\User', 92),
(19, 'App\\Models\\User', 93),
(19, 'App\\Models\\User', 94),
(19, 'App\\Models\\User', 96),
(19, 'App\\Models\\User', 103),
(19, 'App\\Models\\User', 104),
(19, 'App\\Models\\User', 105),
(19, 'App\\Models\\User', 106),
(19, 'App\\Models\\User', 110),
(19, 'App\\Models\\User', 111),
(20, 'App\\Models\\User', 2),
(20, 'App\\Models\\User', 27),
(20, 'App\\Models\\User', 28),
(20, 'App\\Models\\User', 29),
(20, 'App\\Models\\User', 30),
(20, 'App\\Models\\User', 64),
(20, 'App\\Models\\User', 86),
(20, 'App\\Models\\User', 87),
(20, 'App\\Models\\User', 88),
(20, 'App\\Models\\User', 89),
(20, 'App\\Models\\User', 90),
(20, 'App\\Models\\User', 91),
(20, 'App\\Models\\User', 92),
(20, 'App\\Models\\User', 93),
(20, 'App\\Models\\User', 94),
(20, 'App\\Models\\User', 96),
(20, 'App\\Models\\User', 103),
(20, 'App\\Models\\User', 104),
(20, 'App\\Models\\User', 105),
(20, 'App\\Models\\User', 106),
(20, 'App\\Models\\User', 110),
(20, 'App\\Models\\User', 111),
(21, 'App\\Models\\User', 2),
(21, 'App\\Models\\User', 27),
(21, 'App\\Models\\User', 28),
(21, 'App\\Models\\User', 29),
(21, 'App\\Models\\User', 30),
(21, 'App\\Models\\User', 64),
(21, 'App\\Models\\User', 86),
(21, 'App\\Models\\User', 87),
(21, 'App\\Models\\User', 88),
(21, 'App\\Models\\User', 89),
(21, 'App\\Models\\User', 90),
(21, 'App\\Models\\User', 91),
(21, 'App\\Models\\User', 92),
(21, 'App\\Models\\User', 93),
(21, 'App\\Models\\User', 94),
(21, 'App\\Models\\User', 96),
(21, 'App\\Models\\User', 103),
(21, 'App\\Models\\User', 104),
(21, 'App\\Models\\User', 105),
(21, 'App\\Models\\User', 106),
(21, 'App\\Models\\User', 110),
(21, 'App\\Models\\User', 111),
(22, 'App\\Models\\User', 27),
(22, 'App\\Models\\User', 28),
(22, 'App\\Models\\User', 29),
(22, 'App\\Models\\User', 30),
(22, 'App\\Models\\User', 64),
(22, 'App\\Models\\User', 86),
(22, 'App\\Models\\User', 87),
(22, 'App\\Models\\User', 88),
(22, 'App\\Models\\User', 89),
(22, 'App\\Models\\User', 90),
(22, 'App\\Models\\User', 91),
(22, 'App\\Models\\User', 92),
(22, 'App\\Models\\User', 93),
(22, 'App\\Models\\User', 94),
(22, 'App\\Models\\User', 96),
(22, 'App\\Models\\User', 103),
(22, 'App\\Models\\User', 104),
(22, 'App\\Models\\User', 105),
(22, 'App\\Models\\User', 106),
(22, 'App\\Models\\User', 110),
(22, 'App\\Models\\User', 111),
(23, 'App\\Models\\User', 2),
(23, 'App\\Models\\User', 27),
(23, 'App\\Models\\User', 28),
(23, 'App\\Models\\User', 29),
(23, 'App\\Models\\User', 30),
(23, 'App\\Models\\User', 64),
(23, 'App\\Models\\User', 86),
(23, 'App\\Models\\User', 87),
(23, 'App\\Models\\User', 88),
(23, 'App\\Models\\User', 89),
(23, 'App\\Models\\User', 90),
(23, 'App\\Models\\User', 91),
(23, 'App\\Models\\User', 92),
(23, 'App\\Models\\User', 93),
(23, 'App\\Models\\User', 94),
(23, 'App\\Models\\User', 96),
(23, 'App\\Models\\User', 103),
(23, 'App\\Models\\User', 104),
(23, 'App\\Models\\User', 105),
(23, 'App\\Models\\User', 106),
(23, 'App\\Models\\User', 110),
(23, 'App\\Models\\User', 111),
(24, 'App\\Models\\User', 27),
(24, 'App\\Models\\User', 28),
(24, 'App\\Models\\User', 29),
(24, 'App\\Models\\User', 30),
(24, 'App\\Models\\User', 64),
(24, 'App\\Models\\User', 86),
(24, 'App\\Models\\User', 87),
(24, 'App\\Models\\User', 88),
(24, 'App\\Models\\User', 89),
(24, 'App\\Models\\User', 90),
(24, 'App\\Models\\User', 91),
(24, 'App\\Models\\User', 92),
(24, 'App\\Models\\User', 93),
(24, 'App\\Models\\User', 94),
(24, 'App\\Models\\User', 96),
(24, 'App\\Models\\User', 103),
(24, 'App\\Models\\User', 104),
(24, 'App\\Models\\User', 105),
(24, 'App\\Models\\User', 106),
(24, 'App\\Models\\User', 110),
(24, 'App\\Models\\User', 111),
(25, 'App\\Models\\User', 12),
(25, 'App\\Models\\User', 19),
(25, 'App\\Models\\User', 27),
(25, 'App\\Models\\User', 28),
(25, 'App\\Models\\User', 29),
(25, 'App\\Models\\User', 30),
(25, 'App\\Models\\User', 64),
(25, 'App\\Models\\User', 86),
(25, 'App\\Models\\User', 87),
(25, 'App\\Models\\User', 88),
(25, 'App\\Models\\User', 89),
(25, 'App\\Models\\User', 90),
(25, 'App\\Models\\User', 91),
(25, 'App\\Models\\User', 92),
(25, 'App\\Models\\User', 93),
(25, 'App\\Models\\User', 94),
(25, 'App\\Models\\User', 96),
(25, 'App\\Models\\User', 103),
(25, 'App\\Models\\User', 104),
(25, 'App\\Models\\User', 105),
(25, 'App\\Models\\User', 106),
(25, 'App\\Models\\User', 110),
(25, 'App\\Models\\User', 111),
(26, 'App\\Models\\User', 12),
(26, 'App\\Models\\User', 19),
(26, 'App\\Models\\User', 27),
(26, 'App\\Models\\User', 28),
(26, 'App\\Models\\User', 29),
(26, 'App\\Models\\User', 30),
(26, 'App\\Models\\User', 64),
(26, 'App\\Models\\User', 86),
(26, 'App\\Models\\User', 87),
(26, 'App\\Models\\User', 88),
(26, 'App\\Models\\User', 89),
(26, 'App\\Models\\User', 90),
(26, 'App\\Models\\User', 91),
(26, 'App\\Models\\User', 92),
(26, 'App\\Models\\User', 93),
(26, 'App\\Models\\User', 94),
(26, 'App\\Models\\User', 96),
(26, 'App\\Models\\User', 103),
(26, 'App\\Models\\User', 104),
(26, 'App\\Models\\User', 105),
(26, 'App\\Models\\User', 106),
(26, 'App\\Models\\User', 110),
(26, 'App\\Models\\User', 111),
(27, 'App\\Models\\User', 12),
(27, 'App\\Models\\User', 19),
(27, 'App\\Models\\User', 27),
(27, 'App\\Models\\User', 28),
(27, 'App\\Models\\User', 29),
(27, 'App\\Models\\User', 30),
(27, 'App\\Models\\User', 64),
(27, 'App\\Models\\User', 86),
(27, 'App\\Models\\User', 87),
(27, 'App\\Models\\User', 88),
(27, 'App\\Models\\User', 89),
(27, 'App\\Models\\User', 90),
(27, 'App\\Models\\User', 91),
(27, 'App\\Models\\User', 92),
(27, 'App\\Models\\User', 93),
(27, 'App\\Models\\User', 94),
(27, 'App\\Models\\User', 96),
(27, 'App\\Models\\User', 103),
(27, 'App\\Models\\User', 104),
(27, 'App\\Models\\User', 105),
(27, 'App\\Models\\User', 106),
(27, 'App\\Models\\User', 110),
(27, 'App\\Models\\User', 111),
(28, 'App\\Models\\User', 27),
(28, 'App\\Models\\User', 28),
(28, 'App\\Models\\User', 29),
(28, 'App\\Models\\User', 30),
(28, 'App\\Models\\User', 64),
(28, 'App\\Models\\User', 86),
(28, 'App\\Models\\User', 87),
(28, 'App\\Models\\User', 88),
(28, 'App\\Models\\User', 89),
(28, 'App\\Models\\User', 90),
(28, 'App\\Models\\User', 91),
(28, 'App\\Models\\User', 92),
(28, 'App\\Models\\User', 93),
(28, 'App\\Models\\User', 94),
(28, 'App\\Models\\User', 96),
(28, 'App\\Models\\User', 103),
(28, 'App\\Models\\User', 104),
(28, 'App\\Models\\User', 105),
(28, 'App\\Models\\User', 106),
(28, 'App\\Models\\User', 110),
(28, 'App\\Models\\User', 111),
(29, 'App\\Models\\User', 12),
(29, 'App\\Models\\User', 19),
(29, 'App\\Models\\User', 27),
(29, 'App\\Models\\User', 28),
(29, 'App\\Models\\User', 29),
(29, 'App\\Models\\User', 30),
(29, 'App\\Models\\User', 64),
(29, 'App\\Models\\User', 86),
(29, 'App\\Models\\User', 87),
(29, 'App\\Models\\User', 88),
(29, 'App\\Models\\User', 89),
(29, 'App\\Models\\User', 90),
(29, 'App\\Models\\User', 91),
(29, 'App\\Models\\User', 92),
(29, 'App\\Models\\User', 93),
(29, 'App\\Models\\User', 94),
(29, 'App\\Models\\User', 96),
(29, 'App\\Models\\User', 103),
(29, 'App\\Models\\User', 104),
(29, 'App\\Models\\User', 105),
(29, 'App\\Models\\User', 106),
(29, 'App\\Models\\User', 110),
(29, 'App\\Models\\User', 111),
(30, 'App\\Models\\User', 12),
(30, 'App\\Models\\User', 19),
(30, 'App\\Models\\User', 27),
(30, 'App\\Models\\User', 28),
(30, 'App\\Models\\User', 29),
(30, 'App\\Models\\User', 30),
(30, 'App\\Models\\User', 64),
(30, 'App\\Models\\User', 86),
(30, 'App\\Models\\User', 87),
(30, 'App\\Models\\User', 88),
(30, 'App\\Models\\User', 89),
(30, 'App\\Models\\User', 90),
(30, 'App\\Models\\User', 91),
(30, 'App\\Models\\User', 92),
(30, 'App\\Models\\User', 93),
(30, 'App\\Models\\User', 94),
(30, 'App\\Models\\User', 96),
(30, 'App\\Models\\User', 103),
(30, 'App\\Models\\User', 104),
(30, 'App\\Models\\User', 105),
(30, 'App\\Models\\User', 106),
(30, 'App\\Models\\User', 110),
(30, 'App\\Models\\User', 111),
(31, 'App\\Models\\User', 27),
(31, 'App\\Models\\User', 28),
(31, 'App\\Models\\User', 29),
(31, 'App\\Models\\User', 30),
(31, 'App\\Models\\User', 64),
(31, 'App\\Models\\User', 86),
(31, 'App\\Models\\User', 87),
(31, 'App\\Models\\User', 88),
(31, 'App\\Models\\User', 89),
(31, 'App\\Models\\User', 90),
(31, 'App\\Models\\User', 91),
(31, 'App\\Models\\User', 92),
(31, 'App\\Models\\User', 93),
(31, 'App\\Models\\User', 94),
(31, 'App\\Models\\User', 96),
(31, 'App\\Models\\User', 103),
(31, 'App\\Models\\User', 104),
(31, 'App\\Models\\User', 105),
(31, 'App\\Models\\User', 106),
(31, 'App\\Models\\User', 110),
(31, 'App\\Models\\User', 111),
(32, 'App\\Models\\User', 27),
(32, 'App\\Models\\User', 28),
(32, 'App\\Models\\User', 29),
(32, 'App\\Models\\User', 30),
(32, 'App\\Models\\User', 64),
(32, 'App\\Models\\User', 86),
(32, 'App\\Models\\User', 87),
(32, 'App\\Models\\User', 88),
(32, 'App\\Models\\User', 89),
(32, 'App\\Models\\User', 90),
(32, 'App\\Models\\User', 91),
(32, 'App\\Models\\User', 92),
(32, 'App\\Models\\User', 93),
(32, 'App\\Models\\User', 94),
(32, 'App\\Models\\User', 96),
(32, 'App\\Models\\User', 103),
(32, 'App\\Models\\User', 104),
(32, 'App\\Models\\User', 105),
(32, 'App\\Models\\User', 106),
(32, 'App\\Models\\User', 110),
(32, 'App\\Models\\User', 111),
(33, 'App\\Models\\User', 27),
(33, 'App\\Models\\User', 28),
(33, 'App\\Models\\User', 29),
(33, 'App\\Models\\User', 30),
(33, 'App\\Models\\User', 64),
(33, 'App\\Models\\User', 86),
(33, 'App\\Models\\User', 87),
(33, 'App\\Models\\User', 88),
(33, 'App\\Models\\User', 89),
(33, 'App\\Models\\User', 90),
(33, 'App\\Models\\User', 91),
(33, 'App\\Models\\User', 92),
(33, 'App\\Models\\User', 93),
(33, 'App\\Models\\User', 94),
(33, 'App\\Models\\User', 96),
(33, 'App\\Models\\User', 103),
(33, 'App\\Models\\User', 104),
(33, 'App\\Models\\User', 105),
(33, 'App\\Models\\User', 106),
(33, 'App\\Models\\User', 110),
(33, 'App\\Models\\User', 111),
(34, 'App\\Models\\User', 12),
(34, 'App\\Models\\User', 19),
(34, 'App\\Models\\User', 27),
(34, 'App\\Models\\User', 28),
(34, 'App\\Models\\User', 29),
(34, 'App\\Models\\User', 30),
(34, 'App\\Models\\User', 64),
(34, 'App\\Models\\User', 86),
(34, 'App\\Models\\User', 87),
(34, 'App\\Models\\User', 88),
(34, 'App\\Models\\User', 89),
(34, 'App\\Models\\User', 90),
(34, 'App\\Models\\User', 91),
(34, 'App\\Models\\User', 92),
(34, 'App\\Models\\User', 93),
(34, 'App\\Models\\User', 94),
(34, 'App\\Models\\User', 96),
(34, 'App\\Models\\User', 103),
(34, 'App\\Models\\User', 104),
(34, 'App\\Models\\User', 105),
(34, 'App\\Models\\User', 106),
(34, 'App\\Models\\User', 110),
(34, 'App\\Models\\User', 111),
(35, 'App\\Models\\User', 27),
(35, 'App\\Models\\User', 28),
(35, 'App\\Models\\User', 29),
(35, 'App\\Models\\User', 30),
(35, 'App\\Models\\User', 64),
(35, 'App\\Models\\User', 86),
(35, 'App\\Models\\User', 87),
(35, 'App\\Models\\User', 88),
(35, 'App\\Models\\User', 89),
(35, 'App\\Models\\User', 90),
(35, 'App\\Models\\User', 91),
(35, 'App\\Models\\User', 92),
(35, 'App\\Models\\User', 93),
(35, 'App\\Models\\User', 94),
(35, 'App\\Models\\User', 96),
(35, 'App\\Models\\User', 103),
(35, 'App\\Models\\User', 104),
(35, 'App\\Models\\User', 105),
(35, 'App\\Models\\User', 106),
(35, 'App\\Models\\User', 110),
(35, 'App\\Models\\User', 111),
(36, 'App\\Models\\User', 27),
(36, 'App\\Models\\User', 28),
(36, 'App\\Models\\User', 29),
(36, 'App\\Models\\User', 30),
(36, 'App\\Models\\User', 64),
(36, 'App\\Models\\User', 86),
(36, 'App\\Models\\User', 87),
(36, 'App\\Models\\User', 88),
(36, 'App\\Models\\User', 89),
(36, 'App\\Models\\User', 90),
(36, 'App\\Models\\User', 91),
(36, 'App\\Models\\User', 92),
(36, 'App\\Models\\User', 93),
(36, 'App\\Models\\User', 94),
(36, 'App\\Models\\User', 96),
(36, 'App\\Models\\User', 103),
(36, 'App\\Models\\User', 104),
(36, 'App\\Models\\User', 105),
(36, 'App\\Models\\User', 106),
(36, 'App\\Models\\User', 110),
(36, 'App\\Models\\User', 111),
(37, 'App\\Models\\User', 12),
(37, 'App\\Models\\User', 19),
(37, 'App\\Models\\User', 27),
(37, 'App\\Models\\User', 28),
(37, 'App\\Models\\User', 29),
(37, 'App\\Models\\User', 30),
(37, 'App\\Models\\User', 64),
(37, 'App\\Models\\User', 86),
(37, 'App\\Models\\User', 87),
(37, 'App\\Models\\User', 88),
(37, 'App\\Models\\User', 89),
(37, 'App\\Models\\User', 90),
(37, 'App\\Models\\User', 91),
(37, 'App\\Models\\User', 92),
(37, 'App\\Models\\User', 93),
(37, 'App\\Models\\User', 94),
(37, 'App\\Models\\User', 96),
(37, 'App\\Models\\User', 103),
(37, 'App\\Models\\User', 104),
(37, 'App\\Models\\User', 105),
(37, 'App\\Models\\User', 106),
(37, 'App\\Models\\User', 110),
(37, 'App\\Models\\User', 111),
(38, 'App\\Models\\User', 12),
(38, 'App\\Models\\User', 19),
(38, 'App\\Models\\User', 27),
(38, 'App\\Models\\User', 28),
(38, 'App\\Models\\User', 29),
(38, 'App\\Models\\User', 30),
(38, 'App\\Models\\User', 64),
(38, 'App\\Models\\User', 86),
(38, 'App\\Models\\User', 87),
(38, 'App\\Models\\User', 88),
(38, 'App\\Models\\User', 89),
(38, 'App\\Models\\User', 90),
(38, 'App\\Models\\User', 91),
(38, 'App\\Models\\User', 92),
(38, 'App\\Models\\User', 93),
(38, 'App\\Models\\User', 94),
(38, 'App\\Models\\User', 96),
(38, 'App\\Models\\User', 103),
(38, 'App\\Models\\User', 104),
(38, 'App\\Models\\User', 105),
(38, 'App\\Models\\User', 106),
(38, 'App\\Models\\User', 110),
(38, 'App\\Models\\User', 111),
(39, 'App\\Models\\User', 12),
(39, 'App\\Models\\User', 19),
(39, 'App\\Models\\User', 27),
(39, 'App\\Models\\User', 28),
(39, 'App\\Models\\User', 29),
(39, 'App\\Models\\User', 30),
(39, 'App\\Models\\User', 64),
(39, 'App\\Models\\User', 86),
(39, 'App\\Models\\User', 87),
(39, 'App\\Models\\User', 88),
(39, 'App\\Models\\User', 89),
(39, 'App\\Models\\User', 90),
(39, 'App\\Models\\User', 91),
(39, 'App\\Models\\User', 92),
(39, 'App\\Models\\User', 93),
(39, 'App\\Models\\User', 94),
(39, 'App\\Models\\User', 96),
(39, 'App\\Models\\User', 103),
(39, 'App\\Models\\User', 104),
(39, 'App\\Models\\User', 105),
(39, 'App\\Models\\User', 106),
(39, 'App\\Models\\User', 110),
(39, 'App\\Models\\User', 111),
(40, 'App\\Models\\User', 12),
(40, 'App\\Models\\User', 19),
(40, 'App\\Models\\User', 27),
(40, 'App\\Models\\User', 28),
(40, 'App\\Models\\User', 29),
(40, 'App\\Models\\User', 30),
(40, 'App\\Models\\User', 64),
(40, 'App\\Models\\User', 86),
(40, 'App\\Models\\User', 87),
(40, 'App\\Models\\User', 88),
(40, 'App\\Models\\User', 89),
(40, 'App\\Models\\User', 90),
(40, 'App\\Models\\User', 91),
(40, 'App\\Models\\User', 92),
(40, 'App\\Models\\User', 93),
(40, 'App\\Models\\User', 94),
(40, 'App\\Models\\User', 96),
(40, 'App\\Models\\User', 103),
(40, 'App\\Models\\User', 104),
(40, 'App\\Models\\User', 105),
(40, 'App\\Models\\User', 106),
(40, 'App\\Models\\User', 110),
(40, 'App\\Models\\User', 111),
(41, 'App\\Models\\User', 12),
(41, 'App\\Models\\User', 19),
(41, 'App\\Models\\User', 27),
(41, 'App\\Models\\User', 28),
(41, 'App\\Models\\User', 29),
(41, 'App\\Models\\User', 30),
(41, 'App\\Models\\User', 64),
(41, 'App\\Models\\User', 86),
(41, 'App\\Models\\User', 87),
(41, 'App\\Models\\User', 88),
(41, 'App\\Models\\User', 89),
(41, 'App\\Models\\User', 90),
(41, 'App\\Models\\User', 91),
(41, 'App\\Models\\User', 92),
(41, 'App\\Models\\User', 93),
(41, 'App\\Models\\User', 94),
(41, 'App\\Models\\User', 96),
(41, 'App\\Models\\User', 103),
(41, 'App\\Models\\User', 104),
(41, 'App\\Models\\User', 105),
(41, 'App\\Models\\User', 106),
(41, 'App\\Models\\User', 110),
(41, 'App\\Models\\User', 111),
(42, 'App\\Models\\User', 12),
(42, 'App\\Models\\User', 19),
(42, 'App\\Models\\User', 27),
(42, 'App\\Models\\User', 28),
(42, 'App\\Models\\User', 29),
(42, 'App\\Models\\User', 30),
(42, 'App\\Models\\User', 64),
(42, 'App\\Models\\User', 86),
(42, 'App\\Models\\User', 87),
(42, 'App\\Models\\User', 88),
(42, 'App\\Models\\User', 89),
(42, 'App\\Models\\User', 90),
(42, 'App\\Models\\User', 91),
(42, 'App\\Models\\User', 92),
(42, 'App\\Models\\User', 93),
(42, 'App\\Models\\User', 94),
(42, 'App\\Models\\User', 96),
(42, 'App\\Models\\User', 103),
(42, 'App\\Models\\User', 104),
(42, 'App\\Models\\User', 105),
(42, 'App\\Models\\User', 106),
(42, 'App\\Models\\User', 110),
(42, 'App\\Models\\User', 111),
(43, 'App\\Models\\User', 12),
(43, 'App\\Models\\User', 19),
(43, 'App\\Models\\User', 27),
(43, 'App\\Models\\User', 28),
(43, 'App\\Models\\User', 29),
(43, 'App\\Models\\User', 30),
(43, 'App\\Models\\User', 64),
(43, 'App\\Models\\User', 86),
(43, 'App\\Models\\User', 87),
(43, 'App\\Models\\User', 88),
(43, 'App\\Models\\User', 89),
(43, 'App\\Models\\User', 90),
(43, 'App\\Models\\User', 91),
(43, 'App\\Models\\User', 92),
(43, 'App\\Models\\User', 93),
(43, 'App\\Models\\User', 94),
(43, 'App\\Models\\User', 96),
(43, 'App\\Models\\User', 103),
(43, 'App\\Models\\User', 104),
(43, 'App\\Models\\User', 105),
(43, 'App\\Models\\User', 106),
(43, 'App\\Models\\User', 110),
(43, 'App\\Models\\User', 111),
(44, 'App\\Models\\User', 12),
(44, 'App\\Models\\User', 19),
(44, 'App\\Models\\User', 27),
(44, 'App\\Models\\User', 28),
(44, 'App\\Models\\User', 29),
(44, 'App\\Models\\User', 30),
(44, 'App\\Models\\User', 64),
(44, 'App\\Models\\User', 86),
(44, 'App\\Models\\User', 87),
(44, 'App\\Models\\User', 88),
(44, 'App\\Models\\User', 89),
(44, 'App\\Models\\User', 90),
(44, 'App\\Models\\User', 91),
(44, 'App\\Models\\User', 92),
(44, 'App\\Models\\User', 93),
(44, 'App\\Models\\User', 94),
(44, 'App\\Models\\User', 96),
(44, 'App\\Models\\User', 103),
(44, 'App\\Models\\User', 104),
(44, 'App\\Models\\User', 105),
(44, 'App\\Models\\User', 106),
(44, 'App\\Models\\User', 110),
(44, 'App\\Models\\User', 111),
(45, 'App\\Models\\User', 12),
(45, 'App\\Models\\User', 19),
(45, 'App\\Models\\User', 27),
(45, 'App\\Models\\User', 28),
(45, 'App\\Models\\User', 29),
(45, 'App\\Models\\User', 30),
(45, 'App\\Models\\User', 64),
(45, 'App\\Models\\User', 86),
(45, 'App\\Models\\User', 87),
(45, 'App\\Models\\User', 88),
(45, 'App\\Models\\User', 89),
(45, 'App\\Models\\User', 90),
(45, 'App\\Models\\User', 91),
(45, 'App\\Models\\User', 92),
(45, 'App\\Models\\User', 93),
(45, 'App\\Models\\User', 94),
(45, 'App\\Models\\User', 96),
(45, 'App\\Models\\User', 103),
(45, 'App\\Models\\User', 104),
(45, 'App\\Models\\User', 105),
(45, 'App\\Models\\User', 106),
(45, 'App\\Models\\User', 110),
(45, 'App\\Models\\User', 111),
(46, 'App\\Models\\User', 12),
(46, 'App\\Models\\User', 19),
(46, 'App\\Models\\User', 27),
(46, 'App\\Models\\User', 28),
(46, 'App\\Models\\User', 29),
(46, 'App\\Models\\User', 30),
(46, 'App\\Models\\User', 64),
(46, 'App\\Models\\User', 86),
(46, 'App\\Models\\User', 87),
(46, 'App\\Models\\User', 88),
(46, 'App\\Models\\User', 89),
(46, 'App\\Models\\User', 90),
(46, 'App\\Models\\User', 91),
(46, 'App\\Models\\User', 92),
(46, 'App\\Models\\User', 93),
(46, 'App\\Models\\User', 94),
(46, 'App\\Models\\User', 96),
(46, 'App\\Models\\User', 103),
(46, 'App\\Models\\User', 104),
(46, 'App\\Models\\User', 105),
(46, 'App\\Models\\User', 106),
(46, 'App\\Models\\User', 110),
(46, 'App\\Models\\User', 111);

-- --------------------------------------------------------

--
-- Table structure for table `model_has_roles`
--

CREATE TABLE `model_has_roles` (
  `role_id` bigint(20) UNSIGNED NOT NULL,
  `model_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `model_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `model_has_roles`
--

INSERT INTO `model_has_roles` (`role_id`, `model_type`, `model_id`) VALUES
(1, 'App\\Models\\User', 2),
(1, 'App\\Models\\User', 69),
(1, 'App\\Models\\User', 70),
(1, 'App\\Models\\User', 71),
(1, 'App\\Models\\User', 81),
(1, 'App\\Models\\User', 82),
(2, 'App\\Models\\User', 1),
(2, 'App\\Models\\User', 6),
(2, 'App\\Models\\User', 9),
(2, 'App\\Models\\User', 64),
(2, 'App\\Models\\User', 86),
(2, 'App\\Models\\User', 87),
(2, 'App\\Models\\User', 88),
(2, 'App\\Models\\User', 89),
(2, 'App\\Models\\User', 90),
(2, 'App\\Models\\User', 91),
(2, 'App\\Models\\User', 92),
(2, 'App\\Models\\User', 93),
(2, 'App\\Models\\User', 94),
(2, 'App\\Models\\User', 96),
(2, 'App\\Models\\User', 103),
(2, 'App\\Models\\User', 104),
(2, 'App\\Models\\User', 105),
(2, 'App\\Models\\User', 106),
(2, 'App\\Models\\User', 110),
(2, 'App\\Models\\User', 111),
(3, 'App\\Models\\User', 10),
(3, 'App\\Models\\User', 12),
(3, 'App\\Models\\User', 24),
(3, 'App\\Models\\User', 25),
(3, 'App\\Models\\User', 72),
(3, 'App\\Models\\User', 73),
(3, 'App\\Models\\User', 75),
(3, 'App\\Models\\User', 76),
(3, 'App\\Models\\User', 77),
(4, 'App\\Models\\User', 74),
(6, 'App\\Models\\User', 19),
(6, 'App\\Models\\User', 114),
(7, 'App\\Models\\User', 107),
(9, 'App\\Models\\User', 113),
(10, 'App\\Models\\User', 112);

-- --------------------------------------------------------

--
-- Table structure for table `notifications`
--

CREATE TABLE `notifications` (
  `id` char(36) COLLATE utf8mb4_unicode_ci NOT NULL,
  `type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `notifiable_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `notifiable_id` bigint(20) UNSIGNED NOT NULL,
  `data` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `read_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `notifications`
--

INSERT INTO `notifications` (`id`, `type`, `notifiable_type`, `notifiable_id`, `data`, `read_at`, `created_at`, `updated_at`) VALUES
('1882d29b-1fec-48f6-9ec5-309caa6ba524', 'App\\Notifications\\NewUserNotification', 'App\\Models\\User', 94, '{\"type\":\"toolbox\"}', NULL, '2021-08-18 20:36:24', '2021-08-18 20:36:24'),
('2b4edded-7342-4187-b0ef-8f245f2abfa6', 'App\\Notifications\\NewUserNotification', 'App\\Models\\User', 8, '{\"type\":\"toolbox\"}', NULL, '2021-07-28 13:13:45', '2021-07-28 13:13:45'),
('384cc8eb-79c8-42ef-a5f6-7251e086a391', 'App\\Notifications\\NewUserNotification', 'App\\Models\\User', 8, '{\"type\":\"toolbox\",\"course_id\":null}', NULL, '2021-07-28 12:47:15', '2021-07-28 12:47:15'),
('610b1e50-f2fc-491d-9e6b-bd2d78318b3d', 'App\\Notifications\\NewUserNotification', 'App\\Models\\User', 87, '{\"type\":\"toolbox\"}', NULL, '2021-08-19 21:53:06', '2021-08-19 21:53:06'),
('7867ed17-7165-4e44-ae5c-b60ad35b6747', 'App\\Notifications\\NewUserNotification', 'App\\Models\\User', 87, '{\"type\":\"toolbox\"}', NULL, '2021-08-23 01:42:43', '2021-08-23 01:42:43'),
('8faff194-51f9-40a4-975b-55c5254870ef', 'App\\Notifications\\NewUserNotification', 'App\\Models\\User', 86, '{\"type\":\"toolbox\"}', NULL, '2021-08-10 21:39:04', '2021-08-10 21:39:04'),
('b65ce17f-08b1-46b5-8a26-267d83e63287', 'App\\Notifications\\NewUserNotification', 'App\\Models\\User', 8, '{\"type\":\"toolbox\"}', NULL, '2021-07-28 13:15:32', '2021-07-28 13:15:32');

-- --------------------------------------------------------

--
-- Table structure for table `partner_libraries`
--

CREATE TABLE `partner_libraries` (
  `id` int(250) NOT NULL,
  `title` varchar(250) NOT NULL,
  `descr` varchar(250) NOT NULL,
  `cat_id` int(100) DEFAULT NULL,
  `thumbnail` varchar(250) NOT NULL,
  `video` varchar(250) NOT NULL,
  `video_type` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `company_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `partner_libraries`
--

INSERT INTO `partner_libraries` (`id`, `title`, `descr`, `cat_id`, `thumbnail`, `video`, `video_type`, `created_at`, `updated_at`, `company_id`) VALUES
(5, 'very bad', 'gsfgfygdfygqegyuw', 5, '1626432481.jpg', '1626432481.mp4', 1, '2021-07-16 10:48:01', '2021-07-16 10:48:01', 2);

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `password_resets`
--

INSERT INTO `password_resets` (`email`, `token`, `created_at`) VALUES
('x@gmail.com', '$2y$10$2wM/gtb8KzhwAN9ERAo9/.DVyItmMQhDNcaf0jMJhszYYrF7Le4Ni', '2021-05-02 02:56:01'),
('farhanbashir06@gmail.com', '$2y$10$Ck6Qii0Aiv2j/BGDWB57u.haadfS8/YiX8gM2q55nqzVpNTFcINgW', '2021-05-17 06:33:51'),
('amzonon@gmail.com', '$2y$10$cBmGB8dNchaM2K1OIG58gOaXTqJ1NaOgG9F0rNIdN.35GuVtlurHS', '2021-08-10 12:12:55');

-- --------------------------------------------------------

--
-- Table structure for table `permissions`
--

CREATE TABLE `permissions` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `guard_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `permissions`
--

INSERT INTO `permissions` (`id`, `name`, `guard_name`, `created_at`, `updated_at`) VALUES
(1, 'add manager', 'web', '2021-04-19 07:01:50', '2021-04-19 07:01:50'),
(2, 'view manager', 'web', '2021-04-19 07:01:50', '2021-04-19 07:01:50'),
(3, 'edit manager', 'web', '2021-04-19 07:01:50', '2021-04-19 07:01:50'),
(4, 'delete manager', 'web', '2021-04-19 07:01:50', '2021-04-19 07:01:50'),
(5, 'add course', 'web', '2021-04-19 07:01:50', '2021-04-19 07:01:50'),
(6, 'view course', 'web', '2021-04-19 07:01:50', '2021-04-19 07:01:50'),
(7, 'edit course', 'web', '2021-04-19 07:01:50', '2021-04-19 07:01:50'),
(8, 'delete course', 'web', '2021-04-19 07:01:50', '2021-04-19 07:01:50'),
(9, 'add course_cat', 'web', '2021-04-19 07:01:50', '2021-04-19 07:01:50'),
(10, 'view course_cat', 'web', '2021-04-19 07:01:51', '2021-04-19 07:01:51'),
(11, 'edit course_cat', 'web', '2021-04-19 07:01:51', '2021-04-19 07:01:51'),
(12, 'delete course_cat', 'web', '2021-04-19 07:01:51', '2021-04-19 07:01:51'),
(13, 'add department', 'web', '2021-04-19 07:01:51', '2021-04-19 07:01:51'),
(14, 'view department', 'web', '2021-04-19 07:01:51', '2021-04-19 07:01:51'),
(15, 'edit department', 'web', '2021-04-19 07:01:51', '2021-04-19 07:01:51'),
(16, 'delete department', 'web', '2021-04-19 07:01:51', '2021-04-19 07:01:51'),
(17, 'add resources', 'web', '2021-05-02 23:59:21', '2021-05-02 23:59:21'),
(18, 'view resources', 'web', '2021-05-02 23:59:21', '2021-05-02 23:59:21'),
(19, 'edit resources', 'web', '2021-05-02 23:59:21', '2021-05-02 23:59:21'),
(20, 'delete resources', 'web', '2021-05-02 23:59:21', '2021-05-02 23:59:21'),
(21, 'add certificate', 'web', '2021-05-03 01:27:14', '2021-05-03 01:27:14'),
(22, 'view certificate', 'web', '2021-05-03 01:27:14', '2021-05-03 01:27:14'),
(23, 'edit certificate', 'web', '2021-05-03 01:27:14', '2021-05-03 01:27:14'),
(24, 'delete certificate', 'web', '2021-05-03 01:27:14', '2021-05-03 01:27:14'),
(25, 'add personel', 'web', '2021-05-04 05:26:07', '2021-05-04 05:26:07'),
(26, 'view personel', 'web', '2021-05-04 05:26:07', '2021-05-04 05:26:07'),
(27, 'edit personel', 'web', '2021-05-04 05:26:07', '2021-05-04 05:26:07'),
(28, 'delete personel', 'web', '2021-05-04 05:26:07', '2021-05-04 05:26:07'),
(29, 'add course-stats', 'web', '2021-05-04 05:26:08', '2021-05-04 05:26:08'),
(30, 'view course-stats', 'web', '2021-05-04 05:26:08', '2021-05-04 05:26:08'),
(31, 'edit course-stats', 'web', '2021-05-04 05:26:08', '2021-05-04 05:26:08'),
(32, 'delete course-stats', 'web', '2021-05-04 05:26:08', '2021-05-04 05:26:08'),
(33, 'add assignment', 'web', '2021-05-18 06:13:16', '2021-05-18 06:13:16'),
(34, 'view assignment', 'web', '2021-05-18 06:13:16', '2021-05-18 06:13:16'),
(35, 'edit assignment', 'web', '2021-05-18 06:13:16', '2021-05-18 06:13:16'),
(36, 'delete assignment', 'web', '2021-05-18 06:13:16', '2021-05-18 06:13:16'),
(37, 'add groups', 'web', '2021-05-18 06:13:16', '2021-05-18 06:13:16'),
(38, 'view groups', 'web', '2021-05-18 06:13:16', '2021-05-18 06:13:16'),
(39, 'edit groups', 'web', '2021-05-18 06:13:16', '2021-05-18 06:13:16'),
(40, 'delete groups', 'web', '2021-05-18 06:13:16', '2021-05-18 06:13:16'),
(41, 'add equipment', 'web', '2021-05-18 06:13:16', '2021-05-18 06:13:16'),
(42, 'view equipment', 'web', '2021-05-18 06:13:16', '2021-05-18 06:13:16'),
(43, 'edit equipment', 'web', '2021-05-18 06:13:16', '2021-05-18 06:13:16'),
(44, 'delete equipment', 'web', '2021-05-18 06:13:16', '2021-05-18 06:13:16'),
(45, 'assign group', 'web', '2021-05-18 06:28:07', '2021-05-18 06:28:07'),
(46, 'assign equipment', 'web', '2021-05-18 06:28:07', '2021-05-18 06:28:07');

-- --------------------------------------------------------

--
-- Table structure for table `projects`
--

CREATE TABLE `projects` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `location` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `client` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` tinyint(4) NOT NULL,
  `start_date` date DEFAULT NULL,
  `finish_date` date DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `company_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `projects`
--

INSERT INTO `projects` (`id`, `name`, `location`, `client`, `status`, `start_date`, `finish_date`, `created_at`, `updated_at`, `company_id`) VALUES
(5, 'HARWOOD', NULL, NULL, 1, NULL, NULL, '2021-08-09 19:14:56', '2021-08-09 19:14:56', 1),
(6, '12TH STREET / ANDRES / AUSTIN', NULL, NULL, 1, NULL, NULL, '2021-08-09 19:17:59', '2021-08-09 19:17:59', 1),
(7, 'SHOP', NULL, NULL, 1, NULL, NULL, '2021-08-09 23:49:17', '2021-08-09 23:49:17', 1),
(8, 'SHEET METAL SHOP', NULL, NULL, 1, NULL, NULL, '2021-08-09 23:49:32', '2021-08-09 23:49:32', 1),
(11, 'my project', NULL, NULL, 1, NULL, NULL, '2021-08-21 11:08:10', '2021-08-21 11:08:10', 1),
(12, 'testing', 'gujranwala', 'tst', 1, '2021-08-27', '2021-09-11', '2021-08-27 21:35:37', '2021-08-27 21:35:37', 1);

-- --------------------------------------------------------

--
-- Table structure for table `questions`
--

CREATE TABLE `questions` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `course_id` int(11) NOT NULL,
  `question` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `type` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'question',
  `answer` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `option1` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `option2` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `option3` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `option4` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `true_false` tinyint(4) DEFAULT NULL,
  `status` tinyint(4) NOT NULL,
  `lng` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'eng',
  `photo` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `questions`
--

INSERT INTO `questions` (`id`, `course_id`, `question`, `type`, `answer`, `option1`, `option2`, `option3`, `option4`, `true_false`, `status`, `lng`, `photo`, `created_at`, `updated_at`) VALUES
(1, 4, 'What is your Name ???', 'question', 'Aslam', 'Aslam', 'Fawad', 'Khubaib', 'Hamzaaa', NULL, 1, 'eng', NULL, '2021-04-20 01:24:45', '2021-06-21 13:05:01'),
(7, 4, 'he has been playing cricket___2005.', 'question', 'since', 'for', 'since', 'from', 'None of these', NULL, 1, 'eng', NULL, '2021-04-23 06:29:12', '2021-04-23 06:29:12'),
(6, 4, 'Orange is a__.', 'question', 'fruit', 'vegitable', 'Apple', 'dry fruit', 'fruit', NULL, 1, 'eng', NULL, '2021-04-23 04:21:21', '2021-04-23 04:21:21'),
(8, 4, 'What does PHP stand for?', 'question', 'Pretext Hypertext Processor', 'Preprocessor Home Page', 'Pretext Hypertext Processor', 'Hypertext Preprocessor', 'Personal Home Page', NULL, 1, 'esp', NULL, '2021-04-23 06:33:32', '2021-04-23 06:33:32'),
(9, 4, 'Which of the following must be installed on your computer so as to run PHP script?', 'question', 'Apache and PHP', 'XAMPP', 'Apache and PHP', 'IIS', 'Adobe Dreamweaver', NULL, 1, 'eng', NULL, '2021-04-23 06:35:31', '2021-04-23 06:35:31'),
(11, 4, 'djhk', 'question', 'jfshk', 'kjhkjhgkj', 'jghskj', 'jkghjk', 'jhjk', NULL, 1, 'esp', NULL, '2021-06-21 13:03:35', '2021-06-21 13:03:35'),
(15, 11, 'Potato is a', 'question', 'vegetable', 'fruit', 'vegetable', 'None of these', 'Both A and B', NULL, 1, 'eng', NULL, '2021-06-26 11:12:16', '2021-06-26 11:12:16'),
(13, 4, 'Orange is a fruit ??', 't-f', NULL, NULL, NULL, NULL, NULL, 1, 1, 'esp', NULL, '2021-06-22 12:42:44', '2021-06-22 12:42:44'),
(14, 7, 'Orange is a pink?', 't-f', NULL, NULL, NULL, NULL, NULL, 0, 1, 'eng', NULL, '2021-06-22 13:07:14', '2021-06-22 13:07:14'),
(16, 11, 'fdsfdsf', 't-f', NULL, NULL, NULL, NULL, NULL, 1, 1, 'esp', NULL, '2021-06-28 11:34:10', '2021-06-28 11:34:10'),
(17, 6, 'B for bnana', 't-f', NULL, NULL, NULL, NULL, NULL, 1, 1, 'eng', NULL, '2021-06-28 11:46:36', '2021-06-28 11:46:36'),
(18, 4, 'njhjh', 't-f', NULL, NULL, NULL, NULL, NULL, 0, 1, 'eng', NULL, '2021-07-10 12:50:17', '2021-07-10 12:50:17'),
(19, 5, 'q is', 'question', 'q', 'q', 'w', 'r', 'y', NULL, 1, 'eng', NULL, '2021-07-13 07:29:14', '2021-07-13 07:29:14'),
(20, 5, 'qw', 't-f', NULL, NULL, NULL, NULL, NULL, 1, 1, 'eng', NULL, '2021-07-13 07:29:37', '2021-07-13 07:29:37'),
(21, 6, 'What is your Name ???', 'question', 'Personal Home Page', 'farhanbashir06@gmail.com', 'since', 'Khubaib', 'Personal Home Page', NULL, 1, 'esp', '1627560921-dell-logo.jpg', '2021-07-29 12:15:21', '2021-07-29 12:15:21'),
(22, 6, 'Orange is a__.', 'question', 'ddd', 'ddd', 'asd', 'gg', 'popii', NULL, 1, 'esp', NULL, '2021-07-29 12:31:50', '2021-07-29 12:31:50'),
(23, 5, 'Unit testing?', 'question', 'test each module indvidually', 'test each module indvidually', 'test all module individually', 'both', 'None of these', NULL, 1, 'esp', '1627563917-corola.jpg', '2021-07-29 12:39:25', '2021-07-29 13:05:17'),
(24, 15, 'iIS IT TRUE', 't-f', NULL, NULL, NULL, NULL, NULL, 1, 1, 'eng', NULL, '2021-08-06 21:56:47', '2021-08-06 21:56:47'),
(25, 16, 'I AM ALWAYS RIGHT?', 't-f', NULL, NULL, NULL, NULL, NULL, 1, 1, 'eng', NULL, '2021-08-10 00:26:37', '2021-08-10 00:26:37'),
(26, 16, 'What color is the sky?', 'question', 'Blue', 'Pink', 'Blue', 'Black', NULL, NULL, 1, 'eng', '1628699854-Screen Shot 2021-08-06 at 2.58.16 PM.png', '2021-08-11 21:37:34', '2021-08-11 21:37:34'),
(27, 18, 'Who Dat', 'question', 'Hugo', 'Hugo', 'Frank', NULL, NULL, NULL, 1, 'eng', '1628706264-1.png', '2021-08-11 23:24:24', '2021-08-11 23:25:03'),
(28, 18, 'Are you Right', 't-f', NULL, NULL, NULL, NULL, NULL, 1, 1, 'eng', NULL, '2021-08-11 23:25:22', '2021-08-11 23:25:22'),
(29, 18, 'Is wood wood?', 't-f', NULL, NULL, NULL, NULL, NULL, 1, 1, 'eng', NULL, '2021-08-11 23:38:19', '2021-08-11 23:38:19'),
(30, 18, 'Is wood wood brown?', 'question', 'Yes', 'Hugo', 'Frank', 'Yes', 'No', NULL, 1, 'eng', NULL, '2021-08-11 23:39:11', '2021-08-11 23:39:11'),
(31, 16, 'wertyuio', 't-f', NULL, NULL, NULL, NULL, NULL, 1, 1, 'eng', NULL, '2021-08-17 20:57:15', '2021-08-17 20:57:15');

-- --------------------------------------------------------

--
-- Table structure for table `resources`
--

CREATE TABLE `resources` (
  `id` int(250) NOT NULL,
  `name` varchar(250) NOT NULL,
  `folder_id` int(250) NOT NULL,
  `form_id` int(100) NOT NULL DEFAULT 0,
  `company_id` int(100) NOT NULL,
  `type` tinyint(4) NOT NULL DEFAULT 0 COMMENT '1=for users,2= for manager ,0= no',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `resources`
--

INSERT INTO `resources` (`id`, `name`, `folder_id`, `form_id`, `company_id`, `type`, `created_at`, `updated_at`) VALUES
(68, 'Hourly Employee Handbook City Wide Mechanical - Revised 121611 ORIGINAL.doc', 32, 0, 1, 0, '2021-08-09 19:53:58', '2021-08-09 19:53:58'),
(69, '1-Armaflex.pdf', 33, 0, 1, 0, '2021-08-09 19:56:16', '2021-08-09 19:56:16'),
(70, '2-Acetylene-gas.pdf', 33, 0, 1, 0, '2021-08-09 19:56:27', '2021-08-09 19:56:27'),
(71, '3-Argon.pdf', 33, 0, 1, 0, '2021-08-09 19:56:38', '2021-08-09 19:56:38'),
(72, '4-Cal-Blu.pdf', 33, 0, 1, 0, '2021-08-09 19:56:50', '2021-08-09 19:56:50'),
(73, '5-Diesle.pdf', 33, 0, 1, 0, '2021-08-09 19:57:15', '2021-08-09 19:57:15'),
(74, '6-Duct-seal.pdf', 33, 0, 1, 0, '2021-08-09 19:57:49', '2021-08-09 19:57:49'),
(75, '7-Evap_pow-r.pdf', 33, 0, 1, 0, '2021-08-09 19:58:01', '2021-08-09 19:58:01'),
(76, '8-Fluid Film.pdf', 33, 0, 1, 0, '2021-08-09 19:58:13', '2021-08-09 19:58:13'),
(77, '9-JB Fast Back.pdf', 33, 0, 1, 0, '2021-08-09 20:22:34', '2021-08-09 20:22:34'),
(78, '10-Krylon.pdf', 33, 0, 1, 0, '2021-08-09 20:22:49', '2021-08-09 20:22:49'),
(79, '11-Nitrogen.pdf', 33, 0, 1, 0, '2021-08-09 20:23:20', '2021-08-09 20:23:20'),
(80, '12-Odorized Propane.pdf', 33, 0, 1, 0, '2021-08-09 20:23:30', '2021-08-09 20:23:30'),
(81, '14-Pipe Thread.pdf', 33, 0, 1, 0, '2021-08-09 20:23:41', '2021-08-09 20:23:41'),
(82, '15-R-410-A.pdf', 33, 0, 1, 0, '2021-08-09 20:23:50', '2021-08-09 20:23:50'),
(84, '16-Unleaded Gas.pdf', 33, 0, 1, 0, '2021-08-09 20:24:16', '2021-08-09 20:24:16'),
(85, '18-Zinc Cold Compound.pdf', 33, 0, 1, 0, '2021-08-09 20:24:34', '2021-08-09 20:24:34'),
(86, 'Medical (2).pdf', 58, 0, 1, 0, '2021-08-10 01:07:46', '2021-08-10 01:07:46'),
(87, 'Medical (2).pdf', 58, 0, 1, 0, '2021-08-10 01:08:14', '2021-08-10 01:08:14'),
(88, 'NOVA Austin.pdf', 58, 0, 1, 0, '2021-08-10 01:08:33', '2021-08-10 01:08:33'),
(89, 'Workplace Accident Steps (2).pdf', 59, 0, 1, 0, '2021-08-10 01:10:23', '2021-08-10 01:10:23'),
(90, 'SCISSOR LIFT.pdf', 60, 11, 1, 2, '2021-08-10 18:57:46', '2021-08-12 18:23:05'),
(91, 'asdfsd.pdf', 23, 14, 1, 0, '2021-08-18 19:40:43', '2021-08-18 19:40:43'),
(92, 'df.pdf', 23, 15, 1, 0, '2021-08-18 20:11:17', '2021-08-18 20:11:17'),
(93, 'asdfsd.pdf', 23, 16, 1, 0, '2021-08-18 20:12:17', '2021-08-18 20:12:17'),
(95, 'dfsdgf.pdf', 23, 19, 1, 0, '2021-08-18 20:20:58', '2021-08-18 20:20:58'),
(96, 'zubair1.pdf', 23, 20, 1, 0, '2021-08-18 20:21:32', '2021-08-18 20:21:32'),
(97, 'zubair 2.pdf', 23, 21, 1, 0, '2021-08-18 20:22:28', '2021-08-18 20:22:28'),
(99, 'zubair Basharat.pdf', 60, 23, 1, 0, '2021-08-18 20:23:40', '2021-08-18 20:23:40'),
(100, 'JOB SET UP (1).pdf', 73, 0, 1, 0, '2021-08-23 03:43:03', '2021-08-23 03:43:03'),
(101, 'test file image.pdf', 23, 24, 1, 0, '2021-08-25 11:18:40', '2021-08-25 11:18:40'),
(102, 'adsfd.pdf', 60, 25, 1, 0, '2021-08-26 20:59:09', '2021-08-26 20:59:09'),
(103, 'test image.pdf', 23, 26, 1, 0, '2021-08-28 09:56:28', '2021-08-28 09:56:28'),
(104, 'new  asdasdasdasdasd.pdf', 60, 27, 1, 0, '2021-08-28 11:19:01', '2021-08-28 11:19:01'),
(105, 'test formmmmm.pdf', 23, 28, 1, 0, '2021-08-29 20:39:48', '2021-08-29 20:39:48'),
(106, 'dfsvd.pdf', 23, 29, 1, 0, '2021-08-29 23:25:53', '2021-08-29 23:25:53'),
(107, 'testhjkdhdjfhskjdfhkjshfksdjhfjksdhfjksdhfjkdshfjksdfs.pdf', 60, 30, 1, 0, '2021-08-29 23:26:46', '2021-08-29 23:26:46'),
(108, 'ds.pdf', 23, 31, 1, 0, '2021-08-29 23:33:02', '2021-08-29 23:33:02'),
(110, 'autooooooo.pdf', 23, 35, 1, 0, '2021-08-30 00:04:52', '2021-08-30 00:04:52'),
(111, 'check box.pdf', 60, 36, 1, 0, '2021-08-30 00:07:09', '2021-08-30 00:07:09'),
(112, 'chekc box 2.pdf', 60, 37, 1, 0, '2021-08-30 00:12:25', '2021-08-30 00:12:25'),
(113, 'checkkkk.pdf', 23, 38, 1, 0, '2021-08-30 00:14:39', '2021-08-30 00:14:39'),
(114, 'date.pdf', 23, 39, 1, 0, '2021-08-30 00:17:36', '2021-08-30 00:17:36'),
(115, 'paragraph.pdf', 23, 40, 1, 0, '2021-08-30 00:23:38', '2021-08-30 00:23:38'),
(116, 'radio btn.pdf', 60, 41, 1, 0, '2021-08-30 00:25:37', '2021-08-30 00:25:37'),
(117, 'radiio.pdf', 60, 42, 1, 0, '2021-08-30 00:55:20', '2021-08-30 00:55:20'),
(118, 'test text.pdf', 23, 43, 1, 0, '2021-08-30 01:31:52', '2021-08-30 01:31:52'),
(119, 'text area.pdf', 60, 44, 1, 0, '2021-08-30 01:33:46', '2021-08-30 01:33:46'),
(120, 'final test.pdf', 60, 45, 1, 0, '2021-08-30 01:40:37', '2021-08-30 01:40:37'),
(121, 'fdgf.pdf', 23, 46, 1, 0, '2021-08-30 01:42:56', '2021-08-30 01:42:56'),
(122, 'full final test.pdf', 60, 47, 1, 0, '2021-08-30 07:25:29', '2021-08-30 07:25:29'),
(123, 'akheer test.pdf', 60, 48, 1, 0, '2021-08-30 07:28:19', '2021-08-30 07:28:19'),
(124, 'abcdefghijk;.pdf', 60, 49, 1, 0, '2021-08-30 08:35:17', '2021-08-30 08:35:17'),
(125, 'file upload.pdf', 60, 50, 1, 0, '2021-08-31 10:00:57', '2021-08-31 10:00:57');

-- --------------------------------------------------------

--
-- Table structure for table `roles`
--

CREATE TABLE `roles` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `guard_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `roles`
--

INSERT INTO `roles` (`id`, `name`, `guard_name`, `created_at`, `updated_at`) VALUES
(1, 'Admin', 'web', '2021-04-19 02:23:38', '2021-04-19 02:23:38'),
(2, 'User', 'web', '2021-04-19 02:25:23', '2021-04-19 02:25:23'),
(3, 'Manager', 'web', '2021-04-19 06:39:09', '2021-04-19 06:39:09'),
(4, 'Fleet Manager', 'web', '2021-05-12 04:55:49', '2021-05-12 04:55:49'),
(5, 'Accounting Managers', 'web', '2021-05-12 04:56:00', '2021-05-12 04:56:00'),
(6, 'Safety Coordinator', 'web', '2021-05-12 04:56:08', '2021-05-12 04:56:08'),
(7, 'Software Project Manager', 'web', '2021-05-12 04:56:20', '2021-05-12 04:56:20'),
(8, 'Office Managers', 'web', '2021-05-12 04:56:31', '2021-05-12 04:56:31'),
(9, 'Supervisor / Forman', 'web', '2021-05-12 04:56:41', '2021-05-12 04:56:41'),
(10, 'Human Resource', 'web', '2021-05-12 04:56:49', '2021-05-12 04:56:49');

-- --------------------------------------------------------

--
-- Table structure for table `role_has_permissions`
--

CREATE TABLE `role_has_permissions` (
  `permission_id` bigint(20) UNSIGNED NOT NULL,
  `role_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `signatures`
--

CREATE TABLE `signatures` (
  `id` int(100) NOT NULL,
  `file_id` int(100) NOT NULL,
  `user_id` int(100) NOT NULL,
  `sign` longtext DEFAULT NULL,
  `form_submitted` text DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `signatures`
--

INSERT INTO `signatures` (`id`, `file_id`, `user_id`, `sign`, `form_submitted`, `created_at`, `updated_at`) VALUES
(22, 7, 19, 'data:image/png;base64,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', NULL, '2021-05-12 10:54:26', '2021-05-12 10:54:41'),
(23, 4, 8, 'data:image/png;base64,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', NULL, '2021-05-12 11:44:48', '2021-05-12 11:45:03'),
(24, 4, 20, 'data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAAmwAAACgCAYAAACxIDDDAAAgAElEQVR4Xu2da4wsx1XHq3p2dq9fiZ3ExPE+Zrr3QiQIDnmBABHlAwIhEAkkH+BDonwiQQIpPBQBQggRIRCgREKgkIBAkEgghIgigYDwKTyEAhhsBVsQ7nTP7t1x3jGOE987uzPdqNY7N7Oz/ajururnbyXLlrf6VNXvnJn+76mqU1LwAwEIQAACEIAABCDQaAKy0aNjcBComYDneVEURW8LguBDNQ+F7iEAAQhAoMcEEGw9dj5TTyegxNqqRRQ9/59BEPCZIXAgAAEIQKByArx8KkdOh20g4LruUkrpbI7V930+M21wIGOEAAQg0DECvHw65lCmU57A4eHhr0ZR9AtxlhBs5fliAQIQgAAE8hNAsOVnxhMdJ7C+FLo+VbUsypJox53P9CAAAQg0lACCraGOYVj1EHBdN5RSJn4uyLDV4xd6hQAEINB3Agi2vkcA879DYH9///ZwONxJQqKOiwZBcGVfGwghAAEIQAACtgkg2GwTxn5rCCQtha4mQHatNa5koBCAAAQ6RwDB1jmXMqEiBLLEGtm1IlR5BgIQgAAETBFAsJkiiZ3WEhiPxwvHcQZpEyC71lr3MnAIQAACnSCAYOuEG5lEUQIPPfTQg3fffffn0p4nu1aULs9BAAIQgIApAgg2UySx00oCWUuhalJk11rpWgYNAQhAoFMEEGydcieTyUMg6TaDdRtk1/IQpS0EIAABCNgigGCzRRa7jSbguu5HpZQ/mDVIsmtZhPg9BCAAAQhUQQDBVgVl+mgcAZ2lULJrjXMbA4IABCDQWwIItt66vr8Tz7rNYEWG7Fp/Y4SZQwACEGgaAQRb0zzCeKwSGI/Htx3HSbzNYNU52TWrbsA4BCAAAQjkJIBgywmM5u0moLMUqmZIdq3dfmb0EIAABLpGAMHWNY8yn0QCumKN7BpBBAEIQAACTSOAYGuaRxiPFQKu6y6klFduM1DiTEp56XMwn8/ns9nsmpWBYPScwOHh4f7Z2VngOM45+00fxGEKgsABHwQgAIG+EkCw9dXzPZq367pvlVL+yeaUwzAMHce5IgJYDi0eHNevX//GxWLxyQsRptheEcRFreOXouR4DgIQ6AIBBFsXvMgcUgkkLYUqAeB5XqgSPCsDi8VieXx8vAXSZAK7u7u3h8PhcJUV08mOmeSJcDNJE1sQgEBbCCDY2uIpxlmIQNJtBmEYvmo6nT62KeYQA0I8/PDD+9vb29OLLJn2kmUhBxV4iD2GBaDxCAQg0HoCCLbWu5AJJBHwPO9RIcSrN38fhuF8Op2e71HrqWCTu7u7t+rMksX5LIqiWFdubDEUCDY+8xCAQB8JINj66PWezDluKXTzZd9lwTYej5d1Z8kuRNgdJbZcLsPhcOhOJpObumEYV+iYTKguPdpBAAJdIYBg64onmcclAkm3GWy+6Nss2A4PD79juVz+Y117yRTwdUGmxNi99957/5NPPvkVk+GIYDNJE1sQgEBbCSDY2uo5xp1IIOk2g7hyHZuCTZ0cXRk+OztT5T3uFULc+X9VYz84OFio0hdNEWVSytf7vv9PVXNos7CumhX9QQAC3SSAYOumX3s9K52l0BUg3WK6CUDVCqtR1lWfuIzLkjXxlOymn9jHZjTsMAYBCLSAAIKtBU5iiPoE0kp4xFlxXVfVCdPvoKUt15cuT09PT9tWGBjB1tLAY9gQgIAxAt1/UxlDhaGmE0i6zUBK+Z7JZPJLSeMfj8dvchznI02fX9r41jJ9KvkUnZ6ejp966intjf1Nnzv72JruIcYHAQjYJoBgs00Y+5UQ8DzvL4QQb97sLIqiMAiCK1dSrbdThWB3dnZ2KhloiU7aniUrMXWBYCtDj2chAIEuEECwdcGLzOFKPbUVEhPlH/b3978rDMO/397e3o5BbfozdGdT3GAweMWNGzeexL3iimBTh0Om02mqEIcbBCAAgS4RMP2y6RIb5tISAkn71u677769xx9/fNaSaTDMBAK7u7tf3tnZuW/91xw6IFwgAIG+EUCw9c3jHZtvUr21uBIeHZt6b6YTJ8i587U37meiEIDABQEEG6HQWgIp94SyXNZar35t4J7nPRZF0SNxpU6iKLqdd4qO4/yt2tPo+/6VvY55bdEeAhCAQNUEEGxVE6c/IwSSiuOyVGYEbyVGXNf9Gynly4QQ33TR4ZbljtX+wNV3nvrvW0KIx4QQH/Z9//2W+8Y8BCAAgVIEEGyl8PFwHQSSTnUi1urwRnKfh4eHvxVF0XcLIV4uhFBizLYgKwtgGUXR70op/8D3/U+WNcbzEIAABEwSQLCZpImtSgjkLY5byaB62MmaIBsJIdQVXurUZtu/U06FENtSyo9PJpM39NCtTBkCEGgogbZ/uTYUK8OyRSBFrKk6auply48hAp7n/bAQQhUcfrEQ4iEhhHPxj6Ee8plRdeiklPN8T11qPcw5fnWH7Pt93/+JEn3yKAQgAAEjBBBsRjBipAoCnAg1T1lt7L+wWtU+srhJhGo523GczwohvhiG4Ss2DxqYXO72PO/Hoyh6m5TylUKIaxpZwdtRFL01CAJVnJkfCEAAArUQQLDVgp1O8xJIOhFKeYd0kmsb++vcR6b0Viil/IqU8lgI8bHJZPKzSSOPy6KaKICcRurw8PAjURR9uxDipUntoiiaCiHeEATBUd74pT0EIACBsgQQbGUJ8rx1AqPR6PZgMLhydRTV7oVoyj6yKIqWUsozKeX/hmE4C4Lg+4oEhuu6kZSXv5aq9LPrum+RUv6hEOJSod61uajTpR/1ff+HisyPZyAAAQgUJYBgK0qO5yoh0PcToTH7yGrZ2K8EmXK44zjnV2VNJpNHTAfAwcHBYmtr68p1U7aza3Hz8Dzvd6SU74ii6MrJVg4kmPY89iAAAR0CCDYdSrSpjUBfToQeHh5+MIqiNwohXpJzY7wp31zaRxZF0S/7vv+Xpozr2Inz9Xw+f3Y2m71A53kbbTzP+7gQ4vXrGbYoilyWRW3QxiYEIJBGAMFGfDSWQIpYU1mP84xPm388z/tnIcTrhBDq9KLtn0v7yOoQZGkTjFsKNXnQoAxcz/O+WQjxK0KIN0op/4FyH2Vo8iwEIFCUAIKtKDmes0og5UToc7PZ7B6rnVs0fiHS1OZ245+99X1kWRv7LU4xt+nxeLx0HEeVDLn0U8dSaIaoVPXmBNm13C7mAQhAwAAB4y8NA2PCRM8JdO1EqOu6X5BSqlpmpX5MbewvNQjDD+/t7T2zvb19Zcnz9PT0yycnJy803B3mIAABCLSWAIKtta7r5sCTNp5XeVLQBNmiIk2Vv3Ac5wk1Bhsb+03MzaSNuGXvpiyFmpwntiAAAQiUJYBgK0uQ540RaPOJUNd13yql/D0hxN0FgNyKougdQRB8qMCzrX0kadm7aUuhNgGrP1CU/ePj46bfs2oTA7YhAAENAgg2DUg0qYTAwPO885fX+o+6jigIgkbG6cXJzrcXPDTQS5G28m1b9q3ZiPy9vb3PD4fDF6/f5tAnkWqDKTYh0AcCjXwR9gE8c7xMoC3lO0qKtC/5vl96L1sXYifO321b9s7rhySRquyoZWD17yAIrhy+yNsP7SEAgW4SQLB106+tmlXTT4SWONmpXsL/4vv+d7bKIZYH27d9a0nx3aZssuWQwDwEIKBBAMGmAYkm9gg09UJ3z/NuCCG8AuU3EGkp4dKXfWtJh2fSPkksi9r7nsEyBLpAAMHWBS+2dA5JS0R1LY0VPdkphFhIKf9oMpn8WEtdUcmw+1DCQzebFgf87Ozsszdv3nyoEmfQCQQg0DoCCLbWuawbA27CidCyJzullB9GpOnHY1f3rcUdItCn8vz+Nfau5SFGWwj0kwCCrZ9+r3vW257nzTcHUcWLq6xI62P5DRPBknD1VGNPAOvMOe0Qgc7zqg1ZNV1StIMABBBsxEDlBKo+EToej98xGAzeHUWR2pOW94eTnXmJbbTvWgmPMsueKzRNLldT0t08DgEIWCKAYLMEFrPxBJJedg888MD9jz766DOmuV1k8rZz2FWHBp6m/EYOYilNu7JvrcghgiQsde3RNONRrEAAAnURQLDVRb6H/VZ5ItTzvMeEEK/UxMzJTk1QeZu1vYRHnmzaqpbaekHcTV4sgeaNINpDAAIrAgg2YqESAlWdCFXLn47jqCuisn7UrQr/So20LEzFf9/WEh4qmzYYDJw04bVOZbX3MmmpX7WtYn9mcU/xJAQg0AYCCLYGeOn69eufCMPwWy++2M//1aVTY1WdCHVdV5XXGCS5VO0bchzn9znZaT/o27ZvbW9v7wvD4fBFuiJNEVwsFkt1B2jW4YNVO/vU6QECEOgyAQRbA7wb94XfpSKatpfFPM97SgjxsjRXSin/bDKZ/GgD3N2LIbShhEcRkbaZKUtbMuVgQS9CnUlCoDICCLbKUCd3FPel3xXBZvNE6OHh4Z9GUfQjGS78tO/7DzfAzb0Zgm2BXhZknn1pq742Dwrs7+9/ZjgcvjRpLF05WKD+mFRZxy5l/MvGD89DoC4CCLa6yK/121XBZlOsZb10yW7UE9hN3beWFS9xtFQ27ezs7IsnJycPrv8+y1ZbDxasxFncsnBX/oCs51NBrxAwQwDBZoZjKStxwqbtX5C2ToSy/Fkq1Kw+3LQSHll7y5JE2nK5DNXetLjfZyyBtmbv6Wg0OnUcZ0t3z14Yhp+cTqePWA0gjEMAAqkEEGwNCJBNwdb2E2VJL7Uym69Z/mxAoGYMIe42g6qXBvOe8Exa8tycalYdtjKxbduzo9Hov6WUX6/Ema5AixtT2/+ItM0Z+xCwTQDBZpuwhv0uCTbT5TtUmQ4p5fvTXjRRFIVBECSeDtVwAU1KEkgS6UqwLRaLZ05OTl5Usovzx5VwchznzvfWelzkFSO6YrJtBwsODg4+NRgMruflkeUfsmxZhPg9BOwSQLDZ5atlfVOwLZfL5dHRUeySjJbBmhrt7e3d3t7e3tnsvmjGUOeWgjAM3zmdTj9Q05Tp9oJAWg2yLEirgrOqnWmRUSYWsw4WFI3rLB5Ff5+1t66o3abNs+g8eA4CbSeAYKvZg6PR6PZgMLgkcu66666feeKJJ95b89BydW+y1prmLQWP+77/LbkGSWOrBGwJhrKDLiI4subSlIMFBwcHZ1tbW9b+uCvCrqy/eB4CEIgngGCrOTI6ckJ0+yIbdoVmnn0vmrcUnPq+fyWLV7Mb6d5Aps0kxIsTnl86OTl5SV67TT9YUGbJU+f6rBWv5XI5Pzo6upaXH+0hAAE7BBBsdrhqW+3CCVET5Tt0bimIoojlT+3Iqr7h3t7el4bD4QNSVvu1okq4qB+1lUD9O+mEZxaRrIMFunvesvop+vu8p15X4mxVQy0ra7gaF1m1oh7iOQjYJVDtN6vdubTSetsPHMSdDFSOmM/nX53NZvdmOYUyHVmEuvX7C1F3f8ysVt9Fz6uvi5+0EhsmyWSJmTyZYpPjKpJN2xSWWXNbF2pRFD0+nU5fZXIO2IIABMwQQLCZ4VjIiuu6fyGlfPP6w2EYLqfTqbU9KYUGmvBQmVprlOkw6QlsFSXQ1IMFuiJrXWwtl8sbx8fH37D6f7o2yKgVjR6eg0C1BBBs1fK+1Fub96+llXGYTqepJTayXiTcUlBjUPao66wlxqoPFhQ5QLBYLBbHx8fDdbdlfb7WRR5XTvUo4Jlq6wkg2Gp0YVv3ryW96LLqobH8WWOw0XXmH0t1CJkiS55JGTGEGkEOgW4TQLDV6N827l8rUr6D5c8ag4yuLxFoysGCrOzeptuUSNtc8lRtxuPxf0opX6lTv46lTz4MEGg3AQRbff67Ugqj7lNoWSh2d3e/srOzc0/cyyRpaSXrr/6srFzWmJr6e9d1/zyKojv7E9dfqCxD1eO1rFi0fbDg4ODgxmAw8HTE1YpQ0ndCHqG2XC5vHx0d3VUPdXqFAARMEUCwmSKZ007cX9gX9cVOc5qqqvnA87xFXGdJL7qs6vdtvKXA87yPRFF0JoR4S54X7zo328KgqoBoSz91HyzIEoq62bS8GTWEWlsilHFCQI8Agk2Pk/FWbTtwkFJrTZ1oPa9/tf6TIdZaeUvBymfqUESZWmNhGH5gOp2+03hQYfAKgaylR1sHC4pk0+IOEKwmNBqNbg0GA60itgg1PggQ6CYBBFtNfm3TgYOU8h2xtdZSMgqtvKUgb4YkK6TYS5RFyMzv67ixIG+sZMWCrlBTf0REUfQYNdTMxA5WINBEAgi2mrzSlgMHeWuteZ53SwhxJRMQhuFPT6fT99WEu1C3eV++up1kvaR17dAumUBahtf0XtG82bSkAwTrs9GNPYQanwII9IcAgq0GX4/H44XjOJdqlUVR9KEgCN5Ww3ASu0xaTkp64Xme9z9CiDuFO9cMf8r3/Zc3aW5pY3Fd9zNSypdaGO+zvu+/wIJdTF4Q2N/ff2o4HL4sCcjZ2dmnb968+bAJYLqiatWXjlDXtaljy8QcsQEBCDSHAIKtBl+0Yf9a3lpr4/H4pxzHee8mTinlFyeTSe4LuGtwi1AHCoQQbzLZNy9WkzTTbaXtVzPlh4LZNP/4+Ph6xh8Joc4hFlPzqM4r9AQBCJgigGAzRTKHnabvXytSay1hCWrh+/6lKuw5MFXS9PDw8PNhGN4rpdTa0K0zKPVSjaLogxws0KFlpk1aZsrEEqhu5itPNk211bWLUDMTJ1iBQJsJINhq8F6T96+l1FoTQRDExkvKCdJGxNdoNPoNx3F+Ugixo9ytk8nIExbqZSql/C/f9x/J8xxtyxOwuQRqK5uGUCvvdyxAoI8EGvFC7RP48Xh823Gcc+Gw+lkul/OjoyNjGZ4yPPOKr6QMQR21xlzXVQceVEbPMS3K1jMnUkqVOdwuw5lnyxPIKtlRNAZ1s155s2l5it2SUSsfH1iAQNcIINgq9miT96+liDUlMK8U9K3jROhqCVNly2yJsvWQIHtW8QdEszvTJTtsZtPyCDVqqGkGAM0g0EMCCLaKnd7U/Wsp5Tuem81mV66jsnki1PYSZobLG7/vruKQbVx3Jkt22MqmKWiqhprKpuv8YYFQa1yYMSAINI4Agq1ilzRx/1reWmumToRWsYSp616WoHRJ1dfO1H61g4MDfzAYjHWElJrtRd20zJOeKzJ5it2GYcg9n/WFFD1DoFUEEGwVuituz81isfjN4+Pjd1c4jEtd5a21ph5Oyq6pF1vaPHRfkGVZXAxDHQQ4XS6Xv+04zruklGmnVf/a9/0fKNsvz9sjYKJkRxGhFgSBozurPEKNWwl0qdIOAhBYEUCwVRgLrusqEXGpx6Ibo00M++DgYLG1tXWpgO8qo5D1okpZEjUxNC0bF3d6zqWUz04mkwfjHjK910lrYDQySqBsyY6kOI8bZN5smrKhu6zKrQRGwwJjEOgdAQRbhS6PWQ5NLJVhe1hFaq2tj+nw8PCZKIqsV+2/yJapoqJnvu9rn6T1PO+vhBDfn8QxiqKzIAg46Wk70ErYL7sEmleoZf2RsjmVHEItymu7BDYehQAEOkoAwVaRY0ej0XsGg8EvrncXhuFyOp1uVTSEO90kiTXVQDfjZ1KwbS5hHh0dlVoi1niRsgRaddDl7K9MyQ5doabibrlcTrJuIUCo5XQezSEAASsEEGxWsF412pRyHibE2ubsPM+bqv8XRdEoA+f5vrK0Jcwy7tDIqpHpKAO4omeLLmNrCPXzGVwse06Pj4+9PFPKY5+MWh6ytIUABHQIINh0KBlo04RyHmlZC93MmgEU1kxkvFDJqlkjb85wkZIdtoWUbfvm6GEJAhDoMgEEW0XerbucR5pYm8/nt2az2d0VobDSTdJLlXIdVnAbN1pkv5pNIZWn2C0xZjwcMAgBCMQQQLBVEBZx11GFYTifTqfam+jLDNN13aWUMrY8geM4X3fjxo3Pl7Ff97Ou655JKa/sBeRgQd2e0es/b8mOpgg1it3q+ZdWEICAGQIINjMcU63UuX8t7eV27dq1+5588smvVIDAWhee5/2dEOJ7Yjr4mO/732utYwwbIZCnZIdNoaZbQ01NGqFmxPUYgQAEchJAsOUEVqR5XfvX0l5wvu+rjNSyyHya9EwcW5aomuSh+LHkWQJtglCjhlrzY4oRQqDrBBBsFXi4jv1rfdjTlTTHLhygqCAsa+siS4Ap/+W5lSAMw3A6nV4pAJ02wayyIatnEWq1hQkdQwACGwQQbJZDIuE6ql8/Pj7+eVtdJ52061LmiaVQW9Fjz+7+/v7JcDjcTephVW5D957PxWKxPD4+zlXHMEssrgk1NZzHp9Ppq+wRwTIEIAABfQIINn1WhVpWfB3Vtud587iBdkmsqfklLIUugiBIuzO0kA95qDyBLKG0uodW575Z20KNGmrl/Y0FCEDAPAEEm3mmlyxWdR3V9evXHwzD8HMJYi0MgiDXkpFlLKXMx738uyZISwFq0MNZWTXdoV7cSmA1o4ZQ0/UG7SAAgToIINgsUj84OPi1ra2tn1vvwsZ1VLu7u1/d2dmJraNWZH+PRSSlTSeV8GDfWmm0xg1kZdV0OrwQagG3EujQog0EINBlAgg2i96topxH2lVTXRNr7FuzGKwGTZvIqhURahS7NehETEEAAo0jgGCz6BLb5TzSxNrp6en85OSkksK8FhFeMk0Jj6pIF++nbFatyD2f4/H436WUr9bZ/9a1P2KKe4onIQCBthFAsFn0mM1yHhlXTc1ns1mnxBolPCwGqgHTBwcHi62trcL7JIvsQcwjDil2a8DJmIAABGolgGCzhN/zvHcJId63bt7UdVQZYu32bDa7y9K0ajHLUmgt2LU7zSOcNo3mFWp5smmqL4SathtpCAEINJwAgs2Sg+JElYmN8Wn3gs7n8+dms9k9lqZUm1lKeNSGPrXjMlm1vEItjyik2G0z44VRQQAC5Qgg2MrxS3zaxoGDtJfWAw88cP+jjz76jKXp1GaWEh61oU/tOI+AWjeUR6jlzaYp2xS7bWa8MCoIQKA8AQRbeYaxFkwXzO3DvaCbICnhYSk4S5jVvdJps4ucQm3pOI6jO8w8tnVt0g4CEIBA0wgg2Cx5xOSBgwyx1kkfsm/NUmCWMFskq6Z7KrNgNu0/ptPpa0tMiUchAAEItIZAJ1/2TaBvSrD14V7QOH9RwqMJUfz8GIoINd3ro/Jm7MimNScuGAkEIFAtAQSbJd6bgqPADQcDz/MWccPr+kuLEh6WgrKA2aQ/GJJM6Qi1Atk0EYbhraOjo9jbPApMi0cgAAEItI4Ags2Cy+IK2kop3z6ZTP5Yp7vXvOY1L3z66af/r49ijaVQnQipro2OYNO955NsWnV+oycIQKB7BBBsFnxa5oRon+4FzbEUugiCYGjBVZjMIJB2zZTu9VF5llSVTbJphCUEIACBqwQQbBaioqhg293dfW5nZye26K3u5m0L06nMJCU8KkOdq6O4/ZjL5XKadiH7aDR6bjAYaBdw7voyfy7gNIYABCAQQwDBZiEsitwh2qdL3OOQU8LDQiAaMqmWMpWp6XSaefUU2TRD0DEDAQhAYIMAgs1CSOQ9IZpWMX4+n3fuXtBN5OxbsxCEFZokm1YhbLqCAAR6SwDBZsH1eQRb3y5xj8NNCQ8LQViByTzZNDWc5XLJSc8K/EIXEIBANwkg2Cz4dVOASCmfmkwmu5tdZYi1Tt4LusmAEh4WAtCiSbJpFuFiGgIQgEAKAQSb4fAYjUaLwWBwaa9P3KXvaZe4d/VeUJZCDQdbhebIplUIm64gAAEIxBBAsBkOC50TohlXTe0IIU4ND6uR5hJOhVLCoyHeUtk0x3GuSSm1vic46dkQxzEMCECgkwS0vog7OXNLk8oSbH28FzQJ9SYLXviWgjKnWbJpOYHRHAIQgEAFBBBshiGnlfRIehH2VahssopbOjbsHswlECiSTYuiiMvXiSgIQAACFRFAsBkGnXBCdNjXe0HT8CLYDAdfAXN5s2l9KOBcACOPQAACELBOAMFmGHHMpe+h4zhOXDd9zaytWCDYDAefprkCl6+rUCWbpsmXZhCAAARsEECwGaaqc1m26jKKojAIgszK8YaH1yhzCLZq3UE2rVre9AYBCEDAJAEEm0maQggdwcay0vPQEWyGgy/GnKr1p0555jnpSTbNvl/oAQIQgEBeAgi2vMQy2mcJNsTa1wAi2MwGn+u6nxBCvE5XnK33Tlya9QXWIAABCJgmgGAzTNR13UiZjCtddXZ2Nr958+Y1w1221hyCrZzr8mbPNntTG9PIppXzAU9DAAIQqIoAgs0S6ZUYUXvVpJROHy5xz4sSwaZPbJU9u/hjoNTntu+HXfSp0xICEIBAcwiU+uJvzjSaN5JVpi0IAsX4uhDiRvNGWe+IEGzJ/Mtmz8im1Rvb9A4BCEDANAEEm2mi2NMmgGB7HpXKnkVR9No8hwOyIKssWhiGt46Oju7JasvvIQABCECg+QQQbM33UWdH2FfBZiN7poIkCILYen+dDSAmBgEIQKBHBBBsPXJ206aqlo3XD2d0dW+VDYFG9qxp0cx4IAABCNglgGCzyxfrKQTiCrmGYfjsdDp9QVvBjUajrzqOc1eR0hpxc46i80PHEdmztkYE44YABCBghgCCzQxHrBQgMB6Pv+w4zn2bj7bpEniyZwUczyMQgAAEIJCbAIItNzIeMEkgLsvW1KVRW9kzIcS/BUHwbSa5YgsCEIAABLpFAMHWLX+2cjZxt0Mo0daUyRhc3jyvVDudTnt9h2xT/Mo4IAABCLSJAIKtTd7q6FiTlkbbPN3V3jOyZ232ImOHAAQg0BwCCLbm+KLXI4lbGm0TkItrnsietclpjBUCEIBAiwgg2FrkrK4PVYk2dRoybom0SXMne9YkbzAWCEAAAv0ggGDrh59bNcvVtV4NGvT5fjpKazTIIwwFAhCAQM8IINh65nCmCwEIQAACEIBA+wgg2NrnM0YMAQhAAI+/exEAAADpSURBVAIQgEDPCCDYeuZwpgsBCEAAAhCAQPsIINja5zNGDAEIQAACEIBAzwgg2HrmcKYLAQhAAAIQgED7CCDY2uczRgwBCEAAAhCAQM8IINh65nCmCwEIQAACEIBA+wgg2NrnM0YMAQhAAAIQgEDPCCDYeuZwpgsBCEAAAhCAQPsIINja5zNGDAEIQAACEIBAzwgg2HrmcKYLAQhAAAIQgED7CCDY2uczRgwBCEAAAhCAQM8IINh65nCmCwEIQAACEIBA+wgg2NrnM0YMAQhAAAIQgEDPCCDYeuZwpgsBCEAAAhCAQPsI/D+/eEOgmRlf+QAAAABJRU5ErkJggg==', NULL, '2021-05-12 11:49:57', '2021-05-12 11:53:42'),
(25, 2, 8, 'data:image/png;base64,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', NULL, '2021-05-18 07:48:57', '2021-05-18 07:49:03');
INSERT INTO `signatures` (`id`, `file_id`, `user_id`, `sign`, `form_submitted`, `created_at`, `updated_at`) VALUES
(26, 2, 12, 'data:image/png;base64,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', NULL, '2021-06-10 05:44:18', '2021-06-14 06:38:12'),
(27, 9, 12, 'data:image/png;base64,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', NULL, '2021-06-11 06:15:02', '2021-06-11 06:15:13'),
(28, 10, 12, 'data:image/png;base64,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', NULL, '2021-06-11 06:27:57', '2021-06-11 06:28:06'),
(29, 13, 12, 'data:image/png;base64,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', NULL, '2021-06-11 11:01:33', '2021-06-11 11:01:43');
INSERT INTO `signatures` (`id`, `file_id`, `user_id`, `sign`, `form_submitted`, `created_at`, `updated_at`) VALUES
(30, 29, 12, 'data:image/png;base64,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', NULL, '2021-06-14 06:11:42', '2021-06-14 06:11:48'),
(31, 4, 12, NULL, NULL, '2021-06-14 06:37:47', '2021-06-14 06:37:47'),
(32, 29, 8, 'data:image/png;base64,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', NULL, '2021-06-14 07:40:11', '2021-06-14 07:40:19'),
(33, 31, 12, 'data:image/png;base64,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', NULL, '2021-06-14 09:44:55', '2021-06-14 09:45:14'),
(34, 33, 8, 'data:image/png;base64,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', NULL, '2021-06-14 10:58:15', '2021-06-14 10:58:27'),
(35, 33, 12, NULL, NULL, '2021-06-14 11:15:23', '2021-06-14 11:15:23'),
(36, 34, 8, 'data:image/png;base64,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', NULL, '2021-06-14 11:24:44', '2021-06-14 11:24:55');
INSERT INTO `signatures` (`id`, `file_id`, `user_id`, `sign`, `form_submitted`, `created_at`, `updated_at`) VALUES
(37, 36, 12, 'data:image/png;base64,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', NULL, '2021-06-16 11:43:24', '2021-06-16 11:45:21'),
(38, 40, 12, 'data:image/png;base64,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', NULL, '2021-06-30 08:14:00', '2021-06-30 08:14:20'),
(39, 40, 8, 'data:image/png;base64,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', NULL, '2021-06-30 08:35:41', '2021-07-02 11:44:33'),
(40, 41, 8, 'data:image/png;base64,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', NULL, '2021-06-30 08:45:08', '2021-06-30 08:45:21'),
(41, 41, 12, 'data:image/png;base64,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', NULL, '2021-06-30 10:06:22', '2021-07-24 06:33:08'),
(42, 51, 12, NULL, NULL, '2021-07-09 12:30:22', '2021-07-09 12:30:22'),
(43, 53, 8, NULL, NULL, '2021-07-14 10:04:47', '2021-07-14 10:04:47'),
(44, 49, 8, NULL, NULL, '2021-07-17 06:13:15', '2021-07-17 06:13:15'),
(45, 45, 8, NULL, NULL, '2021-07-19 09:53:34', '2021-07-19 09:53:34'),
(46, 45, 12, NULL, NULL, '2021-07-19 13:25:08', '2021-07-19 13:25:08');
INSERT INTO `signatures` (`id`, `file_id`, `user_id`, `sign`, `form_submitted`, `created_at`, `updated_at`) VALUES
(47, 56, 12, 'data:image/png;base64,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', NULL, '2021-07-24 09:54:50', '2021-07-24 10:10:22'),
(48, 56, 8, NULL, NULL, '2021-07-24 10:46:19', '2021-07-24 10:46:19'),
(49, 49, 12, NULL, NULL, '2021-08-03 20:50:04', '2021-08-03 20:50:04'),
(50, 52, 12, NULL, NULL, '2021-08-03 20:50:18', '2021-08-03 20:50:18'),
(51, 52, 8, NULL, NULL, '2021-08-03 20:51:15', '2021-08-03 20:51:15'),
(52, 58, 8, NULL, NULL, '2021-08-03 21:00:54', '2021-08-03 21:00:54'),
(53, 90, 86, NULL, NULL, '2021-08-11 01:49:47', '2021-08-11 01:49:47'),
(54, 89, 86, NULL, NULL, '2021-08-11 08:04:40', '2021-08-11 08:04:40'),
(55, 85, 86, NULL, NULL, '2021-08-11 08:06:05', '2021-08-11 08:06:05'),
(56, 62, 86, NULL, NULL, '2021-08-11 08:06:25', '2021-08-11 08:06:25'),
(57, 67, 86, NULL, NULL, '2021-08-11 08:07:15', '2021-08-11 08:07:15'),
(58, 86, 86, NULL, NULL, '2021-08-11 08:07:35', '2021-08-11 08:07:35'),
(59, 90, 12, NULL, NULL, '2021-08-12 18:24:18', '2021-08-12 18:24:18'),
(60, 105, 86, NULL, NULL, '2021-08-29 20:47:43', '2021-08-29 20:47:43'),
(61, 107, 86, NULL, NULL, '2021-08-29 23:27:16', '2021-08-29 23:27:16'),
(62, 108, 86, NULL, NULL, '2021-08-29 23:33:23', '2021-08-29 23:33:23'),
(63, 109, 86, NULL, NULL, '2021-08-30 00:04:15', '2021-08-30 00:04:15'),
(64, 110, 86, NULL, NULL, '2021-08-30 00:05:31', '2021-08-30 00:05:31'),
(65, 111, 86, NULL, NULL, '2021-08-30 00:07:30', '2021-08-30 00:07:30'),
(66, 112, 86, NULL, NULL, '2021-08-30 00:12:56', '2021-08-30 00:12:56'),
(67, 113, 86, NULL, 'public/submit_forms/1630267806.pdf', '2021-08-30 00:15:00', '2021-08-30 08:10:08'),
(68, 114, 86, NULL, 'public/submit_forms/1630267669.pdf', '2021-08-30 00:17:58', '2021-08-30 08:07:51'),
(69, 115, 86, NULL, NULL, '2021-08-30 00:24:49', '2021-08-30 00:24:49'),
(70, 116, 86, NULL, NULL, '2021-08-30 00:26:04', '2021-08-30 00:26:04'),
(71, 117, 86, NULL, NULL, '2021-08-30 00:55:49', '2021-08-30 00:55:49'),
(72, 118, 86, NULL, NULL, '2021-08-30 01:32:19', '2021-08-30 01:32:19'),
(73, 119, 86, 'data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAAmwAAACgCAYAAACxIDDDAAAAAXNSR0IArs4c6QAADYJJREFUeF7t3dGqJFcVBuCVmTFOjF6YgHipF0bBO8FXiKDgO5j3EBHfQ99BUDCvIHipGC/0UkTihTETMxOVfeySTjtnpqq6quuv2t+ADGS6qtb+1vL0z+7qOq+UPwQIECBAgAABAtECr0RXpzgCBAgQIECAAIES2AwBAQIECBAgQCBcQGALb5DyCBAgQIAAAQICmxkgQIAAAQIECIQLCGzhDVIeAQIECBAgQEBgMwMECBAgQIAAgXABgS28QcojQIAAAQIECAhsZoAAAQIECBAgEC4gsIU3SHkECBAgQIAAAYHNDBAgQIAAAQIEwgUEtvAGKY8AAQIECBAgILCZAQIECBAgQIBAuIDAFt4g5REgQIAAAQIEBDYzQIAAAQIECBAIFxDYwhukPAIECBAgQICAwGYGCBAgQIAAAQLhAgJbeIOUR4AAAQIECBAQ2MwAAQIECBAgQCBcQGALb5DyCBAgQIAAAQICmxkgQIAAAQIECIQLCGzhDVIeAQIECBAgQEBgMwMECBAgQIAAgXABgS28QcojQIAAAQIECAhsZoAAAQIECBAgEC4gsIU3SHkECBAgQIAAAYHNDBAgQIAAAQIEwgUEtvAGKY8AAQIECBAgILCZAQIECBAgQIBAuIDAFt4g5REgQIAAAQIEBDYzQIAAAQIECBAIFxDYwhukPAIECBAgQICAwGYGCBAgQIAAAQLhAgJbeIOUR4AAAQIECBAQ2MwAAQIECBAgQCBcQGALb5DyCBAgQIAAAQICmxkgQIAAAQIECIQLCGzhDVIeAQIECBAgQEBgMwMECBAgQIAAgXABgS28QcojQIAAAQIECAhsZoAAAQIECBAgEC4gsIU3SHkECBAgQIAAAYHNDBAgQIAAAQIEwgUEtvAGKY8AAQIECBAgILCZAQIECBAgQIBAuIDAFt4g5REgQIAAAQIEBDYzQIAAAQIECBAIFxDYwhukPAIECBAgQICAwGYGCBAgQIAAAQLhAgJbeIOUR4AAAQIECBAQ2MwAAQIECBAgQCBcQGALb5DyCBAgQIAAAQICmxkgQIAAAQIECIQLCGzhDVIeAQIECBAgQEBgMwMECBAgQIAAgXABgS28QcojQIAAAQIECAhsZoAAAQIECBAgEC4gsIU3SHkECBAgQIAAAYHNDBAgQIAAAQIEwgUEtvAGKY8AAQIECBAgILCZAQIECBAgQIBAuIDAFt4g5REgQIAAAQIEBDYzQIAAAQIECBAIFxDYwhukPAIECBAgQICAwGYGCBAgQIAAAQLhAgJbeIOUR4AAAQIECBAQ2MwAAQIECBAgQCBcQGALb5DyCBAgQIAAAQICmxkgQIAAAQIECIQLCGzhDVIeAQIECBAgQEBgMwMECBAgQIAAgXABgS28QcojQIAAAQIECAhsZoAAAQIECBAgEC4gsIU3SHkECBAgQIAAAYHNDBAgQIAAAQIEwgUEtvAGKY8AAQIECBAgILCZgbEC/37BC9u/fVJVnxl7Mq8jQIAAAQIExgsIbOOtvPLTAk+r6mFV3TdDQpyJIUCAAAECCwkIbAtBOs2dwMtC3BimFvT+VVWPxrzYawgQIECAQA8CAlsPXd7HGp9V1YOLHbsW3tp/84cAAQIECHQtILB13f7oxbddtmE+zWl0qxRHgAABAmsLeCNcW9j5rxEYvuhgTq9RdCwBAgQI7F7AG+HuW3joBQhsh26vxREgQIDAWAGBbayU191aQFi7tbjrESBAgECsgMAW25quCxPWum6/xRMgQIDApYDAZibSBNqjQdojPdq3Rj2IN6076iFAgACBTQQEtk3YXfQFAnbXjAcBAgQIELgQENiMRJKAsJbUDbUQIECAQIyAwBbTiu4LEda6HwEABAgQIHCfgMBmNhIEhLWELqiBAAECBGIFBLbY1nRTmLDWTastlAABAgTmCghsc+Uct4SAsLaEonMQIECAwOEFBLbDtzh2gUNY+05VvRtbpcIIECBAgECAgMAW0IQOSxh+sftHVfVah+u3ZAIECBAgMElAYJvE5cULCAxhzYNxF8B0CgIECBDoQ0Bg66PPKascwtonp99mkFKXOggQIECAQLSAwBbdnkMVN4S19vfDQ63MYggQIECAwMoCAtvKwE5/JzCEtfZFgwdMCBAgQIAAgWkCAts0L6+eLtA+/mwhTVibbucIAgQIECBwJyCwGYQ1BdoXC9rHn8LamsrOTYAAAQKHFxDYDt/izRb49PTFAmFtsxbMuvDwfLzhYP2bxeggAgQILCsgsC3r6Wz/FXhSVY/trO1+HIZ7D+3G776VFkCAwN4FBLa9dzCv/rer6lenssxXXn/mVORXiM1RcwwBAgQWFPCGuiCmU90JeHM/3iDo6fF6akUECOxMQGDbWcOCy22/ZuqzdtaCOzS/NIFtvp0jCRAgsIiAwLYIY/cnGR7d0SDM1PHGQWA7Xk+tiACBnQl4c91ZwwLL9VDcwKYsXJLAtjCo0xEgQGCqgMA2VczrzwWGN3K/buq4c/FBVb1eVe3vLxx3mVZGgACBbAGBLbs/qdWd36/2z9MjPFJrVdd1AnbXrvNzNAECBBYRENgWYezqJO5X66fdw+7aP6rq8/0s20oJECCQJyCw5fUkuSL3qyV3Z/na7K4tb+qMBAgQmCUgsM1i6/Ig96v11fa/n3bV7K711XerJUAgVEBgC21MUFnnH4G6Xy2oMSuXYndtZWCnJ0CAwBQBgW2KVn+v9RFofz1vKx5C+p+q6qt9Elg1AQIEsgQEtqx+pFRzvqvmkR0pXbldHW13rf3vwe0u6UoECBAg8CIBgc18XArYVet7Job++9nQ9xxYPQECYQJ+KIc1ZMNy7KptiB90abtrQc1QCgECBAYBgc0sNAG7aubgfA78XDAPBAgQCBPwgzmsITcux67ajcGDL/fTqvrBKbw/DK5TaQQIEOhSQGDrsu13i7ar1m/vn7dyj/EwDwQIEAgWENiCm7NiaUd4CO4QONdi6un/G8+qqu2qeUjuWtPkvAQIELhSoKc3pSupDnP4Xr8F+HFVPaqq85kdbpD3Ed514+mLBtf5OZoAAQKrCwhsqxNHXWC4Z20vz1Zr9bYZvQxpbUfo1SjZ/Raz1wC/X3GVEyBAYIaAwDYDbceH3Hon5b2q+srpAayXwasxjp0/D3Fdb+huPRPrrcSZCRAgcGCBsW+YByboYmnn3wa9pud/qao3nrPrNfecw710QxOG8NB2fdqvRXqri+5st0i7a9vZuzIBAgQmCcx9o510ES/eTOBJVT0+Xf15u1R/rqo3z3bAhkKnzsV58BpC11+r6subrdyFxwjYXRuj5DUECBAIEJj6xhxQshJGCpx/i/Lp6Yb9duiYnj8vgL1fVV8aeW0vyxewu5bfIxUSIEDgfwJj3rxx7U/g8qPG8xUM/+bG/f31damKP6iq16uqfVTevnnrDwECBAiECwhs4Q2aUd7l7ljbSfGmPAPywId4SO6Bm2tpBAgcU0BgO15fvRkfr6dLrmj4AsrPquqdJU/sXAQIECCwnoDAtp6tMxNIFPBFg8SuqIkAAQIvERDYjAiBfgR80aCfXlspAQIHExDYDtZQyyHwAgG7a8aDAAECOxUQ2HbaOGUTmChgd20imJcTIEAgSUBgS+qGWgisI/DH068I28vvkF1HwVkJECCwYwGBbcfNUzqBkQK+OTwSyssIECCQKiCwpXZGXQSWEfBR6DKOzkKAAIFNBQS2TfldnMCqAsMz13wUuiqzkxMgQGB9AYFtfWNXILCVgG+FbiXvugQIEFhYQGBbGNTpCIQIuG8tpBHKIECAwBICAtsSis5BIEvAfWvX9eP9qvrixSn8rLzO1NEECFwp4IfQlYAOJxAm4L616xoy7Ey2vx9cdypHEyBAYDkBgW05S2cikCDgvrV5XXhWVQ9Ph/6yqr437zSOIkCAwDoCAts6rs5KYAsB961NV/9FVX33dFjbnXw0/RSOIECAwPoCAtv6xq5A4BYCw31rbWeo7RD583KBway90s/Cl3t5BQECGwr4IbUhvksTWEjgSVU9rirPW7sf9O2q+nlVvXoRzv5WVW8s1AenIUCAwGoCAttqtE5M4GYC7lv7f+rfVtU37tk5a16/q6pv3qxDLkSAAIErBQS2KwEdTmBjAY/w+HQDzj/mbP/SwtnHVfX9qnp34165PAECBGYLCGyz6RxIYHOB4REeH1XVa5tXs10BP6yqH5/tpvloeLteuDIBAisJCGwrwTotgZUF2jcb2zcce35e2HtV9bUz53Yv3+dWdnd6AgQIbCIgsG3C7qIErhbo+REeH17sKP6hqt66WtQJCBAgECwgsAU3R2kE7hHo9b614SPgxtIC64+q6iemhAABAj0ICGw9dNkajyTQy6+e+v3p487Ln1E9fwR8pDm2FgIEJgoIbBPBvJzAxgJHe4THr6vqW6cvDNz386ituX3s+fWN7V2eAAECmwkIbJvRuzCByQJ7vm9tbDBra/xNVX17so4DCBAgcGABge3AzbW0wwkMgW3vCxt2CQWzvXdS/QQI3ExAYLsZtQsRIECAAAECBOYJCGzz3BxFgAABAgQIELiZgMB2M2oXIkCAAAECBAjMExDY5rk5igABAgQIECBwM4H/AEl28KFBUCT7AAAAAElFTkSuQmCC', NULL, '2021-08-30 01:34:10', '2021-08-30 02:30:25'),
(74, 120, 86, 'data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAAmwAAACgCAYAAACxIDDDAAAAAXNSR0IArs4c6QAAD0pJREFUeF7t3bGPI1cdB/A3a++Rg1zEQRApcrueJRIRKLoiDWUQUpBAdECBUIQoqGhDCX8AoqCGAomAEKKgI0VET3FNJAgncTu2T0ggAYE9QMfdeo3m4oVdn3fP9vObebY/26SI33u/+fze3n4145kpgh8CBAgQIECAAIGsBYqsq1McAQIECBAgQIBAENhsAgIECBAgQIBA5gICW+YNUh4BAgQIECBAQGCzBwgQIECAAAECmQsIbJk3SHkECBAgQIAAAYHNHiBAgAABAgQIZC4gsGXeIOURIECAAAECBAQ2e4AAAQIECBAgkLmAwJZ5g5RHgAABAgQIEBDY7AECBAgQIECAQOYCAlvmDVIeAQIECBAgQEBgswcIECBAgAABApkLCGyZN0h5BAgQIECAAAGBzR4gQIAAAQIECGQuILBl3iDlESBAgAABAgQENnuAAAECBAgQIJC5gMCWeYOUR4AAAQIECBAQ2OwBAgQIECBAgEDmAgJb5g1SHgECBAgQIEBAYLMHCBAgQIAAAQKZCwhsmTdIeQQIECBAgAABgc0eIECAAAECBAhkLiCwZd4g5REgQIAAAQIEBDZ7gAABAgQIECCQuYDAlnmDlEeAAAECBAgQENjsAQIECBAgQIBA5gICW+YNUh4BAgQIECBAQGCzBwgQIECAAAECmQsIbJk3SHkECBAgQIAAAYHNHiBAgAABAgQIZC4gsGXeIOURIECAAAECBAQ2e4AAAQIECBAgkLmAwJZ5g5RHgAABAgQIEBDY7AECBAgQIECAQOYCAlvmDVIeAQIECBAgQEBgswcIECBAgAABApkLCGyZN0h5BAgQIECAAAGBzR4gQIAAAQIECGQuILBl3iDlESBAgAABAgQENnuAAAECBAgQIJC5gMCWeYOUR4AAAQIECBAQ2OwBAgQIECBAgEDmAgJb5g1SHgECBAgQIEBAYLMHCBAgQIAAAQKZCwhsmTdIeQQIECBAgAABgc0eIECAAAECBAhkLiCwZd4g5REgQIAAAQIEBDZ7gAABAgQIECCQuYDAlnmDlEeAAAECBAgQENjsAQIECBAgQIBA5gICW+YNUh4BAgQIECBAQGCzBwgQIECAAAECmQsIbJk3SHkECBAgQIAAAYHNHiBAgAABAgQIZC4gsGXeIOURIECAAAECBAQ2e4AAAQIECBAgkLmAwJZ5g5RHgAABAgQIEBDY7AECBAgQIECAQOYCAlvmDVIeAQIECBAgQEBgswcIECBAgAABApkLCGyZN0h5BAgQIECAAAGBzR4gQIAAAQIECGQuILBl3iDlESBAgAABAgQENnuAwBoKlGU5CiGMQwidqqr8Hq9hD5VMgACBRQT8Q7+Ils8SaEmg1+t9uyiK7xRFsTNdwuHhod/jlvpiWQIECDQl4B/6pqStQ2ABgf39/a/v7Oz8YFZAm55mPK5PtIXgTNsCwD5KgACBNRMQ2NasYcrdTIGbN29++ujo6K15AtpFAs60bebecFQECBCoBQQ2+4BAOwLPlWX5x5iANl22wNZOI61KgACBJgQEtiaUrbH1Ajdv3nz16OjoVyGEnaKI+7WbXAIdFUXROQsrsG39NgNAgMAGC8T95dhgGIdGIEag1+v9qCiK14rYdFbfCvred9ROqqo6F9AODg7e+/La5Edgi+mYsQQIEMhbQGDLuz+qWxOBGzdu3O92u1dSBrRpCoFtTTaHMgkQILACAYFtBYim2D6B/f39452dnfryZvTv0EVn0C5T3dvbO+52uy6Jbt/Wc8QECGypQPQfmy11c9hbJtDr9ervjD36iT30ZQLajLNrJ9M3De3u7n7m9u3bv46tz3gCBAgQyE8g+o9PfoekIgJxAr1e735RFFfqQLSCfFZ/B63+Oen3+924yv4/evpyaP1Vt8PDw8ceqruq9cxDgAABAu0KCGzt+lu9RYGyLL8/Ho+/uaozZ6eH8iidnZycDAaDlQW0s0yzLoceHx+PhsNhkvVabJGlCRAgQGAiILDZClshsMrvnE2D1QHt+Pj4wd27d59qAvPg4OCxy6Gj0ehgMBhUTaxvDQIECBBoXkBga97cigkFyrL8ZQjhC5PLmUn2dx3QQghvVFX1WsJDmTn1888//6ErV6789ez/rOupqsrl0KabYT0CBAg0KJDkD1qD9VtqiwVWeSPARYynNwhcu3bt82+//fabbXO7HNp2B6xPgACBdgQEtnbcrbqAQFmW9RsCPruqmwAuCWeP7g4IIXy43+//fYESG/toWZYn03dCXL9+/YO3bt36R2NFWIgAAQIEGhcQ2Bont+BlAi+99NKX7t2797NV3whwds1JKKtvAX3z8PDwc+vSkRdeeOGZk5OTc8HM5dB16Z46CRAgECcgsMX5GR0p0Ov1jusXoK/k+Rkzajm9Y/PZZ5+9euvWrYeR5bY6/MaNG3/a3d396Nki3B3aakssToAAgcYEBLbGqC10+nyzFOHs9KxZCOGHVVV9YxO1Z10O9f7QTey0YyJAgMDjAgKbXZFMYHJTQH32bGVrTG4CqPPZg36/38hjNFZWfORE0w/LrS2qqlodbmR9hhMgQIBAOgH/2Kez3bqZ9/b27nc6nZW8AP0Ub/KWgDqcfSCEMNo61MkB7+3tXe92u387e/z1w3n7/f6594luq4/jJkCAwKYLCGyb3uHExzfrMt2yS56+wimE8HS/37+/7DybOK4+W1m/bH4qsH2q3+//ZpOOt95P9fFMbjr5y507dz6yScfnWAgQILCsgMC2rNwWjyvLchx7mXMSzsZXr1792jvvvPPjLeac69BnmW/K99cODg6OQgjXQgjHIYRzr9cqikJom2uH+BABApsuILBteocTHN+iZ9VOv3cWQnirqqpXE5S08VPO+P7aRrzdYJ69JLRt/PZ2gAQIzCEgsM2B5CPnBV5++eXdd99998FlLvUZtJ2dndfv3LnzPX5xArNCzcOHD/989+7d5+Jmbm90WZb/LIqi/l7ihT+j0ei7nU7n9fq/g8HgW+1Va2UCBAi0LyCwtd+Dtaxg1hmf0Wj0YDgcbtWdm6mb98orr3SHw+G558et48Ny64AWQnj/PI90mZyRdQds6s1lfgIE1kpAYFurduVTbP2dqvF47C7FxC2Z9d21dXhY7iIB7ZRwHYNo4vabngABAv8TENhsBgKZCsx60Xtdao43GywT0Opjqc+mTW5guXd4ePhMpq1QFgECBFoXENhab4ECCMwWmL7sXH/q+Pi4Gg6HB22blWX5RgjhK/Nc4rys1vF4PKqq6tydoW0fm/UJECCQo4DAlmNX1LT1ArNuNMjhkmFsUJu8QuzfVVU9vfVNBkCAAIEFBAS2BbB8lEBTArPOrrV5KXTZoCagNbVjrEOAwKYLCGyb3mHHt3YCOZ1dWzSoCWhrt90UTIDAmggIbGvSKGVuh8De3t4fut3ux6aPtumza/MGtckjOP7lEud27E9HSYBAewICW3v2VibwmMAFNxqMhsNhI1/MXzCo/aSqqq9qIwECBAikFxDY0htbgcBcArMe41GfwaqqKvnvqaA2V4t8iAABAq0JJP9D0NqRWZjAmgnMOrs2Ho9frKrqdqpDEdRSyZqXAAECqxUQ2FbraTYCSwnMeqNBysd4lGX58xDCF5/0HLXJd9Rc+lyqqwYRIEBgdQIC2+oszURgKYFZd4XWE6W40eCitaYLF9SWaqVBBAgQSCYgsCWjNTGBJwtcdFfoKt9oUJbl/aIo3vfkat57VVQIwRm1ebB8hgABAg0KCGwNYluKwFmB/f3933c6nY/POLs1rqpqJ0Zr3kuep2sIajHaxhIgQCC9gMCW3tgKBB4TuCSsRd0VOu8lzzNBrT6l9lOP57BJCRAgkLeAwJZ3f1S3gQIXhbX6UJf53toilzzPBLX/VFX11AbyOiQCBAhspIDAtpFtdVC5Cuzv7/+20+l8YlZ9o9Ho9mAweHGe2he95FnPmfKu03lq9hkCBAgQWF5AYFvezkgCCwtcFNjmDWtLXvL8RVVVX164WAMIECBAIBsBgS2bVihkGwRmBa4nhTWXPLdhZzhGAgQIXC4gsNkhBBoUmH6bwWg0+t1gMPjkdAm9Xm9UP9T2SQ+2PTvOJc8GG2kpAgQINCwgsDUMbrntFpgObHXIOhVZJJydjpmMd8lzu7eVoydAYAsEBLYtaLJDzEdg1vtCl6luPB67y3MZOGMIECCwpgIC25o2TtnrKVC/M7SuvCgW/9VzyXM9e65qAgQIrEJg8b8aq1jVHAS2XGDeM20ueW75RnH4BAgQmAgIbLYCgRYETs+0TS396Oxb7GupWjgcSxIgQIBAYgGBLTGw6QkQIECAAAECsQICW6yg8QQIECBAgACBxAICW2Jg0xMgQIAAAQIEYgUEtlhB4wkQIECAAAECiQUEtsTApidAgAABAgQIxAoIbLGCxhMgQIAAAQIEEgsIbImBTU+AAAECBAgQiBUQ2GIFjSdAgAABAgQIJBYQ2BIDm54AAQIECBAgECsgsMUKGk+AAAECBAgQSCwgsCUGNj0BAgQIECBAIFZAYIsVNJ4AAQIECBAgkFhAYEsMbHoCBAgQIECAQKyAwBYraDwBAgQIECBAILGAwJYY2PQECBAgQIAAgVgBgS1W0HgCBAgQIECAQGIBgS0xsOkJECBAgAABArECAlusoPEECBAgQIAAgcQCAltiYNMTIECAAAECBGIFBLZYQeMJECBAgAABAokFBLbEwKYnQIAAAQIECMQKCGyxgsYTIECAAAECBBILCGyJgU1PgAABAgQIEIgVENhiBY0nQIAAAQIECCQWENgSA5ueAAECBAgQIBArILDFChpPgAABAgQIEEgsILAlBjY9AQIECBAgQCBWQGCLFTSeAAECBAgQIJBYQGBLDGx6AgQIECBAgECsgMAWK2g8AQIECBAgQCCxgMCWGNj0BAgQIECAAIFYAYEtVtB4AgQIECBAgEBiAYEtMbDpCRAgQIAAAQKxAgJbrKDxBAgQIECAAIHEAgJbYmDTEyBAgAABAgRiBQS2WEHjCRAgQIAAAQKJBQS2xMCmJ0CAAAECBAjECghssYLGEyBAgAABAgQSCwhsiYFNT4AAAQIECBCIFRDYYgWNJ0CAAAECBAgkFhDYEgObngABAgQIECAQKyCwxQoaT4AAAQIECBBILCCwJQY2PQECBAgQIEAgVkBgixU0ngABAgQIECCQWEBgSwxsegIECBAgQIBArMB/AdkOD84pMnjUAAAAAElFTkSuQmCC', 'public/submit_forms/1630264372.pdf', '2021-08-30 01:40:59', '2021-08-30 07:12:54'),
(75, 100, 86, NULL, NULL, '2021-08-30 02:27:09', '2021-08-30 02:27:09'),
(76, 68, 86, NULL, NULL, '2021-08-30 02:27:19', '2021-08-30 02:27:19'),
(77, 123, 86, NULL, 'public/submit_forms/1630267479.pdf', '2021-08-30 07:28:42', '2021-08-30 08:04:41'),
(78, 91, 86, NULL, NULL, '2021-08-30 08:34:17', '2021-08-30 08:34:17'),
(79, 124, 86, NULL, 'public/submit_forms/1630272590.pdf', '2021-08-30 08:36:00', '2021-08-30 09:29:52'),
(80, 125, 86, 'data:image/png;base64,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', 'public/submit_forms/1630361138.pdf', '2021-08-31 10:01:18', '2021-08-31 10:05:41');

-- --------------------------------------------------------

--
-- Table structure for table `table_worker_courses`
--

CREATE TABLE `table_worker_courses` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `w_id` int(11) NOT NULL,
  `course_id` int(11) NOT NULL,
  `language` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `target_finish` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `company_id` int(100) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `table_worker_courses`
--

INSERT INTO `table_worker_courses` (`id`, `w_id`, `course_id`, `language`, `target_finish`, `created_at`, `updated_at`, `company_id`) VALUES
(1, 50, 16, NULL, NULL, '2021-08-11 01:39:28', '2021-08-11 01:39:28', 1),
(2, 50, 17, NULL, NULL, '2021-08-11 01:39:48', '2021-08-11 01:39:48', 1),
(3, 60, 16, NULL, NULL, '2021-08-11 15:59:13', '2021-08-11 15:59:13', 1),
(4, 60, 17, NULL, NULL, '2021-08-11 16:02:28', '2021-08-11 16:02:28', 1),
(5, 50, 18, NULL, NULL, '2021-08-11 23:40:02', '2021-08-11 23:40:02', 1),
(6, 67, 16, NULL, NULL, '2021-08-12 18:05:07', '2021-08-12 18:05:07', 1),
(7, 60, 18, NULL, NULL, '2021-08-12 18:06:04', '2021-08-12 18:06:04', 1),
(8, 73, 17, NULL, NULL, '2021-08-17 21:04:56', '2021-08-17 21:04:56', 1),
(9, 73, 17, NULL, NULL, '2021-08-17 21:05:00', '2021-08-17 21:05:00', 1),
(10, 54, 16, NULL, NULL, '2021-08-19 23:44:22', '2021-08-19 23:44:22', 1),
(11, 54, 18, NULL, NULL, '2021-08-19 23:45:54', '2021-08-19 23:45:54', 1),
(12, 51, 16, NULL, NULL, '2021-08-19 23:49:44', '2021-08-19 23:49:44', 1);

-- --------------------------------------------------------

--
-- Table structure for table `toolbox`
--

CREATE TABLE `toolbox` (
  `id` int(250) NOT NULL,
  `name` varchar(250) NOT NULL,
  `folder_id` int(250) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `toolbox`
--

INSERT INTO `toolbox` (`id`, `name`, `folder_id`, `created_at`, `updated_at`) VALUES
(8, 'JUNE 9TH.pdf', 21, '2021-07-16 13:16:17', '2021-07-16 13:16:17'),
(16, 'Topic  Scaffolds A.pdf', 42, '2021-08-09 20:34:47', '2021-08-09 20:34:47'),
(17, 'Topic  Scaffolds B.pdf', 42, '2021-08-09 20:35:11', '2021-08-09 20:35:11'),
(18, 'General Safety Guidelines for Construction Workers.pdf', 43, '2021-08-09 20:39:11', '2021-08-09 20:39:11'),
(19, 'Ladder Safety.pdf', 44, '2021-08-09 20:40:26', '2021-08-09 20:40:26'),
(20, 'Fall Protection Subpart M.pdf', 41, '2021-08-09 20:41:38', '2021-08-09 20:41:38'),
(21, 'Good Housekeeping.pdf', 43, '2021-08-09 20:42:24', '2021-08-09 20:42:24'),
(22, 'First Aid for Burns.pdf', 45, '2021-08-09 20:43:44', '2021-08-09 20:43:44'),
(23, 'First Aid Kit.pdf', 45, '2021-08-09 20:44:25', '2021-08-09 20:44:25'),
(24, 'Safety is Everybody\'s Business.pdf', 43, '2021-08-09 20:44:58', '2021-08-09 20:44:58'),
(25, 'Scaffolds A.pdf', 42, '2021-08-09 20:45:55', '2021-08-09 20:45:55'),
(26, 'Scaffolds B.pdf', 42, '2021-08-09 20:46:05', '2021-08-09 20:46:05'),
(27, 'First Aid Lacerations.pdf', 45, '2021-08-09 20:46:30', '2021-08-09 20:46:30'),
(28, 'Dust Masks.pdf', 40, '2021-08-09 20:50:44', '2021-08-09 20:50:44'),
(29, 'Eye and Face Protection.pdf', 40, '2021-08-09 20:51:00', '2021-08-09 20:51:00'),
(30, 'First Aid For Heart Attacks Cardiac Arrest.pdf', 45, '2021-08-09 20:51:15', '2021-08-09 20:51:15'),
(31, 'From Head to Foot.pdf', 40, '2021-08-09 20:51:33', '2021-08-09 20:51:33'),
(32, 'Hearing Protection.pdf', 40, '2021-08-09 20:51:51', '2021-08-09 20:51:51'),
(33, 'Beat the Heat.pdf', 47, '2021-08-09 20:53:08', '2021-08-09 20:53:08'),
(34, 'Jobsite Evaluation.pdf', 43, '2021-08-09 20:53:42', '2021-08-09 20:53:42'),
(35, 'Confined Spaces.pdf', 48, '2021-08-09 20:54:22', '2021-08-09 20:54:22'),
(36, 'Battery and Handling.pdf', 39, '2021-08-09 21:10:58', '2021-08-09 21:10:58'),
(37, 'Circular Saws.pdf', 39, '2021-08-09 21:11:16', '2021-08-09 21:11:16'),
(38, 'Compressor Safety.pdf', 39, '2021-08-09 21:11:45', '2021-08-09 21:11:45'),
(39, 'Hand Tool Safety.pdf', 39, '2021-08-09 21:12:03', '2021-08-09 21:12:03'),
(40, 'Laser Safety.pdf', 39, '2021-08-09 21:12:28', '2021-08-09 21:12:28'),
(41, 'Safe Drill Use.pdf', 39, '2021-08-09 21:12:42', '2021-08-09 21:12:42'),
(42, 'Saw Guards.pdf', 39, '2021-08-09 21:12:59', '2021-08-09 21:12:59'),
(43, 'Saw Guards.pdf', 39, '2021-08-09 21:13:04', '2021-08-09 21:13:04'),
(44, 'Back Injury Prevention.pdf', 45, '2021-08-09 21:13:50', '2021-08-09 21:13:50'),
(45, 'Designated Disposal Area.pdf', 43, '2021-08-09 21:14:21', '2021-08-09 21:14:21'),
(46, 'Electrical Cords.pdf', 46, '2021-08-09 21:16:47', '2021-08-09 21:16:47'),
(47, 'Electrical Safety.pdf', 46, '2021-08-09 21:17:11', '2021-08-09 21:17:11'),
(48, 'Tagout Blockout.pdf', 46, '2021-08-09 21:17:35', '2021-08-09 21:17:35'),
(49, 'GFCI.pdf', 46, '2021-08-09 21:18:05', '2021-08-09 21:18:05'),
(50, 'Drugs and Alcohol in the Workplace.pdf', 50, '2021-08-09 21:19:18', '2021-08-09 21:19:18'),
(51, 'BloodBorne Pathogens.pdf', 51, '2021-08-09 21:21:33', '2021-08-09 21:21:33'),
(52, 'Working as a Team.pdf', 43, '2021-08-09 21:27:02', '2021-08-09 21:27:02'),
(53, 'We Know Better.pdf', 43, '2021-08-09 21:27:20', '2021-08-09 21:27:20'),
(54, 'Courtesy and Professionalism on the Job.pdf', 43, '2021-08-09 21:27:52', '2021-08-09 21:27:52'),
(55, 'Office Safety.pdf', 43, '2021-08-09 21:28:28', '2021-08-09 21:28:28'),
(56, 'OSHA Top Ten Most Frequently Cited Violations.pdf', 43, '2021-08-09 21:28:51', '2021-08-09 21:28:51'),
(57, 'Basic Principles of Emergency First Aid.pdf', 45, '2021-08-09 21:29:09', '2021-08-09 21:29:09'),
(58, 'Cell Phones and Text Messaging While Driving.pdf', 52, '2021-08-09 21:29:57', '2021-08-09 21:29:57'),
(59, 'Hazard Assessment JHA.pdf', 43, '2021-08-09 21:30:45', '2021-08-09 21:30:45'),
(60, 'Scissiors and Industrial Lifts.pdf', 53, '2021-08-09 21:33:05', '2021-08-09 21:33:05'),
(61, 'Stairway Safety.pdf', 41, '2021-08-09 21:33:35', '2021-08-09 21:33:35'),
(62, 'Fire Extinguishers.pdf', 56, '2021-08-09 21:40:47', '2021-08-09 21:40:47'),
(63, 'Fire Prevention.pdf', 56, '2021-08-09 21:41:00', '2021-08-09 21:41:00'),
(64, 'Flammable and Combustible Materials.pdf', 56, '2021-08-09 21:41:16', '2021-08-09 21:41:16'),
(65, 'Trenching Operations.pdf', 54, '2021-08-09 21:45:47', '2021-08-09 21:45:47'),
(66, 'Excavating and Shoring Operations Part A.pdf', 54, '2021-08-09 21:47:21', '2021-08-09 21:47:21'),
(67, 'Excavating and Shoring Operations Part B.pdf', 54, '2021-08-09 21:47:32', '2021-08-09 21:47:32'),
(68, 'Excavations and Open Trenches.pdf', 54, '2021-08-09 21:47:51', '2021-08-09 21:47:51'),
(69, 'Flagger Safety.pdf', 57, '2021-08-09 21:51:07', '2021-08-09 21:51:07'),
(70, 'Highway Hazards.pdf', 57, '2021-08-09 21:51:21', '2021-08-09 21:51:21'),
(71, 'Temporary Traffic Control Road Work Ahead and Cone Placement.pdf', 57, '2021-08-09 21:51:33', '2021-08-09 21:51:33'),
(72, 'Temporary Traffic Control Shoulder Work Part A.pdf', 57, '2021-08-09 21:51:49', '2021-08-09 21:51:49'),
(73, 'Temporary Traffic Control Shoulder Work Part B.pdf', 57, '2021-08-09 21:52:02', '2021-08-09 21:52:02'),
(74, 'Rolling Scaffolds.pdf', 42, '2021-08-09 21:53:01', '2021-08-09 21:53:01'),
(75, 'Rolling Scaffolds.pdf', 42, '2021-08-09 21:53:25', '2021-08-09 21:53:25'),
(76, 'Backhoe Safety.pdf', 53, '2021-08-09 23:06:11', '2021-08-09 23:06:11'),
(77, 'Bulldozers.pdf', 53, '2021-08-09 23:06:25', '2021-08-09 23:06:25'),
(78, 'Dump Trucks.pdf', 53, '2021-08-09 23:06:41', '2021-08-09 23:06:41'),
(79, 'Forklifts on Construction Sites.pdf', 53, '2021-08-09 23:06:57', '2021-08-09 23:06:57'),
(80, 'Front End Loader Safety.pdf', 53, '2021-08-09 23:07:13', '2021-08-09 23:07:13'),
(81, 'Heavy Equip Safe Practices.pdf', 53, '2021-08-09 23:07:31', '2021-08-09 23:07:31'),
(82, 'Portable Generator Safety.pdf', 53, '2021-08-09 23:07:48', '2021-08-09 23:07:48'),
(83, 'Power Lines and Aerial Equip Oper.pdf', 53, '2021-08-09 23:08:01', '2021-08-09 23:08:01'),
(84, 'Power Lines and Equip Oper Part B.pdf', 53, '2021-08-09 23:08:16', '2021-08-09 23:08:16'),
(85, 'Power Lines and Equip Oper Part B.pdf', 53, '2021-08-09 23:08:38', '2021-08-09 23:08:38'),
(86, 'Safe Excavator Operations.pdf', 53, '2021-08-09 23:08:54', '2021-08-09 23:08:54'),
(87, 'Seat Belt Use.pdf', 53, '2021-08-09 23:09:10', '2021-08-09 23:09:10'),
(88, 'Seat Belt Use.pdf', 52, '2021-08-09 23:09:21', '2021-08-09 23:09:21'),
(89, 'Skid Steer Loaders.pdf', 53, '2021-08-09 23:09:40', '2021-08-09 23:09:40'),
(90, 'Tornadoes Part A.pdf', 43, '2021-08-09 23:10:54', '2021-08-09 23:10:54'),
(91, 'Actions Speak Louder Than Words - Fall Protection.pdf', 43, '2021-08-09 23:12:44', '2021-08-09 23:12:44'),
(92, 'Avoiding the Common Cold.pdf', 43, '2021-08-09 23:14:44', '2021-08-09 23:14:44'),
(93, 'Dust Control Job Site.pdf', 43, '2021-08-09 23:15:04', '2021-08-09 23:15:04'),
(94, 'Emergency Evacuation Plans.pdf', 43, '2021-08-09 23:15:19', '2021-08-09 23:15:19'),
(95, 'Knife and Utility Knife Safety.pdf', 43, '2021-08-09 23:15:38', '2021-08-09 23:15:38'),
(96, 'Protecting the Public.pdf', 43, '2021-08-09 23:15:52', '2021-08-09 23:15:52'),
(97, 'Fall Protection Part B.pdf', 41, '2021-08-09 23:17:57', '2021-08-09 23:17:57'),
(98, 'Step Ladder Safety.pdf', 44, '2021-08-09 23:18:16', '2021-08-09 23:18:16'),
(99, 'Abrasive Cutting Wheel Wet Saws.pdf', 39, '2021-08-09 23:21:17', '2021-08-09 23:21:17'),
(100, 'Material Handling Ground to Roof.pdf', 39, '2021-08-09 23:21:29', '2021-08-09 23:21:29'),
(101, 'Pneumatic Nailers and Staplers.pdf', 39, '2021-08-09 23:23:18', '2021-08-09 23:23:18'),
(102, 'Powder Actuated Tools.pdf', 39, '2021-08-09 23:23:31', '2021-08-09 23:23:31'),
(103, 'What to do after a Crash.pdf', 52, '2021-08-09 23:25:28', '2021-08-09 23:25:28'),
(104, 'Driving Company Vehicles.pdf', 52, '2021-08-09 23:25:44', '2021-08-09 23:25:44'),
(105, 'Drugs  and Alcohol Behind The Wheel.pdf', 52, '2021-08-09 23:26:07', '2021-08-09 23:26:07'),
(106, 'Emergency Driving Situations - What to Do.pdf', 52, '2021-08-09 23:26:22', '2021-08-09 23:26:22'),
(107, 'Jump Starting Vehicles.pdf', 52, '2021-08-09 23:26:37', '2021-08-09 23:26:37'),
(108, 'Pre-Trip Vehicle Inspection.pdf', 52, '2021-08-09 23:26:52', '2021-08-09 23:26:52'),
(109, 'Pre-Trip Vehicle Inspection.pdf', 53, '2021-08-09 23:27:06', '2021-08-09 23:27:06'),
(110, 'Pre-Trip Vehicle Inspection.pdf', 53, '2021-08-09 23:27:16', '2021-08-09 23:27:16'),
(111, 'Securing Loads.pdf', 52, '2021-08-09 23:27:27', '2021-08-09 23:27:27'),
(112, 'Securing Loads.pdf', 53, '2021-08-09 23:27:48', '2021-08-09 23:27:48'),
(113, 'Working In Severe Weather.pdf', 43, '2021-08-09 23:28:14', '2021-08-09 23:28:14'),
(114, 'Inspect Slings For Safe Lifting.pdf', 49, '2021-08-09 23:29:13', '2021-08-09 23:29:13'),
(115, 'Compressed Gas Cylinders.pdf', 55, '2021-08-09 23:30:01', '2021-08-09 23:30:01'),
(116, 'Gas Welding and Cutting.pdf', 55, '2021-08-09 23:30:17', '2021-08-09 23:30:17'),
(117, 'Asbestos Part A.pdf', 43, '2021-08-09 23:31:45', '2021-08-09 23:31:45'),
(118, 'Crushing Accidents.pdf', 43, '2021-08-09 23:32:02', '2021-08-09 23:32:02'),
(119, 'Hazard Communication.pdf', 43, '2021-08-09 23:32:16', '2021-08-09 23:32:16'),
(120, 'OSHA Requirements for PPE.pdf', 43, '2021-08-09 23:32:30', '2021-08-09 23:32:30'),
(121, 'Safe Handling, Storage, and Disposal of Gasoline.pdf', 43, '2021-08-09 23:32:50', '2021-08-09 23:32:50'),
(122, 'Safe Lifting and Carrying Techniques.pdf', 43, '2021-08-09 23:33:05', '2021-08-09 23:33:05'),
(123, 'Silicosis.pdf', 43, '2021-08-09 23:33:19', '2021-08-09 23:33:19'),
(124, 'Fall Protection for Steel Erection Subpart R.pdf', 41, '2021-08-09 23:34:41', '2021-08-09 23:34:41'),
(125, 'Perimeter and Leading Edge Barricade Safety.pdf', 57, '2021-08-09 23:35:06', '2021-08-09 23:35:06'),
(126, 'Powered Platform  Man-lift  Operations.pdf', 53, '2021-08-09 23:35:53', '2021-08-09 23:35:53'),
(127, 'Rigging for Safe Lifts.pdf', 49, '2021-08-09 23:36:09', '2021-08-09 23:36:09'),
(128, 'Rolling Scaffolds B.pdf', 42, '2021-08-09 23:36:24', '2021-08-09 23:36:24'),
(129, 'Underground Utilities.pdf', 54, '2021-08-09 23:36:38', '2021-08-09 23:36:38'),
(133, 'Final Review II (1).pdf', 72, '2021-08-17 20:46:41', '2021-08-17 20:46:41'),
(134, 'Final Review II (1).pdf', 70, '2021-08-18 20:32:11', '2021-08-18 20:32:11'),
(135, 'Final Review II (1).pdf', 70, '2021-08-18 20:35:19', '2021-08-18 20:35:19');

-- --------------------------------------------------------

--
-- Table structure for table `toolbox_signatures`
--

CREATE TABLE `toolbox_signatures` (
  `id` int(100) NOT NULL,
  `file_id` int(100) NOT NULL,
  `user_id` int(100) NOT NULL,
  `sign` longtext DEFAULT NULL,
  `folder_path` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `toolbox_signatures`
--

INSERT INTO `toolbox_signatures` (`id`, `file_id`, `user_id`, `sign`, `folder_path`, `created_at`, `updated_at`) VALUES
(3, 7, 12, 'data:image/png;base64,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', NULL, '2021-07-17 07:02:41', '2021-07-17 07:06:49'),
(4, 9, 12, 'data:image/png;base64,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', NULL, '2021-07-17 07:07:24', '2021-07-17 07:07:32'),
(7, 10, 12, 'data:image/png;base64,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', NULL, '2021-08-03 20:53:57', '2021-08-03 20:54:11'),
(8, 18, 86, 'data:image/png;base64,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', NULL, '2021-08-11 01:51:25', '2021-08-11 21:49:14'),
(9, 36, 12, 'data:image/png;base64,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', NULL, '2021-08-19 21:53:14', '2021-08-19 21:53:25'),
(10, 37, 87, 'data:image/png;base64,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', 'public/signnatures/1629640857av.png', '2021-08-23 01:42:52', '2021-08-23 02:00:57');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `photo` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `phone` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` tinyint(4) NOT NULL DEFAULT 1,
  `last_auth` timestamp NOT NULL DEFAULT current_timestamp(),
  `company_id` int(100) NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `photo`, `phone`, `status`, `last_auth`, `company_id`, `remember_token`, `created_at`, `updated_at`) VALUES
(2, 'Usama', 'admin@gmail.com', '2021-05-17 10:29:42', '$2y$10$QaDLn2Z3D9din3WCMn0b0eXP/1hfEMELhMeaYeJ/0DbzXi1C5IRjy', 'storage/img/logo/y1j1jPa1dPE2sbsBzQP65L6FHBzMNMLKYiu9uDEK.png', NULL, 1, '2021-05-06 10:51:13', 1, 'POOA5ebNdFj7wL5IuuysAVQpxXgKxw7Aw2Xu2bmUpHRWbHqsUMAjGirk3FLJ', '2021-04-16 06:10:30', '2021-08-26 20:45:43'),
(12, 'zeeshan Ahmed', 'manager@gmail.com', '2021-05-17 12:06:23', '$2y$10$T1IN6XlTT9fDPhsLw9MIzOEazP.u68PP3hXPlIbUzLjWp0B5eFGIC', NULL, '+923048518244', 0, '2021-05-11 19:31:07', 1, NULL, '2021-05-03 06:51:48', '2021-08-26 20:46:44'),
(19, 'safety', 'safety@gmail.com', '2021-06-09 06:39:26', '$2y$10$DG0hHQBoF8090qUDLU5y6.1B5A7v9bl7/IRP5mBk2tWubAiilgbGW', NULL, NULL, 1, '2021-05-12 06:43:14', 1, NULL, '2021-05-12 06:43:14', '2021-05-12 06:43:14'),
(70, 'Toshiba', 'amzonon@gmail.com', '2021-07-15 08:24:45', '$2y$10$acuO3SZxQlvxDFyAhctjZ.LbJBsGSigj9lW7QmzZjiXNl8ueEWeye', NULL, NULL, 1, '2021-07-15 08:24:45', 1, NULL, '2021-07-15 08:24:45', '2021-07-15 08:24:45'),
(71, 'Dell', 'dell@gmail.com', '2021-07-15 08:26:39', '$2y$10$ZmWfr8imp95BQe1BLKsgZ.Kce3D8hAn2T2bScYFqNRHqC7pct2daq', NULL, NULL, 1, '2021-07-15 08:26:39', 2, NULL, '2021-07-15 08:26:39', '2021-07-15 08:26:39'),
(77, 'dsd', 'cr@gmail.com', NULL, '$2y$10$mbp7klJgNYs9GAvgxdZ3uOqnE9.KRrKXGWsKpP4BElAMzEicGOLIG', NULL, NULL, 1, '2021-07-16 09:05:34', 2, NULL, '2021-07-16 09:05:34', '2021-07-16 09:05:34'),
(82, 'thekjbvjdsbv', 'programmersbrains@gmail.com', '2021-08-02 19:51:22', '$2y$10$tnRsazDuRhDM1JaPEeit3uyRtBwfVol.j7hFJsdOqKFHnH/4SNGwS', NULL, NULL, 1, '2021-08-02 14:51:22', 4, NULL, '2021-08-02 19:51:22', '2021-08-02 19:51:22'),
(86, 'Hugo Trevino', 'trevinosales@gmail.com', '2021-08-06 21:02:26', '$2y$10$QaDLn2Z3D9din3WCMn0b0eXP/1hfEMELhMeaYeJ/0DbzXi1C5IRjy', NULL, NULL, 1, '2021-08-05 18:21:47', 1, '97zIZRdHOODNFdOOp68kyJ3eiIxRGsF0AhR6WkVa5OxVWJCVTQ9LTAj7M7Yu', '2021-08-05 23:21:47', '2021-08-11 01:42:45'),
(87, 'AARON MORGAN', 'aaronm@citywidemech.com', NULL, '$2y$10$acuO3SZxQlvxDFyAhctjZ.LbJBsGSigj9lW7QmzZjiXNl8ueEWeye', NULL, NULL, 1, '2021-08-09 14:11:51', 1, NULL, '2021-08-09 19:11:51', '2021-08-13 19:50:16'),
(88, 'TRACY RODRIGUEZ', 'tracyr@citywidemech.com', NULL, '$2y$10$acuO3SZxQlvxDFyAhctjZ.LbJBsGSigj9lW7QmzZjiXNl8ueEWeye', NULL, NULL, 1, '2021-08-09 14:35:57', 1, NULL, '2021-08-09 19:35:57', '2021-08-13 19:50:20'),
(89, 'CARLOS GOMEZ', 'carlosg@citywidemech.com', NULL, '$2y$10$pvrDv7qPbT5l3FkjOPbDfuY2D3oarxoV1qL0K3orOBNsO1Bva4/1K', NULL, NULL, 1, '2021-08-09 14:36:52', 1, NULL, '2021-08-09 19:36:52', '2021-08-13 19:50:58'),
(90, 'DAN HERNANDEZ', 'dhernandez@citywidemech.com', '2021-08-19 11:43:07', '$2y$10$acuO3SZxQlvxDFyAhctjZ.LbJBsGSigj9lW7QmzZjiXNl8ueEWeye', NULL, NULL, 1, '2021-08-09 14:37:57', 1, NULL, '2021-08-09 19:37:57', '2021-08-13 19:51:07'),
(91, 'EDUARDO ZAMBRANO', 'eduardoz@citywidemech.com', NULL, '$2y$10$sTCsoAa2DDHihB8gU26XWe0yJdERhgl.kd4lbS5ihhRUMiqCsQHjW', NULL, NULL, 1, '2021-08-09 14:38:49', 1, NULL, '2021-08-09 19:38:49', '2021-08-12 00:46:30'),
(92, 'HECTOR GRANADO', 'HectorG@citywidemech.com', NULL, '$2y$10$5FRxi6qE4hKq.DHXXGUUT.iC3LYuIUvZjbAw3cGF98XgziJhf9bhG', NULL, NULL, 1, '2021-08-09 14:44:08', 1, NULL, '2021-08-09 19:44:08', '2021-08-12 00:46:36'),
(93, 'LEVAR BLUE', 'levarb@citywidemech.com', NULL, '$2y$10$8O3.ROhbzt4ZwKviAU6/Bew2tK9b14QDbd8zkLUu/skUkpwgAg6Mu', NULL, NULL, 1, '2021-08-09 14:45:43', 1, NULL, '2021-08-09 19:45:43', '2021-08-13 19:50:06'),
(94, 'JEFF HARVEY', 'JEFFH@CITYWIDEMECH.COM', NULL, '$2y$10$4lCWAgDkMguQ0Jv5LGhGleG.rXYcWIfWBzf3sWN7Lib8sOfLX2fXK', NULL, NULL, 1, '2021-08-09 15:15:02', 1, NULL, '2021-08-09 20:15:02', '2021-08-13 19:50:44'),
(96, 'farhan bashir', 'farhanbashir06@gmail.com', '2021-08-13 11:10:09', '$2y$10$2SniHASf0PExrfICKQSHD.53ajlbKUCA44oWUxK966nxKbDcBoJ.2', NULL, NULL, 1, '2021-08-10 10:27:36', 1, NULL, '2021-08-10 15:27:36', '2021-08-13 11:10:09'),
(103, 'test 1 usama', '323saif@gmail.com', '2021-08-12 18:11:23', '$2y$10$GKAXqtohmldORj.RrAtTX.iuGiPpRrdsnYYvwGb.Wp7V/36EiHBOK', NULL, NULL, 1, '2021-08-12 11:33:19', 1, NULL, '2021-08-12 16:33:19', '2021-08-12 18:12:04'),
(104, 'usman gulzar', 'usmangulzar.a@gmail.com', NULL, '$2y$10$XXfZRyVRRcZmrjYX.vQvjesjoT9bAdEPoJ04vJMIIsPzhVSTEm2wO', NULL, NULL, 1, '2021-08-13 08:53:05', 1, NULL, '2021-08-13 13:53:05', '2021-08-13 13:53:05'),
(105, 'khubaiab a', 'khubaibmghl12123@gmail.com', NULL, '$2y$10$LFia6KiNn3RY2oL6gPATAOVo7ZkntbiEWQKXuQKF4snIjBLmcvAqm', NULL, NULL, 1, '2021-08-13 09:26:52', 1, NULL, '2021-08-13 14:26:52', '2021-08-13 14:26:52'),
(106, 'canva va', 'info@canvasolutions.co.uk', NULL, '$2y$10$hdOdg8ZV4L3QGpcvBsjt3OU2pdB3Hwb/zwV5lwGMQ5.b8q1t/4ri.', NULL, NULL, 1, '2021-08-13 09:31:52', 1, NULL, '2021-08-13 14:31:52', '2021-08-13 14:31:52'),
(107, 'Hugo Trevino', 'hugot@citywidemech.com', NULL, '$2y$10$kR5GAw7Kf2yR3pI6X7Mrm.4TzHPJ1t9KUZWvpk0vHY77j2rgukwEq', NULL, 'asdfsdg', 1, '2021-08-13 15:24:50', 1, NULL, '2021-08-13 20:24:50', '2021-08-13 20:24:50'),
(110, 'Muhammad Ishtiaq', 'musams186@gmail.com', NULL, '$2y$10$cX825dpXpLRBShu./NXcqePs/pgziniOsnaGpyX8RUj.zy29DlGm.', NULL, NULL, 1, '2021-08-13 18:17:58', 1, NULL, '2021-08-13 23:17:58', '2021-08-13 23:17:58'),
(111, 'Zubair Basharat', 'zubairbasharat14@gmail.com', NULL, '$2y$10$27.unoNF96lntcKPqxWKfu3NsUPKo.vfU3vLZYRuMF12OVPN24W4O', NULL, NULL, 1, '2021-08-18 07:14:58', 1, NULL, '2021-08-18 19:14:58', '2021-08-18 19:14:58'),
(112, 'Usama', 'musama186@gmail.com', NULL, '$2y$10$k6sYmWEKJw91Bh0EwheoFOF3CcTXErpPVC/GfywtFtbfHVng.zHD2', NULL, NULL, 1, '2021-08-19 10:08:58', 1, NULL, '2021-08-19 22:08:58', '2021-08-19 22:08:58'),
(113, 'Zubair Basharat', 'zubair12@gmail.com', NULL, '$2y$10$lwCv0EFHNynPCKnbJrvu1u1LAJaooqEYjUVNcP7pgMp834U1fRkG6', NULL, '1212', 1, '2021-08-20 08:24:58', 1, NULL, '2021-08-20 20:24:58', '2021-08-20 20:24:58'),
(114, 'test', 'test@gmail.com', NULL, '$2y$10$yfgKJlpenj6ryDsEP1VMX.QzybwBUnSgcvWMyP1Pjv6FW/V7H.v52', NULL, NULL, 1, '2021-08-21 13:11:38', 1, NULL, '2021-08-22 01:11:38', '2021-08-22 01:11:38');

-- --------------------------------------------------------

--
-- Table structure for table `user_locations`
--

CREATE TABLE `user_locations` (
  `id` int(100) NOT NULL,
  `user_id` int(100) NOT NULL,
  `location` varchar(250) NOT NULL,
  `project` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `user_locations`
--

INSERT INTO `user_locations` (`id`, `user_id`, `location`, `project`) VALUES
(7, 16, 'ads', NULL),
(10, 6, 'abc loction', 'new project'),
(12, 6, 'kljkls//dfsdf', 'new project');

-- --------------------------------------------------------

--
-- Table structure for table `videos`
--

CREATE TABLE `videos` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `course_id` int(11) DEFAULT NULL,
  `department_id` int(11) DEFAULT NULL,
  `video_cat_it` int(11) DEFAULT NULL,
  `video_title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `video_desc` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `video_file` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `video_thumbnail` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `language` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `type` enum('youtube','pc','other') COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `company_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `videos`
--

INSERT INTO `videos` (`id`, `course_id`, `department_id`, `video_cat_it`, `video_title`, `video_desc`, `video_file`, `video_thumbnail`, `language`, `type`, `created_at`, `updated_at`, `company_id`) VALUES
(13, NULL, NULL, 4, 'Makhna', 'abc', '3fwtD3SplNM', '1625643774.png', 'ENG', 'youtube', '2021-07-07 07:42:54', '2021-07-07 07:42:54', 0),
(14, NULL, NULL, 2, 'testtt', 'dff', 'rUWxSEwctFU', '1625737610.png', 'ESP', 'youtube', '2021-07-08 09:46:50', '2021-07-08 09:46:50', 0),
(15, NULL, NULL, 3, 'hkjh', 'hghjg', 'c1Uss2V38I0', '1625919610.jpg', 'ENG', 'youtube', '2021-07-10 12:20:10', '2021-07-10 12:20:10', 0),
(18, NULL, NULL, 5, 'PREBA-1', 'test', 'bjL6NCgxa_c', '1628537078.jpg', 'ENG', 'youtube', '2021-08-10 00:24:38', '2021-08-10 00:24:38', 1),
(19, NULL, NULL, 6, '15', 'Second Test', 'bsgzgWDSHPI', '1628706022.png', 'ENG', 'youtube', '2021-08-11 23:20:22', '2021-08-11 23:20:22', 1);

-- --------------------------------------------------------

--
-- Table structure for table `video_categories`
--

CREATE TABLE `video_categories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `esp_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` tinyint(4) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `company_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `video_categories`
--

INSERT INTO `video_categories` (`id`, `name`, `esp_name`, `status`, `created_at`, `updated_at`, `company_id`) VALUES
(5, 'TEST-1', 'PREBA-1', 1, '2021-08-10 00:22:34', '2021-08-10 00:22:34', 1),
(6, '15 sec promo', 'quince', 1, '2021-08-11 23:18:44', '2021-08-11 23:18:44', 1);

-- --------------------------------------------------------

--
-- Table structure for table `video_library_categories`
--

CREATE TABLE `video_library_categories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` tinyint(4) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `company_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `video_library_categories`
--

INSERT INTO `video_library_categories` (`id`, `name`, `status`, `created_at`, `updated_at`, `company_id`) VALUES
(2, 'School', 1, '2021-06-17 11:18:27', '2021-06-17 11:18:27', 1),
(3, 'Education', 1, '2021-06-17 12:06:22', '2021-06-17 12:06:22', 1),
(4, 'Supplier', 1, '2021-06-17 12:06:27', '2021-06-17 12:06:27', 1);

-- --------------------------------------------------------

--
-- Table structure for table `workers`
--

CREATE TABLE `workers` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `first_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `last_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `gender` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `date_of_birth` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `hire_date` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `native_language` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `phone` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `dep_id` int(11) DEFAULT NULL,
  `job_no` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `type` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `em_fname` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `em_lname` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `em_fname2` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `em_no` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `em_no2` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` tinyint(4) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `user_id` bigint(20) NOT NULL,
  `photo` varchar(250) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `em_lname2` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `company_id` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `workers`
--

INSERT INTO `workers` (`id`, `first_name`, `last_name`, `gender`, `email`, `date_of_birth`, `hire_date`, `native_language`, `phone`, `title`, `dep_id`, `job_no`, `type`, `em_fname`, `em_lname`, `em_fname2`, `em_no`, `em_no2`, `status`, `created_at`, `updated_at`, `user_id`, `photo`, `em_lname2`, `company_id`) VALUES
(51, 'AARON', 'MORGAN', '1', 'aaronm@citywidemech.com', NULL, '2021-08-09', 'English', NULL, NULL, 13, NULL, 'Employee', 'Zubair', 'Basharat', 'Zubair1', '0022', '202', 1, '2021-08-09 19:11:51', '2021-08-19 21:38:41', 87, '/public/images/users/1629365921.image_photo-1626736940710-1ce0af273527.jpg', 'Basharat', 1),
(52, 'TRACY', 'RODRIGUEZ', '1', 'tracyr@citywidemech.com', NULL, '2021-08-09', 'English', NULL, NULL, 13, NULL, 'Employee', NULL, NULL, NULL, NULL, NULL, 1, '2021-08-09 19:35:57', '2021-08-09 19:35:57', 88, NULL, NULL, 1),
(50, 'Hugo', 'Trevino', '1', 'trevinosales@gmail.com', '1972-03-12', '2016-10-13', 'English', NULL, 'SAFETY DIRECTOR', 5, '5', 'Employee', 'Beatriz', 'Trevino', 'Hugo', '817-298-8533', '817-291-4842', 1, '2021-08-05 23:21:47', '2021-08-23 08:14:04', 86, 'storage/images/users/bsX2nijdrOpqD0LEMBkNo83xi0il0YjYr4Mgvw8Q.jpg', 'C. TREVINO', 1),
(53, 'CARLOS', 'GOMEZ', '1', 'carlosg@citywidemech.com', NULL, '2021-08-09', 'English', NULL, NULL, 13, NULL, 'Employee', NULL, NULL, NULL, NULL, NULL, 1, '2021-08-09 19:36:52', '2021-08-09 19:36:52', 89, NULL, NULL, 1),
(54, 'DAN', 'HERNANDEZ', '1', 'dhernandez@citywidemech.com', NULL, '2021-08-09', 'English', NULL, NULL, 8, NULL, 'Employee', 'f', 'b', 'fa', '123123123', '123123232', 1, '2021-08-09 19:37:57', '2021-08-10 22:08:07', 90, NULL, 'b', 1),
(55, 'EDUARDO', 'ZAMBRANO', '1', 'eduardoz@citywidemech.com', NULL, '2021-08-09', 'English', NULL, NULL, 13, NULL, 'Employee', NULL, NULL, NULL, NULL, NULL, 1, '2021-08-09 19:38:49', '2021-08-09 19:38:49', 91, NULL, NULL, 1),
(56, 'HECTOR', 'GRANADO', '1', 'HectorG@citywidemech.com', NULL, '2021-08-09', 'English', NULL, NULL, 9, NULL, 'Employee', NULL, NULL, NULL, NULL, NULL, 1, '2021-08-09 19:44:08', '2021-08-09 19:44:08', 92, NULL, NULL, 1),
(57, 'LEVAR', 'BLUE', '1', 'levarb@citywidemech.com', NULL, '2021-08-09', 'English', NULL, NULL, 7, NULL, 'Employee', NULL, NULL, NULL, NULL, NULL, 1, '2021-08-09 19:45:43', '2021-08-09 19:45:43', 93, NULL, NULL, 1),
(58, 'JEFF', 'HARVEY', '1', 'JEFFH@CITYWIDEMECH.COM', '1970-09-18', '2014-08-09', 'English', '469-520-6493', 'warehouse manager', 9, '7', 'Employee', 'Aleta', 'Harvey', 'Aleta', '469-387-5364', '469-387-5364', 1, '2021-08-09 20:15:03', '2021-08-11 18:10:26', 94, 'storage/images/users/HjiLebGNHzK8aphpRDErIePYsx1JqEUOQrOmWsXT.jpg', 'Harvey', 1),
(60, 'farhan', 'bashir', '1', 'farhanbashir06@gmail.com', NULL, '2021-08-10', 'English', NULL, NULL, 5, NULL, 'Employee', 'sdfghj', 'gfhvjbnk', 'fds', '3216547', '4342423423', 1, '2021-08-10 15:27:36', '2021-08-11 15:56:19', 96, 'storage/images/users/LJqwXuldPiUqO6zVTUFywWX3stLCowX00jpEvQ6M.jpg', 'dfdsf', 1),
(69, 'khubaiab', 'a', '1', 'khubaibmghl12123@gmail.com', NULL, '2021-08-13', 'English', NULL, NULL, 5, NULL, 'Employee', NULL, NULL, NULL, NULL, NULL, 1, '2021-08-13 14:26:52', '2021-08-13 14:26:52', 105, NULL, NULL, 1),
(67, 'test 1', 'usama', '1', '323saif@gmail.com', NULL, '2021-08-12', 'English', NULL, NULL, 5, '5', 'Employee', 'dafsd', 'dfsd', NULL, NULL, NULL, 1, '2021-08-12 16:33:19', '2021-08-23 08:12:10', 103, NULL, NULL, 1),
(73, 'Muhammad', 'Ishtiaq', '1', 'musams186@gmail.com', NULL, '2021-08-13', 'English', NULL, NULL, 6, NULL, 'Employee', NULL, NULL, NULL, NULL, NULL, 1, '2021-08-13 23:17:58', '2021-08-13 23:17:58', 110, NULL, NULL, 1),
(68, 'usman', 'gulzar', '1', 'usmangulzar.a@gmail.com', NULL, '2021-08-13', 'English', NULL, NULL, 5, NULL, 'Employee', NULL, NULL, NULL, NULL, NULL, 1, '2021-08-13 13:53:05', '2021-08-13 13:53:05', 104, NULL, NULL, 1),
(70, 'canva', 'va', '1', 'info@canvasolutions.co.uk', NULL, '2021-08-13', 'English', NULL, NULL, 5, NULL, 'Employee', NULL, NULL, NULL, NULL, NULL, 1, '2021-08-13 14:31:53', '2021-08-13 14:31:53', 106, NULL, NULL, 1),
(74, 'Zubair', 'Basharat', '1', 'zubairbasharat14@gmail.com', NULL, '2021-08-18', 'English', NULL, NULL, 8, NULL, 'Employee', NULL, NULL, NULL, NULL, NULL, 1, '2021-08-18 19:14:58', '2021-08-18 19:14:58', 111, NULL, NULL, 1);

-- --------------------------------------------------------

--
-- Table structure for table `worker_has_equipments`
--

CREATE TABLE `worker_has_equipments` (
  `id` int(11) NOT NULL,
  `id_equipment` int(6) NOT NULL DEFAULT 0,
  `id_user_manager` int(10) NOT NULL DEFAULT 0,
  `id_worker` int(10) NOT NULL DEFAULT 0,
  `id_company` int(6) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `worker_has_equipments`
--

INSERT INTO `worker_has_equipments` (`id`, `id_equipment`, `id_user_manager`, `id_worker`, `id_company`, `created_at`, `updated_at`) VALUES
(3, 10, 0, 9, 0, '2021-05-12 11:48:16', '2021-05-12 11:48:16');

-- --------------------------------------------------------

--
-- Table structure for table `worker_has_forms`
--

CREATE TABLE `worker_has_forms` (
  `id` int(100) NOT NULL,
  `worker_id` int(100) NOT NULL,
  `form_id` int(100) NOT NULL,
  `form_data` text DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `worker_has_forms`
--

INSERT INTO `worker_has_forms` (`id`, `worker_id`, `form_id`, `form_data`, `created_at`, `updated_at`) VALUES
(22, 86, 11, NULL, '2021-08-10 18:58:07', '2021-08-10 18:58:07'),
(23, 8, 11, NULL, '2021-08-10 19:02:59', '2021-08-10 19:02:59'),
(24, 86, 14, NULL, '2021-08-21 11:10:58', '2021-08-21 11:10:58'),
(25, 87, 28, NULL, '2021-08-29 20:41:25', '2021-08-29 20:41:25'),
(26, 86, 28, NULL, '2021-08-29 20:46:14', '2021-08-29 20:46:14'),
(27, 86, 30, NULL, '2021-08-29 23:27:10', '2021-08-29 23:27:10'),
(28, 86, 31, NULL, '2021-08-29 23:33:10', '2021-08-29 23:33:10'),
(30, 86, 35, NULL, '2021-08-30 00:05:25', '2021-08-30 00:05:25'),
(31, 86, 36, NULL, '2021-08-30 00:07:18', '2021-08-30 00:07:18'),
(32, 86, 37, NULL, '2021-08-30 00:12:46', '2021-08-30 00:12:46'),
(33, 86, 38, NULL, '2021-08-30 00:14:50', '2021-08-30 00:14:50'),
(34, 86, 39, NULL, '2021-08-30 00:17:50', '2021-08-30 00:17:50'),
(35, 86, 40, NULL, '2021-08-30 00:24:36', '2021-08-30 00:24:36'),
(36, 86, 41, NULL, '2021-08-30 00:25:57', '2021-08-30 00:25:57'),
(37, 86, 42, NULL, '2021-08-30 00:55:34', '2021-08-30 00:55:34'),
(38, 86, 43, NULL, '2021-08-30 01:32:06', '2021-08-30 01:32:06'),
(39, 86, 44, NULL, '2021-08-30 01:34:00', '2021-08-30 01:34:00'),
(40, 86, 45, 'public/submit_forms/1630245883.pdf', '2021-08-30 01:40:48', '2021-08-30 02:04:45'),
(41, 88, 45, NULL, '2021-08-30 02:17:26', '2021-08-30 02:17:26'),
(42, 87, 45, NULL, '2021-08-30 02:20:45', '2021-08-30 02:20:45'),
(43, 86, 48, NULL, '2021-08-30 07:28:37', '2021-08-30 07:28:37'),
(44, 86, 49, NULL, '2021-08-30 08:35:52', '2021-08-30 08:35:52'),
(45, 86, 50, NULL, '2021-08-31 10:01:06', '2021-08-31 10:01:06');

-- --------------------------------------------------------

--
-- Table structure for table `worker_has_groups`
--

CREATE TABLE `worker_has_groups` (
  `id` int(11) NOT NULL,
  `id_group` int(8) NOT NULL DEFAULT 0,
  `id_user_manager` int(10) NOT NULL DEFAULT 0,
  `id_worker` int(10) NOT NULL DEFAULT 0,
  `id_company` int(6) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `worker_has_groups`
--

INSERT INTO `worker_has_groups` (`id`, `id_group`, `id_user_manager`, `id_worker`, `id_company`, `created_at`, `updated_at`) VALUES
(1, 16, 0, 60, 0, '2021-08-11 16:00:46', '2021-08-11 16:00:46'),
(2, 18, 0, 67, 0, '2021-08-12 18:05:31', '2021-08-12 18:05:31'),
(3, 16, 0, 67, 0, '2021-08-12 18:05:38', '2021-08-12 18:05:38'),
(4, 18, 0, 60, 0, '2021-08-12 18:05:56', '2021-08-12 18:05:56');

-- --------------------------------------------------------

--
-- Table structure for table `worker_has_toolbox`
--

CREATE TABLE `worker_has_toolbox` (
  `id` int(100) NOT NULL,
  `worker_id` int(100) NOT NULL,
  `toolbox_id` int(100) NOT NULL,
  `folder_id` int(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `worker_has_toolbox`
--

INSERT INTO `worker_has_toolbox` (`id`, `worker_id`, `toolbox_id`, `folder_id`) VALUES
(11, 8, 7, 20),
(12, 8, 9, 22),
(13, 8, 10, 22),
(14, 86, 18, 43),
(15, 94, 134, 70),
(16, 87, 36, 39),
(17, 87, 37, 39);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `ackn_forms`
--
ALTER TABLE `ackn_forms`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `assignments`
--
ALTER TABLE `assignments`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `assignquestions`
--
ALTER TABLE `assignquestions`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `assign_commons`
--
ALTER TABLE `assign_commons`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `certificates`
--
ALTER TABLE `certificates`
  ADD PRIMARY KEY (`id`),
  ADD KEY `company_id` (`company_id`);

--
-- Indexes for table `certificate_types`
--
ALTER TABLE `certificate_types`
  ADD PRIMARY KEY (`id`),
  ADD KEY `company_id` (`company_id`);

--
-- Indexes for table `companies`
--
ALTER TABLE `companies`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `coursecategory`
--
ALTER TABLE `coursecategory`
  ADD PRIMARY KEY (`id`),
  ADD KEY `company_id` (`company_id`);

--
-- Indexes for table `courses`
--
ALTER TABLE `courses`
  ADD PRIMARY KEY (`id`),
  ADD KEY `company_id` (`company_id`);

--
-- Indexes for table `course_results`
--
ALTER TABLE `course_results`
  ADD PRIMARY KEY (`id`),
  ADD KEY `company_id` (`company_id`);

--
-- Indexes for table `departments`
--
ALTER TABLE `departments`
  ADD PRIMARY KEY (`id`),
  ADD KEY `company_id` (`company_id`);

--
-- Indexes for table `department_has_courses`
--
ALTER TABLE `department_has_courses`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `email_templates`
--
ALTER TABLE `email_templates`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `equipments`
--
ALTER TABLE `equipments`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id_company` (`id_company`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indexes for table `faqs`
--
ALTER TABLE `faqs`
  ADD PRIMARY KEY (`id`),
  ADD KEY `company_id` (`company_id`);

--
-- Indexes for table `fields`
--
ALTER TABLE `fields`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `folders`
--
ALTER TABLE `folders`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `folders_name_unique` (`name`);

--
-- Indexes for table `forms`
--
ALTER TABLE `forms`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `form_fields`
--
ALTER TABLE `form_fields`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `groups`
--
ALTER TABLE `groups`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id_company` (`company_id`);

--
-- Indexes for table `manager_has_toolbox`
--
ALTER TABLE `manager_has_toolbox`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `manager_projects`
--
ALTER TABLE `manager_projects`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `master`
--
ALTER TABLE `master`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `model_has_permissions`
--
ALTER TABLE `model_has_permissions`
  ADD PRIMARY KEY (`permission_id`,`model_id`,`model_type`),
  ADD KEY `model_has_permissions_model_id_model_type_index` (`model_id`,`model_type`);

--
-- Indexes for table `model_has_roles`
--
ALTER TABLE `model_has_roles`
  ADD PRIMARY KEY (`role_id`,`model_id`,`model_type`),
  ADD KEY `model_has_roles_model_id_model_type_index` (`model_id`,`model_type`);

--
-- Indexes for table `notifications`
--
ALTER TABLE `notifications`
  ADD PRIMARY KEY (`id`),
  ADD KEY `notifications_notifiable_type_notifiable_id_index` (`notifiable_type`,`notifiable_id`);

--
-- Indexes for table `partner_libraries`
--
ALTER TABLE `partner_libraries`
  ADD PRIMARY KEY (`id`),
  ADD KEY `company_id` (`company_id`);

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
  ADD UNIQUE KEY `permissions_name_guard_name_unique` (`name`,`guard_name`);

--
-- Indexes for table `projects`
--
ALTER TABLE `projects`
  ADD PRIMARY KEY (`id`),
  ADD KEY `company_id` (`company_id`);

--
-- Indexes for table `questions`
--
ALTER TABLE `questions`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `resources`
--
ALTER TABLE `resources`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `roles`
--
ALTER TABLE `roles`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `roles_name_guard_name_unique` (`name`,`guard_name`);

--
-- Indexes for table `role_has_permissions`
--
ALTER TABLE `role_has_permissions`
  ADD PRIMARY KEY (`permission_id`,`role_id`),
  ADD KEY `role_has_permissions_role_id_foreign` (`role_id`);

--
-- Indexes for table `signatures`
--
ALTER TABLE `signatures`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `table_worker_courses`
--
ALTER TABLE `table_worker_courses`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `toolbox`
--
ALTER TABLE `toolbox`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `toolbox_signatures`
--
ALTER TABLE `toolbox_signatures`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- Indexes for table `user_locations`
--
ALTER TABLE `user_locations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `videos`
--
ALTER TABLE `videos`
  ADD PRIMARY KEY (`id`),
  ADD KEY `company_id` (`company_id`);

--
-- Indexes for table `video_categories`
--
ALTER TABLE `video_categories`
  ADD PRIMARY KEY (`id`),
  ADD KEY `company_id` (`company_id`);

--
-- Indexes for table `video_library_categories`
--
ALTER TABLE `video_library_categories`
  ADD PRIMARY KEY (`id`),
  ADD KEY `company_id` (`company_id`);

--
-- Indexes for table `workers`
--
ALTER TABLE `workers`
  ADD PRIMARY KEY (`id`),
  ADD KEY `company_id` (`company_id`);

--
-- Indexes for table `worker_has_equipments`
--
ALTER TABLE `worker_has_equipments`
  ADD PRIMARY KEY (`id`),
  ADD KEY `x_id_equipment` (`id_equipment`),
  ADD KEY `x_id_employee` (`id_worker`),
  ADD KEY `x_id_company` (`id_company`);

--
-- Indexes for table `worker_has_forms`
--
ALTER TABLE `worker_has_forms`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `worker_has_groups`
--
ALTER TABLE `worker_has_groups`
  ADD PRIMARY KEY (`id`),
  ADD KEY `x_id_group` (`id_group`),
  ADD KEY `x_id_employee` (`id_worker`),
  ADD KEY `x_id_company` (`id_company`),
  ADD KEY `x_employee_group` (`id_group`,`id_worker`);

--
-- Indexes for table `worker_has_toolbox`
--
ALTER TABLE `worker_has_toolbox`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `ackn_forms`
--
ALTER TABLE `ackn_forms`
  MODIFY `id` int(250) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `assignments`
--
ALTER TABLE `assignments`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT for table `assignquestions`
--
ALTER TABLE `assignquestions`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `assign_commons`
--
ALTER TABLE `assign_commons`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `certificates`
--
ALTER TABLE `certificates`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `certificate_types`
--
ALTER TABLE `certificate_types`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT for table `companies`
--
ALTER TABLE `companies`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `coursecategory`
--
ALTER TABLE `coursecategory`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `courses`
--
ALTER TABLE `courses`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT for table `course_results`
--
ALTER TABLE `course_results`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=42;

--
-- AUTO_INCREMENT for table `departments`
--
ALTER TABLE `departments`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT for table `department_has_courses`
--
ALTER TABLE `department_has_courses`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `email_templates`
--
ALTER TABLE `email_templates`
  MODIFY `id` int(6) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `equipments`
--
ALTER TABLE `equipments`
  MODIFY `id` int(6) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `faqs`
--
ALTER TABLE `faqs`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `fields`
--
ALTER TABLE `fields`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `folders`
--
ALTER TABLE `folders`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=74;

--
-- AUTO_INCREMENT for table `forms`
--
ALTER TABLE `forms`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=51;

--
-- AUTO_INCREMENT for table `form_fields`
--
ALTER TABLE `form_fields`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `groups`
--
ALTER TABLE `groups`
  MODIFY `id` int(8) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT for table `manager_has_toolbox`
--
ALTER TABLE `manager_has_toolbox`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `manager_projects`
--
ALTER TABLE `manager_projects`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `master`
--
ALTER TABLE `master`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=35;

--
-- AUTO_INCREMENT for table `partner_libraries`
--
ALTER TABLE `partner_libraries`
  MODIFY `id` int(250) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `permissions`
--
ALTER TABLE `permissions`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=47;

--
-- AUTO_INCREMENT for table `projects`
--
ALTER TABLE `projects`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `questions`
--
ALTER TABLE `questions`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=32;

--
-- AUTO_INCREMENT for table `resources`
--
ALTER TABLE `resources`
  MODIFY `id` int(250) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=126;

--
-- AUTO_INCREMENT for table `roles`
--
ALTER TABLE `roles`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `signatures`
--
ALTER TABLE `signatures`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=81;

--
-- AUTO_INCREMENT for table `table_worker_courses`
--
ALTER TABLE `table_worker_courses`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `toolbox`
--
ALTER TABLE `toolbox`
  MODIFY `id` int(250) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=136;

--
-- AUTO_INCREMENT for table `toolbox_signatures`
--
ALTER TABLE `toolbox_signatures`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=115;

--
-- AUTO_INCREMENT for table `user_locations`
--
ALTER TABLE `user_locations`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `videos`
--
ALTER TABLE `videos`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT for table `video_categories`
--
ALTER TABLE `video_categories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `video_library_categories`
--
ALTER TABLE `video_library_categories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `workers`
--
ALTER TABLE `workers`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=75;

--
-- AUTO_INCREMENT for table `worker_has_equipments`
--
ALTER TABLE `worker_has_equipments`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `worker_has_forms`
--
ALTER TABLE `worker_has_forms`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=46;

--
-- AUTO_INCREMENT for table `worker_has_groups`
--
ALTER TABLE `worker_has_groups`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `worker_has_toolbox`
--
ALTER TABLE `worker_has_toolbox`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `model_has_permissions`
--
ALTER TABLE `model_has_permissions`
  ADD CONSTRAINT `model_has_permissions_permission_id_foreign` FOREIGN KEY (`permission_id`) REFERENCES `permissions` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `model_has_roles`
--
ALTER TABLE `model_has_roles`
  ADD CONSTRAINT `model_has_roles_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `role_has_permissions`
--
ALTER TABLE `role_has_permissions`
  ADD CONSTRAINT `role_has_permissions_permission_id_foreign` FOREIGN KEY (`permission_id`) REFERENCES `permissions` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `role_has_permissions_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
