-- phpMyAdmin SQL Dump
-- version 4.2.11
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Jan 09, 2016 at 08:06 AM
-- Server version: 5.6.21
-- PHP Version: 5.6.3

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `datatables`
--

-- --------------------------------------------------------

--
-- Table structure for table `karyawan`
--

CREATE TABLE IF NOT EXISTS `karyawan` (
`id_karyawan` int(10) unsigned NOT NULL,
  `first_name` varchar(100) NOT NULL,
  `last_name` varchar(100) NOT NULL,
  `position` varchar(100) NOT NULL,
  `office` varchar(200) NOT NULL,
  `start_date` date NOT NULL DEFAULT '0000-00-00'
) ENGINE=InnoDB AUTO_INCREMENT=41 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `karyawan`
--

INSERT INTO `karyawan` (`id_karyawan`, `first_name`, `last_name`, `position`, `office`, `start_date`) VALUES
(1, 'Airi', 'Satou', 'Accountant', 'Tokyo', '2008-11-28'),
(2, 'Angelica', 'Ramos', 'Chief Executive Officer (CEO)', 'London', '2009-09-28'),
(3, 'Ashton', 'Cox', 'Junior Technical Author', 'San Francisco', '2013-09-12'),
(4, 'Bradley', 'Greer', 'Software Engineer', 'London', '2012-09-12'),
(5, 'Brenden', 'Wagner', 'Software Engineer', 'San Francisco', '2013-07-07'),
(6, 'Brielle', 'Williamson', 'Integration Specialist', 'New York', '2010-09-12'),
(7, 'Bruno', 'Nash', 'Software Engineer', 'London', '2013-03-12'),
(8, 'Caesar', 'Vance', 'Pre-Sales Support', 'New York', '2011-09-12'),
(9, 'Cara', 'Stevens', 'Sales Assistant', 'New York', '2013-01-12'),
(10, 'Cedric', 'Kelly', 'Senior Javascript Developer', 'Edinburgh', '2011-09-12'),
(11, 'Charde', 'Marshall', 'Regional Director', 'San Francisco', '2008-09-12'),
(12, 'Colleen', 'Hurst', 'Javascript Developer', 'San Francisco', '2011-09-12'),
(13, 'Dai', 'Rios', 'Personnel Lead', 'Edinburgh', '2009-09-12'),
(14, 'Donna', 'Snider', 'Customer Support', 'New York', '2004-09-12'),
(15, 'Doris', 'Wilder', 'Sales Assistant', 'Edinburgh', '2008-09-12'),
(16, 'Finn', 'Camacho', 'Support Engineer', 'Sidney', '2011-02-12'),
(17, 'Fiona', 'Green', 'Chief Operating Officer (COO)', 'Edinburgh', '2011-02-01'),
(18, 'Garrett', 'Winters', 'Accountant  Tokyo', 'San Francisco', '2010-09-10'),
(19, 'Gavin', 'Joyce', 'Developer', 'Edinburgh', '2011-09-12'),
(20, 'Gavin', 'Cortez', 'Team Leader', 'Edinburgh', '2010-09-15'),
(21, 'Gloria', 'Little', 'Systems Administrator', 'New York', '2010-09-15'),
(22, 'Haley', 'Kennedy', 'Senior Marketing Designer', 'London', '2010-09-15'),
(23, 'Hermione', 'Butler', 'Regional Director', 'London', '2010-09-15'),
(24, 'Herrod', 'Chandler', 'Sales Assistant', 'San Francisco', '2010-09-15'),
(25, 'Hope', 'Fuentes', 'Secretary', 'San Francisco', '2010-09-15'),
(26, 'Howard', 'Hatfield', 'Office Manager', 'San Francisco', '2010-09-15'),
(27, 'Jackson', 'Bradshaw', 'Director', 'New York', '2010-09-15'),
(28, 'Jena', 'Gaines', 'Office Manager', 'London', '2010-09-15'),
(29, 'Jenette', 'Caldwell', 'Development Lead', 'New York', '2010-09-15'),
(30, 'Jennifer', 'Chang', 'Regional Director', 'Singapore', '2010-09-15'),
(31, 'Jennifer', 'Acosta', 'Junior Javascript Developer', 'Edinburgh', '2010-02-15'),
(32, 'Jonas', 'Alexander', 'Developer', 'San Francisco', '2010-02-15'),
(33, 'Lael', 'Greer', 'Systems Administrator', 'London', '2010-09-15'),
(34, 'Martena', 'Mccray', 'Post-Sales support', 'Edinburgh', '2010-03-15'),
(35, 'Michael', 'Silva', 'Marketing Designer', 'London', '2010-09-11'),
(36, 'Michael', 'Bruce', 'Javascript Developer', 'Singapore', '2010-09-15'),
(37, 'Michelle', 'House', 'Integration Specialist', 'Sidney', '2010-05-15'),
(38, 'Olivia', 'Liang', 'Support Engineer', 'Singapore', '2010-12-15'),
(39, 'Paul', 'Byrd', 'Chief Financial Officer (CFO)', 'New York', '2010-10-15'),
(40, 'Prescott', 'Bartlett', 'Technical Author', 'London', '2010-09-15');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `karyawan`
--
ALTER TABLE `karyawan`
 ADD PRIMARY KEY (`id_karyawan`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `karyawan`
--
ALTER TABLE `karyawan`
MODIFY `id_karyawan` int(10) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=41;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
