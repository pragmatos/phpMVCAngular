-- phpMyAdmin SQL Dump
-- version 4.0.10.10
-- http://www.phpmyadmin.net
--
-- Хост: 127.0.0.1:3306
-- Час створення: Гру 18 2015 р., 14:16
-- Версія сервера: 5.5.45
-- Версія PHP: 5.5.28

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- База даних: `shop`
--

-- --------------------------------------------------------

--
-- Структура таблиці `category`
--

CREATE TABLE IF NOT EXISTS `category` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=6 ;

--
-- Дамп даних таблиці `category`
--

INSERT INTO `category` (`id`, `name`) VALUES
(1, 'Компютеры'),
(2, 'Ноутбуки'),
(3, 'Телефоны'),
(4, 'ETCHO'),
(5, 'OLO');

-- --------------------------------------------------------

--
-- Структура таблиці `feedback`
--

CREATE TABLE IF NOT EXISTS `feedback` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `phone` varchar(255) NOT NULL,
  `text` text NOT NULL,
  `made` tinyint(4) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=6 ;

--
-- Дамп даних таблиці `feedback`
--

INSERT INTO `feedback` (`id`, `name`, `email`, `phone`, `text`, `made`) VALUES
(1, 'tes', 'tes', 'tes', 'tes', 0),
(2, 'e', 'e', 'e', 'e', 0);

-- --------------------------------------------------------

--
-- Структура таблиці `orders`
--

CREATE TABLE IF NOT EXISTS `orders` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `products` text NOT NULL,
  `made` tinyint(1) NOT NULL DEFAULT '0',
  `date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=23 ;

--
-- Дамп даних таблиці `orders`
--

INSERT INTO `orders` (`id`, `user_id`, `products`, `made`, `date`) VALUES
(19, 1, '{"products_id":{"15":1,"14":1,"13":1,"12":1,"11":1},"count":5,"price":2949}', 0, '2015-12-16 16:25:47'),
(20, 1, '{"products_id":{"14":1,"13":1},"count":2,"price":1329}', 1, '2015-12-16 17:40:24'),
(21, 1, '{"products_id":{"14":1,"13":1},"count":2,"price":1329}', 1, '2015-12-16 19:40:19'),
(22, 1, '{"products_id":{"16":2,"15":2},"count":4,"price":1532}', 1, '2015-12-18 07:54:38');

-- --------------------------------------------------------

--
-- Структура таблиці `pages`
--

CREATE TABLE IF NOT EXISTS `pages` (
  `page_id` int(11) NOT NULL AUTO_INCREMENT,
  `page_title` varchar(255) NOT NULL,
  `page_text` text NOT NULL,
  PRIMARY KEY (`page_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=17 ;

--
-- Дамп даних таблиці `pages`
--

