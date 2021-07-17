-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jul 17, 2021 at 10:34 PM
-- Server version: 10.4.13-MariaDB
-- PHP Version: 7.4.8

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `reportcard`
--

-- --------------------------------------------------------

--
-- Table structure for table `results`
--

CREATE TABLE `results` (
  `no` int(10) NOT NULL,
  `term` varchar(32) NOT NULL,
  `year` date NOT NULL,
  `subject_id` varchar(32) NOT NULL,
  `student_id` varchar(32) NOT NULL,
  `marks` int(32) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `student`
--

CREATE TABLE `student` (
  `no` int(32) NOT NULL,
  `stud_name` varchar(32) NOT NULL,
  `stud_id` varchar(32) NOT NULL,
  `dob` varchar(10) NOT NULL,
  `sex` varchar(32) NOT NULL,
  `series` varchar(32) NOT NULL,
  `class` varchar(32) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `subject`
--

CREATE TABLE `subject` (
  `no` int(10) NOT NULL,
  `Subject_name` varchar(32) NOT NULL,
  `Subject_id` varchar(32) NOT NULL,
  `teacher_id` varchar(32) NOT NULL,
  `coefficient` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `subject`
--

INSERT INTO `subject` (`no`, `Subject_name`, `Subject_id`, `teacher_id`, `coefficient`) VALUES
(1, 'biology', 'bio1', 'teach1', 5),
(2, 'chemistry', 'chem1', 'teach2', 4),
(4, 'economics', 'econs1', 'econsteach1', 6),
(3, 'geography', 'geo1', 'teach3', 4);

-- --------------------------------------------------------

--
-- Table structure for table `teachers`
--

CREATE TABLE `teachers` (
  `no` int(11) NOT NULL,
  `teacher_id` varchar(11) NOT NULL,
  `teacher_name` varchar(11) NOT NULL,
  `subject_id` varchar(32) NOT NULL,
  `email` varchar(32) NOT NULL,
  `password` varchar(32) NOT NULL,
  `status` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `teachers`
--

INSERT INTO `teachers` (`no`, `teacher_id`, `teacher_name`, `subject_id`, `email`, `password`, `status`) VALUES
(1, '', 'Supper_Admi', '', 'Admin', 'adminpass', 0);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `subject`
--
ALTER TABLE `subject`
  ADD PRIMARY KEY (`Subject_id`);

--
-- Indexes for table `teachers`
--
ALTER TABLE `teachers`
  ADD PRIMARY KEY (`teacher_id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
