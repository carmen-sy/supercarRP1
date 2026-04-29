-- phpMyAdmin SQL Dump
-- version 5.2.3
-- https://www.phpmyadmin.net/
--
-- Host: mysql-carmenpjsupercar.alwaysdata.net
-- Generation Time: Apr 29, 2026 at 11:02 PM
-- Server version: 10.11.15-MariaDB
-- PHP Version: 8.4.19

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `carmenpjsupercar_bdd`
--
CREATE DATABASE IF NOT EXISTS `carmenpjsupercar_bdd` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `carmenpjsupercar_bdd`;

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `id` int(11) NOT NULL,
  `username` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`id`, `username`, `password`) VALUES
(1, 'bryanrambelo@gmail.com', '$2y$10$eWd1FWZtw3bl6.i5bp/KsOrAgXYiaZGKk6hJvwzFroLUGF1vIn7ua'),
(2, 'admin@gmail.com', '$2y$10$ja/G9N54MLl4ejCk.293IOprAbORelp67ALUNxR2.FWdwTd3F/pXC'),
(4, 'carmen@gmail.com', '$2y$10$QiglHTeumsUk0quhJQ81wedR9Wy7KZ5SFCIYwuYg7/gChfMRgca7a'),
(5, 'test@gmail.com', '$2y$10$XSQ8uyebYPwDM9SSLxVlQePPEpCJt7NrLJSimYS/FJLvmk2MT0NXu');

-- --------------------------------------------------------

--
-- Table structure for table `contactez`
--

