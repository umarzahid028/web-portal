-- phpMyAdmin SQL Dump
-- version 4.8.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Mar 26, 2020 at 05:12 PM
-- Server version: 10.1.37-MariaDB
-- PHP Version: 7.3.1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `superior_web_portal_fsd`
--

-- --------------------------------------------------------

--
-- Table structure for table `academic_details`
--

CREATE TABLE `academic_details` (
  `academic_id` int(11) NOT NULL,
  `student_id` int(11) NOT NULL,
  `subject_id` int(11) NOT NULL,
  `instructor_id` int(11) NOT NULL,
  `semester` varchar(3) NOT NULL,
  `mid` int(11) NOT NULL,
  `final` int(11) NOT NULL,
  `total` int(11) NOT NULL,
  `max_marks` int(11) NOT NULL,
  `grade` varchar(1) NOT NULL,
  `gpa` float NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `academic_details`
--

INSERT INTO `academic_details` (`academic_id`, `student_id`, `subject_id`, `instructor_id`, `semester`, `mid`, `final`, `total`, `max_marks`, `grade`, `gpa`) VALUES
(9, 15, 23, 6, '4', 20, 60, 80, 100, 'A', 3.3),
(10, 15, 24, 7, '4', 20, 60, 80, 100, 'A', 3.3),
(11, 15, 25, 9, '4', 20, 40, 60, 100, 'C', 2.5),
(12, 15, 26, 8, '4', 10, 40, 50, 100, 'D', 2.1);

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `id` int(11) NOT NULL,
  `fullname` varchar(50) NOT NULL,
  `email` varchar(50) NOT NULL,
  `password` varchar(255) NOT NULL,
  `verification_code` varchar(60) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`id`, `fullname`, `email`, `password`, `verification_code`) VALUES
(1, 'Administrator', 'admin@admin.com', '$2y$10$DxUi1rkIWOEgzHQ6U0q50u2uhgIIEi7KTMYUinSBQy3PQIsJkZ3BG', '31724ce9bbd93961db8fc0875f220160');

-- --------------------------------------------------------

--
-- Table structure for table `assignment`
--