INSERT INTO `pages` (`page_id`, `page_title`, `page_text`) VALUES
(1, 'Гарантия', '<p>Многие думают, что Lorem Ipsum - взятый с потолка псевдо-латинский набор слов, но это не совсем так. Его корни уходят в один фрагмент классической латыни 45 года н.э., то есть более двух тысячелетий назад. Ричард МакКлинток, профессор латыни из колледжа Hampden-Sydney, штат Вирджиния, взял одно из самых странных слов в Lorem Ipsum, "consectetur", и занялся его поисками в классической латинской литературе.</p>\n<p>В результате он нашёл неоспоримый первоисточник Lorem Ipsum в разделах 1.10.32 и 1.10.33 книги "de Finibus Bonorum et Malorum" ("О пределах добра и зла"), написанной Цицероном в 45 году н.э. Этот трактат по теории этики был очень популярен в эпоху Возрождения. Первая строка Lorem Ipsum, "Lorem ipsum dolor sit amet..", происходит от одной из строк в разделе 1.10.32 Классический текст Lorem Ipsum, используемый с XVI века, приведён ниже. Также даны разделы 1.10.32 и 1.10.33 "de Finibus Bonorum et Malorum" Цицерона и их английский перевод, сделанный H. Rackham, 1914 год.</p></p>\n<p>\n	</p>\n        <p>\n	<p>Многие думают, что Lorem Ipsum - взятый с потолка псевдо-латинский набор слов, но это не совсем так. Его корни уходят в один фрагмент классической латыни 45 года н.э., то есть более двух тысячелетий назад. Ричард МакКлинток, профессор латыни из колледжа Hampden-Sydney, штат Вирджиния, взял одно из самых странных слов в Lorem Ipsum, "consectetur", и занялся его поисками в классической латинской литературе.</p>\n<p>В результате он нашёл неоспоримый первоисточник Lorem Ipsum в разделах 1.10.32 и 1.10.33 книги "de Finibus Bonorum et Malorum" ("О пределах добра и зла"), написанной Цицероном в 45 году н.э. Этот трактат по теории этики был очень популярен в эпоху Возрождения. Первая строка Lorem Ipsum, "Lorem ipsum dolor sit amet..", происходит от одной из строк в разделе 1.10.32 Классический текст Lorem Ipsum, используемый с XVI века, приведён ниже. Также даны разделы 1.10.32 и 1.10.33 "de Finibus Bonorum et Malorum" Цицерона и их английский перевод, сделанный H. Rackham, 1914 год.</p></p>\n<p>\n	</p><p>\n	<p>Многие думают, что Lorem Ipsum - взятый с потолка псевдо-латинский набор слов, но это не совсем так. Его корни уходят в один фрагмент классической латыни 45 года н.э., то есть более двух тысячелетий назад. Ричард МакКлинток, профессор латыни из колледжа Hampden-Sydney, штат Вирджиния, взял одно из самых странных слов в Lorem Ipsum, "consectetur", и занялся его поисками в классической латинской литературе.</p>\n<p>В результате он нашёл неоспоримый первоисточник Lorem Ipsum в разделах 1.10.32 и 1.10.33 книги "de Finibus Bonorum et Malorum" ("О пределах добра и зла"), написанной Цицероном в 45 году н.э. Этот трактат по теории этики был очень популярен в эпоху Возрождения. Первая строка Lorem Ipsum, "Lorem ipsum dolor sit amet..", происходит от одной из строк в разделе 1.10.32 Классический текст Lorem Ipsum, используемый с XVI века, приведён ниже. Также даны разделы 1.10.32 и 1.10.33 "de Finibus Bonorum et Malorum" Цицерона и их английский перевод, сделанный H. Rackham, 1914 год.</p></p>'),
(2, 'Помощь', 'Давно выяснено, что при оценке дизайна и композиции читаемый текст мешает сосредоточиться. Lorem Ipsum используют потому, что тот обеспечивает более или менее стандартное заполнение шаблона, а также реальное распределение букв и пробелов в абзацах, которое не получается при простой дубликации "Здесь ваш текст.. Здесь ваш текст.. Здесь ваш текст.." Многие программы электронной вёрстки и редакторы HTML используют Lorem Ipsum в качестве текста по умолчанию, так что поиск по ключевым словам "lorem ipsum" сразу показывает, как много веб-страниц всё ещё дожидаются своего настоящего рождения. За прошедшие годы текст Lorem Ipsum получил много версий. Некоторые версии появились по ошибке, некоторые - намеренно (например, юмористические варианты).'),
(14, 'Доставка и оплата\r\n', '<p>Давно выяснено, что при оценке дизайна и композиции читаемый текст мешает сосредоточиться. Lorem Ipsum используют потому, что тот обеспечивает более или менее стандартное заполнение шаблона, а также реальное распределение букв и пробелов в абзацах, которое не получается при простой дубликации "Здесь ваш текст.. Здесь ваш текст.. Здесь ваш текст.." Многие программы электронной вёрстки и редакторы HTML используют Lorem Ipsum в качестве текста по умолчанию, так что поиск по ключевым словам "lorem ipsum" сразу показывает, как много веб-страниц всё ещё дожидаются своего настоящего рождения. За прошедшие годы текст Lorem Ipsum получил много версий. Некоторые версии появились по ошибке, некоторые - намеренно (например, юмористические варианты).</p>'),
(16, 'Как сделать заказ', '<p>Есть много вариантов Lorem Ipsum, но большинство из них имеет не всегда приемлемые модификации, например, юмористические вставки или слова, которые даже отдалённо не напоминают латынь. Если вам нужен Lorem Ipsum для серьёзного проекта, вы наверняка не хотите какой-нибудь шутки, скрытой в середине абзаца. Также все другие известные генераторы Lorem Ipsum используют один и тот же текст, который они просто повторяют, пока не достигнут нужный объём. Это делает предлагаемый здесь генератор единственным настоящим Lorem Ipsum генератором. Он использует словарь из более чем 200 латинских слов, а также набор моделей предложений. В результате сгенерированный Lorem Ipsum выглядит правдоподобно, не имеет повторяющихся абзацей или "невозможных" слов.</p>');

-- --------------------------------------------------------

--
-- Структура таблиці `products`
--

CREATE TABLE IF NOT EXISTS `products` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `price` decimal(10,0) NOT NULL,
  `image` varchar(255) NOT NULL,
  `category_id` int(11) NOT NULL,
  `decs` varchar(255) NOT NULL,
  `model` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=23 ;

--
-- Дамп даних таблиці `products`
--

