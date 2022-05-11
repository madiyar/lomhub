-- phpMyAdmin SQL Dump
-- version 5.1.3
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Generation Time: May 11, 2022 at 08:07 PM
-- Server version: 5.6.51
-- PHP Version: 7.1.33

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `lomhub`
--

-- --------------------------------------------------------

--
-- Table structure for table `bookmark`
--

CREATE TABLE `bookmark` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `item_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Dumping data for table `bookmark`
--

INSERT INTO `bookmark` (`id`, `user_id`, `item_id`) VALUES
(1, 183992792, 2),
(2, 183992792, 1);

-- --------------------------------------------------------

--
-- Table structure for table `cat`
--

CREATE TABLE `cat` (
  `id` int(11) NOT NULL,
  `url` varchar(145) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `name` varchar(145) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `ico` varchar(145) COLLATE utf8mb4_unicode_520_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Dumping data for table `cat`
--

INSERT INTO `cat` (`id`, `url`, `name`, `ico`) VALUES
(1, 'smartphone-gadget', 'Смартфоны и гаджеты', 'fa fa-mobile-alt text-success'),
(2, 'computer', 'Компьютеры', 'fa fa-desktop text-dark'),
(3, 'tv-audio-video', 'ТВ, аудио, видео', 'fa fa-headphones-alt text-danger'),
(4, 'photo-drone', 'Фото и дроны', 'fa fa-camera-retro text-warning'),
(5, 'home-tech', 'Бытовая техника', 'fa fa-home text-info'),
(6, 'bicycle-scooter', 'Транспорт', 'fa fa-bicycle text-primary'),
(7, 'other', 'Другие товары', 'fa fa-list text-secondary');

-- --------------------------------------------------------

--
-- Table structure for table `filter`
--

CREATE TABLE `filter` (
  `id` int(11) NOT NULL,
  `name` varchar(145) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `subcat_id` int(11) NOT NULL,
  `url` varchar(145) COLLATE utf8mb4_unicode_520_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Dumping data for table `filter`
--

INSERT INTO `filter` (`id`, `name`, `subcat_id`, `url`) VALUES
(1, 'Смартфоны Apple', 1, 'iphone'),
(2, 'Смартфоны Samsung', 1, 'samsung'),
(3, 'Недорогие смартфоны', 1, 'cheap'),
(4, 'Планшеты Apple', 2, 'apple'),
(5, 'Графические планшеты', 2, 'gtablet'),
(6, 'Электронные книги', 2, 'ebook'),
(7, 'Apple Watch', 3, 'apple'),
(8, 'Smart часы', 3, 'smart'),
(9, 'Фитнес трекеры', 3, 'fitness'),
(10, 'VR шлемы', 4, 'vr'),
(11, 'Macbook', 5, 'macbook'),
(12, 'Игровые ноутбуки', 5, 'game'),
(13, 'Моноблоки', 6, 'mono'),
(14, 'Игровые ПК', 6, 'game'),
(15, 'Apple', 6, 'apple'),
(16, 'Телевизоры', 7, 'tv'),
(17, 'Наушники', 7, 'headphones'),
(18, 'Дроны', 8, 'drones'),
(19, 'Камеры', 8, 'camera'),
(20, 'Холодильники', 9, 'fridge'),
(21, 'Велосипеды', 10, 'bike'),
(22, 'Золотые украшения', 11, 'gold');

-- --------------------------------------------------------

--
-- Table structure for table `info`
--

CREATE TABLE `info` (
  `id` int(11) NOT NULL,
  `url` varchar(145) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `title` varchar(150) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `text` text COLLATE utf8mb4_unicode_520_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Dumping data for table `info`
--

INSERT INTO `info` (`id`, `url`, `title`, `text`) VALUES
(1, 'error_404', 'Страница не найдена', 'Страница не найдена'),
(2, 'error_auth', 'Вы не авторизованы', 'Вы не авторизованы'),
(3, 'about-us', 'О нас', 'О нас');

-- --------------------------------------------------------

--
-- Table structure for table `item`
--

CREATE TABLE `item` (
  `id` int(11) NOT NULL,
  `title` varchar(199) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `info` text COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `price` varchar(49) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `subcat_id` int(11) NOT NULL,
  `filters` text COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `photos` text COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `lom_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Dumping data for table `item`
--

INSERT INTO `item` (`id`, `title`, `info`, `price`, `subcat_id`, `filters`, `photos`, `lom_id`) VALUES
(1, 'Samsung Galaxy A7 (2018) 128 Gb', 'Samsung Galaxy A7 (2018) 128 Gb', '119990', 1, ';2', '~1.png~2.png~3.png', 1),
(2, 'Apple iPad 4, 32 Gb', 'Apple iPad 4, 32 Gb', '40000', 2, ';4', '~4.png~5.png~6.png', 1),
(3, 'LCD Writing Tablet', 'LCD Writing Tablet', '5900', 2, ';5', '~7.png~8.png', 2),
(4, 'iMac 21', 'iMac 21', '498100', 6, ';15', '~9.png~10.png~11.png', 2);

-- --------------------------------------------------------

