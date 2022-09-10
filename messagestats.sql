-- phpMyAdmin SQL Dump
-- version 5.0.4
-- https://www.phpmyadmin.net/
--
-- Хост: kochanski.ch.inthin
-- Время создания: Сен 10 2022 г., 12:50
-- Версия сервера: 10.5.15-MariaDB-0+deb11u1-log
-- Версия PHP: 7.3.31-1~deb10u1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- База данных: `triaconstcz01`
--

-- --------------------------------------------------------

--
-- Структура таблицы `messagestats`
--

CREATE TABLE `messagestats` (
  `id` int(11) NOT NULL,
  `datetime` timestamp NOT NULL DEFAULT current_timestamp(),
  `name` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `message` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `source` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `medium` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `campaign` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `keyword` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `messagestats`
--

INSERT INTO `messagestats` (`id`, `datetime`, `name`, `email`, `phone`, `message`, `source`, `medium`, `campaign`, `keyword`) VALUES
(1, '2022-08-01 16:30:42', 'Леонид', 'blyachman@gmail.com', '+972508946755', '2.8.22. 4 человека  в Саксонскую Швейцарию\r\nЗавтра \r\nЕсть экскурсия?', 'google', 'cpc', 'prague', 'экскурсии в праге на русском'),
(35, '2022-08-05 19:29:25', 'Sveta Haikin', 'haikin.al81@gmail.com', '0544899428', 'Добрый вечер. Интересует тур в Крумлов. Нас 2 взрослых и 2 детей. Интересуют подробности.\r\nСпасибо.\r\nАлекс.', 'google', 'cpc', 'prague', 'тур по праге'),
(36, '2022-08-08 18:32:30', 'Анна', 'anya.panshyna@gmail.com', '+49 175 9653729', 'На 09.08, либо же на 10.08; количество людей - 3', 'google', 'cpc', 'germany', 'экскурсии по праге'),
(37, '2022-08-13 14:23:40', 'Ольга', 'olya.polina@gmail.com', '+380633525867', '13.08 или 14.08', 'google', 'cpc', 'germany', 'экскурсии по праге'),
(38, '2022-08-17 15:24:43', 'Люда Кривущенко', 'lydnila25@gmail.com', '0984677572', 'Добрий день18 або 19 серпня  цікавить екскурсія карлови вари', 'google', 'cpc', 'prague', 'экскурсии прага'),
(39, '2022-08-17 18:40:14', 'Наталья', 'nataliia.velemets@sgs.com', '+38 (050) 395 37 62', 'Добрый вечер, Ильвира! Интересует обзорная эксурсия по праге на 23 августа, 2 человека. Что можете предложить? Спасибо большое!', 'google', 'cpc', 'prague', 'заказать экскурсию в праге'),
(40, '2022-08-19 17:00:53', 'Сергей', 'unitacdc.ahzaka@gmail.com', '972546708638', '20 по 25', 'google', 'cpc', 'prague', 'экскурсии прага'),
(41, '2022-08-20 07:10:06', 'Максим', 'mvarsavky1509@gmail.com', '+972523948132', 'Добрый день Ильвира\r\nХотим с семьей приехать в Прагу на Рождество.хотим экскурсию по Поаге.карловы вары.вена и дрездон можно ли это организовать и сколко это примерно стоит. Спасибо.', 'google', 'cpc', 'israel', 'частные гиды в праге'),
(42, '2022-08-24 18:23:18', 'Anna', 'Kabo.alexandra@gmail.com', '+972527868583', '25/8 Крумлов', 'google', 'cpc', 'prague', 'тур прага карловы вары'),
(43, '2022-08-26 21:36:58', 'Yana', 'grushkoyana1@gmail.com', '+380996767100', '24.09', 'google', 'cpc', 'germany', 'заказать экскурсию в праге'),
(44, '2022-08-29 19:45:02', 'Катерина', 'erahmanova78@yahoo.com', '773452392', 'Добрый день,  возможна ли экскурсия в Дрезден,  1 человек? В какие дни и стоимость? Спасибо за ответ.', 'google', 'cpc', 'prague', 'экскурсия из праги в дрезден'),
(45, '2022-08-30 00:55:46', 'ЖАННЕТА', 'jannetadin1968@gmail.com', '+972547603253', '19.12.22-23.12.22', 'Unknown or direct', 'Unknown', 'Unknown', 'Unknown'),
(46, '2022-08-31 13:10:43', 'Евгения', 'baltaksa.e@gmail.com', '+972585202283', 'Интересует экскурсия в Дрезден для семьи из 4чел\r\nПримерно 18 сентября', 'google', 'cpc', 'israel', 'заказать экскурсию в праге'),
(47, '2022-09-05 07:18:21', 'Алла', 'elk@vir-tec.net', '972 544413459', 'Здравтвуйте. Мы с мужем планируем поездку в Прагу из Израиля с 20.12 до 25.12. Заинтересованы в трансфере из аэропорта в гостинницу, а также в организации экскурсий по Праге, рекомендации и заказе ресторанов и развлекательных мероприятий. будем рады получить предложения.  Спасибо, Алла', 'google', 'cpc', 'israel', 'индивидуальные экскурсии по праге'),
(48, '2022-09-07 04:25:52', 'Татьяна Луценко', 'lutcenko_t@icloud.com', '+79123320632', 'Здравствуйте!\r\nЕсли возможно организовать экскурсию по Еврейскому кварталу 07.09.22 в 12:00,  участники - трое взрослых, буду очень благодарна!!!', 'google', 'cpc', 'prague', 'индивидуальные экскурсии прага');

--
-- Индексы сохранённых таблиц
--

--
-- Индексы таблицы `messagestats`
--
ALTER TABLE `messagestats`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT для сохранённых таблиц
--

--
-- AUTO_INCREMENT для таблицы `messagestats`
--
ALTER TABLE `messagestats`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=49;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
