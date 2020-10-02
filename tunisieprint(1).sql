-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Hôte : localhost
-- Généré le : ven. 02 oct. 2020 à 20:23
-- Version du serveur :  10.4.13-MariaDB
-- Version de PHP : 7.4.8

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données : `tunisieprint`
--

-- --------------------------------------------------------

--
-- Structure de la table `client`
--

CREATE TABLE `client` (
  `email` varchar(200) NOT NULL,
  `motpass` varchar(200) NOT NULL,
  `civilite` varchar(100) NOT NULL,
  `nom_raisonSociale` varchar(200) NOT NULL,
  `Prenom` varchar(200) NOT NULL,
  `Adresse` varchar(200) NOT NULL,
  `Divers_TVA` varchar(200) NOT NULL,
  `code_postale` varchar(4) NOT NULL,
  `ville` varchar(100) NOT NULL,
  `pays` varchar(80) NOT NULL,
  `num_tel` varchar(8) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Déchargement des données de la table `client`
--

INSERT INTO `client` (`email`, `motpass`, `civilite`, `nom_raisonSociale`, `Prenom`, `Adresse`, `Divers_TVA`, `code_postale`, `ville`, `pays`, `num_tel`) VALUES
('ghassenkahlaoui@gmail.com', 'iset@2020', 'Mr', 'ghasesen', 'kahlaoui', '75 cite amen jendouba', 'TVA', '8100', 'Jendouba', 'Tunisie', '51506788');

-- --------------------------------------------------------

--
-- Structure de la table `Commande`
--

CREATE TABLE `Commande` (
  `numeroCommande` varchar(200) NOT NULL,
  `numero_marque` varchar(30) NOT NULL,
  `EmailClient` varchar(200) NOT NULL,
  `qte` varchar(100) NOT NULL,
  `prix` varchar(190) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Structure de la table `marque`
--

CREATE TABLE `marque` (
  `numero_marque` varchar(30) NOT NULL,
  `nom_marque` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Structure de la table `Model`
--

CREATE TABLE `Model` (
  `numero_model` varchar(30) NOT NULL,
  `nom_model` varchar(50) NOT NULL,
  `numero_marque` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Index pour les tables déchargées
--

--
-- Index pour la table `client`
--
ALTER TABLE `client`
  ADD PRIMARY KEY (`email`);

--
-- Index pour la table `Commande`
--
ALTER TABLE `Commande`
  ADD PRIMARY KEY (`numeroCommande`);

--
-- Index pour la table `marque`
--
ALTER TABLE `marque`
  ADD PRIMARY KEY (`numero_marque`);

--
-- Index pour la table `Model`
--
ALTER TABLE `Model`
  ADD KEY `numero_marque` (`numero_marque`);

--
-- Contraintes pour les tables déchargées
--

--
-- Contraintes pour la table `Model`
--
ALTER TABLE `Model`
  ADD CONSTRAINT `Model_ibfk_1` FOREIGN KEY (`numero_marque`) REFERENCES `marque` (`numero_marque`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
