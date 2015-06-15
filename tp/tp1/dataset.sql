-- phpMyAdmin SQL Dump
-- version 4.1.14
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Mar 27, 2015 at 06:18 AM
-- Server version: 5.6.17
-- PHP Version: 5.5.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";

CREATE DATABASE musicstore;
USE musicstore;

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `musicstore`
--

-- --------------------------------------------------------

--
-- Table structure for table `album`
--

CREATE TABLE IF NOT EXISTS `album` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(100) NOT NULL,
  `release_date` date NOT NULL,
  `artist_fk` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `artist_fk` (`artist_fk`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=3 ;

--
-- Dumping data for table `album`
--

INSERT INTO `album` (`id`, `title`, `release_date`, `artist_fk`) VALUES
(1, 'Les Copains d''abord', '1964-08-12', 6),
(2, 'Je me suis fait tout petit', '1956-03-01', 6),
(3, 'Watertown', '1970-03-01', 3),
(4, 'All alone', '1962-03-01', 3),
(5, 'Serge Gainsbourg n°4', '1962-03-01', 7),
(6, 'Aux armes et cætera', '1979-03-19', 7),
(7, 'Amours toujours', '1953-03-19', 4);

-- --------------------------------------------------------

--
-- Table structure for table `artist`
--

CREATE TABLE IF NOT EXISTS `artist` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) NOT NULL,
  `city` varchar(50) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=8 ;

--
-- Dumping data for table `artist`
--

INSERT INTO `artist` (`id`, `name`, `city`) VALUES
(3, 'Frank Sinatra', 'New York'),
(4, 'Edith Piaf', 'Paris'),
(5, 'Jacques Brel', 'Bruxelles'),
(6, 'Georges Brassens', 'Sète'),
(7, 'Serge Gainsbourg', 'Paris');

-- --------------------------------------------------------

--
-- Table structure for table `track`
--

CREATE TABLE IF NOT EXISTS `track` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `length` int(11) NOT NULL,
  `position` int(11) NOT NULL,
  `title` varchar(255) DEFAULT NULL,
  `album_fk` int(20) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `album_fk` (`album_fk`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=7 ;

--
-- Dumping data for table `track`
--

INSERT INTO `track` (`id`, `length`, `position`, `title`, `album_fk`) VALUES
(2, 241, 1, 'Les Copains d''abord', 1),
(3, 273, 2, 'Les 4 z''arts', 1),
(4, 218, 3, 'Le Petit Joueur de flûteau', 1),
(5, 168, 4, 'La Tondue', 1),
(6, 212, 5, 'Le 22 septembre', 1),
(7, 196, 1, 'Watertown', 3),
(8, 186, 2, 'Goodbye (She Quiety Says)', 3),
(9, 189, 4, 'For a While', 3),
(10, 310, 5, 'Michael & Peter', 3),
(11, 162, 1, 'All alone', 4),
(12, 198, 2, 'The girl next door', 4),
(13, 211, 3, 'Are you lonesome tonight', 4),
(14, 197, 4, 'Charmaine', 4),
(15, 195, 5, 'What will I do', 4),
(16, 157, 1, 'Les Goémons', 5),
(17, 156, 2, 'Black Trombone', 5),
(18, 146, 3, 'Beaudelaire', 5),
(19, 155, 4, 'Intoxicated Man', 5),
(20, 110, 4, 'Quand tu ty mets', 5),
(21, 185, 1, 'Javanaise Remake', 6),
(22, 185, 2, 'Aux armes et caetera', 6),
(23, 129, 3, 'Les locataires', 6),
(24, 156, 4, 'Des laids des laids', 6),
(25, 210, 5, 'Brigade des stups', 6),
(26, 234, 1, 'La vie en rose', 7),
(27, 167, 1, 'La fête continue', 7),
(28, 120, 1, 'Je hais les dimanches', 7),
(29, 201, 1, 'Padam padam', 7),
(30, 149, 1, 'Plus beau que tes yeux', 7);
--
-- Constraints for dumped tables
--

--
-- Constraints for table `album`
--
ALTER TABLE `album`
  ADD CONSTRAINT `album_ibfk_1` FOREIGN KEY (`artist_fk`) REFERENCES `artist` (`id`);

--
-- Constraints for table `track`
--
ALTER TABLE `track`
  ADD CONSTRAINT `track_ibfk_1` FOREIGN KEY (`album_fk`) REFERENCES `album` (`id`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
