-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Хост: 127.0.0.1:3306
-- Время создания: Сен 16 2022 г., 23:03
-- Версия сервера: 10.1.48-MariaDB
-- Версия PHP: 7.1.33

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- База данных: `ellapragueredesign`
--

-- --------------------------------------------------------

--
-- Структура таблицы `alltours`
--

CREATE TABLE `alltours` (
  `id` int(11) NOT NULL,
  `tourname` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `tourtype` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `tourdesc` text COLLATE utf8mb4_unicode_ci,
  `tourscat_id` int(11) UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `alltours`
--

INSERT INTO `alltours` (`id`, `tourname`, `tourtype`, `tourdesc`, `tourscat_id`) VALUES
(1, 'Обзорная экскурсия по Праге', 'Пешеходная экскурсия', 'Индивидуальная обзорная экскурсия по Праге включает в себя все основные достопримечательности Чешской столицы. Мы побываем во дворах Пражского Града, увидим собор святого Вита, спустимся на Малую Сторону и пройдёмся по брусчатке древнего Карлова моста. Неотъемлемой частью любой индивидуальной экскурсии является Старый город, где мы послушаем бой “Пражских курантов”. Новый город Пражский тоже не останется в стороне, и в рамках обзорной экскурсии мы его посетим.', 1),
(2, 'Экскурсия по Праге на машине', 'Автопешеходная экскурсия', 'Экскурсия на машине с индивидуальным гидом это, пожалуй, самый оптимальный вариант для тех, кто хочет за один день охватить как можно больше достопримечательностей этого изумительно красивого города. Прага на машине - это прежде всего мобильность и комфорт, которые позволят Вам сполна насладиться всеми красотами Чешской столицы. А я, как индивидуальный гид, с удовольствием поведаю вам увлекательные истории о нашем городе.', 1),
(3, 'Привидения Старого Города', 'Пешеходная экскурсия для детей', 'Вечерняя Прага полна мистики и загадочности. В тёмное время суток, на затянутых туманом узеньких улочках, на каждом углу нас поджидают леденящие душу истории о привидениях и полтергейстах, легенды о Железном Человеке и Скелете Попрошайке, а так же история об одном из любимцев пражан - Безголовом Тамплиере. Ходят слухи, что иногда их можно повстречать, но не переживайте, у них добрые сердца, так что экскурсия по мистической Праге абсолютно безопасна.', 1),
(4, 'Вышеград', 'Пешеходная экскурсия', 'Вышеград - это крепостной комплекс, который находится на правом берегу реки Влтава, недалеко от центра города. По преданию именно здесь легендарная княжна Либуше предсказала расцвет и славу будущей столице Чешской Республики. Во время нашей экскурсии мы увидим старинную ротонду, полюбуемся шикарными видами на Прагу с крепостных стен комплекса, послушаем легенды и побываем на знаменитом кладбище, где покоятся выдающиеся деятели чешской политики и искусства.', 1),
(5, 'Чешский Крумлов и замок Глубока-над-Влтавой', 'Выездная экскурсия на машине', 'Южная Чехия прекрасна во всех отношениях. Ну а жемчужиной всего региона является конечно же уютный донельзя монументальный красавец - город Чешский Крумлов. Мы с Вами прогуляемся по историческому центру города и посетим старинную крепость, где увидим много всего интересного: от оружия эпохи тридцатилетней войны до гималайских медведей. Так же в эту поездку входит осмотр крепости Глубока над Влтавой. Пожалуй, это единственный в своем стиле замок во всей Чехии.', 2),
(7, 'Дрезден — Флоренция на Эльбе', 'Выездная экскурсия на машине', 'Дрезден. Милый прекрасный Дрезден. Он пережил многое, но, не смотря на свою тяжелую судьбу, он всё равно блистает и заставляет нас, туристов, ходить по его уютным улочкам разевая рты. Мы с Вами погуляем по центру \"красавца на Эльбе\" и выйдем на набережную откуда открывается чудесный вид. Побываем в садах Цвингера и увидим Фрауэнкирхе, полюбуемся Дворцом-резиденцией и Альбертинумом. Не обойдут нас стороной и немецкие колбаски с пивком!', 4),
(8, 'Дрезден и крепость Кёнигштайн', 'Выездная экскурсия на машине', 'Посреди живописного пейзажа Саксонской Швейцарии почти на 40 метров возвышается столовая гора Кёнигштайн, на которой стоит одноименная крепость. Мощь и монументальность этого сооружения поражает. С 16-го века здесь проходила граница Саксонии, и крепость часто достраивали и перестраивали, поэтому здесь перемешалось много архитектурных стилей от готики до барокко, но все они гармонично уложились в этот ансамбль. В рамках нашей индивидуальной экскурсии мы посетим и Дрезден.', 4),
(9, 'Мейсен и  Морицбург', 'Выездная экскурсия на машине', 'Героями этого индивидуального выездного тура станут два совершенно уникальных места в Саксонии. Это замок Морицбург и городок Мейсен. История этого региона пестра и неоднозначна, как и вся история Германии. Здесь было место и героям, и кулуарным интригам, и предательствам, и славе. Мейсен, как и Морицбург могут многое о себе рассказать и оставить неизгладимое впечатление о себе, после чего, Вы обязательно захотите сюда вернуться, и не раз.', 4),
(10, 'Саксония на день: Дрезден и Мейсен', 'Выездная экскурсия на машине', 'О Дрездене и Мейсене можно говорить бесконечно. Эти места обладают настолько богатым прошлым, что разобраться во всём быстро просто не получится. Поэтому я разработала специальную экскурсию на целый день, в которой постараюсь дать максимум информации о том, как творилась история Саксонии. В этой поездке мы с Вами полюбуемся красотами Саксонского зодчества и увидим все достопримечательности этих двух поистине шедевральных мест.', 4),
(11, 'Карловы Вары и замок Локет', 'Выездная экскурсия на машине', 'Выездная экскурсия из Праги в Карловы Вары позволит Вам прогуляться по исторической части чешского курорта и полюбоваться красотами миниатюрных разноцветных домиков. Так же у Вас будет возможность отведать воды из минеральных источников, которые размещены в открытых колоннадах. Затем мы с Вами отправимся в замок Локет, который находится в 15 километрах от исторического центра Карловых Вар. Красота и монументальность этого замка не поддается никаким описаниям.', 3),
(13, 'Кутна Гора, Костехранилище и замок Чешский Штернберк', 'Выездная экскурсия на машине', 'Выездной индивидуальный тур в Кутну Гору - милый уютный городок недалеко от Праги. Чем известно это место? Кроме дворцов, соборов и просто шикарных видов, тут есть готическая часовня, в крипте которой хранятся… кости. Да - да, самые настоящие человеческие кости, из которых выложены орнаменты, собрана люстра и составлены различные инсталяции. Это прсото нужно видеть! А на обратном пути мы с Вами заедем в старинный замок Чешский Штернберк.', 5),
(14, 'Замки Богемии: Карлштейн и Конопиште', 'Выездная экскурсия на машине', 'В этой выездной индивидуальной экскурсии первой точкой станет детище великого короля Карла IV - крепость Карлштейн. Она стоит на высокой скале, откуда открываются просто сумасшедшие виды на окрестности. После Карлштейна мы обязательно поедем в другой чешский замок, семейное гнездо Франца Фердинанда д’Эсте - Конопиште, где у вас будет возможность осмотреть охотничьи владения Габсбургов, посмотреть на павлинов и попробовать вкуснейшие блюда, приготовленные по охотничьим рецептам.', 5),
(15, 'Природные красоты Моравии', 'Выездная экскурсия на машине', 'Увлекательная индивидуальная экскурсия по красотам Моравии. Мало кто знает, но Чехия сильна не только в пиве, но и в вине. На Моравии делают просто превосходное, в основном сухое, вино. В рамках этой экскурсии мы посетим пропасть-пещеру “Мацоха”. Это карстовый провал, глубина которого достигает невероятных 180-и метров. В этой пешере есть и озеро, а в окрестностях можно увидеть реликтовые растения.', 5),
(16, 'Чешское СПА - Пивные ванны Chodovar и ресторан ', 'Выездной гастрономический тур', 'Пивные СПА в Чехии это отдых с пивом и… непосредственно в пиве. Это уникальная целительная практика, основой которой являются полезные действующие вещества самого хмеля. Здесь можно найти и хмельные (“пивные”) ванны и различные массажи от стоп до массажа горячими камнями, а после - отведать традиционной чешской кухни в подземных лабиринтах ресторана “В Скале”. Это выездной индивидуальный тур на автомобиле, и дорога до Ходовара занимает примерно 2 часа.', 6),
(17, 'Средневековая корчма Детенице', 'Выездной гастрономический тур', 'Для всех тех, кто хочет узнать, как же в средние века проходили застолья в Чехии и как выглядели корчмы, индивидуальный тур в “Детенице” будет лучшим выбором. Здесь вас встретят традиционными чешскими блюдами и отменным пивом, а насыщенная развлекательная программа в средневековом стиле точно не даст заскучать.', 6);

-- --------------------------------------------------------

--
-- Структура таблицы `alltours_reviews`
--

CREATE TABLE `alltours_reviews` (
  `id` int(11) UNSIGNED NOT NULL,
  `alltours_id` int(11) UNSIGNED DEFAULT NULL,
  `reviews_id` int(11) UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `alltours_reviews`
--

INSERT INTO `alltours_reviews` (`id`, `alltours_id`, `reviews_id`) VALUES
(24, 1, 2),
(31, 1, 4),
(33, 1, 5),
(6, 1, 18),
(10, 1, 20),
(13, 1, 21),
(20, 2, 1),
(1, 2, 16),
(2, 2, 17),
(25, 3, 2),
(14, 3, 21),
(28, 4, 3),
(32, 4, 4),
(21, 5, 1),
(26, 5, 2),
(29, 5, 3),
(3, 5, 17),
(17, 5, 20),
(18, 5, 22),
(22, 7, 1),
(4, 7, 17),
(7, 7, 19),
(19, 9, 22),
(34, 10, 5),
(8, 10, 19),
(11, 10, 20),
(15, 10, 21),
(23, 11, 1),
(35, 11, 5),
(5, 11, 17),
(12, 12, 20),
(16, 12, 21),
(27, 13, 2),
(9, 14, 19),
(30, 17, 3);

-- --------------------------------------------------------

--
-- Структура таблицы `devices`
--

CREATE TABLE `devices` (
  `id` int(11) NOT NULL,
  `mobile` int(11) DEFAULT NULL,
  `tablet` int(11) DEFAULT NULL,
  `desktop` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `devices`
--

INSERT INTO `devices` (`id`, `mobile`, `tablet`, `desktop`) VALUES
(1, 32, 15, 69);

-- --------------------------------------------------------

--
-- Структура таблицы `messagestats`
--

CREATE TABLE `messagestats` (
  `id` int(11) NOT NULL,
  `datetime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `name` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `message` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `source` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `medium` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `campaign` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `keyword` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `unread` int(11) DEFAULT NULL,
  `selected_tour` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `messagestats`
--

INSERT INTO `messagestats` (`id`, `datetime`, `name`, `email`, `phone`, `message`, `source`, `medium`, `campaign`, `keyword`, `unread`, `selected_tour`) VALUES
(35, '2022-08-05 19:29:25', 'Sveta Haikin', 'haikin.al81@gmail.com', '0544899428', 'Добрый вечер. Интересует тур в Крумлов. Нас 2 взрослых и 2 детей. Интересуют подробности.\r\nСпасибо.\r\nАлекс.', 'google', 'cpc', 'prague', 'тур по праге', NULL, NULL),
(36, '2022-08-08 18:32:30', 'Анна', 'anya.panshyna@gmail.com', '+49 175 9653729', 'На 09.08, либо же на 10.08; количество людей - 3', 'google', 'cpc', 'germany', 'экскурсии по праге', NULL, NULL),
(37, '2022-08-13 14:23:40', 'Ольга', 'olya.polina@gmail.com', '+380633525867', '13.08 или 14.08', 'google', 'cpc', 'germany', 'экскурсии по праге', NULL, NULL),
(38, '2022-08-17 15:24:43', 'Люда Кривущенко', 'lydnila25@gmail.com', '0984677572', 'Добрий день18 або 19 серпня  цікавить екскурсія карлови вари', 'google', 'cpc', 'prague', 'экскурсии прага', NULL, NULL),
(39, '2022-08-17 18:40:14', 'Наталья', 'nataliia.velemets@sgs.com', '+38 (050) 395 37 62', 'Добрый вечер, Ильвира! Интересует обзорная эксурсия по праге на 23 августа, 2 человека. Что можете предложить? Спасибо большое!', 'google', 'cpc', 'prague', 'заказать экскурсию в праге', NULL, NULL),
(40, '2022-08-19 17:00:53', 'Сергей', 'unitacdc.ahzaka@gmail.com', '972546708638', '20 по 25', 'google', 'cpc', 'prague', 'экскурсии прага', NULL, NULL),
(41, '2022-08-20 07:10:06', 'Максим', 'mvarsavky1509@gmail.com', '+972523948132', 'Добрый день Ильвира\r\nХотим с семьей приехать в Прагу на Рождество.хотим экскурсию по Поаге.карловы вары.вена и дрездон можно ли это организовать и сколко это примерно стоит. Спасибо.', 'google', 'cpc', 'israel', 'частные гиды в праге', NULL, NULL),
(42, '2022-08-24 18:23:18', 'Anna', 'Kabo.alexandra@gmail.com', '+972527868583', '25/8 Крумлов', 'google', 'cpc', 'prague', 'тур прага карловы вары', NULL, NULL),
(44, '2022-08-29 19:45:02', 'Катерина', 'erahmanova78@yahoo.com', '773452392', 'Добрый день,  возможна ли экскурсия в Дрезден,  1 человек? В какие дни и стоимость? Спасибо за ответ.', 'google', 'cpc', 'prague', 'экскурсия из праги в дрезден', NULL, NULL),
(45, '2022-08-30 00:55:46', 'ЖАННЕТА', 'jannetadin1968@gmail.com', '+972547603253', '19.12.22-23.12.22', 'Unknown or direct', 'Unknown', 'Unknown', 'Unknown', NULL, NULL),
(46, '2022-08-31 13:10:43', 'Евгения', 'baltaksa.e@gmail.com', '+972585202283', 'Интересует экскурсия в Дрезден для семьи из 4чел\r\nПримерно 18 сентября', 'google', 'cpc', 'israel', 'заказать экскурсию в праге', NULL, NULL),
(47, '2022-09-05 07:18:21', 'Алла', 'elk@vir-tec.net', '972 544413459', 'Здравтвуйте. Мы с мужем планируем поездку в Прагу из Израиля с 20.12 до 25.12. Заинтересованы в трансфере из аэропорта в гостинницу, а также в организации экскурсий по Праге, рекомендации и заказе ресторанов и развлекательных мероприятий. будем рады получить предложения.  Спасибо, Алла', 'google', 'cpc', 'israel', 'индивидуальные экскурсии по праге', NULL, NULL),
(48, '2022-09-07 04:25:52', 'Татьяна Луценко', 'lutcenko_t@icloud.com', '+79123320632', 'Здравствуйте!\r\nЕсли возможно организовать экскурсию по Еврейскому кварталу 07.09.22 в 12:00,  участники - трое взрослых, буду очень благодарна!!!', 'google', 'cpc', 'prague', 'индивидуальные экскурсии прага', NULL, NULL),
(49, '2022-09-16 19:58:28', 'Alexey Mavlin', 'falconfinance.alex@gmail.com', '773214234', 'Нужна экскурсия', 'http://localhost:3000/', NULL, NULL, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Структура таблицы `messendgers`
--

CREATE TABLE `messendgers` (
  `id` int(11) UNSIGNED NOT NULL,
  `time` int(11) UNSIGNED DEFAULT NULL,
  `button` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `source` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `type` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `campaign` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `keyword` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `messendgers`
--

INSERT INTO `messendgers` (`id`, `time`, `button`, `source`, `type`, `campaign`, `keyword`) VALUES
(11, 1663176661, 'WhatsApp', 'Direct', NULL, NULL, 'индивидуальный гид в праге на русском языке'),
(12, 1663177584, 'Telegram', 'google', 'cpc', 'prague', 'экскурсии в праге'),
(13, 1663178108, 'WhatsApp', 'google', 'cpc', 'prague', 'обзорная экскурсия по праге');

-- --------------------------------------------------------

--
-- Структура таблицы `nav`
--

CREATE TABLE `nav` (
  `id` int(11) NOT NULL,
  `position` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `linkname` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `link` text COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `nav`
--

INSERT INTO `nav` (`id`, `position`, `linkname`, `link`) VALUES
(1, 'header_first', 'Экскурсии', '#tours'),
(2, 'header_second', 'Обо мне', '#about'),
(3, 'header_third', 'Отзывы', '#reviews'),
(4, 'header_fourth', 'Контакты', '#contacts'),
(5, 'header_phone', '+420 777 655 867', 'https://wa.me/420777655867'),
(6, 'footer_first', 'Гид в Праге', '#'),
(7, 'footer_second', 'Экскурсии', '#tours'),
(8, 'footer_third', 'Контакты', '#contacts'),
(9, 'footer_fourth', 'Администратор', 'login');

-- --------------------------------------------------------

--
-- Структура таблицы `referrers`
--

CREATE TABLE `referrers` (
  `id` int(11) UNSIGNED NOT NULL,
  `source` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `time` int(11) UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `referrers`
--

INSERT INTO `referrers` (`id`, `source`, `time`) VALUES
(1, 'http://192.168.0.7:3000/admin', 1663152743),
(2, 'http://localhost:3000/admin', 1663178165),
(3, 'http://localhost:3000/stats', 1663178438),
(4, 'http://localhost:3000/messages', 1663239187),
(5, 'http://localhost:3000/stats', 1663243332),
(6, 'http://localhost:3000/stats', 1663243333),
(7, 'http://localhost:3000/', 1663243337),
(8, 'http://localhost:3000/', 1663243341),
(9, 'http://localhost:3000/admin', 1663243344),
(10, 'http://localhost:3000/admin', 1663243348),
(11, 'http://localhost:3000/stats', 1663243354),
(12, 'http://localhost:3000/stats', 1663243358),
(13, 'http://localhost:3000/alltours', 1663243361),
(14, 'http://localhost:3000/alltours', 1663243362),
(15, 'http://localhost:3000/stats', 1663243366),
(16, 'http://localhost:3000/stats', 1663243695),
(17, 'http://localhost:3000/stats', 1663243701),
(18, 'http://localhost:3000/stats', 1663243702),
(19, 'http://localhost:3000/alltours', 1663243706),
(20, 'http://localhost:3000/alltours', 1663243707),
(21, 'http://localhost:3000/stats', 1663243711),
(22, 'http://localhost:3000/stats', 1663243715),
(23, 'http://localhost:3000/', 1663243718),
(24, 'http://localhost:3000/', 1663243754),
(25, 'http://localhost:3000/admin', 1663243757),
(26, 'http://localhost:3000/admin', 1663243759),
(27, 'http://localhost:3000/stats', 1663243762),
(28, 'http://localhost:3000/stats', 1663243792),
(29, 'http://localhost:3000/stats', 1663243795),
(30, 'http://localhost:3000/stats', 1663243877),
(31, 'http://localhost:3000/stats', 1663243880),
(32, 'http://localhost:3000/stats', 1663243889),
(33, 'http://localhost:3000/stats', 1663243892),
(34, 'http://localhost:3000/stats', 1663243895),
(35, 'http://localhost:3000/', 1663243899),
(36, 'http://localhost:3000/', 1663243902),
(37, 'http://localhost:3000/', 1663243905),
(38, 'http://localhost:3000/login', 1663243909),
(39, 'http://localhost:3000/login', 1663243927),
(40, 'http://localhost:3000/login', 1663243930),
(41, 'http://localhost:3000/admin', 1663243934),
(42, 'http://localhost:3000/admin', 1663243939),
(43, 'http://localhost:3000/stats', 1663243943),
(44, 'http://localhost:3000/stats', 1663243953),
(45, 'http://localhost:3000/stats', 1663243956),
(46, 'http://localhost:3000/stats', 1663243974),
(47, 'http://localhost:3000/stats', 1663243977),
(48, 'Direct input', 1663243998),
(49, 'http://localhost:3000/', 1663244002),
(50, 'http://localhost:3000/', 1663244017),
(51, 'http://localhost:3000/', 1663244020),
(52, 'http://localhost:3000/login', 1663244023),
(53, 'http://localhost:3000/login', 1663244031),
(54, 'http://localhost:3000/login', 1663244035),
(55, 'http://localhost:3000/admin', 1663244039),
(56, 'http://localhost:3000/admin', 1663244048),
(57, 'http://localhost:3000/stats', 1663244052),
(58, 'http://localhost:3000/admin', 1663244062),
(59, 'http://localhost:3000/stats', 1663244065),
(60, 'http://localhost:3000/admin', 1663244156),
(61, 'http://localhost:3000/stats', 1663244159),
(62, 'Direct input', 1663244172),
(63, 'http://localhost:3000/', 1663244176),
(64, 'http://localhost:3000/', 1663244179),
(65, 'http://localhost:3000/login', 1663244183),
(66, 'http://localhost:3000/login', 1663244208),
(67, 'http://localhost:3000/stats', 1663244459),
(68, 'Direct input', 1663337558);

-- --------------------------------------------------------

--
-- Структура таблицы `reviews`
--

CREATE TABLE `reviews` (
  `id` int(11) NOT NULL,
  `name` text COLLATE utf8mb4_unicode_ci,
  `review` text COLLATE utf8mb4_unicode_ci,
  `date` int(11) DEFAULT NULL,
  `avatar` text COLLATE utf8mb4_unicode_ci,
  `unread` int(11) NOT NULL,
  `visible` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `reviews`
--

INSERT INTO `reviews` (`id`, `name`, `review`, `date`, `avatar`, `unread`, `visible`) VALUES
(1, 'Прохорова Татьяна', 'Большое спасибо за экскурсии!) Моей семье все очень понравилось) Приветливая девушка, интересно рассказывает, учитывает все пожелания, было легко, интересно и комфортно) Смело обращайтесь)', 1521229879, '8406075.jpg', 0, 1),
(2, 'Золотых Екатерина', 'Спасибо большое за экскурсию! Было все очень интересно и познавательно, Ильвира рассказывает не сухие факты и даты из истории, а интересные моменты, которые остаются в памяти на долго) плюс отдельное спасибо за наводку, где вкусно поесть и выпить вкусное пиво из эксклюзивных пивоварен)', 1505591479, '3783912.jpg', 0, 1),
(3, 'Гайфуллина Алёна', 'Мы ездили в Прагу 11 мая, на 4 дня до 15го числа! Нам очень понравились экскурсии которые провела нам Ильвира, все было очень интересно и познавательно! В следующий раз обязательно когда приедем в Прагу обратимся к вам!!!', 1494964279, '1143873.jpg', 0, 1),
(4, 'Konakbaeva Ainash', 'Элечка ,спасибо вам огромное ЧЕЛОВЕЧЕСКОЕ!!! Начну с того, что к этой поездке я готовилась тщательно и заранее - уже сказался опыт предыдущих поездок. С особой тщательностью подбирала гида по инету, не надеясь на гида, предлагаемого фирмой. Очень хотелось услышать историю страны и разных достопримечательностей из уст и не в толпе по 30-40 человек! И мне это удалось! Я нашла Ильвиру!!! Просто подалась на улыбчивую девушку с фото и - мне действительно ОЧЕНЬ повезло!!!!\r\n\r\nЗнание истории предмета, хорошо и правильно поставленная русская речь (что, скажите, немаловажно!!), доброжелательность и отзывчивость, интеллегентность и умение слушать - вот что очаровало и пленило нас в ней!!!  До самого отъезда мы звонили ей по любому поводу и ВСЕГДА получали ОЧЕНЬ доброжелательно подробные советы - где, куда и как!!!', 1366141879, '3761645.jpg', 0, 1),
(5, 'Волгин Денис', 'С 10 по 12 октября Ильвира была с нами и мы провели замечательные выходные в Чехии. Спасибо большое за интересные рассказы как про историю страны, так и про современное время! Все очень понравилось!!!', 1508183479, '5906568.jpg', 0, 1);

-- --------------------------------------------------------

--
-- Структура таблицы `spamdetect`
--

CREATE TABLE `spamdetect` (
  `id` int(11) UNSIGNED NOT NULL,
  `email` tinyint(1) UNSIGNED DEFAULT NULL,
  `message` tinyint(1) UNSIGNED DEFAULT NULL,
  `phone` tinyint(1) UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `spamdetect`
--

INSERT INTO `spamdetect` (`id`, `email`, `message`, `phone`) VALUES
(1, NULL, NULL, NULL),
(2, NULL, NULL, NULL),
(3, NULL, NULL, NULL),
(4, NULL, NULL, NULL),
(5, NULL, NULL, NULL),
(6, NULL, NULL, NULL),
(7, NULL, NULL, NULL),
(8, NULL, NULL, NULL),
(9, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Структура таблицы `stats`
--

CREATE TABLE `stats` (
  `id` int(11) NOT NULL,
  `ip` varchar(25) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `hits` int(11) DEFAULT NULL,
  `source` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `stats`
--

INSERT INTO `stats` (`id`, `ip`, `hits`, `source`) VALUES
(1, '127.0.0.1', 69, NULL),
(2, '192.168.0.7', 5, NULL),
(3, NULL, 1, NULL),
(4, NULL, 1, NULL),
(5, NULL, 1, NULL);

-- --------------------------------------------------------

--
-- Структура таблицы `texts`
--

CREATE TABLE `texts` (
  `id` int(11) NOT NULL,
  `section` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `position` text CHARACTER SET cp1251 NOT NULL,
  `value` text COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `texts`
--

INSERT INTO `texts` (`id`, `section`, `position`, `value`) VALUES
(1, 'main_screen', 'logo_name', 'Ильвира Рахманова'),
(2, 'main_screen', 'logo_desc', 'Лицензированный гид в Праге'),
(3, 'main_screen', 'main_heading', 'Ваш индивидуальный гид в Чехии'),
(4, 'tours', 'main_heading', 'Экскурсии'),
(5, 'tours', 'heading_desc', 'С лицензированным гидом по Чехии и не только'),
(6, 'tours', 'heading_secondary', '16 авторсикх экскурсий'),
(7, 'tours', 'text_desc', 'Для Вашего удобства я разделила свои экскурсии на шесть основных групп, благодаря чему, Вам будет проще ориентироваться в тех направлениях и турах, которые я предлагаю.'),
(8, 'individual_route', 'individual_heading', 'Нужен <span>индивидуальный</span> маршрут?'),
(9, 'individual_route', 'section_desc', 'Напишите мне! И я составлю индивидуальную экскурсионную программу с учетом ваших пожеланий.'),
(10, 'about_me', 'about_main_heading', 'Обо Мне'),
(11, 'about_me', 'about_heading_desc', 'Меня зовут Ильвира.<br>Я лицензированный гид по Чехии'),
(12, 'about_me', 'about_main_text', 'Те, кто уже не раз бывал в Праге, возможно, поймут меня, если я скажу «В Прагу невозможно не влюбиться». Одной этой фразой, пожалуй, можно описать, почему я переехала в этот замечательный город и занимаюсь именно этой деятельностью. Я надеюсь, что в течение наших экскурсий Вы прочувствуете город, и влюбитесь в него, как когда-то влюбилась я.'),
(13, 'about_me', 'about_image', 'aboutMe.jpg'),
(14, 'about_me', 'about_addheading_one', 'Индивидуальные экскурсии'),
(15, 'about_me', 'about_addheading_two', 'Трансферы из аэропорта'),
(16, 'about_me', 'about_addheading_three', 'Больше чем просто туризм'),
(17, 'about_me', 'about_addtext_one', 'Я организовываю индивидуальные экскурсии по Праге и Чехии, а так же выездные индивидуальные туры из Праги по странам ближнего зарубежья. Например, в Дрезден (Германия). Каждая экскурсия, которую я провожу, максимально нацелена на пожелания и потребности туристов, и это позволяет гостям Чехии с головой окунуться в атмосферу этой замечательной страны.'),
(18, 'about_me', 'about_addtext_two', 'Из аэропорта Праги можно добраться до города на общественном транспорте, но, как правило, это связано с некоторыми трудностями. Во-первых нужно раздобыть билет на транспорт, во-вторых найти нужную остановку, а в-третьих разобраться с тем, какой автобус куда едет, и какой Вам подойдёт лучше всего. Здесь Вам на помощь может прийти услуга индивидуального трансфера, благодаря которой вы сможете расслабится после перелёта и наслаждаться дорогой по Праге до отеля из окна комфортного автомобиля.'),
(19, 'about_me', 'about_addtext_three', 'Экскурсии для меня это не просто работа. Это увлечение всей жизни и страсть, которая приносит мне удовольствие. Я всегда рада видеть улыбки и неподдельный интерес на лицах своих туристов. Проводя свои индивидуальные туры, я всегда стараюсь дать гостям Праги максимум полезной и не сухой информации, посоветовать лучшие места для приятного времяпрепровождения и позаботиться об удобстве и комфорте своих “подопечных”.'),
(20, 'reviews', 'reviews_main_heading', 'Отзывы'),
(21, 'contacts', 'contacts_main_heading', 'Свяжитесь со мной'),
(22, 'contacts', 'contacts_main_desc', 'Если Вы хотите заказать экскурсию или Вам нужна помощь по поводу встрече в аэропорту, трансфера в Праге или её окрестностях - смело пишите мне. Я отвечу сразу, как прочитаю ваше сообщение.'),
(23, 'contacts', 'contacts_expl', 'Ваши данные не будут опубликованы или переданы третьим лицам.'),
(24, 'contacts', 'contacts_call', 'Не хотите заполнять форму?<br><br>Свяжитесь со мной в WhatsApp / Viber или звоните по телефону: <a href=\"#\" class=\"contacts__call--link\">+420-777-655-867</a>');

-- --------------------------------------------------------

--
-- Структура таблицы `tourscat`
--

CREATE TABLE `tourscat` (
  `id` int(11) NOT NULL,
  `cat_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `cat_heading` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `background` text COLLATE utf8mb4_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `tourscat`
--

INSERT INTO `tourscat` (`id`, `cat_name`, `cat_heading`, `background`) VALUES
(1, 'Прага', 'Королева восточной Европы', 'toursPragueBg1.jpg'),
(2, 'Чешский Крумлов', 'Жемчужина Южной Чехии', 'toursCeskyKrumlovBg.jpg'),
(3, 'Карловы Вары', 'Самый известный курорт Чехии', 'toursKarlovyVaryBg.jpg'),
(4, 'Дрезден', 'Красоты Саксонии', 'toursDresdenBg.jpg'),
(5, 'Замки и природа', 'Лучшее в Чехии', 'toursKarlstejnBg.jpg'),
(6, 'Еда и пиво', 'Лучшее из Чехии для гурманов', 'toursBeerBg.jpg');

-- --------------------------------------------------------

--
-- Структура таблицы `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `loginname` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `password` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `role` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `recovery_code` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `users`
--

INSERT INTO `users` (`id`, `email`, `name`, `loginname`, `password`, `role`, `recovery_code`) VALUES
(1, 'alex.mavlin@triaconst.cz', 'Alex Mavlin', 'afalcon', 'A9101104265falkon', 'admin', '9DPlmNoxULRK2AG5adZtEb0uV1JiCk');

--
-- Индексы сохранённых таблиц
--

--
-- Индексы таблицы `alltours`
--
ALTER TABLE `alltours`
  ADD PRIMARY KEY (`id`),
  ADD KEY `index_foreignkey_alltours_tourscat` (`tourscat_id`);

--
-- Индексы таблицы `alltours_reviews`
--
ALTER TABLE `alltours_reviews`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `UQ_be4e5b868a623020c25bc604769bf6113133afbf` (`alltours_id`,`reviews_id`),
  ADD KEY `index_foreignkey_alltours_reviews_alltours` (`alltours_id`),
  ADD KEY `index_foreignkey_alltours_reviews_reviews` (`reviews_id`);

--
-- Индексы таблицы `devices`
--
ALTER TABLE `devices`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `messagestats`
--
ALTER TABLE `messagestats`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `messendgers`
--
ALTER TABLE `messendgers`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `nav`
--
ALTER TABLE `nav`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `referrers`
--
ALTER TABLE `referrers`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `reviews`
--
ALTER TABLE `reviews`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `spamdetect`
--
ALTER TABLE `spamdetect`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `stats`
--
ALTER TABLE `stats`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `texts`
--
ALTER TABLE `texts`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `tourscat`
--
ALTER TABLE `tourscat`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT для сохранённых таблиц
--

--
-- AUTO_INCREMENT для таблицы `alltours`
--
ALTER TABLE `alltours`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT для таблицы `alltours_reviews`
--
ALTER TABLE `alltours_reviews`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=36;

--
-- AUTO_INCREMENT для таблицы `devices`
--
ALTER TABLE `devices`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT для таблицы `messagestats`
--
ALTER TABLE `messagestats`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=50;

--
-- AUTO_INCREMENT для таблицы `messendgers`
--
ALTER TABLE `messendgers`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT для таблицы `nav`
--
ALTER TABLE `nav`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT для таблицы `referrers`
--
ALTER TABLE `referrers`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=69;

--
-- AUTO_INCREMENT для таблицы `reviews`
--
ALTER TABLE `reviews`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT для таблицы `spamdetect`
--
ALTER TABLE `spamdetect`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT для таблицы `stats`
--
ALTER TABLE `stats`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT для таблицы `texts`
--
ALTER TABLE `texts`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;

--
-- AUTO_INCREMENT для таблицы `tourscat`
--
ALTER TABLE `tourscat`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT для таблицы `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
