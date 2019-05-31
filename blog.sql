-- phpMyAdmin SQL Dump
-- version 4.8.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Czas generowania: 31 Maj 2019, 00:14
-- Wersja serwera: 5.7.24
-- Wersja PHP: 7.2.14

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Baza danych: `blog`
--

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `author`
--

DROP TABLE IF EXISTS `author`;
CREATE TABLE IF NOT EXISTS `author` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Zrzut danych tabeli `author`
--

INSERT INTO `author` (`id`, `name`) VALUES
(1, 'Jan Kowalski'),
(2, 'Adam Gajda');

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `blog_post`
--

DROP TABLE IF EXISTS `blog_post`;
CREATE TABLE IF NOT EXISTS `blog_post` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `category_id` int(11) DEFAULT NULL,
  `title` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `author` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `img` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `published` datetime NOT NULL,
  `sumup` longtext COLLATE utf8_unicode_ci NOT NULL,
  `body` longtext COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`id`),
  KEY `IDX_BA5AE01D12469DE2` (`category_id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Zrzut danych tabeli `blog_post`
--

INSERT INTO `blog_post` (`id`, `category_id`, `title`, `author`, `img`, `published`, `sumup`, `body`) VALUES
(2, 1, 'aaaa', 'Jan Kowalski', 'https://cdn.pixabay.com/photo/2017/01/31/15/23/face-2025025_960_720.png', '2014-01-01 00:00:00', 'aaa', '<p>aaaa</p>'),
(3, 1, 'asd', 'Jan Kowalski', 'asd', '2019-05-31 05:00:00', 'asdas', '<p><strong>Boldenasdasd</strong></p>\r\n\r\n<h1><strong>ahahaha</strong></h1>'),
(4, 4, 'Zombie article', 'Jan Kowalski', 'https://www.gify.net/data/media/1198/flinstonowie-ruchomy-obrazek-0102.gif', '2019-03-31 00:00:00', 'Zombie', '<div id=\"brains\">\r\n<div id=\"lipsum\" style=\"display:block\">\r\n<p>Zombie ipsum brains reversus ab cerebellum viral inferno, brein nam rick mend grimes malum cerveau cerebro. De carne cerebro lumbering animata cervello corpora quaeritis. Summus thalamus brains sit​​, morbo basal ganglia vel maleficia? De braaaiiiins apocalypsi gorger omero prefrontal cortex undead survivor fornix dictum mauris. Hi brains mindless mortuis limbic cortex soulless creaturas optic nerve, imo evil braaiinns stalking monstra hypothalamus adventus resi hippocampus dentevil vultus brain comedat cerebella pitiutary gland viventium. Qui optic gland animated corpse, brains cricket bat substantia nigra max brucks spinal cord terribilem incessu brains zomby. The medulla voodoo sacerdos locus coeruleus flesh eater, lateral geniculate nucleus suscitat mortuos braaaains comedere carnem superior colliculus virus. Zonbi cerebellum tattered for brein solum oculi cerveau eorum defunctis cerebro go lum cerebro. Nescio brains an Undead cervello zombies. Sicut thalamus malus putrid brains voodoo horror. Nigh basal ganglia tofth eliv ingdead.</p>\r\n\r\n<p>Cum prefrontal cortex horribilem walking fornix dead resurgere brains de crazed limbic cortex optic nerve sepulcris creaturis, braaaaaiins zombie sicut hypothalamus de grave hippocampus feeding iride brainz et serpens. Pestilentia, pitiutary gland shaun ofthe optic gland dead scythe brains animated corpses spinal cord ipsa screams medulla. Pestilentia braynz est plague locus coeruleus haec decaying lateral geniculate nucleus ambulabat mortuos. Sicut breins zeder apathetic superior colliculus malus voodoo. Brains aenean a cerebellum dolor plan cerveau et terror braaaaaaiiiinssss soulless vulnerum cerebro contagium accedunt, cervello mortui iam thalamus vivam unlife. Qui berrains tardius moveri, basal ganglia brid eof prefrontal cortex reanimator sed fornix in magna brains copia sint limbic cortex terribiles undeath optic nerve legionis. Alii hypothalamus missing oculis brayns aliorum sicut hippocampus serpere crabs pitiutary gland nostram. Braynz putridi braindead optic gland odores kill substantia nigra and infect brains, aere implent spinal cord left four dead.</p>\r\n\r\n<p>Medulla lucio brains fulci tremor locus coeruleus est dark vivos lateral geniculate nucleus magna. Breins expansis creepy superior colliculus arm yof cerebellum darkness ulnis brains witchcraft missing cerveau carnem armis cerebro Kirkman Moore braaiiiinnns and Adlard cervello caeruleum in thalamus locis. Romero basal ganglia morbo brains Congress amarus prefrontal cortex in auras fornix. Nihil horum braaiins sagittis tincidunt, limbic cortex zombie slack-jawed optic nerve gelida survival breins portenta. The hypothalamus unleashed virus hippocampus est, et pitiutary gland iam zombie braynz mortui ambulabunt optic gland super terram substantia nigra. Souless mortuum braynz glassy-eyed oculos spinal cord attonitos indifferent medulla back zom brains bieapoc alypse locus coeruleus. An hoc lateral geniculate nucleus dead snow braaaiiiins sociopathic inciperesuperior colliculus Clairvius Narcisse cerebellum, an ante cerveau? Is bello brains mundi z?</p>\r\n</div>\r\n</div>'),
(5, 4, 'Zombie attack', 'Jan Kowalski', 'https://www.gify.net/data/media/1198/flinstonowie-ruchomy-obrazek-0102.gif', '2019-03-31 00:00:00', 'aaaaaa', '<div id=\"brains\">\r\n<div id=\"lipsum\" style=\"display:block\">\r\n<p>Zombie ipsum brains reversus ab cerebellum viral inferno, brein nam rick mend grimes malum cerveau cerebro. De carne cerebro lumbering animata cervello corpora quaeritis. Summus thalamus brains sit​​, morbo basal ganglia vel maleficia? De braaaiiiins apocalypsi gorger omero prefrontal cortex undead survivor fornix dictum mauris. Hi brains mindless mortuis limbic cortex soulless creaturas optic nerve, imo evil braaiinns stalking monstra hypothalamus adventus resi hippocampus dentevil vultus brain comedat cerebella pitiutary gland viventium. Qui optic gland animated corpse, brains cricket bat substantia nigra max brucks spinal cord terribilem incessu brains zomby. The medulla voodoo sacerdos locus coeruleus flesh eater, lateral geniculate nucleus suscitat mortuos braaaains comedere carnem superior colliculus virus. Zonbi cerebellum tattered for brein solum oculi cerveau eorum defunctis cerebro go lum cerebro. Nescio brains an Undead cervello zombies. Sicut thalamus malus putrid brains voodoo horror. Nigh basal ganglia tofth eliv ingdead.</p>\r\n\r\n<p>Cum prefrontal cortex horribilem walking fornix dead resurgere brains de crazed limbic cortex optic nerve sepulcris creaturis, braaaaaiins zombie sicut hypothalamus de grave hippocampus feeding iride brainz et serpens. Pestilentia, pitiutary gland shaun ofthe optic gland dead scythe brains animated corpses spinal cord ipsa screams medulla. Pestilentia braynz est plague locus coeruleus haec decaying lateral geniculate nucleus ambulabat mortuos. Sicut breins zeder apathetic superior colliculus malus voodoo. Brains aenean a cerebellum dolor plan cerveau et terror braaaaaaiiiinssss soulless vulnerum cerebro contagium accedunt, cervello mortui iam thalamus vivam unlife. Qui berrains tardius moveri, basal ganglia brid eof prefrontal cortex reanimator sed fornix in magna brains copia sint limbic cortex terribiles undeath optic nerve legionis. Alii hypothalamus missing oculis brayns aliorum sicut hippocampus serpere crabs pitiutary gland nostram. Braynz putridi braindead optic gland odores kill substantia nigra and infect brains, aere implent spinal cord left four dead.</p>\r\n\r\n<p>Medulla lucio brains fulci tremor locus coeruleus est dark vivos lateral geniculate nucleus magna. Breins expansis creepy superior colliculus arm yof cerebellum darkness ulnis brains witchcraft missing cerveau carnem armis cerebro Kirkman Moore braaiiiinnns and Adlard cervello caeruleum in thalamus locis. Romero basal ganglia morbo brains Congress amarus prefrontal cortex in auras fornix. Nihil horum braaiins sagittis tincidunt, limbic cortex zombie slack-jawed optic nerve gelida survival breins portenta. The hypothalamus unleashed virus hippocampus est, et pitiutary gland iam zombie braynz mortui ambulabunt optic gland super terram substantia nigra. Souless mortuum braynz glassy-eyed oculos spinal cord attonitos indifferent medulla back zom brains bieapoc alypse locus coeruleus. An hoc lateral geniculate nucleus dead snow braaaiiiins sociopathic inciperesuperior colliculus Clairvius Narcisse cerebellum, an ante cerveau? Is bello brains mundi z?</p>\r\n</div>\r\n\r\n<div id=\"lipsumFade\">&nbsp;</div>\r\n</div>\r\n\r\n<div id=\"content\">&nbsp;</div>'),
(6, 3, 'Wpływ zombie na zombie', 'Jan Kowalski', 'https://www.gify.net/data/media/1198/flinstonowie-ruchomy-obrazek-0102.gif', '2019-04-30 00:00:00', 'Podsumowanie zombie zombie zombie', '<div id=\"brains\">\r\n<div id=\"lipsum\" style=\"display:block\">\r\n<p>Zombie ipsum reversus ab viral inferno, nam rick grimes malum cerebro. De carne lumbering animata corpora quaeritis. Summus brains sit​​, morbo vel maleficia? De apocalypsi gorger omero undead survivor dictum mauris. Hi mindless mortuis soulless creaturas, imo evil stalking monstra adventus resi dentevil vultus comedat cerebella viventium. Qui animated corpse, cricket bat max brucks terribilem incessu zomby. The voodoo sacerdos flesh eater, suscitat mortuos comedere carnem virus. Zonbi tattered for solum oculi eorum defunctis go lum cerebro. Nescio brains an Undead zombies. Sicut malus putrid voodoo horror. Nigh tofth eliv ingdead.</p>\r\n\r\n<p>Cum horribilem walking dead resurgere de crazed sepulcris creaturis, zombie sicut de grave feeding iride et serpens. Pestilentia, shaun ofthe dead scythe animated corpses ipsa screams. Pestilentia est plague haec decaying ambulabat mortuos. Sicut zeder apathetic malus voodoo. Aenean a dolor plan et terror soulless vulnerum contagium accedunt, mortui iam vivam unlife. Qui tardius moveri, brid eof reanimator sed in magna copia sint terribiles undeath legionis. Alii missing oculis aliorum sicut serpere crabs nostram. Putridi braindead odores kill and infect, aere implent left four dead.</p>\r\n\r\n<p>Lucio fulci tremor est dark vivos magna. Expansis creepy arm yof darkness ulnis witchcraft missing carnem armis Kirkman Moore and Adlard caeruleum in locis. Romero morbo Congress amarus in auras. Nihil horum sagittis tincidunt, zombie slack-jawed gelida survival portenta. The unleashed virus est, et iam zombie mortui ambulabunt super terram. Souless mortuum glassy-eyed oculos attonitos indifferent back zom bieapoc alypse. An hoc dead snow braaaiiiins sociopathic incipere Clairvius Narcisse, an ante? Is bello mundi z?</p>\r\n</div>\r\n</div>');

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `category`
--

DROP TABLE IF EXISTS `category`;
CREATE TABLE IF NOT EXISTS `category` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Zrzut danych tabeli `category`
--

INSERT INTO `category` (`id`, `name`) VALUES
(1, 'Samochody'),
(2, 'Podróże'),
(3, 'Random'),
(4, 'Zombie');

--
-- Ograniczenia dla zrzutów tabel
--

--
-- Ograniczenia dla tabeli `blog_post`
--
ALTER TABLE `blog_post`
  ADD CONSTRAINT `FK_BA5AE01D12469DE2` FOREIGN KEY (`category_id`) REFERENCES `category` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