CREATE TABLE `assignment` (
  `assignment_id` int(11) NOT NULL,
  `class_id` int(11) NOT NULL,
  `subject_id` int(11) NOT NULL,
  `submission_date` varchar(11) NOT NULL,
  `assignment_url` varchar(200) NOT NULL,
  `instructor_id` int(11) NOT NULL,
  `section` varchar(1) NOT NULL,
  `term` varchar(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `assignment`
--

INSERT INTO `assignment` (`assignment_id`, `class_id`, `subject_id`, `submission_date`, `assignment_url`, `instructor_id`, `section`, `term`) VALUES
(11, 9, 24, '04-08-2018', 'uploads/New Text Document.txt', 7, 'B', 'Final Term'),
(12, 9, 23, '23-05-2019', 'uploads/47dd48f6-f1bd-472a-855f-fd4b7cdabf7d.jpg', 7, 'B', 'Mid Term');

-- --------------------------------------------------------

--
-- Table structure for table `attendance`
--

CREATE TABLE `attendance` (
  `attendance_id` int(11) NOT NULL,
  `class_id` int(11) NOT NULL,
  `section` varchar(1) NOT NULL,
  `subject_id` int(11) NOT NULL,
  `student_id` int(11) NOT NULL,
  `instructor_id` int(11) NOT NULL,
  `nol` int(11) NOT NULL,
  `nop` int(11) NOT NULL,
  `noa` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `attendance`
--

INSERT INTO `attendance` (`attendance_id`, `class_id`, `section`, `subject_id`, `student_id`, `instructor_id`, `nol`, `nop`, `noa`) VALUES
(8, 9, 'B', 23, 15, 6, 2, 22, 6),
(9, 9, 'B', 24, 15, 7, 2, 22, 6),
(10, 9, 'B', 25, 15, 9, 2, 22, 6),
(11, 9, 'B', 26, 15, 8, 0, 22, 8);

-- --------------------------------------------------------

--
-- Table structure for table `classes`
--

CREATE TABLE `classes` (
  `class_id` int(11) NOT NULL,
  `class_name` varchar(30) NOT NULL,
  `department_id` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `classes`
--

INSERT INTO `classes` (`class_id`, `class_name`, `department_id`) VALUES
(9, 'ADPCS', 7),
(10, 'BSCS', 7),
(11, 'BSIT', 7),
(12, 'BBA', 8);

-- --------------------------------------------------------

--
-- Table structure for table `date_sheet`
--

CREATE TABLE `date_sheet` (
  `date_sheet_id` int(11) NOT NULL,
  `subject_id` int(11) NOT NULL,
  `date` varchar(11) NOT NULL,
  `class_id` int(11) NOT NULL,
  `semester` varchar(11) NOT NULL,
  `time` varchar(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `date_sheet`
--

INSERT INTO `date_sheet` (`date_sheet_id`, `subject_id`, `date`, `class_id`, `semester`, `time`) VALUES
(5, 26, '11-08-2018', 9, '4', '2:00 to 4:0'),
(6, 24, '13-08-2018', 9, '4', '2:00 to 4:0'),
(7, 23, '15-08-2018', 9, '4', '2:00 to 4:0'),
(8, 25, '16-08-2018', 9, '4', '2:00 to 4:0');

-- --------------------------------------------------------

--
-- Table structure for table `department`
--

CREATE TABLE `department` (
  `department_id` int(11) NOT NULL,
  `department_name` varchar(30) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `department`
--

INSERT INTO `department` (`department_id`, `department_name`) VALUES
(8, 'Accounting and Financial'),
(9, 'BS Chemistry'),
(7, 'Computer Science');

-- --------------------------------------------------------

--
-- Table structure for table `fee_details`
--

CREATE TABLE `fee_details` (
  `fee_id` int(11) NOT NULL,
  `student_id` int(11) NOT NULL,
  `fee` int(11) NOT NULL,
  `semester` varchar(10) NOT NULL,
  `status` varchar(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `fee_details`
--

INSERT INTO `fee_details` (`fee_id`, `student_id`, `fee`, `semester`, `status`) VALUES
(3, 15, 20000, '1', 'Paid'),
(4, 15, 20000, '2', 'Paid'),
(5, 15, 20000, '3', 'Paid'),
(6, 15, 20000, '4', 'Unpaid');

-- --------------------------------------------------------

--
-- Table structure for table `instructor`
--

CREATE TABLE `instructor` (
  `instructor_id` int(11) NOT NULL,
  `instructor_code` varchar(20) NOT NULL,
  `instructor_name` varchar(50) NOT NULL,
  `instructor_cnic` varchar(20) NOT NULL,
  `instructor_gender` varchar(7) NOT NULL,
  `instructor_qualification` varchar(20) NOT NULL,
  `instructor_email` varchar(50) NOT NULL,
  `instructor_verification_code` varchar(60) NOT NULL,
  `instructor_password` varchar(255) NOT NULL,
  `major_subject` varchar(15) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `instructor`
--

INSERT INTO `instructor` (`instructor_id`, `instructor_code`, `instructor_name`, `instructor_cnic`, `instructor_gender`, `instructor_qualification`, `instructor_email`, `instructor_verification_code`, `instructor_password`, `major_subject`) VALUES
(6, 'INT-01', 'Abdur Rehman Shahzad', '12345-1234567-1', 'Male', 'MSc Sociology', 'abdurehman@gmail.com', '8af375dd2b730acc9a394bd8fd70b63e', '$2y$10$ItKdcH1jUpewZ/MvminPOe7KWBlblaWWyicVJXEsqCLADPvS1Ixd2', 'HCI'),
(7, 'INT-02', 'Hafsa Tauqeer', '12345-1234567-0', 'Female', 'MSc Computer Science', 'hafi22toqeer@gmail.com', '1488c4084c7871e5ba89fb612b8d59ec', '$2y$10$rU1AzF7i79x2B4K28ffqbuM9foh2hvaAG4Z5KyLBEquSVr2rY0FVW', 'Database'),
(8, 'INT-03', 'Abu Ul Hassan', '12345-1234567-8', 'Male', 'MSc Computer Science', 'hassan.superior1@gmail.com', '7ce00a6dab2ee2fad4ee2312800308a5', '$2y$10$3NJ0xxygFijwYvEi/zvUb.GruS2j/UtnqXgQfAfB90r3gW.vnop6.', 'Assembly Langua'),
(9, 'INT-04', 'Sidra', '12345-1234567-9', 'Female', 'BS Computer Science', 'sidra@gmail.com', 'c67c862edaf6d47a9fa2a5579c0c0d0e', '$2y$10$MlyROpHmXDoWfLbjvV7YX.Ylon27Fus9WoSG5JqdTljGVKukIWYv2', 'Web Programming'),
(10, 'INT-05', 'Adeel', '12345-1234567-2', 'Male', 'MCS', 'adeel@gmail.com', '1a4acafba7e31ecb8628ad56c759413d', '$2y$10$PqfLQC73pT8VqW1ixMaJVu1Pzx5nDkKx468DDTeoK0tpWYt6X1xG2', 'HOD Project '),
(11, '177877', 'Umar Zahid', '1111', 'Male', 'abc', 'admin@gmail.com', '7cfaad8459db31286a83e55f1c97fb92', '$2y$10$ms9iEEsfzkBtTaopoPuBl.MttH9VwZaQ0CE8z7BsyP9qrWFuOPNem', 'sdsds');

-- --------------------------------------------------------

--
-- Table structure for table `instructor_messages`
--

CREATE TABLE `instructor_messages` (
  `message_id` int(11) NOT NULL,
  `instructor_id` int(11) NOT NULL,
  `class_id` int(11) NOT NULL,
  `section` varchar(1) NOT NULL,
  `title` varchar(80) NOT NULL,
  `data_time` varchar(11) NOT NULL,
  `messages` varchar(500) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `instructor_messages`
--

INSERT INTO `instructor_messages` (`message_id`, `instructor_id`, `class_id`, `section`, `title`, `data_time`, `messages`) VALUES
(6, 7, 9, 'B', 'Announcement', '31-07-2018', '<p><strong>Dear Student !</strong></p>\r\n<p>&nbsp;1st August Class Will be 3:00 to 5:00 PM</p>');

-- --------------------------------------------------------

--
-- Table structure for table `student_info`
--

CREATE TABLE `student_info` (
  `st_id` int(11) NOT NULL,
  `st_fullname` varchar(50) NOT NULL,
  `st_father_name` varchar(50) NOT NULL,
  `st_gender` varchar(7) NOT NULL,
  `st_class_id` int(11) NOT NULL,
  `st_roll_no` varchar(20) NOT NULL,
  `st_registation_no` varchar(20) NOT NULL,
  `st_session` varchar(30) NOT NULL,
  `st_email` varchar(50) NOT NULL,
  `st_verification_code` varchar(60) NOT NULL,
  `st_password` varchar(255) NOT NULL,
  `st_department_id` int(11) NOT NULL,
  `st_section` varchar(1) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `student_info`
--

INSERT INTO `student_info` (`st_id`, `st_fullname`, `st_father_name`, `st_gender`, `st_class_id`, `st_roll_no`, `st_registation_no`, `st_session`, `st_email`, `st_verification_code`, `st_password`, `st_department_id`, `st_section`) VALUES
(15, 'Ammar Javed', 'Javed Ahmed', 'Male', 9, '090', 'F16-60', '2016 - 2018', 'ammar@gmail.com', 'f40536f46efa8025082f852fdfa12039', '$2y$10$QrtCDfYMBzKvENURA/2fIeRbEeGq.fpt/0qiL/WDpKKZTFjsEVaZ.', 7, 'B');

-- --------------------------------------------------------

--
-- Table structure for table `subject`
--

CREATE TABLE `subject` (
  `subject_id` int(11) NOT NULL,
  `class_id` int(11) NOT NULL,
  `subject_name` varchar(30) NOT NULL,
  `subject_tcr` int(11) NOT NULL,
  `semester` varchar(11) NOT NULL,
  `instructor_id` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `subject`
--

INSERT INTO `subject` (`subject_id`, `class_id`, `subject_name`, `subject_tcr`, `semester`, `instructor_id`) VALUES
(23, 9, 'HCI', 2, '4-semester', 6),
(24, 9, 'DDBMS', 2, '4-semester', 7),
(25, 9, 'Internet Programming', 2, '4-semester', 9),
(26, 9, 'Assembly Language', 2, '4-semester', 8);

-- --------------------------------------------------------

--
-- Table structure for table `time_table`
--

CREATE TABLE `time_table` (
  `time_table_id` int(11) NOT NULL,
  `subject_id` int(11) NOT NULL,
  `instructor_id` int(11) NOT NULL,
  `time` varchar(15) NOT NULL,
  `class_id` int(11) NOT NULL,
  `section` varchar(5) NOT NULL,
  `days` varchar(11) NOT NULL,
  `semester` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `time_table`
--

INSERT INTO `time_table` (`time_table_id`, `subject_id`, `instructor_id`, `time`, `class_id`, `section`, `days`, `semester`) VALUES
(4, 26, 8, '1:30 to 2:45', 9, 'B', 'Monday', 4),
(5, 24, 7, '3:15 to 4:30', 9, 'B', 'Monday', 4),
(6, 25, 9, '1:30 to 2:45', 9, 'B', 'Tuesday', 4),
(7, 24, 7, '3:15 to 4:30', 9, 'B', 'Tuesday', 4),
(8, 26, 8, '1:30 to 2:45', 9, 'B', 'Wednesday', 4),
(9, 23, 6, '3:15 to 4:30', 9, 'B', 'Wednesday', 4),
(10, 25, 9, '1:30 to 2:45', 9, 'B', 'Thursday', 4),
(11, 23, 6, '3:15 to 4:30', 9, 'B', 'Thursday', 4);

-- --------------------------------------------------------

--
-- Table structure for table `university_notices`
--

CREATE TABLE `university_notices` (
  `id` int(11) NOT NULL,
  `notices` varchar(500) NOT NULL,
  `notice_date` varchar(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `university_notices`
--

INSERT INTO `university_notices` (`id`, `notices`, `notice_date`) VALUES
(5, '<p>Hi !</p>\r\n<p>&nbsp; <strong>Dear Student&nbsp;</strong></p>\r\n<p>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;Tomorrow University Class will be off. Classes will resume from 26-07-2018&nbsp;</p>\r\n<p><strong>Regards</strong></p>\r\n<p><strong>&nbsp; &nbsp;Superior University FSD</strong></p>', '24-07-2018');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `academic_details`
--
ALTER TABLE `academic_details`
  ADD PRIMARY KEY (`academic_id`),
  ADD KEY `student_id` (`student_id`),
  ADD KEY `subject_id` (`subject_id`,`instructor_id`),
  ADD KEY `instructor_id` (`instructor_id`);

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `assignment`
--
ALTER TABLE `assignment`
  ADD PRIMARY KEY (`assignment_id`),
  ADD KEY `class_id` (`class_id`),
  ADD KEY `subject_id` (`subject_id`),
  ADD KEY `instructor_id` (`instructor_id`);

--
-- Indexes for table `attendance`
--
ALTER TABLE `attendance`
  ADD PRIMARY KEY (`attendance_id`),
  ADD KEY `class_id` (`class_id`),
  ADD KEY `subject_id` (`subject_id`),
  ADD KEY `student_id` (`student_id`),
  ADD KEY `instructor_id` (`instructor_id`);

--
-- Indexes for table `classes`
--
ALTER TABLE `classes`
  ADD PRIMARY KEY (`class_id`),
  ADD KEY `department_id` (`department_id`);

--
-- Indexes for table `date_sheet`
--
ALTER TABLE `date_sheet`
  ADD PRIMARY KEY (`date_sheet_id`),
  ADD KEY `subject_id` (`subject_id`),
  ADD KEY `class_id` (`class_id`);

--
-- Indexes for table `department`
--
ALTER TABLE `department`
  ADD PRIMARY KEY (`department_id`),
  ADD UNIQUE KEY `department_name` (`department_name`);

--
-- Indexes for table `fee_details`
--
ALTER TABLE `fee_details`
  ADD PRIMARY KEY (`fee_id`),
  ADD KEY `student_id` (`student_id`);

--
-- Indexes for table `instructor`
--
ALTER TABLE `instructor`
  ADD PRIMARY KEY (`instructor_id`),
  ADD UNIQUE KEY `instructor_code` (`instructor_code`),
  ADD UNIQUE KEY `instructor_email` (`instructor_email`),
  ADD UNIQUE KEY `instructor_cnic` (`instructor_cnic`);

--
-- Indexes for table `instructor_messages`
--
ALTER TABLE `instructor_messages`
  ADD PRIMARY KEY (`message_id`),
  ADD KEY `instructor_id` (`instructor_id`),
  ADD KEY `class_id` (`class_id`);

--
-- Indexes for table `student_info`
--
ALTER TABLE `student_info`
  ADD PRIMARY KEY (`st_id`),
  ADD UNIQUE KEY `Registation NO` (`st_registation_no`),
  ADD UNIQUE KEY `st_roll_no` (`st_roll_no`),
  ADD UNIQUE KEY `email` (`st_email`),
  ADD KEY `st_class_id` (`st_class_id`),
  ADD KEY `st_password` (`st_password`),
  ADD KEY `st_department_id` (`st_department_id`);

--
-- Indexes for table `subject`
--
ALTER TABLE `subject`
  ADD PRIMARY KEY (`subject_id`),
  ADD KEY `class_id` (`class_id`),
  ADD KEY `subject_tcr` (`subject_tcr`),
  ADD KEY `instructor_id` (`instructor_id`);

--
-- Indexes for table `time_table`
--
ALTER TABLE `time_table`
  ADD PRIMARY KEY (`time_table_id`),
  ADD KEY `subject_id` (`subject_id`),
  ADD KEY `instructor_id` (`instructor_id`),
  ADD KEY `class_id` (`class_id`);

--
-- Indexes for table `university_notices`
--
ALTER TABLE `university_notices`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `academic_details`
--
ALTER TABLE `academic_details`
  MODIFY `academic_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `assignment`
--
ALTER TABLE `assignment`
  MODIFY `assignment_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `attendance`
--
ALTER TABLE `attendance`
  MODIFY `attendance_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `classes`
--
ALTER TABLE `classes`
  MODIFY `class_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `date_sheet`
--
ALTER TABLE `date_sheet`
  MODIFY `date_sheet_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `department`
--
ALTER TABLE `department`
  MODIFY `department_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `fee_details`
--
ALTER TABLE `fee_details`
  MODIFY `fee_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `instructor`
--
ALTER TABLE `instructor`
  MODIFY `instructor_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `instructor_messages`
--
ALTER TABLE `instructor_messages`
  MODIFY `message_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `student_info`
--
ALTER TABLE `student_info`
  MODIFY `st_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `subject`
--
ALTER TABLE `subject`
  MODIFY `subject_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;

--
-- AUTO_INCREMENT for table `time_table`
--
ALTER TABLE `time_table`
  MODIFY `time_table_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `university_notices`
--
ALTER TABLE `university_notices`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
