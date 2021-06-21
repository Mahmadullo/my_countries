-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Хост: 127.0.0.1:3306
-- Время создания: Июн 18 2021 г., 17:55
-- Версия сервера: 10.3.22-MariaDB
-- Версия PHP: 7.4.5

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- База данных: `maga2`
--

-- --------------------------------------------------------

--
-- Структура таблицы `cities`
--

CREATE TABLE `cities` (
  `id` int(11) NOT NULL,
  `name` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `population` bigint(20) DEFAULT NULL,
  `area` double DEFAULT NULL,
  `is_active` tinyint(1) DEFAULT 1,
  `country_id` int(11) NOT NULL,
  `avg` float DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `cities`
--

INSERT INTO `cities` (`id`, `name`, `population`, `area`, `is_active`, `country_id`, `avg`) VALUES
(73, 'Душанбе', 1000000, 127, 1, 1, 7874.02),
(74, 'Худжанд', 181600, 40, 1, 1, 4540),
(75, 'Кулоб', 214700, 35, 1, 1, 6134.29),
(76, 'Хоруг', 30500, 64100, 0, 1, 0.48),
(77, 'Москва', 12678080, 2511, 1, 2, 5049.02),
(78, 'Санкт-Петербург', 539806, 1439, 0, 2, 375.13),
(79, 'Казан', 125739, 515.8, 0, 2, 243.77),
(80, 'Новосибирск', 162531, 502.7, 0, 2, 323.32),
(85, 'Nagoya', 2283289, 326.45, 1, 9, 6994.3),
(86, 'Toyohashi', 377045, 261.35, 1, 9, 1442.68),
(87, 'Okazaki', 371380, 387.24, 1, 9, 959.04),
(88, 'Ichinomiya', 375939, 113.9, 1, 9, 3300.61),
(89, 'Berlin', 260000, 891.1, 0, 5, 291.77),
(90, 'Stuttgart', 634000, 207.4, 1, 5, 3056.89),
(91, 'Hamburg', 1686100, 755.3, 1, 5, 2232.36),
(92, 'München', 1185400, 310.7, 1, 5, 3815.26),
(93, 'London', 7074265, 49.12, 1, 7, 144020),
(94, 'Birmingham', 1020589, 49.42, 1, 7, 20651.3),
(95, 'Leeds', 726939, 49.43, 1, 7, 14706.4),
(96, 'Glasgow', 616430, 47.73, 1, 7, 12914.9),
(97, 'Mumbai', 12442373, 603.4, 1, 10, 20620.4),
(98, 'Delhi', 11034555, 1484, 1, 10, 7435.68),
(99, 'Bangalore', 8443675, 741, 1, 10, 11395),
(100, 'Chennai', 4646732, 426, 1, 10, 10907.8),
(101, 'Zurich', 341730, 47.367, 1, 8, 7214.52),
(102, 'Geneva', 183981, 46.202, 1, 8, 3982.1),
(103, 'Basel‑City', 164488, 47.558, 1, 8, 3458.68),
(104, 'Bern', 121631, 46.948, 1, 8, 2590.76);

-- --------------------------------------------------------

--
-- Структура таблицы `countries`
--

CREATE TABLE `countries` (
  `id` int(11) NOT NULL,
  `name` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `countries`
--

INSERT INTO `countries` (`id`, `name`) VALUES
(1, 'Tajikistan'),
(2, 'Russia'),
(3, 'USA'),
(5, 'Germany'),
(7, 'England'),
(8, 'Switzerland'),
(9, 'China'),
(10, 'India');

--
-- Индексы сохранённых таблиц
--

--
-- Индексы таблицы `cities`
--
ALTER TABLE `cities`
  ADD PRIMARY KEY (`id`),
  ADD KEY `country_id` (`country_id`);

--
-- Индексы таблицы `countries`
--
ALTER TABLE `countries`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT для сохранённых таблиц
--

--
-- AUTO_INCREMENT для таблицы `cities`
--
ALTER TABLE `cities`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=109;

--
-- AUTO_INCREMENT для таблицы `countries`
--
ALTER TABLE `countries`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- Ограничения внешнего ключа сохраненных таблиц
--

--
-- Ограничения внешнего ключа таблицы `cities`
--
ALTER TABLE `cities`
  ADD CONSTRAINT `cities_ibfk_1` FOREIGN KEY (`country_id`) REFERENCES `countries` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
