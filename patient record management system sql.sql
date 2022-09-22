-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Aug 04, 2022 at 04:28 AM
-- Server version: 10.4.22-MariaDB
-- PHP Version: 8.1.1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `prs`
--

-- --------------------------------------------------------

--
-- Table structure for table `asses`
--

CREATE TABLE `asses` (
  `assesId` int(255) NOT NULL,
  `DocfirstName` varchar(20) NOT NULL,
  `Doclastname` varchar(20) NOT NULL,
  `patientId` varchar(255) NOT NULL,
  `assesDate` date NOT NULL,
  `assesTime` time NOT NULL,
  `age` int(3) NOT NULL,
  `pulse` int(4) NOT NULL,
  `temperature` double(3,1) NOT NULL,
  `weight` double(4,1) NOT NULL,
  `bp` varchar(255) NOT NULL,
  `allergies` varchar(255) NOT NULL,
  `complains` varchar(255) NOT NULL,
  `complainHistory` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `asses`
--

INSERT INTO `asses` (`assesId`, `DocfirstName`, `Doclastname`, `patientId`, `assesDate`, `assesTime`, `age`, `pulse`, `temperature`, `weight`, `bp`, `allergies`, `complains`, `complainHistory`) VALUES
(1, 'RUFUS', 'KAIRU', '33', '2022-06-29', '12:34:15', 23, 30, 30.0, 78.0, '190/89', 'No', 'headach,fever,coughing,', 'headach,sensitive to cold'),
(2, 'RUFUS', 'KAIRU', '120', '2022-07-05', '03:23:07', 45, 87, 34.0, 67.0, '167/90', 'No', 'headach,stomach', 'no'),
(3, 'MARTIN', 'KAMAU', '33', '2022-07-19', '03:26:39', 23, 30, 34.0, 78.0, '190/89', 'No', 'stomach pain', 'for two weeks');

-- --------------------------------------------------------

--
-- Table structure for table `diagnosis`
--

CREATE TABLE `diagnosis` (
  `diagnosisId` int(11) NOT NULL,
  `patientId` int(11) NOT NULL,
  `diagnosisreport` varchar(255) NOT NULL,
  `medication` varchar(255) NOT NULL,
  `Date` date NOT NULL,
  `TIME` time NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `diagnosis`
--

INSERT INTO `diagnosis` (`diagnosisId`, `patientId`, `diagnosisreport`, `medication`, `Date`, `TIME`) VALUES
(1, 33, 'Pneumonia, heart attack, symptoms of fever', 'Metmorphin, automophirsm', '2022-06-29', '12:48:23'),
(2, 120, 'malaria', 'asprin', '2022-07-05', '03:23:51'),
(3, 33, 'stomach allergies', 'brufen', '2022-07-19', '03:28:18');

-- --------------------------------------------------------

--
-- Table structure for table `patientdetails`
--

CREATE TABLE `patientdetails` (
  `patientId` varchar(255) NOT NULL,
  `patientFirstName` varchar(255) NOT NULL,
  `patientLastName` varchar(255) NOT NULL,
  `patientSurname` varchar(255) NOT NULL,
  `patientAge` int(3) NOT NULL,
  `patientGender` varchar(255) NOT NULL,
  `patientEmail` varchar(255) NOT NULL,
  `patientCategory` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `patientdetails`
--

INSERT INTO `patientdetails` (`patientId`, `patientFirstName`, `patientLastName`, `patientSurname`, `patientAge`, `patientGender`, `patientEmail`, `patientCategory`) VALUES
('120', 'KEN', 'MARK', 'KAMAU', 12, 'Male', 'kenmark@gmail.com', ''),
('23', 'PAUL', 'MA', 'KIP', 34, 'Male', 'kip@gmail.com', 'inpatient'),
('30', 'KENNETH', 'OTIENO', 'OMOLLO', 35, 'Male', 'kenneth@gmail.com', ''),
('33', 'CHRIS', 'KHAKI', 'WOODS', 23, 'Male', 'chris@gmail.com', ''),
('57', 'JOAN', 'CYNTHIA', 'WACHERA', 34, 'Female', 'juanita@gmail.com', '');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `empNo` varchar(15) NOT NULL,
  `empPassword` varchar(255) NOT NULL,
  `userType` varchar(12) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`empNo`, `empPassword`, `userType`) VALUES
('1', 'admin', 'admin'),
('100', 'employee01', 'receptionist'),
('101', 'employee02', 'doctor'),
('102', 'pharmacist01', 'pharmacist'),
('104', 'employee04', 'doctor'),
('90', 'doc90', 'doctor');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `asses`
--
ALTER TABLE `asses`
  ADD PRIMARY KEY (`assesId`);

--
-- Indexes for table `diagnosis`
--
ALTER TABLE `diagnosis`
  ADD PRIMARY KEY (`diagnosisId`);

--
-- Indexes for table `patientdetails`
--
ALTER TABLE `patientdetails`
  ADD PRIMARY KEY (`patientId`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`empNo`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `asses`
--
ALTER TABLE `asses`
  MODIFY `assesId` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `diagnosis`
--
ALTER TABLE `diagnosis`
  MODIFY `diagnosisId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
