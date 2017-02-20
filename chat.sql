-- phpMyAdmin SQL Dump
-- version 4.0.10deb1
-- http://www.phpmyadmin.net
--
-- Client: localhost
-- Généré le: Lun 20 Février 2017 à 11:42
-- Version du serveur: 5.5.53-0ubuntu0.14.04.1
-- Version de PHP: 5.5.9-1ubuntu4.20

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Base de données: `chat`
--

-- --------------------------------------------------------

--
-- Structure de la table `messages`
--

CREATE TABLE IF NOT EXISTS `messages` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `content` varchar(4095) NOT NULL,
  `id_author` int(10) unsigned NOT NULL,
  PRIMARY KEY (`id`),
  KEY `id_author` (`id_author`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=80 ;

--
-- Contenu de la table `messages`
--

INSERT INTO `messages` (`id`, `date`, `content`, `id_author`) VALUES
(1, '2017-02-17 14:24:44', 'uuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuu', 2),
(2, '2017-02-17 14:24:58', 'r!lmyksjyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyy', 2),
(3, '2017-02-17 14:40:19', 'salut nounouuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuu', 3),
(4, '2017-02-17 14:43:52', 'Hello toto :D', 1),
(5, '2017-02-17 14:46:47', 'Bon Ã§a a l''air de fonctionner !', 1),
(6, '2017-02-17 14:52:27', 'Petit test :)', 1),
(7, '2017-02-17 14:53:19', 'pilipilipilpilpilpilpilpilpillplplplplplplplppppppppppppppppppppppppppppppppppppppppppppppppppppppppppppppppppppppppppppppppppppppppppppppppppppppppppppppppppppppppppppppppppppppppppppppppppppppppppppppp', 2),
(8, '2017-02-17 14:56:09', 'Coucou ?', 1),
(9, '2017-02-17 14:56:24', 'Ah voilÃ , c''est mieux quand mÃªme :)', 1),
(10, '2017-02-17 15:01:22', 'ryhujrthjÃ¹mresotjrohjojjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjj', 4),
(11, '2017-02-17 15:04:54', 'hey !\r\n', 4),
(12, '2017-02-17 15:05:02', 'gbbgfbgfbgfb', 4),
(13, '2017-02-17 15:05:08', 'ok', 3),
(14, '2017-02-17 15:05:22', 't-y(-jueje(-Ã¨yjuyjyujyu', 4),
(15, '2017-02-17 15:11:52', 'motherfuckerrrrrrrrrrrRrrRrrRrr', 3),
(16, '2017-02-17 15:12:01', 'PaRscalounet ?', 1),
(17, '2017-02-17 15:12:05', 'Really ?', 1),
(18, '2017-02-17 15:12:18', 'titineo Ã§a craque dans ton coin', 1),
(19, '2017-02-17 15:12:33', 'S''mieux, maintenant tu peux passer par la fenÃªtre', 1),
(20, '2017-02-17 15:14:25', 'biensur', 1),
(21, '2017-02-17 15:15:44', 'ok cool\r\n', 5),
(22, '2017-02-17 15:18:35', 'twisty40 il a craquÃ© aussi boudiou', 1),
(23, '2017-02-17 15:21:33', 'l''user twisty40, UN user', 1),
(24, '2017-02-17 15:21:40', 'ranafoutre que ce soit un gars ou une fille !', 1),
(25, '2017-02-17 15:26:03', '\\o/', 1),
(26, '2017-02-17 15:27:50', 'saluuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuut\r\n', 6),
(27, '2017-02-17 15:28:10', 'Choupirelouuuuuu !', 1),
(28, '2017-02-17 15:28:13', 'choupitrognon est dans la place!!!\r\n', 6),
(29, '2017-02-17 15:29:20', 'np', 1),
(30, '2017-02-17 15:31:16', 'lkhdjflhbgdhfgihdfihbgiofdhgibhfd', 4),
(31, '2017-02-17 15:31:34', 'sjzgfdlksjgfkdgsqfugdqsgfq', 4),
(32, '2017-02-17 15:32:56', 'lihhjdsohoigd', 4),
(33, '2017-02-17 15:34:36', 'cest un pliplipli !', 2),
(34, '2017-02-17 15:34:42', ':D', 2),
(35, '2017-02-17 15:34:53', 'ca marche !', 2),
(36, '2017-02-17 15:35:18', 'ghhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhh', 3),
(37, '2017-02-17 15:46:10', 'test ?', 1),
(38, '2017-02-17 16:00:27', 'bouh', 3),
(39, '2017-02-20 08:18:33', 'Bien bien et toi ?', 1),
(40, '2017-02-20 08:40:22', 'egkdfkdfkdfkdf', 9),
(41, '2017-02-20 08:41:29', 'Bonsoir !', 6),
(42, '2017-02-20 08:41:50', 'ola', 11),
(43, '2017-02-20 08:41:57', 'Hello les kasooooooosssss !!!!', 10),
(44, '2017-02-20 08:42:01', 'Cherchez vous un ami ?', 6),
(45, '2017-02-20 08:42:57', 'J''ai Control sur tout !', 6),
(46, '2017-02-20 08:44:31', 'Here''s Johny !', 14),
(47, '2017-02-20 08:46:19', 'oO', 1),
(50, '2017-02-20 08:51:05', 'trululuuuuu', 11),
(52, '2017-02-20 08:52:42', 'salut Jeremy!', 15),
(53, '2017-02-20 08:54:34', 'Non.', 14),
(54, '2017-02-20 08:54:55', 'trÃ¨s sexy la photo hahaha', 15),
(56, '2017-02-20 09:00:46', 'blop', 11),
(57, '2017-02-20 09:04:38', 'Bordel, y a Xena en bas...', 14),
(59, '2017-02-20 09:10:15', 'Â« In a time of ancient Gods, Warlords and Kings, a land in turmoil cried out for a hero. She was Xena, a mighty princess forged in the heat of battle. The power. The passion. The danger. Her courage will change the world. Â»', 14),
(60, '2017-02-20 09:11:29', 'Â« Ã€ l''Ã©poque des Dieux de la mythologie, des Seigneurs de la guerre et des Rois de lÃ©gende, un pays en plein dÃ©sordre demandait un hÃ©ros. Alors survint Xena, une prestigieuse princesse issue du cÅ“ur des batailles. Combat. Passion. Danger. Par son courage, Xena changera la face du monde. Â»', 14),
(61, '2017-02-20 09:13:28', 'Coucouuuuuu', 10),
(63, '2017-02-20 09:44:15', 'Gabrielle est une chanson Ã©crite par Long Chris et composÃ©e par Tony Cole pour Johnny Hallyday en 1976.', 14),
(64, '2017-02-20 09:51:32', 'Je suis lÃ  ! :D', 19),
(65, '2017-02-20 10:08:32', 'ca marche !', 2),
(66, '2017-02-20 10:10:09', 'Des messages !', 19),
(69, '2017-02-20 10:21:27', 'https://i.makeagif.com/media/11-17-2014/8gmdTQ.gif', 19),
(70, '2017-02-20 10:23:00', 'Il fait faim, il est 11:22, pas de pause, on va tous mÃ»rir...', 19),
(71, '2017-02-20 10:23:23', 'nul le css', 3),
(72, '2017-02-20 10:31:20', 'Instant tannÃ©...', 19),
(73, '2017-02-20 10:32:57', 'coucou les boloss', 5),
(74, '2017-02-20 10:36:07', 'pliplipli !', 2),
(75, '2017-02-20 10:36:13', 'ca marche l''avatar?!', 20),
(76, '2017-02-20 10:37:39', 'To eat?', 19),
(77, '2017-02-20 10:37:43', 'noooooooooooooooooooooooooonnnn :''(', 20),
(78, '2017-02-20 10:38:10', 'plop', 21),
(79, '2017-02-20 10:38:32', 'https://www.google.fr/url?sa=i&rct=j&q=&esrc=s&source=images&cd=&cad=rja&uact=8&ved=0ahUKEwj6nrffvJ7SAhXKWBQKHSuKDEoQjRwIBw&url=http%3A%2F%2Fwww.blogdumoderateur.com%2Ftrouve-gif-anime%2F&bvm=bv.147448319,d.d24&psig=AFQjCNEfItE4BLnSLdBqfN0yfqcMrL7GuA&ust=1487673215381357', 20);

-- --------------------------------------------------------

--
-- Structure de la table `users`
--

CREATE TABLE IF NOT EXISTS `users` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `login` varchar(31) NOT NULL,
  `password` varchar(63) NOT NULL,
  `email` varchar(63) NOT NULL,
  `birthdate` date NOT NULL,
  `admin` tinyint(1) NOT NULL DEFAULT '0',
  `avatar` varchar(511) NOT NULL,
  `status` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  UNIQUE KEY `login` (`login`,`email`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=22 ;

--
-- Contenu de la table `users`
--

INSERT INTO `users` (`id`, `login`, `password`, `email`, `birthdate`, `admin`, `avatar`, `status`) VALUES
(1, 'totototo', '$2y$12$L4JBlCCk47UeyZbotmmYh.LjqXkMB7nKxISPuYLiz3MhZ8XA3fy7i', 'toto@toto.toto', '2017-02-17', 1, 'http://4.bp.blogspot.com/-Ivo0VEqfz7I/TxypkmaotTI/AAAAAAAAADM/IQxRC3MY5n4/s320/toto2.png', '0000-00-00 00:00:00'),
(2, 'pliplipli', '$2y$13$YE/9fnfIS.elNbs0ndTaWeinCJ6NqdBtEH4uzXqUxQLw7dRV8J6yy', 'pliplipli@plou.fr', '2017-02-16', 1, 'pliplipli', '0000-00-00 00:00:00'),
(3, 'titineo', '$2y$13$eAPd7wn8wMeW1SqBjDkQre/EBBoX4zwJfGJFwm00XAqfmrlkjOl2S', 'tgif@bla.bla', '0000-00-00', 1, 'grgrgr', '0000-00-00 00:00:00'),
(4, 'momomomo', '$2y$13$3ayJUFB9NW9MS2/ZR80qIOB43FNSIfyVhvdj4aLpYPu6i9mqjpxXa', 'momomomo@fr.fr', '2017-02-10', 0, 'photo-Lapin-9.jpg', '0000-00-00 00:00:00'),
(5, 'link13200', '$2y$13$XMdwwsi7IIZH1zpElLY3LeLCtFZa9ktLcst.Fvha8h5r9d4yvIug.', 'lksjdflk@lksjdfl.fr', '2016-10-19', 1, 'speech-bubble.svg', '0000-00-00 00:00:00'),
(6, 'choupitrognon', '$2y$13$mpjUNZ8Z5FJiHUdsqIVACecwQiEjl5XzDZTgLXiFCpjA/tZsi/DMe', 'tgif@bla.bla', '0000-00-00', 0, '1.jpg', '0000-00-00 00:00:00'),
(7, 'mimolette', '$2y$13$QWsagxpQeEy4givCSNqhl.DpPLCFxtx4XLXGz.YRk3qeAPJr3Um0q', 'mimolette@mimo.fr', '2017-02-10', 0, 'photo-Lapin-9.jpg', '0000-00-00 00:00:00'),
(9, 'gloubiboulga', '$2y$13$/aHRPJDBdnOM6NQZINU/PeLtbuTPrX.mo5jbAr9Wc8xFkOi.wMlba', 'tgif@bla.bla', '0000-00-00', 0, '1.jpg', '0000-00-00 00:00:00'),
(10, 'Coucou', '$2y$13$7s9O2doCfIyDoVUtLhnz9OJwOYH04SW5r8966yH6NCBbpz8W0XveO', 'coucou@gmail.com', '2017-02-24', 0, '', '0000-00-00 00:00:00'),
(11, 'zovzov', '$2y$12$cLBsXfZWjg7V9EPiCxHb2.3jHtSvtQh4OpKeyP0VwNJGigpEID.Ry', 'zovzov@zovzov.fr', '2017-02-26', 0, 'https://www.google.fr/images/branding/googlelogo/2x/googlelogo_color_272x92dp.png', '0000-00-00 00:00:00'),
(14, 'Johny', '$2y$12$jaK/3/fFkxmSANPjigeJZO2uZo57Gw/qMip97KA.Zjf2.U61vYOZK', 'bob@jesuisbob.com', '1910-01-31', 0, 'https://media.giphy.com/media/l41YuwS5IipGquPmM/giphy.gif', '0000-00-00 00:00:00'),
(15, 'juliojulio', '$2y$12$X9vqc6Js8gsIqz98n97Tk.rG09Flu1.s6Ml15K6nje2YBkEjA.BnS', 'julio@julio.com', '2017-02-20', 0, 'http://imworld.aufeminin.com/story/20151204/noeud-papillon-pour-chat-824223_w1020h450c1cx369cy303.jpg', '0000-00-00 00:00:00'),
(16, 'babibelle', '$2y$13$WXThYAy6Kg7iz1T39SZdB.vbO.TvBbG/sSgPtIIxIsS4aGdiqqpMC', 'babibelle@gt.gt', '2017-02-24', 0, '', '0000-00-00 00:00:00'),
(18, 'blabla', '$2y$13$PSVoGE63x3zratLxqLrQ1Oohvmw8Nx/mzUNC9ae6XVk0ISKon.nl.', 'tgif@bla.bla', '0000-00-00', 0, 'https://www.google.fr/url?sa=i&rct=j&q=&esrc=s&source=images&cd=&cad=rja&uact=8&ved=0ahUKEwjBjIeBp57SAhVDuhoKHQdxBLAQjRwIBw&url=https%3A%2F%2Fwww.smashingmagazine.com%2F2015%2F06%2Fefficient-image-resizing-with-imagemagick%2F&psig=AFQjCNFbTO2kAkVNRMxRlJK8cj_7PHFhNg&ust=1487667379647296', '0000-00-00 00:00:00'),
(19, 'Gabrielle', '$2y$12$LeWWXWOW9Lp/0C2UGrtz7ukgrBnC7VN1zGl2z9Z6v7ACTQ4e/TeX6', 'gaby@lol.com', '1801-01-02', 0, 'https://media.giphy.com/media/LfkySBMSWXAg8/giphy.gif', '0000-00-00 00:00:00'),
(20, 'blablabla', '$2y$13$D6rz3TRCkyAcAy4Acoa8WOln52ORz4ZmyHHKwynavZAl8a9rLbVKa', 'tgif@bla.bla', '0000-00-00', 0, 'https://www.google.fr/url?sa=i&rct=j&q=&esrc=s&source=images&cd=&cad=rja&uact=8&ved=0ahUKEwj6nrffvJ7SAhXKWBQKHSuKDEoQjRwIBw&url=http%3A%2F%2Fwww.blogdumoderateur.com%2Ftrouve-gif-anime%2F&bvm=bv.147448319,d.d24&psig=AFQjCNEfItE4BLnSLdBqfN0yfqcMrL7GuA&ust=1487673215381357', '0000-00-00 00:00:00'),
(21, 'plopplop', '$2y$13$MxTpT7QDEng6YJWsFX1Dm.Hn3bq8MWNGzJ7iXpstIyyzR6yQnhx9m', 'plopplop@plop.plop', '2017-02-18', 0, 'https://static.wamiz.fr/images/animaux/rongeurs/large/lapin.jpg', '0000-00-00 00:00:00');

--
-- Contraintes pour les tables exportées
--

--
-- Contraintes pour la table `messages`
--
ALTER TABLE `messages`
  ADD CONSTRAINT `messages_ibfk_1` FOREIGN KEY (`id_author`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
