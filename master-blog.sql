-- phpMyAdmin SQL Dump
-- version 5.1.0
-- https://www.phpmyadmin.net/
--
-- Хост: 127.0.0.1:3306
-- Время создания: Авг 12 2022 г., 13:25
-- Версия сервера: 8.0.24
-- Версия PHP: 8.0.8

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- База данных: `master-blog`
--

-- --------------------------------------------------------

--
-- Структура таблицы `articles`
--

CREATE TABLE `articles` (
  `id` int UNSIGNED NOT NULL,
  `title` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `anons` varchar(250) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `full_text` text CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `date` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `avtor` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb3;

--
-- Дамп данных таблицы `articles`
--

INSERT INTO `articles` (`id`, `title`, `anons`, `full_text`, `date`, `avtor`) VALUES
(2, 'ajknd sjkd,n cjnsdncjsdnc', 'ajknd sjkd,n cjnsdncjsdnc ajknd sjkd,n cjnsdncjsdnc', 'ajknd sjkd,n cjnsdncjsdnc ajknd sjkd,n cjnsdncjsdnc ajknd sjkd,n cjnsdncjsdnc', '1660046344', 'qwerty'),
(3, 'жкдуууууууууууууууууууу', 'жкдуууууууууууууууууууу жкдуууууууууууууууууууужкдуууууууууууууууууууу', 'жкдуууууууууууууууууууужкдуууууууууууууууууууужкдуууууууууууууууууууужкдуууууууууууууууууууу', '1660046571', 'qwerty');

-- --------------------------------------------------------

--
-- Структура таблицы `chat`
--

CREATE TABLE `chat` (
  `id` int UNSIGNED NOT NULL,
  `message` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb3;

-- --------------------------------------------------------

--
-- Структура таблицы `comments`
--

CREATE TABLE `comments` (
  `id` int UNSIGNED NOT NULL,
  `name` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `mess` text CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `article_id` int UNSIGNED NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb3;

--
-- Дамп данных таблицы `comments`
--

INSERT INTO `comments` (`id`, `name`, `mess`, `article_id`) VALUES
(1, 'qwerty', 'google реально крут!!!', 3),
(2, 'qwerty', 'хахахах', 3),
(3, 'Деня', 'сайт хорош', 3);

-- --------------------------------------------------------

--
-- Структура таблицы `users`
--

CREATE TABLE `users` (
  `id` int UNSIGNED NOT NULL,
  `name` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `email` varchar(70) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `login` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `password` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb3;

--
-- Дамп данных таблицы `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `login`, `password`) VALUES
(45, 'lihtarik_2_last', 'romanpodinskij@gmail.com', 'Admin', '212d61859c768a7742e765ea28c49532'),
(77, 'lolc_hic', 'iorktop1gg@gmail.com', 'qwerty', 'bbd70f30a79977a88fae529aa7832e10');

--
-- Индексы сохранённых таблиц
--

--
-- Индексы таблицы `articles`
--
ALTER TABLE `articles`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `chat`
--
ALTER TABLE `chat`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `comments`
--
ALTER TABLE `comments`
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
-- AUTO_INCREMENT для таблицы `articles`
--
ALTER TABLE `articles`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT для таблицы `chat`
--
ALTER TABLE `chat`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=74;

--
-- AUTO_INCREMENT для таблицы `comments`
--
ALTER TABLE `comments`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT для таблицы `users`
--
ALTER TABLE `users`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=78;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
