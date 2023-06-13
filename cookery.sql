-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Hôte : localhost:8889
-- Généré le : lun. 05 juin 2023 à 09:40
-- Version du serveur : 5.7.34
-- Version de PHP : 7.4.21

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données : `cookery`
--

-- --------------------------------------------------------

--
-- Structure de la table `category`
--

CREATE TABLE `category` (
  `id` int(11) NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `category`
--

INSERT INTO `category` (`id`, `name`) VALUES
(61, 'Entrée'),
(62, 'Plat'),
(63, 'Dessert');

-- --------------------------------------------------------

--
-- Structure de la table `doctrine_migration_versions`
--

CREATE TABLE `doctrine_migration_versions` (
  `version` varchar(191) COLLATE utf8_unicode_ci NOT NULL,
  `executed_at` datetime DEFAULT NULL,
  `execution_time` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Déchargement des données de la table `doctrine_migration_versions`
--

INSERT INTO `doctrine_migration_versions` (`version`, `executed_at`, `execution_time`) VALUES
('DoctrineMigrations\\Version20221220134328', '2022-12-20 13:43:49', 56),
('DoctrineMigrations\\Version20221228130459', '2022-12-28 13:05:09', 32),
('DoctrineMigrations\\Version20221228130932', '2022-12-28 13:09:39', 43),
('DoctrineMigrations\\Version20221229121927', '2022-12-29 12:19:35', 55),
('DoctrineMigrations\\Version20230106160245', '2023-01-06 16:02:53', 43),
('DoctrineMigrations\\Version20230112153859', '2023-01-12 15:39:07', 38),
('DoctrineMigrations\\Version20230112155746', '2023-01-12 15:57:52', 27),
('DoctrineMigrations\\Version20230113212231', '2023-01-13 22:08:24', 71),
('DoctrineMigrations\\Version20230113221252', '2023-01-13 22:12:59', 79),
('DoctrineMigrations\\Version20230119114007', '2023-01-19 11:40:22', 99),
('DoctrineMigrations\\Version20230131154708', '2023-01-31 15:47:15', 97),
('DoctrineMigrations\\Version20230131171713', '2023-01-31 17:17:22', 79),
('DoctrineMigrations\\Version20230213165226', '2023-02-13 16:52:33', 98),
('DoctrineMigrations\\Version20230213165346', '2023-02-13 16:53:50', 75),
('DoctrineMigrations\\Version20230214125105', '2023-02-14 12:51:13', 41),
('DoctrineMigrations\\Version20230214125440', '2023-02-14 12:54:47', 84),
('DoctrineMigrations\\Version20230216095901', '2023-02-16 09:59:06', 61),
('DoctrineMigrations\\Version20230216105816', '2023-02-16 10:58:26', 77),
('DoctrineMigrations\\Version20230216142932', '2023-02-16 14:29:40', 84),
('DoctrineMigrations\\Version20230216143237', '2023-02-16 14:32:43', 59),
('DoctrineMigrations\\Version20230216145556', '2023-02-16 14:56:03', 68),
('DoctrineMigrations\\Version20230216150625', '2023-02-16 15:06:33', 65),
('DoctrineMigrations\\Version20230216152625', '2023-02-16 15:26:31', 49),
('DoctrineMigrations\\Version20230216153259', '2023-02-16 15:33:05', 50),
('DoctrineMigrations\\Version20230216154354', '2023-02-16 15:44:01', 43),
('DoctrineMigrations\\Version20230216154532', '2023-02-16 15:45:38', 37),
('DoctrineMigrations\\Version20230216154850', '2023-02-16 15:48:56', 42),
('DoctrineMigrations\\Version20230216160445', '2023-02-16 16:04:54', 62),
('DoctrineMigrations\\Version20230216161111', '2023-02-16 16:11:17', 69),
('DoctrineMigrations\\Version20230216161912', '2023-02-16 16:19:18', 38),
('DoctrineMigrations\\Version20230216162051', '2023-02-16 16:20:58', 73);

-- --------------------------------------------------------

--
-- Structure de la table `ingredient`
--

CREATE TABLE `ingredient` (
  `id` int(11) NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `ingredient`
--

INSERT INTO `ingredient` (`id`, `name`) VALUES
(200, 'pomme'),
(201, 'poire'),
(202, 'carrotte'),
(203, 'pomme de terre'),
(204, 'fromage reblochon'),
(205, 'lentilles'),
(206, 'pain'),
(207, 'jambon'),
(208, 'oignons'),
(209, 'ail'),
(210, 'persil'),
(211, 'huile d\'olive'),
(212, 'beurre'),
(213, 'thym'),
(214, 'saucisse de morteau'),
(215, 'saucisse de toulouse'),
(216, 'aligot'),
(217, 'vin blanc'),
(218, 'vin rouge'),
(219, 'lardons'),
(220, 'salade verte'),
(221, 'farine'),
(222, 'oeuf'),
(223, 'gruyère'),
(224, 'choucroute'),
(225, 'lard fumé'),
(226, 'laurier'),
(227, 'saindoux'),
(228, 'poivre'),
(229, 'genièvre'),
(230, 'bouquet garni'),
(231, 'sel'),
(232, 'crème fraiche'),
(233, 'sucre'),
(234, 'vanille'),
(235, 'moutarde'),
(236, 'viande de boeuf'),
(237, 'poulet'),
(238, 'morilles'),
(239, 'persil'),
(240, 'ciboulette'),
(241, 'coriandre'),
(242, 'aneth'),
(243, 'pain d\'épices'),
(244, 'lait'),
(245, 'vanille'),
(246, 'rhum'),
(247, 'chapelure'),
(248, 'rouget'),
(249, 'coulis de tomate'),
(250, 'anchois');

-- --------------------------------------------------------

--
-- Structure de la table `messenger_messages`
--

CREATE TABLE `messenger_messages` (
  `id` bigint(20) NOT NULL,
  `body` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `headers` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue_name` varchar(190) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` datetime NOT NULL,
  `available_at` datetime NOT NULL,
  `delivered_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `messenger_messages`
--

INSERT INTO `messenger_messages` (`id`, `body`, `headers`, `queue_name`, `created_at`, `available_at`, `delivered_at`) VALUES
(1, 'O:36:\\\"Symfony\\\\Component\\\\Messenger\\\\Envelope\\\":2:{s:44:\\\"\\0Symfony\\\\Component\\\\Messenger\\\\Envelope\\0stamps\\\";a:1:{s:46:\\\"Symfony\\\\Component\\\\Messenger\\\\Stamp\\\\BusNameStamp\\\";a:1:{i:0;O:46:\\\"Symfony\\\\Component\\\\Messenger\\\\Stamp\\\\BusNameStamp\\\":1:{s:55:\\\"\\0Symfony\\\\Component\\\\Messenger\\\\Stamp\\\\BusNameStamp\\0busName\\\";s:21:\\\"messenger.bus.default\\\";}}}s:45:\\\"\\0Symfony\\\\Component\\\\Messenger\\\\Envelope\\0message\\\";O:51:\\\"Symfony\\\\Component\\\\Mailer\\\\Messenger\\\\SendEmailMessage\\\":2:{s:60:\\\"\\0Symfony\\\\Component\\\\Mailer\\\\Messenger\\\\SendEmailMessage\\0message\\\";O:39:\\\"Symfony\\\\Bridge\\\\Twig\\\\Mime\\\\TemplatedEmail\\\":4:{i:0;s:41:\\\"registration/confirmation_email.html.twig\\\";i:1;N;i:2;a:3:{s:9:\\\"signedUrl\\\";s:169:\\\"http://0.0.0.0:8080/verify/email?expires=1673621174&signature=nDbZC%2Fh5uDLjfv2X%2Bt4QQ4PQetL66edoZ8pa4vVdkak%3D&token=FYZhnFF4oyujZ52Pbf%2FLzZNW0Z%2FtHXwuQ6FXEFIWQiA%3D\\\";s:19:\\\"expiresAtMessageKey\\\";s:26:\\\"%count% hour|%count% hours\\\";s:20:\\\"expiresAtMessageData\\\";a:1:{s:7:\\\"%count%\\\";i:1;}}i:3;a:6:{i:0;N;i:1;N;i:2;N;i:3;N;i:4;a:0:{}i:5;a:2:{i:0;O:37:\\\"Symfony\\\\Component\\\\Mime\\\\Header\\\\Headers\\\":2:{s:46:\\\"\\0Symfony\\\\Component\\\\Mime\\\\Header\\\\Headers\\0headers\\\";a:3:{s:4:\\\"from\\\";a:1:{i:0;O:47:\\\"Symfony\\\\Component\\\\Mime\\\\Header\\\\MailboxListHeader\\\":5:{s:50:\\\"\\0Symfony\\\\Component\\\\Mime\\\\Header\\\\AbstractHeader\\0name\\\";s:4:\\\"From\\\";s:56:\\\"\\0Symfony\\\\Component\\\\Mime\\\\Header\\\\AbstractHeader\\0lineLength\\\";i:76;s:50:\\\"\\0Symfony\\\\Component\\\\Mime\\\\Header\\\\AbstractHeader\\0lang\\\";N;s:53:\\\"\\0Symfony\\\\Component\\\\Mime\\\\Header\\\\AbstractHeader\\0charset\\\";s:5:\\\"utf-8\\\";s:58:\\\"\\0Symfony\\\\Component\\\\Mime\\\\Header\\\\MailboxListHeader\\0addresses\\\";a:1:{i:0;O:30:\\\"Symfony\\\\Component\\\\Mime\\\\Address\\\":2:{s:39:\\\"\\0Symfony\\\\Component\\\\Mime\\\\Address\\0address\\\";s:21:\\\"cookerytour@gmail.com\\\";s:36:\\\"\\0Symfony\\\\Component\\\\Mime\\\\Address\\0name\\\";s:11:\\\"Cookery bot\\\";}}}}s:2:\\\"to\\\";a:1:{i:0;O:47:\\\"Symfony\\\\Component\\\\Mime\\\\Header\\\\MailboxListHeader\\\":5:{s:50:\\\"\\0Symfony\\\\Component\\\\Mime\\\\Header\\\\AbstractHeader\\0name\\\";s:2:\\\"To\\\";s:56:\\\"\\0Symfony\\\\Component\\\\Mime\\\\Header\\\\AbstractHeader\\0lineLength\\\";i:76;s:50:\\\"\\0Symfony\\\\Component\\\\Mime\\\\Header\\\\AbstractHeader\\0lang\\\";N;s:53:\\\"\\0Symfony\\\\Component\\\\Mime\\\\Header\\\\AbstractHeader\\0charset\\\";s:5:\\\"utf-8\\\";s:58:\\\"\\0Symfony\\\\Component\\\\Mime\\\\Header\\\\MailboxListHeader\\0addresses\\\";a:1:{i:0;O:30:\\\"Symfony\\\\Component\\\\Mime\\\\Address\\\":2:{s:39:\\\"\\0Symfony\\\\Component\\\\Mime\\\\Address\\0address\\\";s:26:\\\"maximefrancois92@gmail.com\\\";s:36:\\\"\\0Symfony\\\\Component\\\\Mime\\\\Address\\0name\\\";s:0:\\\"\\\";}}}}s:7:\\\"subject\\\";a:1:{i:0;O:48:\\\"Symfony\\\\Component\\\\Mime\\\\Header\\\\UnstructuredHeader\\\":5:{s:50:\\\"\\0Symfony\\\\Component\\\\Mime\\\\Header\\\\AbstractHeader\\0name\\\";s:7:\\\"Subject\\\";s:56:\\\"\\0Symfony\\\\Component\\\\Mime\\\\Header\\\\AbstractHeader\\0lineLength\\\";i:76;s:50:\\\"\\0Symfony\\\\Component\\\\Mime\\\\Header\\\\AbstractHeader\\0lang\\\";N;s:53:\\\"\\0Symfony\\\\Component\\\\Mime\\\\Header\\\\AbstractHeader\\0charset\\\";s:5:\\\"utf-8\\\";s:55:\\\"\\0Symfony\\\\Component\\\\Mime\\\\Header\\\\UnstructuredHeader\\0value\\\";s:25:\\\"Please Confirm your Email\\\";}}}s:49:\\\"\\0Symfony\\\\Component\\\\Mime\\\\Header\\\\Headers\\0lineLength\\\";i:76;}i:1;N;}}}s:61:\\\"\\0Symfony\\\\Component\\\\Mailer\\\\Messenger\\\\SendEmailMessage\\0envelope\\\";N;}}', '[]', 'default', '2023-01-13 13:46:14', '2023-01-13 13:46:14', NULL),
(2, 'O:36:\\\"Symfony\\\\Component\\\\Messenger\\\\Envelope\\\":2:{s:44:\\\"\\0Symfony\\\\Component\\\\Messenger\\\\Envelope\\0stamps\\\";a:1:{s:46:\\\"Symfony\\\\Component\\\\Messenger\\\\Stamp\\\\BusNameStamp\\\";a:1:{i:0;O:46:\\\"Symfony\\\\Component\\\\Messenger\\\\Stamp\\\\BusNameStamp\\\":1:{s:55:\\\"\\0Symfony\\\\Component\\\\Messenger\\\\Stamp\\\\BusNameStamp\\0busName\\\";s:21:\\\"messenger.bus.default\\\";}}}s:45:\\\"\\0Symfony\\\\Component\\\\Messenger\\\\Envelope\\0message\\\";O:51:\\\"Symfony\\\\Component\\\\Mailer\\\\Messenger\\\\SendEmailMessage\\\":2:{s:60:\\\"\\0Symfony\\\\Component\\\\Mailer\\\\Messenger\\\\SendEmailMessage\\0message\\\";O:39:\\\"Symfony\\\\Bridge\\\\Twig\\\\Mime\\\\TemplatedEmail\\\":4:{i:0;s:41:\\\"registration/confirmation_email.html.twig\\\";i:1;N;i:2;a:3:{s:9:\\\"signedUrl\\\";s:167:\\\"http://0.0.0.0:8080/verify/email?expires=1674054976&signature=lUeadLOPh8C66Sq%2BE56iEiswQoUysgh04S%2FueiH4IZo%3D&token=y8kzTxsYUL3Og3lTyTg3ZvQBVZws2sezT1%2FUmmPnw7I%3D\\\";s:19:\\\"expiresAtMessageKey\\\";s:26:\\\"%count% hour|%count% hours\\\";s:20:\\\"expiresAtMessageData\\\";a:1:{s:7:\\\"%count%\\\";i:1;}}i:3;a:6:{i:0;N;i:1;N;i:2;N;i:3;N;i:4;a:0:{}i:5;a:2:{i:0;O:37:\\\"Symfony\\\\Component\\\\Mime\\\\Header\\\\Headers\\\":2:{s:46:\\\"\\0Symfony\\\\Component\\\\Mime\\\\Header\\\\Headers\\0headers\\\";a:3:{s:4:\\\"from\\\";a:1:{i:0;O:47:\\\"Symfony\\\\Component\\\\Mime\\\\Header\\\\MailboxListHeader\\\":5:{s:50:\\\"\\0Symfony\\\\Component\\\\Mime\\\\Header\\\\AbstractHeader\\0name\\\";s:4:\\\"From\\\";s:56:\\\"\\0Symfony\\\\Component\\\\Mime\\\\Header\\\\AbstractHeader\\0lineLength\\\";i:76;s:50:\\\"\\0Symfony\\\\Component\\\\Mime\\\\Header\\\\AbstractHeader\\0lang\\\";N;s:53:\\\"\\0Symfony\\\\Component\\\\Mime\\\\Header\\\\AbstractHeader\\0charset\\\";s:5:\\\"utf-8\\\";s:58:\\\"\\0Symfony\\\\Component\\\\Mime\\\\Header\\\\MailboxListHeader\\0addresses\\\";a:1:{i:0;O:30:\\\"Symfony\\\\Component\\\\Mime\\\\Address\\\":2:{s:39:\\\"\\0Symfony\\\\Component\\\\Mime\\\\Address\\0address\\\";s:21:\\\"cookerytour@gmail.com\\\";s:36:\\\"\\0Symfony\\\\Component\\\\Mime\\\\Address\\0name\\\";s:11:\\\"Cookery bot\\\";}}}}s:2:\\\"to\\\";a:1:{i:0;O:47:\\\"Symfony\\\\Component\\\\Mime\\\\Header\\\\MailboxListHeader\\\":5:{s:50:\\\"\\0Symfony\\\\Component\\\\Mime\\\\Header\\\\AbstractHeader\\0name\\\";s:2:\\\"To\\\";s:56:\\\"\\0Symfony\\\\Component\\\\Mime\\\\Header\\\\AbstractHeader\\0lineLength\\\";i:76;s:50:\\\"\\0Symfony\\\\Component\\\\Mime\\\\Header\\\\AbstractHeader\\0lang\\\";N;s:53:\\\"\\0Symfony\\\\Component\\\\Mime\\\\Header\\\\AbstractHeader\\0charset\\\";s:5:\\\"utf-8\\\";s:58:\\\"\\0Symfony\\\\Component\\\\Mime\\\\Header\\\\MailboxListHeader\\0addresses\\\";a:1:{i:0;O:30:\\\"Symfony\\\\Component\\\\Mime\\\\Address\\\":2:{s:39:\\\"\\0Symfony\\\\Component\\\\Mime\\\\Address\\0address\\\";s:26:\\\"maximefrancois92@gmail.com\\\";s:36:\\\"\\0Symfony\\\\Component\\\\Mime\\\\Address\\0name\\\";s:0:\\\"\\\";}}}}s:7:\\\"subject\\\";a:1:{i:0;O:48:\\\"Symfony\\\\Component\\\\Mime\\\\Header\\\\UnstructuredHeader\\\":5:{s:50:\\\"\\0Symfony\\\\Component\\\\Mime\\\\Header\\\\AbstractHeader\\0name\\\";s:7:\\\"Subject\\\";s:56:\\\"\\0Symfony\\\\Component\\\\Mime\\\\Header\\\\AbstractHeader\\0lineLength\\\";i:76;s:50:\\\"\\0Symfony\\\\Component\\\\Mime\\\\Header\\\\AbstractHeader\\0lang\\\";N;s:53:\\\"\\0Symfony\\\\Component\\\\Mime\\\\Header\\\\AbstractHeader\\0charset\\\";s:5:\\\"utf-8\\\";s:55:\\\"\\0Symfony\\\\Component\\\\Mime\\\\Header\\\\UnstructuredHeader\\0value\\\";s:25:\\\"Please Confirm your Email\\\";}}}s:49:\\\"\\0Symfony\\\\Component\\\\Mime\\\\Header\\\\Headers\\0lineLength\\\";i:76;}i:1;N;}}}s:61:\\\"\\0Symfony\\\\Component\\\\Mailer\\\\Messenger\\\\SendEmailMessage\\0envelope\\\";N;}}', '[]', 'default', '2023-01-18 14:16:16', '2023-01-18 14:16:16', NULL),
(3, 'O:36:\\\"Symfony\\\\Component\\\\Messenger\\\\Envelope\\\":2:{s:44:\\\"\\0Symfony\\\\Component\\\\Messenger\\\\Envelope\\0stamps\\\";a:1:{s:46:\\\"Symfony\\\\Component\\\\Messenger\\\\Stamp\\\\BusNameStamp\\\";a:1:{i:0;O:46:\\\"Symfony\\\\Component\\\\Messenger\\\\Stamp\\\\BusNameStamp\\\":1:{s:55:\\\"\\0Symfony\\\\Component\\\\Messenger\\\\Stamp\\\\BusNameStamp\\0busName\\\";s:21:\\\"messenger.bus.default\\\";}}}s:45:\\\"\\0Symfony\\\\Component\\\\Messenger\\\\Envelope\\0message\\\";O:51:\\\"Symfony\\\\Component\\\\Mailer\\\\Messenger\\\\SendEmailMessage\\\":2:{s:60:\\\"\\0Symfony\\\\Component\\\\Mailer\\\\Messenger\\\\SendEmailMessage\\0message\\\";O:39:\\\"Symfony\\\\Bridge\\\\Twig\\\\Mime\\\\TemplatedEmail\\\":4:{i:0;s:41:\\\"registration/confirmation_email.html.twig\\\";i:1;N;i:2;a:3:{s:9:\\\"signedUrl\\\";s:165:\\\"http://0.0.0.0:8080/verify/email?expires=1674140899&signature=ubvIpMP3YZN4EF5y8T7JbJZgavoO0wk1P8s1Yv%2FDIO8%3D&token=SnltdejcVu6kCLTbgYjKF1qR%2FWTVRnFiPJzAq9kmXkk%3D\\\";s:19:\\\"expiresAtMessageKey\\\";s:26:\\\"%count% hour|%count% hours\\\";s:20:\\\"expiresAtMessageData\\\";a:1:{s:7:\\\"%count%\\\";i:1;}}i:3;a:6:{i:0;N;i:1;N;i:2;N;i:3;N;i:4;a:0:{}i:5;a:2:{i:0;O:37:\\\"Symfony\\\\Component\\\\Mime\\\\Header\\\\Headers\\\":2:{s:46:\\\"\\0Symfony\\\\Component\\\\Mime\\\\Header\\\\Headers\\0headers\\\";a:3:{s:4:\\\"from\\\";a:1:{i:0;O:47:\\\"Symfony\\\\Component\\\\Mime\\\\Header\\\\MailboxListHeader\\\":5:{s:50:\\\"\\0Symfony\\\\Component\\\\Mime\\\\Header\\\\AbstractHeader\\0name\\\";s:4:\\\"From\\\";s:56:\\\"\\0Symfony\\\\Component\\\\Mime\\\\Header\\\\AbstractHeader\\0lineLength\\\";i:76;s:50:\\\"\\0Symfony\\\\Component\\\\Mime\\\\Header\\\\AbstractHeader\\0lang\\\";N;s:53:\\\"\\0Symfony\\\\Component\\\\Mime\\\\Header\\\\AbstractHeader\\0charset\\\";s:5:\\\"utf-8\\\";s:58:\\\"\\0Symfony\\\\Component\\\\Mime\\\\Header\\\\MailboxListHeader\\0addresses\\\";a:1:{i:0;O:30:\\\"Symfony\\\\Component\\\\Mime\\\\Address\\\":2:{s:39:\\\"\\0Symfony\\\\Component\\\\Mime\\\\Address\\0address\\\";s:21:\\\"cookerytour@gmail.com\\\";s:36:\\\"\\0Symfony\\\\Component\\\\Mime\\\\Address\\0name\\\";s:11:\\\"Cookery bot\\\";}}}}s:2:\\\"to\\\";a:1:{i:0;O:47:\\\"Symfony\\\\Component\\\\Mime\\\\Header\\\\MailboxListHeader\\\":5:{s:50:\\\"\\0Symfony\\\\Component\\\\Mime\\\\Header\\\\AbstractHeader\\0name\\\";s:2:\\\"To\\\";s:56:\\\"\\0Symfony\\\\Component\\\\Mime\\\\Header\\\\AbstractHeader\\0lineLength\\\";i:76;s:50:\\\"\\0Symfony\\\\Component\\\\Mime\\\\Header\\\\AbstractHeader\\0lang\\\";N;s:53:\\\"\\0Symfony\\\\Component\\\\Mime\\\\Header\\\\AbstractHeader\\0charset\\\";s:5:\\\"utf-8\\\";s:58:\\\"\\0Symfony\\\\Component\\\\Mime\\\\Header\\\\MailboxListHeader\\0addresses\\\";a:1:{i:0;O:30:\\\"Symfony\\\\Component\\\\Mime\\\\Address\\\":2:{s:39:\\\"\\0Symfony\\\\Component\\\\Mime\\\\Address\\0address\\\";s:26:\\\"maximefrancois92@gmail.com\\\";s:36:\\\"\\0Symfony\\\\Component\\\\Mime\\\\Address\\0name\\\";s:0:\\\"\\\";}}}}s:7:\\\"subject\\\";a:1:{i:0;O:48:\\\"Symfony\\\\Component\\\\Mime\\\\Header\\\\UnstructuredHeader\\\":5:{s:50:\\\"\\0Symfony\\\\Component\\\\Mime\\\\Header\\\\AbstractHeader\\0name\\\";s:7:\\\"Subject\\\";s:56:\\\"\\0Symfony\\\\Component\\\\Mime\\\\Header\\\\AbstractHeader\\0lineLength\\\";i:76;s:50:\\\"\\0Symfony\\\\Component\\\\Mime\\\\Header\\\\AbstractHeader\\0lang\\\";N;s:53:\\\"\\0Symfony\\\\Component\\\\Mime\\\\Header\\\\AbstractHeader\\0charset\\\";s:5:\\\"utf-8\\\";s:55:\\\"\\0Symfony\\\\Component\\\\Mime\\\\Header\\\\UnstructuredHeader\\0value\\\";s:25:\\\"Please Confirm your Email\\\";}}}s:49:\\\"\\0Symfony\\\\Component\\\\Mime\\\\Header\\\\Headers\\0lineLength\\\";i:76;}i:1;N;}}}s:61:\\\"\\0Symfony\\\\Component\\\\Mailer\\\\Messenger\\\\SendEmailMessage\\0envelope\\\";N;}}', '[]', 'default', '2023-01-19 14:08:19', '2023-01-19 14:08:19', NULL),
(4, 'O:36:\\\"Symfony\\\\Component\\\\Messenger\\\\Envelope\\\":2:{s:44:\\\"\\0Symfony\\\\Component\\\\Messenger\\\\Envelope\\0stamps\\\";a:1:{s:46:\\\"Symfony\\\\Component\\\\Messenger\\\\Stamp\\\\BusNameStamp\\\";a:1:{i:0;O:46:\\\"Symfony\\\\Component\\\\Messenger\\\\Stamp\\\\BusNameStamp\\\":1:{s:55:\\\"\\0Symfony\\\\Component\\\\Messenger\\\\Stamp\\\\BusNameStamp\\0busName\\\";s:21:\\\"messenger.bus.default\\\";}}}s:45:\\\"\\0Symfony\\\\Component\\\\Messenger\\\\Envelope\\0message\\\";O:51:\\\"Symfony\\\\Component\\\\Mailer\\\\Messenger\\\\SendEmailMessage\\\":2:{s:60:\\\"\\0Symfony\\\\Component\\\\Mailer\\\\Messenger\\\\SendEmailMessage\\0message\\\";O:39:\\\"Symfony\\\\Bridge\\\\Twig\\\\Mime\\\\TemplatedEmail\\\":4:{i:0;s:41:\\\"registration/confirmation_email.html.twig\\\";i:1;N;i:2;a:3:{s:9:\\\"signedUrl\\\";s:175:\\\"http://0.0.0.0:8080/verify/email?expires=1676373001&signature=N%2BJPPZ43MlMYazhI%2FcaIKvpzO37OWnyfPZkQeR4YZ7M%3D&token=D5AE3Rj%2B%2Br28ygqBQO4lAAM%2FcrgfCyNDmstO6ULw%2F%2Fc%3D\\\";s:19:\\\"expiresAtMessageKey\\\";s:26:\\\"%count% hour|%count% hours\\\";s:20:\\\"expiresAtMessageData\\\";a:1:{s:7:\\\"%count%\\\";i:1;}}i:3;a:6:{i:0;N;i:1;N;i:2;N;i:3;N;i:4;a:0:{}i:5;a:2:{i:0;O:37:\\\"Symfony\\\\Component\\\\Mime\\\\Header\\\\Headers\\\":2:{s:46:\\\"\\0Symfony\\\\Component\\\\Mime\\\\Header\\\\Headers\\0headers\\\";a:3:{s:4:\\\"from\\\";a:1:{i:0;O:47:\\\"Symfony\\\\Component\\\\Mime\\\\Header\\\\MailboxListHeader\\\":5:{s:50:\\\"\\0Symfony\\\\Component\\\\Mime\\\\Header\\\\AbstractHeader\\0name\\\";s:4:\\\"From\\\";s:56:\\\"\\0Symfony\\\\Component\\\\Mime\\\\Header\\\\AbstractHeader\\0lineLength\\\";i:76;s:50:\\\"\\0Symfony\\\\Component\\\\Mime\\\\Header\\\\AbstractHeader\\0lang\\\";N;s:53:\\\"\\0Symfony\\\\Component\\\\Mime\\\\Header\\\\AbstractHeader\\0charset\\\";s:5:\\\"utf-8\\\";s:58:\\\"\\0Symfony\\\\Component\\\\Mime\\\\Header\\\\MailboxListHeader\\0addresses\\\";a:1:{i:0;O:30:\\\"Symfony\\\\Component\\\\Mime\\\\Address\\\":2:{s:39:\\\"\\0Symfony\\\\Component\\\\Mime\\\\Address\\0address\\\";s:21:\\\"cookerytour@gmail.com\\\";s:36:\\\"\\0Symfony\\\\Component\\\\Mime\\\\Address\\0name\\\";s:11:\\\"Cookery bot\\\";}}}}s:2:\\\"to\\\";a:1:{i:0;O:47:\\\"Symfony\\\\Component\\\\Mime\\\\Header\\\\MailboxListHeader\\\":5:{s:50:\\\"\\0Symfony\\\\Component\\\\Mime\\\\Header\\\\AbstractHeader\\0name\\\";s:2:\\\"To\\\";s:56:\\\"\\0Symfony\\\\Component\\\\Mime\\\\Header\\\\AbstractHeader\\0lineLength\\\";i:76;s:50:\\\"\\0Symfony\\\\Component\\\\Mime\\\\Header\\\\AbstractHeader\\0lang\\\";N;s:53:\\\"\\0Symfony\\\\Component\\\\Mime\\\\Header\\\\AbstractHeader\\0charset\\\";s:5:\\\"utf-8\\\";s:58:\\\"\\0Symfony\\\\Component\\\\Mime\\\\Header\\\\MailboxListHeader\\0addresses\\\";a:1:{i:0;O:30:\\\"Symfony\\\\Component\\\\Mime\\\\Address\\\":2:{s:39:\\\"\\0Symfony\\\\Component\\\\Mime\\\\Address\\0address\\\";s:14:\\\"yolo@gmail.com\\\";s:36:\\\"\\0Symfony\\\\Component\\\\Mime\\\\Address\\0name\\\";s:0:\\\"\\\";}}}}s:7:\\\"subject\\\";a:1:{i:0;O:48:\\\"Symfony\\\\Component\\\\Mime\\\\Header\\\\UnstructuredHeader\\\":5:{s:50:\\\"\\0Symfony\\\\Component\\\\Mime\\\\Header\\\\AbstractHeader\\0name\\\";s:7:\\\"Subject\\\";s:56:\\\"\\0Symfony\\\\Component\\\\Mime\\\\Header\\\\AbstractHeader\\0lineLength\\\";i:76;s:50:\\\"\\0Symfony\\\\Component\\\\Mime\\\\Header\\\\AbstractHeader\\0lang\\\";N;s:53:\\\"\\0Symfony\\\\Component\\\\Mime\\\\Header\\\\AbstractHeader\\0charset\\\";s:5:\\\"utf-8\\\";s:55:\\\"\\0Symfony\\\\Component\\\\Mime\\\\Header\\\\UnstructuredHeader\\0value\\\";s:25:\\\"Please Confirm your Email\\\";}}}s:49:\\\"\\0Symfony\\\\Component\\\\Mime\\\\Header\\\\Headers\\0lineLength\\\";i:76;}i:1;N;}}}s:61:\\\"\\0Symfony\\\\Component\\\\Mailer\\\\Messenger\\\\SendEmailMessage\\0envelope\\\";N;}}', '[]', 'default', '2023-02-14 10:10:01', '2023-02-14 10:10:01', NULL),
(5, 'O:36:\\\"Symfony\\\\Component\\\\Messenger\\\\Envelope\\\":2:{s:44:\\\"\\0Symfony\\\\Component\\\\Messenger\\\\Envelope\\0stamps\\\";a:1:{s:46:\\\"Symfony\\\\Component\\\\Messenger\\\\Stamp\\\\BusNameStamp\\\";a:1:{i:0;O:46:\\\"Symfony\\\\Component\\\\Messenger\\\\Stamp\\\\BusNameStamp\\\":1:{s:55:\\\"\\0Symfony\\\\Component\\\\Messenger\\\\Stamp\\\\BusNameStamp\\0busName\\\";s:21:\\\"messenger.bus.default\\\";}}}s:45:\\\"\\0Symfony\\\\Component\\\\Messenger\\\\Envelope\\0message\\\";O:51:\\\"Symfony\\\\Component\\\\Mailer\\\\Messenger\\\\SendEmailMessage\\\":2:{s:60:\\\"\\0Symfony\\\\Component\\\\Mailer\\\\Messenger\\\\SendEmailMessage\\0message\\\";O:39:\\\"Symfony\\\\Bridge\\\\Twig\\\\Mime\\\\TemplatedEmail\\\":4:{i:0;s:30:\\\"reset_password/email.html.twig\\\";i:1;N;i:2;a:1:{s:10:\\\"resetToken\\\";O:58:\\\"SymfonyCasts\\\\Bundle\\\\ResetPassword\\\\Model\\\\ResetPasswordToken\\\":4:{s:65:\\\"\\0SymfonyCasts\\\\Bundle\\\\ResetPassword\\\\Model\\\\ResetPasswordToken\\0token\\\";s:40:\\\"rgRN5mFHk9znISELU8K12io5vXoIOot8kS2x5Zdx\\\";s:69:\\\"\\0SymfonyCasts\\\\Bundle\\\\ResetPassword\\\\Model\\\\ResetPasswordToken\\0expiresAt\\\";O:17:\\\"DateTimeImmutable\\\":3:{s:4:\\\"date\\\";s:26:\\\"2023-05-12 13:47:40.546353\\\";s:13:\\\"timezone_type\\\";i:3;s:8:\\\"timezone\\\";s:3:\\\"UTC\\\";}s:71:\\\"\\0SymfonyCasts\\\\Bundle\\\\ResetPassword\\\\Model\\\\ResetPasswordToken\\0generatedAt\\\";i:1683895660;s:73:\\\"\\0SymfonyCasts\\\\Bundle\\\\ResetPassword\\\\Model\\\\ResetPasswordToken\\0transInterval\\\";i:1;}}i:3;a:6:{i:0;N;i:1;N;i:2;N;i:3;N;i:4;a:0:{}i:5;a:2:{i:0;O:37:\\\"Symfony\\\\Component\\\\Mime\\\\Header\\\\Headers\\\":2:{s:46:\\\"\\0Symfony\\\\Component\\\\Mime\\\\Header\\\\Headers\\0headers\\\";a:3:{s:4:\\\"from\\\";a:1:{i:0;O:47:\\\"Symfony\\\\Component\\\\Mime\\\\Header\\\\MailboxListHeader\\\":5:{s:50:\\\"\\0Symfony\\\\Component\\\\Mime\\\\Header\\\\AbstractHeader\\0name\\\";s:4:\\\"From\\\";s:56:\\\"\\0Symfony\\\\Component\\\\Mime\\\\Header\\\\AbstractHeader\\0lineLength\\\";i:76;s:50:\\\"\\0Symfony\\\\Component\\\\Mime\\\\Header\\\\AbstractHeader\\0lang\\\";N;s:53:\\\"\\0Symfony\\\\Component\\\\Mime\\\\Header\\\\AbstractHeader\\0charset\\\";s:5:\\\"utf-8\\\";s:58:\\\"\\0Symfony\\\\Component\\\\Mime\\\\Header\\\\MailboxListHeader\\0addresses\\\";a:1:{i:0;O:30:\\\"Symfony\\\\Component\\\\Mime\\\\Address\\\":2:{s:39:\\\"\\0Symfony\\\\Component\\\\Mime\\\\Address\\0address\\\";s:21:\\\"cookerytour@gmail.com\\\";s:36:\\\"\\0Symfony\\\\Component\\\\Mime\\\\Address\\0name\\\";s:11:\\\"cookery bot\\\";}}}}s:2:\\\"to\\\";a:1:{i:0;O:47:\\\"Symfony\\\\Component\\\\Mime\\\\Header\\\\MailboxListHeader\\\":5:{s:50:\\\"\\0Symfony\\\\Component\\\\Mime\\\\Header\\\\AbstractHeader\\0name\\\";s:2:\\\"To\\\";s:56:\\\"\\0Symfony\\\\Component\\\\Mime\\\\Header\\\\AbstractHeader\\0lineLength\\\";i:76;s:50:\\\"\\0Symfony\\\\Component\\\\Mime\\\\Header\\\\AbstractHeader\\0lang\\\";N;s:53:\\\"\\0Symfony\\\\Component\\\\Mime\\\\Header\\\\AbstractHeader\\0charset\\\";s:5:\\\"utf-8\\\";s:58:\\\"\\0Symfony\\\\Component\\\\Mime\\\\Header\\\\MailboxListHeader\\0addresses\\\";a:1:{i:0;O:30:\\\"Symfony\\\\Component\\\\Mime\\\\Address\\\":2:{s:39:\\\"\\0Symfony\\\\Component\\\\Mime\\\\Address\\0address\\\";s:26:\\\"maximefrancois92@gmail.com\\\";s:36:\\\"\\0Symfony\\\\Component\\\\Mime\\\\Address\\0name\\\";s:0:\\\"\\\";}}}}s:7:\\\"subject\\\";a:1:{i:0;O:48:\\\"Symfony\\\\Component\\\\Mime\\\\Header\\\\UnstructuredHeader\\\":5:{s:50:\\\"\\0Symfony\\\\Component\\\\Mime\\\\Header\\\\AbstractHeader\\0name\\\";s:7:\\\"Subject\\\";s:56:\\\"\\0Symfony\\\\Component\\\\Mime\\\\Header\\\\AbstractHeader\\0lineLength\\\";i:76;s:50:\\\"\\0Symfony\\\\Component\\\\Mime\\\\Header\\\\AbstractHeader\\0lang\\\";N;s:53:\\\"\\0Symfony\\\\Component\\\\Mime\\\\Header\\\\AbstractHeader\\0charset\\\";s:5:\\\"utf-8\\\";s:55:\\\"\\0Symfony\\\\Component\\\\Mime\\\\Header\\\\UnstructuredHeader\\0value\\\";s:27:\\\"Your password reset request\\\";}}}s:49:\\\"\\0Symfony\\\\Component\\\\Mime\\\\Header\\\\Headers\\0lineLength\\\";i:76;}i:1;N;}}}s:61:\\\"\\0Symfony\\\\Component\\\\Mailer\\\\Messenger\\\\SendEmailMessage\\0envelope\\\";N;}}', '[]', 'default', '2023-05-12 12:47:40', '2023-05-12 12:47:40', NULL);

-- --------------------------------------------------------

--
-- Structure de la table `recipe`
--

CREATE TABLE `recipe` (
  `id` int(11) NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `cooking_time` int(11) NOT NULL,
  `region_id` int(11) NOT NULL,
  `category_id` int(11) NOT NULL,
  `likes2` int(11) DEFAULT NULL,
  `user_id` int(11) NOT NULL,
  `image_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL COMMENT '(DC2Type:datetime_immutable)',
  `description` longtext COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `recipe`
--

INSERT INTO `recipe` (`id`, `name`, `cooking_time`, `region_id`, `category_id`, `likes2`, `user_id`, `image_name`, `updated_at`, `description`) VALUES
(147, 'sandwich jambon beurre', 7, 223, 62, 1, 4, '323569-64105a951c4bc324532870.jpeg', '2023-03-14 11:29:25', 'couper le jamboncouper le painbeurrer le pain assembler le sandwich'),
(148, 'Tartiflette', 120, 217, 62, 1, 4, 'telechargement-63efa188d0797970636986-641437e903c00441424857.jpeg', '2023-02-17 15:47:20', 'Épluchez et découpez les pommes de terre en morceaux.Découpez les oignons en rondelles.Dans une poêle, faites revenir 3 minutes les lardons avec les oignons afin qu’ils commencent à dorer.Ajoutez les pommes de terre et laisser  cuire à feu moyen durant 20 minutes.Préchauffez votre four à 200 °C – Thermostat 6-7.Déglacez au vin blanc et laisser cuire 5  minutes.Poivrez (pas besoin de saler avec les lardons), et ajoutez la noix de muscade selon vos goûts.Découpez votre Reblochon en deux dans le sens de l’épaisseur en conservant la croûte. Conservez une face pour mettre sur le dessus du plat afin de faire gratiner (que vous découperez en 2 ou 4 selon la forme de votre plat), et découpez l’autre face en petits morceaux à intégrer dans la préparation pommes de terre – lardons – oignons.Dans un plat allant au four, disposez le mélange pommes de terre-lardons-oignons et les morceaux de reblochon puis déposez sur le dessus le ½ reblochon pour gratiner, croûte vers le haut.Placez au four durant 15 à 20 minutes afin que le Reblochon dore.Servez chaud avec une salade verte.Et voila votre tartiflette maison est terminée !'),
(149, 'Aligot saucisse', 64, 217, 62, 1, 4, 'aligot-saucisse-specialite-culinaire-aubrac-aveyron-cantal-selection-du-gout-6443ee2373b54371429440.jpeg', '2023-04-18 14:53:02', 'Étape 1\r\n\r\nFaites chauffer l\'aligot selon les indications du paquet. Versez-le dans une casserole, chauffez à feu moyen en remuant avec une spatule pendant quelques minutes. Étirez ensuite l\'aligot plusieurs fois. (Vous pouvez aussi le réchauffer au micro-ondes).\r\n\r\nSaucisse de Toulouse\r\nÉtape 2\r\n\r\nPendant ce temps, déposez une noisette de beurre dans une poêle bien chaude et ajoutez les saucisses. Piquez-les et faites-les cuire 5 minutes de chaque côté à feu moyen.\r\n\r\nSalade (Mélange)\r\nÉtape 3\r\n\r\nServez l\'aligot avec la saucisse. Ajoutez une poignée de salade par assiette et assaisonnez avec la vinaigrette de votre choix. C\'est prêt !'),
(150, 'Galette bretonne complète', 15, 219, 62, 1, 4, '601a750bb1d9cae57b795c54-galette-sarrasin-complete-6443ee6a98f38439357713.jpeg', NULL, 'ÉTAPE 1\r\nHacher le jambon.\r\n\r\nÉTAPE 2 Malaxer la farine avec l\'huile, l\'oeuf et le sel puis verser l\'eau petit à petit.\r\nLa pâte doit être fluide\r\n\r\n.ÉTAPE 3 Laisser reposer 1 heure puis les cuire dans une poêle bien chaude légèrement graissée\r\n\r\n.ÉTAPE 4 Retourner la crêpe et casser un oeuf dessus.\r\nAjouter l\'équivalent d\'1/2 tranche de jambon et 10 g de gruyère.ÉTAPE 5Lorsque le blanc d\'oeuf est cuit, repliez les côtés de la crêpes vers le centre. Saler, poivrer et servir.'),
(151, 'Lentilles saucisse de morteau', 120, 218, 62, 1, 4, 'i113803-lentilles-a-la-saucisse-de-morteau-6446987e217ce570257471.webp', NULL, 'ÉTAPE 1 oignon huile d\'olive Coupez l\'oignon et faites-le blondir dans de l\'huile d\'olive.  ÉTAPE 2 carotte Ajoutez la carotte coupée en petits bouts et faites les revenir 1 ou 2 mn.  ÉTAPE 3 lentilles vertes Ajouter au moins 1 litre d\'eau et les lentilles : ne pas en mettre de trop au début il vaut mieux en remettre pendant la cuisson.  ÉTAPE 4 Laissez cuire à feu doux voire très doux: il ne doit y avoir des toutes petites bulles.  ÉTAPE 5 Ajouter du gros sel, du poivre, des baies rouges, un peu de noix muscade et bien sûr du thym et du laurier (1 feuille).  ÉTAPE 6 saucisse de morteau lentilles vertes Pour donner du bon goût faites cuire les saucisses de Morteau dans les lentilles (et non à part) pendant environ 1/2 h. Les enlever une fois leur cuisson finie et laisser cuire les lentilles seules.  ÉTAPE 7 saucisse de morteau lentilles vertes En fin de cuisson remettez les saucisses dans les lentilles pour les réchauffer et ajouter une cuillère de moutarde.  ÉTAPE 8 lentilles vertes S\'il vous en reste après un repas vous pourrez transformer ces lentilles en soupe de lentilles (meilleure avec des lentilles déjà précuites).'),
(152, 'choucroute', 120, 221, 62, 0, 4, '45-644b95a0268c3673596879.webp', NULL, 'ÉTAPE 1\r\nchoucroute\r\nRincer la choucroute sous l’eau froide, l’égoutter, puis en verser la moitié dans un faitout.\r\n\r\nÉTAPE 2\r\nlard fumé\r\npalette\r\nIncorporer ensuite le lard fumé et la palette, puis les recouvrir du reste de choucroute.\r\n\r\nÉTAPE 3\r\nsaindoux\r\nail\r\ngenièvre\r\nfeuille de laurier\r\noignon\r\nAjouter le saindoux, les gousses d\'ail non pelées, le genièvre, le bouquet garni et l\'oignon piqué.\r\n\r\nÉTAPE 4\r\nriesling\r\nArroser le tout de vin blanc et laisser cuire à couvert à feu doux pendant 1 heure.\r\n\r\nÉTAPE 5\r\npomme de terre\r\nAjouter les pommes de terre et poursuivre la cuisson pendant 50 minutes.\r\n\r\nÉTAPE 6\r\nsaucisse\r\nIncorporer les saucisses, poursuivre la cuisson encore 10 minutes puis servir.'),
(156, 'Tarte tatin', 40, 220, 63, NULL, 4, '117779-w1024h1024c1cx1060cy707-6458c1e03f5fe129215424.jpeg', NULL, 'ÉTAPE 1\r\nbeurre\r\nsucre\r\nPréparer le caramel : Déposer le beurre en dés dans une casserole, puis verser par dessus le sucre. Laisser cuire à feu doux pendant 5 min sans mélanger, le caramel se fait tout seul.\r\n\r\nÉTAPE 2\r\nDéposer la caramel sur le fond d\'un plat à tarte.\r\n\r\nÉTAPE 3\r\npomme\r\npâte brisée\r\nAjouter les pommes coupés en gros dés, puis recouvrir de la pâte brisée.\r\n\r\nÉTAPE 4\r\nEnfourner pendant 25 min au four à 210°C (thermostat 7).\r\n\r\nÉTAPE 5\r\nServir tiède avec une boule de glace vanille.'),
(157, 'Carbonade', 220, 222, 62, NULL, 4, 'carbonnade-bh-mars-6458c34a973aa876973758.jpeg', NULL, 'ÉTAPE 1\r\nboeuf\r\noignon\r\nlard fumé\r\nCouper la viande en cubes de 2 à 3 centimètres de côté. Découper grossièrement les oignons et couper le lard en gros lardons.\r\n\r\nÉTAPE 2\r\nbeurre\r\nFaire fondre le beurre et faire suer les oignons dedans 10 minutes pour les ramollir (feu au mini à couvert).\r\n\r\nÉTAPE 3\r\nAjouter le lard en augmentant légèrement le feu, remuer régulièrement en essayant de garder couvert le plus possible.\r\n\r\nÉTAPE 4\r\nUne fois le lard bien rose, retirer le tout (sauf le jus) et le réserver dans un plat.\r\n\r\nÉTAPE 5\r\nMettre le feu au maxi et mettre la viande dans la cocotte. Remuer régulièrement (ne pas couvrir), la viande doit se colorer de tous les côtés, elle va finir par rendre pas mal de jus. Retirer la cocotte du feu, mettre la viande dans un plat en conservant le jus dans la cocotte.\r\n\r\nÉTAPE 6\r\ncassonade\r\nDiluer la cassonade dans le jus de viande et mettre sur le feu à fond pour le réduire de moitié.\r\n\r\nÉTAPE 7\r\nbouquet garni\r\nbière brune\r\nsel\r\nUne fois réduit, mettre le feu au mini et remettre le mélange lard-oignons en le mêlant au \'sirop\', ajouter la viande et re-mélanger, ajouter le bouquet garni et recouvrir de bière entre (80 cl et 1 litre), saler très légèrement.\r\n\r\nÉTAPE 8\r\npain d\'épices\r\nmoutarde\r\nRecouvrir délicatement toute la surface avec le pain d\'épices \'moutardé\'. Laisser mijoter à couvert 3 heures sans remuer, tant que le pain d\'épices n\'est pas fondu (retirer le bouquet après 1 heure ou 2 maxi).\r\n\r\nÉTAPE 9\r\nEn cours de \'mijotage\', rectifier l\'assaisonnement si besoin.\r\n\r\nÉTAPE 10\r\nSi après trois heures, le jus est encore trop liquide, laisser encore mijoter en laissant le couvercle en partie ouvert, la sauce doit être légèrement collante en surface mais bien liquide en dessous et ne doit surtout pas brûler au fond.'),
(158, 'Tarte au camembert', 50, 224, 61, NULL, 4, '800-6458c3f7403e9747263578.', NULL, 'ÉTAPE 1\r\nPréchauffez le four à th 7 (210°C).\r\n\r\nÉTAPE 2\r\npâte brisée\r\nPlacer la pâte brisée étalée au fond d\'un moule à tarte.\r\n\r\nÉTAPE 3\r\nPrendre le camenbert et gratter doucement la croûte. Couper le fromage en morceaux et les répartir sur la tarte.\r\n\r\nÉTAPE 4\r\noeuf\r\ncrème fraîche\r\nMélanger les oeufs, la crème fraîche et assaisonner.\r\n\r\nÉTAPE 5\r\nMettre le mélange sur la tarte et cuire au four pendant 40 min.'),
(159, 'Cannelés bordelais', 90, 225, 63, NULL, 4, '54684-w1000h1500c1cx2000cy3000-6458c5204cd4a540122209.webp', NULL, 'ÉTAPE 1\r\nlait\r\nvanille\r\nbeurre\r\nFaire bouillir le lait avec la gousse de vanille préalablement fendue et égrainée et le beurre.\r\n\r\nÉTAPE 2\r\nfarine\r\nsucre\r\nPendant ce temps, mélanger la farine et le sucre dans un saladier\r\n\r\nÉTAPE 3\r\noeuf\r\npuis incorporer les oeufs d\'un seul coup\r\n\r\nÉTAPE 4\r\net verser ensuite le lait bouillant.\r\n\r\nÉTAPE 5\r\nMélanger doucement afin d\'obtenir une pâte fluide comme une pâte à crêpes. Laisser refroidir.\r\n\r\nÉTAPE 6\r\nrhum\r\nPuis ajouter le rhum\r\n\r\nÉTAPE 7\r\nAvant de placer au réfrigérateur et de laisser reposer une heure.\r\n\r\nÉTAPE 8\r\nbeurre\r\nPréchauffer le four à 240°C (thermostat 8) avec la tôle sur laquelle cuiront les canelés [si vous utilisez un moule en silicone, mettez le four à maximum 220°C (thermostat 6-7)]. Verser la pâte bien refroidie dans les moules bien beurrés, en ne les remplissant qu\'à moitié.\r\n\r\nÉTAPE 9\r\nrapidement, disposer les canelés sur la tôle du four préchauffé, à 240°C, pendant 12 minutes (20 minutes à 220°C avec un moule en silicone), puis baisser la température à 180°C (thermostat 6) et continuer la cuisson pendant 1 heure : le cannelé doit avoir une croûte brune et un intérieur bien moelleux.\r\n\r\nÉTAPE 10\r\nDémouler encore chaud.\r\n\r\nÉTAPE 11\r\nDéguster !'),
(160, 'Brandade de nimes', 20, 226, 61, 0, 4, '60813ba2c45818625741bfdcd2fd8a15309200cf55801-6458c5ed8ef7e778698129.jpeg', NULL, '1\r\nLa veille de la préparation, placez la morue dans un récipient et couvrez-la d\'eau froide. Pendant les 24h à venir, changez l\'eau au moins 4 fois et notamment avant la nuit, en plaçant cette fois le récipient au réfrigérateur.\r\n2\r\nLe lendemain, rincez soigneusement la morue, déposez-la dans une marmite et couvrez d\'eau froide. Portez à ébullition et laissez cuire le poisson pendant 5mn.\r\n3\r\nÉgouttez la morue, enlevez sa peau et toutes les arrêtes. Émiettez-la ensuite dans le récipient du blender, versez le lait et 5cl d\'huile, commencez à mixer puis incorporez le reste de l\'huile petit à petit, sans cesser de mixer, jusqu\'à obtenir une texture presque lisse. Servir aussitôt ou réserver au réfrigérateur jusqu\'au service.'),
(161, 'Chapon aux morilles', 210, 227, 62, NULL, 4, 'i89546-chapon-aux-morilles-6458c6b3b6ae8588339658.webp', NULL, '1\r\nPréchauffez le four th.7 (210 °C).\r\n2\r\nDiluez les morilles dans un verre de vin de porto mélangé avec un verre d\'eau chaude.\r\n3\r\nLe jus de morilles et porto va vous servir pour la cuisson, vous devez donc le récupérer. Égouttez les morilles et versez leur jus dans un plat allant au four.\r\n4\r\nPrenez les morilles, divisez en deux, réservez une moitié, puis introduisez l’autre moitié à l\'intérieur du chapon, ajoutez quelques feuilles de persil et ficelez le chapon.\r\n5\r\nEnduisez-le chapon farci de morilles et persil de beurre à l’aide d’un pinceau. Ajoutez un grand verre d’eau dans le fond du plat puis mettez-le au four sur une grille à mi-hauteur. Faites-le mijoter durant 3 h environ.\r\n6\r\nMême si le chapon est gras, arrosez-le souvent avec son jus de cuisson. Prélevez un bol de jus de cuisson.\r\n7\r\nPendant ce temps, écrasez la moitié des morilles restantes et pelez les échalotes.\r\n8\r\nDans une casserole, faites revenir les échalotes et les morilles dans du beurre puis incorporez le jus de cuisson du chapon.\r\n9\r\nCouvrez et laissez mijoter pendant 5 min. Avec le vin jaune, déglacez la cuisson de chapon. Placez dans la casserole le jus obtenu puis faites réduire.\r\n10\r\nPour une sauce plus onctueuse et plus lisse, ajoutez de la fécule de maïs et fouettez rapidement.\r\n11\r\nLorsque le chapon est cuit, sortez-le du four. Coupez-le en gros morceaux. Disposez un morceau par assiette, accompagné-le de morilles et nappez de sauce. Servez bien chaud !\r\n12\r\nVous pouvez accompagner le chapon aux morilles de tagliatelles fraîches par exemple.'),
(162, 'Salade niçoise', 28, 217, 61, NULL, 4, '94687-w1024h1024c1cx3008cy2008-6458c739456d3585742872.webp', NULL, 'ÉTAPE 1\r\nPour réaliser la salade niçoise, il suffit de rassembler tous les ingrédients, puis de procéder de la manière suivante...\r\n\r\nÉTAPE 2\r\noeuf\r\nFaire durcir les oeufs (6 à 8 minutes après ébullition de l\'eau), puis les faire bien refroidir à l\'eau froide.\r\n\r\nÉTAPE 3\r\nHacher les cébettes et les disposer au fond du plat.\r\n\r\nÉTAPE 4\r\nfévette\r\npoivron vert\r\nradis\r\nthon\r\nsel\r\npoivre\r\nAjouter les févettes, le poivron vert finement coupé, les radis coupés en rondelles et le thon bien égouté et émietté. Mélanger grossièrement tous ces ingrédients avec du sel et du poivre.\r\n\r\nÉTAPE 5\r\ntomate\r\nartichaut violet\r\noeuf\r\nanchois\r\nolives noires\r\nbasilic\r\nsel\r\nCouper les tomates en fines rondelles et les ajouter ainsi que les artichauts Couper les oeufs durs en quartiers et les disposer sur le dessus et ajouter les filets d\'anchois, les olives noires et le basilic finement ciselé.\r\n\r\nÉTAPE 6\r\nsel\r\npoivre\r\nhuile d\'olive\r\nvinaigre de vin\r\nEnfin, saupoudrer de sel et de poivre, puis arroser d\'huile d\'olive et de vinaigre de vin.\r\n\r\nÉTAPE 7\r\nMettre au frais 1 heure et bien mélanger la salade juste avant de la servir.'),
(163, 'Poulet basquaise', 80, 225, 62, NULL, 4, '7224-w1000h1500c1cx1972cy3850cxb3840cyb5760-645ecc1f98cc9910976748.webp', NULL, 'ÉTAPE 1\r\noignon\r\nail\r\ntomate\r\npoivron\r\nHacher l\'oignon et l\'ail. Couper les tomates en morceaux et détailler les poivrons en lanières.\r\n\r\nÉTAPE 2\r\nhuile d\'olive\r\noignon\r\nail\r\npoivron\r\nFaire chauffer 4 cuillères à soupe d\'huile dans une cocotte. Y faire dorer les oignons, l\'ail et les poivron. Laisser cuire 5 min.\r\n\r\nÉTAPE 3\r\ntomate\r\npoivre\r\nAjouter les tomates à la cocotte, saler, poivrer. Couvrir et laisser mijoter 20 min.\r\n\r\nÉTAPE 4\r\nhuile d\'olive\r\npoulet\r\nDans une sauteuse, faire dorer dans l\'huile d\'olive les morceaux de poulet salés et poivrés.\r\n\r\nÉTAPE 5\r\nbouquet garni\r\nvin blanc\r\nLorsqu\'ils sont dorés, les ajouter aux légumes, couvrir, ajouter le bouquet garni et le vin blanc et c\'est parti pour 35 min de cuisson.'),
(164, 'Quiche lorraine', 55, 221, 62, NULL, 4, '28118-w1000h1500c1cx845cy3505cxb3451cyb5177-645ed27ad84ff954636893.webp', NULL, 'ÉTAPE 1\r\npâte brisée\r\nPréchauffer le four à 180°C (thermostat 6). Etaler la pâte dans un moule,\r\n\r\nÉTAPE 2\r\nbeurre\r\nla piquer à la fourchette. Parsemer de copeaux de beurre.\r\n\r\nÉTAPE 3\r\nlardons\r\nFaire rissoler les lardons à la poêle puis les éponger avec une feuille d\'essuie-tout.\r\n\r\nÉTAPE 4\r\noeuf\r\ncrème\r\nlait\r\nBattre les oeufs, la crème fraîche et le lait.\r\n\r\nÉTAPE 5\r\nAjouter les lardons.\r\n\r\nÉTAPE 6\r\nsel\r\npoivre\r\nmuscade\r\nAssaisonner de sel, de poivre et de muscade.\r\n\r\nÉTAPE 7\r\nVerser sur la pâte.\r\n\r\nÉTAPE 8\r\nCuire 45 à 50 min.\r\n\r\nÉTAPE 9\r\nC\'est prêt\r\n\r\nÉTAPE 10\r\nDéguster'),
(165, 'Rougets à la Bonifacienne', 45, 229, 62, NULL, 4, 'poisson-rouget-bonifacienne-647a72bb855fe617494736.jpeg', NULL, 'Nettoyer les rougets puis les écailler et les vider. Pour écailler un poisson il suffit de frotter le poisson avec le dos d\'un couteau dans le sens inverse des écailles. Le rouget est fragile, il faut le frotter délicatement.\r\nPasser au mixeur les filets d\'anchois, les gousses d\'ail épluchées et écrasées, un peu d\'huile d\'olive, le coulis de tomates, un peu de persil.\r\nMixer la préparation et ajuster en sel et poivre.\r\nHuiler un plat allant au four.\r\nÉtaler la farce préalablement mixée dans le fond du plat.\r\nPoser délicatement les rougets sur cette préparation.\r\nNapper les rougets de chapelure et enfourner le plat durant 30 minutes à thermostat 7 (environ 210 c°).');

-- --------------------------------------------------------

--
-- Structure de la table `recipe_ingredient`
--

CREATE TABLE `recipe_ingredient` (
  `recipe_id` int(11) NOT NULL,
  `ingredient_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `recipe_ingredient`
--

INSERT INTO `recipe_ingredient` (`recipe_id`, `ingredient_id`) VALUES
(147, 206),
(147, 207),
(147, 212),
(148, 203),
(148, 204),
(148, 208),
(149, 212),
(149, 213),
(149, 215),
(149, 216),
(149, 220),
(150, 201),
(151, 202),
(151, 205),
(151, 208),
(151, 211),
(151, 213),
(151, 214),
(152, 202),
(152, 205),
(152, 208),
(156, 200),
(157, 208),
(157, 212),
(157, 225),
(157, 230),
(158, 220),
(158, 228),
(159, 212),
(159, 221),
(159, 222),
(161, 212),
(162, 211),
(162, 228),
(164, 219),
(164, 222),
(164, 223),
(164, 232),
(165, 209),
(165, 210),
(165, 211),
(165, 228),
(165, 231),
(165, 247),
(165, 248),
(165, 249),
(165, 250);

-- --------------------------------------------------------

--
-- Structure de la table `region`
--

CREATE TABLE `region` (
  `id` int(11) NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `region`
--

INSERT INTO `region` (`id`, `name`) VALUES
(217, 'Auvergne-Rhône-Alpes'),
(218, 'Bourgogne-Franche-Comté'),
(219, 'Bretagne'),
(220, 'Centre-Val de Loire'),
(221, 'Grand Est'),
(222, 'Hauts-de-France'),
(223, 'Ile-de-France'),
(224, 'Normandie'),
(225, 'Nouvelle-Aquitaine'),
(226, 'Occitanie'),
(227, 'Pays de la Loire'),
(228, 'Provence-Alpes-Côte d’Azur'),
(229, 'Corse');

-- --------------------------------------------------------

--
-- Structure de la table `reset_password_request`
--

CREATE TABLE `reset_password_request` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `selector` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `hashed_token` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `requested_at` datetime NOT NULL COMMENT '(DC2Type:datetime_immutable)',
  `expires_at` datetime NOT NULL COMMENT '(DC2Type:datetime_immutable)'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `reset_password_request`
--

INSERT INTO `reset_password_request` (`id`, `user_id`, `selector`, `hashed_token`, `requested_at`, `expires_at`) VALUES
(1, 4, 'rgRN5mFHk9znISELU8K1', 'Ex+cp4+r36CXfTDmNPyZXmCTg1Ed/RDc61dCXPb3gqE=', '2023-05-12 12:47:40', '2023-05-12 13:47:40');

-- --------------------------------------------------------

--
-- Structure de la table `user`
--

CREATE TABLE `user` (
  `id` int(11) NOT NULL,
  `username` varchar(180) COLLATE utf8mb4_unicode_ci NOT NULL,
  `roles` json NOT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `is_verified` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `user`
--

INSERT INTO `user` (`id`, `username`, `roles`, `password`, `email`, `is_verified`) VALUES
(4, 'mass', '[\"ROLE_ADMIN\"]', '$2y$13$AM/t9l7hNhXX15sejvJHZOc7vwC2w40z.jBX3XMCleSK1D5399MOC', 'maximefrancois92@gmail.com', 0),
(5, 'toto', '[]', '$2y$13$AM/t9l7hNhXX15sejvJHZOc7vwC2w40z.jBX3XMCleSK1D5399MOC', 'toto@gmail.com', 1),
(6, 'yoloman', '[]', '$2y$13$JF9JppOl9b9jXCm6VD83desDLK7Jwv7HL4A2csAInclJT3e/jSI6e', 'yolo@gmail.com', 0);

-- --------------------------------------------------------

--
-- Structure de la table `user_recipe`
--

CREATE TABLE `user_recipe` (
  `user_id` int(11) NOT NULL,
  `recipe_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `user_recipe`
--

INSERT INTO `user_recipe` (`user_id`, `recipe_id`) VALUES
(4, 149),
(4, 150),
(4, 151),
(6, 147),
(6, 148);

--
-- Index pour les tables déchargées
--

--
-- Index pour la table `category`
--
ALTER TABLE `category`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `doctrine_migration_versions`
--
ALTER TABLE `doctrine_migration_versions`
  ADD PRIMARY KEY (`version`);

--
-- Index pour la table `ingredient`
--
ALTER TABLE `ingredient`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `messenger_messages`
--
ALTER TABLE `messenger_messages`
  ADD PRIMARY KEY (`id`),
  ADD KEY `IDX_75EA56E0FB7336F0` (`queue_name`),
  ADD KEY `IDX_75EA56E0E3BD61CE` (`available_at`),
  ADD KEY `IDX_75EA56E016BA31DB` (`delivered_at`);

--
-- Index pour la table `recipe`
--
ALTER TABLE `recipe`
  ADD PRIMARY KEY (`id`),
  ADD KEY `IDX_DA88B13798260155` (`region_id`),
  ADD KEY `IDX_DA88B13712469DE2` (`category_id`);

--
-- Index pour la table `recipe_ingredient`
--
ALTER TABLE `recipe_ingredient`
  ADD PRIMARY KEY (`recipe_id`,`ingredient_id`),
  ADD KEY `IDX_22D1FE1359D8A214` (`recipe_id`),
  ADD KEY `IDX_22D1FE13933FE08C` (`ingredient_id`);

--
-- Index pour la table `region`
--
ALTER TABLE `region`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `reset_password_request`
--
ALTER TABLE `reset_password_request`
  ADD PRIMARY KEY (`id`),
  ADD KEY `IDX_7CE748AA76ED395` (`user_id`);

--
-- Index pour la table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `UNIQ_8D93D649F85E0677` (`username`);

--
-- Index pour la table `user_recipe`
--
ALTER TABLE `user_recipe`
  ADD PRIMARY KEY (`user_id`,`recipe_id`),
  ADD KEY `IDX_BFDAAA0AA76ED395` (`user_id`),
  ADD KEY `IDX_BFDAAA0A59D8A214` (`recipe_id`);

--
-- AUTO_INCREMENT pour les tables déchargées
--

--
-- AUTO_INCREMENT pour la table `category`
--
ALTER TABLE `category`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=64;

--
-- AUTO_INCREMENT pour la table `ingredient`
--
ALTER TABLE `ingredient`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=251;

--
-- AUTO_INCREMENT pour la table `messenger_messages`
--
ALTER TABLE `messenger_messages`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT pour la table `recipe`
--
ALTER TABLE `recipe`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=166;

--
-- AUTO_INCREMENT pour la table `region`
--
ALTER TABLE `region`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=230;

--
-- AUTO_INCREMENT pour la table `reset_password_request`
--
ALTER TABLE `reset_password_request`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT pour la table `user`
--
ALTER TABLE `user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- Contraintes pour les tables déchargées
--

--
-- Contraintes pour la table `recipe`
--
ALTER TABLE `recipe`
  ADD CONSTRAINT `FK_DA88B13712469DE2` FOREIGN KEY (`category_id`) REFERENCES `category` (`id`),
  ADD CONSTRAINT `FK_DA88B13798260155` FOREIGN KEY (`region_id`) REFERENCES `region` (`id`);

--
-- Contraintes pour la table `recipe_ingredient`
--
ALTER TABLE `recipe_ingredient`
  ADD CONSTRAINT `FK_22D1FE1359D8A214` FOREIGN KEY (`recipe_id`) REFERENCES `recipe` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `FK_22D1FE13933FE08C` FOREIGN KEY (`ingredient_id`) REFERENCES `ingredient` (`id`) ON DELETE CASCADE;

--
-- Contraintes pour la table `reset_password_request`
--
ALTER TABLE `reset_password_request`
  ADD CONSTRAINT `FK_7CE748AA76ED395` FOREIGN KEY (`user_id`) REFERENCES `user` (`id`);

--
-- Contraintes pour la table `user_recipe`
--
ALTER TABLE `user_recipe`
  ADD CONSTRAINT `FK_BFDAAA0A59D8A214` FOREIGN KEY (`recipe_id`) REFERENCES `recipe` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `FK_BFDAAA0AA76ED395` FOREIGN KEY (`user_id`) REFERENCES `user` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
