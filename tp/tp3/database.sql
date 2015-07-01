-- phpMyAdmin SQL Dump
-- version 4.1.14
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: May 05, 2015 at 07:56 AM
-- Server version: 5.6.17
-- PHP Version: 5.5.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


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
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=8 ;

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
  `image_url` varchar(255) DEFAULT NULL,
  `biography` text,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=8 ;

--
-- Dumping data for table `artist`
--

INSERT INTO `artist` (`id`, `name`, `city`, `image_url`, `biography`) VALUES
(3, 'Frank Sinatra', 'New York', 'http://cdn.pastemagazine.com/www/blogs/lists/frank%20sinatra.jpg?635651897865722189', 'Frank Sinatra, né le 12 décembre 1915 à Hoboken (New Jersey) et mort le 14 mai 1998 dans le quartier de West Hollywood à Los Angeles (Californie), est un chanteur, acteur et producteur de musique américain.  Il fut le meneur du fameux Rat Pack dans les années 1950 et 1960. En outre, avec plus de 150 millions d''albums vendus, Sinatra est l''un des artistes ayant vendu le plus de disques de l''histoire.'),
(4, 'Edith Piaf', 'Paris', 'http://38.media.tumblr.com/tumblr_m1m69iuoWX1rr2jfko1_1332970496_cover.jpg', 'Édith Piaf, née le 19 décembre 1915 à Paris et morte le 10 octobre 1963 à Grasse, est une chanteuse française de music-hall. Surnommée à ses débuts « la Môme Piaf », elle est à l''origine de nombreux succès devenus des classiques du répertoire, comme La Vie en rose, Non, je ne regrette rien, l''Hymne à l''amour, Mon légionnaire, La Foule, Milord, Mon Dieu ou encore L''Accordéoniste.'),
(5, 'Jacques Brel', 'Bruxelles', 'http://mediamass.net/jdd/public/documents/celebrities/4360.jpg', 'Jacques Brel, né le 8 avril 1929 à Schaerbeek (Belgique), et mort le 9 octobre 1978 à Bobigny (France), est un auteur-compositeur-interprète, poète, acteur et réalisateur belge. En 1957, son deuxième 33 tours avec « Quand On N''a Que l''Amour » connaît un large succès et se voit récompensé du Grand Prix du Disque de l''Académie Charles-Cros.'),
(6, 'Georges Brassens', 'Sète', 'https://a2-images.myspacecdn.com/images03/34/07a9b544912b451388dc6b187ba159bc/300x300.jpg', 'Georges Brassens, né à Sète, le 22 octobre 1921 et mort à Saint-Gély-du-Fesc le 29 octobre 1981, est un poète auteur-compositeur-interprète français. Il met en musique et interprète, en s’accompagnant à la guitare, plus d''une centaine de ses poèmes. Outre ses propres textes, il met également en musique des poèmes de François Villon, Victor Hugo, Paul Verlaine, Paul Fort ou encore Louis Aragon. Il reçoit le Grand prix de poésie de l''Académie française en 1967.'),
(7, 'Serge Gainsbourg', 'Paris', 'http://mediamass.net/jdd/public/documents/celebrities/4353.jpg', 'Serge Gainsbourg, né le 2 avril 1928 à Paris et mort dans la même ville le 2 mars 1991, est un auteur-compositeur-interprète, pianiste, artiste peintre, scénariste, metteur en scène, écrivain, acteur et cinéaste français. Les textes de ses chansons jouent souvent sur le double sens, et illustrent son goût pour la provocation, en particulier celle de nature polémique (Nazi Rock, Aux armes et cætera, Lemon Incest) ou érotique (Les Sucettes, Je t''aime... moi non plus, Love on the Beat).');

-- --------------------------------------------------------

--
-- Table structure for table `token`
--

CREATE TABLE IF NOT EXISTS `token` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `value` varchar(80) NOT NULL,
  `expiration_date` date NOT NULL,
  `user_fk` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=15 ;

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
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=31 ;

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

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE IF NOT EXISTS `user` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `email` varchar(255) DEFAULT NULL,
  `firstName` varchar(255) DEFAULT NULL,
  `lastName` varchar(255) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=2 ;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`id`, `email`, `firstName`, `lastName`, `password`) VALUES
(1, 'jerome.dassonville@worldline.com', 'Jerome', 'Dassonville', 'test');

-- --------------------------------------------------------

--
-- Table structure for table `user_album`
--

CREATE TABLE IF NOT EXISTS `user_album` (
  `user_id` bigint(20) NOT NULL,
  `albums_id` bigint(20) NOT NULL,
  KEY `FK_a3rw23le5litoxwb7f0m2ub0m` (`albums_id`),
  KEY `FK_embvchusy72sculw3a2q5pcgv` (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `album`
--
ALTER TABLE `album`
  ADD CONSTRAINT `album_ibfk_1` FOREIGN KEY (`artist_fk`) REFERENCES `artist` (`id`),
  ADD CONSTRAINT `FK_our5qvk1mknwqt95l9snf8ir7` FOREIGN KEY (`artist_fk`) REFERENCES `artist` (`id`);

--
-- Constraints for table `track`
--
ALTER TABLE `track`
  ADD CONSTRAINT `FK_ksu4uyguabk099v67d59x1duv` FOREIGN KEY (`album_fk`) REFERENCES `album` (`id`),
  ADD CONSTRAINT `track_ibfk_1` FOREIGN KEY (`album_fk`) REFERENCES `album` (`id`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