--
-- Table structure for table `lombard`
--

CREATE TABLE `lombard` (
  `id` int(11) NOT NULL,
  `name` varchar(145) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `phone` varchar(16) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `address` varchar(145) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `photo` varchar(145) COLLATE utf8mb4_unicode_520_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Dumping data for table `lombard`
--

INSERT INTO `lombard` (`id`, `name`, `phone`, `address`, `photo`) VALUES
(1, 'Актив Ломбард', '+77777777777', 'Гоголя, 91', 'lom.png'),
(2, 'М-Ломбард', '+77052587469', 'Толе би, 251', 'mlom.png');

-- --------------------------------------------------------

--
-- Table structure for table `poster`
--

CREATE TABLE `poster` (
  `id` int(11) NOT NULL,
  `image` text COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `text` text COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `url` varchar(145) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `lom_id` int(11) NOT NULL,
  `home` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Dumping data for table `poster`
--

INSERT INTO `poster` (`id`, `image`, `text`, `url`, `lom_id`, `home`) VALUES
(1, 'slide.png', 'Практический новый без единой царапины', '/product/1-samsung-galaxy-a7-2018-128gb', 1, 1),
(2, 'slide2.png', '', '/product/4-imac-215', 2, 1);

-- --------------------------------------------------------

--
-- Table structure for table `reklama`
--

CREATE TABLE `reklama` (
  `id` int(11) NOT NULL,
  `title` varchar(145) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `info` text COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `photo` text COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `url` varchar(145) COLLATE utf8mb4_unicode_520_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Dumping data for table `reklama`
--

INSERT INTO `reklama` (`id`, `title`, `info`, `photo`, `url`) VALUES
(1, 'Event Time', 'Event Time', 'event-time-ad.png', '/load/event-time'),
(2, 'Tea House', 'Tea House - чайный магазин в Алматы', 'tea-house.gif', 'https://vk.com');

-- --------------------------------------------------------

--
-- Table structure for table `subcat`
--

CREATE TABLE `subcat` (
  `id` int(11) NOT NULL,
  `url` varchar(145) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `name` varchar(145) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `cat_id` int(11) NOT NULL,
  `ico` varchar(145) COLLATE utf8mb4_unicode_520_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Dumping data for table `subcat`
--

INSERT INTO `subcat` (`id`, `url`, `name`, `cat_id`, `ico`) VALUES
(1, 'telephone', 'Смартфоны и телефоны', 1, 'fa fa-mobile-alt'),
(2, 'tablet', 'Планшеты и электронные книги', 1, 'fa fa-tablet-alt'),
(3, 'watch', 'Носимая электроника и часы', 1, 'fa fa-clock'),
(4, 'other', 'Прочие гаджеты', 1, 'fa fa-vr-cardboard'),
(5, 'notebook', 'Ноутбуки', 2, 'fa fa-laptop'),
(6, 'pc', 'Компьютеры ПК', 2, 'fa fa-desktop'),
(7, 'all', 'ТВ и Аудио', 3, 'fa fa-headphones-alt'),
(8, 'all', 'Фото и дроны', 4, 'fa fa-camera-retro'),
(9, 'home', 'Бытовая техника', 5, 'fa fa-home'),
(10, 'transport', 'Транспорт', 6, 'fa fa-bicycle'),
(11, 'jewerly', 'Украшения', 7, 'fa fa-list');

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `id` int(11) NOT NULL,
  `uid` int(11) NOT NULL,
  `first_name` varchar(31) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `last_name` varchar(31) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `city` varchar(31) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `email` varchar(145) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `profile` varchar(31) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `type` int(11) NOT NULL DEFAULT '0',
  `lom_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci COMMENT='0 - покупатель 1 - admin 2 - salecity';

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`id`, `uid`, `first_name`, `last_name`, `city`, `email`, `profile`, `type`, `lom_id`) VALUES
(1, 183992792, 'Madiyar', 'Bolatov', 'Almaty', 'admin@mail.ru', 'https://vk.com/id183992792', 1, NULL),
(2, 277022098, 'Salakhiddin', 'Turdikulov', 'Алматы', 'salo@optech.kz', 'https://vk.com/id277022098', 1, NULL);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `bookmark`
--
ALTER TABLE `bookmark`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `cat`
--
ALTER TABLE `cat`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `filter`
--
ALTER TABLE `filter`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `info`
--
ALTER TABLE `info`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `item`
--
ALTER TABLE `item`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `lombard`
--
ALTER TABLE `lombard`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `poster`
--
ALTER TABLE `poster`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `reklama`
--
ALTER TABLE `reklama`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `subcat`
--
ALTER TABLE `subcat`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `bookmark`
--
ALTER TABLE `bookmark`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `cat`
--
ALTER TABLE `cat`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `filter`
--
ALTER TABLE `filter`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT for table `info`
--
ALTER TABLE `info`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `item`
--
ALTER TABLE `item`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `lombard`
--
ALTER TABLE `lombard`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `poster`
--
ALTER TABLE `poster`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `reklama`
--
ALTER TABLE `reklama`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `subcat`
--
ALTER TABLE `subcat`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
