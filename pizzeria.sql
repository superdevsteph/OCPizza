-- phpMyAdmin SQL Dump
-- version 3.4.9
-- http://www.phpmyadmin.net
--
-- Client: localhost
-- Généré le : Lun 26 Novembre 2012 à 08:32
-- Version du serveur: 5.5.20
-- Version de PHP: 5.3.9

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Base de données: `pizzeria`
--

-- --------------------------------------------------------

--
-- Structure de la table `boisson`
--

CREATE TABLE IF NOT EXISTS `boisson` (
  `idBoisson` int(11) NOT NULL AUTO_INCREMENT,
  `nomBoisson` varchar(20) NOT NULL,
  `prix` float NOT NULL,
  `image` text,
  PRIMARY KEY (`idBoisson`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=17 ;

--
-- Contenu de la table `boisson`
--

INSERT INTO `boisson` (`idBoisson`, `nomBoisson`, `prix`, `image`) VALUES
(1, 'COCA COLA 1,5 L', 3, 'boisson12.jpg'),
(2, 'COCA COLA 33 CL', 1.5, 'boisson6.jpg'),
(3, 'COCA COLA 50CL', 2, 'boisson9.jpg'),
(4, 'EVIAN 50 CL', 1.6, 'boisson1.jpg'),
(5, 'FANTA 33 CL', 1.5, 'boisson3.jpg'),
(6, 'FANTA 50 CL', 2, 'boisson8.jpg'),
(7, 'HEINEKEN 50 CL', 3.3, 'boisson14.jpg'),
(8, 'ICE TEA 33 CL', 1.5, 'boisson5.jpg'),
(9, 'ICE TEA 50CL', 2, 'boisson10.jpg'),
(10, 'KRONENBOURG 50 CL', 3.3, 'boisson13.jpg'),
(11, 'LAMBRUSCO 75 CL', 9.5, 'boisson16.jpg'),
(12, 'OASIS 2 L', 3, 'boisson11.jpg'),
(13, 'OASIS 33 CL', 1.5, 'boisson2.jpg'),
(14, 'ORANGINA  33 CL', 1.5, 'boisson4.jpg'),
(15, 'ORANGINA 50 CL', 2, 'boisson7.jpg'),
(16, 'VIN ROUGE 75 CL ', 6.5, 'boisson15.jpg');

-- --------------------------------------------------------

--
-- Structure de la table `client`
--

CREATE TABLE IF NOT EXISTS `client` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nom` varchar(20) NOT NULL,
  `prenom` varchar(20) NOT NULL,
  `tel` int(11) NOT NULL,
  `Adresse` varchar(150) DEFAULT NULL,
  `codePostal` int(11) NOT NULL,
  `ville` varchar(20) NOT NULL,
  `langue` varchar(20) NOT NULL,
  `mdp` text NOT NULL,
  `date_inscription` date DEFAULT NULL,
  `email` text NOT NULL,
  `civilite` varchar(30) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=11 ;

--
-- Contenu de la table `client`
--

INSERT INTO `client` (`id`, `nom`, `prenom`, `tel`, `Adresse`, `codePostal`, `ville`, `langue`, `mdp`, `date_inscription`, `email`, `civilite`) VALUES
(1, 'boubou', 'aziz', 632587941, '13 rue pierre corneille', 91000, 'evry', 'francais', '40bd001563085fc35165329ea1ff5c5ecbdbbeef', '2012-11-23', 'bouhafs89@hotmail.fr', 'M.'),
(2, 'bob', 'b', 11222333, '111', 111, '11', 'francais', '40bd001563085fc35165329ea1ff5c5ecbdbbeef', '2012-11-24', 'bouhafs896@hotmail.fr', 'M.'),
(3, 'boubou', 'aziz', 589999999, '12 rue ', 91000, 'evry', 'francais', '40bd001563085fc35165329ea1ff5c5ecbdbbeef', '2012-11-24', 'aziz.bouhafs@hotmail.fr', 'M.'),
(4, 'a', 'a', 0, 'aa', 0, 'aa', 'francais', 'e0c9035898dd52fc65c41454cec9c4d2611bfb37', '2012-11-25', 'a@ht.fr', 'M.'),
(5, 'a', 'a', 0, 'aa', 0, 'aa', 'francais', 'e0c9035898dd52fc65c41454cec9c4d2611bfb37', '2012-11-25', 'k@ht.fr', 'M.'),
(6, 'n', 'n', 0, 'n', 0, 'n', 'francais', 'd1854cae891ec7b29161ccaf79a24b00c274bdaa', '2012-11-25', 'n@hotmail.fr', 'M.'),
(7, 'z', 'z', 0, 'aa', 0, 'aaa', 'anglais', '86f7e437faa5a7fce15d1ddcb9eaeaea377667b8', '2012-11-25', 'z@gmail.com', 'M.'),
(8, 'e', 'e', 0, 'e', 0, 'e', 'francais', '7c4a8d09ca3762af61e59520943dc26494f8941b', '2012-11-25', 'e@mama.g', 'M.'),
(10, 'bouhafs', 'aziz', 689754896, '13 rue des soeurs ', 91000, 'bures', 'francais', '7c4a8d09ca3762af61e59520943dc26494f8941b', '2012-11-25', 'aziz.bouhafs@gmail.com', 'M.');

-- --------------------------------------------------------

--
-- Structure de la table `commande`
--

CREATE TABLE IF NOT EXISTS `commande` (
  `numCommande` int(11) NOT NULL AUTO_INCREMENT,
  `dateCom` date DEFAULT NULL,
  `taille` char(30) NOT NULL,
  `quantite` int(11) DEFAULT NULL,
  `prixUnite` float DEFAULT NULL,
  `prixTotal` float DEFAULT NULL,
  `date_livraison` date DEFAULT NULL,
  `numClient` int(11) DEFAULT NULL,
  `idPizza` int(11) DEFAULT NULL,
  `idBoisson` int(11) DEFAULT NULL,
  `idDessert` int(11) DEFAULT NULL,
  `idMenu` int(11) DEFAULT NULL,
  `idEntree` int(11) DEFAULT NULL,
  `nomPizza` varchar(255) NOT NULL,
  PRIMARY KEY (`numCommande`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Structure de la table `dessert`
--

CREATE TABLE IF NOT EXISTS `dessert` (
  `idDessert` int(11) NOT NULL AUTO_INCREMENT,
  `nomDessert` text NOT NULL,
  `prix` float NOT NULL,
  `image` text,
  `description` text NOT NULL,
  PRIMARY KEY (`idDessert`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=6 ;

--
-- Contenu de la table `dessert`
--

INSERT INTO `dessert` (`idDessert`, `nomDessert`, `prix`, `image`, `description`) VALUES
(1, 'COOKIES', 1.5, 'dessert1.jpg', 'dessert'),
(2, 'MOELLEUX AU CHOCOLAT', 2.2, 'dessert2.jpg', 'dessert'),
(3, 'GLACE HAAGEN-DAZS CHOCOLAT & COOKIE', 6.5, 'dessert3.jpg', 'Glace au chocolat avec des morceaux de cookie (500ml) '),
(4, 'GLACE HAAGEN-DAZS VANILLE & COOKIE', 6.5, 'dessert4.jpg', 'Glace a la vanille et noix de macadamia caramelisees (500 ml) '),
(5, 'GLACE HAAGEN-DAZS VANILLE', 6.5, 'dessert5.jpg', 'Glace a la vanille, sauce caramel et morceaux de brownies (500 ml) ');

-- --------------------------------------------------------

--
-- Structure de la table `entree`
--

CREATE TABLE IF NOT EXISTS `entree` (
  `idEntree` int(11) NOT NULL AUTO_INCREMENT,
  `nomEntree` varchar(20) NOT NULL,
  `prix` float NOT NULL,
  `image` text,
  `description` text NOT NULL,
  PRIMARY KEY (`idEntree`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=9 ;

--
-- Contenu de la table `entree`
--

INSERT INTO `entree` (`idEntree`, `nomEntree`, `prix`, `image`, `description`) VALUES
(1, 'POTATOES', 4.9, 'entree1.jpg', 'Pommes de terre avec peau coupees en 8 segments, assaisonnees, recouvertes d''un enrobage.'),
(2, 'SALADE CHEF', 5.5, 'entree2.jpg', 'Salade verte, tomates, oeufs, jambon, coeur de palmier, mais.'),
(3, 'SALADE VIGNERONNE', 5.5, 'entree3.jpg', 'Cervelas, gruyere, cornichons, oignons.'),
(4, 'SALADE CESAR', 5.5, 'entree4.jpg', 'Salade verte, croutons, mais, oignons, poulet marine.'),
(5, 'SALADE NICOISE', 5.5, 'entree5.jpg', 'Salade verte, oeufs, olives, thons, crudites, anchois.'),
(6, 'TOMATES MOZZARELLA', 5.5, 'entree6.jpg', 'Tomates, mozzarella, huile d olive, basilic frais.'),
(7, 'NUGGETS', 5.5, 'entree7.jpg', 'Nuggets de poulet (10 pieces).'),
(8, 'WINGS', 5.9, 'entree8.jpg', 'Ailes de poulet marines (8 pieces).');

-- --------------------------------------------------------

--
-- Structure de la table `ingredient`
--

CREATE TABLE IF NOT EXISTS `ingredient` (
  `idIng` int(11) NOT NULL AUTO_INCREMENT,
  `nomIng` varchar(200) NOT NULL,
  PRIMARY KEY (`idIng`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=25 ;

--
-- Contenu de la table `ingredient`
--

INSERT INTO `ingredient` (`idIng`, `nomIng`) VALUES
(1, 'MOZZARELLE'),
(2, 'JAMBON CRU AOSTE'),
(3, 'PEPPERONI'),
(4, 'JAMBON'),
(5, 'MERGUEZ'),
(6, 'BOEUF'),
(7, 'POULET'),
(8, 'LARDONS'),
(9, 'CANTAL'),
(10, 'ST-NECTAIRE'),
(11, 'POIVRONS VERTS'),
(12, 'CHAMPIGNONS'),
(13, 'TOMATES'),
(14, 'ANANAS'),
(15, 'OIGNONS'),
(16, 'PIMENTS'),
(17, 'THON'),
(18, 'OLIVES NOIRES'),
(19, 'POMMES DE TERRE'),
(20, 'SAUMON FUME'),
(21, 'EMINCES DE POULET (HALAL)'),
(22, 'MIEL'),
(23, 'FROMAGE DE CHEVRE'),
(24, 'FOURME D AMBERT AOC');

-- --------------------------------------------------------

--
-- Structure de la table `menu`
--

CREATE TABLE IF NOT EXISTS `menu` (
  `idMenu` int(11) NOT NULL AUTO_INCREMENT,
  `nomMenu` varchar(20) NOT NULL,
  `prix` float NOT NULL,
  `image` text,
  `description` text NOT NULL,
  PRIMARY KEY (`idMenu`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=5 ;

--
-- Contenu de la table `menu`
--

INSERT INTO `menu` (`idMenu`, `nomMenu`, `prix`, `image`, `description`) VALUES
(1, 'SOLITAIRE', 17.99, 'menu.jpg', '1 pizza moyenne + 1 entree au choix +1 boisson 33 cl. '),
(2, 'DUE', 17.99, 'menu2.jpg', '2 pizzas 2 pers + 1 entrees au choix + 1 grande boisson. '),
(3, 'DUO', 23.99, 'menu3.jpg', '1 grande pizza + 2 entrees au choix + 1 grande boisson.'),
(4, 'FAMILIALE', 29.99, 'menu4.jpg', '2 grandes pizzas + 2 entrees au choix + 1 grande boisson. ');

-- --------------------------------------------------------

--
-- Structure de la table `pizza`
--

CREATE TABLE IF NOT EXISTS `pizza` (
  `idPizza` int(11) NOT NULL AUTO_INCREMENT,
  `nomPizza` varchar(30) NOT NULL,
  `prix` float NOT NULL,
  `image` text NOT NULL,
  `description` text NOT NULL,
  `date` date NOT NULL,
  `time` time NOT NULL,
  `type` text NOT NULL,
  PRIMARY KEY (`idPizza`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=23 ;

--
-- Contenu de la table `pizza`
--

INSERT INTO `pizza` (`idPizza`, `nomPizza`, `prix`, `image`, `description`, `date`, `time`, `type`) VALUES
(1, 'PIZZA BARBECUE', 15.9, 'pizzabarbecue.jpg', 'sauce barbecue, mozzarella, boulettes au boeuf, lardons, oignons', '0000-00-00', '00:00:00', ''),
(2, 'PIZZA CHIKEN BARBECUE', 15.9, 'pizza chicken barbecue.jpg ', 'sauce barbecue, mozzarella, champignons frais, oignons, poivrons verts et poulet', '0000-00-00', '00:00:00', ''),
(3, 'PIZZA PEPPERONI LOVERS', 15.9, 'peperonie lovers.jpg', 'sauce tomate, double mozzarella et double saucisse pepperoni', '0000-00-00', '00:00:00', ''),
(4, 'PIZZA CHEVRE-MIEL', 15.9, 'chevre de miel.jpg', 'Creme fraiche legere, mozzarella, fromage de chevre et miel', '0000-00-00', '00:00:00', ''),
(5, 'PIZZA HAWAIENNE', 14.9, 'hawaienne.jpg', 'sauce tomate, mozzarella, jambon et double ananas.', '0000-00-00', '00:00:00', ''),
(6, 'PIZZA VEGETARIENNE', 14.9, 'vegetarienne.jpg', 'sauce tomate, mozzarella, champignons frais, oignons, poivrons verts et tomates fraiches', '0000-00-00', '00:00:00', ''),
(7, 'PIZZA BPM', 14.9, 'bmp.jpg', 'sauce barbecue, mozzarella, boeuf, poulet, merguez', '0000-00-00', '00:00:00', ''),
(8, 'PIZZA QUEEN', 14.9, 'queen.jpg', 'sauce tomate, mozzarella, jambon et double champignons frais\r\n', '0000-00-00', '00:00:00', ''),
(9, 'PIZZA LOUISIANE', 15.9, 'louisianne.jpg', 'sauce tomate, mozzarella, champignons frais, oignons, poivrons verts et double poulet', '0000-00-00', '00:00:00', ''),
(10, 'PIZZA TARTIFLETTE', 16.9, 'tartiflette.jpg', 'creme fraiche, mozzarella, pommes de terre, lardons et Saint-Nectaire.', '0000-00-00', '00:00:00', ''),
(11, 'PIZZA ORIENTALE', 14.9, 'oriental.jpg', 'sauce tomate, mozzarella, champignons frais et double merguez', '0000-00-00', '00:00:00', ''),
(12, 'PIZZA CAMPAGNARDE', 15.9, 'campagnarde.jpg', 'creme fraiche legere, mozzarella, champignons frais, double lardons, oignons', '0000-00-00', '00:00:00', ''),
(13, 'PIZZA SPICY HOT ONE (L EPICEE)', 15.9, 'spicy hot one.jpg', 'sauce tomate, mozzarella, boulettes au boeuf, oignons, piments et tomates fraiches', '0000-00-00', '00:00:00', ''),
(14, 'PIZZA TEXANE ', 16.9, 'texane.jpg', 'sauce tomate, mozzarella, boulettes au boeuf, champignons frais, jambon, lardons et oignons', '0000-00-00', '00:00:00', ''),
(15, 'PIZZA PROVENCALE ', 15.9, 'provincial.jpg', 'sauce tomate, mozzarella, oignons, olives noires, thon et tomates fraiches', '0000-00-00', '00:00:00', ''),
(16, 'PIZZA SUPREME', 15.9, 'supreme.jpg', 'sauce tomate, mozzarella, boulettes au boeuf, champignons frais, oignons, poivrons verts et saucisse pepperoni', '0000-00-00', '00:00:00', ''),
(17, 'PIZZA NORDIQUE', 15.9, 'nordique.jpg', 'creme fraiche, mozzarella, tranches de saumon fume au bois de hetre', '0000-00-00', '00:00:00', ''),
(18, 'PIZZA LA PERSO', 15.9, 'perso.jpg', 'Devenez le chef cuisto et composez votre pizza: sauce tomate, mozzarella +3 garnitures au choix.', '0000-00-00', '00:00:00', ''),
(19, 'PIZZA MONTAGNARDE', 16.9, 'montagnarde.jpg', 'creme fraiche legere, mozzarella, champignons frais, chiffonnade de jambon cru et Saint-Nectaire', '0000-00-00', '00:00:00', ''),
(20, 'PIZZA 4 FROMAGES', 16.9, '4 fromages.jpg', 'sauce tomate, mozzarella, cantal, fourme d''Ambert AOC, fromage de chevre', '0000-00-00', '00:00:00', ''),
(21, 'PIZZA MARGHERITA', 16.9, 'pizza margherita.jpg', 'sauce tomate et double mozzarella', '0000-00-00', '00:00:00', ''),
(22, 'PIZZA KASBAH', 16.9, 'coupdecoeur.php', 'Sauce tomate, mozzarella, eminces de poulet (halal), oignons, tomates fraiches et sauce blanche kebab.', '0000-00-00', '00:00:00', '');

-- --------------------------------------------------------

--
-- Structure de la table `pizza_ingredient`
--

CREATE TABLE IF NOT EXISTS `pizza_ingredient` (
  `nomPizza` char(30) NOT NULL DEFAULT '',
  `numIng` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`nomPizza`,`numIng`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Contenu de la table `pizza_ingredient`
--

INSERT INTO `pizza_ingredient` (`nomPizza`, `numIng`) VALUES
('PIZZA 4 FROMAGES', 1),
('PIZZA 4 FROMAGES', 9),
('PIZZA 4 FROMAGES', 13),
('PIZZA 4 FROMAGES', 23),
('PIZZA 4 FROMAGES', 24),
('PIZZA BARBECUE', 1),
('PIZZA BARBECUE', 6),
('PIZZA BARBECUE', 8),
('PIZZA BARBECUE', 15),
('PIZZA BPM', 1),
('PIZZA BPM', 5),
('PIZZA BPM', 6),
('PIZZA BPM', 7),
('PIZZA CAMPAGNARDE', 1),
('PIZZA CAMPAGNARDE', 6),
('PIZZA CAMPAGNARDE', 13),
('PIZZA CAMPAGNARDE', 15),
('PIZZA CAMPAGNARDE', 16),
('PIZZA CHEVRE-MIEL', 1),
('PIZZA CHEVRE-MIEL', 22),
('PIZZA CHEVRE-MIEL', 23),
('PIZZA CHICKEN BABECUE', 1),
('PIZZA CHICKEN BABECUE', 7),
('PIZZA CHICKEN BABECUE', 11),
('PIZZA CHICKEN BABECUE', 12),
('PIZZA CHICKEN BABECUE', 15),
('PIZZA CHIKEN BARBECUE', 1),
('PIZZA CHIKEN BARBECUE', 7),
('PIZZA CHIKEN BARBECUE', 11),
('PIZZA CHIKEN BARBECUE', 12),
('PIZZA CHIKEN BARBECUE', 15),
('PIZZA HAWAIENNE', 1),
('PIZZA HAWAIENNE', 4),
('PIZZA HAWAIENNE', 13),
('PIZZA HAWAIENNE', 14),
('PIZZA KASBAH', 1),
('PIZZA KASBAH', 13),
('PIZZA KASBAH', 15),
('PIZZA KASBAH', 21),
('PIZZA LA PERSO', 1),
('PIZZA LA PERSO', 13),
('PIZZA LOUISIANE', 1),
('PIZZA LOUISIANE', 7),
('PIZZA LOUISIANE', 11),
('PIZZA LOUISIANE', 12),
('PIZZA LOUISIANE', 13),
('PIZZA LOUISIANE', 15),
('PIZZA MARGHERITA', 1),
('PIZZA MARGHERITA', 13),
('PIZZA MONTAGNARDE', 1),
('PIZZA MONTAGNARDE', 2),
('PIZZA MONTAGNARDE', 10),
('PIZZA MONTAGNARDE', 12),
('PIZZA NORDIQUE', 1),
('PIZZA NORDIQUE', 20),
('PIZZA ORIENTALE', 1),
('PIZZA ORIENTALE', 5),
('PIZZA ORIENTALE', 12),
('PIZZA ORIENTALE', 13),
('PIZZA PEPPERONI LOVERS', 1),
('PIZZA PEPPERONI LOVERS', 3),
('PIZZA PEPPERONI LOVERS', 13),
('PIZZA PEPPERONI LOVERS', 15),
('PIZZA PROVENCALE', 1),
('PIZZA PROVENCALE', 13),
('PIZZA PROVENCALE', 15),
('PIZZA PROVENCALE', 16),
('PIZZA PROVENCALE', 17),
('PIZZA PROVENCALE', 18),
('PIZZA QUEEN', 1),
('PIZZA QUEEN', 4),
('PIZZA QUEEN', 12),
('PIZZA QUEEN', 13),
('PIZZA SPICY HOT ONE', 1),
('PIZZA SPICY HOT ONE', 6),
('PIZZA SPICY HOT ONE', 13),
('PIZZA SPICY HOT ONE', 15),
('PIZZA SPICY HOT ONE', 16),
('PIZZA SUPREME', 1),
('PIZZA SUPREME', 3),
('PIZZA SUPREME', 6),
('PIZZA SUPREME', 11),
('PIZZA SUPREME', 12),
('PIZZA SUPREME', 13),
('PIZZA SUPREME', 15),
('PIZZA TARTIFLETTE', 1),
('PIZZA TARTIFLETTE', 8),
('PIZZA TARTIFLETTE', 10),
('PIZZA TARTIFLETTE', 19),
('PIZZA TEXANE', 1),
('PIZZA TEXANE', 4),
('PIZZA TEXANE', 6),
('PIZZA TEXANE', 8),
('PIZZA TEXANE', 12),
('PIZZA TEXANE', 13),
('PIZZA TEXANE', 15),
('PIZZA VEGETARIENNE', 1),
('PIZZA VEGETARIENNE', 12),
('PIZZA VEGETARIENNE', 13),
('PIZZA VEGETARIENNE', 15);

-- --------------------------------------------------------

--
-- Structure de la table `tarification`
--

CREATE TABLE IF NOT EXISTS `tarification` (
  `taille` char(30) NOT NULL,
  `coefficient` float NOT NULL,
  PRIMARY KEY (`taille`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Contenu de la table `tarification`
--

INSERT INTO `tarification` (`taille`, `coefficient`) VALUES
('grande', 4),
('moyenne', 1),
('petite', 2);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;