CREATE TABLE `contactez` (
  `idclient` int(11) NOT NULL,
  `nom` varchar(15) DEFAULT NULL,
  `email` varchar(30) DEFAULT NULL,
  `sujet` varchar(40) DEFAULT NULL,
  `message` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;

--
-- Dumping data for table `contactez`
--

INSERT INTO `contactez` (`idclient`, `nom`, `email`, `sujet`, `message`) VALUES
(1, 'Bilounga ingrid', 'nkpweeingrid@gmail.com', 'nnnn', 'dyugguhkjo'),
(2, 'Bilounga ingrid', 'nkpweeingrid@gmail.com', 'nnnn', 'dyugguhkjo'),
(3, 'Jodelus', 'jodelus@gmail.com', 'jjjjjjjjjj', 'Bo,jiujnd'),
(4, 'ingrid ', 'h@gmail.com', 'journe', 'allo'),
(5, 'ingri', 'ing@gmail.com', 'bonjour', 'cava?'),
(6, 'Jean', 'jeandubois@gmail.com', 'Probleme demande d&#039;essai', 'test'),
(7, 'Julie Dubois', 'julied@gmail.com', 'Demande d&#039;essai', 'test');

-- --------------------------------------------------------

--
-- Table structure for table `essai`
--

CREATE TABLE `essai` (
  `id` int(11) NOT NULL,
  `nom` varchar(255) NOT NULL,
  `prenom` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `voiture` varchar(30) DEFAULT NULL,
  `lieurecup` varchar(255) DEFAULT NULL,
  `lieudepot` varchar(255) DEFAULT NULL,
  `daterecup` date DEFAULT NULL,
  `datedepot` date DEFAULT NULL,
  `heurerecup` time DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `essai`
--

INSERT INTO `essai` (`id`, `nom`, `prenom`, `email`, `voiture`, `lieurecup`, `lieudepot`, `daterecup`, `datedepot`, `heurerecup`) VALUES
(2, 'luca', 'ing', 'kl@gmail.com', NULL, 'quatres bornes', 'saint jean', '0000-00-00', '0000-00-00', '12:30:00'),
(3, 'luca', 'ing', 'kl@gmail.com', NULL, 'quatres bornes', 'saint jean', '0000-00-00', '0000-00-00', '00:00:00'),
(4, 'ingrid', 'ingrid', 'ingrid@gmail.com', NULL, 'yaounde', 'douala', '0000-00-00', '0000-00-00', '11:00:00'),
(6, 'Carmen', 'Shum', 'carmen@gmail.com', NULL, 'Quatre Bornes', 'Port Louis', '2025-04-21', '2025-04-30', '14:30:00'),
(7, 'Carmen', 'SHUM', 'carmenshum.y@gmail.com', NULL, 'Ebene', 'Port Louis', '2025-11-19', '2025-11-27', '14:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `service`
--

CREATE TABLE `service` (
  `serviceid` int(11) NOT NULL,
  `icon` text DEFAULT NULL,
  `titre` varchar(35) DEFAULT NULL,
  `description` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `nom` varchar(50) NOT NULL,
  `prenom` varchar(50) NOT NULL,
  `email` varchar(100) NOT NULL,
  `ville` varchar(50) NOT NULL,
  `password` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT current_timestamp(),
  `updated_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `nom`, `prenom`, `email`, `ville`, `password`, `created_at`, `updated_at`) VALUES
(1, 'ffff', 'jj', 'ingrid26', 'Quatre Bornes', '$2y$10$EyU0j2vHfQ3vAl6OcmbFC.VUDE8YXpGME3D56BkLnbotDYavgekt.', '2025-03-27 06:49:38', NULL),
(2, 'kkkkkkkk', 'sssssssssssss', 'llllll', 'iiiiiiiiiiiiiiii', '$2y$10$pmju6o16ss2qmxl846OJ9.brZK8uA.epdvWsNmYeZEPYlVG/rthb.', '2025-03-27 06:50:59', NULL),
(3, 'Ludeville', 'jean', 'jean@gmail.com', 'Yaounde', '$2y$10$Cu1mE29J3LiyDOvttcVo7OsrpnkdA103O9LtLDU37BBBKAsAdHxUC', '2025-03-27 07:03:50', NULL),
(4, 'Fokou', 'Gabriel', 'Gabriel@gmail.com', 'st pierre', '$2y$10$SefhRnwTbGqZKuOq1lahHuX/IqbG2tQJQNmmxUuUlj.zxeMjeQdTS', '2025-03-28 02:08:46', NULL),
(5, 'julie', 'julie', 'julie@gmail.com', 'avenue surath', '$2y$10$cR34DDsrBhonwbLcNKXhweWzjGyzX05HMShQPGLQNOAju.QYJsZNy', '2025-03-31 10:52:27', NULL),
(6, 'junior', 'junior', 'junior@gmail.com', 'douala', '$2y$10$UO2NAHGTjFVqwQ22KBffKutfWigmiJrj6QHFAx6jRbP6JLDFwpEeq', '2025-04-03 03:11:18', NULL),
(8, 'Julie', 'Dubois', 'julied@gmail.com', 'Paris', '$2y$10$WmnWZibaG7uRmCqyu5JDbu1kxTLk/iEk8A0uMGxj5mF6.zZylf/mm', '2025-04-17 05:11:54', NULL),
(9, 'Carmen', 'SHUM', 'carmen@gmail.com', 'St. Pierre', '$2y$10$FwRAyvnaiwB0E4YaRtlEQOjFGBvh5PyaNpZkVa0szxBDnEaBnEiZu', '2025-09-16 08:32:07', NULL),
(10, 'Andriantasy', 'Karen', 'karen@gmail.com', 'Vacoas', '$2y$10$0cR1OsXn2sZBV2SyjavNr.W3tMnNkY5OnGA.Ewl8DUx3lwbjKLRFK', '2025-09-26 05:46:19', NULL);

--
-- Triggers `users`
--
DELIMITER $$
CREATE TRIGGER `before_update_users` BEFORE UPDATE ON `users` FOR EACH ROW SET NEW.updated_at = NOW()
$$
DELIMITER ;

-- --------------------------------------------------------

--
-- Table structure for table `voiture`
--

CREATE TABLE `voiture` (
  `id` int(11) NOT NULL,
  `marque` varchar(100) NOT NULL,
  `modele` varchar(100) NOT NULL,
  `prix` decimal(10,2) NOT NULL,
  `photo` varchar(255) NOT NULL,
  `categorie` varchar(50) NOT NULL,
  `description` text NOT NULL,
  `transmission` varchar(50) NOT NULL,
  `disponible` tinyint(1) DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `voiture`
--

INSERT INTO `voiture` (`id`, `marque`, `modele`, `prix`, `photo`, `categorie`, `description`, `transmission`, `disponible`) VALUES
(7, 'BMW', 'X5', 2000.00, 'images/bmwx5.jpeg', 'SUV', 'Intérieur spacieux et luxueux, conçu pour le confort et les performances robustes.', 'Automatique', 1),
(8, 'BMW', 'XM', 2000.00, 'images/bmwx.jpg', 'SUV', 'Moteur V8 biturbo 4.4L + moteur électrique, puissance combinée de 653 chevaux, intérieur luxueux et design audacieux.', 'Automatique', 1),
(9, 'BMW', 'G60', 2200.00, 'images/G60.jpg', 'SUV', 'Disponible en essence, diesel, hybride rechargeable et électrique, avec une puissance allant jusqu\'à 601 chevaux (i5 M60).', 'Automatique', 1),
(10, 'BMW', 'X3', 2500.00, 'images/X3.jpg', 'SUV', 'Disponible en essence, diesel et hybride rechargeable, puissance de 184 à 510 chevaux.', 'Automatique', 1),
(11, 'BMW', 'X7', 2600.00, 'images/X7.jpg', 'SUV', 'Jusqu\'à 7 places, suspensions adaptatives, finitions en cuir, écran multimédia avancé', 'Automatique', 1),
(12, 'BMW', 'IX', 2450.00, 'images/IX.jpg', 'SUV', 'La BMW iX incarne l’innovation électrique avec un design futuriste, un intérieur luxueux et des technologies de pointe. Pensée pour offrir confort, puissance et autonomie, elle redéfinit la conduite haut de gamme zéro émission.', 'Automatique', 1),
(13, 'Mercedes', 'EQS', 3000.00, 'images/eqs.jpg', 'Sedan', 'Le Mercedes EQS Sedan est un véhicule électrique de luxe offrant un confort exceptionnel et des performances impressionnantes.', 'Automatique', 1),
(14, 'Mercedes', 'EQS', 4000.00, 'images/eqssuv.jpg', 'SUV', 'Le Mercedes EQS SUV est un véhicule électrique de luxe offrant un confort exceptionnel et des performances impressionnantes.', 'Automatique', 1),
(15, 'Mercedes', 'Grand Sedan', 2300.00, 'images/grandsedan.jpg', 'Sedan', 'Le Mercedes Grand Sedan est un véhicule électrique de luxe offrant un confort exceptionnel et des performances impressionnantes.', 'Automatique', 1),
(16, 'Mercedes', 'CLE', 5000.00, 'images/clecabriolet.jpg', 'Cabriolet', 'Le Mercedes CLE Cabriolet est un véhicule électrique de luxe offrant un confort exceptionnel et des performances impressionnantes.', 'Automatique', 1),
(17, 'Mercedes', 'G-Class', 5000.00, 'images/gsuv.jpeg', 'SUV', 'Le Mercedes G-Class SUV est un véhicule électrique de luxe offrant un confort exceptionnel et des performances impressionnantes.', 'Automatique', 1),
(18, 'Mercedes', 'GLE', 3500.00, 'images/glecoupe.jpg', 'Coupe', 'Le Mercedes GLE Coupe est un véhicule électrique de luxe offrant un confort exceptionnel et des performances impressionnantes.', 'Automatique', 1),
(19, 'Toyota', '2000 GT', 15000.00, 'images/toy1.jpeg', 'Sport', 'Une voiture de sport emblématique des années 1960, conçue en collaboration avec Yamaha. Elle est équipée d\'un moteur avant central et d\'une transmission aux roues arrière.', 'Manuelle', 1),
(20, 'Toyota', 'Supra', 3000.00, 'images/toy2.jpg', 'Sport', 'Équipée d\'un moteur turbo de 3,0 litres en ligne. Elle peut passer de 0 à 100 km/h en seulement 3,9 secondes', 'Automatique', 1),
(21, 'Toyota', 'MR2', 4000.00, 'images/toy3.jpeg', 'Sport', 'Une voiture de sport compacte, connue pour son agilité et ses performances.La MR2 est appréciée pour sa maniabilité et son plaisir de conduite, ce qui en fait une excellente voiture pour les amateurs de sport automobile', 'Manuelle', 1),
(22, 'Toyota', 'Camry', 4000.00, 'images/toy7.jpeg', 'Berline', 'Une berline intermédiaire réputée pour son confort, sa fiabilité et ses performances.La Camry est idéale pour les trajets quotidiens et les longs voyages.', 'Automatique', 1),
(23, 'Toyota', '86', 6000.00, 'images/toy11.jpeg', 'Berline', 'Voiture de sport compacte et agile, appréciée pour ses performances et son plaisir de conduite.La Toyota 86 est conçue pour offrir une expérience de conduite sportive et engageante, idéale pour les amateurs de sensations fortes.', 'Manuelle', 1),
(24, 'Toyota', 'RAV4', 7000.00, 'images/toy12.jpeg', 'SUV', 'SUV populaire, apprécié pour sa polyvalence et ses performances.La RAV4 est idéale pour les trajets quotidiens et les aventures en plein air, offrant confort et fiabilité.', 'Automatique', 1);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `contactez`
--
ALTER TABLE `contactez`
  ADD PRIMARY KEY (`idclient`);

--
-- Indexes for table `essai`
--
ALTER TABLE `essai`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `service`
--
ALTER TABLE `service`
  ADD PRIMARY KEY (`serviceid`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `email` (`email`);

--
-- Indexes for table `voiture`
--
ALTER TABLE `voiture`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `contactez`
--
ALTER TABLE `contactez`
  MODIFY `idclient` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `essai`
--
ALTER TABLE `essai`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `service`
--
ALTER TABLE `service`
  MODIFY `serviceid` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `voiture`
--
ALTER TABLE `voiture`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