INSERT INTO `products` (`id`, `name`, `price`, `image`, `category_id`, `decs`, `model`) VALUES
(11, 'Asus1', '355', 'asus_transformer_book_t100taf-dk001b_images_1401787497.jpg', 2, 'Экран 10.1" IPS (1366x768) HD LED, глянцевый Multi-Touch / Intel Atom Z3735G (1.33 ГГц) / RAM 1 ГБ / 32 ГБ встроенной памяти / Intel HD Graphics / без ОД / Wi-Fi / Bluetooth 4.0 / веб-камера / Windows 8.1 / 0.55 кг / док-станци', 'Transformer Book'),
(12, 'Asus', '500', 'record_350676737.jpg', 2, 'Экран 17.3" (1600х900) HD+ LED, глянцевый / Intel Pentium N3540 (2.16 - 2.66 ГГц) / RAM 4 ГБ / HDD 1 ТБ / Intel HD Graphics / DVD Super Multi / LAN / Wi-Fi / Bluetooth 4.0 / веб-камера / DOS / 2.6 кг / белый\r\n', 'X751MA'),
(13, 'Asus ', '654', 'record_430893872.jpg', 2, 'Экран 15.6" (1366x768) HD LED, глянцевый / Intel Pentium N3540 (2.16 - 2.66 ГГц) / RAM 4 ГБ / HDD 500 ГБ / Intel HD Graphics / без ОД / LAN / Wi-Fi / Bluetooth / веб-камера / Windows 8.1 with Bing / 2.2 кг / черный\r\n', 'X553MA '),
(14, 'Asus ', '675', 'asus_k501lx_dm147t_images_1345789143.jpg', 2, 'Экран 15.6" (1920x1080) Full HD LED, матовый / Intel Core i5-5200U (2.2 ГГц) / RAM 8 ГБ / SSHD 1 ТБ + 16 ГБ / nVidia GeForce GTX 950M, 2 ГБ / Без ОД / LAN / Wi-Fi / Bluetooth / веб-камера / Windows 10 / 2 кг / сумка + мышь / VGA ', 'K501LX '),
(15, 'Acer ', '765', 'acer_nx_g2jeu_002_images_1348181535.jpg', 2, 'Экран 15.6'' (1366x768) HD LED, матовый / AMD E1-2500 (1.4 ГГц) / RAM 4 ГБ / HDD 500 ГБ / Radeon HD 8240 / без ОД / LAN / Wi-Fi / Bluetooth / веб-камера / Linpus / 2.4 кг / черный\r\n', 'Aspire '),
(20, 'Iphone', '300', 'iphone4s.jpg', 3, 'aaafaasdadadas', 's4'),
(21, 'Nokia', '245', 'nokia_n9.jpg', 3, 'adasdas', 'n9'),
(22, 'Персональный компьютер', '2000', 'record_416075902.jpg', 1, 'Intel Core i7-5930K (3.5 - 3.7 ГГц) / RAM 32 ГБ / SSD 240 ГБ + HDD 2 ТБ / 2х nVidia GeForce GTX 980, 4 ГБ / DVD±RW / LAN / кардридер / Windows 8.1\r\nПодробнее: http://hard.rozetka.com.ua/everest_game_pro_9096_4302/p2104812/', 'Everest ');

-- --------------------------------------------------------

--
-- Структура таблиці `topmenu`
--

CREATE TABLE IF NOT EXISTS `topmenu` (
  `item_id` int(11) NOT NULL AUTO_INCREMENT,
  `item_title` varchar(255) NOT NULL,
  `item_link` varchar(50) NOT NULL,
  `item_position` int(11) NOT NULL,
  PRIMARY KEY (`item_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=48 ;

--
-- Дамп даних таблиці `topmenu`
--

INSERT INTO `topmenu` (`item_id`, `item_title`, `item_link`, `item_position`) VALUES
(2, 'Main', '/', 0),
(42, 'efsdf', 'sdf', 0),
(44, 'efsdf', 'sdf', 0),
(47, 'rwerwe', 'werewrw', 0);

-- --------------------------------------------------------

--
-- Структура таблиці `users`
--

CREATE TABLE IF NOT EXISTS `users` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `login` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `city` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `role` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=5 ;

--
-- Дамп даних таблиці `users`
--

INSERT INTO `users` (`id`, `login`, `password`, `name`, `city`, `email`, `role`) VALUES
(1, 'admin', '1', 'aaa', 'TESTTEST', 'TEST@TEST', 'admin'),
(2, 'admin1', '1', '1', '1', 'авіаві', 'user'),
(3, 'a', '', 'a', 'a', 'a', 'a'),
(4, 't', '1', 'name', 'aa', 'email', 'user');

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
