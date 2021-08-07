-- phpMyAdmin SQL Dump
-- version 5.1.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Aug 07, 2021 at 11:13 PM
-- Server version: 10.4.19-MariaDB
-- PHP Version: 7.4.19

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `nodejsapi`
--

-- --------------------------------------------------------

--
-- Table structure for table `admins`
--

CREATE TABLE `admins` (
  `id` int(11) NOT NULL,
  `rule` varchar(255) DEFAULT NULL,
  `nom` varchar(255) DEFAULT NULL,
  `prenom` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `tel` text DEFAULT NULL,
  `adresse` varchar(255) DEFAULT NULL,
  `desactiver` int(11) DEFAULT NULL,
  `login` varchar(255) DEFAULT NULL,
  `mdp` varchar(255) DEFAULT NULL,
  `ajouter_le` datetime DEFAULT NULL,
  `ajouter_par` varchar(255) DEFAULT NULL,
  `modifier_le` datetime DEFAULT NULL,
  `modifier_par` varchar(255) DEFAULT NULL,
  `supprimer_le` datetime DEFAULT NULL,
  `supprimer_par` varchar(255) DEFAULT NULL,
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `admins`
--

INSERT INTO `admins` (`id`, `rule`, `nom`, `prenom`, `email`, `tel`, `adresse`, `desactiver`, `login`, `mdp`, `ajouter_le`, `ajouter_par`, `modifier_le`, `modifier_par`, `supprimer_le`, `supprimer_par`, `createdAt`, `updatedAt`) VALUES
(1, '2', '0', '0', '0', '0', '0', 0, '0', '0', '0000-00-00 00:00:00', 'ajouter_par', '0000-00-00 00:00:00', 'modifier_par', '0000-00-00 00:00:00', 'ppp', '2021-07-27 17:20:03', '2021-07-27 17:20:03'),
(3, 'paki', 'paki', 'paki', 'paki', 'paki', 'paki', NULL, 'paki', 'paki', NULL, NULL, NULL, NULL, NULL, NULL, '2021-08-06 22:59:21', '2021-08-06 22:59:21');

-- --------------------------------------------------------

--
-- Table structure for table `clients`
--

CREATE TABLE `clients` (
  `id` int(11) NOT NULL,
  `siteweb` varchar(255) DEFAULT NULL,
  `num_tva` varchar(255) DEFAULT NULL,
  `raison` varchar(255) DEFAULT NULL,
  `nom` varchar(255) DEFAULT NULL,
  `prenom` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `tel` varchar(11) DEFAULT NULL,
  `adresse` varchar(255) DEFAULT NULL,
  `desactiver` varchar(11) DEFAULT NULL,
  `login` varchar(255) DEFAULT NULL,
  `mdp` varchar(255) DEFAULT NULL,
  `ajouter_le` datetime DEFAULT NULL,
  `ajouter_par` varchar(255) DEFAULT NULL,
  `modifier_le` datetime DEFAULT NULL,
  `modifier_par` varchar(255) DEFAULT NULL,
  `supprimer_le` datetime DEFAULT NULL,
  `supprimer_par` varchar(255) DEFAULT NULL,
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `clients`
--

INSERT INTO `clients` (`id`, `siteweb`, `num_tva`, `raison`, `nom`, `prenom`, `email`, `tel`, `adresse`, `desactiver`, `login`, `mdp`, `ajouter_le`, `ajouter_par`, `modifier_le`, `modifier_par`, `supprimer_le`, `supprimer_par`, `createdAt`, `updatedAt`) VALUES
(4, 'latrousaaaa', 'latrousaaaa', 'latrousaaaa', 'latrousaaaa', 'latrousaaaa', 'latrousaaaa', 'latrousaaaa', 'latrousaaaa', 'a', 'latrousaaaa', 'latrousaaaa', '2021-08-05 23:06:54', 'zzz', '2021-08-04 23:06:58', 'zz', '2021-08-02 23:07:01', 'zz', '2021-08-06 21:59:30', '2021-08-06 21:59:30');

-- --------------------------------------------------------

--
-- Table structure for table `factures`
--

CREATE TABLE `factures` (
  `id` int(11) NOT NULL,
  `date_envoie` datetime DEFAULT NULL,
  `date_paiement` datetime DEFAULT NULL,
  `modalite_payment` varchar(255) DEFAULT NULL,
  `total_ht` text NOT NULL,
  `total_ttc` text DEFAULT NULL,
  `tva` text DEFAULT NULL,
  `remise` text DEFAULT NULL,
  `a_payer` text DEFAULT NULL,
  `ajouter_le` datetime DEFAULT NULL,
  `ajouter_par` varchar(255) DEFAULT NULL,
  `modifier_le` datetime DEFAULT NULL,
  `modifier_par` varchar(255) DEFAULT NULL,
  `supprimer_le` datetime DEFAULT NULL,
  `supprimer_par` varchar(255) DEFAULT NULL,
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `factures`
--

INSERT INTO `factures` (`id`, `date_envoie`, `date_paiement`, `modalite_payment`, `total_ht`, `total_ttc`, `tva`, `remise`, `a_payer`, `ajouter_le`, `ajouter_par`, `modifier_le`, `modifier_par`, `supprimer_le`, `supprimer_par`, `createdAt`, `updatedAt`) VALUES
(2, '2021-08-03 23:38:35', '2021-08-11 23:38:38', 'paypal', '0', '2', '1', '12', '25', '2021-08-02 23:38:42', 'ajouter_par', '2021-08-16 23:38:44', 'modifier_par', '2021-08-10 23:38:51', 'ppp', '2021-07-27 16:29:27', '2021-07-27 16:29:27'),
(3, '1999-12-31 23:00:00', '1999-12-31 23:00:00', '01/01/2000', 'NaN', 'NaN', 'NaN', 'NaN', 'NaN', NULL, NULL, NULL, NULL, NULL, NULL, '2021-08-06 23:52:14', '2021-08-06 23:52:14');

-- --------------------------------------------------------

--
-- Table structure for table `facture_interventions`
--

CREATE TABLE `facture_interventions` (
  `id` int(11) NOT NULL,
  `id_inter` text DEFAULT NULL,
  `id_facture` text DEFAULT NULL,
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `facture_interventions`
--

INSERT INTO `facture_interventions` (`id`, `id_inter`, `id_facture`, `createdAt`, `updatedAt`) VALUES
(1, '2', '1', '2021-07-27 15:48:05', '2021-07-27 15:48:05'),
(3, 'aa', 'zzz', '2021-08-06 12:16:25', '2021-08-06 12:16:25'),
(4, 'aa', 'zzz', '2021-08-06 12:17:07', '2021-08-06 12:17:07');

-- --------------------------------------------------------

--
-- Table structure for table `interventions`
--

CREATE TABLE `interventions` (
  `id` int(11) NOT NULL,
  `id_tache` varchar(11) DEFAULT NULL,
  `adresse` varchar(255) DEFAULT NULL,
  `pdf_name` varchar(255) DEFAULT NULL,
  `date_deb` datetime DEFAULT NULL,
  `date_fin` datetime DEFAULT NULL,
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `interventions`
--

INSERT INTO `interventions` (`id`, `id_tache`, `adresse`, `pdf_name`, `date_deb`, `date_fin`, `createdAt`, `updatedAt`) VALUES
(1, '1', 'adresse updated', 'book updated', '2021-07-06 23:00:00', '2021-07-06 23:00:00', '2021-07-27 15:14:31', '2021-07-27 15:14:56'),
(2, '2', 'azzz', 'ezzz', '2000-10-11 23:00:00', '2000-12-11 23:00:00', '2021-08-06 14:16:05', '2021-08-06 14:16:05'),
(3, '25', 'nainou', 'attouchi', '2000-02-01 23:00:00', '2000-02-01 23:00:00', '2021-08-07 20:54:49', '2021-08-07 20:54:49');

-- --------------------------------------------------------

--
-- Table structure for table `ligne_factures`
--

CREATE TABLE `ligne_factures` (
  `id` int(11) NOT NULL,
  `id_facture` text NOT NULL,
  `description` text DEFAULT NULL,
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `ligne_factures`
--

INSERT INTO `ligne_factures` (`id`, `id_facture`, `description`, `createdAt`, `updatedAt`) VALUES
(1, '2', 'text', '2021-07-27 15:58:44', '2021-07-27 15:58:44'),
(26, 'id_facture.text', 'desc.text', '2021-08-05 21:30:14', '2021-08-05 21:30:14'),
(27, '3', 'hello ', '2021-08-05 21:37:58', '2021-08-05 21:37:58'),
(28, '4', 'pakiiii', '2021-08-05 21:39:35', '2021-08-05 21:39:35'),
(30, '6', 'azeza', '2021-08-06 00:25:28', '2021-08-06 00:25:28'),
(31, '65', 'pmaaaa', '2021-08-06 00:32:58', '2021-08-06 00:32:58'),
(32, '69', 'azezea', '2021-08-06 00:33:43', '2021-08-06 00:33:43'),
(33, '96', 'latrous', '2021-08-06 10:25:40', '2021-08-06 10:25:40'),
(34, '6', 'ttt', '2021-08-06 10:58:04', '2021-08-06 10:58:04'),
(35, '66', 'azezae', '2021-08-06 10:59:09', '2021-08-06 10:59:09'),
(36, '', '', '2021-08-06 11:13:47', '2021-08-06 11:13:47'),
(37, '', 'latrous', '2021-08-06 11:18:46', '2021-08-06 11:18:46'),
(38, '', 'zzzz', '2021-08-06 11:19:49', '2021-08-06 11:19:49'),
(39, 'zz', 'aaa', '2021-08-06 21:55:50', '2021-08-06 21:55:50');

-- --------------------------------------------------------

--
-- Table structure for table `ligne_interventions`
--

CREATE TABLE `ligne_interventions` (
  `id` int(11) NOT NULL,
  `id_inter` text NOT NULL,
  `description` text NOT NULL,
  `createdAt` datetime DEFAULT NULL,
  `updatedAt` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `ligne_interventions`
--

INSERT INTO `ligne_interventions` (`id`, `id_inter`, `description`, `createdAt`, `updatedAt`) VALUES
(1, '1', 'description', '2021-07-27 15:28:57', '2021-07-27 15:28:57'),
(3, 'zzz', 'zzzz', '2021-08-06 11:20:57', '2021-08-06 11:20:57'),
(4, '2', 'conduire', '2021-08-06 11:28:58', '2021-08-06 11:28:58');

-- --------------------------------------------------------

--
-- Table structure for table `sequelizemeta`
--

CREATE TABLE `sequelizemeta` (
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `sequelizemeta`
--

INSERT INTO `sequelizemeta` (`name`) VALUES
('20210727151113-create-intervention.js'),
('20210727151852-create-ligne-intervention.js'),
('20210727154323-create-facture-intervention.js'),
('20210727155303-create-ligne-facture.js'),
('20210727161858-create-facture.js'),
('20210727163831-create-tache.js'),
('20210727165825-create-client.js'),
('20210727171200-create-technician.js'),
('20210727171656-create-admin.js');

-- --------------------------------------------------------

--
-- Table structure for table `taches`
--

CREATE TABLE `taches` (
  `id` int(11) NOT NULL,
  `id_client` text DEFAULT NULL,
  `id_tech` varchar(11) DEFAULT NULL,
  `etat` varchar(255) DEFAULT NULL,
  `date_creation` datetime DEFAULT NULL,
  `vmc` text DEFAULT NULL,
  `chauffage` text DEFAULT NULL,
  `climatisation` text DEFAULT NULL,
  `plomberie` text DEFAULT NULL,
  `dapannage` text DEFAULT NULL,
  `livraison` text DEFAULT NULL,
  `travaux` text DEFAULT NULL,
  `ajouter_le` datetime DEFAULT NULL,
  `ajouter_par` varchar(255) DEFAULT NULL,
  `modifier_le` datetime DEFAULT NULL,
  `modifier_par` varchar(255) DEFAULT NULL,
  `supprimer_le` datetime DEFAULT NULL,
  `supprimer_par` varchar(255) DEFAULT NULL,
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `taches`
--

INSERT INTO `taches` (`id`, `id_client`, `id_tech`, `etat`, `date_creation`, `vmc`, `chauffage`, `climatisation`, `plomberie`, `dapannage`, `livraison`, `travaux`, `ajouter_le`, `ajouter_par`, `modifier_le`, `modifier_par`, `supprimer_le`, `supprimer_par`, `createdAt`, `updatedAt`) VALUES
(1, '3', '2', 'zz', '2021-08-04 22:26:27', '0', '0', '0', '0', '0', '0', '0', '2021-08-04 22:36:09', 'ajouter_par', '2021-08-10 22:36:09', 'modifier_par', '2021-08-11 22:36:09', 'ppp', '2021-07-27 16:47:00', '2021-07-27 16:49:22'),
(4, '1', 'eeeeeeeeeee', 'zzzzzzzzzzzz', '2021-08-04 00:40:05', 'aaaaaaaaaaaa', 'eeeeeeeeeeeeeee', NULL, 'zzzzzzzzz', NULL, 'eeeeee', 'zzzzzzzzzzzzzzzz', NULL, NULL, NULL, NULL, NULL, NULL, '2021-08-06 23:34:58', '2021-08-06 23:34:58'),
(5, '2', 'bekir', 'bekir', '2021-08-11 00:40:07', 'v', 'bekir', NULL, 'bekir', NULL, 'v', 'bekir', NULL, NULL, NULL, NULL, NULL, NULL, '2021-08-06 23:38:51', '2021-08-06 23:38:51');

-- --------------------------------------------------------

--
-- Table structure for table `technicians`
--

CREATE TABLE `technicians` (
  `id` int(11) NOT NULL,
  `dern_cnx` varchar(255) NOT NULL,
  `nom` varchar(255) NOT NULL,
  `prenom` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `tel` text NOT NULL,
  `adresse` varchar(255) NOT NULL,
  `desactiver` text NOT NULL,
  `login` varchar(255) NOT NULL,
  `mdp` varchar(255) NOT NULL,
  `ajouter_le` datetime NOT NULL,
  `ajouter_par` varchar(255) NOT NULL,
  `modifier_le` datetime NOT NULL,
  `modifier_par` varchar(255) NOT NULL,
  `supprimer_le` datetime NOT NULL,
  `supprimer_par` varchar(255) NOT NULL,
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `technicians`
--

INSERT INTO `technicians` (`id`, `dern_cnx`, `nom`, `prenom`, `email`, `tel`, `adresse`, `desactiver`, `login`, `mdp`, `ajouter_le`, `ajouter_par`, `modifier_le`, `modifier_par`, `supprimer_le`, `supprimer_par`, `createdAt`, `updatedAt`) VALUES
(1, '8', '0', '0', '0', '0', '0', '0', '0', '0', '0000-00-00 00:00:00', 'ajouter_par', '0000-00-00 00:00:00', 'modifier_par', '0000-00-00 00:00:00', 'ppp', '2021-07-27 17:15:53', '2021-07-27 17:15:53'),
(3, '', 'aaaaa', 'aaaaa', 'aaaaa', 'aaaaa', 'aaaaa', '', 'aaaaa', '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', '', '2021-08-06 23:11:40', '2021-08-06 23:11:40'),
(4, 'tunis', 'tunis', 'tunis', 'tunis', 'tunis', 'tunis', '', 'tunis', 'tunis', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', '', '2021-08-06 23:15:44', '2021-08-06 23:15:44');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admins`
--
ALTER TABLE `admins`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `clients`
--
ALTER TABLE `clients`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `factures`
--
ALTER TABLE `factures`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `facture_interventions`
--
ALTER TABLE `facture_interventions`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `interventions`
--
ALTER TABLE `interventions`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `ligne_factures`
--
ALTER TABLE `ligne_factures`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `ligne_interventions`
--
ALTER TABLE `ligne_interventions`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sequelizemeta`
--
ALTER TABLE `sequelizemeta`
  ADD PRIMARY KEY (`name`),
  ADD UNIQUE KEY `name` (`name`);

--
-- Indexes for table `taches`
--
ALTER TABLE `taches`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `technicians`
--
ALTER TABLE `technicians`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admins`
--
ALTER TABLE `admins`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `clients`
--
ALTER TABLE `clients`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `factures`
--
ALTER TABLE `factures`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `facture_interventions`
--
ALTER TABLE `facture_interventions`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `interventions`
--
ALTER TABLE `interventions`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `ligne_factures`
--
ALTER TABLE `ligne_factures`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=40;

--
-- AUTO_INCREMENT for table `ligne_interventions`
--
ALTER TABLE `ligne_interventions`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `taches`
--
ALTER TABLE `taches`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `technicians`
--
ALTER TABLE `technicians`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
