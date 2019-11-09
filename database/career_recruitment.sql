-- phpMyAdmin SQL Dump
-- version 4.9.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Nov 04, 2019 at 03:12 PM
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
(1, 'Unmarried'),
(2, 'Married'),
(3, 'Widow or Widower'),
(4, 'Divorced');

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
(4, 'Christianity');

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
-- Indexes for table `people_ethnicity`
--
ALTER TABLE `people_ethnicity`
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
-- Indexes for table `people_religion`
--
ALTER TABLE `people_religion`
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
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `people_basic`
--
ALTER TABLE `people_basic`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `people_ethnicity`
--
ALTER TABLE `people_ethnicity`
  MODIFY `id` int(3) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

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
-- AUTO_INCREMENT for table `people_religion`
--
ALTER TABLE `people_religion`
  MODIFY `id` int(2) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

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
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
