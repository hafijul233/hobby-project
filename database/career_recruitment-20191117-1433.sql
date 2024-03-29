-- phpMyAdmin SQL Dump
-- version 4.9.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Nov 17, 2019 at 09:33 AM
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
-- Table structure for table `degree_subject`
--

CREATE TABLE `degree_subject` (
  `id` int(10) NOT NULL,
  `name` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `exam_level_id` int(10) NOT NULL,
  `exam_name_id` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `degree_subject`
--

INSERT INTO `degree_subject` (`id`, `name`, `exam_level_id`, `exam_name_id`) VALUES
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
-- Table structure for table `districts`
--

CREATE TABLE `districts` (
  `id` int(2) UNSIGNED NOT NULL,
  `division_id` int(2) UNSIGNED NOT NULL,
  `name` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `districts`
--

INSERT INTO `districts` (`id`, `division_id`, `name`) VALUES
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
-- Table structure for table `divisions`
--

CREATE TABLE `divisions` (
  `id` int(2) UNSIGNED NOT NULL,
  `name` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `divisions`
--

INSERT INTO `divisions` (`id`, `name`) VALUES
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
  `gender_id` int(1) UNSIGNED NOT NULL,
  `religion_id` int(2) UNSIGNED NOT NULL,
  `ethnicity_id` int(3) UNSIGNED NOT NULL,
  `nationality_id` int(3) UNSIGNED NOT NULL,
  `marriage_id` int(1) UNSIGNED NOT NULL,
  `nid` varchar(128) COLLATE utf8_unicode_ci NOT NULL,
  `email` varchar(256) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `people_board`
--

CREATE TABLE `people_board` (
  `id` int(11) NOT NULL,
  `board` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `exam_level_id` int(10) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `people_board`
--

INSERT INTO `people_board` (`id`, `board`, `exam_level_id`) VALUES
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
-- Table structure for table `people_date`
--

CREATE TABLE `people_date` (
  `people_id` int(10) UNSIGNED NOT NULL,
  `people_infotype_id` int(10) UNSIGNED NOT NULL,
  `people_date` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `people_ethnicity`
--

CREATE TABLE `people_ethnicity` (
  `id` int(3) UNSIGNED NOT NULL,
  `ethnicity` varchar(64) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `people_ethnicity`
--

INSERT INTO `people_ethnicity` (`id`, `ethnicity`) VALUES
(1, 'Banglali'),
(2, 'Chakma'),
(3, 'Marma'),
(4, 'Munda'),
(5, 'Garo'),
(6, 'Oraon or Kurukh'),
(7, 'Santal'),
(8, 'Mru'),
(9, 'Manipuri'),
(10, 'Zo or Zomi');

-- --------------------------------------------------------

--
-- Table structure for table `people_examinations`
--

CREATE TABLE `people_examinations` (
  `id` int(10) NOT NULL,
  `exam_name` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `exam_level_id` int(10) NOT NULL COMMENT '0-> V/V|||, 1 -> SSC, 2->HSC, 3->Graduate, 4->Master, 5->'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `people_examinations`
--

INSERT INTO `people_examinations` (`id`, `exam_name`, `exam_level_id`) VALUES
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
-- Table structure for table `people_float`
--

CREATE TABLE `people_float` (
  `people_id` int(10) UNSIGNED NOT NULL,
  `people_infotype_id` int(10) UNSIGNED NOT NULL,
  `people_float` double NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `people_gender`
--

CREATE TABLE `people_gender` (
  `id` int(1) UNSIGNED NOT NULL,
  `gender` varchar(32) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `people_gender`
--

INSERT INTO `people_gender` (`id`, `gender`) VALUES
(1, 'Male'),
(2, 'Female'),
(3, 'Other');

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
(1, 'Name of Husband or Wife', 4),
(2, 'Number of Children', 1),
(3, 'Yearly Income (TK)', 2),
(4, 'Mobile', 4);

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
-- Table structure for table `people_marriage`
--

CREATE TABLE `people_marriage` (
  `id` int(1) UNSIGNED NOT NULL,
  `marriage` varchar(32) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `people_marriage`
--

INSERT INTO `people_marriage` (`id`, `marriage`) VALUES
(1, 'Single'),
(2, 'Married');

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
-- Table structure for table `people_qouta`
--

CREATE TABLE `people_qouta` (
  `id` int(10) NOT NULL,
  `quota` varchar(100) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `people_qouta`
--

INSERT INTO `people_qouta` (`id`, `quota`) VALUES
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
-- Table structure for table `people_religion`
--

CREATE TABLE `people_religion` (
  `id` int(2) UNSIGNED NOT NULL,
  `religion` varchar(64) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `people_religion`
--

INSERT INTO `people_religion` (`id`, `religion`) VALUES
(1, 'Islam'),
(2, 'Hinduism'),
(3, 'Budhism'),
(4, 'Christianity'),
(5, 'Others');

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
-- Table structure for table `unions`
--

CREATE TABLE `unions` (
  `id` int(2) UNSIGNED NOT NULL,
  `upazila_id` int(2) UNSIGNED NOT NULL,
  `name` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `unions`
--

INSERT INTO `unions` (`id`, `upazila_id`, `name`) VALUES
(1, 226, 'আমলাব'),
(2, 226, 'বাজনাব'),
(3, 226, 'বেলাব'),
(4, 226, 'বিন্নাবাইদ'),
(5, 226, 'চরউজিলাব'),
(6, 226, 'নারায়নপুর'),
(7, 226, 'সল্লাবাদ'),
(8, 226, 'পাটুলী'),
(9, 226, 'দেয়ারা'),
(10, 227, 'বড়চাপা'),
(11, 227, 'চালাকচর'),
(12, 227, 'চরমান্দালিয়া'),
(13, 227, 'একদুয়ারিয়া'),
(14, 227, 'গোতাশিয়া'),
(15, 227, 'কাচিকাটা'),
(16, 227, 'খিদিরপুর'),
(17, 227, 'শুকুন্দি'),
(18, 227, 'দৌলতপুর'),
(19, 227, 'কৃষ্ণপুর ইউনিয়ন'),
(20, 227, 'লেবুতলা'),
(21, 227, 'চন্দনবাড়ী'),
(22, 228, 'আলোকবালী'),
(23, 228, 'চরদিঘলদী'),
(24, 228, 'করিমপুর'),
(25, 228, 'কাঠালিয়া'),
(26, 228, 'নূরালাপুর'),
(27, 228, 'মহিষাশুড়া'),
(28, 228, 'মেহেড়পাড়া'),
(29, 228, 'নজরপুর'),
(30, 228, 'পাইকারচর'),
(31, 228, 'পাঁচদোনা'),
(32, 228, 'শিলমান্দী'),
(33, 228, 'আমদিয়া ২'),
(34, 229, 'ডাংঙ্গা'),
(35, 229, 'চরসিন্দুর'),
(36, 229, 'জিনারদী'),
(37, 229, 'গজারিয়া'),
(38, 230, 'চানপুর'),
(39, 230, 'অলিপুরা'),
(40, 230, 'আমিরগঞ্জ'),
(41, 230, 'আদিয়াবাদ'),
(42, 230, 'বাঁশগাড়ী'),
(43, 230, 'চান্দেরকান্দি'),
(44, 230, 'চরআড়ালিয়া'),
(45, 230, 'চরমধুয়া'),
(46, 230, 'চরসুবুদ্দি'),
(47, 230, 'হাইরমারা'),
(48, 230, 'মহেষপুর'),
(49, 230, 'মির্জানগর'),
(50, 230, 'মির্জারচর'),
(51, 230, 'নিলক্ষ্যা'),
(52, 230, 'পলাশতলী'),
(53, 230, 'পাড়াতলী'),
(54, 230, 'শ্রীনগর'),
(55, 230, 'রায়পুরা'),
(56, 230, 'মুছাপুর'),
(57, 230, 'উত্তর বাখরনগর'),
(58, 230, 'মরজাল'),
(59, 231, 'দুলালপুর'),
(60, 231, 'জয়নগর'),
(61, 231, 'সাধারচর'),
(62, 231, 'মাছিমপুর'),
(63, 231, 'চক্রধা'),
(64, 231, 'যোশর'),
(65, 231, 'বাঘাব'),
(66, 231, 'আয়ুবপুর'),
(67, 231, 'পুটিয়া'),
(68, 163, 'বাহাদুরশাদী'),
(69, 163, 'বক্তারপুর'),
(70, 163, 'জামালপুর'),
(71, 163, 'জাঙ্গালিয়া'),
(72, 163, 'মোক্তারপুর'),
(73, 163, 'নাগরী'),
(74, 163, 'তুমুলিয়া'),
(75, 160, 'আটাবহ'),
(76, 160, 'বোয়ালী'),
(77, 160, 'চাপাইর'),
(78, 160, 'ঢালজোড়া'),
(79, 160, 'ফুলবাড়ীয়া'),
(80, 160, 'মধ্যপাড়া'),
(81, 160, 'মৌচাক'),
(82, 160, 'সূত্রাপুর'),
(83, 160, 'শ্রীফলতলী'),
(84, 161, 'বারিষাব'),
(85, 161, 'ঘাগটিয়া'),
(86, 161, 'কাপাসিয়া'),
(87, 161, 'চাঁদপুর'),
(88, 161, 'তরগাঁও'),
(89, 161, 'কড়িহাতা'),
(90, 161, 'টোক'),
(91, 161, 'সিংহশ্রী'),
(92, 161, 'দূর্গাপুর'),
(93, 161, 'সনমানিয়া'),
(94, 161, 'রায়েদ'),
(95, 159, 'বাড়ীয়া'),
(96, 159, 'বাসন'),
(97, 159, 'গাছা'),
(98, 159, 'কাশিমপুর'),
(99, 159, 'কাউলতিয়া'),
(100, 159, 'কোনাবাড়ী'),
(101, 159, 'মির্জাপুর'),
(102, 159, 'পূবাইল'),
(103, 162, 'বরমী'),
(104, 162, 'গাজীপুর'),
(105, 162, 'গোসিংগা'),
(106, 162, 'মাওনা'),
(107, 162, 'কাওরাইদ'),
(108, 162, 'প্রহলাদপুর'),
(109, 162, 'রাজাবাড়ী'),
(110, 162, 'তেলিহাটী'),
(111, 247, 'বিনোদপুর'),
(112, 247, 'তুলাসার'),
(113, 247, 'পালং'),
(114, 247, 'ডোমসার'),
(115, 247, 'রুদ্রকর'),
(116, 247, 'আংগারিয়া'),
(117, 247, 'চিতলয়া'),
(118, 247, 'মাহমুদপুর'),
(119, 247, 'চিকন্দি'),
(120, 247, 'চন্দ্রপুর'),
(121, 247, 'শৌলপাড়া'),
(122, 249, 'কেদারপুর'),
(123, 249, 'ডিংগামানিক'),
(124, 249, 'ঘড়িষার'),
(125, 249, 'নওপাড়া'),
(126, 249, 'মোত্তারেরচর'),
(127, 249, 'চরআত্রা'),
(128, 249, 'রাজনগর'),
(129, 249, 'জপসা'),
(130, 249, 'ভোজেশ্বর'),
(131, 249, 'ফতেজংপুর'),
(132, 249, 'বিঝারি'),
(133, 249, 'ভূমখাড়া'),
(134, 249, 'নশাসন'),
(135, 250, 'জাজিরা সদর'),
(136, 250, 'মূলনা'),
(137, 250, 'বড়কান্দি'),
(138, 250, 'বিলাসপুর'),
(139, 250, 'কুন্ডেরচর'),
(140, 250, 'পালেরচর'),
(141, 250, 'পুর্ব নাওডোবা'),
(142, 250, 'নাওডোবা'),
(143, 250, 'সেনেরচর'),
(144, 250, 'বি. কে. নগর'),
(145, 250, 'বড়গোপালপুর'),
(146, 250, 'জয়নগর'),
(147, 252, 'নাগের পাড়া'),
(148, 252, 'আলাওলপুর'),
(149, 252, 'কোদালপুর'),
(150, 252, 'গোসাইরহাট'),
(151, 252, 'ইদিলপুর'),
(152, 252, 'নলমুড়ি'),
(153, 252, 'সামন্তসার'),
(154, 252, 'কুচাইপট্টি'),
(155, 251, 'রামভদ্রপুর'),
(156, 251, 'মহিষার'),
(157, 251, 'ছয়গাঁও'),
(158, 251, 'নারায়নপুর'),
(159, 251, 'ডি.এম খালি'),
(160, 251, 'চরকুমারিয়া'),
(161, 251, 'সখিপুর'),
(162, 251, 'কাচিকাঁটা'),
(163, 251, 'উত্তর তারাবুনিয়া'),
(164, 251, 'চরভাগা'),
(165, 251, 'আরশিনগর'),
(166, 251, 'দক্ষিন তারাবুনিয়া'),
(167, 251, 'চরসেনসাস'),
(168, 248, 'শিধলকুড়া'),
(169, 248, 'কনেস্বর'),
(170, 248, 'পুর্ব ডামুড্যা'),
(171, 248, 'ইসলামপুর'),
(172, 248, 'ধানকাটি'),
(173, 248, 'সিড্যা'),
(174, 248, 'দারুল আমান'),
(175, 220, 'সাতগ্রাম'),
(176, 220, 'দুপ্তারা'),
(177, 220, 'ব্রা‏হ্মন্দী'),
(178, 220, 'ফতেপুর'),
(179, 220, 'বিশনন্দী'),
(180, 220, 'মাহমুদপুর'),
(181, 220, 'হাইজাদী'),
(182, 220, 'উচিৎপুরা'),
(183, 220, 'কালাপাহাড়িয়া'),
(184, 220, 'খাগকান্দা'),
(185, 223, 'আলিরটেক'),
(186, 223, 'কুতুবপুর'),
(187, 223, 'বক্তাবলী'),
(188, 223, 'এনায়েত নগর'),
(189, 224, 'মুড়াপাড়া'),
(190, 224, 'ভূলতা'),
(191, 224, 'গোলাকান্দাইল'),
(192, 224, 'দাউদপুর'),
(193, 224, 'রূপগঞ্জ'),
(194, 224, 'কায়েতপাড়া'),
(195, 224, 'ভোলাব'),
(196, 221, 'পিরোজপুর ইউনিয়ন'),
(197, 221, 'শম্ভুপুরা ইউনিয়ন'),
(198, 221, 'মোগরাপাড়া ইউনিয়ন'),
(199, 221, 'বৈদ্যেরবাজার ইউনিয়ন'),
(200, 221, 'বারদী ইউনিয়ন'),
(201, 221, 'নোয়াগাঁও ইউনিয়ন'),
(202, 221, 'জামপুর ইউনিয়ন'),
(203, 221, 'সাদীপুর ইউনিয়ন'),
(204, 221, 'সনমান্দি ইউনিয়ন'),
(205, 221, 'কাচপুর ইউনিয়ন'),
(206, 260, 'বাসাইল ইউনিয়ন'),
(207, 260, 'কাঞ্চনপুর ইউনিয়ন'),
(208, 260, 'হাবলা ইউনিয়ন'),
(209, 260, 'কাশিল ইউনিয়ন'),
(210, 260, 'ফুলকি ইউনিয়ন'),
(211, 260, 'কাউলজানী ইউনিয়ন'),
(212, 268, 'অর্জুনা ইউনিয়ন'),
(213, 268, 'গাবসারা ইউনিয়ন'),
(214, 268, 'ফলদা ইউনিয়ন'),
(215, 268, 'গোবিন্দাসী ইউনিয়ন'),
(216, 268, 'আলোয়া ইউনিয়ন'),
(217, 268, 'নিকরাইল ইউনিয়ন'),
(218, 267, 'দেউলী ইউনিয়ন'),
(219, 267, 'লাউহাটি ইউনিয়ন'),
(220, 267, 'পাথরাইল ইউনিয়ন'),
(221, 267, 'দেলদুয়ার ইউনিয়ন'),
(222, 267, 'ফাজিলহাটি ইউনিয়ন'),
(223, 267, 'এলাসিন ইউনিয়ন'),
(224, 267, 'আটিয়া ইউনিয়ন'),
(225, 267, 'ডুবাইল ইউনিয়ন'),
(226, 262, 'দেউলাবাড়ী ইউনিয়ন'),
(227, 262, 'ঘাটাইল ইউনিয়ন'),
(228, 262, 'জামুরিয়া ইউনিয়ন'),
(229, 262, 'লোকেরপাড়া ইউনিয়ন'),
(230, 262, 'আনেহলা ইউনিয়ন'),
(231, 262, 'দিঘলকান্দি ইউনিয়ন'),
(232, 262, 'দিগড় ইউনিয়ন'),
(233, 262, 'দেওপাড়া ইউনিয়ন'),
(234, 262, 'সন্ধানপুর ইউনিয়ন'),
(235, 262, 'রসুলপুর ইউনিয়ন'),
(236, 262, 'ধলাপাড়া ইউনিয়ন'),
(237, 266, 'হাদিরা ইউনিয়ন'),
(238, 266, 'ঝাওয়াইল ইউনিয়ন'),
(239, 266, 'নগদাশিমলা ইউনিয়ন'),
(240, 266, 'ধোপাকান্দি ইউনিয়ন'),
(241, 266, 'আলমনগর ইউনিয়ন'),
(242, 266, 'হেমনগর ইউনিয়ন'),
(243, 266, 'মির্জাপুর ইউনিয়ন'),
(244, 261, 'আলোকদিয়া ইউনিয়ন'),
(245, 261, 'আউশনারা ইউনিয়ন'),
(246, 261, 'অরণখোলা ইউনিয়ন'),
(247, 261, 'শোলাকুড়ি ইউনিয়ন'),
(248, 261, 'গোলাবাড়ী ইউনিয়ন'),
(249, 261, 'মির্জাবাড়ী ইউনিয়ন'),
(250, 265, 'মহেড়া ইউনিয়ন'),
(251, 265, 'জামুর্কী ইউনিয়ন'),
(252, 265, 'ফতেপুর ইউনিয়ন'),
(253, 265, 'বানাইল ইউনিয়ন'),
(254, 265, 'আনাইতারা ইউনিয়ন'),
(255, 265, 'ওয়ার্শী ইউনিয়ন'),
(256, 265, 'ভাতগ্রাম ইউনিয়ন'),
(257, 265, 'বহুরিয়া ইউনিয়ন'),
(258, 265, 'গোড়াই ইউনিয়ন'),
(259, 265, 'আজগানা ইউনিয়ন'),
(260, 265, 'তরফপুর ইউনিয়ন'),
(261, 265, 'বাঁশতৈল ইউনিয়ন'),
(262, 265, 'ভাওড়া ইউনিয়ন'),
(263, 265, 'লতিফপুর ইউনিয়ন'),
(264, 264, 'ভারড়া ইউনিয়ন'),
(265, 264, 'সহবতপুর ইউনিয়ন'),
(266, 264, 'গয়হাটা ইউনিয়ন'),
(267, 264, 'সলিমাবাদ ইউনিয়ন'),
(268, 264, 'নাগরপুর ইউনিয়ন'),
(269, 264, 'মামুদনগর ইউনিয়ন'),
(270, 264, 'মোকনা ইউনিয়ন'),
(271, 264, 'পাকুটিয়া ইউনিয়ন'),
(272, 264, 'বেকরা আটগ্রাম ইউনিয়ন'),
(273, 264, 'ধুবড়িয়া ইউনিয়ন'),
(274, 264, 'ভাদ্রা ইউনিয়ন'),
(275, 264, 'দপ্তিয়র ইউনিয়ন'),
(276, 259, 'কাকড়াজান ইউনিয়ন'),
(277, 259, 'গজারিয়া ইউনিয়ন'),
(278, 259, 'যাদবপুর ইউনিয়ন'),
(279, 259, 'হাতীবান্ধা ইউনিয়ন'),
(280, 259, 'কালিয়া ইউনিয়ন'),
(281, 259, 'দরিয়াপুর ইউনিয়ন'),
(282, 259, 'কালমেঘা ইউনিয়ন'),
(283, 259, 'বহেড়াতৈল ইউনিয়ন'),
(284, 258, 'মগড়া ইউনিয়ন'),
(285, 258, 'গালা ইউনিয়ন'),
(286, 258, 'ঘারিন্দা ইউনিয়ন'),
(287, 258, 'করটিয়া ইউনিয়ন'),
(288, 258, 'ছিলিমপুর ইউনিয়ন'),
(289, 258, 'পোড়াবাড়ী ইউনিয়ন'),
(290, 258, 'দাইন্যা ইউনিয়ন'),
(291, 258, 'বাঘিল ইউনিয়ন'),
(292, 258, 'কাকুয়া ইউনিয়ন'),
(293, 258, 'হুগড়া ইউনিয়ন'),
(294, 258, 'কাতুলী ইউনিয়ন'),
(295, 258, 'মাহমুদনগর ইউনিয়ন'),
(296, 263, 'দুর্গাপুর ইউনিয়ন'),
(297, 263, 'বীরবাসিন্দা ইউনিয়ন'),
(298, 263, 'নারান্দিয়া ইউনিয়ন'),
(299, 263, 'সহদেবপুর ইউনিয়ন'),
(300, 263, 'কোকডহরা ইউনিয়ন'),
(301, 263, 'বল্লা ইউনিয়ন'),
(302, 263, 'সল্লা ইউনিয়ন'),
(303, 263, 'নাগবাড়ী ইউনিয়ন'),
(304, 263, 'বাংড়া ইউনিয়ন'),
(305, 263, 'পাইকড়া ইউনিয়ন'),
(306, 263, 'দশকিয়া ইউনিয়ন'),
(307, 263, 'পারখী ইউনিয়ন'),
(308, 263, 'গোহালিয়াবাড়ী ইউনিয়ন'),
(309, 269, 'ধোপাখালী ইউনিয়ন'),
(310, 269, 'পাইস্কা ইউনিয়ন'),
(311, 269, 'মুশুদ্দি ইউনিয়ন'),
(312, 269, 'বলিভদ্র ইউনিয়ন'),
(313, 269, 'বীরতারা ইউনিয়ন'),
(314, 269, 'বানিয়াজান ইউনিয়ন'),
(315, 269, 'যদুনাথপুর ইউনিয়ন'),
(316, 182, 'চৌগাংগা'),
(317, 182, 'জয়সিদ্ধি'),
(318, 182, 'এলংজুরী'),
(319, 182, 'বাদলা'),
(320, 182, 'বড়িবাড়ি'),
(321, 182, 'ইটনা ইউনিয়ন'),
(322, 182, 'মৃগা'),
(323, 182, 'ধনপুর'),
(324, 182, 'রায়টুটি'),
(325, 184, 'বনগ্রাম'),
(326, 184, 'সহশ্রাম ধুলদিয়া'),
(327, 184, 'কারগাঁও'),
(328, 184, 'চান্দপুর'),
(329, 184, 'মুমুরদিয়া'),
(330, 184, 'আচমিতা'),
(331, 184, 'মসূয়া'),
(332, 184, 'লোহাজুরী'),
(333, 184, 'জালালপুর'),
(334, 180, 'সাদেকপুর'),
(335, 180, 'আগানগর'),
(336, 180, 'শিমুলকান্দি'),
(337, 180, 'গজারিয়া'),
(338, 180, 'কালিকা প্রসাদ'),
(339, 180, 'শ্রীনগর'),
(340, 180, 'শিবপুর'),
(341, 190, 'তালজাঙ্গা'),
(342, 190, 'রাউতি'),
(343, 190, 'ধলা'),
(344, 190, 'জাওয়ার'),
(345, 190, 'দামিহা'),
(346, 190, 'দিগদাইর'),
(347, 190, 'তাড়াইল-সাচাইল'),
(348, 181, 'জিনারী'),
(349, 181, 'গোবিন্দপুর'),
(350, 181, 'সিদলা'),
(351, 181, 'আড়াইবাড়িয়া'),
(352, 181, 'সাহেদল'),
(353, 181, 'পুমদি'),
(354, 189, 'জাঙ্গালিয়া'),
(355, 189, 'হোসেনদি'),
(356, 189, 'নারান্দি'),
(357, 189, 'সুখিয়া'),
(358, 189, 'পটুয়াভাঙ্গা'),
(359, 189, 'চান্দিপাশা'),
(360, 189, 'চারফারাদি'),
(361, 189, 'বুড়ুদিয়া'),
(362, 189, 'ইজারাসিন্দুর'),
(363, 189, 'পাকন্দিয়া'),
(364, 186, 'রামদী'),
(365, 186, 'উছমানপুর'),
(366, 186, 'ছয়সূতী'),
(367, 186, 'সালুয়া'),
(368, 186, 'গোবরিয়া আব্দুল্লাহপুর'),
(369, 186, 'ফরিদপুর'),
(370, 185, 'রশিদাবাদ'),
(371, 185, 'লতিবাবাদ'),
(372, 185, 'মাইজখাপন'),
(373, 185, 'মহিনন্দ'),
(374, 185, 'যশোদল'),
(375, 185, 'বৌলাই'),
(376, 185, 'বিন্নাটি'),
(377, 185, 'মারিয়া'),
(378, 185, 'চৌদ্দশত'),
(379, 185, 'কর্শাকড়িয়াইল'),
(380, 185, 'দানাপাটুলী'),
(381, 183, 'কাদিরজঙ্গল'),
(382, 183, 'গুজাদিয়া'),
(383, 183, 'কিরাটন ইউনিয়ন'),
(384, 183, 'বারঘড়িয়া'),
(385, 183, 'নিয়ামতপুর'),
(386, 183, 'দেহুন্দা'),
(387, 183, 'সুতারপাড়া'),
(388, 183, 'গুনধর'),
(389, 183, 'জয়কা'),
(390, 183, 'জাফরাবাদ'),
(391, 183, 'নোয়াবাদ'),
(392, 179, 'কৈলাগ'),
(393, 179, 'পিরিজপুর'),
(394, 179, 'গাজীরচর'),
(395, 179, 'হিলচিয়া'),
(396, 179, 'মাইজচর'),
(397, 179, 'হুমাইপর'),
(398, 179, 'হালিমপুর'),
(399, 179, 'সরারচর'),
(400, 179, 'দিলালপুর'),
(401, 179, 'দিঘীরপাড়'),
(402, 179, 'বলিয়ার্দী'),
(403, 178, 'দেওঘর'),
(404, 178, 'কাস্তুল'),
(405, 178, 'অষ্টগ্রাম সদর'),
(406, 178, 'বাঙ্গালপাড়া'),
(407, 178, 'কলমা'),
(408, 178, 'আদমপুর'),
(409, 178, 'খয়েরপুর-আব্দুল্লাপুর'),
(410, 178, 'পূর্ব অষ্টগ্রাম'),
(411, 187, 'গোপদিঘী'),
(412, 187, 'মিঠামইন'),
(413, 187, 'ঢাকী'),
(414, 187, 'ঘাগড়া'),
(415, 187, 'কেওয়ারজোর'),
(416, 187, 'কাটখাল'),
(417, 187, 'বৈরাটি'),
(418, 188, 'ছাতিরচর'),
(419, 188, 'গুরই'),
(420, 188, 'জারইতলা'),
(421, 188, 'নিকলী সদর'),
(422, 188, 'কারপাশা'),
(423, 188, 'দামপাড়া'),
(424, 188, 'সিংপুর'),
(425, 199, 'বাল্লা ইউনিয়ন'),
(426, 199, 'গালা ইউনিয়ন'),
(427, 199, 'চালা ইউনিয়ন'),
(428, 199, 'বলড়া'),
(429, 199, 'হারুকান্দি'),
(430, 199, 'বয়রা'),
(431, 199, 'রামকৃঞ্চপুর'),
(432, 199, 'গোপীনাথপুর'),
(433, 199, 'কাঞ্চনপুর'),
(434, 199, 'লেছড়াগঞ্জ'),
(435, 199, 'সুতালড়ী'),
(436, 199, 'ধূলশুড়া'),
(437, 199, 'আজিমনগর'),
(438, 198, 'বরাইদ'),
(439, 198, 'দিঘুলিয়া'),
(440, 198, 'বালিয়াটি'),
(441, 198, 'দড়গ্রাম'),
(442, 198, 'তিল্লী'),
(443, 198, 'হরগজ'),
(444, 198, 'সাটুরিয়া'),
(445, 198, 'ধানকোড়া'),
(446, 198, 'ফুকুরহাটি'),
(447, 195, 'বেতিলা-মিতরা ইউনিয়ন'),
(448, 195, 'জাগীর ইউনিয়ন'),
(449, 195, 'আটিগ্রাম ইউনিয়ন'),
(450, 195, 'দিঘী ইউনিয়ন'),
(451, 195, 'পুটাইল ইউনিয়ন'),
(452, 195, 'হাটিপাড়া ইউনিয়ন'),
(453, 195, 'ভাড়ারিয়া ইউনিয়ন'),
(454, 195, 'নবগ্রাম ইউনিয়ন'),
(455, 195, 'গড়পাড়া ইউনিয়ন'),
(456, 195, 'কৃঞ্চপুর ইউনিয়ন'),
(457, 200, 'পয়লা ইউনিয়ন'),
(458, 200, 'সিংজুড়ী ইউনিয়ন'),
(459, 200, 'বালিয়াখোড়া ইউনিয়ন'),
(460, 200, 'ঘিওর ইউনিয়ন'),
(461, 200, 'বড়টিয়া ইউনিয়ন'),
(462, 200, 'বানিয়াজুড়ী'),
(463, 200, 'নালী'),
(464, 197, 'তেওতা ইউনিয়ন'),
(465, 197, 'উথলী ইউনিয়ন'),
(466, 197, 'শিবালয় ইউনিয়ন'),
(467, 197, 'উলাইল ইউনিয়ন'),
(468, 197, 'আরুয়া ইউনিয়ন'),
(469, 197, 'মহাদেবপুর'),
(470, 197, 'শিমুলিয়া'),
(471, 201, 'চরকাটারী'),
(472, 201, 'বাচামারা'),
(473, 201, 'বাঘুটিয়া'),
(474, 201, 'জিয়নপুর'),
(475, 201, 'খলশী'),
(476, 201, 'চকমিরপুর'),
(477, 201, 'কলিয়া'),
(478, 201, 'ধামশ্বর'),
(479, 196, 'বায়রা'),
(480, 196, 'তালেবপুর'),
(481, 196, 'সিংগাইর'),
(482, 196, 'বলধারা'),
(483, 196, 'জামশা'),
(484, 196, 'চারিগ্রাম'),
(485, 196, 'শায়েস্তা'),
(486, 196, 'জয়মন্টপ'),
(487, 196, 'ধল্লা'),
(488, 196, 'জার্মিতা'),
(489, 196, 'চান্দহর'),
(490, 149, 'সাভার'),
(491, 149, 'বিরুলিয়া'),
(492, 149, 'ধামসোনা'),
(493, 149, 'শিমুলিয়া'),
(494, 149, 'আশুলিয়া'),
(495, 149, 'ইয়ারপুর'),
(496, 149, 'ভাকুর্তা'),
(497, 149, 'পাথালিয়া'),
(498, 149, 'বনগাঁও'),
(499, 149, 'কাউন্দিয়া'),
(500, 149, 'তেঁতুলঝোড়া'),
(501, 149, 'আমিনবাজার'),
(502, 145, 'চৌহাট ইউনিয়ন'),
(503, 145, 'আমতা ইউনিয়ন'),
(504, 145, 'বালিয়া ইউনিয়ন'),
(505, 145, 'যাদবপুর ইউনিয়ন'),
(506, 145, 'বাইশাকান্দা ইউনিয়ন'),
(507, 145, 'কুশুরা'),
(508, 145, 'গাংগুটিয়া'),
(509, 145, 'সানোড়া'),
(510, 145, 'সূতিপাড়া'),
(511, 145, 'সোমভাগ'),
(512, 145, 'ভাড়ারিয়া'),
(513, 145, 'ধামরাই'),
(514, 145, 'কুল্লা'),
(515, 145, 'রোয়াইল'),
(516, 145, 'সুয়াপুর'),
(517, 145, 'নান্নার'),
(518, 147, 'হযরতপুর'),
(519, 147, 'কলাতিয়া ইউনিয়ন'),
(520, 147, 'তারানগর'),
(521, 147, 'শাক্তা'),
(522, 147, 'রোহিতপুর'),
(523, 147, 'বাস্তা'),
(524, 147, 'কালিন্দি'),
(525, 147, 'জিনজিরা'),
(526, 147, 'শুভাঢ্যা ইউনিয়ন'),
(527, 147, 'তেঘরিয়া ইউনিয়ন'),
(528, 147, 'কোন্ডা ইউনিয়ন'),
(529, 147, 'আগানগর ইউনিয়ন'),
(530, 148, 'শিকারীপাড়া ইউনিয়ন'),
(531, 148, 'জয়কৃষ্ণপুর ইউনিয়ন'),
(532, 148, 'বারুয়াখালী ইউনিয়ন'),
(533, 148, 'নয়নশ্রী'),
(534, 148, 'শোল্লা ইউনিয়ন'),
(535, 148, 'যন্ত্রাইল ইউনিয়ন'),
(536, 148, 'বান্দুরা ইউনিয়ন'),
(537, 148, 'কলাকোপা ইউনিয়ন'),
(538, 148, 'বক্সনগর ইউনিয়ন'),
(539, 148, 'বাহ্রা'),
(540, 148, 'কৈলাইল'),
(541, 148, 'আগলা ইউনিয়ন'),
(542, 148, 'গালিমপুর'),
(543, 148, 'চুড়াইন'),
(544, 146, 'নয়াবাড়ী ইউনিয়ন'),
(545, 146, 'কুসুমহাটি ইউনিয়ন'),
(546, 146, 'রাইপাড়া ইউনিয়ন'),
(547, 146, 'সুতারপাড়া ইউনিয়ন'),
(548, 146, 'নারিশা ইউনিয়ন'),
(549, 146, 'মুকসুদপুর ইউনিয়ন'),
(550, 146, 'মাহমুদপুর ইউনিয়ন'),
(551, 146, 'বিলাসপুর ইউনিয়ন'),
(552, 204, 'রামপাল'),
(553, 204, 'পঞ্চসার'),
(554, 204, 'বজ্রযোগিনী'),
(555, 204, 'মহাকালী'),
(556, 204, 'চরকেওয়ার'),
(557, 204, 'মোল্লাকান্দি'),
(558, 204, 'আধারা'),
(559, 204, 'শিলই'),
(560, 204, 'বাংলাবাজার'),
(561, 203, 'বাড়েখাল'),
(562, 203, 'হাসাড়া'),
(563, 203, 'বাড়তারা'),
(564, 203, 'ষোলঘর'),
(565, 203, 'শ্রীনগর'),
(566, 203, 'পাঢাভোগ'),
(567, 203, 'শ্যামসিদ্দি'),
(568, 203, 'কুলাপাড়া'),
(569, 203, 'ভাগ্যকুল'),
(570, 203, 'বাঘড়া'),
(571, 203, 'রাঢ়ীখাল'),
(572, 203, 'কুকুটিয়া'),
(573, 203, 'আটপাড়া'),
(574, 203, 'তন্তর'),
(575, 205, 'চিত্রকোট ইউনিয়ন'),
(576, 205, 'শেখরনগার'),
(577, 205, 'রাজানগর'),
(578, 205, 'কেয়াইন'),
(579, 205, 'বাসাইল'),
(580, 205, 'বালুচর'),
(581, 205, 'লতাব্দী'),
(582, 205, 'রশুনিয়া'),
(583, 205, 'ইছাপুরা'),
(584, 205, 'বয়রাগাদি'),
(585, 205, 'মালখানগর'),
(586, 205, 'মধ্যপাড়া'),
(587, 205, 'কোলা'),
(588, 205, 'জৈনসার'),
(589, 202, 'মেদিনীমন্ডল'),
(590, 202, 'কুমারভোগ'),
(591, 202, 'হলদিয়া'),
(592, 202, 'কনকসার'),
(593, 202, 'লৌহজং-তেওটিয়া'),
(594, 202, 'বেজগাঁও'),
(595, 202, 'বৌলতলী'),
(596, 202, 'খিদিরপাড়া'),
(597, 202, 'গাওদিয়া'),
(598, 202, 'কলমা'),
(599, 207, 'গজারিয়া'),
(600, 207, 'বাউশিয়া'),
(601, 207, 'ভবেরচর'),
(602, 207, 'বালুয়াকান্দী'),
(603, 207, 'টেংগারচর'),
(604, 207, 'হোসেন্দী'),
(605, 207, 'গুয়াগাছিয়া'),
(606, 207, 'ইমামপুর'),
(607, 206, 'বেতকা'),
(608, 206, 'আব্দুল্লাপুর'),
(609, 206, 'সোনারং টংগীবাড়ী'),
(610, 206, 'আউটশাহী'),
(611, 206, 'আড়িয়ল বালিগাঁও'),
(612, 206, 'ধীপুর'),
(613, 206, 'কাঠাদিয়া শিমুলিয়া'),
(614, 206, 'যশলং'),
(615, 206, 'পাঁচগাও'),
(616, 206, 'কামারখাড়া ইউনিয়ন'),
(617, 206, 'হাসাইল বানারী'),
(618, 206, 'দিঘীরপাড়'),
(619, 246, 'মিজানপুর'),
(620, 246, 'বরাট'),
(621, 246, 'চন্দনী'),
(622, 246, 'খানগঞ্জ'),
(623, 246, 'বানীবহ'),
(624, 246, 'দাদশী'),
(625, 246, 'মুলঘর'),
(626, 246, 'বসন্তপুর'),
(627, 246, 'খানখানাপুর'),
(628, 246, 'আলীপুর'),
(629, 246, 'রামকান্তপুর'),
(630, 246, 'শহীদওহাবপুর'),
(631, 246, 'পাঁচুরিয়া'),
(632, 246, 'সুলতানপুর'),
(633, 243, 'দৌলতদিয়া'),
(634, 243, 'দেবগ্রাম'),
(635, 243, 'উজানচর'),
(636, 243, 'ছোটভাকলা'),
(637, 244, 'বাহাদুরপুর'),
(638, 244, 'হাবাসপুর'),
(639, 244, 'যশাই'),
(640, 244, 'বাবুপাড়া'),
(641, 244, 'মৌরাট'),
(642, 244, 'পাট্টা'),
(643, 244, 'সরিষা'),
(644, 244, 'কলিমহর'),
(645, 244, 'কসবামাজাইল'),
(646, 244, 'মাছপাড়া'),
(647, 242, 'ইসলামপুর'),
(648, 242, 'বহরপুর'),
(649, 242, 'নবাবপুর'),
(650, 242, 'নারুয়া'),
(651, 242, 'বালিয়াকান্দি'),
(652, 242, 'জঙ্গল'),
(653, 242, 'জামালপুর'),
(654, 245, 'কালুখালী'),
(655, 245, 'রতনদিয়া'),
(656, 245, 'কালিকাপুর'),
(657, 245, 'বোয়ালিয়া'),
(658, 245, 'মাজবাড়ী'),
(659, 245, 'মদাপুর'),
(660, 245, 'সাওরাইল'),
(661, 245, 'মৃগী'),
(662, 191, 'শিড়খাড়া'),
(663, 191, 'বাহাদুরপুর'),
(664, 191, 'কুনিয়া'),
(665, 191, 'পেয়ারপুর'),
(666, 191, 'কেন্দুয়া'),
(667, 191, 'মস্তফাপুর'),
(668, 191, 'দুধখালী'),
(669, 191, 'কালিকাপুর'),
(670, 191, 'ছিলারচর'),
(671, 191, 'পাঁচখোলা'),
(672, 191, 'ঘটমাঝি'),
(673, 191, 'ঝাউদী'),
(674, 191, 'খোয়াজপুর'),
(675, 191, 'রাস্তি'),
(676, 191, 'ধুরাইল'),
(677, 194, 'শিবচর'),
(678, 194, 'দ্বিতীয়খন্ড'),
(679, 194, 'নিলখি'),
(680, 194, 'বন্দরখোলা'),
(681, 194, 'চরজানাজাত'),
(682, 194, 'মাদবরেরচর'),
(683, 194, 'পাঁচচর'),
(684, 194, 'সন্যাসিরচর'),
(685, 194, 'কাঁঠালবাড়ী'),
(686, 194, 'কুতুবপুর'),
(687, 194, 'কাদিরপুর'),
(688, 194, 'ভান্ডারীকান্দি'),
(689, 194, 'বহেরাতলা দক্ষিণ'),
(690, 194, 'বহেরাতলা উত্তর'),
(691, 194, 'বাঁশকান্দি'),
(692, 194, 'উমেদপুর'),
(693, 194, 'ভদ্রাসন'),
(694, 194, 'শিরুয়াইল'),
(695, 194, 'দত্তপাড়া'),
(696, 192, 'আলীনগর'),
(697, 192, 'বালীগ্রাম'),
(698, 192, 'বাঁশগাড়ী'),
(699, 192, 'চরদৌলতখান'),
(700, 192, 'ডাসার'),
(701, 192, 'এনায়েতনগর'),
(702, 192, 'গোপালপুর'),
(703, 192, 'কয়ারিয়া'),
(704, 192, 'কাজীবাকাই'),
(705, 192, 'লক্ষীপুর'),
(706, 192, 'নবগ্রাম'),
(707, 192, 'রমজানপুর'),
(708, 192, 'সাহেবরামপুর'),
(709, 192, 'শিকারমঙ্গল'),
(710, 193, 'হরিদাসদী-মহেন্দ্রদী'),
(711, 193, 'কদমবাড়ী'),
(712, 193, 'বাজিতপুর'),
(713, 193, 'আমগ্রাম'),
(714, 193, 'রাজৈর'),
(715, 193, 'খালিয়া'),
(716, 193, 'ইশিবপুর'),
(717, 193, 'বদরপাশা'),
(718, 193, 'কবিরাজপুর'),
(719, 193, 'হোসেনপুর'),
(720, 193, 'পাইকপাড়া'),
(721, 165, 'জালালাবাদ'),
(722, 165, 'শুকতাইল'),
(723, 165, 'চন্দ্রদিঘলিয়া'),
(724, 165, 'গোপীনাথপুর'),
(725, 165, 'পাইককান্দি'),
(726, 165, 'উরফি'),
(727, 165, 'লতিফপুর'),
(728, 165, 'সাতপাড় ইউনিয়ন'),
(729, 165, 'সাহাপুর'),
(730, 165, 'হরিদাসপুর'),
(731, 165, 'উলপুর ইউনিয়ন'),
(732, 165, 'নিজড়া'),
(733, 165, 'করপাড়া ইউনিয়ন'),
(734, 165, 'দুর্গাপুর ইউনিয়ন'),
(735, 165, 'কাজুলিয়া'),
(736, 165, 'মাঝিগাতী'),
(737, 165, 'রঘুনাথপুর ইউনিয়ন'),
(738, 165, 'গোবরা ইউনিয়ন'),
(739, 165, 'বোড়াশী ইউনিয়ন'),
(740, 165, 'কাঠি'),
(741, 165, 'বৌলতলী'),
(742, 166, 'কাশিয়ানী'),
(743, 166, 'হাতিয়াড়া'),
(744, 166, 'ফুকরা'),
(745, 166, 'রাজপাট'),
(746, 166, 'বেথুড়ী'),
(747, 166, 'নিজামকান্দি'),
(748, 166, 'সাজাইল'),
(749, 166, 'মাহমুদপুর'),
(750, 166, 'মহেশপুর'),
(751, 166, 'ওড়াকান্দি'),
(752, 166, 'পারুলিয়া'),
(753, 166, 'রাতইল'),
(754, 166, 'পুইশুর'),
(755, 166, 'সিংগা'),
(756, 169, 'কুশলী'),
(757, 169, 'গোপালপুর'),
(758, 169, 'পাটগাতী'),
(759, 169, 'বর্ণি'),
(760, 169, 'ডুমরিয়া'),
(761, 167, 'সাদুল্লাপুর'),
(762, 167, 'রামশীল'),
(763, 167, 'বান্ধাবাড়ী'),
(764, 167, 'কলাবাড়ী'),
(765, 167, 'কুশলা'),
(766, 167, 'আমতলী'),
(767, 167, 'পিঞ্জুরী'),
(768, 167, 'ঘাঘর'),
(769, 167, 'রাধাগঞ্জ'),
(770, 167, 'হিরণ'),
(771, 167, 'কান্দি'),
(772, 168, 'উজানী'),
(773, 168, 'দিগনগর'),
(774, 168, 'পশারগাতি'),
(775, 168, 'গোবিন্দপুর'),
(776, 168, 'খান্দারপাড়া'),
(777, 168, 'বহুগ্রাম'),
(778, 168, 'বাশঁবাড়িয়া'),
(779, 168, 'ভাবড়াশুর'),
(780, 168, 'মহারাজপুর'),
(781, 168, 'বাটিকামারী'),
(782, 168, 'জলিরপাড়'),
(783, 168, 'রাঘদী'),
(784, 168, 'গোহালা'),
(785, 168, 'মোচনা'),
(786, 168, 'কাশালিয়া'),
(787, 150, 'ঈশানগোপালপুর'),
(788, 150, 'চরমাধবদিয়া'),
(789, 150, 'আলিয়াবাদ'),
(790, 150, 'নর্থচ্যানেল'),
(791, 150, 'ডিক্রিরচর'),
(792, 150, 'মাচ্চর'),
(793, 150, 'কৃষ্ণনগর'),
(794, 150, 'অম্বিকাপুর'),
(795, 150, 'কানাইপুর'),
(796, 150, 'কৈজুরী'),
(797, 150, 'গেরদা'),
(798, 152, 'বুড়াইচ'),
(799, 152, 'আলফাডাঙ্গা'),
(800, 152, 'টগরবন্দ'),
(801, 152, 'বানা'),
(802, 152, 'পাঁচুড়িয়া'),
(803, 152, 'গোপালপুর'),
(804, 151, 'বোয়ালমারী'),
(805, 151, 'দাদপুর'),
(806, 151, 'চতুল'),
(807, 151, 'ঘোষপুর'),
(808, 151, 'গুনবহা'),
(809, 151, 'চাঁদপুর'),
(810, 151, 'পরমেশ্বরদী'),
(811, 151, 'সাতৈর'),
(812, 151, 'রূপাপাত'),
(813, 151, 'শেখর'),
(814, 151, 'ময়না'),
(815, 157, 'চর বিষ্ণুপুর'),
(816, 157, 'আকোটের চর'),
(817, 157, 'চর নাসিরপুর'),
(818, 157, 'নারিকেল বাড়িয়া'),
(819, 157, 'ভাষানচর'),
(820, 157, 'কৃষ্ণপুর'),
(821, 157, 'সদরপুর'),
(822, 157, 'চর মানাইর'),
(823, 157, 'ঢেউখালী'),
(824, 155, 'চরযশোরদী'),
(825, 155, 'পুরাপাড়া'),
(826, 155, 'লস্করদিয়া'),
(827, 155, 'রামনগর'),
(828, 155, 'কাইচাইল'),
(829, 155, 'তালমা'),
(830, 155, 'ফুলসুতি'),
(831, 155, 'ডাঙ্গী'),
(832, 155, 'কোদালিয়া'),
(833, 154, 'ঘারুয়া'),
(834, 154, 'নুরুল্যাগঞ্জ'),
(835, 154, 'মানিকদহ'),
(836, 154, 'কাউলিবেড়া'),
(837, 154, 'নাছিরাবাদ'),
(838, 154, 'তুজারপুর'),
(839, 154, 'আলগী'),
(840, 154, 'চুমুরদী'),
(841, 154, 'কালামৃধা'),
(842, 154, 'আজিমনগর'),
(843, 154, 'চান্দ্রা'),
(844, 154, 'হামিরদী'),
(845, 156, 'গাজীরটেক'),
(846, 156, 'চর ভদ্রাসন'),
(847, 156, 'চর হরিরামপুর'),
(848, 156, 'চর ঝাউকান্দা'),
(849, 153, 'মধুখালী'),
(850, 153, 'জাহাপুর'),
(851, 153, 'গাজনা'),
(852, 153, 'মেগচামী'),
(853, 153, 'রায়পুর'),
(854, 153, 'বাগাট'),
(855, 153, 'ডুমাইন'),
(856, 153, 'নওপাড়া'),
(857, 153, 'কামারখালী'),
(858, 158, 'ভাওয়াল'),
(859, 158, 'আটঘর'),
(860, 158, 'মাঝারদিয়া'),
(861, 158, 'বল্লভদী'),
(862, 158, 'গট্টি'),
(863, 158, 'যদুনন্দী'),
(864, 158, 'রামকান্তপুর'),
(865, 158, 'সোনাপুর'),
(866, 88, 'সুবিল'),
(867, 88, 'গুনাইঘর (উত্তর)'),
(868, 88, 'গুনাইঘর (দক্ষিণ)'),
(869, 88, 'বড়শালঘর ইউনিয়ন'),
(870, 88, 'রাজামেহার ইউনিয়ন'),
(871, 88, 'ইউসুফপুর ইউনিয়ন'),
(872, 88, 'রসুলপুর ইউনিয়ন'),
(873, 88, 'ফতেহাবাদ ইউনিয়ন'),
(874, 88, 'এলাহাবাদ ইউনিয়ন'),
(875, 88, 'জাফরগঞ্জ ইউনিয়ন'),
(876, 88, 'ধামতী ইউনিয়ন'),
(877, 88, 'মোহনপুর'),
(878, 88, 'ভানী'),
(879, 88, 'বরকামতা'),
(880, 88, 'সুলতানপুর ইউনিয়ন'),
(881, 82, 'আগানগর'),
(882, 82, 'ভবানীপুর'),
(883, 82, 'খোশবাস (উ:)'),
(884, 82, 'খোশবাস (দ:)'),
(885, 82, 'ঝলম'),
(886, 82, 'চিতড্ডা'),
(887, 82, 'শিলমুড়ি (উ:)'),
(888, 82, 'শিলমুড়ি (দ:)'),
(889, 82, 'গালিমপুর'),
(890, 82, 'শাকপুর'),
(891, 82, 'ভাউকসার'),
(892, 82, 'আড্ডা'),
(893, 82, 'আদ্রা'),
(894, 82, 'পয়ালগাছা'),
(895, 82, 'লক্ষীপুর'),
(896, 83, 'শিদলাই ইউনিয়ন'),
(897, 83, 'চান্দলা ইউনিয়ন'),
(898, 83, 'শশীদল ইউনিয়ন'),
(899, 83, 'দুলালপুর (২) ইউনিয়ন'),
(900, 83, 'ব্রাহ্মনপাড়া সদর ইউনিয়ন'),
(901, 83, 'সাহেবাবাদ ইউনিয়ন'),
(902, 83, 'মালাপাড়া ইউনিয়ন'),
(903, 83, 'মাধবপুর'),
(904, 85, 'সুহিলপুর'),
(905, 85, 'বাতাঘাসি'),
(906, 85, 'জোয়াগ'),
(907, 85, 'বরকরই'),
(908, 85, 'মাধাইয়া'),
(909, 85, 'দোল্লাই নবাবপুর'),
(910, 85, 'মহিচাইল'),
(911, 85, 'গল্লাই'),
(912, 85, 'কেরণখাল'),
(913, 85, 'মাইজখার'),
(914, 85, 'এতবারপুর'),
(915, 85, 'বাড়েরা'),
(916, 85, 'বরকইট'),
(917, 86, 'শ্রীপুর'),
(918, 86, 'কাশিনগর'),
(919, 86, '২নং কালিকাপুর'),
(920, 86, '৪নং শুভপুর'),
(921, 86, '৫নং ঘোলপাশা'),
(922, 86, '৬নং মুন্সীরহাট'),
(923, 86, '৭নং বাতিসা'),
(924, 86, '৮নং কনকাপৈত'),
(925, 86, '৯নং চিওড়া'),
(926, 86, '১০ নং জগন্নাথদিঘী'),
(927, 86, '১১ নং গুনবতী'),
(928, 86, '১২নং আলকরা'),
(929, 87, 'দৌলতপুর'),
(930, 87, 'দাউদকান্দি (উত্তর)'),
(931, 87, 'ইলিয়টগঞ্জ (উত্তর)'),
(932, 87, 'ইলিয়টগঞ্জ (দক্ষিন)'),
(933, 87, 'জিংলাতলী'),
(934, 87, 'সুন্দলপুর'),
(935, 87, 'গৌরীপুর ইউনিয়ন'),
(936, 87, 'মোহাম্মদপুর (পুর্ব) ইউনিয়ন'),
(937, 87, 'মোহাম্মদপুর (পশ্চিম) ইউনিয়ন'),
(938, 87, 'গোয়ালমারী ইউনিয়ন'),
(939, 87, 'মারুকা ইউনিয়ন'),
(940, 87, 'বিটেশ্বর ইউনিয়ন'),
(941, 87, 'পদুয়া ইউনিয়ন'),
(942, 87, 'পাচঁগাছিয়া (পশ্চিম) ইউনিয়ন'),
(943, 87, 'বারপাড়া'),
(944, 89, 'মাথাভাঙ্গা'),
(945, 89, 'ঘাগুটিয়া'),
(946, 89, 'আছাদপুর'),
(947, 89, 'চান্দেরচর'),
(948, 89, 'ভাষানিয়া'),
(949, 89, 'নিলখী ইউনিয়ন'),
(950, 89, 'ঘারমোড়া ইউনিয়ন'),
(951, 89, 'জয়পুর ইউনিয়ন'),
(952, 89, 'দুলালপুর'),
(953, 91, 'বাকই'),
(954, 91, 'মুদাফফর গঞ্জ ইউনিয়ন'),
(955, 91, 'কান্দিরপাড় ইউনিয়ন'),
(956, 91, 'গোবিন্দপুর ইউনিয়ন (2)'),
(957, 91, 'উত্তরদা ইউনিয়ন'),
(958, 91, 'লাকসাম পুর্ব ইউনিয়ন'),
(959, 91, 'আজগরা ইউনিয়ন'),
(960, 94, '১নং শ্রীকাইল'),
(961, 94, '২নং আকুবপুর'),
(962, 94, '৩নং আন্দিকোট'),
(963, 94, '৪নং পুর্বধৈইর (পুর্ব)'),
(964, 94, '৫নং পুর্বধৈইর (পশ্চিম)'),
(965, 94, '৬নং বাঙ্গরা (পূর্ব)'),
(966, 94, '৭নং বাঙ্গরা (পশ্চিম)'),
(967, 94, '৮নং চাপিতলা'),
(968, 94, '৯নং কামাল্লা'),
(969, 94, '১০নং যাত্রাপুর'),
(970, 94, 'রামচন্দ্রপুর উত্তর'),
(971, 94, 'রামচন্দ্রপুর দক্ষিন'),
(972, 94, '১১ নং মুরাদনগর সদর'),
(973, 94, '১২নং নবীপুর (পুর্ব)'),
(974, 94, '১৩নং নবীপুর (পশ্চিম)'),
(975, 94, '১৪নং ধামঘর'),
(976, 94, '১৫নং জাহাপুর'),
(977, 94, '১৬নং ছালিয়াকান্দি'),
(978, 94, '১৭নং দারোরা'),
(979, 94, '১৮নং পাহাড়পুর'),
(980, 94, '২১নং বাবুটিপাড়া'),
(981, 94, '২২নং টনকী'),
(982, 95, 'বাঙ্গড্ডা'),
(983, 95, 'পেরিয়া'),
(984, 95, 'রায়কোট'),
(985, 95, 'মোকরা'),
(986, 95, 'মক্রবপুর'),
(987, 95, 'হেসাখাল'),
(988, 95, 'আদ্রা'),
(989, 95, 'জোড্ডা'),
(990, 95, 'ঢালুয়া'),
(991, 95, 'দৌলখাঁড়'),
(992, 95, 'বক্সগঞ্জ'),
(993, 95, 'সাতবাড়ীয়া ইউনিয়ন'),
(994, 90, 'কালীর বাজার ইউনিয়ন'),
(995, 90, 'দুর্গাপুর (উত্তর) ইউনিয়ন'),
(996, 90, 'দুর্গাপুর (দক্ষিন) ইউনিয়ন'),
(997, 90, 'আমড়াতলী ইউনিয়ন'),
(998, 90, 'পাঁচথুবী ইউনিয়ন'),
(999, 90, 'জগন্নাথপুর ইউনিয়ন'),
(1000, 93, 'চন্দনপুর'),
(1001, 93, '২নং চালিভাঙ্গা'),
(1002, 93, '৩নং রাধানগর'),
(1003, 93, '৪নং মানিকারচর'),
(1004, 93, '৫নং বড়কান্দা'),
(1005, 93, '৬নং গোবিন্দপুর'),
(1006, 93, '৭নং লুটেরচর'),
(1007, 93, '৮নং ভাওরখোলা'),
(1008, 92, 'বাইশগাঁও'),
(1009, 92, 'সরসপুর'),
(1010, 92, 'হাসনাবাদ'),
(1011, 92, '৪নং ঝলম উত্তর ইউনিয়ন'),
(1012, 92, '৫নং ঝলম দক্ষিন'),
(1013, 92, 'মৈশাতুয়া'),
(1014, 92, 'লক্ষনপুর'),
(1015, 92, 'খিলা ইউনিয়ন'),
(1016, 92, 'উত্তর হাওলা'),
(1017, 92, 'নাথেরপেটুয়া'),
(1018, 92, 'বিপুলাসার'),
(1019, 96, 'চৌয়ারা'),
(1020, 96, 'বারপাড়া ইউনিয়ন'),
(1021, 96, 'জোড়কানন (পুর্ব)'),
(1022, 96, 'গলিয়ারা'),
(1023, 96, 'জোড়কানন (পশ্চিম)'),
(1024, 96, 'বাগমারা (উত্তর)'),
(1025, 96, 'বাগমারা (দক্ষিন) ইউনিয়ন'),
(1026, 96, 'ভূলইন (উত্তর) ইউনিয়ন'),
(1027, 96, 'ভূলইন (দক্ষিন)'),
(1028, 96, 'বেলঘর (উত্তর)'),
(1029, 96, 'বেলঘর (দক্ষিন)'),
(1030, 96, 'পেরুল (উত্তর)'),
(1031, 96, 'পেরুল (দক্ষিন)'),
(1032, 96, 'বিজয়পুর'),
(1033, 97, '১নং সাতানী'),
(1034, 97, '২নং জগতপুর'),
(1035, 97, '৩নং বলরামপুর'),
(1036, 97, '৪নং কড়িকান্দি'),
(1037, 97, '৫নং কলাকান্দি'),
(1038, 97, '৬নং ভিটিকান্দি'),
(1039, 97, '৭নং নারান্দিয়া'),
(1040, 97, '৮নং জিয়ারকান্দি'),
(1041, 97, '৯নং মজিদপুর'),
(1042, 84, 'ময়নামতি'),
(1043, 84, 'ভারেল্লা'),
(1044, 84, 'মোকাম'),
(1045, 84, 'বুড়িচং সদর'),
(1046, 84, 'বাকশীমূল'),
(1047, 84, 'পীরযাত্রাপুর'),
(1048, 84, 'ষোলনল'),
(1049, 84, 'রাজাপুর'),
(1050, 108, 'মহামায়া'),
(1051, 108, 'পাঠাননগর'),
(1052, 108, 'শুভপুর'),
(1053, 108, 'রাধানগর'),
(1054, 108, 'ঘোপাল'),
(1055, 107, 'শর্শদি'),
(1056, 107, 'পাঁচগাছিয়া'),
(1057, 107, 'ধর্মপুর'),
(1058, 107, 'কাজিরবাগ'),
(1059, 107, 'কালিদহ'),
(1060, 107, 'বালিগাঁও'),
(1061, 107, 'ধলিয়া'),
(1062, 107, 'লেমুয়া'),
(1063, 107, 'ছনুয়া'),
(1064, 107, 'মোটবী'),
(1065, 107, 'ফাজিলপুর'),
(1066, 107, 'ফরহাদনগর'),
(1067, 112, 'চরমজলিশপুর'),
(1068, 112, 'বগাদানা'),
(1069, 112, 'মতিগঞ্জ'),
(1070, 112, 'মঙ্গলকান্দি'),
(1071, 112, 'চরদরবেশ'),
(1072, 112, 'চরচান্দিয়া'),
(1073, 112, 'সোনাগাজী'),
(1074, 112, 'আমিরাবাদ'),
(1075, 112, 'নবাবপুর'),
(1076, 111, 'ফুলগাজী'),
(1077, 111, 'মুন্সিরহাট'),
(1078, 111, 'দরবারপুর'),
(1079, 111, 'আনন্দপুর'),
(1080, 111, 'আমজাদহাট'),
(1081, 111, 'জি'),
(1082, 111, 'এম'),
(1083, 111, 'হাট'),
(1084, 110, 'মির্জানগর'),
(1085, 110, 'চিথলিয়া'),
(1086, 110, 'বক্সমাহমুদ'),
(1087, 109, 'সিন্দুরপুর'),
(1088, 109, 'রাজাপুর'),
(1089, 109, 'পূর্বচন্দ্রপুর'),
(1090, 109, 'রামনগর'),
(1091, 109, 'ইয়াকুবপুর'),
(1092, 109, 'দাগনভূঞা'),
(1093, 109, 'মাতুভূঞা'),
(1094, 109, 'জায়লস্কর'),
(1095, 50, 'বাসুদেব'),
(1096, 50, 'মাছিহাতা'),
(1097, 50, 'সুলতানপুর'),
(1098, 50, 'রামরাইল ইউনিয়ন'),
(1099, 50, 'সাদেকপুর ইউনিয়ন'),
(1100, 50, 'তালশহর'),
(1101, 50, 'নাটাই (দঃ) ইউনিয়ন'),
(1102, 50, 'নাটাই'),
(1103, 50, 'সুহিলপুর'),
(1104, 50, 'বুধল'),
(1105, 50, 'মজলিশপুর'),
(1106, 56, 'মূলগ্রাম'),
(1107, 56, 'মেহারী'),
(1108, 56, 'বাদৈর'),
(1109, 56, 'খাড়েরা'),
(1110, 56, 'বিনাউটি'),
(1111, 56, 'গোপীনাথপুর'),
(1112, 56, 'কসবা(পঃ)'),
(1113, 56, 'কুটি'),
(1114, 56, 'কাইমপুর'),
(1115, 56, 'বায়েক'),
(1116, 52, 'চাতলপাড়'),
(1117, 52, 'ভলাকুট'),
(1118, 52, 'কুন্ডা'),
(1119, 52, 'গোয়ালনগর ইউনিয়ন'),
(1120, 52, 'নাসিরনগর'),
(1121, 52, 'বুড়িশ্বর'),
(1122, 52, 'ফান্দাউক'),
(1123, 52, 'গুনিয়াউক'),
(1124, 52, 'চাপৈরতলা'),
(1125, 52, 'ধরমন্ডল'),
(1126, 52, 'হরিপুর'),
(1127, 52, 'পূর্বভাগ'),
(1128, 52, 'গোকর্ণ'),
(1129, 54, 'অরুয়াইল'),
(1130, 54, 'পাকশিমুল'),
(1131, 54, 'চুন্টা'),
(1132, 54, 'কালীকচ্ছ'),
(1133, 54, 'পানিশ্বর ইউনিয়ন'),
(1134, 54, 'সরাইল সদর'),
(1135, 54, 'নোয়াগাঁও'),
(1136, 54, 'শাহজাদাপুর'),
(1137, 54, 'শাহবাজপুর'),
(1138, 51, 'আশুগঞ্জ সদর'),
(1139, 51, 'চরচারতলা'),
(1140, 51, 'দুর্গাপুর'),
(1141, 51, 'আড়াইসিধা'),
(1142, 51, 'তালশহর(পঃ)'),
(1143, 51, 'শরীফপুর'),
(1144, 51, 'লালপুর'),
(1145, 51, 'তারুয়া'),
(1146, 57, 'মনিয়ন্দ'),
(1147, 57, 'ধরখার'),
(1148, 57, 'মোগড়া'),
(1149, 57, 'আখাউড়া (উঃ)'),
(1150, 57, 'আখাউড়া (দঃ)'),
(1151, 53, 'বড়াইল'),
(1152, 53, 'বীরগাঁও'),
(1153, 53, 'কৃষ্ণনগর'),
(1154, 53, 'নাটঘর'),
(1155, 53, 'বিদ্যাকুট'),
(1156, 53, 'নবীনগর'),
(1157, 53, 'নবীনগর(পশ্চিম)'),
(1158, 53, 'বিটঘর'),
(1159, 53, 'শিবপুর'),
(1160, 53, 'শ্রীরামপুর'),
(1161, 53, 'জিনোদপুর'),
(1162, 53, 'লাউরফতেপুর'),
(1163, 53, 'ইব্রাহিমপুর'),
(1164, 53, 'সাতমোড়া'),
(1165, 53, 'শ্যামগ্রাম'),
(1166, 53, 'রসুল্লাবাদ'),
(1167, 53, 'বড়িকান্দি'),
(1168, 53, 'ছলিমগঞ্জ'),
(1169, 53, 'রতনপুর'),
(1170, 53, 'কাইতলা (উঃ)'),
(1171, 53, 'কাইতলা'),
(1172, 58, 'তেজখালী'),
(1173, 58, 'পাহাড়িয়া কান্দি'),
(1174, 58, 'দরিয়াদৌলত'),
(1175, 58, 'সোনারামপুর'),
(1176, 58, 'দড়িকান্দি'),
(1177, 58, 'ছয়ফুল্লাকান্দি'),
(1178, 58, 'বাঞ্ছারামপুর'),
(1179, 58, 'আইয়ুবপুর'),
(1180, 58, 'ফরদাবাদ'),
(1181, 58, 'রুপসদী পশ্চিম'),
(1182, 58, 'ছলিমাবাদ'),
(1183, 58, 'উজানচর পূর্ব'),
(1184, 58, 'মানিকপুর'),
(1185, 59, 'বুধন্তি'),
(1186, 59, 'চান্দুরা'),
(1187, 59, 'ইছাপুরা'),
(1188, 59, 'চম্পকনগর'),
(1189, 59, 'হরষপুর'),
(1190, 59, 'পত্তন'),
(1191, 59, 'সিংগারবিল'),
(1192, 59, 'বিষ্ণুপুর'),
(1193, 59, 'চর-ইসলামপুর'),
(1194, 59, 'পাহাড়পুর'),
(1195, 135, '১ নং জীবতলি'),
(1196, 135, '৩ নং সাপছড়ি'),
(1197, 135, '৪ নং কুতুকছড়ি'),
(1198, 135, '৫ নং বন্দুকভাঙ্গা'),
(1199, 135, '৬ নং বালুখালী'),
(1200, 135, '২ নং মগবান'),
(1201, 141, '২ নং রাইখালী'),
(1202, 141, '৪ নং কাপ্তাই'),
(1203, 141, '৫ নং ওয়াজ্ঞা'),
(1204, 141, '১ নং চন্দ্রঘোনা'),
(1205, 141, '৩ নং চিৎমরম'),
(1206, 144, '৩ নং ঘাগড়া'),
(1207, 144, '২ নং ফটিকছড়ি'),
(1208, 144, '১ নং বেতবুনিয়া'),
(1209, 144, '৪ নং কলমপতি'),
(1210, 137, '৩৬ নং সাজেক'),
(1211, 137, '৩৭ নং আমতলী'),
(1212, 137, '৩৫ নং বঙ্গলতলী'),
(1213, 137, '৩৪ নং রুপকারী'),
(1214, 137, '৩৩ নং মারিশ্যা'),
(1215, 137, '৩১ নং খেদারমারা'),
(1216, 137, '৩০ নং সারোয়াতলী'),
(1217, 137, '৩২ নং বাঘাইছড়ি'),
(1218, 138, '১ নং সুবলং'),
(1219, 138, '২ নং বরকল'),
(1220, 138, '৪ নং ভূষনছড়া'),
(1221, 138, '৩ নং আইমাছড়া'),
(1222, 138, '৫ নং বড় হরিণা'),
(1223, 142, 'লংগদু'),
(1224, 142, 'মাইনীমুখ'),
(1225, 142, 'ভাসান্যাদম'),
(1226, 142, 'বগাচতর'),
(1227, 142, 'গুলশাখালী'),
(1228, 142, 'কালাপাকুজ্যা'),
(1229, 142, 'আটারকছড়া'),
(1230, 140, '১ নং ঘিলাছড়ি'),
(1231, 140, '২ নং গাইন্দ্যা'),
(1232, 140, '৩ নং বাঙ্গালহালিয়া'),
(1233, 136, '২ নং কেংড়াছড়ি'),
(1234, 136, '১ নং বিলাইছড়ি'),
(1235, 136, '৩ নং ফারুয়া'),
(1236, 139, 'জুরাছড়ি'),
(1237, 139, 'বনযোগীছড়া'),
(1238, 139, 'মৈদং'),
(1239, 139, 'দুমদুম্যা'),
(1240, 143, 'সাবেক্ষ্যং'),
(1241, 143, 'নানিয়ারচর'),
(1242, 143, 'বুড়িঘাট'),
(1243, 143, 'ঘিলাছড়ি'),
(1244, 126, 'চরমটুয়া'),
(1245, 126, 'দাদপুর'),
(1246, 126, 'নোয়ান্নই'),
(1247, 126, 'কাদির হানিফ'),
(1248, 126, 'বিনোদপুর'),
(1249, 126, 'ধর্মপুর'),
(1250, 126, 'এওজবালিয়া'),
(1251, 126, 'কালাদরপ'),
(1252, 126, 'অশ্বদিয়া'),
(1253, 126, 'নিয়াজপুর'),
(1254, 126, 'পূর্ব চরমটুয়া'),
(1255, 126, 'আন্ডারচর'),
(1256, 126, 'নোয়াখালী'),
(1257, 129, 'সিরাজপুর'),
(1258, 129, 'চরপার্বতী'),
(1259, 129, 'চরহাজারী'),
(1260, 129, 'চরকাঁকড়া'),
(1261, 129, 'চরফকিরা'),
(1262, 129, 'মুসাপুর'),
(1263, 129, 'চরএলাহী'),
(1264, 129, 'রামপুর'),
(1265, 127, 'আমানউল্ল্যাপুর'),
(1266, 127, 'গোপালপুর'),
(1267, 127, 'জিরতলী'),
(1268, 127, 'কুতবপুর'),
(1269, 127, 'আলাইয়ারপুর'),
(1270, 127, 'ছয়ানী'),
(1271, 127, 'রাজগঞ্জ'),
(1272, 127, 'একলাশপুর'),
(1273, 127, 'বেগমগঞ্জ'),
(1274, 127, 'মিরওয়ারিশপুর'),
(1275, 127, 'নরোত্তমপুর'),
(1276, 127, 'দূর্গাপুর'),
(1277, 127, 'রসুলপুর'),
(1278, 127, 'হাজীপুর'),
(1279, 127, 'শরীফপুর'),
(1280, 127, 'কাদিরপুর'),
(1281, 131, 'সুখচর'),
(1282, 131, 'নলচিরা'),
(1283, 131, 'চরঈশ্বর'),
(1284, 131, 'চরকিং'),
(1285, 131, 'তমরদ্দি'),
(1286, 131, 'সোনাদিয়া'),
(1287, 131, 'বুড়িরচর'),
(1288, 131, 'জাহাজমারা'),
(1289, 131, 'নিঝুমদ্বীপ'),
(1290, 134, 'চরজাব্বার'),
(1291, 134, 'চরবাটা'),
(1292, 134, 'চরক্লার্ক'),
(1293, 134, 'চরওয়াপদা'),
(1294, 134, 'চরজুবলী'),
(1295, 134, 'চরআমান'),
(1296, 134, 'পূর্ব চরবাটা'),
(1297, 134, 'মোহাম্মদপুর'),
(1298, 132, 'নরোত্তমপুর'),
(1299, 132, 'ধানসিঁড়ি'),
(1300, 132, 'সুন্দলপুর'),
(1301, 132, 'ঘোষবাগ'),
(1302, 132, 'চাপরাশিরহাট'),
(1303, 132, 'ধানশালিক'),
(1304, 132, 'বাটইয়া'),
(1305, 130, 'ছাতারপাইয়া'),
(1306, 130, 'কেশরপাড়া'),
(1307, 130, 'ডুমুরুয়া'),
(1308, 130, 'কাদরা'),
(1309, 130, 'অর্জুনতলা'),
(1310, 130, 'কাবিলপুর'),
(1311, 130, 'মোহাম্মদপুর'),
(1312, 130, 'নবীপুর'),
(1313, 130, 'বিজবাগ'),
(1314, 128, 'সাহাপুর'),
(1315, 128, 'রামনারায়নপুর'),
(1316, 128, 'পরকোট'),
(1317, 128, 'বাদলকোট'),
(1318, 128, 'পাঁচগাঁও'),
(1319, 128, 'হাট-পুকুরিয়া'),
(1320, 128, 'নোয়াখলা'),
(1321, 128, 'খিলপাড়া'),
(1322, 128, 'মোহাম্মদপুর'),
(1323, 133, 'জয়াগ'),
(1324, 133, 'নদনা'),
(1325, 133, 'চাষীরহাট'),
(1326, 133, 'বারগাঁও'),
(1327, 133, 'অম্বরনগর'),
(1328, 133, 'নাটেশ্বর'),
(1329, 133, 'বজরা'),
(1330, 133, 'সোনাপুর'),
(1331, 133, 'দেওটি'),
(1332, 133, 'আমিশাপাড়া'),
(1333, 62, 'গাজীপুর'),
(1334, 62, 'আলগী দুর্গাপুর'),
(1335, 62, 'আলগী দুর্গাপুরদক্ষিণ'),
(1336, 62, 'নীলকমল'),
(1337, 62, 'হাইমচর'),
(1338, 64, 'পাথৈর'),
(1339, 64, 'বিতারা'),
(1340, 64, 'সহদেবপুর'),
(1341, 64, 'সহদেবপুর'),
(1342, 64, 'কচুয়া'),
(1343, 64, 'কচুয়া'),
(1344, 64, 'গোহাট'),
(1345, 64, 'গোহাট'),
(1346, 64, 'সাচার'),
(1347, 67, 'টামটা দক্ষিণ'),
(1348, 67, 'টামটা উত্তর'),
(1349, 67, 'মেহের'),
(1350, 67, 'মেহের'),
(1351, 67, 'সুচিপাড়া'),
(1352, 67, 'সুচিপাড়া'),
(1353, 67, 'চিতষী'),
(1354, 67, 'রায়শ্রী'),
(1355, 67, 'রায়শ্রী'),
(1356, 67, 'চিতষী'),
(1357, 60, 'বিষ্ণপুর'),
(1358, 60, 'আশিকাটি'),
(1359, 60, 'শাহ্‌'),
(1360, 60, 'কল্যাণপুর'),
(1361, 60, 'রামপুর'),
(1362, 60, 'মৈশাদী'),
(1363, 60, 'তরপুচন্ডী'),
(1364, 60, 'বাগাদী'),
(1365, 60, 'লক্ষীপুর মডেল'),
(1366, 60, 'হানারচর'),
(1367, 60, 'চান্দ্রা'),
(1368, 60, 'রাজরাজেশ্বর'),
(1369, 60, 'ইব্রাহীমপুর'),
(1370, 60, 'বালিয়া'),
(1371, 66, 'নায়েরগাঁও উত্তর'),
(1372, 66, 'নায়েরগাঁও দক্ষিন'),
(1373, 66, 'খাদেরগাঁও'),
(1374, 66, 'নারায়নপুর'),
(1375, 66, 'উপাদী'),
(1376, 66, 'উপাদী'),
(1377, 63, 'রাজারগাঁও'),
(1378, 63, 'বাকিলা'),
(1379, 63, 'কালচোঁ উত্তর'),
(1380, 63, 'হাজীগঞ্জ সদর'),
(1381, 63, 'কালচোঁ'),
(1382, 63, 'বড়কুল'),
(1383, 63, 'বড়কুল'),
(1384, 63, 'হাটিলা'),
(1385, 63, 'হাটিলা'),
(1386, 63, 'গন্ধর্ব্যপুর'),
(1387, 63, 'গন্ধর্ব্যপুর'),
(1388, 65, 'ফতেহপুর'),
(1389, 65, 'ফতেহপুর'),
(1390, 61, 'বালিথুবা পশ্চিম ইউনিয়ন'),
(1391, 61, 'বালিথুবা পূর্ব ইউনিয়ন'),
(1392, 61, 'সুবিদপুর'),
(1393, 61, 'সুবিদপুর'),
(1394, 61, 'গুপ্তি'),
(1395, 61, 'গুপ্তি'),
(1396, 61, 'পাইকপাড়া'),
(1397, 61, 'পাইকপাড়া'),
(1398, 61, 'গবিন্দপুর'),
(1399, 61, 'গবিন্দপুর'),
(1400, 61, 'চরদুখিয়া'),
(1401, 61, 'চরদুঃখিয়া'),
(1402, 61, 'ফরিদ্গঞ্জ দক্ষিণ'),
(1403, 61, 'রুপসা'),
(1404, 61, 'রুপসা'),
(1405, 121, 'উত্তর হামছাদী'),
(1406, 121, 'দক্ষিন হামছাদী'),
(1407, 121, 'দালাল বাজার'),
(1408, 121, 'চররুহিতা'),
(1409, 121, 'পার্বতীনগর'),
(1410, 121, 'বাঙ্গাখাঁ'),
(1411, 121, 'দত্তপাড়া'),
(1412, 121, 'বশিকপুর'),
(1413, 121, 'চন্দ্রগঞ্জ'),
(1414, 121, 'উত্তর জয়পুর'),
(1415, 121, 'হাজিরপাড়া'),
(1416, 121, 'চরশাহী'),
(1417, 121, 'দিঘলী'),
(1418, 121, 'লাহারকান্দি'),
(1419, 121, 'ভবানীগঞ্জ'),
(1420, 121, 'কুশাখালী'),
(1421, 121, 'শাকচর'),
(1422, 121, 'তেয়ারীগঞ্জ'),
(1423, 121, 'টুমচর'),
(1424, 121, 'চররমনী মোহন'),
(1425, 125, 'চর কালকিনি'),
(1426, 125, 'সাহেবেরহাট'),
(1427, 125, 'চর মার্টিন'),
(1428, 125, 'চর ফলকন'),
(1429, 125, 'পাটারীরহাট'),
(1430, 125, 'হাজিরহাট'),
(1431, 125, 'চর কাদিরা'),
(1432, 125, 'তোরাবগঞ্জ'),
(1433, 125, 'চর লরেঞ্চ'),
(1434, 122, 'উত্তর চর আবাবিল'),
(1435, 122, 'উত্তর চর বংশী'),
(1436, 122, 'চর মোহনা'),
(1437, 122, 'সোনাপুর'),
(1438, 122, 'চর পাতা'),
(1439, 122, 'বামনী'),
(1440, 122, 'দক্ষিন চর বংশী'),
(1441, 122, 'দক্ষিন চর আবাবিল'),
(1442, 122, 'রায়পুর'),
(1443, 122, 'কেরোয়া'),
(1444, 124, 'চর পোড়াগাছা'),
(1445, 124, 'চর বাদাম'),
(1446, 124, 'চর আবদুল্যাহ'),
(1447, 124, 'আলেকজান্ডার'),
(1448, 124, 'চর আলগী'),
(1449, 124, 'চর রমিজ'),
(1450, 124, 'বড়খেড়ী'),
(1451, 124, 'চরগাজী'),
(1452, 123, 'কাঞ্চনপুর'),
(1453, 123, 'নোয়াগাঁও ইউনিয়ন'),
(1454, 123, 'ভাদুর'),
(1455, 123, 'ইছাপুর'),
(1456, 123, 'চন্ডিপুর'),
(1457, 123, 'লামচর'),
(1458, 123, 'দরবেশপুর'),
(1459, 123, 'করপাড়া'),
(1460, 123, 'ভোলাকোট'),
(1461, 123, 'ভাটরা'),
(1462, 77, 'রাজানগর'),
(1463, 77, 'হোছনাবাদ'),
(1464, 77, 'স্বনির্ভর রাঙ্গুনিয়া'),
(1465, 77, 'মরিয়মনগর'),
(1466, 77, 'পারুয়া'),
(1467, 77, 'পোমরা'),
(1468, 77, 'বেতাগী'),
(1469, 77, 'সরফভাটা'),
(1470, 77, 'শিলক'),
(1471, 77, 'চন্দ্রঘোনা'),
(1472, 77, 'কোদালা'),
(1473, 77, 'ইসলামপুর'),
(1474, 77, 'দক্ষিণ রাজানগর ইউনিয়ন'),
(1475, 77, 'লালানগর'),
(1476, 81, 'কুমিরা'),
(1477, 81, 'বাঁশবারীয়া'),
(1478, 81, 'বারবকুন্ড'),
(1479, 81, 'বাড়িয়াডিয়ালা'),
(1480, 81, 'মুরাদপুর'),
(1481, 81, 'সাঈদপুর'),
(1482, 81, 'সালিমপুর'),
(1483, 81, 'সোনাইছড়ি'),
(1484, 81, 'ভাটিয়ারী'),
(1485, 75, 'করেরহাট'),
(1486, 75, 'হিংগুলি'),
(1487, 75, 'জোরারগঞ্জ'),
(1488, 75, 'ধুম'),
(1489, 75, 'ওসমানপুর'),
(1490, 75, 'ইছাখালী'),
(1491, 75, 'কাটাছরা'),
(1492, 75, 'দূর্গাপুর'),
(1493, 75, 'মীরসরাই'),
(1494, 75, 'মিঠানালা'),
(1495, 75, 'মঘাদিয়া'),
(1496, 75, 'খৈয়াছরা'),
(1497, 75, 'মায়ানী'),
(1498, 75, 'হাইতকান্দি'),
(1499, 75, 'ওয়াহেদপুর'),
(1500, 75, 'সাহেরখালী'),
(1501, 76, 'আশিয়া'),
(1502, 76, 'কাচুয়াই'),
(1503, 76, 'কাশিয়াইশ'),
(1504, 76, 'কুসুমপুরা'),
(1505, 76, 'কেলিশহর'),
(1506, 76, 'কোলাগাঁও'),
(1507, 76, 'খরনা'),
(1508, 76, 'চরপাথরঘাটা'),
(1509, 76, 'চরলক্ষ্যা'),
(1510, 76, 'ছনহরা'),
(1511, 76, 'জঙ্গলখাইন'),
(1512, 76, 'জিরি'),
(1513, 76, 'জুলধা'),
(1514, 76, 'দক্ষিণ ভূর্ষি'),
(1515, 76, 'ধলঘাট'),
(1516, 76, 'বড় উঠান'),
(1517, 76, 'বরলিয়া'),
(1518, 76, 'ভাটিখাইন'),
(1519, 76, 'শিকলবাহা'),
(1520, 76, 'শোভনদন্ডী'),
(1521, 76, 'হাবিলাসদ্বীপ'),
(1522, 76, 'হাইদগাঁও'),
(1523, 79, 'রহমতপুর ইউনিয়ন'),
(1524, 79, 'হরিশপুর'),
(1525, 79, 'কালাপানিয়া'),
(1526, 79, 'আমানউল্যা'),
(1527, 79, 'সন্তোষপুর'),
(1528, 79, 'গাছুয়া'),
(1529, 79, 'বাউরিয়া'),
(1530, 79, 'হারামিয়া'),
(1531, 79, 'মগধরা'),
(1532, 79, 'মাইটভাঙ্গা'),
(1533, 79, 'সারিকাইত'),
(1534, 79, 'মুছাপুর'),
(1535, 79, 'আজিমপুর'),
(1536, 79, 'উড়িরচর'),
(1537, 69, 'পুকুরিয়া'),
(1538, 69, 'সাধনপুর'),
(1539, 69, 'খানখানাবাদ'),
(1540, 69, 'বাহারছড়া'),
(1541, 69, 'কালীপুর'),
(1542, 69, 'বৈলছড়ি'),
(1543, 69, 'কাথরিয়া'),
(1544, 69, 'সরল'),
(1545, 69, 'শীলকুপ'),
(1546, 69, 'চাম্বল'),
(1547, 69, 'গন্ডামারা'),
(1548, 69, 'শেখেরখীল'),
(1549, 69, 'পুঁইছড়ি'),
(1550, 69, 'ছনুয়া'),
(1551, 70, 'কধুরখীল'),
(1552, 70, 'পশ্চিম গোমদন্ডী'),
(1553, 70, 'পুর্ব গোমদন্ডী'),
(1554, 70, 'শাকপুরা ইউনিয়ন'),
(1555, 70, 'সারোয়াতলী'),
(1556, 70, 'পোপাদিয়া ইউনিয়ন'),
(1557, 70, 'চরনদ্বীপ'),
(1558, 70, 'শ্রীপুর-খরন্দীপ'),
(1559, 70, 'আমুচিয়া ইউনিয়ন'),
(1560, 70, 'আহল্লা করলডেঙ্গা'),
(1561, 68, 'বৈরাগ'),
(1562, 68, 'বারশত'),
(1563, 68, 'রায়পুর'),
(1564, 68, 'বটতলী'),
(1565, 68, 'বরম্নমচড়া'),
(1566, 68, 'বারখাইন'),
(1567, 68, 'আনোয়ারা'),
(1568, 68, 'চাতরী'),
(1569, 68, 'পরৈকোড়া'),
(1570, 68, 'হাইলধর'),
(1571, 68, 'জুঁইদন্ডী'),
(1572, 71, 'কাঞ্চনাবাদ'),
(1573, 71, 'জোয়ারা'),
(1574, 71, 'বরকল'),
(1575, 71, 'বরমা'),
(1576, 71, 'বৈলতলী'),
(1577, 71, 'সাতবাড়িয়া'),
(1578, 71, 'হাশিমপুর'),
(1579, 71, 'দোহাজারী'),
(1580, 71, 'ধোপাছড়ী'),
(1581, 80, 'চরতী'),
(1582, 80, 'খাগরিয়া'),
(1583, 80, 'নলুয়া'),
(1584, 80, 'কাঞ্চনা'),
(1585, 80, 'আমিলাইশ'),
(1586, 80, 'এওচিয়া'),
(1587, 80, 'মাদার্শা'),
(1588, 80, 'ঢেমশা'),
(1589, 80, 'পশ্চিম ঢেমশা'),
(1590, 80, 'কেঁওচিয়া'),
(1591, 80, 'কালিয়াইশ'),
(1592, 80, 'বাজালিয়া'),
(1593, 80, 'পুরানগড়'),
(1594, 80, 'ছদাহা'),
(1595, 80, 'সাতকানিয়া'),
(1596, 80, 'সোনাকানিয়া'),
(1597, 74, 'পদুয়া'),
(1598, 74, 'বড়হাতিয়া'),
(1599, 74, 'আমিরাবাদ'),
(1600, 74, 'চরম্বা'),
(1601, 74, 'কলাউজান'),
(1602, 74, 'লোহাগাড়া'),
(1603, 74, 'পুটিবিলা'),
(1604, 74, 'চুনতি'),
(1605, 74, 'আধুনগর'),
(1606, 73, 'ফরহাদাবাদ'),
(1607, 73, 'ধলই'),
(1608, 73, 'মির্জাপুর'),
(1609, 73, 'নাঙ্গলমোরা'),
(1610, 73, 'গুমানমর্দ্দন'),
(1611, 73, 'ছিপাতলী'),
(1612, 73, 'মেখল'),
(1613, 73, 'গড়দুয়ারা'),
(1614, 73, 'ফতেপুর'),
(1615, 73, 'চিকনদন্ডী'),
(1616, 73, 'উত্তর মাদার্শা'),
(1617, 73, 'দক্ষিন মাদার্শা'),
(1618, 73, 'শিকারপুর'),
(1619, 73, 'বুডিরশ্চর'),
(1620, 73, 'হাটহাজারী'),
(1621, 72, 'ধর্মপুর'),
(1622, 72, 'বাগান বাজার'),
(1623, 72, 'দাঁতমারা'),
(1624, 72, 'নারায়নহাট ইউনিয়ন'),
(1625, 72, 'ভূজপুর ইউনিয়ন'),
(1626, 72, 'হারুয়ালছড়ি ইউনিয়ন'),
(1627, 72, 'পাইনদং ইউনিয়ন'),
(1628, 72, 'কাঞ্চনগর ইউনিয়ন'),
(1629, 72, 'সুনদরপুর ইউনিয়ন'),
(1630, 72, 'সুয়াবিল ইউনিয়ন'),
(1631, 72, 'আবদুল্লাপুর ইউনিয়ন'),
(1632, 72, 'সমিতির হাট ইউনিয়ন'),
(1633, 72, 'জাফতনগর ইউনিয়ন'),
(1634, 72, 'বক্তপুর ইউনিয়ন'),
(1635, 72, 'রোসাংগিরী ইউনিয়ন'),
(1636, 72, 'নানুপুর ইউনিয়ন'),
(1637, 72, 'লেলাং ইউনিয়ন'),
(1638, 72, 'দৌলতপুর ইউনিয়ন'),
(1639, 78, 'রাউজান'),
(1640, 78, 'বাগোয়ান'),
(1641, 78, 'বিনাজুরী'),
(1642, 78, 'চিকদাইর'),
(1643, 78, 'ডাবুয়া'),
(1644, 78, 'পূর্ব গুজরা'),
(1645, 78, 'পশ্চিম গুজরা'),
(1646, 78, 'গহিরা'),
(1647, 78, 'হলদিয়া'),
(1648, 78, 'কদলপূর'),
(1649, 78, 'নোয়াপাড়া'),
(1650, 78, 'পাহাড়তলী'),
(1651, 78, 'উড়কিরচর'),
(1652, 78, 'নওয়াজিশপুর'),
(1653, 100, 'ইসলামাবাদ'),
(1654, 100, 'ইসলামপুর'),
(1655, 100, 'পোকখালী'),
(1656, 100, 'ঈদগাঁও'),
(1657, 100, 'জালালাবাদ'),
(1658, 100, 'চৌফলদন্ডী'),
(1659, 100, 'ভারুয়াখালী'),
(1660, 100, 'পিএমখালী'),
(1661, 100, 'খুরুশকুল'),
(1662, 100, 'ঝিলংঝা'),
(1663, 98, 'কাকারা'),
(1664, 98, 'কাইয়ার বিল'),
(1665, 98, 'কোনাখালী'),
(1666, 98, 'খুটাখালী'),
(1667, 98, 'চিরিঙ্গা'),
(1668, 98, 'ঢেমুশিয়া'),
(1669, 98, 'ডুলাহাজারা'),
(1670, 98, 'পশ্চিম বড় ভেওলা'),
(1671, 98, 'বদরখালী'),
(1672, 98, 'বামু বিলছড়ি'),
(1673, 98, 'বড়ইতলী'),
(1674, 98, 'ভেওলা মানিকচর'),
(1675, 98, 'শাহারবিল'),
(1676, 98, 'সুরজপুর মানিকপুর'),
(1677, 98, 'হারবাঙ্গ'),
(1678, 98, 'ফাঁসিয়াখালী'),
(1679, 101, 'আলি আকবর ডেইল'),
(1680, 101, 'উত্তর ধুরুং'),
(1681, 101, 'কৈয়ারবিল'),
(1682, 101, 'দক্ষিণ ধুরুং'),
(1683, 101, 'বড়ঘোপ'),
(1684, 101, 'লেমসিখালী'),
(1685, 105, 'রাজাপালং'),
(1686, 105, 'জালিয়াপালং'),
(1687, 105, 'হলদিয়াপালং'),
(1688, 105, 'রত্নাপালং'),
(1689, 105, 'পালংখালী'),
(1690, 102, 'বড় মহেশখালী'),
(1691, 102, 'ছোট মহেশখালী'),
(1692, 102, 'শাপলাপুর'),
(1693, 102, 'কুতুবজোম'),
(1694, 102, 'হোয়ানক'),
(1695, 102, 'কালারমারছড়া'),
(1696, 102, 'মাতারবাড়ী'),
(1697, 102, 'ধলঘাটা'),
(1698, 106, 'উজানটিয়া'),
(1699, 106, 'টাইটং'),
(1700, 106, 'পেকুয়া'),
(1701, 106, 'বড় বাকিয়া'),
(1702, 106, 'মগনামা'),
(1703, 106, 'রাজাখালী'),
(1704, 106, 'শীলখালী'),
(1705, 103, 'ফতেখাঁরকুল'),
(1706, 103, 'রাজারকুল'),
(1707, 103, 'রশীদনগর'),
(1708, 103, 'খুনিয়াপালং'),
(1709, 103, 'ঈদগড়'),
(1710, 103, 'চাকমারকুল'),
(1711, 103, 'কচ্ছপিয়া'),
(1712, 103, 'কাউয়ারখোপ'),
(1713, 103, 'দক্ষিণ মিঠাছড়ি'),
(1714, 103, 'জোয়ারিয়া নালা'),
(1715, 103, 'গর্জনিয়া'),
(1716, 104, 'সাবরাং'),
(1717, 104, 'বাহারছড়া'),
(1718, 104, 'হ্নীলা'),
(1719, 104, 'হোয়াইক্যং'),
(1720, 104, 'সেন্ট মার্টিন'),
(1721, 104, 'টেকনাফ সদর'),
(1722, 114, 'খাগরাছড়ি সদর'),
(1723, 114, 'গোলাবাড়ী'),
(1724, 114, 'পেরাছড়া'),
(1725, 114, 'কমলছড়ি'),
(1726, 113, 'মেরুং'),
(1727, 113, 'বোয়ালখালী'),
(1728, 113, 'কবাখালী'),
(1729, 113, 'দিঘীনালা'),
(1730, 113, 'বাবুছড়া'),
(1731, 119, 'লোগাং'),
(1732, 119, 'চেংগী'),
(1733, 119, 'পানছড়ি'),
(1734, 119, 'লতিবান'),
(1735, 115, 'দুল্যাতলী'),
(1736, 115, 'বর্মাছড়ি'),
(1737, 115, 'লক্ষীছড়ি'),
(1738, 116, 'ভাইবোনছড়া'),
(1739, 116, 'মহালছড়ি'),
(1740, 116, 'মুবাছড়ি'),
(1741, 116, 'ক্যায়াংঘাট'),
(1742, 116, 'মাইসছড়ি'),
(1743, 117, 'মানিকছড়ি'),
(1744, 117, 'বাটনাতলী'),
(1745, 117, 'যোগ্যছোলা'),
(1746, 117, 'তিনটহরী'),
(1747, 120, 'রামগড়'),
(1748, 120, 'পাতাছড়া'),
(1749, 120, 'হাফছড়ি'),
(1750, 118, 'তাইন্দং'),
(1751, 118, 'তবলছড়ি'),
(1752, 118, 'বর্ণাল'),
(1753, 118, 'গোমতি'),
(1754, 118, 'বেলছড়ি'),
(1755, 118, 'মাটিরাঙ্গা'),
(1756, 118, 'গুইমারা'),
(1757, 118, 'আমতলি'),
(1758, 43, 'রাজবিলা'),
(1759, 43, 'টংকাবতী ইউনিয়ন'),
(1760, 43, 'সুয়ালক ইউনিয়ন'),
(1761, 43, 'বান্দরবান সদর'),
(1762, 43, 'কুহালং'),
(1763, 47, 'আলীকদম সদর ইউনিয়ন'),
(1764, 47, 'চৈক্ষ্যং ইউনিয়ন'),
(1765, 46, 'নাইক্ষ্যংছড়ি সদর ইউনিয়ন'),
(1766, 46, 'ঘুমধুম ইউনিয়ন'),
(1767, 46, 'বাইশারী'),
(1768, 46, 'সোনাইছড়ি'),
(1769, 46, 'দোছড়ি'),
(1770, 48, 'রোয়াংছড়ি সদর'),
(1771, 48, 'তারাছা'),
(1772, 48, 'আলেক্ষ্যং'),
(1773, 48, 'নোয়াপতং'),
(1774, 45, 'গজালিয়া'),
(1775, 45, 'লামা সদর'),
(1776, 45, 'ফাসিয়াখালী'),
(1777, 45, 'ফাইতং'),
(1778, 45, 'রূপসীপাড়া'),
(1779, 45, 'সরই ইউনিয়ন'),
(1780, 45, 'আজিজনগর ইউনিয়ন'),
(1781, 49, 'পাইন্দু ইউনিয়ন'),
(1782, 49, 'রুমা সদর ইউনিয়ন'),
(1783, 49, 'রেমাক্রীপ্রাংসা ইউনিয়ন'),
(1784, 49, 'গ্যালেংগ্যা ইউনিয়ন'),
(1785, 44, 'রেমাক্রী ইউনিয়ন'),
(1786, 44, 'তিন্দু ইউনিয়ন'),
(1787, 44, 'থানচি সদর ইউনিয়ন'),
(1788, 44, 'বলিপাড়া ইউনিয়ন'),
(1789, 387, 'রাজাপুর'),
(1790, 387, 'বড়ধুল'),
(1791, 387, 'বেলকুচি সদর'),
(1792, 387, 'ধুকুরিয়া বেড়া'),
(1793, 387, 'দৌলতপুর'),
(1794, 387, 'ভাঙ্গাবাড়ী'),
(1795, 388, 'বাঘুটিয়া'),
(1796, 388, 'ঘোরজান'),
(1797, 388, 'খাসকাউলিয়া'),
(1798, 388, 'খাসপুকুরিয়া'),
(1799, 388, 'উমারপুর'),
(1800, 388, 'সদিয়া চাঁদপুর'),
(1801, 388, 'স্থল'),
(1802, 389, 'ভদ্রঘাট'),
(1803, 389, 'জামতৈল'),
(1804, 389, 'ঝাঐল'),
(1805, 389, 'রায়দৌলতপুর'),
(1806, 390, 'চালিতাডাঙ্গা'),
(1807, 390, 'চরগিরিশ'),
(1808, 390, 'গান্ধাইল'),
(1809, 390, 'কাজিপুর সদর'),
(1810, 390, 'খাসরাজবাড়ী'),
(1811, 390, 'মাইজবাড়ী'),
(1812, 390, 'মনসুর নগর'),
(1813, 390, 'নাটুয়ারপাড়া'),
(1814, 390, 'নিশ্চিন্তপুর'),
(1815, 390, 'সোনামুখী'),
(1816, 390, 'শুভগাছা'),
(1817, 390, 'তেকানী'),
(1818, 391, 'ব্রহ্মগাছা'),
(1819, 391, 'চান্দাইকোনা'),
(1820, 391, 'ধামাইনগর'),
(1821, 391, 'ধানগড়া'),
(1822, 391, 'ধুবিল'),
(1823, 391, 'ঘুড়কা'),
(1824, 391, 'নলকা'),
(1825, 391, 'পাঙ্গাসী'),
(1826, 391, 'সোনাখাড়া'),
(1827, 392, 'বেলতৈল'),
(1828, 392, 'জালালপুর'),
(1829, 392, 'কায়েমপুর'),
(1830, 392, 'গাড়াদহ'),
(1831, 392, 'পোতাজিয়া'),
(1832, 392, 'রূপবাটি'),
(1833, 392, 'গালা'),
(1834, 392, 'পোরজনা'),
(1835, 392, 'হাবিবুল্লাহ নগর'),
(1836, 392, 'খুকনী'),
(1837, 392, 'কৈজুরী'),
(1838, 392, 'সোনাতনী'),
(1839, 392, 'নরিনা'),
(1840, 386, 'বাগবাটি'),
(1841, 386, 'রতনকান্দি'),
(1842, 386, 'বহুলী'),
(1843, 386, 'শিয়ালকোল'),
(1844, 386, 'খোকশাবাড়ী'),
(1845, 386, 'ছোনগাছা'),
(1846, 386, 'মেছড়া'),
(1847, 386, 'কাওয়াখোলা'),
(1848, 386, 'কালিয়াহরিপুর'),
(1849, 386, 'সয়দাবাদ'),
(1850, 393, 'বারুহাস'),
(1851, 393, 'তালম'),
(1852, 393, 'সগুনা'),
(1853, 393, 'মাগুড়া বিনোদ'),
(1854, 393, 'নওগাঁ'),
(1855, 393, 'তাড়াশ সদর'),
(1856, 393, 'মাধাইনগর'),
(1857, 393, 'দেশীগ্রাম'),
(1858, 394, 'উল্লাপাড়া সদর'),
(1859, 394, 'রামকৃষ্ণপুর'),
(1860, 394, 'বাঙ্গালা'),
(1861, 394, 'উধুনিয়া'),
(1862, 394, 'বড়পাঙ্গাসী'),
(1863, 394, 'দুর্গা নগর'),
(1864, 394, 'পূর্ণিমাগাতী'),
(1865, 394, 'সলঙ্গা'),
(1866, 394, 'হটিকুমরুল'),
(1867, 394, 'বড়হর'),
(1868, 394, 'পঞ্চক্রোশী'),
(1869, 394, 'সলপ'),
(1870, 394, 'মোহনপুর'),
(1871, 376, 'ভায়না'),
(1872, 376, 'তাঁতিবন্দ'),
(1873, 376, 'মানিকহাট'),
(1874, 376, 'দুলাই'),
(1875, 376, 'আহম্মদপুর'),
(1876, 376, 'রাণীনগর'),
(1877, 376, 'সাতবাড়ীয়া'),
(1878, 376, 'হাটখালী'),
(1879, 376, 'নাজিরগঞ্জ'),
(1880, 376, 'সাগরকান্দি'),
(1881, 373, 'সাঁড়া'),
(1882, 373, 'পাকশী'),
(1883, 373, 'মুলাডুলি'),
(1884, 373, 'দাশুরিয়া'),
(1885, 373, 'ছলিমপুর'),
(1886, 373, 'সাহাপুর'),
(1887, 373, 'লক্ষীকুন্ডা'),
(1888, 370, 'ভাঙ্গুড়া'),
(1889, 370, 'খানমরিচ'),
(1890, 370, 'অষ্টমণিষা'),
(1891, 370, 'দিলপাশার'),
(1892, 370, 'পারভাঙ্গুড়া'),
(1893, 374, 'মালিগাছা'),
(1894, 374, 'মালঞ্চি'),
(1895, 374, 'গয়েশপুর'),
(1896, 374, 'আতাইকুলা'),
(1897, 374, 'চরতারাপুর'),
(1898, 374, 'সাদুল্লাপুর'),
(1899, 374, 'ভাঁড়ারা'),
(1900, 374, 'দোগাছী'),
(1901, 374, 'হেমায়েতপুর'),
(1902, 374, 'দাপুনিয়া'),
(1903, 369, 'হাটুরিয়া নাকালিয়া'),
(1904, 369, 'নতুন ভারেঙ্গা'),
(1905, 369, 'কৈটোলা'),
(1906, 369, 'চাকলা'),
(1907, 369, 'জাতসাখিনি'),
(1908, 369, 'পুরান ভারেঙ্গা'),
(1909, 369, 'রূপপুর'),
(1910, 369, 'মাসুমদিয়া'),
(1911, 369, 'ঢালার চর'),
(1912, 368, 'মাজপাড়া'),
(1913, 368, 'চাঁদভা'),
(1914, 368, 'দেবোত্তর'),
(1915, 368, 'একদন্ত'),
(1916, 368, 'লক্ষীপুর'),
(1917, 371, 'হান্ডিয়াল'),
(1918, 371, 'ছাইকোলা'),
(1919, 371, 'নিমাইচড়া'),
(1920, 371, 'গুনাইগাছা'),
(1921, 371, 'পার্শ্বডাঙ্গা'),
(1922, 371, 'ফৈলজানা'),
(1923, 371, 'মুলগ্রাম'),
(1924, 371, 'হরিপুর'),
(1925, 371, 'মথুরাপুর'),
(1926, 371, 'বিলচলন'),
(1927, 371, 'দাতিয়া বামনগ্রাম'),
(1928, 375, 'নাগডেমড়া'),
(1929, 375, 'ধুলাউড়ি'),
(1930, 375, 'ভুলবাড়ীয়া'),
(1931, 375, 'ধোপাদহ'),
(1932, 375, 'করমজা'),
(1933, 375, 'কাশিনাথপুর'),
(1934, 375, 'গৌরীগ্রাম'),
(1935, 375, 'নন্দনপুর'),
(1936, 375, 'ক্ষেতুপাড়া'),
(1937, 375, 'আর-আতাইকুলা'),
(1938, 372, 'বৃলাহিড়ীবাড়ী'),
(1939, 372, 'পুঙ্গুলি'),
(1940, 372, 'ফরিদপুর'),
(1941, 372, 'হাদল'),
(1942, 372, 'বনওয়ারীনগর'),
(1943, 372, 'ডেমড়া'),
(1944, 335, 'বীরকেদার'),
(1945, 335, 'কালাই'),
(1946, 335, 'পাইকড়'),
(1947, 335, 'নারহট্ট'),
(1948, 335, 'মুরইল'),
(1949, 335, 'কাহালু'),
(1950, 335, 'দূর্গাপুর'),
(1951, 335, 'জামগ্রাম'),
(1952, 335, 'মালঞ্চা'),
(1953, 330, 'ফাঁপোর'),
(1954, 330, 'সাবগ্রাম'),
(1955, 330, 'নিশিন্দারা'),
(1956, 330, 'এরুলিয়া'),
(1957, 330, 'রাজাপুর'),
(1958, 330, 'শাখারিয়া'),
(1959, 330, 'শেখেরকোলা'),
(1960, 330, 'গোকুল'),
(1961, 330, 'নুনগোলা'),
(1962, 330, 'লাহিড়ীপাড়া'),
(1963, 330, 'নামুজা'),
(1964, 338, 'সারিয়াকান্দি সদর'),
(1965, 338, 'নারচী'),
(1966, 338, 'বোহাইল'),
(1967, 338, 'চালুয়াবাড়ী'),
(1968, 338, 'চন্দনবাইশা'),
(1969, 338, 'হাটফুলবাড়ী'),
(1970, 338, 'হাটশেরপুর'),
(1971, 338, 'কর্ণিবাড়ী'),
(1972, 338, 'কাজলা'),
(1973, 338, 'কুতুবপুর'),
(1974, 338, 'কামালপুর'),
(1975, 338, 'ভেলাবাড়ী'),
(1976, 337, 'আশেকপুর'),
(1977, 337, 'মাদলা'),
(1978, 337, 'মাঝিড়া'),
(1979, 337, 'আড়িয়া'),
(1980, 337, 'খরনা'),
(1981, 337, 'খোট্টাপাড়া'),
(1982, 337, 'চোপিনগর'),
(1983, 337, 'আমরুল'),
(1984, 337, 'গোহাইল'),
(1985, 333, 'জিয়ানগর'),
(1986, 333, 'চামরুল'),
(1987, 333, 'দুপচাঁচিয়া'),
(1988, 333, 'গুনাহার'),
(1989, 333, 'গোবিন্দপুর'),
(1990, 333, 'তালোড়া'),
(1991, 329, 'ছাতিয়ানগ্রাম'),
(1992, 329, 'নশরতপুর'),
(1993, 329, 'আদমদিঘি'),
(1994, 329, 'কুন্দগ্রাম'),
(1995, 329, 'চাঁপাপুর'),
(1996, 329, 'সান্তাহার'),
(1997, 336, '১নং বুড়ইল'),
(1998, 336, '২নং নন্দিগ্রাম'),
(1999, 336, '৩নং ভাটরা'),
(2000, 336, '৪নং থালতা মাঝগ্রাম'),
(2001, 336, '৫নং ভাটগ্রাম'),
(2002, 340, 'সোনাতলা'),
(2003, 340, 'বালুয়া'),
(2004, 340, 'জোড়গাছা'),
(2005, 340, 'দিগদাইড়'),
(2006, 340, 'মধুপুর'),
(2007, 340, 'পাকুল্ল্যা'),
(2008, 340, 'তেকানী চুকাইনগর'),
(2009, 332, '১নং নিমগাছি'),
(2010, 332, '২নং কালেরপাড়া'),
(2011, 332, '৩নং চিকাশী'),
(2012, 332, '৪নং গোসাইবাড়ী'),
(2013, 332, '৫নং ভান্ডারবাড়ী'),
(2014, 332, '১০নং গোপালনগর'),
(2015, 332, '৯নং মথুরাপুর'),
(2016, 332, '৮নং চৌকিবাড়ী'),
(2017, 332, '৭নং এলাঙ্গী'),
(2018, 332, '৬নং ধুনট সদর'),
(2019, 334, 'বালিয়া দিঘী'),
(2020, 334, 'দক্ষিণপাড়া'),
(2021, 334, 'দুর্গাহাটা'),
(2022, 334, 'কাগইল'),
(2023, 334, 'সোনারায়'),
(2024, 334, 'রামেশ্বরপুর'),
(2025, 334, 'নাড়ুয়ামালা'),
(2026, 334, 'নেপালতলী'),
(2027, 334, 'গাবতলি'),
(2028, 334, 'মহিষাবান'),
(2029, 334, 'নশিপুর'),
(2030, 331, '৫নং মির্জাপুর'),
(2031, 331, '৩নং খামারকান্দি'),
(2032, 331, '২নং গাড়িদহ'),
(2033, 331, '১নং কুসুম্বী'),
(2034, 331, '৬নং বিশালপুর'),
(2035, 331, '৯নং সীমাবাড়ি'),
(2036, 331, '১০নং শাহবন্দেগী'),
(2037, 331, '৮নং সুঘাট'),
(2038, 331, '৪নং খানপুর'),
(2039, 331, '৭নং ভবানীপুর'),
(2040, 339, '১নং ময়দানহাট্টা'),
(2041, 339, '২নং কিচক ইউনিয়ন'),
(2042, 339, '৩নং আটমূল'),
(2043, 339, '৪নং পিরব'),
(2044, 339, '৫নং মাঝিহট্ট'),
(2045, 339, '৬নং বুড়িগঞ্জ'),
(2046, 339, '৭নং বিহার'),
(2047, 339, '৮নং শিবগঞ্জ'),
(2048, 339, '৯নং দেউলি'),
(2049, 339, '১০নং সৈয়দপুর'),
(2050, 339, '১১নং মোকামতলা ইউনিয়ন'),
(2051, 339, '১২নং রায়নগর'),
(2052, 383, '০১ নং দর্শনপাড়া ইউনিয়ন'),
(2053, 383, '০২ নং হুজুরী পাড়া ইউনিয়ন'),
(2054, 383, '০৩ নং দামকুড়া ইউনিয়ন'),
(2055, 383, '০৪ নং হরিপুর ইউনিয়ন'),
(2056, 383, '০৫ নং হড়গ্রাম ইউনিয়ন'),
(2057, 383, '০৬ নং হরিয়ান ইউনিয়ন'),
(2058, 383, '০৭ নং বড়্গাছি ইউনিয়ন'),
(2059, 383, '০৮ নং পারিলা ইউনিয়ন'),
(2060, 380, '০১ নং নওপাড়া ইউনিয়ন'),
(2061, 380, '০২ নং কিসমতগণকৈড় ইউনিয়ন'),
(2062, 380, '০৩ নং পানানগর ইউনিয়ন'),
(2063, 380, '০৪ নং দেলুয়াবাড়ী ইউনিয়ন'),
(2064, 380, '০৫ নং ঝালুকা ইউনিয়ন'),
(2065, 380, '০৬ নং মাড়িয়া ইউনিয়ন'),
(2066, 380, '০৭ নং জয়নগর ইউনিয়ন'),
(2067, 382, '০১ নং ধুরইল ইউনিয়ন'),
(2068, 382, '০২ নং ঘষিগ্রাম ইউনিয়ন'),
(2069, 382, '০৩ নং রায়ঘাটি ইউনিয়ন'),
(2070, 382, '০৪ নং মৌগাছি ইউনিয়ন'),
(2071, 382, '০৫ নং বাকশিমইল ইউনিয়ন'),
(2072, 382, '০৬ নং জাহানাবাদ ইউনিয়ন'),
(2073, 379, '০১ নং ইউসুফপুর ইউনিয়ন'),
(2074, 379, '০২ নং শলুয়া ইউনিয়ন'),
(2075, 379, '০৩ নং সরদহ ইউনিয়ন'),
(2076, 379, '০৪ নং নিমপাড়া ইউনিয়ন'),
(2077, 379, '০৫ নং চারঘাট ইউনিয়ন'),
(2078, 379, '০৬ নং ভায়ালক্ষ্মীপুর ইউনিয়ন'),
(2079, 384, '০১ নং পুঠিয়া ইউনিয়ন'),
(2080, 384, '০২ নং বেলপুকুরিয়া ইউনিয়ন'),
(2081, 384, '০৩ নং বানেশ্বর ইউনিয়ন'),
(2082, 384, '০৪ নং ভালুক গাছি ইউনিয়ন'),
(2083, 384, '০৫ নং শিলমাড়িয়া ইউনিয়ন'),
(2084, 384, '০৬ নং জিউপাড়া ইউনিয়ন'),
(2085, 377, '০১ নং বাজুবাঘা ইউনিয়ন'),
(2086, 377, '০২ নং গড়গড়ি ইউনিয়ন'),
(2087, 377, '০৩ নং পাকুড়িয়া ইউনিয়ন');
INSERT INTO `unions` (`id`, `upazila_id`, `name`) VALUES
(2088, 377, '০৪ নং মনিগ্রাম ইউনিয়ন'),
(2089, 377, '০৫ নং বাউসা ইউনিয়ন'),
(2090, 377, '০৬ নং আড়ানী'),
(2091, 381, '০১ নং গোদাগাড়ী ইউনিয়ন'),
(2092, 381, '০২ নং মোহনপুর ইউনিয়ন'),
(2093, 381, '০৩ নং পাকড়ী ইউনিয়ন'),
(2094, 381, '০৪ নং রিশিকুল ইউনিয়ন'),
(2095, 381, '০৫ নং গোগ্রাম ইউনিয়ন'),
(2096, 381, '০৬ নং মাটিকাটা ইউনিয়ন'),
(2097, 381, '০৭ নং দেওপাড়া ইউনিয়ন'),
(2098, 381, '০৮ নং বাসুদেবপুর ইউনিয়ন'),
(2099, 381, '০৯ নং আষাড়িয়াদহ ইউনিয়ন'),
(2100, 385, '০১ নং কলমা ইউনিয়ন'),
(2101, 385, '০২ নং বাধাইড় ইউনিয়ন'),
(2102, 385, '০৩ নং পাঁচন্দর ইউনিয়ন'),
(2103, 385, '০৪ নং সরঞ্জাই ইউনিয়ন'),
(2104, 385, '০৫ নং তালন্দ ইউনিয়ন'),
(2105, 385, '০৬ নং কামারগাঁ ইউনিয়ন'),
(2106, 385, '০৭ নং চান্দুড়িয়া ইউনিয়ন'),
(2107, 378, '০১ নং গোবিন্দপাড়া ইউনিয়ন'),
(2108, 378, '০২ নং নরদাস ইউনিয়ন'),
(2109, 378, '০৩ নং দ্বীপপুর ইউনিয়ন'),
(2110, 378, '০৪ নং বড়বিহানলী ইউনিয়ন'),
(2111, 378, '০৫ নং আউচপাড়া ইউনিয়ন'),
(2112, 378, '০৬ নং শ্রীপুর ইউনিয়ন'),
(2113, 378, '০৭ নং বাসুপাড়া ইউনিয়ন'),
(2114, 378, '০৮ নং কাচাড়ী কোয়লিপাড়া ইউনিয়ন'),
(2115, 378, '০৯ নং শুভডাঙ্গা ইউনিয়ন'),
(2116, 378, '১০ নং মাড়িয়া ইউনিয়ন'),
(2117, 378, '১১ নং গণিপুর ইউনিয়ন'),
(2118, 378, '১২ নং ঝিকড়া ইউনিয়ন'),
(2119, 378, '১৩ নং গোয়ালকান্দি ইউনিয়ন'),
(2120, 378, '১৪ নং হামিরকুৎসা ইউনিয়ন'),
(2121, 378, '১৫ নং যোগিপাড়া ইউনিয়ন'),
(2122, 378, '১৬ নং সোনাডাঙ্গা ইউনিয়ন'),
(2123, 357, '১ নং ব্রহ্মপুর ইউনিয়ন'),
(2124, 357, '০২ নং মাধনগর ইউনিয়ন'),
(2125, 357, '০৩ নং খাজুরা ইউনিয়ন'),
(2126, 357, '০৪ নং পিপরুল ইউনিয়ন'),
(2127, 357, '০৫ নং বিপ্রবেলঘড়িয়া ইউনিয়ন'),
(2128, 357, '০৬ নং ছাতনী ইউনিয়ন'),
(2129, 357, '০৭ নং তেবাড়িয়া ইউনিয়ন'),
(2130, 357, '০৮ নং দিঘাপতিয়া ইউনিয়ন'),
(2131, 357, '০৯ নং লক্ষীপুর খোলাবাড়িয়া ইউনিয়ন'),
(2132, 357, '১০ নং বড়হরিশপুর ইউনিয়ন'),
(2133, 357, '১১ নং কাফুরিয়া ইউনিয়ন'),
(2134, 357, '১২ নং হালসা ইউনিয়ন'),
(2135, 361, '০১ নং শুকাশ ইউনিয়ন'),
(2136, 361, '০২ নং ডাহিয়া ইউনিয়ন'),
(2137, 361, '০৩ নং ইটালী ইউনিয়ন'),
(2138, 361, '০৪ নং কলম ইউনিয়ন'),
(2139, 361, '০৫ নং চামারী ইউনিয়ন'),
(2140, 361, '০৬ নং হাতিয়ানদহ ইউনিয়ন'),
(2141, 361, '০৭ নং লালোর ইউনিয়ন'),
(2142, 361, '০৮ নং শেরকোল ইউনিয়ন'),
(2143, 361, '০৯ নং তাজপুর ইউনিয়ন'),
(2144, 361, '১০ নং চৌগ্রাম ইউনিয়ন'),
(2145, 361, '১১ নং ছাতারদিঘী ইউনিয়ন'),
(2146, 361, '১২ নং রামান্দখাজুরা ইউনিয়ন'),
(2147, 362, '০১ নং জোয়াড়ী ইউনিয়ন'),
(2148, 362, '০২ নং বড়াইগ্রাম ইউনিয়ন'),
(2149, 362, '০৩ নং জোনাইল ইউনিয়ন'),
(2150, 362, '০৪ নং নগর ইউনিয়ন'),
(2151, 362, '০৫ নং মাঝগাও ইউনিয়ন'),
(2152, 362, '০৬ নং গোপালপুর ইউনিয়ন'),
(2153, 362, '০৭ নং চান্দাই ইউনিয়ন'),
(2154, 359, '০১ নং পাঁকা ইউনিয়ন'),
(2155, 359, '০২ নং জামনগর ইউনিয়ন'),
(2156, 359, '০৩ নং বাগাতিপাড়া ইউনিয়ন'),
(2157, 359, '০৪ নং দয়ারামপুর ইউনিয়ন'),
(2158, 359, '০৫ নং ফাগুয়ারদিয়াড় ইউনিয়ন'),
(2159, 360, '০১ নং লালপুর ইউনিয়ন'),
(2160, 360, '০২ নং ঈশ্বরদী ইউনিয়ন'),
(2161, 360, '০৩ নং চংধুপইল ইউনিয়ন'),
(2162, 360, '০৪ নং আড়বাব ইউনিয়ন'),
(2163, 360, '০৫ নং বিলমাড়িয়া ইউনিয়ন'),
(2164, 360, '০৬ নং দুয়ারিয়া ইউনিয়ন'),
(2165, 360, '০৭ নং ওয়ালিয়া ইউনিয়ন'),
(2166, 360, '০৮ নং দুড়দুরিয়া ইউনিয়ন'),
(2167, 360, '০৯ নং অর্জুনপুর বরমহাটী ইউনিয়ন'),
(2168, 360, '১০ নং কদিমচিলান ইউনিয়ন'),
(2169, 362, '০১ নং নাজিরপুর ইউনিয়ন'),
(2170, 362, '০২ নং বিয়াঘাট ইউনিয়ন'),
(2171, 362, '০৩ নং খুবজীপুর ইউনিয়ন'),
(2172, 362, '০৫ নং ধারাবারিষা ইউনিয়ন'),
(2173, 362, '০৪ নং মসিন্দা ইউনিয়ন'),
(2174, 362, '০৬ নং চাপিলা ইউনিয়ন'),
(2175, 342, 'রুকিন্দীপুর ইউনিয়ন'),
(2176, 342, 'সোনামূখী ইউনিয়ন'),
(2177, 342, 'তিলকপুর ইউনিয়ন'),
(2178, 342, 'রায়কালী ইউনিয়ন'),
(2179, 342, 'গোপীনাথপুর ইউনিয়ন'),
(2180, 343, 'মাত্রাই ইউনিয়ন'),
(2181, 343, 'আহম্মেদাবাদ ইউনিয়ন'),
(2182, 343, 'পুনট ইউনিয়ন'),
(2183, 343, 'জিন্দারপুর'),
(2184, 343, 'উদয়পুর'),
(2185, 344, 'আলমপুর ইউনিয়ন'),
(2186, 344, 'বড়াইল ইউনিয়ন'),
(2187, 344, 'তুলশীগংগা ইউনিয়ন'),
(2188, 344, 'মামুদপুর ইউনিয়ন'),
(2189, 344, 'বড়তারা ইউনিয়ন'),
(2190, 345, 'বাগজানা ইউনিয়ন'),
(2191, 345, 'ধরঞ্জি'),
(2192, 345, 'আয়মারসুলপুর ইউনিয়ন'),
(2193, 345, 'বালিঘাটা ইউনিয়ন'),
(2194, 345, 'আটাপুর ইউনিয়ন'),
(2195, 345, 'মোহাম্মদপুর ইউনিয়ন'),
(2196, 345, 'আওলাই'),
(2197, 345, 'কুসুম্বা'),
(2198, 341, 'আমদই ইউনিয়ন'),
(2199, 341, 'বম্বু ইউনিয়ন'),
(2200, 341, 'দোগাছি ইউনিয়ন'),
(2201, 341, 'পুরানাপৈল ইউনিয়ন'),
(2202, 341, 'জামালপুর ইউনিয়ন'),
(2203, 341, 'চকবরকত ইউনিয়ন'),
(2204, 341, 'মোহাম্মদাবাদ ইউনিয়ন'),
(2205, 341, 'ধলাহার ইউনিয়ন'),
(2206, 341, 'ভাদসা'),
(2207, 366, 'আলাতুলী'),
(2208, 366, 'বারঘরিয়া'),
(2209, 366, 'মহারাজপুর'),
(2210, 366, 'রানীহাটি'),
(2211, 366, 'বালিয়াডাঙ্গা'),
(2212, 366, 'গোবরাতলা'),
(2213, 366, 'ঝিলিম'),
(2214, 366, 'চরঅনুপনগর'),
(2215, 366, 'দেবীনগর'),
(2216, 366, 'শাহজাহানপুর'),
(2217, 366, 'ইসলামপুর'),
(2218, 366, 'চরবাগডাঙ্গা'),
(2219, 366, 'নারায়নপুর'),
(2220, 366, 'সুন্দরপুর'),
(2221, 364, 'রাধানগর'),
(2222, 364, 'রহনপুর'),
(2223, 364, 'বোয়ালিয়া'),
(2224, 364, 'বাঙ্গাবাড়ী'),
(2225, 364, 'পার্বতীপুর'),
(2226, 364, 'চৌডালা'),
(2227, 364, 'গোমস্তাপুর'),
(2228, 364, 'আলীনগর'),
(2229, 365, 'ফতেপুর'),
(2230, 365, 'কসবা'),
(2231, 365, 'নেজামপুর'),
(2232, 365, 'নাচোল'),
(2233, 363, 'ভোলাহাট'),
(2234, 363, 'জামবাড়িয়া'),
(2235, 363, 'গোহালবাড়ী'),
(2236, 363, 'দলদলী'),
(2237, 367, 'বিনোদপুর'),
(2238, 367, 'চককির্তী'),
(2239, 367, 'দাইপুকুরিয়া'),
(2240, 367, 'ধাইনগর'),
(2241, 367, 'দুর্লভপুর'),
(2242, 367, 'ঘোড়াপাখিয়া'),
(2243, 367, 'মোবারকপুর'),
(2244, 367, 'মনাকষা'),
(2245, 367, 'নয়ালাভাঙ্গা'),
(2246, 367, 'পাঁকা'),
(2247, 367, 'ছত্রাজিতপুর'),
(2248, 367, 'শাহাবাজপুর'),
(2249, 367, 'শ্যামপুর'),
(2250, 367, 'কানসাট'),
(2251, 367, 'উজিরপুর'),
(2252, 347, 'মহাদেবপুর ইউনিয়ন'),
(2253, 347, 'হাতুড়'),
(2254, 347, 'খাজুর ইউনিয়ন'),
(2255, 347, 'চাঁন্দাশ'),
(2256, 347, 'এনায়েতপুর'),
(2257, 347, 'সফাপুর'),
(2258, 347, 'উত্তরগ্রাম'),
(2259, 347, 'চেরাগপুর'),
(2260, 347, 'ভীমপুর'),
(2261, 347, 'রাইগাঁ'),
(2262, 356, 'বদলগাছী ইউনিয়ন'),
(2263, 356, 'মথুরাপুর ইউনিয়ন'),
(2264, 356, 'পাহারপুর ইউনিয়ন'),
(2265, 356, 'মিঠাপুর ইউনিয়ন'),
(2266, 356, 'কোলা ইউনিয়ন'),
(2267, 356, 'বিলাশবাড়ী ইউনিয়ন'),
(2268, 356, 'আধাইপুর ইউনিয়ন'),
(2269, 356, 'বালুভরা ইউনিয়ন'),
(2270, 352, 'পত্নীতলা ইউনিয়ন'),
(2271, 352, 'নিমইল ইউনিয়ন'),
(2272, 352, 'দিবর ইউনিয়ন'),
(2273, 352, 'আকবরপুর ইউনিয়ন'),
(2274, 352, 'মাটিন্দর ইউনিয়ন'),
(2275, 352, 'কৃষ্ণপুর ইউনিয়ন'),
(2276, 352, 'পাটিচড়া ইউনিয়ন'),
(2277, 352, 'নজিপুর ইউনিয়ন'),
(2278, 352, 'ঘষনগর ইউনিয়ন'),
(2279, 352, 'আমাইড় ইউনিয়ন'),
(2280, 352, 'শিহারা ইউনিয়ন'),
(2281, 353, 'ধামইরহাট'),
(2282, 353, 'আলমপুর'),
(2283, 353, 'উমার ইউনিয়ন'),
(2284, 353, 'আড়ানগর'),
(2285, 353, 'জাহানপুর'),
(2286, 353, 'ইসবপুর'),
(2287, 353, 'খেলনা'),
(2288, 353, 'আগ্রাদ্বিগুন'),
(2289, 349, 'হাজীনগর ইউনিয়ন'),
(2290, 349, 'চন্দননগর ইউনিয়ন'),
(2291, 349, 'ভাবিচা ইউনিয়ন'),
(2292, 349, 'নিয়ামতপুর ইউনিয়ন'),
(2293, 349, 'রসুলপুর ইউনিয়ন'),
(2294, 349, 'পাড়ইল ইউনিয়ন'),
(2295, 349, 'শ্রীমন্তপুর'),
(2296, 349, 'বাহাদুরপুর'),
(2297, 348, 'ভারশো'),
(2298, 348, 'ভালাইন'),
(2299, 348, 'পরানপুর'),
(2300, 348, 'মান্দা'),
(2301, 348, 'গনেশপুর'),
(2302, 348, 'মৈনম'),
(2303, 348, 'প্রসাদপুর ইউনিয়ন'),
(2304, 348, 'কুসুম্বা'),
(2305, 348, 'তেঁতুলিয়া'),
(2306, 348, 'নূরুল্যাবাদ'),
(2307, 348, 'কালিকাপুর'),
(2308, 348, 'কাঁশোকাপুর'),
(2309, 348, 'কশব ইউনিয়ন'),
(2310, 348, 'বিষ্ণপুর'),
(2311, 350, 'শাহাগোলা'),
(2312, 350, 'ভোঁপড়া'),
(2313, 350, 'আহসানগঞ্জ'),
(2314, 350, 'পাঁচুপুর'),
(2315, 350, 'বিশা'),
(2316, 350, 'মনিয়ারী'),
(2317, 350, 'কালিকাপুর'),
(2318, 350, 'হাটকালুপাড়া'),
(2319, 351, 'খট্টেশ্বর রাণীনগর'),
(2320, 351, 'কাশিমপুর'),
(2321, 351, 'গোনা'),
(2322, 351, 'পারইল'),
(2323, 351, 'বরগাছা'),
(2324, 351, 'কালিগ্রাম'),
(2325, 351, 'একডালা'),
(2326, 351, 'মিরাট'),
(2327, 346, 'বর্ষাইল'),
(2328, 346, 'কির্ত্তিপুর'),
(2329, 346, 'বক্তারপুর ইউনিয়ন'),
(2330, 346, 'তিলোকপুর'),
(2331, 346, 'হাপানিয়া'),
(2332, 346, 'দুবলহাটী ইউনিয়ন'),
(2333, 346, 'বোয়ালিয়া ইউনিয়ন'),
(2334, 346, 'হাঁসাইগাড়ী'),
(2335, 346, 'চন্ডিপুর'),
(2336, 346, 'বলিহার'),
(2337, 346, 'শিকারপুর'),
(2338, 346, 'শৈলগাছী'),
(2339, 355, 'নিতপুর ইউনিয়ন'),
(2340, 355, 'তেঁতুলিয়া'),
(2341, 355, 'ছাওড়'),
(2342, 355, 'গাঙ্গুরিয়া'),
(2343, 355, 'ঘাটনগর ইউনিয়ন'),
(2344, 355, 'মশিদপুর'),
(2345, 354, 'সাপাহার'),
(2346, 354, 'তিলনা'),
(2347, 354, 'আইহাই'),
(2348, 354, 'শিরন্টী'),
(2349, 354, 'গোয়ালা'),
(2350, 354, 'পাতাড়ী');

-- --------------------------------------------------------

--
-- Table structure for table `univiersities`
--

CREATE TABLE `univiersities` (
  `id` int(10) NOT NULL,
  `name` varchar(300) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `univiersities`
--

INSERT INTO `univiersities` (`id`, `name`) VALUES
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
-- Table structure for table `upazilas`
--

CREATE TABLE `upazilas` (
  `id` int(2) UNSIGNED NOT NULL,
  `district_id` int(2) UNSIGNED NOT NULL,
  `name` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `upazilas`
--

INSERT INTO `upazilas` (`id`, `district_id`, `name`) VALUES
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
-- Indexes for table `degree_subject`
--
ALTER TABLE `degree_subject`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `districts`
--
ALTER TABLE `districts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `divisions`
--
ALTER TABLE `divisions`
  ADD PRIMARY KEY (`id`);

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
-- Indexes for table `people_board`
--
ALTER TABLE `people_board`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `people_date`
--
ALTER TABLE `people_date`
  ADD KEY `FK_people_date_1` (`people_id`),
  ADD KEY `FK_people_date_2` (`people_infotype_id`);

--
-- Indexes for table `people_ethnicity`
--
ALTER TABLE `people_ethnicity`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `people_examinations`
--
ALTER TABLE `people_examinations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `people_float`
--
ALTER TABLE `people_float`
  ADD KEY `FK_people_float_1` (`people_id`),
  ADD KEY `FK_people_float_2` (`people_infotype_id`);

--
-- Indexes for table `people_gender`
--
ALTER TABLE `people_gender`
  ADD PRIMARY KEY (`id`);

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
-- Indexes for table `people_marriage`
--
ALTER TABLE `people_marriage`
  ADD PRIMARY KEY (`id`);

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
-- Indexes for table `people_qouta`
--
ALTER TABLE `people_qouta`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `people_religion`
--
ALTER TABLE `people_religion`
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
-- Indexes for table `unions`
--
ALTER TABLE `unions`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `univiersities`
--
ALTER TABLE `univiersities`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `upazilas`
--
ALTER TABLE `upazilas`
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
-- AUTO_INCREMENT for table `degree_subject`
--
ALTER TABLE `degree_subject`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=124;

--
-- AUTO_INCREMENT for table `districts`
--
ALTER TABLE `districts`
  MODIFY `id` int(2) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=65;

--
-- AUTO_INCREMENT for table `divisions`
--
ALTER TABLE `divisions`
  MODIFY `id` int(2) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

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
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `people_basic`
--
ALTER TABLE `people_basic`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `people_board`
--
ALTER TABLE `people_board`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `people_ethnicity`
--
ALTER TABLE `people_ethnicity`
  MODIFY `id` int(3) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `people_examinations`
--
ALTER TABLE `people_examinations`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=48;

--
-- AUTO_INCREMENT for table `people_gender`
--
ALTER TABLE `people_gender`
  MODIFY `id` int(1) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `people_hash`
--
ALTER TABLE `people_hash`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `people_infotype`
--
ALTER TABLE `people_infotype`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `people_infotype_type`
--
ALTER TABLE `people_infotype_type`
  MODIFY `id` int(1) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `people_marriage`
--
ALTER TABLE `people_marriage`
  MODIFY `id` int(1) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `people_nationality`
--
ALTER TABLE `people_nationality`
  MODIFY `id` int(3) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `people_qouta`
--
ALTER TABLE `people_qouta`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `people_religion`
--
ALTER TABLE `people_religion`
  MODIFY `id` int(2) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

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
-- AUTO_INCREMENT for table `unions`
--
ALTER TABLE `unions`
  MODIFY `id` int(2) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2351;

--
-- AUTO_INCREMENT for table `univiersities`
--
ALTER TABLE `univiersities`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=160;

--
-- AUTO_INCREMENT for table `upazilas`
--
ALTER TABLE `upazilas`
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
-- Constraints for table `districts`
--
ALTER TABLE `districts`
  ADD CONSTRAINT `districts_ibfk_1` FOREIGN KEY (`division_id`) REFERENCES `divisions` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

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
  ADD CONSTRAINT `FK_people_basic_2` FOREIGN KEY (`gender_id`) REFERENCES `people_gender` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `FK_people_basic_3` FOREIGN KEY (`religion_id`) REFERENCES `people_religion` (`id`) ON DELETE NO ACTION ON UPDATE CASCADE,
  ADD CONSTRAINT `FK_people_basic_4` FOREIGN KEY (`ethnicity_id`) REFERENCES `people_ethnicity` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `FK_people_basic_5` FOREIGN KEY (`nationality_id`) REFERENCES `people_nationality` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `FK_people_basic_6` FOREIGN KEY (`marriage_id`) REFERENCES `people_marriage` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

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
-- Constraints for table `unions`
--
ALTER TABLE `unions`
  ADD CONSTRAINT `unions_ibfk_1` FOREIGN KEY (`upazila_id`) REFERENCES `upazilas` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `upazilas`
--
ALTER TABLE `upazilas`
  ADD CONSTRAINT `upazilas_ibfk_1` FOREIGN KEY (`district_id`) REFERENCES `districts` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
