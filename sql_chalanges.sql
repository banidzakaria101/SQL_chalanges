-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Generation Time: Jun 10, 2024 at 05:56 PM
-- Server version: 8.2.0
-- PHP Version: 8.2.13

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `sql_chalanges`
--

-- --------------------------------------------------------

--
-- Table structure for table `indices`
--

DROP TABLE IF EXISTS `indices`;
CREATE TABLE IF NOT EXISTS `indices` (
  `id_indice` int NOT NULL,
  `description` varchar(50) DEFAULT NULL,
  `id_room` int DEFAULT NULL,
  PRIMARY KEY (`id_indice`),
  KEY `id_room` (`id_room`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `indices`
--

INSERT INTO `indices` (`id_indice`, `description`, `id_room`) VALUES
(1, 'Empreintes de pas trouvées près du vase', 1),
(2, 'Traces de sang sur la table', 2),
(3, 'Foulard déchiré retrouvé sur le sol', 3),
(4, 'Clé ancienne trouvée sous le canapé', 4),
(5, 'Bijou abandonné dans le jardin', 5);

-- --------------------------------------------------------

--
-- Table structure for table `invités`
--

DROP TABLE IF EXISTS `invités`;
CREATE TABLE IF NOT EXISTS `invités` (
  `id_invite` int NOT NULL,
  `nom` varchar(255) NOT NULL,
  `statut` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id_invite`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `invités`
--

INSERT INTO `invités` (`id_invite`, `nom`, `statut`) VALUES
(1, 'Jean Dupont', 'Suspect'),
(2, 'Marie Curie', 'Innocent'),
(3, 'Albert Einstein', 'Suspect'),
(4, 'Isaac Newton', 'Innocent'),
(5, 'Niels Bohr', 'Suspect');

-- --------------------------------------------------------

--
-- Table structure for table `mouvements`
--

DROP TABLE IF EXISTS `mouvements`;
CREATE TABLE IF NOT EXISTS `mouvements` (
  `id` int NOT NULL,
  `id_invite` int NOT NULL,
  `id_room` int NOT NULL,
  `heure` int NOT NULL,
  PRIMARY KEY (`id`),
  KEY `id_invite` (`id_invite`),
  KEY `id_room` (`id_room`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `mouvements`
--

INSERT INTO `mouvements` (`id`, `id_invite`, `id_room`, `heure`) VALUES
(1, 1, 1, 20),
(2, 2, 2, 20),
(3, 3, 1, 21),
(4, 4, 3, 21),
(5, 5, 2, 22);

-- --------------------------------------------------------

--
-- Table structure for table `objets`
--

DROP TABLE IF EXISTS `objets`;
CREATE TABLE IF NOT EXISTS `objets` (
  `id_objet` int NOT NULL,
  `nom_objet` varchar(50) NOT NULL,
  `id_room` int NOT NULL,
  PRIMARY KEY (`id_objet`),
  KEY `id_room` (`id_room`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `objets`
--

INSERT INTO `objets` (`id_objet`, `nom_objet`, `id_room`) VALUES
(1, 'Vase Ancien', 1),
(2, 'Tableau de Maître', 2),
(3, 'Statue en Bronze', 3),
(4, 'Coffre à Bijoux', 2),
(5, 'Lampe en Cristal', 4);

-- --------------------------------------------------------

--
-- Table structure for table `rooms`
--

DROP TABLE IF EXISTS `rooms`;
CREATE TABLE IF NOT EXISTS `rooms` (
  `id_room` int NOT NULL,
  `nom` varchar(50) NOT NULL,
  PRIMARY KEY (`id_room`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `rooms`
--

INSERT INTO `rooms` (`id_room`, `nom`) VALUES
(1, 'Salle de Bal'),
(2, 'Bibliothèque'),
(3, 'Cuisine'),
(4, 'Salon'),
(5, 'Jardin');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
