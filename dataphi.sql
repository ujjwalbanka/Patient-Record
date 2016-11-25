-- phpMyAdmin SQL Dump
-- version 4.5.1
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Nov 25, 2016 at 01:04 PM
-- Server version: 10.1.16-MariaDB
-- PHP Version: 5.5.38

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `dataphi`
--

-- --------------------------------------------------------

--
-- Table structure for table `record`
--

CREATE TABLE `record` (
  `id` int(11) NOT NULL,
  `firstname` varchar(50) NOT NULL,
  `lastname` varchar(50) NOT NULL,
  `age` int(50) NOT NULL,
  `dob` datetime(6) NOT NULL,
  `phone` varchar(11) NOT NULL,
  `gender` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `record`
--

INSERT INTO `record` (`id`, `firstname`, `lastname`, `age`, `dob`, `phone`, `gender`) VALUES
(1, 'Ujjwal', 'Banka', 22, '2016-12-30 19:30:00.000000', '9999593585', 'male'),
(2, 'Ujjwal', 'Banka', 22, '2016-12-30 19:30:00.000000', '9999593585', 'male'),
(3, 'Deepanshu', 'Agarwal', 33, '2013-11-29 19:30:00.000000', '999999999', 'male'),
(4, 'Ujjwal', 'B', 22, '2015-12-30 19:30:00.000000', '9999999997', 'female'),
(5, 'john', 'connor', 26, '2016-11-19 19:30:00.000000', '8792990286', 'male'),
(6, 'john', 'connor', 26, '2016-11-19 19:30:00.000000', '8792990286', 'male'),
(7, 'Ishu', 'Banka', 22, '2016-12-30 19:30:00.000000', '9999999999', 'male'),
(8, 'Yoo', 'Oyyy', 66, '2016-12-30 19:30:00.000000', '8181818181', 'female'),
(9, 'hahah', 'kakakak', 33, '2016-12-30 19:30:00.000000', '9999999999', 'male'),
(10, 'Nitika', 'Banka', 33, '2016-11-11 19:30:00.000000', '9999593585', 'male'),
(11, 'Saurabh', 'jain', 22, '2016-12-30 19:30:00.000000', '9999999999', 'female'),
(12, 'UUq', 'jjj', 22, '2016-11-25 19:30:00.000000', '9999999999', 'male'),
(13, 'qtqtq', 'sjdejfbekf', 44, '2015-11-29 19:30:00.000000', '8888999989', 'male'),
(14, 'shjsjf', 'jnsjnd', 99, '2014-11-29 19:30:00.000000', '9999999999', 'female'),
(15, 'ueueu', 'NJNJNJ', 33, '2012-10-29 19:30:00.000000', '9999593585', 'female'),
(16, 'dkbfu', 'hbhdcbhdb', 33, '2013-09-28 20:30:00.000000', '8888888888', 'female'),
(17, 'fjbfb', 'jbjkbk', 334, '2013-10-29 19:30:00.000000', '9999999999', 'female'),
(18, 'fnerfnb', 'bbb;', 99, '2013-09-27 20:30:00.000000', '8888888888', 'female'),
(19, 'ewkmfkn', 'doffkn', 12, '2013-10-28 19:30:00.000000', '9999999999', 'female'),
(20, 'fkfrn', 'hbhbh', 12, '2013-09-28 20:30:00.000000', '9999999999', 'female'),
(21, 'ndbkedk', 'bhbhb', 22, '2015-11-29 19:30:00.000000', '9999999999', 'female'),
(22, 'test', 'tetst', 121, '2015-10-31 19:30:00.000000', '9999999999', 'male'),
(23, 'nnjndj', 'jnjnj', 11, '2014-11-29 19:30:00.000000', '9999999999', 'female'),
(24, 'bbhbh', 'bhbhhb', 11, '2014-11-29 19:30:00.000000', '9999000090', 'male'),
(25, 'njnj', 'njnjn', 22, '2013-09-27 20:30:00.000000', '1111111111', 'male'),
(26, 'jnj', 'njnj', 11, '2015-11-29 19:30:00.000000', '9999999999', 'female'),
(27, 'jnjnj', 'njnjn', 121, '2016-01-02 19:30:00.000000', '9090909090', 'female'),
(28, 'bhbhbh', 'bhbhbhb', 21, '2014-11-29 19:30:00.000000', '1212121212', 'female'),
(29, 'jnjnj', 'njnj', 212, '2015-12-30 19:30:00.000000', '1212121212', 'female'),
(30, 'njj', 'jnjn', 11, '2015-11-29 19:30:00.000000', '9999999999', 'male'),
(31, 'njnj', 'njnjnj', 121, '2015-10-31 19:30:00.000000', '909090909', 'male'),
(32, 'njnj', 'njnnj', 121, '2016-11-16 19:30:00.000000', '9999999999', 'male'),
(33, 'gg', 'gg', 5, '2016-11-08 19:30:00.000000', '9999999999', 'male');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `record`
--
ALTER TABLE `record`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `record`
--
ALTER TABLE `record`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=34;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
