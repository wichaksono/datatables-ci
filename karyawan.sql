-- phpMyAdmin SQL Dump
-- version 4.5.1
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Feb 15, 2016 at 03:51 AM
-- Server version: 10.1.9-MariaDB
-- PHP Version: 5.5.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `datatables-join`
--

-- --------------------------------------------------------

--
-- Table structure for table `karyawan`
--

CREATE TABLE `karyawan` (
  `id_karyawan` int(10) UNSIGNED NOT NULL,
  `first_name` varchar(100) NOT NULL,
  `last_name` varchar(100) NOT NULL,
  `position` int(10) UNSIGNED NOT NULL,
  `office` varchar(200) NOT NULL,
  `start_date` date NOT NULL DEFAULT '0000-00-00'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `karyawan`
--

INSERT INTO `karyawan` (`id_karyawan`, `first_name`, `last_name`, `position`, `office`, `start_date`) VALUES
(1, 'Airi', 'Satou', 1, 'Tokyo', '2008-11-28'),
(2, 'Angelica', 'Ramos', 3, 'London', '2009-09-28'),
(3, 'Ashton', 'Cox', 2, 'San Francisco', '2013-09-12'),
(4, 'Bradley', 'Greer', 25, 'London', '2012-09-12'),
(5, 'Brenden', 'Wagner', 3, 'San Francisco', '2013-07-07'),
(6, 'Brielle', 'Williamson', 4, 'New York', '2010-09-12'),
(7, 'Bruno', 'Nash', 4, 'London', '2013-03-12'),
(8, 'Caesar', 'Vance', 4, 'New York', '2011-09-12'),
(9, 'Cara', 'Stevens', 23, 'New York', '2013-01-12'),
(10, 'Cedric', 'Kelly', 12, 'Edinburgh', '2011-09-12'),
(11, 'Charde', 'Marshall', 12, 'San Francisco', '2008-09-12'),
(12, 'Colleen', 'Hurst', 12, 'San Francisco', '2011-09-12'),
(13, 'Dai', 'Rios', 23, 'Edinburgh', '2009-09-12'),
(14, 'Donna', 'Snider', 23, 'New York', '2004-09-12'),
(15, 'Doris', 'Wilder', 2, 'Edinburgh', '2008-09-12'),
(16, 'Finn', 'Camacho', 2, 'Sidney', '2011-02-12'),
(17, 'Fiona', 'Green', 5, 'Edinburgh', '2011-02-01'),
(18, 'Garrett', 'Winters', 5, 'San Francisco', '2010-09-10'),
(19, 'Gavin', 'Joyce', 5, 'Edinburgh', '2011-09-12'),
(20, 'Gavin', 'Cortez', 6, 'Edinburgh', '2010-09-15'),
(21, 'Gloria', 'Little', 6, 'New York', '2010-09-15'),
(22, 'Haley', 'Kennedy', 8, 'London', '2010-09-15'),
(23, 'Hermione', 'Butler', 3, 'London', '2010-09-15'),
(24, 'Herrod', 'Chandler', 3, 'San Francisco', '2010-09-15'),
(25, 'Hope', 'Fuentes', 3, 'San Francisco', '2010-09-15'),
(26, 'Howard', 'Hatfield', 8, 'San Francisco', '2010-09-15'),
(27, 'Jackson', 'Bradshaw', 8, 'New York', '2010-09-15'),
(28, 'Jena', 'Gaines', 6, 'London', '2010-09-15'),
(29, 'Jenette', 'Caldwell', 8, 'New York', '2010-09-15'),
(30, 'Jennifer', 'Chang', 8, 'Singapore', '2010-09-15'),
(31, 'Jennifer', 'Acosta', 20, 'Edinburgh', '2010-02-15'),
(32, 'Jonas', 'Alexander', 22, 'San Francisco', '2010-02-15'),
(33, 'Lael', 'Greer', 10, 'London', '2010-09-15'),
(34, 'Martena', 'Mccray', 11, 'Edinburgh', '2010-03-15'),
(35, 'Michael', 'Silva', 11, 'London', '2010-09-11'),
(36, 'Michael', 'Bruce', 10, 'Singapore', '2010-09-15'),
(37, 'Michelle', 'House', 8, 'Sidney', '2010-05-15'),
(38, 'Olivia', 'Liang', 9, 'Singapore', '2010-12-15'),
(39, 'Paul', 'Byrd', 8, 'New York', '2010-10-15'),
(40, 'Prescott', 'Bartlett', 6, 'London', '2010-09-15');

-- --------------------------------------------------------

--
-- Table structure for table `position`
--

CREATE TABLE `position` (
  `id_position` int(10) UNSIGNED NOT NULL,
  `position_name` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `position`
--

INSERT INTO `position` (`id_position`, `position_name`) VALUES
(1, 'Integration Specialist'),
(2, 'Accountant'),
(3, 'Chief Executive Officer (CEO)'),
(4, 'Junior Technical Author'),
(5, 'Software Engineer'),
(6, 'Pre-Sales Support'),
(7, 'Sales Assistant'),
(8, 'Senior Javascript Developer'),
(9, 'Regional Director'),
(10, 'Javascript Developer'),
(11, 'Personnel Lead'),
(12, 'Customer Support'),
(13, 'Support Engineer'),
(14, 'Chief Operating Officer (COO)'),
(15, 'Accountant  Tokyo'),
(16, 'Team Leader'),
(17, 'Developer'),
(18, 'Systems Administrator'),
(19, 'Senior Marketing Designer'),
(20, 'Regional Director'),
(21, 'Secretary'),
(22, 'Office Manager'),
(23, 'Director'),
(24, 'Development Lead'),
(25, 'Junior Javascript Developer');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `karyawan`
--
ALTER TABLE `karyawan`
  ADD PRIMARY KEY (`id_karyawan`),
  ADD KEY `position` (`position`);

--
-- Indexes for table `position`
--
ALTER TABLE `position`
  ADD PRIMARY KEY (`id_position`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `karyawan`
--
ALTER TABLE `karyawan`
  MODIFY `id_karyawan` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=41;
--
-- AUTO_INCREMENT for table `position`
--
ALTER TABLE `position`
  MODIFY `id_position` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
