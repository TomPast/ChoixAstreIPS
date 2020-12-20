-- phpMyAdmin SQL Dump
-- version 4.9.2
-- https://www.phpmyadmin.net/
--
-- Hôte : 127.0.0.1:3306
-- Généré le :  Dim 20 déc. 2020 à 12:25
-- Version du serveur :  10.4.10-MariaDB
-- Version de PHP :  7.3.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données :  `astreips`
--

-- --------------------------------------------------------

--
-- Structure de la table `astre_ips`
--

DROP TABLE IF EXISTS `astre_ips`;
CREATE TABLE IF NOT EXISTS `astre_ips` (
  `Timestamp` varchar(28) NOT NULL,
  `Numero_Etudiant` int(11) NOT NULL,
  `Localisation` varchar(255) NOT NULL,
  `Parcours` varchar(255) NOT NULL,
  `TOEIC` varchar(255) NOT NULL,
  `Association` varchar(255) NOT NULL,
  `Plutôt` varchar(255) NOT NULL,
  `Perso` varchar(255) NOT NULL,
  `Temps_Libre` varchar(255) NOT NULL,
  `Film_Serie` varchar(255) NOT NULL,
  `Navigateur` varchar(255) NOT NULL,
  `Langage` varchar(255) NOT NULL,
  `Arduino` varchar(255) NOT NULL,
  `Retouche` varchar(255) NOT NULL,
  `Linux` varchar(255) NOT NULL,
  `Mac` varchar(255) NOT NULL,
  `Windows` varchar(255) NOT NULL,
  `Montage_Vidéo` varchar(255) NOT NULL,
  `CAO` varchar(255) NOT NULL,
  `Unity_Unreal` varchar(255) NOT NULL,
  `Logos` varchar(255) NOT NULL,
  `Robot` varchar(255) NOT NULL,
  `Appli` varchar(255) NOT NULL,
  `Jeu_Video` varchar(255) NOT NULL,
  `Logiciel` varchar(255) NOT NULL,
  `Capteurs` varchar(255) NOT NULL,
  `Visual_studio` varchar(255) NOT NULL,
  `NotePad` varchar(255) NOT NULL,
  `Codblock` varchar(255) NOT NULL,
  `AndroidStudio` varchar(255) NOT NULL,
  `Eclipse` varchar(255) NOT NULL,
  `IntellJ` varchar(255) NOT NULL,
  `LabView` varchar(255) NOT NULL,
  `Unity` varchar(255) NOT NULL,
  `UnrealEngine` varchar(255) NOT NULL,
  `SublimeText` varchar(255) NOT NULL,
  `Atom` varchar(255) NOT NULL,
  `Anaconda` varchar(255) NOT NULL,
  `Ionic` varchar(255) NOT NULL,
  PRIMARY KEY (`Numero_Etudiant`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `astre_ips`
--

INSERT INTO `astre_ips` (`Timestamp`, `Numero_Etudiant`, `Localisation`, `Parcours`, `TOEIC`, `Association`, `Plutôt`, `Perso`, `Temps_Libre`, `Film_Serie`, `Navigateur`, `Langage`, `Arduino`, `Retouche`, `Linux`, `Mac`, `Windows`, `Montage_Vidéo`, `CAO`, `Unity_Unreal`, `Logos`, `Robot`, `Appli`, `Jeu_Video`, `Logiciel`, `Capteurs`, `Visual_studio`, `NotePad`, `Codblock`, `AndroidStudio`, `Eclipse`, `IntellJ`, `LabView`, `Unity`, `UnrealEngine`, `SublimeText`, `Atom`, `Anaconda`, `Ionic`) VALUES
('2020/10/16 2:37:13 PM GMT+1', 20173552, 'France', 'Prépa intégrée', 'Non', 'ENSIM\'Elec', 'Apple;Android', 'TRUITEMan', 'Musculation jeux vidéos', 'Prison Break', 'Chrome', 'C;HTML5 CSS;Php;Python;Assembleur', 'Un peu', 'Régulièrement', 'Régulièrement', 'Régulièrement', 'Tout le temps', 'Régulièrement', 'Un peu', 'Un peu', 'Un peu', 'Régulièrement', 'Jamais', 'Un peu', 'Jamais', 'Un peu', 'J\'aime bien', 'J\'aime bien', 'J\'aime bien', 'Connais pas', 'Connais pas', 'Connais pas', 'Connais pas', 'J\'aime bien', 'J\'aime bien', 'J\'aime bien', 'Connais pas', 'Connais pas', 'Connais pas'),
('2020/10/16 2:37:18 PM GMT+1', 20181588, 'France', 'Prépa intégrée', 'Non', 'Jensim;ENSIM is running;ENSIM\'Elec', 'Android', 'Dark Vador', 'Conservatoire', 'Avengers', 'Chrome', 'Java;C;C++;HTML5 CSS;Php;Python;JavaScript', 'Régulièrement', 'Jamais', 'Régulièrement', 'Jamais', 'Régulièrement', 'Un peu', 'Un peu', 'Jamais', 'Jamais', 'Régulièrement', 'Un peu', 'Jamais', 'Régulièrement', 'Régulièrement', 'Je suis fan', 'J\'aime bien', 'J\'aime bien', 'J\'aime bien', 'Je n\'aime pas', 'Connais pas', 'Connais pas', 'Je n\'aime pas', 'Connais pas', 'Je suis fan', 'J\'aime bien', 'Je suis fan', 'Connais pas'),
('2020/10/16 2:39:33 PM GMT+1', 20202834, 'Bretagne', 'DUT;Licence', 'Non', 'BDE;Abobinables', 'Android', 'Batman', 'Je vois des potes', 'Breaking bad', 'Chrome', 'Java;C;HTML5 CSS;Php;Python;JavaScript;Assembleur', 'Un peu', 'Un peu', 'Régulièrement', 'Jamais', 'Tout le temps', 'Un peu', 'Jamais', 'Un peu', 'Jamais', 'Jamais', 'Un peu', 'Un peu', 'Un peu', 'Un peu', 'Je n\'aime pas', 'Je suis fan', 'Je n\'aime pas', 'J\'aime bien', 'J\'aime bien', 'J\'aime bien', 'Connais pas', 'J\'aime bien', 'J\'aime bien', 'Je suis fan', 'Je n\'aime pas', 'Je n\'aime pas', 'Connais pas'),
('2020/10/16 2:39:53 PM GMT+1', 20181973, 'France', 'Prépa intégrée', 'Non', 'Infographie;ENSIM is running', 'Android', 'Thomas Shelby', 'Se perdre sur youtube', 'Peaky blinders, Breaking bad, Inception, interstellar', 'Chrome;Firefox;Edge', 'C;HTML5 CSS;Python;JavaScript', 'Un peu', 'Un peu', 'Un peu', 'Jamais', 'Régulièrement', 'Un peu', 'Un peu', 'Jamais', 'Un peu', 'Jamais', 'Jamais', 'Jamais', 'Jamais', 'Jamais', 'J\'aime bien', 'J\'aime bien', 'Je n\'aime pas', 'Connais pas', 'J\'aime bien', 'Connais pas', 'Connais pas', 'Connais pas', 'Connais pas', 'Je suis fan', 'Connais pas', 'J\'aime bien', 'Connais pas'),
('2020/10/16 2:40:04 PM GMT+1', 20182457, 'France;Occitanie', 'Prépa intégrée', 'Non', 'BDE;Cultu;Infographie;MAO;ENSIMIEN;ENSIM is running;VASI;ENSIM\'Elec', 'Android', 'Luffy', 'Ne3ess', 'Peaky Blinders, Got, les animes en general', 'Chrome', 'C;C++;HTML5 CSS;Python', 'Un peu;Régulièrement', 'Régulièrement', 'Jamais', 'Jamais', 'Régulièrement', 'Un peu', 'Un peu', 'Un peu', 'Régulièrement', 'Un peu', 'Jamais', 'Un peu', 'Jamais', 'Un peu', 'Connais pas;J\'aime bien', 'J\'aime bien', 'Je suis fan', 'Connais pas', 'Je suis fan', 'Connais pas', 'Connais pas', 'Connais pas', 'J\'aime bien', 'J\'aime bien', 'Connais pas', 'J\'aime bien', 'Connais pas'),
('2020/10/16 2:40:23 PM GMT+1', 20173172, 'France', 'Prépa intégrée', 'Non', 'K\'verne;Trublions du Plateau', 'Android', 'Le biberon des imbibés', 'Je chill', 'Rick et morty', 'Chrome', 'C;HTML5 CSS;Python', 'Un peu', 'Un peu', 'Un peu', 'Un peu', 'Tout le temps', 'Jamais', 'Un peu', 'Jamais', 'Jamais', 'Jamais', 'Un peu', 'Jamais', 'Jamais', 'Jamais', 'Connais pas', 'J\'aime bien', 'Je n\'aime pas', 'Connais pas', 'Connais pas', 'Connais pas', 'Connais pas', 'Connais pas', 'Connais pas', 'Connais pas', 'J\'aime bien', 'Je suis fan', 'Connais pas'),
('2020/10/16 2:40:30 PM GMT+1', 20182566, 'Maurice', 'Prépa intégrée', 'Non', 'Infographie;ENSIMIEN', 'Android', 'Roland of Gilead', 'Musique, ecriture, lecture...', 'Peaky Blinders, Daredevil, inception', 'Chrome', 'C;HTML5 CSS;Php;Python', 'Un peu', 'Régulièrement', 'Jamais', 'Un peu', 'Tout le temps', 'Un peu', 'Un peu', 'Jamais', 'Régulièrement', 'Jamais', 'Un peu', 'Jamais', 'Jamais', 'Jamais', 'Connais pas', 'J\'aime bien', 'J\'aime bien', 'Connais pas', 'Je n\'aime pas', 'Connais pas', 'Je n\'aime pas', 'J\'aime bien', 'J\'aime bien', 'Connais pas', 'Connais pas', 'Je n\'aime pas', 'Connais pas'),
('2020/10/16 2:40:32 PM GMT+1', 20205905, 'Maroc', 'Licence', 'Non', 'Infographie;MAO', 'Android', 'Aucune idée', 'Jeux vidéos', 'Prison break', 'Opera', 'Java;C;HTML5 CSS;Php;Python;JavaScript;Assembleur', 'Jamais', 'Un peu', 'Un peu', 'Jamais', 'Régulièrement', 'Jamais', 'Jamais', 'Jamais', 'Un peu', 'Jamais', 'Jamais', 'Jamais', 'Jamais', 'Jamais', 'Connais pas', 'Je n\'aime pas', 'J\'aime bien', 'Connais pas', 'J\'aime bien', 'Connais pas', 'Connais pas', 'Connais pas', 'Connais pas', 'J\'aime bien', 'Connais pas', 'J\'aime bien', 'Connais pas'),
('2020/10/16 2:40:53 PM GMT+1', 20171421, 'France', 'Prépa intégrée', 'Non', 'Trublions du Plateau', 'Android', 'Kirby', 'Lecture', 'Steven universe', 'Firefox', 'C;HTML5 CSS;Python', 'Un peu', 'Un peu', 'Jamais', 'Jamais', 'Tout le temps', 'Un peu', 'Jamais', 'Jamais', 'Jamais', 'Jamais', 'Jamais', 'Jamais', 'Jamais', 'Jamais', 'Connais pas', 'J\'aime bien', 'J\'aime bien', 'Connais pas', 'Connais pas', 'Connais pas', 'Connais pas', 'Connais pas', 'Connais pas', 'Connais pas', 'Connais pas', 'J\'aime bien', 'Connais pas'),
('2020/10/16 2:41:13 PM GMT+1', 20183990, 'France', 'Prépa intégrée', 'Non', 'BDLC;Jensim;ENSIM\'Elec', 'Android', 'Zeldo', 'Je dors', 'En series stranger things et the oa', 'Firefox', 'C;HTML5 CSS;Python', 'Un peu', 'Régulièrement', 'Jamais', 'Jamais', 'Tout le temps', 'Un peu', 'Un peu', 'Un peu', 'Un peu', 'Jamais', 'Jamais', 'Un peu', 'Régulièrement', 'Jamais', 'Je n\'aime pas', 'J\'aime bien', 'J\'aime bien', 'Connais pas', 'J\'aime bien', 'Connais pas', 'Connais pas', 'J\'aime bien', 'J\'aime bien', 'Connais pas', 'Connais pas', 'Connais pas', 'Connais pas'),
('2020/10/16 2:41:30 PM GMT+1', 20180975, 'France', 'DUT', 'Non', 'ENSIM is running', 'Android', 'Link', 'Je joue et je programme', 'Battle Royale , Star Wars , Marvel', 'Opera;Opéra GX ( c pour les gamers )', 'Java;C;C++;C#;HTML5 CSS;Php;Python;JavaScript;Assembleur', 'Un peu', 'Régulièrement', 'Régulièrement', 'Jamais', 'Tout le temps', 'Régulièrement', 'Un peu', 'Un peu', 'Un peu', 'Jamais', 'Un peu', 'Un peu', 'Un peu', 'Un peu', 'Je suis fan', 'Je n\'aime pas', 'Je n\'aime pas', 'J\'aime bien', 'Je suis fan', 'J\'aime bien', 'Connais pas', 'Je suis fan', 'Je n\'aime pas', 'Connais pas', 'Je suis fan', 'Je n\'aime pas', 'Connais pas'),
('2020/10/16 2:41:39 PM GMT+1', 20171166, 'France', 'Prépa intégrée', 'Oui;915', 'BDE;Trublions du Plateau;ENSIM\'Elec', 'Android', 'Vivien Reid', 'Magic // Ultimate frisbee', 'Retour vers le futur / Hunger games / ...', 'Firefox', 'C;Python', 'Un peu', 'Régulièrement', 'Régulièrement', 'Jamais', 'Tout le temps', 'Jamais', 'Régulièrement', 'Jamais', 'Jamais', 'Un peu', 'Jamais', 'Jamais', 'Jamais', 'Un peu', 'Connais pas', 'J\'aime bien', 'J\'aime bien', 'Connais pas', 'Connais pas', 'Connais pas', 'Connais pas', 'Connais pas', 'Connais pas', 'Connais pas', 'Connais pas', 'Je n\'aime pas', 'Connais pas'),
('2020/10/16 2:41:42 PM GMT+1', 20205196, 'France', 'Prépa classique', 'Non', 'Trublions du Plateau;ENSIM\'Elec', 'Android', 'Lucky Luke', 'Des timelapses', 'Rick et Morty', 'Chrome', 'C;C#;HTML5 CSS;Python;JavaScript', 'Un peu', 'Tout le temps', 'Un peu', 'Jamais', 'Tout le temps', 'Tout le temps', 'Un peu', 'Jamais', 'Jamais', 'Un peu', 'Jamais', 'Un peu', 'Un peu', 'Jamais', 'J\'aime bien', 'Connais pas', 'J\'aime bien', 'Connais pas', 'Connais pas', 'Connais pas', 'Connais pas', 'Connais pas', 'Connais pas', 'Connais pas', 'J\'aime bien', 'J\'aime bien', 'Connais pas'),
('2020/10/16 2:43:08 PM GMT+1', 20181916, 'Sri Lanka', 'Prépa intégrée', 'Non', 'BDE;Infographie;MAO;KFET;Abobinables', 'Apple', 'Diego de Umbrella Academy', 'Musique, Graphisme, Skate et sortir', 'Umbrella Academy, End of the fucking World, Orphan Black Gatsby le magnifique', 'Chrome', 'C;HTML5 CSS;Python', 'Un peu', 'Tout le temps', 'Un peu', 'Un peu', 'Tout le temps', 'Régulièrement', 'Un peu', 'Un peu', 'Un peu', 'Jamais', 'Jamais', 'Jamais', 'Jamais', 'Jamais', 'J\'aime bien', 'J\'aime bien', 'J\'aime bien', 'Connais pas', 'Connais pas;J\'aime bien', 'Connais pas', 'Connais pas', 'J\'aime bien', 'Connais pas', 'Je suis fan', 'Je suis fan', 'J\'aime bien', 'J\'aime bien'),
('2020/10/16 2:45:32 PM GMT+1', 20202907, 'France', 'Prepa BL', 'Oui;970', 'BDLC;Cultu;K\'verne', 'Apple', 'Nausicaa de la vallée du vent', 'Je dessine et je lis', 'Out of Africa/Peaky Blinders', 'Safari', 'C;C++', 'Jamais', 'Un peu', 'Régulièrement', 'Tout le temps', 'Un peu', 'Jamais', 'Jamais', 'Jamais', 'Un peu', 'Jamais', 'Jamais', 'Jamais', 'Jamais', 'Jamais', 'Connais pas', 'Connais pas', 'Je n\'aime pas;J\'aime bien', 'Connais pas', 'Connais pas', 'Connais pas', 'Connais pas', 'Connais pas', 'Connais pas', 'Connais pas', 'Connais pas', 'Connais pas', 'Connais pas'),
('2020/10/16 2:45:43 PM GMT+1', 20205316, 'Bretagne', 'Prepa BL', 'Non', 'BDLC;Jensim;MAO;GALA;K\'verne;Trublions du Plateau', 'Android', 'Diane (dans Bojack Horseman)', 'J\'écoute de la musique et je jardine', 'The magicians, dark, into the wild, Amélie Poulain', 'Edge', 'HTML5 CSS', 'Jamais', 'Tout le temps', 'Jamais', 'Jamais', 'Régulièrement', 'Jamais', 'Jamais', 'Jamais', 'Un peu', 'Jamais', 'Jamais', 'Jamais', 'Jamais', 'Jamais', 'Connais pas', 'Connais pas', 'Connais pas', 'Connais pas', 'Connais pas', 'Connais pas', 'Connais pas', 'Connais pas', 'Connais pas', 'Connais pas', 'Connais pas', 'Connais pas', 'Connais pas'),
('2020/10/16 2:49:10 PM GMT+1', 20205471, 'Cameroun', 'Prépa intégrée', 'Non', 'BDE;Infographie', 'Apple', 'Sangoku', 'Sport', 'Breaking Bad', 'Firefox', 'Java;C;HTML5 CSS;Php;JavaScript', 'Jamais', 'Un peu', 'Un peu', 'Un peu', 'Tout le temps', 'Un peu', 'Un peu', 'Jamais', 'Un peu', 'Jamais', 'Jamais', 'Jamais', 'Un peu', 'Jamais', 'Je suis fan', 'J\'aime bien', 'J\'aime bien', 'J\'aime bien', 'J\'aime bien', 'Connais pas', 'Connais pas', 'Connais pas', 'Connais pas', 'J\'aime bien', 'Connais pas', 'Je n\'aime pas', 'J\'aime bien'),
('2020/10/16 2:49:36 PM GMT+1', 20205276, 'France', 'Prepa BL', '980', 'BDE;BDLC;Jensim;Infographie;GALA;KFET;Trublions du Plateau;ENSIM\'Elec', 'Android', 'Mara des Acoma (Guerres de la faille, Raymond E. FEIST)', 'Discuter, dessiner, écrire, grimper, nager, lire, ecouter de la musique (beaucoup), glander, des maths, jeux videos, roller, VTT, courir, penser, observer, aider, traîner sur YouTube...', 'Fringe (serie), Enigma, Porco Rosso...', 'Firefox;Ghostery', 'C;HTML5 CSS;Assembleur', 'Un peu', 'Régulièrement', 'Tout le temps', 'Un peu', 'Un peu', 'Un peu', 'Régulièrement', 'Jamais', 'Un peu', 'Un peu', 'Un peu', 'Un peu', 'Un peu', 'Un peu', 'Connais pas', 'J\'aime bien', 'J\'aime bien', 'Connais pas', 'Connais pas', 'Connais pas', 'Connais pas', 'Je n\'aime pas', 'Connais pas', 'Connais pas', 'Connais pas', 'Connais pas', 'Connais pas'),
('2020/10/16 2:51:32 PM GMT+1', 20184054, 'France', 'Prépa intégrée', 'Non', 'Jensim', 'Apple', 'Guts de Berserk', 'Je m’instruis', 'Altered Carbon, Black Mirror, Shutter Island, Minority Report', 'Firefox', 'Java;C;Python', 'Un peu', 'Un peu', 'Un peu', 'Jamais', 'Régulièrement', 'Jamais', 'Un peu', 'Jamais', 'Jamais', 'Jamais', 'Jamais', 'Jamais', 'Jamais', 'Jamais', 'Connais pas', 'Je n\'aime pas', 'J\'aime bien', 'Connais pas', 'Connais pas', 'Connais pas', 'Connais pas', 'Connais pas', 'Connais pas', 'Je suis fan', 'Connais pas', 'Connais pas', 'Connais pas'),
('2020/10/16 3:00:47 PM GMT+1', 20202842, 'Vietnam', 'Prépa intégrée', 'Oui', 'Jensim;Infographie', 'Android', 'Spiderman', 'Jouer aux jeux videos', 'Des film d\'action', 'Chrome', 'Java;C;C++;C#;HTML5 CSS', 'Un peu', 'Régulièrement', 'Régulièrement', 'Un peu', 'Tout le temps', 'Un peu', 'Jamais', 'Jamais', 'Un peu', 'Jamais', 'Un peu', 'Jamais', 'Jamais', 'Jamais', 'J\'aime bien', 'J\'aime bien', 'Je n\'aime pas', 'J\'aime bien', 'J\'aime bien', 'J\'aime bien', 'Connais pas', 'Je n\'aime pas', 'Connais pas', 'J\'aime bien', 'Je n\'aime pas', 'Je n\'aime pas', 'Connais pas'),
('2020/10/16 3:04:00 PM GMT+1', 20206001, 'Maroc', 'Prépa classique', 'Non', 'BDE;BDLC;Cultu;Jensim;Infographie;MAO;GALA;ENSIMIEN;KFET;ENSIM is running;K\'verne;Trublions du Plateau;VASI;ENSIM\'Elec;Abobinables', 'Android', 'Naruto', 'Uhm uhm you know .... ...................................................des animes manhwas mangas league of legends', 'The wolf of wallstreet / Dark', 'Chrome', 'Python', 'Jamais', 'Jamais', 'Un peu', 'Régulièrement', 'Régulièrement', 'Un peu', 'Jamais', 'Jamais', 'Jamais', 'Jamais', 'Jamais', 'Jamais', 'Jamais', 'Jamais', 'Connais pas', 'Connais pas', 'Connais pas', 'Connais pas', 'Connais pas', 'Connais pas', 'Connais pas', 'Connais pas', 'Connais pas', 'Connais pas', 'Connais pas', 'Connais pas', 'Connais pas'),
('2020/10/16 3:04:28 PM GMT+1', 20205217, 'France', 'Prepa TSI', 'Non', 'Je ne sais pas encore.', 'Android', 'Hachiman Hikigaya from Oregairu.', 'Jeux vidéos et animés japonais.', 'Breaking Bad, The Walking Dead, Game of Thrones.', 'Chrome', 'Python', 'Un peu', 'Un peu', 'Jamais', 'Jamais', 'Tout le temps', 'Jamais', 'Un peu', 'Jamais', 'Jamais', 'Un peu', 'Jamais', 'Jamais', 'Jamais', 'Jamais', 'Connais pas', 'J\'aime bien', 'Je n\'aime pas', 'Connais pas', 'Connais pas', 'Connais pas', 'Connais pas', 'J\'aime bien', 'J\'aime bien', 'Connais pas', 'Connais pas', 'Connais pas', 'Connais pas'),
('2020/10/16 3:56:57 PM GMT+1', 20205468, 'Maroc', 'DUT', 'Non', 'BDE;BDLC;Cultu;Jensim;Infographie;MAO;GALA;ENSIMIEN;KFET;ENSIM is running;K\'verne;Trublions du Plateau;VASI;ENSIM\'Elec;Abobinables', 'Apple', 'Lucifer', 'Sortir,dormir,améliorer mes compétences dans ce que j’aime faire, créer des apllications', 'Breaking bad', 'Chrome', 'Java;C;HTML5 CSS;JavaScript', 'Jamais', 'Jamais', 'Un peu', 'Jamais', 'Jamais;Tout le temps', 'Jamais', 'Jamais', 'Jamais', 'Jamais', 'Jamais', 'Jamais', 'Jamais', 'Jamais', 'Jamais', 'Je suis fan', 'Je n\'aime pas', 'Je n\'aime pas', 'J\'aime bien', 'J\'aime bien', 'Connais pas', 'Connais pas', 'Connais pas', 'Connais pas', 'J\'aime bien', 'Connais pas', 'Connais pas', 'Je n\'aime pas'),
('2020/10/16 4:09:09 PM GMT+1', 20206022, 'Nouvelle-Calédonie', 'DUT;Prépa ATS', 'Oui', 'Je ne sais pas', 'Android', 'Jhon wick', 'Je lis des web novel, des mangas', 'Solo leveling,jhon wick', 'Chrome', 'Java;C;HTML5 CSS;Python', 'Un peu', 'Un peu', 'Jamais', 'Un peu', 'Régulièrement', 'Jamais', 'Jamais', 'Jamais', 'Jamais', 'Jamais', 'Jamais', 'Jamais', 'Jamais', 'Un peu', 'Connais pas', 'J\'aime bien', 'J\'aime bien', 'Connais pas', 'Connais pas', 'Connais pas', 'J\'aime bien', 'Connais pas', 'Connais pas', 'Connais pas', 'Connais pas', 'J\'aime bien', 'Connais pas'),
('2020/10/16 4:13:13 PM GMT+1', 20202888, 'France', 'DUT', 'Non', 'Infographie', 'Android', 'Garrius', 'Lire, jouer à des jeux vidéo', 'Interstellar', 'Firefox', 'Java;C;C++;HTML5 CSS;Python', 'Régulièrement', 'Un peu', 'Un peu', 'Jamais', 'Tout le temps', 'Un peu', 'Régulièrement', 'Un peu', 'Un peu', 'Régulièrement', 'Un peu', 'Un peu', 'Un peu', 'Régulièrement', 'J\'aime bien', 'J\'aime bien', 'J\'aime bien', 'Connais pas', 'Connais pas', 'Connais pas', 'J\'aime bien', 'J\'aime bien', 'J\'aime bien', 'Connais pas', 'Connais pas', 'J\'aime bien', 'Connais pas'),
('2020/10/16 4:13:15 PM GMT+1', 20197264, 'Cameroun', 'Licence', 'Non', 'Jensim;ENSIMIEN;ENSIM\'Elec', 'Apple', 'Wonder Woman', 'Je médite', 'The catch', 'Chrome', 'C;Python', 'Un peu', 'Un peu', 'Jamais', 'Jamais', 'Tout le temps', 'Un peu', 'Un peu', 'Jamais', 'Un peu', 'Jamais', 'Jamais', 'Jamais', 'Jamais', 'Un peu', 'J\'aime bien', 'Connais pas', 'Je suis fan', 'J\'aime bien', 'Connais pas', 'Connais pas', 'Connais pas', 'Connais pas', 'Connais pas', 'Connais pas', 'Connais pas', 'Connais pas', 'Connais pas'),
('2020/10/16 4:27:28 PM GMT+1', 20205281, 'France', 'BTS', 'Non', 'Jensim', 'Apple;Android', 'Ironman', 'Netflix, babbel, mooc, ...', 'Series Marvel, films CAT8, films Hunger Games, films divergente,', 'Chrome;Brave', 'Java;C#;HTML5 CSS;Php;Python;JavaScript;CMS', 'Régulièrement', 'Un peu', 'Régulièrement', 'Jamais', 'Tout le temps', 'Un peu', 'Un peu', 'Un peu', 'Un peu', 'Jamais', 'Régulièrement', 'Jamais', 'Régulièrement', 'Un peu', 'J\'aime bien', 'Je n\'aime pas', 'Je n\'aime pas', 'Je suis fan', 'Je n\'aime pas', 'Je suis fan', 'Connais pas', 'J\'aime bien', 'Connais pas', 'J\'aime bien', 'Je n\'aime pas', 'J\'aime bien', 'Connais pas'),
('2020/10/16 4:45:57 PM GMT+1', 20205266, 'Bretagne', 'BTS', 'Non', 'BDE;KFET', 'Android', 'Jack Sparrow', 'Skate, jeux, Netflix', 'Fiche club/friend', 'Chrome', 'C;C++', 'Un peu', 'Un peu', 'Un peu', 'Jamais', 'Tout le temps', 'Un peu', 'Un peu', 'Jamais', 'Jamais', 'Jamais', 'Un peu', 'Jamais', 'Jamais', 'Un peu', 'Connais pas', 'Je n\'aime pas', 'J\'aime bien', 'Connais pas', 'Connais pas', 'Connais pas', 'Je n\'aime pas', 'Connais pas', 'J\'aime bien', 'Connais pas', 'Connais pas', 'Connais pas', 'Connais pas'),
('2020/10/16 5:01:40 PM GMT+1', 20203085, 'France', 'DUT', 'Non', 'Jensim;K\'verne;ENSIM is Gaming', 'Android', 'Braum', 'Je suis avec mes amis, je joue, je lis etc', 'Seigneur des Anneaux, Game of Thrones, Viking', 'Firefox;Opéra GX', 'Java;C;C++;HTML5 CSS;Php;Python;JavaScript;Assembleur', 'Régulièrement', 'Un peu', 'Un peu', 'Jamais', 'Tout le temps', 'Régulièrement', 'Un peu', 'Jamais', 'Un peu', 'Régulièrement', 'Un peu', 'Un peu', 'Un peu', 'Régulièrement', 'Je suis fan', 'Je n\'aime pas', 'Je n\'aime pas', 'J\'aime bien', 'Connais pas', 'Connais pas', 'Connais pas', 'Connais pas', 'Connais pas', 'J\'aime bien', 'Connais pas', 'Connais pas', 'Connais pas'),
('2020/10/16 5:07:18 PM GMT+1', 20191920, 'France', 'Prépa classique', 'Non', 'BDLC', 'Android', 'Abe no Seimei', 'Lecture, séries, tricot', 'Seigneur des Anneaux, Doctor Who', 'Firefox', 'C;HTML5 CSS;Python', 'Un peu', 'Un peu', 'Un peu', 'Un peu', 'Tout le temps', 'Un peu', 'Un peu', 'Un peu', 'Un peu', 'Jamais', 'Jamais', 'Jamais', 'Jamais', 'Jamais', 'Connais pas', 'J\'aime bien', 'J\'aime bien', 'Connais pas', 'Connais pas', 'Connais pas', 'Connais pas', 'Connais pas', 'Connais pas', 'Connais pas', 'J\'aime bien', 'J\'aime bien', 'Connais pas'),
('2020/10/16 5:34:23 PM GMT+1', 20205371, 'France', 'DUT;1 année d\'ingénieur après dut', 'Non', 'BDE;BDLC;K\'verne;Trublions du Plateau', 'Android', 'Gon', 'Je regardes des vidéos', 'Star wars, One piece, HxH', 'Brave', 'Java;C;HTML5 CSS;Php;Python;JavaScript;Assembleur', 'Un peu', 'Régulièrement', 'Régulièrement', 'Un peu', 'Tout le temps', 'Régulièrement', 'Jamais;Un peu', 'Régulièrement', 'Un peu', 'Un peu', 'Régulièrement', 'Un peu', 'Régulièrement', 'Un peu', 'Je n\'aime pas', 'J\'aime bien', 'Je n\'aime pas', 'Je suis fan', 'Je n\'aime pas', 'Je suis fan', 'Connais pas', 'J\'aime bien', 'J\'aime bien', 'Je suis fan', 'J\'aime bien', 'J\'aime bien', 'Connais pas'),
('2020/10/21 2:52:01 PM GMT+1', 20205195, 'France', 'Prépa classique', 'Non', 'ENSIM\'Elec', 'Android', 'Eragon', 'Programmation et jeux vidéos', 'Aucuns', 'Firefox;Brave', 'Java;C;C++;HTML5 CSS;Python', 'Régulièrement', 'Régulièrement', 'Régulièrement', 'Jamais', 'Tout le temps', 'Tout le temps', 'Régulièrement', 'Jamais', 'Un peu', 'Un peu', 'Un peu', 'Jamais', 'Régulièrement', 'Jamais', 'Je n\'aime pas', 'J\'aime bien', 'Je n\'aime pas', 'J\'aime bien', 'Je suis fan', 'Connais pas', 'Connais pas', 'Je n\'aime pas', 'J\'aime bien', 'J\'aime bien', 'Connais pas', 'Je n\'aime pas', 'Connais pas'),
('2020/10/21 5:08:45 PM GMT+1', 20182355, 'France', 'Prépa intégrée', 'Non', 'BDE;BDLC;MAO;ENSIMIEN;K\'verne;VASI;ENSIM\'Elec;Abobinables', 'Android', 'Rick Deckard', 'Plein de choses', 'Westworld, The eternal sunshine of the spotless mind', 'Firefox', 'Java;C;C++;C#;HTML5 CSS;Php;Python;JavaScript', 'Régulièrement', 'Un peu', 'Un peu', 'Jamais', 'Tout le temps', 'Un peu', 'Un peu', 'Régulièrement', 'Jamais', 'Jamais', 'Jamais', 'Jamais', 'Jamais', 'Jamais', 'Je n\'aime pas', 'J\'aime bien', 'J\'aime bien', 'Je n\'aime pas', 'Je suis fan', 'J\'aime bien', 'Connais pas', 'J\'aime bien', 'Je n\'aime pas', 'Je suis fan', 'Je suis fan', 'Je suis fan', 'Connais pas'),
('2020/10/21 5:23:28 PM GMT+1', 20182116, 'France', 'Prépa intégrée', 'Non', 'Jensim;Trublions du Plateau;ENSIM\'Elec', 'Android', 'Je sais pas trop', 'Je retrouve des amis', 'Westworld, Handmaid\'s Tale, Dexter...', 'Firefox;Opera', 'C;HTML5 CSS;Python;JavaScript', 'Un peu', 'Un peu', 'Jamais', 'Jamais', 'Tout le temps', 'Un peu', 'Un peu', 'Jamais', 'Un peu', 'Jamais', 'Jamais', 'Jamais', 'Jamais', 'Jamais', 'Connais pas', 'J\'aime bien', 'J\'aime bien', 'Connais pas', 'Connais pas', 'Connais pas', 'Connais pas', 'Connais pas', 'Connais pas', 'Connais pas', 'Connais pas', 'Connais pas', 'Connais pas'),
('2020/10/21 5:29:00 PM GMT+1', 20205886, 'Tunisie', 'Prépa classique', 'Non', 'Jensim;KFET;ENSIM\'Elec', 'Android', 'Killua (hxh)', 'Jeux videos', 'Got /Breaking bad /Lucifer/Peaky blinders/', 'Chrome', 'C++;Python', 'Un peu', 'Un peu', 'Régulièrement', 'Jamais', 'Un peu;Régulièrement;Tout le temps', 'Un peu', 'Jamais', 'Jamais', 'Jamais', 'Jamais', 'Un peu', 'Jamais', 'Jamais', 'Jamais', 'Connais pas', 'Connais pas', 'J\'aime bien', 'Connais pas', 'Connais pas', 'Connais pas', 'Connais pas', 'J\'aime bien', 'Connais pas', 'Connais pas', 'Connais pas', 'J\'aime bien', 'Connais pas'),
('2020/10/22 10:55:16 AM GMT+1', 20205361, 'Maroc', 'Licence', 'Non', 'ENSIM\'Elec', 'Apple', 'Gen xmen', 'Sport', 'Casa de papel', 'Chrome', 'Java;C;HTML5 CSS;Php;Python;JavaScript;Assembleur', 'Jamais', 'Un peu', 'Régulièrement', 'Un peu', 'Tout le temps', 'Jamais', 'Jamais', 'Jamais', 'Régulièrement', 'Jamais', 'Jamais', 'Un peu', 'Un peu', 'Jamais', 'Connais pas', 'Je n\'aime pas', 'Je suis fan', 'J\'aime bien', 'Je suis fan', 'Connais pas', 'Connais pas', 'Connais pas', 'Connais pas', 'Je suis fan', 'Connais pas', 'Je suis fan', 'Connais pas'),
('2020/10/22 6:08:10 PM GMT+1', 20205322, 'Benin', 'Prépa classique;Licence', 'Oui', 'ENSIM\'Elec', 'Android', 'Christian Grey', 'Je code', 'Élite', 'Chrome', 'Java;C;HTML5 CSS;Php;Python;JavaScript', 'Un peu', 'Un peu', 'Régulièrement', 'Jamais', 'Régulièrement', 'Un peu', 'Un peu', 'Jamais', 'Jamais', 'Jamais', 'Jamais', 'Jamais', 'Un peu', 'Un peu', 'J\'aime bien', 'J\'aime bien', 'J\'aime bien', 'Connais pas', 'J\'aime bien', 'Connais pas', 'Connais pas', 'Connais pas', 'Connais pas', 'J\'aime bien', 'Connais pas', 'Je n\'aime pas', 'Connais pas');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;