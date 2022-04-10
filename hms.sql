-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Mar 16, 2022 at 04:52 AM
-- Server version: 10.4.22-MariaDB
-- PHP Version: 7.4.27

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `hms`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `id` int(11) NOT NULL,
  `username` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `updationDate` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`id`, `username`, `password`, `updationDate`) VALUES
(1, 'shamim', 's12345@', '28-12-2016 11:42:05 AM');

-- --------------------------------------------------------

--
-- Table structure for table `appointment`
--

CREATE TABLE `appointment` (
  `id` int(11) NOT NULL,
  `doctorSpecialization` varchar(255) DEFAULT NULL,
  `doctorId` int(11) DEFAULT NULL,
  `userId` int(11) DEFAULT NULL,
  `consultancyFees` int(11) DEFAULT NULL,
  `appointmentDate` varchar(255) DEFAULT NULL,
  `appointmentTime` varchar(255) DEFAULT NULL,
  `postingDate` timestamp NULL DEFAULT current_timestamp(),
  `userStatus` int(11) DEFAULT NULL,
  `doctorStatus` int(11) DEFAULT NULL,
  `updationDate` timestamp NULL DEFAULT NULL ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `appointment`
--

INSERT INTO `appointment` (`id`, `doctorSpecialization`, `doctorId`, `userId`, `consultancyFees`, `appointmentDate`, `appointmentTime`, `postingDate`, `userStatus`, `doctorStatus`, `updationDate`) VALUES
(3, 'Demo test', 7, 6, 600, '2022-02-28', '9:15 AM', '2022-02-23 18:31:28', 1, 0, '2022-03-16 03:29:14'),
(4, 'Ayurveda', 5, 5, 8050, '2019-11-08', '1:00 PM', '2019-11-05 10:28:54', 1, 1, '0000-00-00 00:00:00'),
(5, 'Dermatologist', 9, 7, 500, '2019-11-30', '5:30 PM', '2019-11-10 18:41:34', 1, 0, '2019-11-10 18:48:30'),
(6, 'Physician', 11, 2, 2000, '2020-07-14', '10:15 AM', '2020-07-05 02:12:37', 1, 1, NULL),
(7, 'General Physician', 3, 2, 1200, '2020-07-05', '10:15 AM', '2020-07-05 02:14:49', 1, 1, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `doctors`
--

CREATE TABLE `doctors` (
  `id` int(11) NOT NULL,
  `specilization` varchar(255) DEFAULT NULL,
  `doctorName` varchar(255) DEFAULT NULL,
  `address` longtext DEFAULT NULL,
  `docFees` varchar(255) DEFAULT NULL,
  `contactno` bigint(11) DEFAULT NULL,
  `docEmail` varchar(255) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `creationDate` timestamp NULL DEFAULT current_timestamp(),
  `updationDate` timestamp NULL DEFAULT NULL ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `doctors`
--

INSERT INTO `doctors` (`id`, `specilization`, `doctorName`, `address`, `docFees`, `contactno`, `docEmail`, `password`, `creationDate`, `updationDate`) VALUES
(1, 'Dentist', 'MD sarkar', 'Dhaka Medical', '500', 8285703354, 'sarkar.lpu1@gmail.com', '123456', '2020-12-29 06:25:37', '2022-03-16 03:35:49'),
(2, 'Homeopath', 'Amzad ali', 'Appolo', '600', 2147483647, 'amzad@gmail.com', 'f925916e2754e5e03f75dd58a5733251', '2020-12-29 06:51:51', '2022-03-16 03:23:15'),
(3, 'General Physician', 'Shakib', 'Square Hospital', '1200', 8523699999, 'shakib@gmail.com', 'f925916e2754e5e03f75dd58a5733251', '2017-01-07 07:43:35', '2022-03-16 03:24:04'),
(4, 'Homeopath', 'Sajan', 'LAB-AID', '700', 25668888, 'sajan@gmail.com', 'f925916e2754e5e03f75dd58a5733251', '2018-01-07 07:45:09', '2022-03-16 03:25:02'),
(5, 'Ayurveda', 'Fahad', 'dhaka', '8050', 442166644646, 'fahad@gmail.com', 'f925916e2754e5e03f75dd58a5733251', '2020-01-07 07:47:07', '2022-03-16 03:25:57'),
(6, 'General Physician', 'Amrita', 'dhaka', '2500', 45497964, 'amrita@test.com', 'f925916e2754e5e03f75dd58a5733251', '2019-01-07 07:52:50', '2022-03-16 03:26:15'),
(7, 'Demo test', 'abc ', 'dhaka', '200', 852888888, 'test@demo.com', 'f925916e2754e5e03f75dd58a5733251', '2017-01-07 08:08:58', '2022-03-16 03:28:02'),
(8, 'Ayurveda', 'Test Doctor', 'dhaka', '600', 1234567890, 'test@test.com', '202cb962ac59075b964b07152d234b70', '2019-06-23 17:57:43', '2022-03-16 03:28:19'),
(11, 'Physician', 'Jonah Juarez', 'Surigao Philippines', '2000', 123456789, 'jjuarez@gmail.com', '25f9e794323b453885f5181f1b624d0b', '2020-07-05 02:06:00', '2020-07-05 02:06:48');

-- --------------------------------------------------------

--
-- Table structure for table `doctorslog`
--

CREATE TABLE `doctorslog` (
  `id` int(11) NOT NULL,
  `uid` int(11) DEFAULT NULL,
  `username` varchar(255) DEFAULT NULL,
  `userip` binary(16) DEFAULT NULL,
  `loginTime` timestamp NULL DEFAULT current_timestamp(),
  `logout` varchar(255) DEFAULT NULL,
  `status` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `doctorslog`
--

INSERT INTO `doctorslog` (`id`, `uid`, `username`, `userip`, `loginTime`, `logout`, `status`) VALUES
(20, 7, 'test@demo.com', 0x3a3a3100000000000000000000000000, '2020-07-05 01:50:01', NULL, 1),
(21, NULL, 'abdullah@gmail.com', 0x3a3a3100000000000000000000000000, '2020-07-05 02:02:51', NULL, 0),
(22, NULL, 'juarez@gmail.com', 0x3a3a3100000000000000000000000000, '2020-07-05 02:03:03', NULL, 0),
(23, NULL, 'jjuarez@gmail.com', 0x3a3a3100000000000000000000000000, '2020-07-05 02:04:02', NULL, 0),
(24, NULL, 'jjuarez@gmail.com', 0x3a3a3100000000000000000000000000, '2020-07-05 02:04:38', NULL, 0),
(25, 11, 'jjuarez@gmail.com', 0x3a3a3100000000000000000000000000, '2020-07-05 02:06:19', NULL, 1),
(26, 11, 'jjuarez@gmail.com', 0x3a3a3100000000000000000000000000, '2020-07-05 02:06:38', NULL, 1),
(27, 11, 'jjuarez@gmail.com', 0x3a3a3100000000000000000000000000, '2020-07-05 02:08:18', NULL, 1),
(28, 11, 'jjuarez@gmail.com', 0x3a3a3100000000000000000000000000, '2020-07-05 02:15:25', NULL, 1),
(29, NULL, 'sarita@gmail.com', 0x3a3a3100000000000000000000000000, '2022-03-13 18:43:56', NULL, 0),
(30, 7, 'test@demo.com', 0x3a3a3100000000000000000000000000, '2022-03-13 18:45:52', '14-03-2022 12:18:14 AM', 1),
(31, NULL, 'shamim', 0x3a3a3100000000000000000000000000, '2022-03-13 18:52:47', NULL, 0),
(32, NULL, 'shamim', 0x3a3a3100000000000000000000000000, '2022-03-16 02:57:57', NULL, 0),
(33, NULL, 'shamim', 0x3a3a3100000000000000000000000000, '2022-03-16 02:57:58', NULL, 0),
(34, NULL, 'shamim', 0x3a3a3100000000000000000000000000, '2022-03-16 03:30:24', NULL, 0),
(35, NULL, 'shamim', 0x3a3a3100000000000000000000000000, '2022-03-16 03:31:03', NULL, 0),
(36, NULL, ' admin', 0x3a3a3100000000000000000000000000, '2022-03-16 03:32:31', NULL, 0),
(37, NULL, '	 MD sarkar', 0x3a3a3100000000000000000000000000, '2022-03-16 03:36:33', NULL, 0),
(38, 7, 'test@demo.com', 0x3a3a3100000000000000000000000000, '2022-03-16 03:37:07', '16-03-2022 09:08:58 AM', 1);

-- --------------------------------------------------------

--
-- Table structure for table `doctorspecilization`
--

CREATE TABLE `doctorspecilization` (
  `id` int(11) NOT NULL,
  `specilization` varchar(255) DEFAULT NULL,
  `creationDate` timestamp NULL DEFAULT current_timestamp(),
  `updationDate` timestamp NULL DEFAULT NULL ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `doctorspecilization`
--

INSERT INTO `doctorspecilization` (`id`, `specilization`, `creationDate`, `updationDate`) VALUES
(1, 'Gynecologist/Obstetrician', '2021-12-28 06:37:25', '2022-03-16 03:19:54'),
(2, 'General Physician', '2016-12-28 06:38:12', '0000-00-00 00:00:00'),
(3, 'Dermatologist', '2016-12-28 06:38:48', '0000-00-00 00:00:00'),
(4, 'Homeopath', '2016-12-28 06:39:26', '0000-00-00 00:00:00'),
(5, 'Ayurveda', '2016-12-28 06:39:51', '0000-00-00 00:00:00'),
(6, 'Dentist', '2016-12-28 06:40:08', '0000-00-00 00:00:00'),
(7, 'Ear-Nose-Throat (Ent) Specialist', '2016-12-28 06:41:18', '0000-00-00 00:00:00'),
(9, 'Demo test', '2016-12-28 07:37:39', '0000-00-00 00:00:00'),
(10, 'Bones Specialist demo', '2017-01-07 08:07:53', '0000-00-00 00:00:00'),
(11, 'Test', '2019-06-23 17:51:06', '2019-06-23 17:55:06'),
(12, 'Dermatologist', '2019-11-10 18:36:36', '2019-11-10 18:36:50'),
(13, 'Physician', '2020-07-05 01:59:00', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `tblcontactus`
--

CREATE TABLE `tblcontactus` (
  `id` int(11) NOT NULL,
  `fullname` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `contactno` bigint(12) DEFAULT NULL,
  `message` mediumtext DEFAULT NULL,
  `PostingDate` timestamp NULL DEFAULT current_timestamp(),
  `AdminRemark` mediumtext DEFAULT NULL,
  `LastupdationDate` timestamp NULL DEFAULT NULL ON UPDATE current_timestamp(),
  `IsRead` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tblcontactus`
--

INSERT INTO `tblcontactus` (`id`, `fullname`, `email`, `contactno`, `message`, `PostingDate`, `AdminRemark`, `LastupdationDate`, `IsRead`) VALUES
(1, 'test user', 'test@gmail.com', 2523523522523523, ' This is sample text for the test.', '2019-06-29 19:03:08', 'Test Admin Remark', '2022-03-12 12:55:23', 1),
(2, 'shamim shakil', 'shakil20@gmail.com', 1111111111111111, ' abcdefghijklmnop', '2022-03-12 13:06:50', 'Answered', '2022-03-16 03:18:20', 1),
(3, 'fdsfsdf', 'fsdfsd@ghashhgs.com', 3264826346, 'sample text   sample text  sample text  sample text  sample text  sample text  sample text  sample text  sample text  sample text  sample text  sample text  sample text  sample text  sample text  sample text  sample text  sample text  sample text  sample text  sample text  sample text  sample text  sample text  ', '2022-03-10 18:53:48', 'vfdsfgfd', '2022-03-10 18:54:04', 1),
(4, 'demo', 'demo@gmail.com', 123456789, ' hi, this is a demo', '2022-03-12 01:57:20', 'answered', '2022-03-12 01:57:46', 1);

-- --------------------------------------------------------

--
-- Table structure for table `tblmedicalhistory`
--

CREATE TABLE `tblmedicalhistory` (
  `ID` int(10) NOT NULL,
  `PatientID` int(10) DEFAULT NULL,
  `BloodPressure` varchar(200) DEFAULT NULL,
  `BloodSugar` varchar(200) NOT NULL,
  `Weight` varchar(100) DEFAULT NULL,
  `Temperature` varchar(200) DEFAULT NULL,
  `MedicalPres` mediumtext DEFAULT NULL,
  `CreationDate` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tblmedicalhistory`
--

INSERT INTO `tblmedicalhistory` (`ID`, `PatientID`, `BloodPressure`, `BloodSugar`, `Weight`, `Temperature`, `MedicalPres`, `CreationDate`) VALUES
(2, 3, '120/185', '80/120', '85 Kg', '101 degree', '#Fever, #BP high\r\n1.Paracetamol\r\n2.jocib tab\r\n', '2022-03-15 04:20:07'),
(3, 2, '90/120', '92/190', '86 kg', '99 deg', '#Sugar High\r\n1.Petz 30', '2022-03-15 04:31:24'),
(4, 1, '125/200', '86/120', '56 kg', '98 deg', '# blood pressure is high\r\n1.koil cipla', '2022-03-16 04:52:42'),
(5, 1, '96/120', '98/120', '57 kg', '102 deg', '#Viral\r\n1.gjgjh-1Ml\r\n2.kjhuiy-2M', '2022-03-15 04:56:55');

-- --------------------------------------------------------

--
-- Table structure for table `tblpatient`
--

CREATE TABLE `tblpatient` (
  `ID` int(10) NOT NULL,
  `Docid` int(10) DEFAULT NULL,
  `PatientName` varchar(200) DEFAULT NULL,
  `PatientContno` bigint(10) DEFAULT NULL,
  `PatientEmail` varchar(200) DEFAULT NULL,
  `PatientGender` varchar(50) DEFAULT NULL,
  `PatientAdd` mediumtext DEFAULT NULL,
  `PatientAge` int(10) DEFAULT NULL,
  `PatientMedhis` mediumtext DEFAULT NULL,
  `CreationDate` timestamp NULL DEFAULT current_timestamp(),
  `UpdationDate` timestamp NULL DEFAULT NULL ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tblpatient`
--

INSERT INTO `tblpatient` (`ID`, `Docid`, `PatientName`, `PatientContno`, `PatientEmail`, `PatientGender`, `PatientAdd`, `PatientAge`, `PatientMedhis`, `CreationDate`, `UpdationDate`) VALUES
(1, 1, 'Rabbi', 4558968789, 'test@gmail.com', 'Female', '\"Block J-127, Bashundhara R\\A', 26, 'He is diabetic patient', '0000-00-00 00:00:00', '2022-03-13 06:48:05'),
(4, 7, 'Manav ', 9888988989, 'sharma@gmail.com', 'Male', 'Kuratolo,Kuril', 45, 'He is long suffered by asthma', '2022-03-14 14:33:54', '2022-03-14 14:34:31'),
(5, 9, 'Niloy', 1234567890, 'niloy@test.com', 'male', 'Test ', 25, 'THis is sample text for testing.', '2022-03-14 18:49:24', NULL),
(6, 0, 'Abdullah', 123456789, 'abdullah@20@gmail.com', 'male', 'AIUB,Dhaka', 35, 'Diagnosed of High Blood Pressure', '2022-03-15 02:08:09', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `userlog`
--

CREATE TABLE `userlog` (
  `id` int(11) NOT NULL,
  `uid` int(11) DEFAULT NULL,
  `username` varchar(255) DEFAULT NULL,
  `userip` binary(16) DEFAULT NULL,
  `loginTime` timestamp NULL DEFAULT current_timestamp(),
  `logout` varchar(255) DEFAULT NULL,
  `status` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `userlog`
--

INSERT INTO `userlog` (`id`, `uid`, `username`, `userip`, `loginTime`, `logout`, `status`) VALUES
(24, 2, 'test@gmail.com', 0x3a3a3100000000000000000000000000, '2022-03-15 01:50:24', NULL, 1),
(25, NULL, 'test1@gmail.com', 0x3a3a3100000000000000000000000000, '2022-03-15 02:09:18', NULL, 0),
(26, NULL, 'shamim325@gmail.com', 0x3a3a3100000000000000000000000000, '2022-03-15 02:11:05', NULL, 0),
(27, NULL, 'test@demo.com', 0x3a3a3100000000000000000000000000, '2022-03-15 02:11:24', NULL, 0),
(28, NULL, 'shamim325@gmail.com', 0x3a3a3100000000000000000000000000, '2022-03-15 02:11:46', NULL, 0),
(29, 2, 'test@gmail.com', 0x3a3a3100000000000000000000000000, '2022-03-15 02:12:00', NULL, 1),
(30, NULL, 'test@demo.com', 0x3a3a3100000000000000000000000000, '2022-03-16 03:39:30', NULL, 0),
(31, NULL, 'test@demo.com', 0x3a3a3100000000000000000000000000, '2022-03-16 03:39:56', NULL, 0),
(32, NULL, ' test@gmail.com', 0x3a3a3100000000000000000000000000, '2022-03-16 03:40:59', NULL, 0),
(33, NULL, 'test@gmail.com', 0x3a3a3100000000000000000000000000, '2022-03-16 03:42:13', NULL, 0),
(34, 9, 'patient12@gmail.com', 0x3a3a3100000000000000000000000000, '2022-03-16 03:44:04', NULL, 1);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `fullName` varchar(255) DEFAULT NULL,
  `address` longtext DEFAULT NULL,
  `city` varchar(255) DEFAULT NULL,
  `gender` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `regDate` timestamp NULL DEFAULT current_timestamp(),
  `updationDate` timestamp NULL DEFAULT NULL ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `fullName`, `address`, `city`, `gender`, `email`, `password`, `regDate`, `updationDate`) VALUES
(2, 'Shakil', 'AIUB', 'DHAKA', 'male', 'SHAKIL@gmail.com', '12345@', '2022-03-14 05:34:39', '2022-03-15 01:55:24'),
(8, 'shamim', 'House - 1/a Road- 14 Nikunja-2 Dhaka 1229', 'Dhaka', 'male', 'shamim11@gmail.com', '827ccb0eea8a706c4c34a16891f84e7b', '2022-03-16 03:42:52', NULL),
(9, 'Md Naiemun Hasan Naiem', 'House - 1/a Road- 14 Nikunja-2 Dhaka 1229', 'Dhaka', 'male', 'patient12@gmail.com', 'e10adc3949ba59abbe56e057f20f883e', '2022-03-16 03:43:58', NULL);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `appointment`
--
ALTER TABLE `appointment`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `doctors`
--
ALTER TABLE `doctors`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `doctorslog`
--
ALTER TABLE `doctorslog`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `doctorspecilization`
--
ALTER TABLE `doctorspecilization`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tblcontactus`
--
ALTER TABLE `tblcontactus`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tblmedicalhistory`
--
ALTER TABLE `tblmedicalhistory`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `tblpatient`
--
ALTER TABLE `tblpatient`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `userlog`
--
ALTER TABLE `userlog`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD KEY `email` (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `appointment`
--
ALTER TABLE `appointment`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `doctors`
--
ALTER TABLE `doctors`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `doctorslog`
--
ALTER TABLE `doctorslog`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=39;

--
-- AUTO_INCREMENT for table `doctorspecilization`
--
ALTER TABLE `doctorspecilization`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `tblcontactus`
--
ALTER TABLE `tblcontactus`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `tblmedicalhistory`
--
ALTER TABLE `tblmedicalhistory`
  MODIFY `ID` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `tblpatient`
--
ALTER TABLE `tblpatient`
  MODIFY `ID` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `userlog`
--
ALTER TABLE `userlog`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=35;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
