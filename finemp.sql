-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Hôte : 127.0.0.1
-- Généré le : jeu. 12 jan. 2023 à 00:35
-- Version du serveur : 10.4.25-MariaDB
-- Version de PHP : 8.1.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données : `finemp`
--

-- --------------------------------------------------------

--
-- Structure de la table `admin`
--

CREATE TABLE `admin` (
  `id_admin` int(11) NOT NULL,
  `e_mail` varchar(100) NOT NULL,
  `password` int(11) NOT NULL,
  `photo` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Déchargement des données de la table `admin`
--

INSERT INTO `admin` (`id_admin`, `e_mail`, `password`, `photo`) VALUES
(1, 'mohamed.abdelhak@uit.ac.ma', 0, '');

-- --------------------------------------------------------

--
-- Structure de la table `amphi`
--

CREATE TABLE `amphi` (
  `id_amphi` int(11) NOT NULL,
  `lib_amphi` varchar(100) NOT NULL,
  `id_cours` int(11) DEFAULT NULL,
  `id_td` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Déchargement des données de la table `amphi`
--

INSERT INTO `amphi` (`id_amphi`, `lib_amphi`, `id_cours`, `id_td`) VALUES
(1, 'amphi1', NULL, NULL),
(2, 'amphi2', 3, 2),
(3, 'amphi3', NULL, NULL);

-- --------------------------------------------------------

--
-- Structure de la table `batiment`
--

CREATE TABLE `batiment` (
  `id_batiment` int(11) NOT NULL,
  `lib_batiment` varchar(100) NOT NULL,
  `id_salle` int(11) DEFAULT NULL,
  `id_amphi` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Déchargement des données de la table `batiment`
--

INSERT INTO `batiment` (`id_batiment`, `lib_batiment`, `id_salle`, `id_amphi`) VALUES
(1, 'BatimentA', 2, NULL),
(3, 'BatimentC', 1, NULL);

-- --------------------------------------------------------

--
-- Structure de la table `cours`
--

CREATE TABLE `cours` (
  `id_cours` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Déchargement des données de la table `cours`
--

INSERT INTO `cours` (`id_cours`) VALUES
(1),
(2),
(3),
(4),
(5),
(6);

-- --------------------------------------------------------

--
-- Structure de la table `enseignant`
--

CREATE TABLE `enseignant` (
  `id_enseignant` int(11) NOT NULL,
  `password` varchar(500) NOT NULL,
  `nom` varchar(50) NOT NULL,
  `prenom` varchar(50) NOT NULL,
  `photo` varchar(11) DEFAULT NULL,
  `email` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Déchargement des données de la table `enseignant`
--

INSERT INTO `enseignant` (`id_enseignant`, `password`, `nom`, `prenom`, `photo`, `email`) VALUES
(1, '1111', 'BOUMAZZOU', 'Ibrahim', '', 'ibrahim.boumazzou@uit.ac.ma'),
(2, '2222', ' ABOUTAFAIL', 'Moulay Othman', '0', 'moulayothman.aboutafail@uit.ac.ma\r\n'),
(3, '3333', ' HMINA', 'Nabil', '0', 'nabil.hmina@uit.ac.ma\r\n'),
(4, '4444', ' MHARZI', 'Hassan', '0', 'h.mharzi@uit.ac.ma\r\n'),
(5, '5555', ' GRETETE', 'Driss', '0', 'driss.gretete@uit.ac.ma\r\n'),
(6, '6666', ' MASLOUHI', 'Mostafa', '0', 'mostafa.maslouhi@uit.ac.ma\r\n'),
(7, '7777', ' ABOUABDELLAH', 'Abdellah', '0', 'abdellah.abouabdellah@uit.ac.ma\r\n'),
(8, '8888', ' BELGHITI', 'Moulay Taib', '0', 'moulaytaib.belghiti@uit.ac.ma\r\n'),
(9, '9999', ' CHAOUI', 'Habiba', '0', 'habiba.chaoui@uit.ac.ma\r\n'),
(10, '11', ' ELOUADI', 'Abdelmajid', '0', 'abdelmajid.elouadi@uit.ac.ma\r\n'),
(11, '12', ' EL HAMI', 'Norelislam', '0', 'norelislam.elhami@uit.ac.ma\r\n'),
(12, '13', ' BENTALEB', 'Youssef', '0', 'youssef.bentaleb@uit.ac.ma\r\n'),
(13, '14', ' CHOUGDALI', 'Khalid', '0', 'khalid.chougdali@uit.ac.ma\r\n'),
(14, '15', ' BELFKIH', 'Samir', '0', 'samir.belfkih@uit.ac.ma\r\n'),
(15, '16', ' OUMAIRA', 'Ilham', '0', 'ilham.oumaira@uit.ac.ma\r\n'),
(16, '17', ' AMINE', 'Aouatif', '0', 'aouatif.amine@uit.ac.ma\r\n'),
(17, '18', ' BOUAYAD', 'Anas', '0', 'anas.bouayad@uit.ac.ma\r\n'),
(18, '19', ' EL BOUZEKRI EL IDRISSI', 'Younes', '0', 'y.elbouzekri@uit.ac.ma\r\n'),
(19, '20', ' AIT LAHCEN', 'ayoub', '0', 'ayoub.aitlahcen@uit.ac.ma\r\n'),
(20, '21', ' HACHIMI', 'Hanaa', '0', 'hanaa.hachimi@uit.ac.ma\r\n'),
(21, '22', ' BANNARI', 'Rachid', '0', 'rachid.bannari@uit.ac.ma\r\n'),
(22, '23', ' MABTOUL', 'Samira', '0', 'samira.mabtoul@uit.ac.ma\r\n'),
(23, '24', ' EL ABBADI', 'laila', '0', 'laila.elabbadi@uit.ac.ma\r\n');

-- --------------------------------------------------------

--
-- Structure de la table `enseigner`
--

CREATE TABLE `enseigner` (
  `id_enseigner` int(11) NOT NULL,
  `id_filiere` int(11) NOT NULL,
  `id_enseignant` int(11) NOT NULL,
  `id_module` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Déchargement des données de la table `enseigner`
--

INSERT INTO `enseigner` (`id_enseigner`, `id_filiere`, `id_enseignant`, `id_module`) VALUES
(1, 1, 1, 1),
(4, 1, 1, 1),
(5, 1, 1, 1),
(6, 1, 1, 1),
(7, 1, 1, 1),
(8, 1, 1, 1),
(9, 1, 1, 1),
(2, 1, 1, 7),
(3, 1, 1, 7);

-- --------------------------------------------------------

--
-- Structure de la table `faire_séance`
--

CREATE TABLE `faire_séance` (
  `id_seance` int(11) NOT NULL,
  `id_enseigner` int(11) NOT NULL,
  `id_batiment` int(11) DEFAULT NULL,
  `id_semestre` int(11) NOT NULL,
  `date` date NOT NULL,
  `heure_deb` time NOT NULL,
  `heure_fin` time NOT NULL,
  `id_salle` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Structure de la table `filière`
--

CREATE TABLE `filière` (
  `id_fil` int(13) NOT NULL,
  `nomfil` varchar(50) NOT NULL,
  `id_grp` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Déchargement des données de la table `filière`
--

INSERT INTO `filière` (`id_fil`, `nomfil`, `id_grp`) VALUES
(1, 'Génie Industriel', 1),
(2, 'Génie informatique', 2),
(3, 'Réseau et système de télécommunication', NULL),
(4, 'Génie Mécatronique', NULL),
(6, 'Génie éléctrique', NULL);

-- --------------------------------------------------------

--
-- Structure de la table `groupe`
--

CREATE TABLE `groupe` (
  `id_grp` int(11) NOT NULL,
  `type_grp` varchar(500) NOT NULL,
  `section` varchar(500) NOT NULL,
  `nomfil` varchar(500) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Déchargement des données de la table `groupe`
--

INSERT INTO `groupe` (`id_grp`, `type_grp`, `section`, `nomfil`) VALUES
(1, 'td', 'a', '1'),
(2, 'tp', 'b', '2');

-- --------------------------------------------------------

--
-- Structure de la table `module`
--

CREATE TABLE `module` (
  `id_module` int(11) NOT NULL,
  `lib_mod` varchar(100) NOT NULL,
  `lib_semestre` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Déchargement des données de la table `module`
--

INSERT INTO `module` (`id_module`, `lib_mod`, `lib_semestre`) VALUES
(1, 'Management', 'S5'),
(2, 'TEC', 'S1'),
(3, 'Analyse numérique', 'S5'),
(4, 'Système d\'éxploitation', 'S7'),
(6, 'Probabilité', 'S3'),
(7, 'Math ingénieur', 'S5'),
(8, 'Recherche opérationelle', 'S4'),
(14, 'tec web', 's5');

-- --------------------------------------------------------

--
-- Structure de la table `salle`
--

CREATE TABLE `salle` (
  `id_salle` int(11) NOT NULL,
  `lib_salle` varchar(100) NOT NULL,
  `id_td` int(11) DEFAULT NULL,
  `id_tp` int(11) DEFAULT NULL,
  `id_cours` int(11) DEFAULT NULL,
  `lib_batiment` varchar(500) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Déchargement des données de la table `salle`
--

INSERT INTO `salle` (`id_salle`, `lib_salle`, `id_td`, `id_tp`, `id_cours`, `lib_batiment`) VALUES
(1, 'Salle1', NULL, NULL, 1, 'C'),
(2, 'Salle2', 10, 50, NULL, 'A'),
(4, 'Salle4', NULL, NULL, NULL, 'C');

-- --------------------------------------------------------

--
-- Structure de la table `salle_disponible`
--

CREATE TABLE `salle_disponible` (
  `id_salle_dispo` int(11) NOT NULL,
  `lib_salle_dispo` varchar(45) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Déchargement des données de la table `salle_disponible`
--

INSERT INTO `salle_disponible` (`id_salle_dispo`, `lib_salle_dispo`) VALUES
(3, 'Salle30'),
(4, 'Salle4');

-- --------------------------------------------------------

--
-- Structure de la table `semestre`
--

CREATE TABLE `semestre` (
  `id_semestre` int(11) NOT NULL,
  `lib_semestre` varchar(100) NOT NULL,
  `id_module` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Déchargement des données de la table `semestre`
--

INSERT INTO `semestre` (`id_semestre`, `lib_semestre`, `id_module`) VALUES
(5, 'S5', 1),
(6, 'S6', 4),
(7, 'S7', 3),
(8, 'S8', 2),
(9, 'S9', 6);

-- --------------------------------------------------------

--
-- Structure de la table `td`
--

CREATE TABLE `td` (
  `id_td` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Déchargement des données de la table `td`
--

INSERT INTO `td` (`id_td`) VALUES
(1),
(2),
(3),
(4),
(10),
(20);

-- --------------------------------------------------------

--
-- Structure de la table `tp`
--

CREATE TABLE `tp` (
  `id_tp` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Déchargement des données de la table `tp`
--

INSERT INTO `tp` (`id_tp`) VALUES
(1),
(2),
(50),
(60);

-- --------------------------------------------------------

--
-- Structure de la table `utilisateur`
--

CREATE TABLE `utilisateur` (
  `id_ut` int(11) NOT NULL,
  `id_admin` int(11) NOT NULL,
  `id_enseignant` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Index pour les tables déchargées
--

--
-- Index pour la table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`id_admin`);

--
-- Index pour la table `amphi`
--
ALTER TABLE `amphi`
  ADD PRIMARY KEY (`id_amphi`),
  ADD KEY `id_cours` (`id_cours`,`id_td`),
  ADD KEY `id_td` (`id_td`),
  ADD KEY `id_cours_2` (`id_cours`);

--
-- Index pour la table `batiment`
--
ALTER TABLE `batiment`
  ADD PRIMARY KEY (`id_batiment`),
  ADD KEY `id_salle` (`id_salle`,`id_amphi`),
  ADD KEY `id_amphi` (`id_amphi`);

--
-- Index pour la table `cours`
--
ALTER TABLE `cours`
  ADD PRIMARY KEY (`id_cours`);

--
-- Index pour la table `enseignant`
--
ALTER TABLE `enseignant`
  ADD PRIMARY KEY (`id_enseignant`);

--
-- Index pour la table `enseigner`
--
ALTER TABLE `enseigner`
  ADD PRIMARY KEY (`id_enseigner`),
  ADD KEY `id_filiere` (`id_filiere`,`id_enseignant`,`id_module`),
  ADD KEY `id_enseignant` (`id_enseignant`),
  ADD KEY `id_module` (`id_module`);

--
-- Index pour la table `faire_séance`
--
ALTER TABLE `faire_séance`
  ADD PRIMARY KEY (`id_seance`),
  ADD KEY `id_enseigner` (`id_enseigner`,`id_batiment`,`id_semestre`),
  ADD KEY `id_batiment` (`id_batiment`),
  ADD KEY `id_semestre` (`id_semestre`),
  ADD KEY `id_batiment_2` (`id_batiment`),
  ADD KEY `id_salle` (`id_salle`);

--
-- Index pour la table `filière`
--
ALTER TABLE `filière`
  ADD PRIMARY KEY (`id_fil`),
  ADD KEY `id_grp` (`id_grp`);

--
-- Index pour la table `groupe`
--
ALTER TABLE `groupe`
  ADD PRIMARY KEY (`id_grp`),
  ADD KEY `id_fil` (`nomfil`),
  ADD KEY `nomfil` (`nomfil`);

--
-- Index pour la table `module`
--
ALTER TABLE `module`
  ADD PRIMARY KEY (`id_module`),
  ADD KEY `lib_semestre` (`lib_semestre`);

--
-- Index pour la table `salle`
--
ALTER TABLE `salle`
  ADD PRIMARY KEY (`id_salle`),
  ADD KEY `id_td` (`id_td`,`id_tp`,`id_cours`),
  ADD KEY `id_tp` (`id_tp`),
  ADD KEY `id_cours` (`id_cours`),
  ADD KEY `lib_batiment` (`lib_batiment`);

--
-- Index pour la table `salle_disponible`
--
ALTER TABLE `salle_disponible`
  ADD PRIMARY KEY (`id_salle_dispo`);

--
-- Index pour la table `semestre`
--
ALTER TABLE `semestre`
  ADD PRIMARY KEY (`id_semestre`),
  ADD KEY `id_module` (`id_module`);

--
-- Index pour la table `td`
--
ALTER TABLE `td`
  ADD PRIMARY KEY (`id_td`);

--
-- Index pour la table `tp`
--
ALTER TABLE `tp`
  ADD PRIMARY KEY (`id_tp`);

--
-- Index pour la table `utilisateur`
--
ALTER TABLE `utilisateur`
  ADD PRIMARY KEY (`id_ut`),
  ADD KEY `id_admin` (`id_admin`,`id_enseignant`),
  ADD KEY `id_enseignant` (`id_enseignant`);

--
-- AUTO_INCREMENT pour les tables déchargées
--

--
-- AUTO_INCREMENT pour la table `admin`
--
ALTER TABLE `admin`
  MODIFY `id_admin` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT pour la table `amphi`
--
ALTER TABLE `amphi`
  MODIFY `id_amphi` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT pour la table `batiment`
--
ALTER TABLE `batiment`
  MODIFY `id_batiment` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT pour la table `cours`
--
ALTER TABLE `cours`
  MODIFY `id_cours` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT pour la table `enseignant`
--
ALTER TABLE `enseignant`
  MODIFY `id_enseignant` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;

--
-- AUTO_INCREMENT pour la table `enseigner`
--
ALTER TABLE `enseigner`
  MODIFY `id_enseigner` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT pour la table `faire_séance`
--
ALTER TABLE `faire_séance`
  MODIFY `id_seance` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT pour la table `filière`
--
ALTER TABLE `filière`
  MODIFY `id_fil` int(13) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=112;

--
-- AUTO_INCREMENT pour la table `groupe`
--
ALTER TABLE `groupe`
  MODIFY `id_grp` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT pour la table `module`
--
ALTER TABLE `module`
  MODIFY `id_module` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT pour la table `salle`
--
ALTER TABLE `salle`
  MODIFY `id_salle` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT pour la table `semestre`
--
ALTER TABLE `semestre`
  MODIFY `id_semestre` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT pour la table `td`
--
ALTER TABLE `td`
  MODIFY `id_td` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT pour la table `tp`
--
ALTER TABLE `tp`
  MODIFY `id_tp` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=61;

--
-- AUTO_INCREMENT pour la table `utilisateur`
--
ALTER TABLE `utilisateur`
  MODIFY `id_ut` int(11) NOT NULL AUTO_INCREMENT;

--
-- Contraintes pour les tables déchargées
--

--
-- Contraintes pour la table `amphi`
--
ALTER TABLE `amphi`
  ADD CONSTRAINT `amphi_ibfk_1` FOREIGN KEY (`id_td`) REFERENCES `td` (`id_td`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `amphi_ibfk_2` FOREIGN KEY (`id_cours`) REFERENCES `cours` (`id_cours`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Contraintes pour la table `batiment`
--
ALTER TABLE `batiment`
  ADD CONSTRAINT `batiment_ibfk_1` FOREIGN KEY (`id_amphi`) REFERENCES `amphi` (`id_amphi`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `batiment_ibfk_2` FOREIGN KEY (`id_salle`) REFERENCES `salle` (`id_salle`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Contraintes pour la table `enseigner`
--
ALTER TABLE `enseigner`
  ADD CONSTRAINT `enseigner_ibfk_1` FOREIGN KEY (`id_enseignant`) REFERENCES `enseignant` (`id_enseignant`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `enseigner_ibfk_2` FOREIGN KEY (`id_filiere`) REFERENCES `filière` (`id_fil`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `enseigner_ibfk_3` FOREIGN KEY (`id_module`) REFERENCES `module` (`id_module`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Contraintes pour la table `faire_séance`
--
ALTER TABLE `faire_séance`
  ADD CONSTRAINT `faire_séance_ibfk_1` FOREIGN KEY (`id_enseigner`) REFERENCES `enseigner` (`id_enseigner`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `faire_séance_ibfk_2` FOREIGN KEY (`id_batiment`) REFERENCES `batiment` (`id_batiment`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `faire_séance_ibfk_3` FOREIGN KEY (`id_semestre`) REFERENCES `semestre` (`id_semestre`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Contraintes pour la table `filière`
--
ALTER TABLE `filière`
  ADD CONSTRAINT `filière_ibfk_1` FOREIGN KEY (`id_grp`) REFERENCES `groupe` (`id_grp`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Contraintes pour la table `salle`
--
ALTER TABLE `salle`
  ADD CONSTRAINT `salle_ibfk_1` FOREIGN KEY (`id_td`) REFERENCES `td` (`id_td`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `salle_ibfk_2` FOREIGN KEY (`id_tp`) REFERENCES `tp` (`id_tp`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `salle_ibfk_3` FOREIGN KEY (`id_cours`) REFERENCES `cours` (`id_cours`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Contraintes pour la table `semestre`
--
ALTER TABLE `semestre`
  ADD CONSTRAINT `semestre_ibfk_1` FOREIGN KEY (`id_module`) REFERENCES `module` (`id_module`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Contraintes pour la table `utilisateur`
--
ALTER TABLE `utilisateur`
  ADD CONSTRAINT `utilisateur_ibfk_1` FOREIGN KEY (`id_enseignant`) REFERENCES `enseignant` (`id_enseignant`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `utilisateur_ibfk_2` FOREIGN KEY (`id_admin`) REFERENCES `admin` (`id_admin`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
