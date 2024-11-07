-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Nov 07, 2024 at 06:27 PM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.1.25

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `ams`
--

-- --------------------------------------------------------

--
-- Table structure for table `assign_works`
--

CREATE TABLE `assign_works` (
  `W_ID` int(11) NOT NULL,
  `ROLLNO` int(11) NOT NULL,
  `NAMEE` varchar(255) NOT NULL,
  `SUBJECT_ID` int(11) NOT NULL,
  `NOTE_ID` int(11) NOT NULL,
  `FILE_PATH` varchar(225) NOT NULL,
  `CREATED_AT` int(11) NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

-- --------------------------------------------------------

--
-- Table structure for table `batches`
--

CREATE TABLE `batches` (
  `BATCH_ID` int(11) NOT NULL,
  `BATCH` varchar(200) NOT NULL,
  `YEARR` int(11) NOT NULL,
  `CLASS` varchar(100) NOT NULL,
  `SEMESTER_1` int(11) NOT NULL DEFAULT 0,
  `SEMESTER_2` int(11) NOT NULL DEFAULT 0,
  `SEMESTER_3` int(11) NOT NULL DEFAULT 0,
  `SEMESTER_4` int(11) NOT NULL DEFAULT 0,
  `SEMESTER_5` int(11) NOT NULL DEFAULT 0,
  `SEMESTER_6` int(11) NOT NULL DEFAULT 0,
  `SEMESTER_7` int(11) NOT NULL DEFAULT 0,
  `SEMESTER_8` int(11) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `batches`
--

INSERT INTO `batches` (`BATCH_ID`, `BATCH`, `YEARR`, `CLASS`, `SEMESTER_1`, `SEMESTER_2`, `SEMESTER_3`, `SEMESTER_4`, `SEMESTER_5`, `SEMESTER_6`, `SEMESTER_7`, `SEMESTER_8`) VALUES
(5, 'BCA2022', 2022, 'BCA', 1, 1, 1, 1, 0, 0, 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `events`
--

CREATE TABLE `events` (
  `id` int(11) NOT NULL,
  `USER_ID` int(11) NOT NULL,
  `event_date` date NOT NULL,
  `event_title` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `events`
--

INSERT INTO `events` (`id`, `USER_ID`, `event_date`, `event_title`) VALUES
(19, 321, '2024-11-07', 'test');

-- --------------------------------------------------------

--
-- Table structure for table `notes`
--

CREATE TABLE `notes` (
  `NOTE_ID` int(11) NOT NULL,
  `SUBJECT_ID` int(11) NOT NULL,
  `TEACHER_ID` int(11) NOT NULL,
  `MODULE` int(11) DEFAULT NULL,
  `MODULE_NAME` varchar(200) NOT NULL,
  `DESCRIPTIONN` varchar(255) NOT NULL,
  `CATEGORY` enum('NOTE','ASSIGNMENT','PAPERPATHWAY') NOT NULL,
  `BATCH` int(11) DEFAULT NULL,
  `FILE_NAME` varchar(255) NOT NULL,
  `UPLOAD_DATE` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `notes`
--

INSERT INTO `notes` (`NOTE_ID`, `SUBJECT_ID`, `TEACHER_ID`, `MODULE`, `MODULE_NAME`, `DESCRIPTIONN`, `CATEGORY`, `BATCH`, `FILE_NAME`, `UPLOAD_DATE`) VALUES
(60, 8, 105, 1, 'test1', 'ffffffffffff', 'NOTE', 2022, '../notesAndAssignments/NOTES/JAVA PROGRMMING USING LINUX_test1_1_note_2024-11-07_04-04-10 PM.pdf', '2024-11-07 15:04:10');

-- --------------------------------------------------------

--
-- Table structure for table `routemap`
--

CREATE TABLE `routemap` (
  `R_ID` int(11) NOT NULL,
  `TEACHER_ID` int(11) NOT NULL,
  `SUBJECT_NAME` varchar(225) DEFAULT NULL,
  `CLASS` varchar(225) NOT NULL,
  `YEARR` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `routemap`
--

INSERT INTO `routemap` (`R_ID`, `TEACHER_ID`, `SUBJECT_NAME`, `CLASS`, `YEARR`) VALUES
(100, 103, 'OPERATING SYSTEMS', 'BCA', 2023),
(101, 103, 'DATA STRUCTURE USING C++', 'BCA', 2023),
(102, 104, 'DATA STRUCTURE USING C++', 'BCA', 2023),
(103, 105, 'WEB PROGRAMING USING PHP', 'BCA', 2023),
(104, 105, 'JAVA PROGRMMING USING LINUX', 'BCA', 2022),
(105, 106, 'DESIGN AND ANALYSIS OF ALGORITHM', 'BCA', 2023),
(106, 107, 'COMPUTER GRAPHICS', 'BCA', 2023),
(107, 108, 'IT AND ENVIRONMENT', 'BCA', 2022),
(108, 109, 'IT AND ENVIRONMENT', 'BCA', 2022),
(109, 110, 'DESIGN AND ANALYSIS OF ALGORITHM', 'BCA', 2023),
(110, 111, 'ADVANCED STATISTICAL METHODS', 'BCA', 2023);

-- --------------------------------------------------------

--
-- Table structure for table `students`
--

CREATE TABLE `students` (
  `STUDENT_ID` int(11) NOT NULL,
  `USER_ID` int(11) NOT NULL,
  `NAMEE` varchar(100) NOT NULL,
  `CLASS_NAME` varchar(100) NOT NULL,
  `PARENT_CONTACT` varchar(100) NOT NULL,
  `BATCH_ID` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `students`
--

INSERT INTO `students` (`STUDENT_ID`, `USER_ID`, `NAMEE`, `CLASS_NAME`, `PARENT_CONTACT`, `BATCH_ID`) VALUES
(149, 252, 'AADIL SAKEER', 'BCA', '9876676511', 5),
(150, 253, 'AAFTHAB K I', 'BCA', '2233445544', 5),
(151, 254, 'ABDULRAUOF', 'BCA', '5466457746', 5),
(152, 255, 'ABHIN K S', 'BCA', '6567768775', 5),
(153, 256, 'ABID NAJEEB', 'BCA', '7788567473', 5),
(154, 257, 'ADITHYA  P V', 'BCA', '7477889364', 5),
(155, 258, 'AFSAL V N', 'BCA', '9967463567', 5),
(156, 259, 'AJMI T S', 'BCA', '3547899546', 5),
(157, 260, 'ALTHAF JAMAL', 'BCA', '7868675657', 5),
(158, 261, 'AMAL SAJI', 'BCA', '7788887776', 5),
(159, 262, 'ANAMIKA V U', 'BCA', '5895644658', 5),
(160, 263, 'ANAND O G', 'BCA', '5757688797', 5),
(161, 264, 'ANJALI PAI T S', 'BCA', '5756435333', 5),
(162, 265, 'ANU M A', 'BCA', '7879654323', 5),
(163, 266, 'APARNA  MOHAN', 'BCA', '4354466777', 5),
(164, 267, 'ARJUN P S', 'BCA', '6666464656', 5),
(165, 268, 'ARYA P S', 'BCA', '4646789988', 5),
(166, 269, 'ASNA T I', 'BCA', '9909868688', 5),
(167, 270, 'AYSHA SANJUNA', 'BCA', '6766788888', 5),
(168, 271, 'BHARATH  K M', 'BCA', '7767689797', 5),
(169, 272, 'DEVI CHANDANA  S', 'BCA', '6890809978', 5),
(170, 273, 'DIYA ZAINAB K A', 'BCA', '8798865645', 5),
(171, 274, 'FABIN PAUL FRANCIS', 'BCA', '4647586887', 5),
(172, 275, 'FAMIS NOUSHAD  T N', 'BCA', '5758687989', 5),
(173, 276, 'FARISA C A', 'BCA', '7466444444', 5),
(174, 277, 'FARISHA N A', 'BCA', '4546666666', 5),
(175, 278, 'FARSANA P S', 'BCA', '5466643555', 5),
(176, 279, 'FATHIMA ASHITHA  P A', 'BCA', '9876676546', 5),
(177, 280, 'FATHIMA C I', 'BCA', '6646677777', 5),
(178, 281, 'FATHIMA K B', 'BCA', '5635334234', 5),
(179, 282, 'FATHIMA K S', 'BCA', '4776544433', 5),
(180, 283, 'FATHIMA P A', 'BCA', '5367788888', 5),
(181, 284, 'FATHIMA SALIM ', 'BCA', '7866677777', 5),
(182, 285, 'FATHIMATH FASMINA V T', 'BCA', '4555556666', 5),
(183, 286, 'GASHIYA NAZRIN ', 'BCA', '7776655555', 5),
(184, 287, 'HARIKRISHNAN  U K', 'BCA', '7778888876', 5),
(185, 288, 'JASNAMOL E S', 'BCA', '4456655556', 5),
(186, 289, 'KADEEJA SHAMEER', 'BCA', '6646577577', 5),
(187, 290, 'KIRAN BABU', 'BCA', '4666677776', 5),
(188, 291, 'MAHIN C R', 'BCA', '7654445546', 5),
(189, 292, 'MALAVIKA SHIBU', 'BCA', '7777611111', 5),
(190, 293, 'MOHAMMED IQBAL  M A', 'BCA', '3323333444', 5),
(191, 294, 'MUHAMAD USMAN', 'BCA', '5555332224', 5),
(192, 295, 'MUHAMMAD P K', 'BCA', '5554333566', 5),
(193, 296, 'MUHAMMED ADHIL K R', 'BCA', '7776655554', 5),
(194, 297, 'MUHAMMED ANEES V N', 'BCA', '7778899998', 5),
(195, 298, 'MUHAMMED SUHAIL A M', 'BCA', '7666788996', 5),
(196, 299, 'MUHAMMED SWALIH  T L', 'BCA', '4333556777', 5),
(197, 300, 'NADIYA IBRAHIM', 'BCA', '5578900998', 5),
(198, 301, 'NAJITHA K N', 'BCA', '9990988877', 5),
(199, 302, 'NEHA T', 'BCA', '8098908789', 5),
(200, 303, 'NIMITHRA T S', 'BCA', '9098899099', 5),
(201, 304, 'PRATHAP', 'BCA', '6600676567', 5),
(202, 305, 'RAASHID V Z', 'BCA', '8877067667', 5),
(203, 306, 'RIHAN A M', 'BCA', '5067657906', 5),
(204, 307, 'RISWANA PARVIN K S', 'BCA', '8907980695', 5),
(205, 308, 'RITHU T R', 'BCA', '7908866079', 5),
(206, 309, 'SAFNA K S', 'BCA', '7909765546', 5),
(207, 310, 'SAFNA V A', 'BCA', '6767098909', 5),
(208, 311, 'SANA FATHIMA P S', 'BCA', '4095867855', 5),
(209, 312, 'SETHULAKSHMI A S', 'BCA', '3409678493', 5),
(210, 313, 'SHAHANA SALIM', 'BCA', '1298490380', 5),
(211, 314, 'SHAMSUDHEEN S', 'BCA', '5867302984', 5),
(212, 315, 'SREETHUMOL P B', 'BCA', '3049804886', 5),
(213, 316, 'SULFATH P M', 'BCA', '3848590303', 5),
(214, 317, 'SUSMIN GEORGE', 'BCA', '5767739003', 5),
(215, 318, 'SWETHA BABU', 'BCA', '5678849947', 5);

-- --------------------------------------------------------

--
-- Table structure for table `subjects`
--

CREATE TABLE `subjects` (
  `SUBJECT_ID` int(11) NOT NULL,
  `SUBJECT_NAME` varchar(200) NOT NULL,
  `CLASS_NAME` varchar(200) NOT NULL,
  `SEMESTER` int(11) NOT NULL,
  `TOTAL_MODULES` int(11) NOT NULL,
  `TEACHER_ID` int(11) DEFAULT NULL,
  `TEACHER_ID2` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `subjects`
--

INSERT INTO `subjects` (`SUBJECT_ID`, `SUBJECT_NAME`, `CLASS_NAME`, `SEMESTER`, `TOTAL_MODULES`, `TEACHER_ID`, `TEACHER_ID2`) VALUES
(1, 'ADVANCED STATISTICAL METHODS', 'BCA', 3, 4, 111, NULL),
(2, 'COMPUTER GRAPHICS', 'BCA', 3, 4, 107, NULL),
(3, 'MICROPROCESSOR AND PC HARDWARE', 'BCA', 3, 5, NULL, NULL),
(4, 'OPERATING SYSTEMS', 'BCA', 3, 5, 103, NULL),
(5, 'DATA STRUCTURE USING C++', 'BCA', 3, 5, 103, 104),
(6, 'COMPUTER NETWORKS', 'BCA', 5, 5, NULL, NULL),
(7, 'IT AND ENVIRONMENT', 'BCA', 5, 5, 108, 109),
(8, 'JAVA PROGRMMING USING LINUX', 'BCA', 5, 5, 105, NULL),
(9, 'OPEN COURSE', 'BCA', 5, 5, NULL, NULL),
(10, 'SYSTEM ANALYSIS AND SOFTWARE ENGINEERING', 'BCA', 4, 5, NULL, NULL),
(11, 'LINUX ADMINISTRATION', 'BCA', 4, 5, NULL, NULL),
(12, 'DESIGN AND ANALYSIS OF ALGORITHM', 'BCA', 4, 5, 106, 110),
(13, 'WEB PROGRAMING USING PHP', 'BCA', 4, 5, 105, NULL),
(14, 'OPERATION RESEARCH', 'BCA', 4, 4, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `teachers`
--

CREATE TABLE `teachers` (
  `TEACHER_ID` int(11) NOT NULL,
  `USER_ID` int(11) NOT NULL,
  `NAMEE` varchar(100) NOT NULL,
  `DEPARTMENT` varchar(100) NOT NULL,
  `JOINING_DATE` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `teachers`
--

INSERT INTO `teachers` (`TEACHER_ID`, `USER_ID`, `NAMEE`, `DEPARTMENT`, `JOINING_DATE`) VALUES
(103, 319, 'DR. LEENA C. SEKHAR', 'BCA', 'JULY 14, 2022'),
(104, 320, 'SRI. JOSEPH DERIL K S ', 'BCA', 'JULY 14, 2022'),
(105, 321, 'LT. IBRAHIM SALIM M', 'BCA', 'JULY 14, 2022'),
(106, 322, 'DR. JASEENA K U', 'BCA', 'JULY 14, 2022'),
(107, 323, 'DR. BISMIN', 'BCA', 'JULY 14, 2022'),
(108, 324, 'DR. SHAREENA V B ', 'BCA', 'JULY 14, 2022'),
(109, 325, 'DR. JULIE M DAVID', 'BCA', 'JULY 14, 2022'),
(110, 326, 'SRI. JASIR M P', 'BCA', 'JULY 14, 2022'),
(111, 327, 'SMT. SUFAIRA SHAMSUDHEEN', 'BCA', 'JULY 14, 2022');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `USER_ID` int(11) NOT NULL,
  `USER_NAME` varchar(100) NOT NULL,
  `PASSWORDD` varchar(100) NOT NULL,
  `EMAIL` varchar(100) NOT NULL,
  `ROLEE` enum('ADMIN','TEACHERS','STUDENTS') NOT NULL,
  `STATUSS` enum('ACTIVE','INACTIVE') NOT NULL DEFAULT 'ACTIVE'
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`USER_ID`, `USER_NAME`, `PASSWORDD`, `EMAIL`, `ROLEE`, `STATUSS`) VALUES
(1, 'admin', 'admin', 'admin@gmail.com', 'ADMIN', 'ACTIVE'),
(252, '220101', '220101', 'aadilsakeer@gmail.com', 'STUDENTS', 'ACTIVE'),
(253, '220102', '220102', 'aafthab@gmail.com', 'STUDENTS', 'ACTIVE'),
(254, '220103', '220103', 'ABDULRAUOF@gmail.com', 'STUDENTS', 'ACTIVE'),
(255, '220104', '220104', 'ABHIN@gmail.com', 'STUDENTS', 'ACTIVE'),
(256, '220105', '220105', 'ABID@gmail.com', 'STUDENTS', 'ACTIVE'),
(257, '220107', '220107', 'ADITHYA@gmail.com', 'STUDENTS', 'ACTIVE'),
(258, '220108', '220108', 'AFSAL@gmail.com', 'STUDENTS', 'ACTIVE'),
(259, '220109', '220109', 'AJMI@gmail.com', 'STUDENTS', 'ACTIVE'),
(260, '220111', '220111', 'ALTHAF@gmail.com', 'STUDENTS', 'ACTIVE'),
(261, '220112', '220112', 'AMAL@gmail.com', 'STUDENTS', 'ACTIVE'),
(262, '220113', '220113', 'ANAMIKA@gmail.com', 'STUDENTS', 'ACTIVE'),
(263, '220114', '220114', 'ANAND@gmail.com', 'STUDENTS', 'ACTIVE'),
(264, '220115', '220115', 'ANJALI@gmail.com', 'STUDENTS', 'ACTIVE'),
(265, '220116', '220116', 'ANU@gmail.com', 'STUDENTS', 'ACTIVE'),
(266, '220117', '220117', 'APARNA@gmail.com', 'STUDENTS', 'ACTIVE'),
(267, '220118', '220118', 'ARJUN@gmail.com', 'STUDENTS', 'ACTIVE'),
(268, '220119', '220119', 'ARYA@gmail.com', 'STUDENTS', 'ACTIVE'),
(269, '220120', '220120', 'ASNA@gmail.com', 'STUDENTS', 'ACTIVE'),
(270, '220121', '220121', 'AYSHA@gmail.com', 'STUDENTS', 'ACTIVE'),
(271, '220122', '220122', 'BHARATH@gmail.com', 'STUDENTS', 'ACTIVE'),
(272, '220123', '220123', 'DEVI@gmail.com', 'STUDENTS', 'ACTIVE'),
(273, '220124', '220124', 'DIYA@gmail.com', 'STUDENTS', 'ACTIVE'),
(274, '220125', '220125', 'FABIN@gmail.com', 'STUDENTS', 'ACTIVE'),
(275, '220126', '220126', 'FAMIS@gmail.com', 'STUDENTS', 'ACTIVE'),
(276, '220127', '220127', 'FARISA@gmail.com', 'STUDENTS', 'ACTIVE'),
(277, '220128', '220128', 'FARISHA@gmail.com', 'STUDENTS', 'ACTIVE'),
(278, '220129', '220129', 'FARSANA@gmail.com', 'STUDENTS', 'ACTIVE'),
(279, '220130', '220130', 'ASHITHA@gmail.com', 'STUDENTS', 'ACTIVE'),
(280, '220131', '220131', 'CI@gmail.com', 'STUDENTS', 'ACTIVE'),
(281, '220132', '220132', 'KB@gmail.com', 'STUDENTS', 'ACTIVE'),
(282, '220133', '220133', 'KS@gmail.com', 'STUDENTS', 'ACTIVE'),
(283, '220134', '220134', 'PA@gmail.com', 'STUDENTS', 'ACTIVE'),
(284, '220135', '220135', 'SALIM@gmail.com', 'STUDENTS', 'ACTIVE'),
(285, '220136', '220136', 'FASMINA@gmail.com', 'STUDENTS', 'ACTIVE'),
(286, '220137', '220137', 'GASHIYA@gmail.com', 'STUDENTS', 'ACTIVE'),
(287, '220139', '220139', 'HARIKRISHNAN@gmail.com', 'STUDENTS', 'ACTIVE'),
(288, '220140', '220140', 'JASNA@gmail.com', 'STUDENTS', 'ACTIVE'),
(289, '220141', '220141', 'KADEEJA@gmail.com', 'STUDENTS', 'ACTIVE'),
(290, '220142', '220142', 'KIRAN@gmail.com', 'STUDENTS', 'ACTIVE'),
(291, '220143', '220143', 'MAHIN@gmail.com', 'STUDENTS', 'ACTIVE'),
(292, '220144', '220144', 'MALAVIKA@gmail.com', 'STUDENTS', 'ACTIVE'),
(293, '220145', '220145', 'IQBAL@gmail.com', 'STUDENTS', 'ACTIVE'),
(294, '220146', '220146', 'USMAN@gmail.com', 'STUDENTS', 'ACTIVE'),
(295, '220147', '220147', 'PK@gmail.com', 'STUDENTS', 'ACTIVE'),
(296, '220148', '220148', 'ADHILKR@gmail.com', 'STUDENTS', 'ACTIVE'),
(297, '220149', '220149', 'ANEES@gmail.com', 'STUDENTS', 'ACTIVE'),
(298, '220150', '220150', 'SUHAIL@gmail.com', 'STUDENTS', 'ACTIVE'),
(299, '220151', '220151', 'SWALIH@gmail.com', 'STUDENTS', 'ACTIVE'),
(300, '220152', '220152', 'NADIYA@gmail.com', 'STUDENTS', 'ACTIVE'),
(301, '220153', '220153', 'NAJITHA@gmail.com', 'STUDENTS', 'ACTIVE'),
(302, '220154', '220154', 'NEHA@gmail.com', 'STUDENTS', 'ACTIVE'),
(303, '220155', '220155', 'NIMITHRA@gmail.com', 'STUDENTS', 'ACTIVE'),
(304, '220156', '220156', 'PRATHAP@gmail.com', 'STUDENTS', 'ACTIVE'),
(305, '220157', '220157', 'RAASHID@gmail.com', 'STUDENTS', 'ACTIVE'),
(306, '220158', '220158', 'RIHAN@gmail.com', 'STUDENTS', 'ACTIVE'),
(307, '220159', '220159', 'RISWANA@gmail.com', 'STUDENTS', 'ACTIVE'),
(308, '220160', '220160', 'RITHU@gmail.com', 'STUDENTS', 'ACTIVE'),
(309, '220161', '220161', 'SAFNA@gmail.com', 'STUDENTS', 'ACTIVE'),
(310, '220162', '220162', 'SAFNA@gmail.com', 'STUDENTS', 'ACTIVE'),
(311, '220163', '220163', 'SANA@gmail.com', 'STUDENTS', 'ACTIVE'),
(312, '220164', '220164', 'SETHULAKSHMI@gmail.com', 'STUDENTS', 'ACTIVE'),
(313, '220165', '220165', 'SHAHANA@gmail.com', 'STUDENTS', 'ACTIVE'),
(314, '220166', '220166', 'SHAMSUDHEEN@gmail.com', 'STUDENTS', 'ACTIVE'),
(315, '220167', '220167', 'SREETHUMOL@gmail.com', 'STUDENTS', 'ACTIVE'),
(316, '220168', '220168', 'SULFA@gmail.com', 'STUDENTS', 'ACTIVE'),
(317, '220169', '220169', 'SUSMIN@gmail.com', 'STUDENTS', 'ACTIVE'),
(318, '220170', '220170', 'SWETHA@gmail.com', 'STUDENTS', 'ACTIVE'),
(319, '192022', '192022', 'leena@gmail.com', 'TEACHERS', 'ACTIVE'),
(320, '192023', '192023', 'deril@gmail.com', 'TEACHERS', 'ACTIVE'),
(321, '192024', '192024', 'salim@gmail.com', 'TEACHERS', 'ACTIVE'),
(322, '192025', '192025', 'jaseena@gmail.com', 'TEACHERS', 'ACTIVE'),
(323, '192026', '192026', 'bismin@gmail.com', 'TEACHERS', 'ACTIVE'),
(324, '192027', '192027', 'shareena@gmail.com', 'TEACHERS', 'ACTIVE'),
(325, '192028', '192028', 'julie@gmail.com', 'TEACHERS', 'ACTIVE'),
(326, '192029', '192029', 'jasir@gmail.com', 'TEACHERS', 'ACTIVE'),
(327, '192030', '192030', 'sufaira@gmail.com', 'TEACHERS', 'ACTIVE');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `assign_works`
--
ALTER TABLE `assign_works`
  ADD PRIMARY KEY (`W_ID`),
  ADD KEY `SUBJECT_ID` (`SUBJECT_ID`),
  ADD KEY `NOTE_ID` (`NOTE_ID`),
  ADD KEY `STUDENT_ID` (`ROLLNO`);

--
-- Indexes for table `batches`
--
ALTER TABLE `batches`
  ADD PRIMARY KEY (`BATCH_ID`);

--
-- Indexes for table `events`
--
ALTER TABLE `events`
  ADD PRIMARY KEY (`id`),
  ADD KEY `TEACHER_ID` (`USER_ID`);

--
-- Indexes for table `notes`
--
ALTER TABLE `notes`
  ADD PRIMARY KEY (`NOTE_ID`),
  ADD KEY `SUBJECT_ID` (`SUBJECT_ID`),
  ADD KEY `TEACHER_ID` (`TEACHER_ID`);

--
-- Indexes for table `routemap`
--
ALTER TABLE `routemap`
  ADD PRIMARY KEY (`R_ID`),
  ADD KEY `TEACHER_ID` (`TEACHER_ID`),
  ADD KEY `BATCH_ID` (`CLASS`);

--
-- Indexes for table `students`
--
ALTER TABLE `students`
  ADD PRIMARY KEY (`STUDENT_ID`),
  ADD KEY `USER_ID` (`USER_ID`),
  ADD KEY `BATCH_ID` (`BATCH_ID`);

--
-- Indexes for table `subjects`
--
ALTER TABLE `subjects`
  ADD PRIMARY KEY (`SUBJECT_ID`),
  ADD KEY `TEACHER_ID` (`TEACHER_ID`),
  ADD KEY `TEACHER_ID2` (`TEACHER_ID2`);

--
-- Indexes for table `teachers`
--
ALTER TABLE `teachers`
  ADD PRIMARY KEY (`TEACHER_ID`),
  ADD KEY `USER_ID` (`USER_ID`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`USER_ID`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `assign_works`
--
ALTER TABLE `assign_works`
  MODIFY `W_ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `batches`
--
ALTER TABLE `batches`
  MODIFY `BATCH_ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `events`
--
ALTER TABLE `events`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT for table `notes`
--
ALTER TABLE `notes`
  MODIFY `NOTE_ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=61;

--
-- AUTO_INCREMENT for table `routemap`
--
ALTER TABLE `routemap`
  MODIFY `R_ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=111;

--
-- AUTO_INCREMENT for table `students`
--
ALTER TABLE `students`
  MODIFY `STUDENT_ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=216;

--
-- AUTO_INCREMENT for table `subjects`
--
ALTER TABLE `subjects`
  MODIFY `SUBJECT_ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=33;

--
-- AUTO_INCREMENT for table `teachers`
--
ALTER TABLE `teachers`
  MODIFY `TEACHER_ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=112;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `USER_ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=328;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `assign_works`
--
ALTER TABLE `assign_works`
  ADD CONSTRAINT `assign_works_ibfk_1` FOREIGN KEY (`SUBJECT_ID`) REFERENCES `subjects` (`SUBJECT_ID`),
  ADD CONSTRAINT `assign_works_ibfk_2` FOREIGN KEY (`NOTE_ID`) REFERENCES `notes` (`NOTE_ID`);

--
-- Constraints for table `events`
--
ALTER TABLE `events`
  ADD CONSTRAINT `events_ibfk_1` FOREIGN KEY (`USER_ID`) REFERENCES `users` (`USER_ID`);

--
-- Constraints for table `notes`
--
ALTER TABLE `notes`
  ADD CONSTRAINT `notes_ibfk_1` FOREIGN KEY (`SUBJECT_ID`) REFERENCES `subjects` (`SUBJECT_ID`),
  ADD CONSTRAINT `notes_ibfk_2` FOREIGN KEY (`TEACHER_ID`) REFERENCES `teachers` (`TEACHER_ID`);

--
-- Constraints for table `routemap`
--
ALTER TABLE `routemap`
  ADD CONSTRAINT `routemap_ibfk_1` FOREIGN KEY (`TEACHER_ID`) REFERENCES `teachers` (`TEACHER_ID`);

--
-- Constraints for table `students`
--
ALTER TABLE `students`
  ADD CONSTRAINT `students_ibfk_1` FOREIGN KEY (`USER_ID`) REFERENCES `users` (`USER_ID`),
  ADD CONSTRAINT `students_ibfk_2` FOREIGN KEY (`BATCH_ID`) REFERENCES `batches` (`BATCH_ID`);

--
-- Constraints for table `subjects`
--
ALTER TABLE `subjects`
  ADD CONSTRAINT `subjects_ibfk_1` FOREIGN KEY (`TEACHER_ID`) REFERENCES `teachers` (`TEACHER_ID`),
  ADD CONSTRAINT `subjects_ibfk_2` FOREIGN KEY (`TEACHER_ID2`) REFERENCES `teachers` (`TEACHER_ID`);

--
-- Constraints for table `teachers`
--
ALTER TABLE `teachers`
  ADD CONSTRAINT `teachers_ibfk_1` FOREIGN KEY (`USER_ID`) REFERENCES `users` (`USER_ID`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
