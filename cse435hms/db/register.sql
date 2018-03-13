-- phpMyAdmin SQL Dump
-- version 4.7.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Mar 13, 2018 at 08:56 PM
-- Server version: 10.1.30-MariaDB
-- PHP Version: 7.2.1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `register`
--

-- --------------------------------------------------------

--
-- Table structure for table `appointment`
--

CREATE TABLE `appointment` (
  `appointment_id` int(5) NOT NULL,
  `appointment_doctor` int(30) NOT NULL,
  `appointment_patient` int(30) NOT NULL,
  `appointment_time` time NOT NULL,
  `appointment_date` date NOT NULL,
  `appointment_available` varchar(3) NOT NULL DEFAULT 'YES'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `appointment`
--

INSERT INTO `appointment` (`appointment_id`, `appointment_doctor`, `appointment_patient`, `appointment_time`, `appointment_date`, `appointment_available`) VALUES
(21, 1, 1, '00:34:00', '2018-12-03', 'YES'),
(22, 9, 1, '02:00:00', '2018-12-01', 'YES'),
(23, 2, 2, '12:03:00', '5678-12-31', 'YES');

-- --------------------------------------------------------

--
-- Table structure for table `delete_appointment`
--

CREATE TABLE `delete_appointment` (
  `appointment_id` int(5) NOT NULL,
  `appointment_doctor` int(30) NOT NULL,
  `appointment_patient` int(30) NOT NULL,
  `appointment_time` time NOT NULL,
  `appointment_date` date NOT NULL,
  `appointment_available` varchar(3) NOT NULL DEFAULT 'YES'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `doctor`
--

CREATE TABLE `doctor` (
  `doctor_id` int(5) NOT NULL,
  `doctor_name` varchar(30) NOT NULL,
  `doctor_spec` varchar(30) NOT NULL,
  `doctor_available` varchar(3) NOT NULL DEFAULT 'YES'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `doctor`
--

INSERT INTO `doctor` (`doctor_id`, `doctor_name`, `doctor_spec`, `doctor_available`) VALUES
(1, 'toumal', 'heart', 'YES'),
(2, 'somik', 'eye', 'YES'),
(3, 'sobuj', 'skin', 'YES'),
(9, 'junnun', 'eye', 'YES');

-- --------------------------------------------------------

--
-- Table structure for table `patient`
--

CREATE TABLE `patient` (
  `patient_id` int(5) NOT NULL,
  `patient_name` varchar(30) NOT NULL,
  `patient_address` varchar(30) NOT NULL,
  `patient_gender` varchar(6) NOT NULL,
  `patient_available` varchar(3) NOT NULL DEFAULT 'YES'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `patient`
--

INSERT INTO `patient` (`patient_id`, `patient_name`, `patient_address`, `patient_gender`, `patient_available`) VALUES
(1, 'hasan', 'rampura', 'male', 'YES'),
(2, 'rakib', 'badda', 'male', 'YES'),
(3, 'junnun', 'motijheel', 'male', 'YES');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `username` varchar(50) NOT NULL,
  `email` varchar(50) NOT NULL,
  `password` varchar(50) NOT NULL,
  `trn_date` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `username`, `email`, `password`, `trn_date`) VALUES
(4, 'toumal', 'toumal@gmail.com', 'e10adc3949ba59abbe56e057f20f883e', '2018-03-13 19:48:29');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `appointment`
--
ALTER TABLE `appointment`
  ADD PRIMARY KEY (`appointment_id`);

--
-- Indexes for table `delete_appointment`
--
ALTER TABLE `delete_appointment`
  ADD PRIMARY KEY (`appointment_id`);

--
-- Indexes for table `doctor`
--
ALTER TABLE `doctor`
  ADD PRIMARY KEY (`doctor_id`);

--
-- Indexes for table `patient`
--
ALTER TABLE `patient`
  ADD PRIMARY KEY (`patient_id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `email` (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `appointment`
--
ALTER TABLE `appointment`
  MODIFY `appointment_id` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;

--
-- AUTO_INCREMENT for table `doctor`
--
ALTER TABLE `doctor`
  MODIFY `doctor_id` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `patient`
--
ALTER TABLE `patient`
  MODIFY `patient_id` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
