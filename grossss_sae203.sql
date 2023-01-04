-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Hôte : 127.0.0.1
-- Généré le : jeu. 19 mai 2022 à 16:04
-- Version du serveur : 10.4.22-MariaDB
-- Version de PHP : 8.1.1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données : `grossss_sae203`
--

-- --------------------------------------------------------

--
-- Structure de la table `casque`
--

CREATE TABLE `casque` (
  `id_casque` bigint(20) UNSIGNED NOT NULL,
  `nom_casque` varchar(50) NOT NULL,
  `prix_casque` decimal(5,2) NOT NULL,
  `soustitre_casque` text NOT NULL,
  `description_casque` text NOT NULL,
  `reductionbruit_casque` tinyint(1) NOT NULL,
  `sansfil_casque` tinyint(1) NOT NULL,
  `controlevolume_casque` tinyint(1) NOT NULL,
  `stockweb_casque` tinyint(1) NOT NULL,
  `panier_casque` tinyint(1) NOT NULL,
  `image_casque` text NOT NULL,
  `meilleursventes_casque` tinyint(1) NOT NULL,
  `id_marque` bigint(20) UNSIGNED NOT NULL,
  `id_connectique` bigint(20) UNSIGNED NOT NULL,
  `id_utilisation` bigint(20) UNSIGNED NOT NULL,
  `id_prixfourchette` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Déchargement des données de la table `casque`
--

INSERT INTO `casque` (`id_casque`, `nom_casque`, `prix_casque`, `soustitre_casque`, `description_casque`, `reductionbruit_casque`, `sansfil_casque`, `controlevolume_casque`, `stockweb_casque`, `panier_casque`, `image_casque`, `meilleursventes_casque`, `id_marque`, `id_connectique`, `id_utilisation`, `id_prixfourchette`) VALUES
(1, 'Corsair Virtuoso RGB Wireless XT', '279.00', 'Casque gamer, 7.1 Virtual Surround, Circum-aural (englobe les oreilles), Néodyme de 50 mm, RF 2,4 GHz sur USB ou Bluetooth', 'Le casque Corsair Virtuoso RGB Wireless XT retranscrit fidèlement le son de votre jeu, le tout sans-fil avec une latence minime, une portée de 18 mètres et une autonomie pouvant atteindre les 15 heures ! Sa double connectivité (RF 2,4 GHz ou Bluetooth) ainsi que sa compatibilité Dolby Atmos en font un casque performant et versatile. Bénéficiez d\'un son riche et fidèle, d\'un confort sans failles et d\'un design à couper le souffle !', 0, 1, 0, 1, 0, 'casque_corsair_virtuoso.jpg', 1, 1, 1, 1, 3),
(2, 'Razer Barracuda X - Noir', '99.00', 'Casque gamer, 7.1 Virtual Surround, Circum-aural (englobe les oreilles), Néodyme de 50 mm, RF 2,4 GHz sur USB ou 1x 3,5 mm\r\n', 'Le casque Razer Barracuda X sera votre casque pour unifier tous vos systèmes de jeu ! Offrant un son clair et bien équilibré grâce aux haut-parleurs Razer TriForce de 40 mm, le tout avec un confort optimal, il est en outre totalement sans-fil pour un son surround ou stéréo en permanence !', 1, 0, 1, 0, 1, 'casque_razer_barracuda.jpg', 1, 2, 1, 1, 1),
(3, 'JBL TUNE 750BTNC Noir', '78.00', 'Casque HiFi, Bluetooth, Gamer, Stéréo, Circum-aural (englobe les oreilles), Néodyme de 40 mm, 1x 3,5 mm ou 2x 3,5 mm', 'Le casque JBL TUNE 750BTNC offre une performance sonore de qualité et un maintien confortable. Grâce à sa conception légère et pliable, ce casque sans-fil abordable vous offre une expérience musicale au quotidien.', 0, 1, 0, 1, 0, 'casque_jbl_tune.jpg', 1, 4, 1, 2, 1),
(4, 'Logitech H151', '24.00', 'Bureautique / VoIP, Stéréo, Supra-aural (posé sur les oreilles), 1x 3,5 mm, Compatible PC uniquement', 'Le casque Logitech H151 est totalement plug-and-play et se branche en jack 3,5 millimètres pour une compatibilité universelle ! Il a la particularité d\'être confortable et d\'avoir un micro performant, idéal pour les conversations en ligne !', 0, 0, 0, 0, 0, 'casque_logitech_h151.jpg', 1, 5, 2, 3, 1),
(5, 'SteelSeries Arctis 7+', '199.00', 'Casque gamer, 7.1 Virtual Surround, Circum-aural (englobe les oreilles), Néodyme de 40 mm, RF 2,4 GHz sur USB\r\n', 'Le casque gaming SteelSeries Arctis 7+ revient dans une version améliorée ! Autonomie plus élevée et une compatibilité étendue sont au programme de ce casque sans-fil que l\'on ne présente même plus ! Son design reste toujours ultra confortable avec des oreillettes épaisses, tandis que le casque reste confortable et léger avec en plus un micro rétractable, il se transforme également en casque nomade pour vous accompagner au quotidien !', 1, 1, 1, 1, 0, 'casque_steelseries_arctis7.jpg', 1, 3, 1, 1, 2),
(6, 'SteelSeries Arctis Pro + GameDAC - Noir', '269.00', 'Casque gamer, 7.1 Virtual Surround, Circum-aural (englobe les oreilles), Néodyme de 40 mm ou 1x USB, Compatible PC', 'Le casque gamer SteelSeries Arctis Pro met l\'accent sur le confort d\'utilisation ainsi que sur les performances. Son système de suspension inspiré des masques de ski et ses oreillettes en mousse aérée permettent de jouer des heures durant sans ressentir la moindre fatigue ou douleur !', 1, 0, 1, 0, 0, 'casque_steelseries_artcispro.jpg', 0, 3, 1, 1, 3),
(7, 'Razer Opus ', '197.00', 'Casque à réduction active de bruit, HiFi, Bluetooth - Article utilisé', 'Le casque Razer Opus offre plus de silence grâce à l\'amélioration de réduction active du bruit. Que ce soit en voyage, en marchant ou en travaillant, il permet d\'écouter votre musique sans être gêné par le bruit ambiant. Véritable compagnon de votre quotidien le casque Opus de Razer intègre une virtualisation du son via THX.', 1, 1, 0, 0, 0, 'casque_razer_opus.jpg', 0, 2, 2, 2, 2),
(8, 'Razer Kraken - Quartz', '89.00', 'Casque gamer, Stéréo, Circum-aural (englobe les oreilles), Néodyme de 50 mm, 1x 3,5 mm ou 2x 3,5 mm\r\n', 'Le casque gaming Razer Kraken intègre un son puissant en stéréo, délivré par deux larges écouteurs de 50 mm de diamètre. Multiplateforme, gardez le même casque sur vos oreilles, que vous soyez joueur sur PC, PS4 ou Xbox One !', 1, 0, 0, 1, 0, 'casque_razer_krakenquartz.jpg', 0, 2, 1, 1, 1),
(9, 'Logitech G733 Lightspeed - Blanc', '139.00', 'Casque Gamer, 7.1 Virtual Surround, Circum-aural (englobe les oreilles), Néodyme de 40 mm, RF 2,4 GHz sur câble XLR', 'Le casque Logitech G733 embarque sous son châssis un son surround DTS Headphone:X 2.0 délivré par ses transducteurs Pro-G de 40 mm ! Retrouvez également un rétro-éclairage RGB LightSync avec une connexion XLR Lightspeed pour ne rien perdre de la bataille qui se déroule sous vos yeux !', 1, 0, 0, 0, 0, 'casque_logitech_g733.jpg', 0, 5, 3, 2, 2),
(10, 'SteelSeries Arctis 9X (PC & Consoles)', '239.00', 'Casque gamer, 7.1 Virtual Surround, Circum-aural (englobe les oreilles), Néodyme de 40 mm, Bluetooth\r\n', 'Le casque gaming SteelSeries Arctis 9X intègre la même technologie de connexion sans-fil que les manettes officielles Xbox pour une intégration naturelle dans l\'écosystème du gaming. Ses performances sonores, son ergonomie et son autonomie de 20h en font le casque idéal pour jouer sur toute les plateformes !', 1, 1, 1, 0, 0, 'casque_steelseries_arctis9.jpg', 0, 3, 1, 1, 3),
(11, 'Logitech G Pro X - League of Legends Edition', '119.00', 'Casque gamer, Stéréo, Circum-aural (englobe les oreilles), Néodyme de 50 mm, 1x 3,5 mm ou 2x 3,5 USB', 'Le casque gaming Logitech G Pro intègre les transducteurs Pro-G de 50 mm de diamètre pour un son stéréo puissant et équilibré dans tous vos jeux. Entre son micro détachable et sa connectique universelle, vous avez trouvé votre nouveau partenaire !', 0, 0, 0, 1, 0, 'casque_logitech_gprox.jpg', 0, 5, 1, 1, 2),
(12, 'Logitech G332', '54.00', 'Casque gamer, Stéréo, Circum-aural (englobe les oreilles), Néodyme de 50 mm, 1x 3,5 mm ou 2x 3,5 mm, Compatible PC, PS4, Xbox One', 'Le casque gaming Logitech G332 est un casque stéréo multiplateforme qui met l\'accent sur le confort d\'utilisation sans oublier la performance. Ses grands transducteurs sonores et son microphone performant en font un casque idéal pour jouer au quotidien !', 0, 1, 1, 1, 1, 'casque_logitech_g332.jpg', 0, 5, 1, 1, 1),
(13, 'Logitech H650e Stéréo', '69.00', 'Bureautique / VoIP, Supra-aural (posé sur les oreilles), 1x USB, Compatible PC uniquement\r\n', 'Le casque de bureautique Logitech H650e met l\'accent sur le confort d\'utilisation et la maîtrise de l\'appel grâce à sa télécommande filaire fournie. Branché en USB, conversez sans inconfort avec une clarté bluffante. De plus, ce modèle dispose d\'un témoin d\'appel lumineux pour que votre entourage sache quand vous êtes en communication !', 0, 0, 0, 1, 0, 'casque_logitech_h650e.jpg', 0, 5, 1, 3, 1),
(14, 'Razer Kraken V3', '109.00', 'Casque gamer, 7.1 Virtual Surround, Circum-aural (englobe les oreilles), Néodyme de 50 mm, 1x USB', 'Photos non contractuelles\r\nLe casque gaming Razer Kraken V3 représente l\'évolution du casque le plus célèbre de la marque aux serpents ! Entre le son surround 7.1 boosté par la technologie THX Spatial Audio, le confort des oreillettes en simili-cuir ou le micro cardioïde HyperClear, tout est mis à votre disposition pour prendre l\'ascendant sur vos adversaires !', 1, 0, 1, 0, 0, 'casque_razer_krakenv3.jpg', 0, 2, 1, 1, 2),
(15, 'JBL Quantum 200', '56.00', 'Casque gamer, Stéréo, Circum-aural (englobe les oreilles), Néodyme de 50 mm, 1x 3,5 mm ou 2x 3,5 mm', 'Le casque JBL Quantum 200 est destiné aux joueurs multiplateformes qui ne souhaitent pas alterner entre divers casques. Ne gardez que ce casque grâce à la connectique Jack 3,5 mm, connectée en prise jack, et profitez de sa performance et de son confort pendant de longues heures !', 0, 0, 0, 1, 0, 'casque_jbl_quantum200.jpg', 0, 4, 2, 1, 1),
(16, 'JBL Quantum 100 - Noir', '36.00', 'Casque pour la téléphonie, Stéréo, Circum-aural (englobe les oreilles), Néodyme de 40 mm, 1x 3,5 mm', 'Le casque JBL Quantum 100 est destiné aux joueurs multiplateformes qui ne souhaitent pas alterner entre divers casques. Ne gardez que ce casque grâce à la connectique Jack 3,5 mm et profitez de sa performance et de son confort pendant de longues heures !', 0, 0, 0, 0, 0, 'casque_jbl_quantum100.jpg', 0, 4, 1, 3, 1),
(17, 'Corsair HS80 RGB Wireless - Blanc', '145.95', 'Casque gamer, 7.1 Virtual Surround, Circum-aural (englobe les oreilles), Néodyme de 50 mm, RF 2,4 GHz sur USB\n', 'Le casque Corsair HS80 RGB Wireless cumule tant la performance que le confort d\'utilisation pour vous apporter la victoire sur un plateau auditif. Sans-fil avec un système à suspension pour le confort, il s\'équipe d\'aimants en néodyme d\'un diamètre de 50 mm avec une réponse en fréquence allant de 20 Hz à 40 kHz. L\'autonomie de 20 heures est la cerise sur le gâteau de ce casque gaming qui a envie d\'en découdre !', 0, 1, 0, 1, 0, 'casque_corsair_hs80.jpg', 0, 1, 2, 1, 2),
(18, 'Corsair HS60 Haptic', '129.95', 'Casque gamer, Stéréo, Circum-aural (englobe les oreilles), Néodyme de 50 mm, 1x Prise jack\r\n', 'Le casque stéréo Corsair HS60 Haptic intègre la technlogie Taction pour une meilleure restitution des basses fréquences, tout en faisant la part belle à la sobriété avec un look épuré. Branché en USB et compatible Windows Sonic, entendez-tout ce qui se passe dans votre jeu grâce à ses larges hauts-parleurs d\'un diamètre de 50 mm !', 1, 0, 1, 1, 0, 'casque_corsair_hs60.jpg', 0, 1, 2, 1, 2),
(19, 'JBL TUNE 510BT Rose - Casque sans fil', '47.90', 'Casque HiFi, Bluetooth', 'De la liberté et du style sans vous ruiner, c\'est ce que vous offre JBL avec le casque sans fil Bluetooth supra-auriculaire fermé JBL Tune 510BT. Profitez d\'un son de grande qualité à partir de votre smartphone sans câbles gênants avec le son JBL « Pure Bass ».', 0, 1, 0, 0, 0, 'casque_jbl_510bt.jpg', 0, 4, 1, 2, 1),
(20, 'JBL Tune 500 Bleu - Casque audio', '129.99', 'Casque HiFi, câble XLR idéal pour la musique', 'Le casque JBL Tune 500 offre un puissant son avec la signature JBL Pure Bass. Il est également équipé d\'un micro avec un bouton permettant la prise d\'appel et l\'interrogation de votre assistant mobile (Siri, Google).', 1, 0, 0, 0, 0, 'casque_jbl_tune500.jpg', 0, 4, 3, 2, 2),
(21, 'Razer Blackshark V2 Pro - Blanc', '260.94', 'Casque gamer, 7.1 Virtual Surround, Circum-aural (englobe les oreilles), Néodyme de 50 mm, RF 2,4 GHz sur USB\r\n !', 'Plongez au coeur de l\'action de votre jeu préféré avec ce casque Razer Blackshark V2 Pro. Ce caque vous offre un son clair et bien équilibré grâce aux haut-parleurs Razer TriForce Titanium de 50 mm, le tout avec un confort optimal. Totalement sans-fil, la latence sera inexistante grâce à la technologie Razer HyperSpeed !', 1, 0, 1, 0, 0, 'casque_razer_blackshark.jpg', 0, 2, 1, 1, 3),
(22, 'Logitech G432', '64.95', 'Casque gamer, 7.1 Virtual Surround, Circum-aural (englobe les oreilles), Néodyme de 50 mm, 1x3,5 mm, 2x 3,5 mm ou 1x USB, Compatible PC, PS4', 'Le casque gaming Logitech G432 intègre un son surround DTS Headphone:X 2.0 immersif via ses transducteurs d\'un diamètre de 50 millimètres ! Son DAC intégré et son confort d\'utilisation en font un périphérique performant qui ne vous laissera pas indifférent !', 0, 0, 1, 1, 0, 'casque_logitech_g432.jpg', 0, 5, 1, 1, 1),
(23, 'Razer Blackshark V2 X - Vert', '100.95', 'Casque pour la téléphonie, 7.1 Virtual Surround, Circum-aural (englobe les oreilles), Néodyme de 50 mm,1x 3,5 mm\r\n', 'Plongez au coeur de vos conversations avec ce casque Razer Blackshark V2 X. Ce caque vous offre un son clair et bien équilibré grâce à haut-parleurs de 50 mm, le tout avec un confort optimal. Pour des communications claires et limpides, vous pourrez compter sur le micro unidirectionnel Razer HyperClear Cardioid.', 1, 0, 1, 0, 0, 'casque_razer_blacksharkv2.jpg', 0, 2, 1, 3, 2),
(24, 'Corsair Void Elite Surround - Rouge', '69.95', 'Casque gamer, 7.1 Virtual Surround, Circum-aural (englobe les oreilles), Néodyme de 50 mm, 1x 3,5 mm ou 1x, XLR\r\n', 'Le casque Corsair Void Elite Surround apporte une solution de son surround 7.1 ainsi qu\'une solution  pour délivrer un son performant à tout ses utilisateurs, peut importe qu\'ils soient! Son microphone repensé et son confort augmenté font définitivement de cette version Elite une évolution à prendre en compte !', 1, 0, 0, 1, 0, 'casque_corsair_voidelite.jpg', 0, 1, 3, 3, 1),
(25, 'Corsair Virtuoso RGB Wireless SE - Espresso', '209.95', 'Casque gamer, 7.1 Virtual Surround, Circum-aural (englobe les oreilles), Néodyme de 50 mm, RF 2,4 GHz sur USB\r\n', 'Le casque Corsair Virtuoso RGB Wireless SE retranscrit fidèlement le son de votre jeu, le tout sans-fil avec une latence minime, une portée de 18 mètres et une autonomie pouvant atteindre les 20 heures ! Bénéficiez d\'un son riche et fidèle, d\'un confort sans failles et d\'un design à couper le souffle !', 1, 1, 0, 0, 0, 'casque_corsair_virtuosose.jpg', 0, 1, 1, 2, 3),
(26, 'JBL Tune 710BT Noir - Casque sans fil', '275.65', 'Casque HiFi, Bluetooth, pour la musique, basse boosted', 'Le casque circum-aural JBL Tune 710BT offre une performance sonore de qualité et un maintien confortable. Grâce à sa conception légère et pliable, ce casque sans-fil abordable vous offre une expérience musicale au quotidien.', 1, 1, 0, 1, 0, 'casque_jbl_tune710bt.jpg', 0, 4, 2, 2, 3),
(27, 'Razer Tiamat 2.2 V2', '49.49', 'Casque gamer, Stéréo, Circum-aural (englobe les oreilles), Néodyme de 50 mm, 1x 3,5 mm ou 2x 3,5 mm, Compatible PC, PS4, Xbox One', 'Le casque gaming Razer Tiamat 2.2 V2 propose une solution audio puissante pour le gaming avec des basses accrues. Ses 4 haut-parleurs de 50 mm permettent une restitution fidèle qui vous laissera titubant lorsqu\'une grenade explosera à vos pieds !', 1, 0, 0, 0, 0, 'casque_razer_tiamat.jpg', 0, 2, 1, 2, 1),
(28, 'Logitech H540', '59.95', 'Musique / VoIP, Stéréo, Supra-aural (posé sur les oreilles), 1x USB, Compatible PC uniquement\r\n', 'Branchez le casque stéréo Logitech USB Headset H540 à votre PC ou Mac et profitez d\'un son clair et précis pour écouter vos musiques ou discuter avec vos proches avec une plage de fréquence de 20 Hz - 20 kHz. Confortable grâce à son bandeau et ses oreillettes rembourrées en cuir synthétique, ce casque se règle à la taille de votre tête pour des heures et des heures d\'utilisation !', 0, 0, 1, 0, 0, 'casque_logitech_h540.jpg', 0, 5, 1, 2, 1),
(29, 'Razer Barracuda X - Mercury', '99.95', 'Casque gamer, 7.1 Virtual Surround, Circum-aural (englobe les oreilles), Néodyme de 50 mm, RF 2,4 GHz sur XLR \r\n', 'Le casque Razer Barracuda X sera votre casque pour unifier tous vos systèmes de jeu ! Offrant un son clair et bien équilibré grâce aux haut-parleurs Razer TriForce de 40 mm, le tout avec un confort optimal, il est en outre totalement sans-fil pour un son surround ou stéréo en permanence !', 1, 0, 1, 1, 0, 'casque_razer_baracuda.jpg', 0, 2, 3, 2, 1),
(30, 'Logitech H650e Stéréo', '169.95', 'Téléphonie / VoIP, Supra-aural (posé sur les oreilles), 1x USB, Compatible PC uniquement\r\n', 'Le casque de bureautique Logitech H650e met l\'accent sur le confort d\'utilisation et la maîtrise de l\'appel grâce à sa télécommande filaire fournie. Branché en USB, conversez sans inconfort avec une clarté bluffante. De plus, ce modèle dispose d\'un témoin d\'appel lumineux pour que votre entourage sache quand vous êtes en communication !', 0, 0, 0, 0, 0, 'casque_logitech_h650.jpg', 0, 5, 3, 3, 2),
(31, 'Razer Kraken Kitty Edition - Quartz', '189.95', 'Casque gamer, 7.1 Virtual Surround, Circum-aural (englobe les oreilles), Néodyme de 50 mm, 1x 3,5 mm ou 1x Prise Jack\r\n', '\r\nPhotos non contractuelles\r\nLe casque gaming Razer Kraken Kitty Edition intègre une virtualisation du son via THX Spatial Audio pour une immersion totale dans vos jeux favoris et surtout des oreilles de chat rétro-éclairées ! Bénéficiants de hauts-parleurs d\'un diamètre de 50 mm et d\'une télécommande multifonctions, il s\'agit d\'un casque avec lequel compter ! On vous a dit qu\'il avait également des oreilles de chat ?', 1, 0, 1, 1, 0, 'casque_razer_krakenkitty.jpg', 0, 2, 2, 1, 2),
(32, 'JBL TUNE 700BT Blanc - Casque sans fil', '239.99', 'Casque HiFi, Bluetooth, Prise Jack\r\n', 'Le casque JBL TUNE 700BT Blanc offre une performance sonore de qualité et un maintien confortable. Grâce à sa conception légère et pliable, ce casque sans-fil abordable vous offre une expérience musicale au quotidien.', 0, 1, 0, 1, 0, 'casque_jbl_tune700.jpg', 0, 4, 2, 2, 3);

-- --------------------------------------------------------

--
-- Structure de la table `connectique`
--

CREATE TABLE `connectique` (
  `id_connectique` bigint(20) UNSIGNED NOT NULL,
  `nom_connectique` text NOT NULL,
  `image_connectique` text NOT NULL,
  `avantage_connectique` text NOT NULL,
  `inconvenient_connectique` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Déchargement des données de la table `connectique`
--

INSERT INTO `connectique` (`id_connectique`, `nom_connectique`, `image_connectique`, `avantage_connectique`, `inconvenient_connectique`) VALUES
(1, 'USB', 'connectique_usb.jpg', 'Grâce aux connexions USB de votre casque, il possédera un débit audio au maximum de ses performances. Il permettra une connexion directe avec l\'ordinateur facilitant alors la mise en place de celui-ci et évitant alors de divers problèmes. ', 'Le câble USB ne possède pas d\'inconvénient majeur. Excepté le fait qu\'il peut s\'abimer au fur et à mesure de le brancher / débrancher.'),
(2, 'Prise jack', 'connectique_prise_jack.jpg', 'L\'avantage majeur de cette connectique est son uniformité, cette uniformité vous permet de vous connecter sur n\'importe quel appareil ou de partager votre musique avec n\'importe qui.', 'Le premier inconvénient est un surcoût à prévoir au niveau des casques et des écouteurs. Un surcoût qui se réduira au fur et à mesure que la production des puces augmentera. Le surcoût devrait toutefois être négligeable, de l\'ordre du dollar par casque.'),
(3, 'XLR', 'connectique_xlr.jpg', 'Ce système protège le signal contre les interférences. Les câbles symétriques XLR présentent également l\'avantage de ne pas générer de bruits parasites pouvant endommager les enceintes lors de la connexion, ou déconnexion du câble, comme c\'est le cas avec les câbles RCA.', 'Si les circuits sont assymétriques et que les prises XLR ou jacks cachent un transfo à chaque fois il y a des risques de dégradation du signal. Si les conditions de symétrie de tous les cables et circuits sont remplies, il faut tester l\'intérêt auditif de la solution symétrique. De plus, ces câbles nécessite souvent des carte son qui sont très chères.');

-- --------------------------------------------------------

--
-- Structure de la table `marque`
--

CREATE TABLE `marque` (
  `id_marque` bigint(20) UNSIGNED NOT NULL,
  `nom_marque` varchar(20) NOT NULL,
  `image_marque` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Déchargement des données de la table `marque`
--

INSERT INTO `marque` (`id_marque`, `nom_marque`, `image_marque`) VALUES
(1, 'Corsair', 'marque_corsair.png'),
(2, 'Razer', 'marque_razer.png'),
(3, 'Steelseries', 'marque_steelseries.svg'),
(4, 'JBL', 'marque_jbl.png'),
(5, 'Logitech', 'marque_logitech.png');

-- --------------------------------------------------------

--
-- Structure de la table `posseder`
--

CREATE TABLE `posseder` (
  `id_casque` bigint(20) UNSIGNED NOT NULL,
  `id_tag` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Déchargement des données de la table `posseder`
--

INSERT INTO `posseder` (`id_casque`, `id_tag`) VALUES
(27, 3),
(27, 4),
(1, 1),
(1, 2),
(3, 3),
(2, 1),
(3, 3),
(3, 4),
(4, 4),
(3, 4),
(5, 2),
(5, 4),
(6, 1),
(6, 2),
(6, 3),
(7, 3),
(7, 1),
(7, 4),
(8, 1),
(8, 2),
(9, 3),
(9, 4),
(10, 1),
(10, 2),
(11, 1),
(12, 3),
(12, 1),
(13, 3),
(13, 4),
(13, 1),
(14, 3),
(15, 1),
(16, 3),
(16, 2),
(17, 3),
(17, 1),
(18, 4),
(18, 1),
(19, 3),
(20, 4),
(21, 1),
(21, 2),
(21, 4),
(23, 1),
(21, 3),
(23, 4),
(24, 2),
(24, 1),
(25, 3),
(26, 1),
(21, 3),
(28, 2),
(28, 4),
(29, 3),
(30, 1),
(30, 2),
(31, 3),
(31, 4),
(32, 1),
(32, 3),
(32, 4);

-- --------------------------------------------------------

--
-- Structure de la table `prixfourchette`
--

CREATE TABLE `prixfourchette` (
  `id_prixfourchette` bigint(20) UNSIGNED NOT NULL,
  `nom_prixfourchette` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Déchargement des données de la table `prixfourchette`
--

INSERT INTO `prixfourchette` (`id_prixfourchette`, `nom_prixfourchette`) VALUES
(1, '0 - 100€'),
(2, '100 - 200€'),
(3, '200 - 300€');

-- --------------------------------------------------------

--
-- Structure de la table `tag`
--

CREATE TABLE `tag` (
  `id_tag` bigint(20) UNSIGNED NOT NULL,
  `nom_tag` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Déchargement des données de la table `tag`
--

INSERT INTO `tag` (`id_tag`, `nom_tag`) VALUES
(1, 'Brillant'),
(2, 'Léger'),
(3, 'Lourd'),
(4, 'Solide');

-- --------------------------------------------------------

--
-- Structure de la table `user`
--

CREATE TABLE `user` (
  `id_user` bigint(20) UNSIGNED NOT NULL,
  `prenom_user` text NOT NULL,
  `nom_user` text NOT NULL,
  `message_user` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Déchargement des données de la table `user`
--

INSERT INTO `user` (`id_user`, `prenom_user`, `nom_user`, `message_user`) VALUES
(50, 'BJR', 'BJR', 'BJR'),
(51, 'tertretre', 'tretre', 'treter'),
(52, 'eza', 'ezae', 'ezaeaz');

-- --------------------------------------------------------

--
-- Structure de la table `utilisation`
--

CREATE TABLE `utilisation` (
  `id_utilisation` bigint(20) UNSIGNED NOT NULL,
  `nom_utilisation` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Déchargement des données de la table `utilisation`
--

INSERT INTO `utilisation` (`id_utilisation`, `nom_utilisation`) VALUES
(1, 'Gaming'),
(2, 'Musique'),
(3, 'Téléphonie');

--
-- Index pour les tables déchargées
--

--
-- Index pour la table `casque`
--
ALTER TABLE `casque`
  ADD PRIMARY KEY (`id_casque`),
  ADD UNIQUE KEY `id_casque` (`id_casque`),
  ADD KEY `fk_idmarque_casque` (`id_marque`),
  ADD KEY `fk_idconnectique_casque` (`id_connectique`),
  ADD KEY `fk_idutilisation_casque` (`id_utilisation`),
  ADD KEY `fk_idprixfourchette_casque` (`id_prixfourchette`);

--
-- Index pour la table `connectique`
--
ALTER TABLE `connectique`
  ADD PRIMARY KEY (`id_connectique`),
  ADD UNIQUE KEY `id_connectique` (`id_connectique`);

--
-- Index pour la table `marque`
--
ALTER TABLE `marque`
  ADD PRIMARY KEY (`id_marque`),
  ADD UNIQUE KEY `id_marque` (`id_marque`);

--
-- Index pour la table `posseder`
--
ALTER TABLE `posseder`
  ADD KEY `fk_idcasque_posseder` (`id_casque`),
  ADD KEY `fk_idtag_posseder` (`id_tag`);

--
-- Index pour la table `prixfourchette`
--
ALTER TABLE `prixfourchette`
  ADD PRIMARY KEY (`id_prixfourchette`),
  ADD UNIQUE KEY `id_prixfourchette` (`id_prixfourchette`);

--
-- Index pour la table `tag`
--
ALTER TABLE `tag`
  ADD PRIMARY KEY (`id_tag`),
  ADD UNIQUE KEY `id_tag` (`id_tag`);

--
-- Index pour la table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id_user`),
  ADD UNIQUE KEY `id_user` (`id_user`);

--
-- Index pour la table `utilisation`
--
ALTER TABLE `utilisation`
  ADD PRIMARY KEY (`id_utilisation`),
  ADD UNIQUE KEY `id_utilisation` (`id_utilisation`);

--
-- AUTO_INCREMENT pour les tables déchargées
--

--
-- AUTO_INCREMENT pour la table `casque`
--
ALTER TABLE `casque`
  MODIFY `id_casque` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=33;

--
-- AUTO_INCREMENT pour la table `connectique`
--
ALTER TABLE `connectique`
  MODIFY `id_connectique` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT pour la table `marque`
--
ALTER TABLE `marque`
  MODIFY `id_marque` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT pour la table `prixfourchette`
--
ALTER TABLE `prixfourchette`
  MODIFY `id_prixfourchette` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT pour la table `tag`
--
ALTER TABLE `tag`
  MODIFY `id_tag` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT pour la table `user`
--
ALTER TABLE `user`
  MODIFY `id_user` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=53;

--
-- AUTO_INCREMENT pour la table `utilisation`
--
ALTER TABLE `utilisation`
  MODIFY `id_utilisation` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- Contraintes pour les tables déchargées
--

--
-- Contraintes pour la table `casque`
--
ALTER TABLE `casque`
  ADD CONSTRAINT `fk_idconnectique_casque` FOREIGN KEY (`id_connectique`) REFERENCES `connectique` (`id_connectique`),
  ADD CONSTRAINT `fk_idmarque_casque` FOREIGN KEY (`id_marque`) REFERENCES `marque` (`id_marque`),
  ADD CONSTRAINT `fk_idprixfourchette_casque` FOREIGN KEY (`id_prixfourchette`) REFERENCES `prixfourchette` (`id_prixfourchette`),
  ADD CONSTRAINT `fk_idutilisation_casque` FOREIGN KEY (`id_utilisation`) REFERENCES `utilisation` (`id_utilisation`);

--
-- Contraintes pour la table `posseder`
--
ALTER TABLE `posseder`
  ADD CONSTRAINT `fk_idcasque_posseder` FOREIGN KEY (`id_casque`) REFERENCES `casque` (`id_casque`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `fk_idtag_posseder` FOREIGN KEY (`id_tag`) REFERENCES `tag` (`id_tag`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
