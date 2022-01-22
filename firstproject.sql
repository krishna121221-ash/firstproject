-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jan 22, 2022 at 03:15 PM
-- Server version: 10.4.19-MariaDB
-- PHP Version: 8.0.7

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `firstproject`
--

-- --------------------------------------------------------

--
-- Table structure for table `word`
--

CREATE TABLE `word` (
  `word` longtext NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `word`
--

INSERT INTO `word` (`word`) VALUES
('a'),
('level'),
('A3'),
('A4'),
('A5'),
('AAA'),
('AAAS');

-- --------------------------------------------------------

--
-- Table structure for table `word_data`
--

CREATE TABLE `word_data` (
  `word` varchar(500) DEFAULT NULL,
  `phonetic` longtext DEFAULT NULL,
  `phonetics` longtext DEFAULT NULL,
  `origin` longtext DEFAULT NULL,
  `meanings` longtext DEFAULT NULL,
  `id` bigint(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `word_data`
--

INSERT INTO `word_data` (`word`, `phonetic`, `phonetics`, `origin`, `meanings`, `id`) VALUES
('hi', 'hʌɪ', 'hʌɪ', '', 'Array', 17),
('hello', 'həˈləʊ', 'həˈləʊ', '', 'Array', 18),
('USA', 'juːɛsˈeɪ', 'juːɛsˈeɪ', '', 'Array', 19),
('PHP', '', '', '', 'Array', 20),
('java', 'ˈdʒɑːvə', 'ˈdʒɑːvə', '', 'Array', 21),
('hi', 'hʌɪ', 'hʌɪ', '', 'Array', 22),
('hello', 'həˈləʊ', 'həˈləʊ', '', 'Array', 23),
('USA', 'juːɛsˈeɪ', 'juːɛsˈeɪ', '', 'Array', 24),
('PHP', '', '', '', 'Array', 25),
('java', 'ˈdʒɑːvə', 'ˈdʒɑːvə', '', 'Array', 26);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `word_data`
--
ALTER TABLE `word_data`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `word_data`
--
ALTER TABLE `word_data`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
