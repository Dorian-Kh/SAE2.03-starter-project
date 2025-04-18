-- phpMyAdmin SQL Dump
-- version 5.1.1deb5ubuntu1
-- https://www.phpmyadmin.net/
--
-- Hôte : localhost:3306
-- Généré le : ven. 18 avr. 2025 à 19:06
-- Version du serveur : 8.0.41-0ubuntu0.22.04.1
-- Version de PHP : 8.1.2-1ubuntu2.21

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données : `SAE203`
--

-- --------------------------------------------------------

--
-- Structure de la table `Category`
--

CREATE TABLE `Category` (
  `id` int NOT NULL,
  `name` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

--
-- Déchargement des données de la table `Category`
--

INSERT INTO `Category` (`id`, `name`) VALUES
(1, 'Action'),
(2, 'Comédie'),
(3, 'Drame'),
(4, 'Science-fiction'),
(5, 'Animation'),
(6, 'Thriller'),
(7, 'Horreur'),
(8, 'Aventure'),
(9, 'Fantaisie'),
(10, 'Documentaire');

-- --------------------------------------------------------

--
-- Structure de la table `Movie`
--

CREATE TABLE `Movie` (
  `id` int NOT NULL,
  `name` varchar(255) NOT NULL,
  `year` int DEFAULT NULL,
  `length` int DEFAULT NULL,
  `description` text,
  `director` varchar(255) DEFAULT NULL,
  `id_category` int DEFAULT NULL,
  `image` varchar(255) DEFAULT NULL,
  `trailer` varchar(255) DEFAULT NULL,
  `min_age` int DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

--
-- Déchargement des données de la table `Movie`
--

INSERT INTO `Movie` (`id`, `name`, `year`, `length`, `description`, `director`, `id_category`, `image`, `trailer`, `min_age`) VALUES
(7, 'Interstellar', 2014, 169, 'Un groupe d\'explorateurs voyage à travers un trou de ver pour sauver l\'humanité.', 'Christopher Nolan', 4, 'interstellar.jpg', 'https://www.youtube.com/embed/VaOijhK3CRU?si=76Ke4uw4LYjuLuQ6', 12),
(12, 'La Liste de Schindler', 1993, 195, 'Un industriel allemand sauve des milliers de Juifs pendant l\'Holocauste.', 'Steven Spielberg', 3, 'schindler.webp', 'https://www.youtube.com/embed/ONWtyxzl-GE?si=xC3ASGGPy5Ib-aPn', 16),
(17, 'Your Name', 2016, 107, 'Deux adolescents échangent leurs corps de manière mystérieuse.', 'Makoto Shinkai', 5, 'your_name.jpg', 'https://www.youtube.com/embed/AROOK45LXXg?si=aUQyGk2VMCb_ToUL', 10),
(27, 'Le Bon, la Brute et le Truand', 1966, 161, 'Trois hommes se lancent à la recherche d\'un trésor caché.', 'Sergio Leone', 8, 'bon_brute_truand.jpg', 'https://www.youtube.com/embed/WA1hCZFOPqs?si=TwNZAoM4oj4KpGja', 12),
(55, 'OSS 117 Alerte rouge en Afrique noire', 2021, 116, '1981. Hubert Bonisseur de La Bath, alias OSS 117, est de retour. Pour cette nouvelle mission, plus délicate, plus périlleuse et plus torride que jamais.', 'Nicolas Bedos', 2, 'OSS_117.jpg', 'https://www.youtube.com/embed/Dbcob9qYivI?si=Dws1MK-Fcj3TSx0x', 9),
(57, 'Mon voisin Totoro', 1999, 107, 'Deux petites filles, Mei et Satsuki, viennent s\'installer avec leur père dans une grande maison à la campagne afin de se rapprocher de l\'hôpital où séjourne leur mère.', 'Hayao Miyazaki', 5, 'Mon_voisin_Totoro.jpg', 'https://www.youtube.com/embed/92a7Hj0ijLs?si=tODUGCqhQzR-XnOV', 5),
(58, 'L\'Aile ou la Cuisse', 1976, 104, 'Charles Duchemin, directeur d\'un guide gastronomique, se trouve un adversaire de taille : Jacques Tricatel, PDG d\'une chaîne de restaurants.', 'Claude Zidi', 2, 'l_aile_ou_la_cuisse.jpg', 'https://www.youtube.com/embed/5uQUndQTFfo?si=yMRTdDWxsSGeJ-vf', 7),
(59, 'Astérix et Obélix : L\'Empire du Milieu', 2023, 135, 'Nous sommes en 50 avant J.C. L’Impératrice de Chine est emprisonnée suite à un coup d’état fomenté par Deng Tsin Quin, un prince félon.', 'Guillaume Canet', 2, 'asterix_empire_du_milieu.jpg', 'https://www.youtube.com/embed/RNKFKDs5SGk?si=__vSvrz8H56o4Rqs', 10),
(60, 'Les Aventuriers de l\'Arche perdue', 1981, 116, '1936. Parti à la recherche d\'une idole sacrée en pleine jungle péruvienne, l\'aventurier Indiana Jones échappe de justesse à une embuscade tendue par son plus coriace adversaire : le Français René Belloq.', 'Steven Spielberg', 8, 'indiana_jones.jpg', 'https://www.youtube.com/embed/JdKKkWHx8pQ?si=oTrmO8GmzZWiGu3u', 14),
(62, 'Les Animaux Fantastiques', 2016, 133, 'New York, 1926. Le monde des sorciers est en grand danger. Une force mystérieuse sème le chaos dans les rues de la ville.', 'David Yates', 9, 'animaux_fantastiques.jpg', 'https://www.youtube.com/embed/jC8xuFcMq20?si=Xdff5GRmQ_FmTt6L', 12),
(63, 'Rambo 1', 1983, 97, 'John Rambo, ancien combattant du Viêt-nam où il a gagné plusieurs médailles, est arrêté dans une petite ville pour vagabondage.Maltraité, il décide de fuir. La chasse à l’homme commence…', 'Ted Kotcheff', 1, 'rambo.jpg', 'https://www.youtube.com/embed/oXngES_l_HQ?si=D9nafbjHP_CFG1SC', 18),
(64, 'Shining', 1980, 143, 'Écrivain, Jack Torrance est engagé comme gardien, pendant tout l’hiver, d’un grand hôtel isolé du Colorado – l’Overlook – où il espère surmonter enfin sa panne d’inspiration.', 'Stanley Kubrick', 7, 'shining.jpg', 'https://www.youtube.com/embed/DL_GjZglYz8?si=qJ6oXpAS2HH1-OTd', 18),
(65, 'La Guerre des mondes', 2005, 116, 'Ray Ferrier est un docker divorcé et un père rien moins que parfait, qui n\'entretient plus que des relations épisodiques avec son fils Robbie, 17 ans, et sa fille Rachel, 11 ans.', 'Steven Spielberg', 4, 'guerre_des_mondes.jpg', 'https://www.youtube.com/embed/JLDflS8FkOI?si=nCkpdP40MXiItNGE', 18),
(66, 'Les As de la Jungle', 2017, 98, 'Maurice a tout d’un pingouin… mais le tigre est en lui ! Elevé par une tigresse, ce pingouin loin d’être manchot est devenu un pro du Kung Fu.', 'David Alaux', 5, 'as_de_la_jungle.jpg', 'https://www.youtube.com/embed/Wd8uy7VgKAQ?si=T_rt4jb8I2lOFFZg', 6),
(67, 'La Planète bleue', 2004, 92, 'Bien que les mers recouvrent plus des deux tiers de notre planète, nous connaissons mieux la surface de la lune que les fonds des océans.', 'Alastair Fothergill & Andy Byatt', 10, 'planete_bleue.jpg', 'https://www.youtube.com/embed/gcBWHMxY2hk?si=RWRm9ipXW_H3o0yM', 6),
(68, 'Le Grand Bleu', 1988, 168, 'La rivalité de deux enfants, dans la mer, en Grèce, qui se poursuit lorsqu\'ils sont adultes.', 'Luc Besson', 3, 'le_grand_bleu.jpg', 'https://www.youtube.com/embed/WNkIjVyf3UQ?si=JSVmDw_4MmHifOfR', 12),
(69, 'Garfield', 2004, 80, 'Les aventures de Garfield, le chat le plus paresseux de la Terre et de Jon, son maître simplet mais sympathique.', 'Peter Hewitt', 5, 'garfield.jpg', 'https://www.youtube.com/embed/HK93vWIE_sk?si=arWo3Di8diiG6sgd', 8),
(70, 'Il faut sauver le soldat Ryan', 1998, 169, 'Alors que les forces alliées débarquent à Omaha Beach, Miller doit conduire son escouade derrière les lignes ennemies pour une mission particulièrement dangereuse...', 'Steven Spielberg', 3, 'il_faut_sauver_le_soldat_ryan.jpg', 'https://www.youtube.com/embed/7VBsDfsXJfQ?si=iKUnskl7JNh7Q7M1', 18),
(72, 'Terminator', 1985, 107, 'Un Terminator, robot d\'aspect humain, est envoyé d\'un futur où sa race livre aux hommes une guerre sans merci.', 'James Cameron', 1, 'terminator.png', 'https://www.youtube.com/embed/nGrW-OR2uDk?si=itWaPj9kogH1VyUF', 16),
(73, 'Mad Max: Fury Road', 2015, 120, 'Hanté par un lourd passé, Mad Max estime que le meilleur moyen de survivre est de rester seul.', 'George Miller', 1, 'mad_max.jpg', 'https://www.youtube.com/embed/hEJnMQG9ev8?si=o7gEahmzE9HpgpN', 14),
(74, 'Gladiator', 2000, 155, 'Le général romain Maximus est le plus fidèle soutien de l\'empereur Marc Aurèle, qu\'il a conduit de victoire en victoire avec une bravoure et un dévouement exemplaires.', 'Ridley Scott', 1, 'gladiator.jpg', 'https://www.youtube.com/embed/P5ieIbInFpg?si=EhLyWm7UluizAK-x', 14),
(75, 'Piège de Cristal', 1988, 132, 'John McClane, policier new-yorkais, est venu rejoindre sa femme Holly, dont il est séparé depuis plusieurs mois, pour les fêtes de Noël dans le secret espoir d\'une réconciliation.', 'John McTiernan', 1, 'piege_de_cristal.jpg', 'https://www.youtube.com/embed/rf79c9Da83I?si=cCFeCKIugUolzet4', 13),
(76, 'La Tour Montparnasse infernale', 2001, 92, 'Un soir, suspendus au 52ème étage de la Tour Montparnasse, Eric et Ramzy, deux laveurs de carreaux, ont pris du retard dans leur travail.', 'Charles Nemes', 2, 'tour_montparnasse.jpg', 'https://www.youtube.com/embed/4_Ff47nXZ0k?si=Xo1LUYm1qlDhlGnZ', 8),
(77, 'Jumanji', 1996, 80, 'Lors d\'une partie de Jumanji, un jeu très ancien, le jeune Alan est propulsé sous les yeux de son amie d\'enfance, Sarah, dans un étrange pays.', 'Joe Johnston', 8, 'jumanji.jpg', 'https://www.youtube.com/embed/eTjDsENDZ6s?si=fhUgm_b9qm486-NT', 8);

-- --------------------------------------------------------

--
-- Structure de la table `Profil`
--

CREATE TABLE `Profil` (
  `id_profil` int NOT NULL,
  `name` varchar(250) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `image` varchar(250) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `date_naissance` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Déchargement des données de la table `Profil`
--

INSERT INTO `Profil` (`id_profil`, `name`, `image`, `date_naissance`) VALUES
(3, 'Maxence', 'truffe_chien.jpg', '2015-08-12'),
(5, 'Anna', 'gta5.jpg', '2019-10-08'),
(6, 'Nino', 'perroquet_meme.jpg', '1985-08-08');

--
-- Index pour les tables déchargées
--

--
-- Index pour la table `Category`
--
ALTER TABLE `Category`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `Movie`
--
ALTER TABLE `Movie`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id_category` (`id_category`);

--
-- Index pour la table `Profil`
--
ALTER TABLE `Profil`
  ADD PRIMARY KEY (`id_profil`);

--
-- AUTO_INCREMENT pour les tables déchargées
--

--
-- AUTO_INCREMENT pour la table `Category`
--
ALTER TABLE `Category`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT pour la table `Movie`
--
ALTER TABLE `Movie`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=78;

--
-- AUTO_INCREMENT pour la table `Profil`
--
ALTER TABLE `Profil`
  MODIFY `id_profil` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;

--
-- Contraintes pour les tables déchargées
--

--
-- Contraintes pour la table `Movie`
--
ALTER TABLE `Movie`
  ADD CONSTRAINT `movie_ibfk_1` FOREIGN KEY (`id_category`) REFERENCES `Category` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
