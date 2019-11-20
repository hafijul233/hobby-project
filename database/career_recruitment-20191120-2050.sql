-- phpMyAdmin SQL Dump
-- version 4.9.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Nov 20, 2019 at 03:50 PM
-- Server version: 10.4.8-MariaDB
-- PHP Version: 7.1.32

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `career_recruitment`
--

-- --------------------------------------------------------

--
-- Table structure for table `admitcard`
--

CREATE TABLE `admitcard` (
  `apply_id` int(10) UNSIGNED NOT NULL,
  `hall_id` int(10) UNSIGNED NOT NULL,
  `datetime` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `apply`
--

CREATE TABLE `apply` (
  `id` int(20) UNSIGNED NOT NULL,
  `session_form_postdesignation_id` int(20) UNSIGNED NOT NULL,
  `people_id` int(10) UNSIGNED NOT NULL,
  `applydate` date NOT NULL,
  `verify` int(1) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `apply_transaction`
--

CREATE TABLE `apply_transaction` (
  `apply_id` int(20) UNSIGNED NOT NULL,
  `transaction` varchar(256) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `executive`
--

CREATE TABLE `executive` (
  `id` int(10) UNSIGNED NOT NULL,
  `username` varchar(64) COLLATE utf8_unicode_ci NOT NULL,
  `executive_type_id` int(2) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `executive_basic`
--

CREATE TABLE `executive_basic` (
  `id` int(10) UNSIGNED NOT NULL,
  `fullname` varchar(256) COLLATE utf8_unicode_ci NOT NULL,
  `email` varchar(256) COLLATE utf8_unicode_ci NOT NULL,
  `mobile` varchar(32) COLLATE utf8_unicode_ci NOT NULL,
  `description` text COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `executive_pass`
--

CREATE TABLE `executive_pass` (
  `id` int(10) UNSIGNED NOT NULL,
  `pass` varchar(32) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `executive_type`
--

CREATE TABLE `executive_type` (
  `id` int(2) UNSIGNED NOT NULL,
  `executive_type` varchar(32) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `hall`
--

CREATE TABLE `hall` (
  `id` int(10) UNSIGNED NOT NULL,
  `hall` varchar(256) COLLATE utf8_unicode_ci NOT NULL,
  `seatlimit` int(4) UNSIGNED NOT NULL,
  `venu_id` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `people`
--

CREATE TABLE `people` (
  `id` int(10) UNSIGNED NOT NULL,
  `username` varchar(256) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `people`
--

INSERT INTO `people` (`id`, `username`) VALUES
(1, 'A3A7D9');

-- --------------------------------------------------------

--
-- Table structure for table `people_basic`
--

CREATE TABLE `people_basic` (
  `id` int(10) UNSIGNED NOT NULL,
  `fullname` varchar(256) COLLATE utf8_unicode_ci NOT NULL,
  `father` varchar(256) COLLATE utf8_unicode_ci NOT NULL,
  `mother` varchar(256) COLLATE utf8_unicode_ci NOT NULL,
  `dob` date NOT NULL,
  `pob` varchar(500) COLLATE utf8_unicode_ci NOT NULL,
  `people_id` int(10) NOT NULL,
  `gender_id` int(1) UNSIGNED NOT NULL,
  `religion_id` int(2) UNSIGNED NOT NULL,
  `ethnicity_id` int(3) UNSIGNED NOT NULL DEFAULT 0,
  `nationality_id` int(3) UNSIGNED NOT NULL,
  `marriage_id` int(1) UNSIGNED NOT NULL,
  `nid` varchar(128) COLLATE utf8_unicode_ci NOT NULL,
  `email` varchar(256) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `people_date`
--

CREATE TABLE `people_date` (
  `people_id` int(10) UNSIGNED NOT NULL,
  `people_infotype_id` int(10) UNSIGNED NOT NULL,
  `people_date` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `people_float`
--

CREATE TABLE `people_float` (
  `people_id` int(10) UNSIGNED NOT NULL,
  `people_infotype_id` int(10) UNSIGNED NOT NULL,
  `people_float` double NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `people_hash`
--

CREATE TABLE `people_hash` (
  `id` int(10) UNSIGNED NOT NULL,
  `hash` varchar(32) COLLATE utf8_unicode_ci NOT NULL,
  `expires` datetime NOT NULL,
  `active` int(1) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `people_infotype`
--

CREATE TABLE `people_infotype` (
  `id` int(10) UNSIGNED NOT NULL,
  `infotype` varchar(64) COLLATE utf8_unicode_ci NOT NULL,
  `infotype_type_id` int(1) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `people_infotype`
--

INSERT INTO `people_infotype` (`id`, `infotype`, `infotype_type_id`) VALUES
(1, 'Applicant Name', 4),
(2, 'Father Name', 4),
(3, 'Mother Name', 4),
(4, 'Birth Date', 3),
(5, 'Place of Birth', 5),
(6, 'Gender', 1),
(7, 'Nationality', 1),
(8, 'National ID', 4),
(9, 'Birth Registration No', 4),
(10, 'Passport ID', 4),
(11, 'Religion', 1),
(12, 'Marital Status', 1),
(13, 'Spouse Name', 4),
(14, 'Quota', 1),
(15, 'Present Care of', 4),
(16, 'Present Village/Town/ Flat', 5),
(17, 'Present District', 1),
(18, 'Present Upazila', 1),
(19, 'Present Post Office', 4),
(20, 'Present Post Code', 1),
(21, 'Permanent Care of', 4),
(22, 'Permanent Village/Town/ Flat', 5),
(23, 'Permanent District', 1),
(24, 'Permanent Upazila', 1),
(25, 'Permanent Post Office', 4),
(26, 'Permanent Post Code', 1),
(27, 'Mobile Number', 4),
(28, 'Confirm Mobile', 4),
(29, 'Email Address', 4),
(30, 'Class V School Name', 4),
(31, 'Class V Board', 1),
(32, 'Class V Roll', 4),
(33, 'Class V Pass Year', 1),
(34, 'Class V Result Type', 1),
(35, 'Class V Result', 2),
(36, 'Class VIII School Name', 4),
(37, 'Class VIII Board', 1),
(38, 'Class VIII Roll', 4),
(39, 'Class VIII Pass Year', 1),
(40, 'Class VIII Result Type', 1),
(41, 'Class VIII Result', 2);

-- --------------------------------------------------------

--
-- Table structure for table `people_infotype_type`
--

CREATE TABLE `people_infotype_type` (
  `id` int(1) UNSIGNED NOT NULL,
  `infotype_type` varchar(32) COLLATE utf8_unicode_ci NOT NULL,
  `table` varchar(32) COLLATE utf8_unicode_ci NOT NULL,
  `active` int(1) UNSIGNED NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `people_infotype_type`
--

INSERT INTO `people_infotype_type` (`id`, `infotype_type`, `table`, `active`) VALUES
(1, 'Integer', 'people_integer', 1),
(2, 'Floating Point ', 'people_float', 1),
(3, 'Date', 'people_date', 1),
(4, 'Short Text', 'people_varchar', 1),
(5, 'Long Text', 'people_text', 1),
(6, 'Time', 'people_time', 1);

-- --------------------------------------------------------

--
-- Table structure for table `people_integer`
--

CREATE TABLE `people_integer` (
  `people_id` int(10) UNSIGNED NOT NULL,
  `people_infotype_id` int(10) UNSIGNED NOT NULL,
  `people_integer` bigint(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `people_nationality`
--

CREATE TABLE `people_nationality` (
  `id` int(3) UNSIGNED NOT NULL,
  `nationality` varchar(256) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `people_pass`
--

CREATE TABLE `people_pass` (
  `id` int(10) UNSIGNED NOT NULL,
  `pass` varchar(32) COLLATE utf8_unicode_ci NOT NULL,
  `active` int(1) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `people_spouse`
--

CREATE TABLE `people_spouse` (
  `id` int(10) NOT NULL,
  `people_id` int(10) NOT NULL,
  `spouse_name` varchar(256) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `people_text`
--

CREATE TABLE `people_text` (
  `people_id` int(10) UNSIGNED NOT NULL,
  `people_infotype_id` int(10) UNSIGNED NOT NULL,
  `people_text` text COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `people_time`
--

CREATE TABLE `people_time` (
  `people_id` int(10) UNSIGNED NOT NULL,
  `people_infotype_id` int(10) UNSIGNED NOT NULL,
  `people_time` time NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `people_varchar`
--

CREATE TABLE `people_varchar` (
  `people_id` int(10) UNSIGNED NOT NULL,
  `people_infotype_id` int(10) UNSIGNED NOT NULL,
  `people_varchar` varchar(256) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `people_varchar`
--

INSERT INTO `people_varchar` (`people_id`, `people_infotype_id`, `people_varchar`) VALUES
(1, 1, 'MOHAMMAD HAFIJUL ISLAM'),
(1, 2, 'MOHAMMAD MUSTAK AHEMD'),
(1, 3, 'HAMIDA BEGUM');

-- --------------------------------------------------------

--
-- Table structure for table `postdesignation`
--

CREATE TABLE `postdesignation` (
  `id` int(10) UNSIGNED NOT NULL,
  `postdesignation` varchar(256) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `postdesignation`
--

INSERT INTO `postdesignation` (`id`, `postdesignation`) VALUES
(1, 'Junior Scientist'),
(2, 'Senior Scientist'),
(3, 'Technicial Officer'),
(4, 'Assistant Technical Officer');

-- --------------------------------------------------------

--
-- Table structure for table `sessiontitle`
--

CREATE TABLE `sessiontitle` (
  `id` int(10) UNSIGNED NOT NULL,
  `title` varchar(256) COLLATE utf8_unicode_ci NOT NULL,
  `starting` date NOT NULL,
  `ending` date NOT NULL,
  `creator_id` int(10) UNSIGNED NOT NULL,
  `creator_date` date NOT NULL,
  `modifier_id` int(10) UNSIGNED NOT NULL,
  `modifier_date` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `sessiontitle_postdesignation`
--

CREATE TABLE `sessiontitle_postdesignation` (
  `id` int(20) UNSIGNED NOT NULL,
  `sessiontitle_id` int(10) UNSIGNED NOT NULL,
  `postdesignation_id` int(10) UNSIGNED NOT NULL,
  `deposit_amount` float UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `sys_districts`
--

CREATE TABLE `sys_districts` (
  `id` int(2) UNSIGNED NOT NULL,
  `division_id` int(2) UNSIGNED NOT NULL,
  `name` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `sys_districts`
--

INSERT INTO `sys_districts` (`id`, `division_id`, `name`) VALUES
(1, 3, 'Dhaka'),
(2, 3, 'Faridpur'),
(3, 3, 'Gazipur'),
(4, 3, 'Gopalganj'),
(5, 8, 'Jamalpur'),
(6, 3, 'Kishoreganj'),
(7, 3, 'Madaripur'),
(8, 3, 'Manikganj'),
(9, 3, 'Munshiganj'),
(10, 8, 'Mymensingh'),
(11, 3, 'Narayanganj'),
(12, 3, 'Narsingdi'),
(13, 8, 'Netrokona'),
(14, 3, 'Rajbari'),
(15, 3, 'Shariatpur'),
(16, 8, 'Sherpur'),
(17, 3, 'Tangail'),
(18, 5, 'Bogura'),
(19, 5, 'Joypurhat'),
(20, 5, 'Naogaon'),
(21, 5, 'Natore'),
(22, 5, 'Chapainawabganj'),
(23, 5, 'Pabna'),
(24, 5, 'Rajshahi'),
(25, 5, 'Sirajgonj'),
(26, 6, 'Dinajpur'),
(27, 6, 'Gaibandha'),
(28, 6, 'Kurigram'),
(29, 6, 'Lalmonirhat'),
(30, 6, 'Nilphamari'),
(31, 6, 'Panchagarh'),
(32, 6, 'Rangpur'),
(33, 6, 'Thakurgaon'),
(34, 1, 'Barguna'),
(35, 1, 'Barishal'),
(36, 1, 'Bhola'),
(37, 1, 'Jhalokati'),
(38, 1, 'Patuakhali'),
(39, 1, 'Pirojpur'),
(40, 2, 'Bandarban'),
(41, 2, 'Brahmanbaria'),
(42, 2, 'Chandpur'),
(43, 2, 'Chattogram'),
(44, 2, 'Cumilla'),
(45, 2, 'Cox\'s Bazar'),
(46, 2, 'Feni'),
(47, 2, 'Khagrachhari'),
(48, 2, 'Lakshmipur'),
(49, 2, 'Noakhali'),
(50, 2, 'Rangamati'),
(51, 7, 'Habiganj'),
(52, 7, 'Moulvibazar'),
(53, 7, 'Sunamganj'),
(54, 7, 'Sylhet'),
(55, 4, 'Bagerhat'),
(56, 4, 'Chuadanga'),
(57, 4, 'Jashore'),
(58, 4, 'Jhenaidah'),
(59, 4, 'Khulna'),
(60, 4, 'Kushtia'),
(61, 4, 'Magura'),
(62, 4, 'Meherpur'),
(63, 4, 'Narail'),
(64, 4, 'Satkhira');

-- --------------------------------------------------------

--
-- Table structure for table `sys_divisions`
--

CREATE TABLE `sys_divisions` (
  `id` int(2) UNSIGNED NOT NULL,
  `name` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `sys_divisions`
--

INSERT INTO `sys_divisions` (`id`, `name`) VALUES
(1, 'Barishal'),
(2, 'Chattogram'),
(3, 'Dhaka'),
(4, 'Khulna'),
(5, 'Rajshahi'),
(6, 'Rangpur'),
(7, 'Sylhet'),
(8, 'Mymensingh');

-- --------------------------------------------------------

--
-- Table structure for table `sys_edu_board`
--

CREATE TABLE `sys_edu_board` (
  `id` int(11) NOT NULL,
  `board` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `exam_level_id` int(10) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `sys_edu_board`
--

INSERT INTO `sys_edu_board` (`id`, `board`, `exam_level_id`) VALUES
(1, 'Dhaka Board', 0),
(2, 'Cumilla Board', 0),
(3, 'Rajshahi Board', 0),
(4, 'Jashore Board', 0),
(5, 'Chittagong Board', 0),
(6, 'Barishal Board', 0),
(7, 'Sylhet Board', 0),
(8, 'Dinajpur Board', 0),
(9, 'Mymensingh Board', 0),
(10, 'Madrasah Board', 0),
(11, 'Technical Board', 0),
(12, 'Cambridge International - IGCE', 0),
(13, 'Edexcel International', 0),
(14, 'Bangladesh Technical Education Board (BTEB)', 0),
(15, 'Others', 0);

-- --------------------------------------------------------

--
-- Table structure for table `sys_edu_examinations`
--

CREATE TABLE `sys_edu_examinations` (
  `id` int(10) NOT NULL,
  `exam_name` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `exam_level_id` int(10) NOT NULL COMMENT '0-> V/V|||, 1 -> SSC, 2->HSC, 3->Graduate, 4->Master, 5->'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `sys_edu_examinations`
--

INSERT INTO `sys_edu_examinations` (`id`, `exam_name`, `exam_level_id`) VALUES
(1, 'Secondary School Certificate', 1),
(2, 'Dakhil', 1),
(3, 'S.S.C Vocational', 1),
(4, 'O Level/Cambridge', 1),
(5, 'S.S.C Equivalent', 1),
(6, 'Trade Certificate', 1),
(7, 'Higher School Secondary Certificate', 2),
(8, 'Business Management', 2),
(9, 'Diploma in Engineering', 2),
(10, 'A Level/Sr. Cambridge', 2),
(11, 'H.S.C Equivalent', 2),
(12, 'Alim', 2),
(13, 'B.A (Honors)', 3),
(14, 'B.A (Pass Course)', 3),
(15, 'B.Com (Honors)', 3),
(16, 'B.Com (Pass Course)', 3),
(17, 'B.Ed (Honors)', 3),
(18, 'B.S.S (Honors)', 3),
(19, 'B.S.S (Pass Course)', 3),
(20, 'B.Sc (Agricultural Science)', 3),
(21, 'B.Sc (Engineering/Architecture)', 3),
(22, 'B.Sc (Honors)', 3),
(23, 'B.Sc (Pass Course)', 3),
(24, 'B.Tech', 3),
(25, 'BBA', 3),
(26, 'BBS', 3),
(27, 'BBS (Pass Course)', 3),
(28, 'Fazil', 3),
(29, 'L.L.B (Pass Course)', 3),
(30, 'L.L.B. (Honours)', 3),
(31, 'M.B.B.S/ B.D.S', 3),
(32, 'Others', 3),
(34, 'Kamil', 4),
(35, 'LL.M', 4),
(36, 'M.A', 4),
(37, 'M.Com', 4),
(38, 'M.Ed', 4),
(39, 'M.S.S', 4),
(40, 'M.Sc', 4),
(41, 'M.Sc (Agricultural Science)', 4),
(42, 'M.Sc (Engineering/Architecture)', 4),
(43, 'MBA', 4),
(44, 'MBS', 4),
(45, 'ME/Mtech', 4),
(46, 'Mmed', 4),
(47, 'Others', 4);

-- --------------------------------------------------------

--
-- Table structure for table `sys_edu_subject`
--

CREATE TABLE `sys_edu_subject` (
  `id` int(10) NOT NULL,
  `name` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `exam_level_id` int(10) NOT NULL,
  `exam_name_id` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `sys_edu_subject`
--

INSERT INTO `sys_edu_subject` (`id`, `name`, `exam_level_id`, `exam_name_id`) VALUES
(1, 'Science', 1, 1),
(2, 'Humanities', 1, 1),
(3, 'Business Studies', 1, 1),
(4, 'Agriculture Technology', 1, 1),
(5, 'Architecture and Interior Design Technology', 1, 1),
(6, 'Automobile Technology', 1, 1),
(7, 'Civil Technology', 1, 1),
(8, 'Chemical Technology', 1, 1),
(9, 'Electrical Technology', 1, 1),
(10, 'Data Telecommunication and Network Technology', 1, 1),
(11, 'Electrical and Electronics Technology', 1, 1),
(12, 'Process Control Technology', 1, 1),
(13, 'Mechanical Technology', 1, 1),
(14, 'Mechatronics Technology', 1, 1),
(15, 'Power Technology', 1, 1),
(16, 'Refregeration &amp; Air Conditioning Technology', 1, 1),
(17, 'Telecommunication Technology', 1, 1),
(18, 'Electronics Technology', 1, 1),
(19, 'Library Science', 1, 1),
(20, 'Survey', 1, 1),
(21, 'General Mechanics', 1, 1),
(22, 'Firm Machinery', 1, 1),
(23, 'Textile Technology', 1, 1),
(24, 'Others', 1, 1),
(25, 'Akaid', 3, 13),
(26, 'Akaid', 3, 13),
(27, 'Arabic', 3, 13),
(28, 'Archaeology', 3, 13),
(29, 'Bangla', 3, 13),
(30, 'Development Studies', 3, 13),
(31, 'Drama & Music', 3, 13),
(32, 'Drawing and Printing', 3, 13),
(33, 'English', 3, 13),
(34, 'Ethics', 3, 13),
(35, 'Fikha', 3, 13),
(36, 'Fine Arts', 3, 13),
(37, 'Folklore', 3, 13),
(38, 'Graphics', 3, 13),
(39, 'Hadith', 3, 13),
(40, 'History', 3, 13),
(41, 'History of Music', 3, 13),
(42, 'Home Economics', 3, 13),
(43, 'Industrial Arts', 3, 13),
(44, 'International Relations', 3, 13),
(45, 'Islamic History and Culture', 3, 13),
(46, 'Islamic Studies', 3, 13),
(47, 'Language/Linguistic', 3, 13),
(48, 'Library Science', 3, 13),
(49, 'Modern Arabic', 3, 13),
(50, 'Music', 3, 13),
(51, 'Pali', 3, 13),
(52, 'Persian', 3, 13),
(53, 'Philosophy', 3, 13),
(54, 'Sanskrit', 3, 13),
(55, 'Tafsir', 3, 13),
(56, 'Urdu', 3, 13),
(57, 'World Religion', 3, 13),
(58, 'B.A', 3, 14),
(59, 'Music', 3, 14),
(60, 'Accounting', 3, 15),
(61, 'Finance', 3, 15),
(62, 'Management', 3, 15),
(63, 'Marketing', 3, 15),
(64, 'B.Com', 3, 16),
(65, 'Education', 3, 17),
(66, 'Anthropology', 3, 18),
(67, 'Economics', 3, 18),
(68, 'Mass Comm. & Journalism', 3, 18),
(69, 'Peace & Conflict', 3, 18),
(70, 'Political Science/Govt. and Politics', 3, 18),
(71, 'Population Science', 3, 18),
(72, 'Public Administration', 3, 18),
(73, 'Public Finance', 3, 18),
(74, 'Social Welfare/Social Work', 3, 18),
(75, 'Sociology', 3, 18),
(76, 'Urban Development', 3, 18),
(77, 'Women Studies', 3, 18),
(78, 'B.S.S', 3, 19),
(79, 'Agr.Co-operative & Marketing', 3, 20),
(80, 'Agriculture Chemistry', 3, 20),
(81, 'Agriculture Co-operatives', 3, 20),
(82, 'Agriculture Economics', 3, 20),
(83, 'Agriculture Engineering', 3, 20),
(84, 'Agriculture Extension', 3, 20),
(85, 'Agriculture Finance', 3, 20),
(86, 'Agriculture Marketing', 3, 20),
(87, 'Agriculture Science', 3, 20),
(88, 'Agriculture Soil Science', 3, 20),
(89, 'Agriculture Statistics', 3, 20),
(90, 'Agriculture Water Management', 3, 20),
(91, 'Agro Forestry', 3, 20),
(92, 'Agronnomy', 3, 20),
(93, 'Agronomy & Aquaculture', 3, 20),
(94, 'Agronomy & Aquaculture Extension', 3, 20),
(95, 'Anatomology', 3, 20),
(96, 'Anatomy & Histology', 3, 20),
(97, 'Animal Breeding & Genetic', 3, 20),
(98, 'Animal Husbandry', 3, 20),
(99, 'Animal Nutrition', 3, 20),
(100, 'Animal Science', 3, 20),
(101, 'Bio-Technology', 3, 20),
(102, 'Corp Botany', 3, 20),
(103, 'Dairy Science', 3, 20),
(104, 'Doc.of Veterinary Science', 3, 20),
(105, 'Farm Power & Machinery', 3, 20),
(106, 'Farm Structure', 3, 20),
(107, 'Fisheries', 3, 20),
(108, 'Fisheries & Aquaculture', 3, 20),
(109, 'Fisheries Biology', 3, 20),
(110, 'Fisheries Management', 3, 20),
(111, 'Fisheries Technology', 3, 20),
(112, 'Food Tech. & Rural Industry', 3, 20),
(113, 'Forestry', 3, 20),
(114, 'Horticulture', 3, 20),
(115, 'Livestock', 3, 20),
(116, 'Microbiology & Hygenic', 3, 20),
(117, 'Paratrology', 3, 20),
(118, 'Plant Pathology', 3, 20),
(119, 'Poultry Science', 3, 20),
(120, 'Production Economics', 3, 20),
(121, 'Rural Sociology', 3, 20),
(122, 'Surgery & Obstate', 3, 20),
(123, 'Akaid', 4, 34);

-- --------------------------------------------------------

--
-- Table structure for table `sys_edu_univiersities`
--

CREATE TABLE `sys_edu_univiersities` (
  `id` int(10) NOT NULL,
  `name` varchar(300) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `sys_edu_univiersities`
--

INSERT INTO `sys_edu_univiersities` (`id`, `name`) VALUES
(1, 'Bangabandhu Sheikh Mujib Medical University'),
(2, 'Bangabandhu Sheikh Mujibur Rahman Agricultural University'),
(3, 'Bangladesh Agricultural University,Mymensingh'),
(4, 'Bangladesh Open University'),
(5, 'Bangladesh University of Engineering & Technology'),
(6, 'Bangladesh University of Professionals'),
(7, 'Chittagong University of Engineering & Technology'),
(8, 'Chittagong Veterinary and Animal Sciences University'),
(9, 'Comilla University'),
(10, 'Dhaka University'),
(11, 'Dhaka University of Engineering & Technology'),
(12, 'Hajee Mohammad Danesh Science & Technology University'),
(13, 'Islamic University, Kushtia '),
(14, 'Jagannath University'),
(15, 'Jahangirnagar University'),
(16, 'Jatiya Kabi Kazi Nazrul Islam University'),
(17, 'Jessore Science & Technology University'),
(18, 'Khulna University'),
(19, 'Khulna University of Engineering and Technology'),
(20, 'Mawlana Bhashani Science & Technology University'),
(21, 'National University'),
(22, 'Noakhali Science & Technology University'),
(23, 'Pabna University of Science and Technology'),
(24, 'Patuakhali Science And Technology University'),
(25, 'Rajshahi University'),
(26, 'Rajshahi University of Engineering & Technology'),
(27, 'Rangpur University'),
(28, 'Shahjalal University of Science & Technology'),
(29, 'Sher-e-Bangla Agricultural University'),
(30, 'Sylhet Agricultural University'),
(31, 'University of Chittagong'),
(32, 'Ahsanullah University of Science and Technology'),
(33, 'America Bangladesh University'),
(34, 'American International University Bangladesh'),
(35, 'ASA University Bangladesh'),
(36, 'Asian University of Bangladesh'),
(37, 'Atish Dipankar University of Science & Technology'),
(38, 'Bangladesh Islami University'),
(39, 'Bangladesh University'),
(40, 'Bangladesh University of Business & Technology (BUBT)'),
(41, 'BGC Trust University Bangladesh, Chittagong'),
(42, 'BRAC University'),
(43, 'City University'),
(44, 'Daffodil International University'),
(45, 'Darul Ihsan University'),
(46, 'Dhaka International University'),
(47, 'East Delta University , Chittagong'),
(48, 'East West University'),
(49, 'Eastern University'),
(50, 'Gono Bishwabidyalay'),
(51, 'Green University of Bangladesh'),
(52, 'IBAIS University'),
(53, 'Independent University, Bangladesh'),
(54, 'International Islamic University, Chittagong'),
(55, 'International University of Business Agriculture & Technology'),
(56, 'Leading University, Sylhet'),
(57, 'Manarat International University'),
(58, 'Metropolitan University, Sylhet'),
(59, 'North South University'),
(60, 'Northern University Bangladesh'),
(61, 'Premier University, Chittagong'),
(62, 'Presidency University'),
(63, 'Prime University'),
(64, 'Primeasia University'),
(65, 'Queens University'),
(66, 'Royal University of Dhaka'),
(67, 'Shanto Mariam University of Creative Technology'),
(68, 'Southeast University'),
(69, 'Southern University of Bangladesh , Chittagong'),
(70, 'Stamford University, Bangladesh'),
(71, 'State University Of Bangladesh'),
(72, 'Sylhet International University, Sylhet'),
(73, 'The Millenium University'),
(74, 'The Peoples University of Bangladesh'),
(75, 'The University of Asia Pacific'),
(76, 'United International University'),
(77, 'University of Development Alternative'),
(78, 'University of Information Technology & Sciences'),
(79, 'University of Liberal Arts Bangladesh'),
(80, 'University of Science & Technology, Chittagong'),
(81, 'University of South Asia'),
(82, 'Uttara University'),
(83, 'Victoria University of Bangladesh'),
(84, 'World University of Bangladesh'),
(85, 'Asian University for Women'),
(86, 'Islamic University of Technology'),
(87, 'South Asian University'),
(88, 'Dhaka Medical College'),
(89, 'Sir Salimullah Medical College'),
(90, 'Mymensingh Medical College'),
(91, 'Chittagong Medical College'),
(92, 'Rajshahi Medical College'),
(93, 'MAG Osmani Medical College'),
(94, 'Sher-E-Bangla Medical College'),
(95, 'Rangpur Medical College'),
(96, 'Comilla Medical College'),
(97, 'Khulna Medical College'),
(98, 'Shaheed Ziaur Rahman Medical College'),
(99, 'Dinajpur Medical College'),
(100, 'Faridpur Medical College'),
(101, 'Shaheed Suhrawardy Medical College'),
(102, 'Pabna Medical College'),
(103, 'Noakhali Medical College'),
(104, 'Cox`s Bazar Medical College'),
(105, 'Jessore Medical College'),
(106, 'Shaheed Nazrul Islam Medical College'),
(107, 'Kushtia Medical College'),
(108, 'Satkhira Medical College'),
(109, 'Sheikh Sayera Khatun Medical College, Gopalganj'),
(110, 'Feni Medical College,Feni'),
(111, 'Gono Bishwabidyalay, Savar, Dhaka'),
(112, 'Ad-din Womens Medical College, Dhaka'),
(113, 'Anwer Khan Modern Medical College, Dhaka'),
(114, 'Bangladesh Medical College'),
(115, 'Jalalabad Rageb-Rabeya Medical College,Sylhet'),
(116, 'BGC Trust Medical College, Chittagong'),
(117, 'Central Medical College, Comilla'),
(118, 'Chottagram Ma-O-Shishu Hospital Medical College'),
(119, 'Community Based Medical College (cbmc), Mymensingh'),
(120, 'Community Medical College, Dhaka'),
(121, 'Delta Medical College, Dhaka'),
(122, 'Dhaka National Medical College'),
(123, 'Durra Samad Rahman Red Crescent Women�s Medical College, Sylhet'),
(124, 'Eastern Medical College, Comilla'),
(125, 'Enam Medical College, Savar, Dhaka'),
(126, 'Sylhet Women`s Medical College, Sylhet'),
(127, 'Green Life Medical College,Dhaka'),
(128, 'Holy Family Red Crescent Medical College, Dhaka'),
(129, 'Ibrahim Medical College, Dhaka'),
(130, 'Ibn Sina Medical College, Dhaka'),
(131, 'International Medical College, Gazipur'),
(132, 'Islami Bank Medical College, Rajshahi'),
(133, 'Jahurul Islam Medical College, Kishoregonj'),
(134, 'Jalalabad Ragib-Rabeya Medical College Sylhet'),
(135, 'Khawja Yunus Ali Medical College, Sirajganj'),
(136, 'Kumudini Medical College, Tangail'),
(137, 'Labaid Medical College[6] Dhanmondi, Dhaka'),
(138, 'Maulana Bhasani Medical College'),
(139, 'Medical College for Women and Hospital, Dhaka'),
(140, 'Nightingale Medical College, Dhaka'),
(141, 'North Bengal Medical College, Sirajganj'),
(142, 'North East Medical College, Sylhet'),
(143, 'Northern International Medical College, Dhaka'),
(144, 'Northern Private Medical College, Rangpur'),
(145, 'Popular Medical College & Hospital, Dhaka'),
(146, 'Prime Medical College, Rangpur'),
(147, 'Rangpur Community Hospital Medical College'),
(148, 'Sahabuddin Medical College and Hospital'),
(149, 'Samaj Vittik Medical College, Mirzanagar, Savar'),
(150, 'Shahabuddin Medical College, Dhaka'),
(151, 'Z. H. Sikder Women`s Medical College'),
(152, 'Southern Medical College, Chittagong'),
(153, 'Tairunnessa Memorial Medical College, Gazipur'),
(154, 'TMSS Medical College,Bogra'),
(155, 'University Of Science and Technology Chittagong. IAMS'),
(156, 'Uttara Adhunik Medical College,Dhaka'),
(157, 'Military Institute of Science and Technology (MIST)'),
(158, 'Others'),
(159, 'Sonargaon University');

-- --------------------------------------------------------

--
-- Table structure for table `sys_gender`
--

CREATE TABLE `sys_gender` (
  `id` int(1) UNSIGNED NOT NULL,
  `gender` varchar(32) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `sys_gender`
--

INSERT INTO `sys_gender` (`id`, `gender`) VALUES
(1, 'Male'),
(2, 'Female'),
(3, 'Other');

-- --------------------------------------------------------

--
-- Table structure for table `sys_marriage`
--

CREATE TABLE `sys_marriage` (
  `id` int(1) UNSIGNED NOT NULL,
  `marriage` varchar(32) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `sys_marriage`
--

INSERT INTO `sys_marriage` (`id`, `marriage`) VALUES
(1, 'Single'),
(2, 'Married');

-- --------------------------------------------------------

--
-- Table structure for table `sys_qouta`
--

CREATE TABLE `sys_qouta` (
  `id` int(10) NOT NULL,
  `quota` varchar(100) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `sys_qouta`
--

INSERT INTO `sys_qouta` (`id`, `quota`) VALUES
(1, 'Freedom Fighter'),
(2, 'Child of Freedom Fighter'),
(3, 'Grand Child of Freedom Fighter'),
(4, 'Orpahn'),
(5, 'Physically Handicapped'),
(6, 'Ansar-VDP'),
(7, 'Ethnic Minority'),
(8, 'No Quota');

-- --------------------------------------------------------

--
-- Table structure for table `sys_religion`
--

CREATE TABLE `sys_religion` (
  `id` int(2) UNSIGNED NOT NULL,
  `religion` varchar(64) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `sys_religion`
--

INSERT INTO `sys_religion` (`id`, `religion`) VALUES
(1, 'Islam'),
(2, 'Hinduism'),
(3, 'Budhism'),
(4, 'Christianity'),
(5, 'Others');

-- --------------------------------------------------------

--
-- Table structure for table `sys_upazilas`
--

CREATE TABLE `sys_upazilas` (
  `id` int(2) UNSIGNED NOT NULL,
  `district_id` int(2) UNSIGNED NOT NULL,
  `name` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `sys_upazilas`
--

INSERT INTO `sys_upazilas` (`id`, `district_id`, `name`) VALUES
(1, 34, 'Amtali Upazila'),
(2, 34, 'Bamna Upazila'),
(3, 34, 'Barguna Sadar Upazila'),
(4, 34, 'Betagi Upazila'),
(5, 34, 'Patharghata Upazila'),
(6, 34, 'Taltali Upazila'),
(7, 35, 'Muladi Upazila'),
(8, 35, 'Babuganj Upazila'),
(9, 35, 'Agailjhara Upazila'),
(10, 35, 'Barisal Sadar Upazila'),
(11, 35, 'Bakerganj Upazila'),
(12, 35, 'Banaripara Upazila'),
(13, 35, 'Gaurnadi Upazila'),
(14, 35, 'Hizla Upazila'),
(15, 35, 'Mehendiganj Upazila'),
(16, 35, 'Wazirpur Upazila'),
(17, 36, 'Bhola Sadar Upazila'),
(18, 36, 'Burhanuddin Upazila'),
(19, 36, 'Char Fasson Upazila'),
(20, 36, 'Daulatkhan Upazila'),
(21, 36, 'Lalmohan Upazila'),
(22, 36, 'Manpura Upazila'),
(23, 36, 'Tazumuddin Upazila'),
(24, 37, 'Jhalokati Sadar Upazila'),
(25, 37, 'Kathalia Upazila'),
(26, 37, 'Nalchity Upazila'),
(27, 37, 'Rajapur Upazila'),
(28, 38, 'Bauphal Upazila'),
(29, 38, 'Dashmina Upazila'),
(30, 38, 'Galachipa Upazila'),
(31, 38, 'Kalapara Upazila'),
(32, 38, 'Mirzaganj Upazila'),
(33, 38, 'Patuakhali Sadar Upazila'),
(34, 38, 'Dumki Upazila'),
(35, 38, 'Rangabali Upazila'),
(36, 39, 'Bhandaria'),
(37, 39, 'Kaukhali'),
(38, 39, 'Mathbaria'),
(39, 39, 'Nazirpur'),
(40, 39, 'Nesarabad'),
(41, 39, 'Pirojpur Sadar'),
(42, 39, 'Zianagar'),
(43, 40, 'Bandarban Sadar'),
(44, 40, 'Thanchi'),
(45, 40, 'Lama'),
(46, 40, 'Naikhongchhari'),
(47, 40, 'Ali kadam'),
(48, 40, 'Rowangchhari'),
(49, 40, 'Ruma'),
(50, 41, 'Brahmanbaria Sadar Upazila'),
(51, 41, 'Ashuganj Upazila'),
(52, 41, 'Nasirnagar Upazila'),
(53, 41, 'Nabinagar Upazila'),
(54, 41, 'Sarail Upazila'),
(55, 41, 'Shahbazpur Town'),
(56, 41, 'Kasba Upazila'),
(57, 41, 'Akhaura Upazila'),
(58, 41, 'Bancharampur Upazila'),
(59, 41, 'Bijoynagar Upazila'),
(60, 42, 'Chandpur Sadar'),
(61, 42, 'Faridganj'),
(62, 42, 'Haimchar'),
(63, 42, 'Haziganj'),
(64, 42, 'Kachua'),
(65, 42, 'Matlab Uttar'),
(66, 42, 'Matlab Dakkhin'),
(67, 42, 'Shahrasti'),
(68, 43, 'Anwara Upazila'),
(69, 43, 'Banshkhali Upazila'),
(70, 43, 'Boalkhali Upazila'),
(71, 43, 'Chandanaish Upazila'),
(72, 43, 'Fatikchhari Upazila'),
(73, 43, 'Hathazari Upazila'),
(74, 43, 'Lohagara Upazila'),
(75, 43, 'Mirsharai Upazila'),
(76, 43, 'Patiya Upazila'),
(77, 43, 'Rangunia Upazila'),
(78, 43, 'Raozan Upazila'),
(79, 43, 'Sandwip Upazila'),
(80, 43, 'Satkania Upazila'),
(81, 43, 'Sitakunda Upazila'),
(82, 44, 'Barura Upazila'),
(83, 44, 'Brahmanpara Upazila'),
(84, 44, 'Burichong Upazila'),
(85, 44, 'Chandina Upazila'),
(86, 44, 'Chauddagram Upazila'),
(87, 44, 'Daudkandi Upazila'),
(88, 44, 'Debidwar Upazila'),
(89, 44, 'Homna Upazila'),
(90, 44, 'Comilla Sadar Upazila'),
(91, 44, 'Laksam Upazila'),
(92, 44, 'Monohorgonj Upazila'),
(93, 44, 'Meghna Upazila'),
(94, 44, 'Muradnagar Upazila'),
(95, 44, 'Nangalkot Upazila'),
(96, 44, 'Comilla Sadar South Upazila'),
(97, 44, 'Titas Upazila'),
(98, 45, 'Chakaria Upazila'),
(100, 45, 'Cox\'s Bazar Sadar Upazila'),
(101, 45, 'Kutubdia Upazila'),
(102, 45, 'Maheshkhali Upazila'),
(103, 45, 'Ramu Upazila'),
(104, 45, 'Teknaf Upazila'),
(105, 45, 'Ukhia Upazila'),
(106, 45, 'Pekua Upazila'),
(107, 46, 'Feni Sadar'),
(108, 46, 'Chagalnaiya'),
(109, 46, 'Daganbhyan'),
(110, 46, 'Parshuram'),
(111, 46, 'Fhulgazi'),
(112, 46, 'Sonagazi'),
(113, 47, 'Dighinala Upazila'),
(114, 47, 'Khagrachhari Upazila'),
(115, 47, 'Lakshmichhari Upazila'),
(116, 47, 'Mahalchhari Upazila'),
(117, 47, 'Manikchhari Upazila'),
(118, 47, 'Matiranga Upazila'),
(119, 47, 'Panchhari Upazila'),
(120, 47, 'Ramgarh Upazila'),
(121, 48, 'Lakshmipur Sadar Upazila'),
(122, 48, 'Raipur Upazila'),
(123, 48, 'Ramganj Upazila'),
(124, 48, 'Ramgati Upazila'),
(125, 48, 'Komol Nagar Upazila'),
(126, 49, 'Noakhali Sadar Upazila'),
(127, 49, 'Begumganj Upazila'),
(128, 49, 'Chatkhil Upazila'),
(129, 49, 'Companyganj Upazila'),
(130, 49, 'Shenbag Upazila'),
(131, 49, 'Hatia Upazila'),
(132, 49, 'Kobirhat Upazila'),
(133, 49, 'Sonaimuri Upazila'),
(134, 49, 'Suborno Char Upazila'),
(135, 50, 'Rangamati Sadar Upazila'),
(136, 50, 'Belaichhari Upazila'),
(137, 50, 'Bagaichhari Upazila'),
(138, 50, 'Barkal Upazila'),
(139, 50, 'Juraichhari Upazila'),
(140, 50, 'Rajasthali Upazila'),
(141, 50, 'Kaptai Upazila'),
(142, 50, 'Langadu Upazila'),
(143, 50, 'Nannerchar Upazila'),
(144, 50, 'Kaukhali Upazila'),
(145, 1, 'Dhamrai Upazila'),
(146, 1, 'Dohar Upazila'),
(147, 1, 'Keraniganj Upazila'),
(148, 1, 'Nawabganj Upazila'),
(149, 1, 'Savar Upazila'),
(150, 2, 'Faridpur Sadar Upazila'),
(151, 2, 'Boalmari Upazila'),
(152, 2, 'Alfadanga Upazila'),
(153, 2, 'Madhukhali Upazila'),
(154, 2, 'Bhanga Upazila'),
(155, 2, 'Nagarkanda Upazila'),
(156, 2, 'Charbhadrasan Upazila'),
(157, 2, 'Sadarpur Upazila'),
(158, 2, 'Shaltha Upazila'),
(159, 3, 'Gazipur Sadar-Joydebpur'),
(160, 3, 'Kaliakior'),
(161, 3, 'Kapasia'),
(162, 3, 'Sripur'),
(163, 3, 'Kaliganj'),
(164, 3, 'Tongi'),
(165, 4, 'Gopalganj Sadar Upazila'),
(166, 4, 'Kashiani Upazila'),
(167, 4, 'Kotalipara Upazila'),
(168, 4, 'Muksudpur Upazila'),
(169, 4, 'Tungipara Upazila'),
(170, 5, 'Dewanganj Upazila'),
(171, 5, 'Baksiganj Upazila'),
(172, 5, 'Islampur Upazila'),
(173, 5, 'Jamalpur Sadar Upazila'),
(174, 5, 'Madarganj Upazila'),
(175, 5, 'Melandaha Upazila'),
(176, 5, 'Sarishabari Upazila'),
(177, 5, 'Narundi Police I.C'),
(178, 6, 'Astagram Upazila'),
(179, 6, 'Bajitpur Upazila'),
(180, 6, 'Bhairab Upazila'),
(181, 6, 'Hossainpur Upazila'),
(182, 6, 'Itna Upazila'),
(183, 6, 'Karimganj Upazila'),
(184, 6, 'Katiadi Upazila'),
(185, 6, 'Kishoreganj Sadar Upazila'),
(186, 6, 'Kuliarchar Upazila'),
(187, 6, 'Mithamain Upazila'),
(188, 6, 'Nikli Upazila'),
(189, 6, 'Pakundia Upazila'),
(190, 6, 'Tarail Upazila'),
(191, 7, 'Madaripur Sadar'),
(192, 7, 'Kalkini'),
(193, 7, 'Rajoir'),
(194, 7, 'Shibchar'),
(195, 8, 'Manikganj Sadar Upazila'),
(196, 8, 'Singair Upazila'),
(197, 8, 'Shibalaya Upazila'),
(198, 8, 'Saturia Upazila'),
(199, 8, 'Harirampur Upazila'),
(200, 8, 'Ghior Upazila'),
(201, 8, 'Daulatpur Upazila'),
(202, 9, 'Lohajang Upazila'),
(203, 9, 'Sreenagar Upazila'),
(204, 9, 'Munshiganj Sadar Upazila'),
(205, 9, 'Sirajdikhan Upazila'),
(206, 9, 'Tongibari Upazila'),
(207, 9, 'Gazaria Upazila'),
(208, 10, 'Bhaluka'),
(209, 10, 'Trishal'),
(210, 10, 'Haluaghat'),
(211, 10, 'Muktagachha'),
(212, 10, 'Dhobaura'),
(213, 10, 'Fulbaria'),
(214, 10, 'Gaffargaon'),
(215, 10, 'Gauripur'),
(216, 10, 'Ishwarganj'),
(217, 10, 'Mymensingh Sadar'),
(218, 10, 'Nandail'),
(219, 10, 'Phulpur'),
(220, 11, 'Araihazar Upazila'),
(221, 11, 'Sonargaon Upazila'),
(222, 11, 'Bandar'),
(223, 11, 'Naryanganj Sadar Upazila'),
(224, 11, 'Rupganj Upazila'),
(225, 11, 'Siddirgonj Upazila'),
(226, 12, 'Belabo Upazila'),
(227, 12, 'Monohardi Upazila'),
(228, 12, 'Narsingdi Sadar Upazila'),
(229, 12, 'Palash Upazila'),
(230, 12, 'Raipura Upazila, Narsingdi'),
(231, 12, 'Shibpur Upazila'),
(232, 13, 'Kendua Upazilla'),
(233, 13, 'Atpara Upazilla'),
(234, 13, 'Barhatta Upazilla'),
(235, 13, 'Durgapur Upazilla'),
(236, 13, 'Kalmakanda Upazilla'),
(237, 13, 'Madan Upazilla'),
(238, 13, 'Mohanganj Upazilla'),
(239, 13, 'Netrakona-S Upazilla'),
(240, 13, 'Purbadhala Upazilla'),
(241, 13, 'Khaliajuri Upazilla'),
(242, 14, 'Baliakandi Upazila'),
(243, 14, 'Goalandaghat Upazila'),
(244, 14, 'Pangsha Upazila'),
(245, 14, 'Kalukhali Upazila'),
(246, 14, 'Rajbari Sadar Upazila'),
(247, 15, 'Shariatpur Sadar -Palong'),
(248, 15, 'Damudya Upazila'),
(249, 15, 'Naria Upazila'),
(250, 15, 'Jajira Upazila'),
(251, 15, 'Bhedarganj Upazila'),
(252, 15, 'Gosairhat Upazila'),
(253, 16, 'Jhenaigati Upazila'),
(254, 16, 'Nakla Upazila'),
(255, 16, 'Nalitabari Upazila'),
(256, 16, 'Sherpur Sadar Upazila'),
(257, 16, 'Sreebardi Upazila'),
(258, 17, 'Tangail Sadar Upazila'),
(259, 17, 'Sakhipur Upazila'),
(260, 17, 'Basail Upazila'),
(261, 17, 'Madhupur Upazila'),
(262, 17, 'Ghatail Upazila'),
(263, 17, 'Kalihati Upazila'),
(264, 17, 'Nagarpur Upazila'),
(265, 17, 'Mirzapur Upazila'),
(266, 17, 'Gopalpur Upazila'),
(267, 17, 'Delduar Upazila'),
(268, 17, 'Bhuapur Upazila'),
(269, 17, 'Dhanbari Upazila'),
(270, 55, 'Bagerhat Sadar Upazila'),
(271, 55, 'Chitalmari Upazila'),
(272, 55, 'Fakirhat Upazila'),
(273, 55, 'Kachua Upazila'),
(274, 55, 'Mollahat Upazila'),
(275, 55, 'Mongla Upazila'),
(276, 55, 'Morrelganj Upazila'),
(277, 55, 'Rampal Upazila'),
(278, 55, 'Sarankhola Upazila'),
(279, 56, 'Damurhuda Upazila'),
(280, 56, 'Chuadanga-S Upazila'),
(281, 56, 'Jibannagar Upazila'),
(282, 56, 'Alamdanga Upazila'),
(283, 57, 'Abhaynagar Upazila'),
(284, 57, 'Keshabpur Upazila'),
(285, 57, 'Bagherpara Upazila'),
(286, 57, 'Jessore Sadar Upazila'),
(287, 57, 'Chaugachha Upazila'),
(288, 57, 'Manirampur Upazila'),
(289, 57, 'Jhikargachha Upazila'),
(290, 57, 'Sharsha Upazila'),
(291, 58, 'Jhenaidah Sadar Upazila'),
(292, 58, 'Maheshpur Upazila'),
(293, 58, 'Kaliganj Upazila'),
(294, 58, 'Kotchandpur Upazila'),
(295, 58, 'Shailkupa Upazila'),
(296, 58, 'Harinakunda Upazila'),
(297, 59, 'Terokhada Upazila'),
(298, 59, 'Batiaghata Upazila'),
(299, 59, 'Dacope Upazila'),
(300, 59, 'Dumuria Upazila'),
(301, 59, 'Dighalia Upazila'),
(302, 59, 'Koyra Upazila'),
(303, 59, 'Paikgachha Upazila'),
(304, 59, 'Phultala Upazila'),
(305, 59, 'Rupsa Upazila'),
(306, 60, 'Kushtia Sadar'),
(307, 60, 'Kumarkhali'),
(308, 60, 'Daulatpur'),
(309, 60, 'Mirpur'),
(310, 60, 'Bheramara'),
(311, 60, 'Khoksa'),
(312, 61, 'Magura Sadar Upazila'),
(313, 61, 'Mohammadpur Upazila'),
(314, 61, 'Shalikha Upazila'),
(315, 61, 'Sreepur Upazila'),
(316, 62, 'angni Upazila'),
(317, 62, 'Mujib Nagar Upazila'),
(318, 62, 'Meherpur-S Upazila'),
(319, 63, 'Narail-S Upazilla'),
(320, 63, 'Lohagara Upazilla'),
(321, 63, 'Kalia Upazilla'),
(322, 64, 'Satkhira Sadar Upazila'),
(323, 64, 'Assasuni Upazila'),
(324, 64, 'Debhata Upazila'),
(325, 64, 'Tala Upazila'),
(326, 64, 'Kalaroa Upazila'),
(327, 64, 'Kaliganj Upazila'),
(328, 64, 'Shyamnagar Upazila'),
(329, 18, 'Adamdighi'),
(330, 18, 'Bogra Sadar'),
(331, 18, 'Sherpur'),
(332, 18, 'Dhunat'),
(333, 18, 'Dhupchanchia'),
(334, 18, 'Gabtali'),
(335, 18, 'Kahaloo'),
(336, 18, 'Nandigram'),
(337, 18, 'Sahajanpur'),
(338, 18, 'Sariakandi'),
(339, 18, 'Shibganj'),
(340, 18, 'Sonatala'),
(341, 19, 'Joypurhat S'),
(342, 19, 'Akkelpur'),
(343, 19, 'Kalai'),
(344, 19, 'Khetlal'),
(345, 19, 'Panchbibi'),
(346, 20, 'Naogaon Sadar Upazila'),
(347, 20, 'Mohadevpur Upazila'),
(348, 20, 'Manda Upazila'),
(349, 20, 'Niamatpur Upazila'),
(350, 20, 'Atrai Upazila'),
(351, 20, 'Raninagar Upazila'),
(352, 20, 'Patnitala Upazila'),
(353, 20, 'Dhamoirhat Upazila'),
(354, 20, 'Sapahar Upazila'),
(355, 20, 'Porsha Upazila'),
(356, 20, 'Badalgachhi Upazila'),
(357, 21, 'Natore Sadar Upazila'),
(358, 21, 'Baraigram Upazila'),
(359, 21, 'Bagatipara Upazila'),
(360, 21, 'Lalpur Upazila'),
(361, 21, 'Natore Sadar Upazila'),
(362, 21, 'Baraigram Upazila'),
(363, 22, 'Bholahat Upazila'),
(364, 22, 'Gomastapur Upazila'),
(365, 22, 'Nachole Upazila'),
(366, 22, 'Nawabganj Sadar Upazila'),
(367, 22, 'Shibganj Upazila'),
(368, 23, 'Atgharia Upazila'),
(369, 23, 'Bera Upazila'),
(370, 23, 'Bhangura Upazila'),
(371, 23, 'Chatmohar Upazila'),
(372, 23, 'Faridpur Upazila'),
(373, 23, 'Ishwardi Upazila'),
(374, 23, 'Pabna Sadar Upazila'),
(375, 23, 'Santhia Upazila'),
(376, 23, 'Sujanagar Upazila'),
(377, 24, 'Bagha'),
(378, 24, 'Bagmara'),
(379, 24, 'Charghat'),
(380, 24, 'Durgapur'),
(381, 24, 'Godagari'),
(382, 24, 'Mohanpur'),
(383, 24, 'Paba'),
(384, 24, 'Puthia'),
(385, 24, 'Tanore'),
(386, 25, 'Sirajganj Sadar Upazila'),
(387, 25, 'Belkuchi Upazila'),
(388, 25, 'Chauhali Upazila'),
(389, 25, 'Kamarkhanda Upazila'),
(390, 25, 'Kazipur Upazila'),
(391, 25, 'Raiganj Upazila'),
(392, 25, 'Shahjadpur Upazila'),
(393, 25, 'Tarash Upazila'),
(394, 25, 'Ullahpara Upazila'),
(395, 26, 'Birampur Upazila'),
(396, 26, 'Birganj'),
(397, 26, 'Biral Upazila'),
(398, 26, 'Bochaganj Upazila'),
(399, 26, 'Chirirbandar Upazila'),
(400, 26, 'Phulbari Upazila'),
(401, 26, 'Ghoraghat Upazila'),
(402, 26, 'Hakimpur Upazila'),
(403, 26, 'Kaharole Upazila'),
(404, 26, 'Khansama Upazila'),
(405, 26, 'Dinajpur Sadar Upazila'),
(406, 26, 'Nawabganj'),
(407, 26, 'Parbatipur Upazila'),
(408, 27, 'Fulchhari'),
(409, 27, 'Gaibandha sadar'),
(410, 27, 'Gobindaganj'),
(411, 27, 'Palashbari'),
(412, 27, 'Sadullapur'),
(413, 27, 'Saghata'),
(414, 27, 'Sundarganj'),
(415, 28, 'Kurigram Sadar'),
(416, 28, 'Nageshwari'),
(417, 28, 'Bhurungamari'),
(418, 28, 'Phulbari'),
(419, 28, 'Rajarhat'),
(420, 28, 'Ulipur'),
(421, 28, 'Chilmari'),
(422, 28, 'Rowmari'),
(423, 28, 'Char Rajibpur'),
(424, 29, 'Lalmanirhat Sadar'),
(425, 29, 'Aditmari'),
(426, 29, 'Kaliganj'),
(427, 29, 'Hatibandha'),
(428, 29, 'Patgram'),
(429, 30, 'Nilphamari Sadar'),
(430, 30, 'Saidpur'),
(431, 30, 'Jaldhaka'),
(432, 30, 'Kishoreganj'),
(433, 30, 'Domar'),
(434, 30, 'Dimla'),
(435, 31, 'Panchagarh Sadar'),
(436, 31, 'Debiganj'),
(437, 31, 'Boda'),
(438, 31, 'Atwari'),
(439, 31, 'Tetulia'),
(440, 32, 'Badarganj'),
(441, 32, 'Mithapukur'),
(442, 32, 'Gangachara'),
(443, 32, 'Kaunia'),
(444, 32, 'Rangpur Sadar'),
(445, 32, 'Pirgachha'),
(446, 32, 'Pirganj'),
(447, 32, 'Taraganj'),
(448, 33, 'Thakurgaon Sadar Upazila'),
(449, 33, 'Pirganj Upazila'),
(450, 33, 'Baliadangi Upazila'),
(451, 33, 'Haripur Upazila'),
(452, 33, 'Ranisankail Upazila'),
(453, 51, 'Ajmiriganj'),
(454, 51, 'Baniachang'),
(455, 51, 'Bahubal'),
(456, 51, 'Chunarughat'),
(457, 51, 'Habiganj Sadar'),
(458, 51, 'Lakhai'),
(459, 51, 'Madhabpur'),
(460, 51, 'Nabiganj'),
(461, 51, 'Shaistagonj Upazila'),
(462, 52, 'Moulvibazar Sadar'),
(463, 52, 'Barlekha'),
(464, 52, 'Juri'),
(465, 52, 'Kamalganj'),
(466, 52, 'Kulaura'),
(467, 52, 'Rajnagar'),
(468, 52, 'Sreemangal'),
(469, 53, 'Bishwamvarpur'),
(470, 53, 'Chhatak'),
(471, 53, 'Derai'),
(472, 53, 'Dharampasha'),
(473, 53, 'Dowarabazar'),
(474, 53, 'Jagannathpur'),
(475, 53, 'Jamalganj'),
(476, 53, 'Sulla'),
(477, 53, 'Sunamganj Sadar'),
(478, 53, 'Shanthiganj'),
(479, 53, 'Tahirpur'),
(480, 54, 'Sylhet Sadar'),
(481, 54, 'Beanibazar'),
(482, 54, 'Bishwanath'),
(483, 54, 'Dakshin Surma Upazila'),
(484, 54, 'Balaganj'),
(485, 54, 'Companiganj'),
(486, 54, 'Fenchuganj'),
(487, 54, 'Golapganj'),
(488, 54, 'Gowainghat'),
(489, 54, 'Jaintiapur'),
(490, 54, 'Kanaighat'),
(491, 54, 'Zakiganj'),
(492, 54, 'Nobigonj');

-- --------------------------------------------------------

--
-- Table structure for table `venu`
--

CREATE TABLE `venu` (
  `id` int(10) UNSIGNED NOT NULL,
  `venu` varchar(256) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admitcard`
--
ALTER TABLE `admitcard`
  ADD KEY `FK_admitcard_1` (`apply_id`),
  ADD KEY `FK_admitcard_2` (`hall_id`);

--
-- Indexes for table `apply`
--
ALTER TABLE `apply`
  ADD PRIMARY KEY (`id`),
  ADD KEY `FK_apply_1` (`people_id`),
  ADD KEY `FK_apply_2` (`session_form_postdesignation_id`);

--
-- Indexes for table `apply_transaction`
--
ALTER TABLE `apply_transaction`
  ADD KEY `FK_apply_transaction_1` (`apply_id`);

--
-- Indexes for table `executive`
--
ALTER TABLE `executive`
  ADD PRIMARY KEY (`id`),
  ADD KEY `FK_executive_1` (`executive_type_id`);

--
-- Indexes for table `executive_basic`
--
ALTER TABLE `executive_basic`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `executive_pass`
--
ALTER TABLE `executive_pass`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `executive_type`
--
ALTER TABLE `executive_type`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `hall`
--
ALTER TABLE `hall`
  ADD PRIMARY KEY (`id`),
  ADD KEY `FK_hall_1` (`venu_id`);

--
-- Indexes for table `people`
--
ALTER TABLE `people`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `people_basic`
--
ALTER TABLE `people_basic`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `nid` (`nid`),
  ADD KEY `FK_people_basic_2` (`gender_id`),
  ADD KEY `FK_people_basic_3` (`religion_id`),
  ADD KEY `FK_people_basic_4` (`ethnicity_id`),
  ADD KEY `FK_people_basic_5` (`nationality_id`),
  ADD KEY `FK_people_basic_6` (`marriage_id`);

--
-- Indexes for table `people_date`
--
ALTER TABLE `people_date`
  ADD KEY `FK_people_date_1` (`people_id`),
  ADD KEY `FK_people_date_2` (`people_infotype_id`);

--
-- Indexes for table `people_float`
--
ALTER TABLE `people_float`
  ADD KEY `FK_people_float_1` (`people_id`),
  ADD KEY `FK_people_float_2` (`people_infotype_id`);

--
-- Indexes for table `people_hash`
--
ALTER TABLE `people_hash`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `people_infotype`
--
ALTER TABLE `people_infotype`
  ADD PRIMARY KEY (`id`),
  ADD KEY `FK_people_infotype_2` (`infotype_type_id`);

--
-- Indexes for table `people_infotype_type`
--
ALTER TABLE `people_infotype_type`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `people_integer`
--
ALTER TABLE `people_integer`
  ADD KEY `FK_people_integer_1` (`people_id`),
  ADD KEY `FK_people_integer_2` (`people_infotype_id`);

--
-- Indexes for table `people_nationality`
--
ALTER TABLE `people_nationality`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `people_pass`
--
ALTER TABLE `people_pass`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `people_spouse`
--
ALTER TABLE `people_spouse`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `people_text`
--
ALTER TABLE `people_text`
  ADD KEY `FK_people_text_1` (`people_id`),
  ADD KEY `FK_people_text_2` (`people_infotype_id`);

--
-- Indexes for table `people_time`
--
ALTER TABLE `people_time`
  ADD KEY `FK_people_time_1` (`people_id`),
  ADD KEY `FK_people_time_2` (`people_infotype_id`);

--
-- Indexes for table `people_varchar`
--
ALTER TABLE `people_varchar`
  ADD KEY `FK_people_varchar_1` (`people_id`),
  ADD KEY `FK_people_varchar_2` (`people_infotype_id`);

--
-- Indexes for table `postdesignation`
--
ALTER TABLE `postdesignation`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sessiontitle`
--
ALTER TABLE `sessiontitle`
  ADD PRIMARY KEY (`id`),
  ADD KEY `FK_sessiontitle_1` (`creator_id`),
  ADD KEY `FK_sessiontitle_2` (`modifier_id`);

--
-- Indexes for table `sessiontitle_postdesignation`
--
ALTER TABLE `sessiontitle_postdesignation`
  ADD PRIMARY KEY (`id`),
  ADD KEY `FK_session_form_postdesignation_2` (`postdesignation_id`),
  ADD KEY `FK_session_form_postdesignation_1` (`sessiontitle_id`) USING BTREE;

--
-- Indexes for table `sys_districts`
--
ALTER TABLE `sys_districts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sys_divisions`
--
ALTER TABLE `sys_divisions`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sys_edu_board`
--
ALTER TABLE `sys_edu_board`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sys_edu_examinations`
--
ALTER TABLE `sys_edu_examinations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sys_edu_subject`
--
ALTER TABLE `sys_edu_subject`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sys_edu_univiersities`
--
ALTER TABLE `sys_edu_univiersities`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sys_gender`
--
ALTER TABLE `sys_gender`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sys_marriage`
--
ALTER TABLE `sys_marriage`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sys_qouta`
--
ALTER TABLE `sys_qouta`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sys_religion`
--
ALTER TABLE `sys_religion`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sys_upazilas`
--
ALTER TABLE `sys_upazilas`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `venu`
--
ALTER TABLE `venu`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `apply`
--
ALTER TABLE `apply`
  MODIFY `id` int(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `executive`
--
ALTER TABLE `executive`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `executive_type`
--
ALTER TABLE `executive_type`
  MODIFY `id` int(2) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `hall`
--
ALTER TABLE `hall`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `people`
--
ALTER TABLE `people`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `people_basic`
--
ALTER TABLE `people_basic`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `people_hash`
--
ALTER TABLE `people_hash`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `people_infotype`
--
ALTER TABLE `people_infotype`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=42;

--
-- AUTO_INCREMENT for table `people_infotype_type`
--
ALTER TABLE `people_infotype_type`
  MODIFY `id` int(1) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `people_nationality`
--
ALTER TABLE `people_nationality`
  MODIFY `id` int(3) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `people_spouse`
--
ALTER TABLE `people_spouse`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `postdesignation`
--
ALTER TABLE `postdesignation`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `sessiontitle`
--
ALTER TABLE `sessiontitle`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `sessiontitle_postdesignation`
--
ALTER TABLE `sessiontitle_postdesignation`
  MODIFY `id` int(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `sys_districts`
--
ALTER TABLE `sys_districts`
  MODIFY `id` int(2) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=65;

--
-- AUTO_INCREMENT for table `sys_divisions`
--
ALTER TABLE `sys_divisions`
  MODIFY `id` int(2) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `sys_edu_board`
--
ALTER TABLE `sys_edu_board`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `sys_edu_examinations`
--
ALTER TABLE `sys_edu_examinations`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=48;

--
-- AUTO_INCREMENT for table `sys_edu_subject`
--
ALTER TABLE `sys_edu_subject`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=124;

--
-- AUTO_INCREMENT for table `sys_edu_univiersities`
--
ALTER TABLE `sys_edu_univiersities`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=160;

--
-- AUTO_INCREMENT for table `sys_gender`
--
ALTER TABLE `sys_gender`
  MODIFY `id` int(1) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `sys_marriage`
--
ALTER TABLE `sys_marriage`
  MODIFY `id` int(1) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `sys_qouta`
--
ALTER TABLE `sys_qouta`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `sys_religion`
--
ALTER TABLE `sys_religion`
  MODIFY `id` int(2) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `sys_upazilas`
--
ALTER TABLE `sys_upazilas`
  MODIFY `id` int(2) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=493;

--
-- AUTO_INCREMENT for table `venu`
--
ALTER TABLE `venu`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `admitcard`
--
ALTER TABLE `admitcard`
  ADD CONSTRAINT `FK_admitcard_1` FOREIGN KEY (`apply_id`) REFERENCES `apply` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `FK_admitcard_2` FOREIGN KEY (`hall_id`) REFERENCES `hall` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `apply`
--
ALTER TABLE `apply`
  ADD CONSTRAINT `FK_apply_1` FOREIGN KEY (`people_id`) REFERENCES `people` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `FK_apply_2` FOREIGN KEY (`session_form_postdesignation_id`) REFERENCES `sessiontitle_postdesignation` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `apply_transaction`
--
ALTER TABLE `apply_transaction`
  ADD CONSTRAINT `FK_apply_transaction_1` FOREIGN KEY (`apply_id`) REFERENCES `apply` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `executive`
--
ALTER TABLE `executive`
  ADD CONSTRAINT `FK_executive_1` FOREIGN KEY (`executive_type_id`) REFERENCES `executive_type` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `executive_basic`
--
ALTER TABLE `executive_basic`
  ADD CONSTRAINT `FK_executive_basic_1` FOREIGN KEY (`id`) REFERENCES `executive` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `executive_pass`
--
ALTER TABLE `executive_pass`
  ADD CONSTRAINT `FK_executive_pass_1` FOREIGN KEY (`id`) REFERENCES `executive` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `hall`
--
ALTER TABLE `hall`
  ADD CONSTRAINT `FK_hall_1` FOREIGN KEY (`venu_id`) REFERENCES `venu` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `people_basic`
--
ALTER TABLE `people_basic`
  ADD CONSTRAINT `FK_people_basic_1` FOREIGN KEY (`id`) REFERENCES `people` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `FK_people_basic_2` FOREIGN KEY (`gender_id`) REFERENCES `sys_gender` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `FK_people_basic_3` FOREIGN KEY (`religion_id`) REFERENCES `sys_religion` (`id`) ON DELETE NO ACTION ON UPDATE CASCADE,
  ADD CONSTRAINT `FK_people_basic_5` FOREIGN KEY (`nationality_id`) REFERENCES `people_nationality` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `FK_people_basic_6` FOREIGN KEY (`marriage_id`) REFERENCES `sys_marriage` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `people_date`
--
ALTER TABLE `people_date`
  ADD CONSTRAINT `FK_people_date_1` FOREIGN KEY (`people_id`) REFERENCES `people` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `FK_people_date_2` FOREIGN KEY (`people_infotype_id`) REFERENCES `people_infotype` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `people_float`
--
ALTER TABLE `people_float`
  ADD CONSTRAINT `FK_people_float_1` FOREIGN KEY (`people_id`) REFERENCES `people` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `FK_people_float_2` FOREIGN KEY (`people_infotype_id`) REFERENCES `people_infotype` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `people_hash`
--
ALTER TABLE `people_hash`
  ADD CONSTRAINT `FK_people_hash_1` FOREIGN KEY (`id`) REFERENCES `people` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `people_infotype`
--
ALTER TABLE `people_infotype`
  ADD CONSTRAINT `FK_people_infotype_2` FOREIGN KEY (`infotype_type_id`) REFERENCES `people_infotype_type` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `people_integer`
--
ALTER TABLE `people_integer`
  ADD CONSTRAINT `FK_people_integer_1` FOREIGN KEY (`people_id`) REFERENCES `people` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `FK_people_integer_2` FOREIGN KEY (`people_infotype_id`) REFERENCES `people_infotype` (`id`);

--
-- Constraints for table `people_pass`
--
ALTER TABLE `people_pass`
  ADD CONSTRAINT `FK_people_pass_1` FOREIGN KEY (`id`) REFERENCES `people` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `people_text`
--
ALTER TABLE `people_text`
  ADD CONSTRAINT `FK_people_text_1` FOREIGN KEY (`people_id`) REFERENCES `people` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `FK_people_text_2` FOREIGN KEY (`people_infotype_id`) REFERENCES `people_infotype` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `people_time`
--
ALTER TABLE `people_time`
  ADD CONSTRAINT `FK_people_time_1` FOREIGN KEY (`people_id`) REFERENCES `people` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `FK_people_time_2` FOREIGN KEY (`people_infotype_id`) REFERENCES `people_infotype` (`id`);

--
-- Constraints for table `people_varchar`
--
ALTER TABLE `people_varchar`
  ADD CONSTRAINT `FK_people_varchar_1` FOREIGN KEY (`people_id`) REFERENCES `people` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `FK_people_varchar_2` FOREIGN KEY (`people_infotype_id`) REFERENCES `people_infotype` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `sessiontitle`
--
ALTER TABLE `sessiontitle`
  ADD CONSTRAINT `FK_sessiontitle_1` FOREIGN KEY (`creator_id`) REFERENCES `executive` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `FK_sessiontitle_2` FOREIGN KEY (`modifier_id`) REFERENCES `executive` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `sessiontitle_postdesignation`
--
ALTER TABLE `sessiontitle_postdesignation`
  ADD CONSTRAINT `FK_session_form_postdesignation_2` FOREIGN KEY (`postdesignation_id`) REFERENCES `postdesignation` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `FK_sessiontitle_postdesignation_2` FOREIGN KEY (`sessiontitle_id`) REFERENCES `sessiontitle` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `sys_districts`
--
ALTER TABLE `sys_districts`
  ADD CONSTRAINT `sys_districts_ibfk_1` FOREIGN KEY (`division_id`) REFERENCES `sys_divisions` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `sys_upazilas`
--
ALTER TABLE `sys_upazilas`
  ADD CONSTRAINT `sys_upazilas_ibfk_1` FOREIGN KEY (`district_id`) REFERENCES `sys_districts` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
