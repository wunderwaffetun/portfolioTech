-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Хост: 127.0.0.1:3306
-- Время создания: Сен 16 2022 г., 15:20
-- Версия сервера: 8.0.24
-- Версия PHP: 7.1.33

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- База данных: `portfoliodbase`
--

-- --------------------------------------------------------

--
-- Структура таблицы `eltech_anycomment_email_queue`
--

CREATE TABLE `eltech_anycomment_email_queue` (
  `ID` bigint UNSIGNED NOT NULL,
  `post_ID` bigint UNSIGNED DEFAULT NULL,
  `comment_ID` bigint UNSIGNED DEFAULT NULL,
  `subject` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `content` longtext CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `ip` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `user_agent` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `is_sent` tinyint(1) DEFAULT '0',
  `created_at` datetime NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `eltech_anycomment_likes`
--

CREATE TABLE `eltech_anycomment_likes` (
  `ID` bigint UNSIGNED NOT NULL,
  `user_ID` bigint UNSIGNED DEFAULT NULL,
  `comment_ID` bigint UNSIGNED NOT NULL,
  `post_ID` bigint UNSIGNED NOT NULL,
  `type` tinyint(1) DEFAULT '1',
  `user_agent` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `ip` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `liked_at` datetime NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `eltech_anycomment_rating`
--

CREATE TABLE `eltech_anycomment_rating` (
  `ID` bigint UNSIGNED NOT NULL,
  `post_ID` bigint UNSIGNED NOT NULL,
  `user_ID` bigint UNSIGNED DEFAULT NULL,
  `rating` smallint DEFAULT '5',
  `ip` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `user_agent` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` bigint NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `eltech_anycomment_subscriptions`
--

CREATE TABLE `eltech_anycomment_subscriptions` (
  `ID` bigint UNSIGNED NOT NULL,
  `post_ID` bigint UNSIGNED NOT NULL,
  `user_ID` bigint UNSIGNED DEFAULT NULL,
  `email` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `is_active` smallint DEFAULT '1',
  `user_agent` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `ip` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `token` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `confirmed_at` bigint DEFAULT NULL,
  `created_at` bigint NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `eltech_anycomment_uploaded_files`
--

CREATE TABLE `eltech_anycomment_uploaded_files` (
  `ID` bigint UNSIGNED NOT NULL,
  `post_ID` bigint UNSIGNED NOT NULL,
  `user_ID` bigint UNSIGNED DEFAULT NULL,
  `type` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `ip` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `url` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `url_thumbnail` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `user_agent` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` bigint NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `eltech_commentmeta`
--

CREATE TABLE `eltech_commentmeta` (
  `meta_id` bigint UNSIGNED NOT NULL,
  `comment_id` bigint UNSIGNED NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_520_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Дамп данных таблицы `eltech_commentmeta`
--

INSERT INTO `eltech_commentmeta` (`meta_id`, `comment_id`, `meta_key`, `meta_value`) VALUES
(1, 34, 'akismet_history', 'a:3:{s:4:\"time\";d:1663014259.810578;s:5:\"event\";s:12:\"status-trash\";s:4:\"user\";s:5:\"Admin\";}'),
(2, 34, '_wp_trash_meta_status', '1'),
(3, 34, '_wp_trash_meta_time', '1663014259'),
(4, 33, 'akismet_history', 'a:3:{s:4:\"time\";d:1663014259.830898;s:5:\"event\";s:12:\"status-trash\";s:4:\"user\";s:5:\"Admin\";}'),
(5, 33, '_wp_trash_meta_status', '1'),
(6, 33, '_wp_trash_meta_time', '1663014259'),
(7, 32, 'akismet_history', 'a:3:{s:4:\"time\";d:1663014259.841858;s:5:\"event\";s:12:\"status-trash\";s:4:\"user\";s:5:\"Admin\";}'),
(8, 32, '_wp_trash_meta_status', '1'),
(9, 32, '_wp_trash_meta_time', '1663014259'),
(10, 31, 'akismet_history', 'a:3:{s:4:\"time\";d:1663014259.854202;s:5:\"event\";s:12:\"status-trash\";s:4:\"user\";s:5:\"Admin\";}'),
(11, 31, '_wp_trash_meta_status', '1'),
(12, 31, '_wp_trash_meta_time', '1663014259'),
(13, 30, 'akismet_history', 'a:3:{s:4:\"time\";d:1663014259.865839;s:5:\"event\";s:12:\"status-trash\";s:4:\"user\";s:5:\"Admin\";}'),
(14, 30, '_wp_trash_meta_status', '1'),
(15, 30, '_wp_trash_meta_time', '1663014259'),
(16, 29, 'akismet_history', 'a:3:{s:4:\"time\";d:1663014259.894328;s:5:\"event\";s:12:\"status-trash\";s:4:\"user\";s:5:\"Admin\";}'),
(17, 29, '_wp_trash_meta_status', '1'),
(18, 29, '_wp_trash_meta_time', '1663014259'),
(19, 28, 'akismet_history', 'a:3:{s:4:\"time\";d:1663014259.917033;s:5:\"event\";s:12:\"status-trash\";s:4:\"user\";s:5:\"Admin\";}'),
(20, 28, '_wp_trash_meta_status', '1'),
(21, 28, '_wp_trash_meta_time', '1663014259'),
(22, 27, 'akismet_history', 'a:3:{s:4:\"time\";d:1663014259.934523;s:5:\"event\";s:12:\"status-trash\";s:4:\"user\";s:5:\"Admin\";}'),
(23, 27, '_wp_trash_meta_status', '1'),
(24, 27, '_wp_trash_meta_time', '1663014259'),
(25, 26, 'akismet_history', 'a:3:{s:4:\"time\";d:1663014259.946789;s:5:\"event\";s:12:\"status-trash\";s:4:\"user\";s:5:\"Admin\";}'),
(26, 26, '_wp_trash_meta_status', '1'),
(27, 26, '_wp_trash_meta_time', '1663014259'),
(28, 25, 'akismet_history', 'a:3:{s:4:\"time\";d:1663014259.958417;s:5:\"event\";s:12:\"status-trash\";s:4:\"user\";s:5:\"Admin\";}'),
(29, 25, '_wp_trash_meta_status', '1'),
(30, 25, '_wp_trash_meta_time', '1663014259'),
(31, 24, 'akismet_history', 'a:3:{s:4:\"time\";d:1663014259.969419;s:5:\"event\";s:12:\"status-trash\";s:4:\"user\";s:5:\"Admin\";}'),
(32, 24, '_wp_trash_meta_status', '1'),
(33, 24, '_wp_trash_meta_time', '1663014259'),
(34, 23, 'akismet_history', 'a:3:{s:4:\"time\";d:1663014259.981071;s:5:\"event\";s:12:\"status-trash\";s:4:\"user\";s:5:\"Admin\";}'),
(35, 23, '_wp_trash_meta_status', '1'),
(36, 23, '_wp_trash_meta_time', '1663014259'),
(37, 22, 'akismet_history', 'a:3:{s:4:\"time\";d:1663014259.9931;s:5:\"event\";s:12:\"status-trash\";s:4:\"user\";s:5:\"Admin\";}'),
(38, 22, '_wp_trash_meta_status', '1'),
(39, 22, '_wp_trash_meta_time', '1663014259'),
(40, 21, 'akismet_history', 'a:3:{s:4:\"time\";d:1663014260.005264;s:5:\"event\";s:12:\"status-trash\";s:4:\"user\";s:5:\"Admin\";}'),
(41, 21, '_wp_trash_meta_status', '1'),
(42, 21, '_wp_trash_meta_time', '1663014260');

-- --------------------------------------------------------

--
-- Структура таблицы `eltech_comments`
--

CREATE TABLE `eltech_comments` (
  `comment_ID` bigint UNSIGNED NOT NULL,
  `comment_post_ID` bigint UNSIGNED NOT NULL DEFAULT '0',
  `comment_author` tinytext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `comment_author_email` varchar(100) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `comment_author_url` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `comment_author_IP` varchar(100) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `comment_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `comment_date_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `comment_content` text COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `comment_karma` int NOT NULL DEFAULT '0',
  `comment_approved` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '1',
  `comment_agent` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `comment_type` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'comment',
  `comment_parent` bigint UNSIGNED NOT NULL DEFAULT '0',
  `user_id` bigint UNSIGNED NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Дамп данных таблицы `eltech_comments`
--

INSERT INTO `eltech_comments` (`comment_ID`, `comment_post_ID`, `comment_author`, `comment_author_email`, `comment_author_url`, `comment_author_IP`, `comment_date`, `comment_date_gmt`, `comment_content`, `comment_karma`, `comment_approved`, `comment_agent`, `comment_type`, `comment_parent`, `user_id`) VALUES
(1, 1, 'Комментатор WordPress', 'wapuu@wordpress.example', 'https://ru.wordpress.org/', '', '2022-09-04 11:13:36', '2022-09-04 08:13:36', 'Привет! Это комментарий.\nЧтобы начать модерировать, редактировать и удалять комментарии, перейдите на экран «Комментарии» в консоли.\nАватары авторов комментариев загружаются с сервиса <a href=\"https://ru.gravatar.com/\">Gravatar</a>.', 0, 'post-trashed', '', 'comment', 0, 0),
(2, 43, 'Admin', 'egor.kor013000@gmail.com', 'http://portfolio2', '127.0.0.1', '2022-09-06 16:36:30', '2022-09-06 13:36:30', 'привет', 0, 'post-trashed', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/104.0.0.0 Safari/537.36', 'comment', 0, 1),
(3, 28, 'Admin', 'egor.kor013000@gmail.com', 'http://portfolio2', '127.0.0.1', '2022-09-06 16:50:16', '2022-09-06 13:50:16', 'Тестовый комментарий', 0, 'post-trashed', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/104.0.0.0 Safari/537.36', 'comment', 0, 1),
(4, 43, 'Admin', 'egor.kor013000@gmail.com', 'http://portfolio2', '127.0.0.1', '2022-09-07 21:54:33', '2022-09-07 18:54:33', 'dfsfsfsf', 0, 'post-trashed', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/104.0.0.0 Safari/537.36', 'comment', 0, 1),
(5, 43, 'Кофе', 'egor.kor013000@gmail.com', '', '127.0.0.1', '2022-09-07 22:08:47', '2022-09-07 19:08:47', 'авно выяснено, что при оценке дизайна и композиции читаемый текст мешает сосредоточиться. Lorem Ipsum используют потому, что тот обеспечивает более или менее стандартное заполнение шаблона, а также реальное распределение букв и пробелов в абзацах, которое не получается при простой дубликации \"Здесь ваш текст.. Здесь ваш текст.. Здесь ваш текст..\" Многие программы электронной вёрстки и редакторы HTML используют Lorem Ipsum в качестве текста по умолчанию, так что поиск по ключевым словам \"lorem ipsum\" сразу показывает, как много веб-страниц всё ещё дожидаются своего настоящего рождения. За прошедшие годы текст Lorem Ipsum получил много версий. Некоторые версии появились по ошибке, некоторые - намеренно (например, юмористические варианты).', 0, 'post-trashed', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/104.0.0.0 Safari/537.36', 'comment', 0, 0),
(6, 38, 'Admin', 'egor.kor013000@gmail.com', 'http://portfolio2', '127.0.0.1', '2022-09-08 11:06:55', '2022-09-08 08:06:55', '1234567891234566789123456789123456789', 0, 'post-trashed', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/105.0.0.0 Safari/537.36', 'comment', 0, 1),
(7, 43, 'Admin', 'egor.kor013000@gmail.com', 'http://portfolio2', '127.0.0.1', '2022-09-08 11:14:49', '2022-09-08 08:14:49', 'Тестовый комментарий для index', 0, 'post-trashed', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/105.0.0.0 Safari/537.36', 'comment', 0, 1),
(8, 28, 'Admin', 'egor.kor013000@gmail.com', 'http://portfolio2', '127.0.0.1', '2022-09-08 11:19:23', '2022-09-08 08:19:23', 'модерация', 0, 'post-trashed', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/105.0.0.0 Safari/537.36', 'comment', 0, 1),
(9, 28, 'Кова', 'immghost@gmail.com', '', '127.0.0.1', '2022-09-08 11:21:36', '2022-09-08 08:21:36', 'модерация без админки', 0, 'post-trashed', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/105.0.0.0 Safari/537.36', 'comment', 0, 0),
(10, 28, 'Вивиро', 'esdfsf@gmail.com', '', '127.0.0.1', '2022-09-08 11:28:22', '2022-09-08 08:28:22', 'Зак мод', 0, 'post-trashed', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/105.0.0.0 Safari/537.36', 'comment', 0, 0),
(11, 28, 'Кофе', 'egor.kor013000@gmail.com', '', '127.0.0.1', '2022-09-08 11:28:52', '2022-09-08 08:28:52', 'hello ig', 0, 'post-trashed', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/105.0.0.0 Safari/537.36', 'comment', 0, 0),
(12, 28, 'Admin', 'egor.kor013000@gmail.com', 'http://portfolio2', '127.0.0.1', '2022-09-08 11:49:24', '2022-09-08 08:49:24', 'hello', 0, 'post-trashed', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/105.0.0.0 Safari/537.36', 'comment', 0, 1),
(13, 28, 'sfsfsf', 'efw@gmai.com', '', '127.0.0.1', '2022-09-08 12:11:35', '2022-09-08 09:11:35', 'sdfsfsf', 0, 'post-trashed', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/105.0.0.0 Safari/537.36', 'comment', 0, 0),
(14, 28, 'Андрей', 'andrey@mgila.com', '', '127.0.0.1', '2022-09-08 12:12:28', '2022-09-08 09:12:28', 'Отрпавка формы', 0, 'post-trashed', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/105.0.0.0 Safari/537.36', 'comment', 0, 0),
(15, 43, 'Антон', 'anton@gmail.com', '', '127.0.0.1', '2022-09-09 17:36:56', '2022-09-09 14:36:56', 'Привет', 0, 'post-trashed', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/105.0.0.0 Safari/537.36', 'comment', 0, 0),
(16, 61, 'Admin', 'egor.kor013000@gmail.com', 'http://portfolio2', '127.0.0.1', '2022-09-11 16:09:40', '2022-09-11 13:09:40', 'dahfl;jadsf', 0, 'post-trashed', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/105.0.0.0 Safari/537.36', 'comment', 0, 1),
(17, 68, 'Admin', 'egor.kor013000@gmail.com', 'http://portfolio2', '127.0.0.1', '2022-09-12 01:10:36', '2022-09-11 22:10:36', 'Тестовый пост', 0, 'post-trashed', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/105.0.0.0 Safari/537.36', 'comment', 0, 1),
(18, 68, 'Admin', 'egor.kor013000@gmail.com', 'http://portfolio2', '127.0.0.1', '2022-09-12 21:23:05', '2022-09-12 18:23:05', 'Тест длины комментариев 24 символа предел', 0, 'post-trashed', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/105.0.0.0 Safari/537.36', 'comment', 0, 1),
(19, 68, 'Admin', 'egor.kor013000@gmail.com', 'http://portfolio2', '127.0.0.1', '2022-09-12 21:35:15', '2022-09-12 18:35:15', 'Здесь ровно 24 символа..', 0, 'post-trashed', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/105.0.0.0 Safari/537.36', 'comment', 0, 1),
(20, 91, 'Admin', 'egor.kor013000@gmail.com', 'http://portfolio2', '127.0.0.1', '2022-09-12 21:37:54', '2022-09-12 18:37:54', 'sdfsfd', 0, 'post-trashed', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/105.0.0.0 Safari/537.36', 'comment', 0, 1),
(21, 94, 'Admin', 'egor.kor013000@gmail.com', 'http://portfolio2', '127.0.0.1', '2022-09-12 22:58:31', '2022-09-12 19:58:31', 'Тест', 0, 'trash', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/105.0.0.0 Safari/537.36', 'comment', 0, 1),
(22, 94, 'Admin', 'egor.kor013000@gmail.com', 'http://portfolio2', '127.0.0.1', '2022-09-12 23:01:51', '2022-09-12 20:01:51', 'dfd', 0, 'trash', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/105.0.0.0 Safari/537.36', 'comment', 0, 1),
(23, 94, 'Admin', 'egor.kor013000@gmail.com', 'http://portfolio2', '127.0.0.1', '2022-09-12 23:03:31', '2022-09-12 20:03:31', 'df', 0, 'trash', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/105.0.0.0 Safari/537.36', 'comment', 0, 1),
(24, 94, 'Admin', 'egor.kor013000@gmail.com', 'http://portfolio2', '127.0.0.1', '2022-09-12 23:12:52', '2022-09-12 20:12:52', '12345', 0, 'trash', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/105.0.0.0 Safari/537.36', 'comment', 0, 1),
(25, 94, 'Admin', 'egor.kor013000@gmail.com', 'http://portfolio2', '127.0.0.1', '2022-09-12 23:13:11', '2022-09-12 20:13:11', '1234567891', 0, 'trash', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/105.0.0.0 Safari/537.36', 'comment', 0, 1),
(26, 94, 'Admin', 'egor.kor013000@gmail.com', 'http://portfolio2', '127.0.0.1', '2022-09-12 23:13:48', '2022-09-12 20:13:48', '012345678912345', 0, 'trash', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/105.0.0.0 Safari/537.36', 'comment', 0, 1),
(27, 94, 'Admin', 'egor.kor013000@gmail.com', 'http://portfolio2', '127.0.0.1', '2022-09-12 23:14:49', '2022-09-12 20:14:49', '01234567891234567890123', 0, 'trash', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/105.0.0.0 Safari/537.36', 'comment', 0, 1),
(28, 94, 'Admin', 'egor.kor013000@gmail.com', 'http://portfolio2', '127.0.0.1', '2022-09-12 23:15:38', '2022-09-12 20:15:38', '01234567812345678901234', 0, 'trash', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/105.0.0.0 Safari/537.36', 'comment', 0, 1),
(29, 94, 'Admin', 'egor.kor013000@gmail.com', 'http://portfolio2', '127.0.0.1', '2022-09-12 23:16:15', '2022-09-12 20:16:15', '0123456789012345678901234', 0, 'trash', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/105.0.0.0 Safari/537.36', 'comment', 0, 1),
(30, 94, 'Admin', 'egor.kor013000@gmail.com', 'http://portfolio2', '127.0.0.1', '2022-09-12 23:17:03', '2022-09-12 20:17:03', 'sjfgjsah', 0, 'trash', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/105.0.0.0 Safari/537.36', 'comment', 0, 1),
(31, 94, 'Admin', 'egor.kor013000@gmail.com', 'http://portfolio2', '127.0.0.1', '2022-09-12 23:17:51', '2022-09-12 20:17:51', 'Комментарий этого поста', 0, 'trash', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/105.0.0.0 Safari/537.36', 'comment', 0, 1),
(32, 94, 'Admin', 'egor.kor013000@gmail.com', 'http://portfolio2', '127.0.0.1', '2022-09-12 23:18:24', '2022-09-12 20:18:24', 'Коммент поста', 0, 'trash', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/105.0.0.0 Safari/537.36', 'comment', 0, 1),
(33, 94, 'Admin', 'egor.kor013000@gmail.com', 'http://portfolio2', '127.0.0.1', '2022-09-12 23:19:40', '2022-09-12 20:19:40', 'фывафыаыф', 0, 'trash', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/105.0.0.0 Safari/537.36', 'comment', 0, 1),
(34, 94, 'Admin', 'egor.kor013000@gmail.com', 'http://portfolio2', '127.0.0.1', '2022-09-12 23:21:56', '2022-09-12 20:21:56', 'дфлоываджлофыдваофлэывоадфлыоавфавфвыыфвафыаыфвафыв', 0, 'trash', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/105.0.0.0 Safari/537.36', 'comment', 0, 1);

-- --------------------------------------------------------

--
-- Структура таблицы `eltech_links`
--

CREATE TABLE `eltech_links` (
  `link_id` bigint UNSIGNED NOT NULL,
  `link_url` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `link_name` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `link_image` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `link_target` varchar(25) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `link_description` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `link_visible` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'Y',
  `link_owner` bigint UNSIGNED NOT NULL DEFAULT '1',
  `link_rating` int NOT NULL DEFAULT '0',
  `link_updated` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `link_rel` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `link_notes` mediumtext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `link_rss` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `eltech_options`
--

CREATE TABLE `eltech_options` (
  `option_id` bigint UNSIGNED NOT NULL,
  `option_name` varchar(191) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `option_value` longtext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `autoload` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'yes'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Дамп данных таблицы `eltech_options`
--

INSERT INTO `eltech_options` (`option_id`, `option_name`, `option_value`, `autoload`) VALUES
(1, 'siteurl', 'http://portfolio2', 'yes'),
(2, 'home', 'http://portfolio2', 'yes'),
(3, 'blogname', 'Электронная техника', 'yes'),
(4, 'blogdescription', 'Ещё один сайт на WordPress', 'yes'),
(5, 'users_can_register', '0', 'yes'),
(6, 'admin_email', 'egor.kor013000@gmail.com', 'yes'),
(7, 'start_of_week', '1', 'yes'),
(8, 'use_balanceTags', '0', 'yes'),
(9, 'use_smilies', '1', 'yes'),
(10, 'require_name_email', '1', 'yes'),
(11, 'comments_notify', '1', 'yes'),
(12, 'posts_per_rss', '10', 'yes'),
(13, 'rss_use_excerpt', '0', 'yes'),
(14, 'mailserver_url', 'mail.example.com', 'yes'),
(15, 'mailserver_login', 'login@example.com', 'yes'),
(16, 'mailserver_pass', 'password', 'yes'),
(17, 'mailserver_port', '110', 'yes'),
(18, 'default_category', '5', 'yes'),
(19, 'default_comment_status', 'open', 'yes'),
(20, 'default_ping_status', 'open', 'yes'),
(21, 'default_pingback_flag', '1', 'yes'),
(22, 'posts_per_page', '10', 'yes'),
(23, 'date_format', 'd.m.Y', 'yes'),
(24, 'time_format', 'H:i', 'yes'),
(25, 'links_updated_date_format', 'd.m.Y H:i', 'yes'),
(26, 'comment_moderation', '1', 'yes'),
(27, 'moderation_notify', '1', 'yes'),
(28, 'permalink_structure', '/%year%/%monthnum%/%day%/%postname%/', 'yes'),
(29, 'rewrite_rules', 'a:100:{s:38:\"^yoast-index-now-([a-zA-Z0-9-]+)\\.txt$\";s:41:\"index.php?yoast_index_now_key=$matches[1]\";s:19:\"sitemap_index\\.xml$\";s:19:\"index.php?sitemap=1\";s:31:\"([^/]+?)-sitemap([0-9]+)?\\.xml$\";s:51:\"index.php?sitemap=$matches[1]&sitemap_n=$matches[2]\";s:24:\"([a-z]+)?-?sitemap\\.xsl$\";s:39:\"index.php?yoast-sitemap-xsl=$matches[1]\";s:11:\"^wp-json/?$\";s:22:\"index.php?rest_route=/\";s:14:\"^wp-json/(.*)?\";s:33:\"index.php?rest_route=/$matches[1]\";s:21:\"^index.php/wp-json/?$\";s:22:\"index.php?rest_route=/\";s:24:\"^index.php/wp-json/(.*)?\";s:33:\"index.php?rest_route=/$matches[1]\";s:17:\"^wp-sitemap\\.xml$\";s:23:\"index.php?sitemap=index\";s:17:\"^wp-sitemap\\.xsl$\";s:36:\"index.php?sitemap-stylesheet=sitemap\";s:23:\"^wp-sitemap-index\\.xsl$\";s:34:\"index.php?sitemap-stylesheet=index\";s:48:\"^wp-sitemap-([a-z]+?)-([a-z\\d_-]+?)-(\\d+?)\\.xml$\";s:75:\"index.php?sitemap=$matches[1]&sitemap-subtype=$matches[2]&paged=$matches[3]\";s:34:\"^wp-sitemap-([a-z]+?)-(\\d+?)\\.xml$\";s:47:\"index.php?sitemap=$matches[1]&paged=$matches[2]\";s:47:\"category/(.+?)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:52:\"index.php?category_name=$matches[1]&feed=$matches[2]\";s:42:\"category/(.+?)/(feed|rdf|rss|rss2|atom)/?$\";s:52:\"index.php?category_name=$matches[1]&feed=$matches[2]\";s:23:\"category/(.+?)/embed/?$\";s:46:\"index.php?category_name=$matches[1]&embed=true\";s:35:\"category/(.+?)/page/?([0-9]{1,})/?$\";s:53:\"index.php?category_name=$matches[1]&paged=$matches[2]\";s:17:\"category/(.+?)/?$\";s:35:\"index.php?category_name=$matches[1]\";s:44:\"tag/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?tag=$matches[1]&feed=$matches[2]\";s:39:\"tag/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?tag=$matches[1]&feed=$matches[2]\";s:20:\"tag/([^/]+)/embed/?$\";s:36:\"index.php?tag=$matches[1]&embed=true\";s:32:\"tag/([^/]+)/page/?([0-9]{1,})/?$\";s:43:\"index.php?tag=$matches[1]&paged=$matches[2]\";s:14:\"tag/([^/]+)/?$\";s:25:\"index.php?tag=$matches[1]\";s:45:\"type/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?post_format=$matches[1]&feed=$matches[2]\";s:40:\"type/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?post_format=$matches[1]&feed=$matches[2]\";s:21:\"type/([^/]+)/embed/?$\";s:44:\"index.php?post_format=$matches[1]&embed=true\";s:33:\"type/([^/]+)/page/?([0-9]{1,})/?$\";s:51:\"index.php?post_format=$matches[1]&paged=$matches[2]\";s:15:\"type/([^/]+)/?$\";s:33:\"index.php?post_format=$matches[1]\";s:12:\"robots\\.txt$\";s:18:\"index.php?robots=1\";s:13:\"favicon\\.ico$\";s:19:\"index.php?favicon=1\";s:48:\".*wp-(atom|rdf|rss|rss2|feed|commentsrss2)\\.php$\";s:18:\"index.php?feed=old\";s:20:\".*wp-app\\.php(/.*)?$\";s:19:\"index.php?error=403\";s:18:\".*wp-register.php$\";s:23:\"index.php?register=true\";s:32:\"feed/(feed|rdf|rss|rss2|atom)/?$\";s:27:\"index.php?&feed=$matches[1]\";s:27:\"(feed|rdf|rss|rss2|atom)/?$\";s:27:\"index.php?&feed=$matches[1]\";s:8:\"embed/?$\";s:21:\"index.php?&embed=true\";s:20:\"page/?([0-9]{1,})/?$\";s:28:\"index.php?&paged=$matches[1]\";s:41:\"comments/feed/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?&feed=$matches[1]&withcomments=1\";s:36:\"comments/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?&feed=$matches[1]&withcomments=1\";s:17:\"comments/embed/?$\";s:21:\"index.php?&embed=true\";s:44:\"search/(.+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:40:\"index.php?s=$matches[1]&feed=$matches[2]\";s:39:\"search/(.+)/(feed|rdf|rss|rss2|atom)/?$\";s:40:\"index.php?s=$matches[1]&feed=$matches[2]\";s:20:\"search/(.+)/embed/?$\";s:34:\"index.php?s=$matches[1]&embed=true\";s:32:\"search/(.+)/page/?([0-9]{1,})/?$\";s:41:\"index.php?s=$matches[1]&paged=$matches[2]\";s:14:\"search/(.+)/?$\";s:23:\"index.php?s=$matches[1]\";s:47:\"author/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?author_name=$matches[1]&feed=$matches[2]\";s:42:\"author/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?author_name=$matches[1]&feed=$matches[2]\";s:23:\"author/([^/]+)/embed/?$\";s:44:\"index.php?author_name=$matches[1]&embed=true\";s:35:\"author/([^/]+)/page/?([0-9]{1,})/?$\";s:51:\"index.php?author_name=$matches[1]&paged=$matches[2]\";s:17:\"author/([^/]+)/?$\";s:33:\"index.php?author_name=$matches[1]\";s:69:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:80:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&feed=$matches[4]\";s:64:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/(feed|rdf|rss|rss2|atom)/?$\";s:80:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&feed=$matches[4]\";s:45:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/embed/?$\";s:74:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&embed=true\";s:57:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/page/?([0-9]{1,})/?$\";s:81:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&paged=$matches[4]\";s:39:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/?$\";s:63:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]\";s:56:\"([0-9]{4})/([0-9]{1,2})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:64:\"index.php?year=$matches[1]&monthnum=$matches[2]&feed=$matches[3]\";s:51:\"([0-9]{4})/([0-9]{1,2})/(feed|rdf|rss|rss2|atom)/?$\";s:64:\"index.php?year=$matches[1]&monthnum=$matches[2]&feed=$matches[3]\";s:32:\"([0-9]{4})/([0-9]{1,2})/embed/?$\";s:58:\"index.php?year=$matches[1]&monthnum=$matches[2]&embed=true\";s:44:\"([0-9]{4})/([0-9]{1,2})/page/?([0-9]{1,})/?$\";s:65:\"index.php?year=$matches[1]&monthnum=$matches[2]&paged=$matches[3]\";s:26:\"([0-9]{4})/([0-9]{1,2})/?$\";s:47:\"index.php?year=$matches[1]&monthnum=$matches[2]\";s:43:\"([0-9]{4})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?year=$matches[1]&feed=$matches[2]\";s:38:\"([0-9]{4})/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?year=$matches[1]&feed=$matches[2]\";s:19:\"([0-9]{4})/embed/?$\";s:37:\"index.php?year=$matches[1]&embed=true\";s:31:\"([0-9]{4})/page/?([0-9]{1,})/?$\";s:44:\"index.php?year=$matches[1]&paged=$matches[2]\";s:13:\"([0-9]{4})/?$\";s:26:\"index.php?year=$matches[1]\";s:58:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:68:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:88:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:83:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:83:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:64:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:53:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/embed/?$\";s:91:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&embed=true\";s:57:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/trackback/?$\";s:85:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&tb=1\";s:77:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:97:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&feed=$matches[5]\";s:72:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:97:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&feed=$matches[5]\";s:65:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/page/?([0-9]{1,})/?$\";s:98:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&paged=$matches[5]\";s:72:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/comment-page-([0-9]{1,})/?$\";s:98:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&cpage=$matches[5]\";s:61:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)(?:/([0-9]+))?/?$\";s:97:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&page=$matches[5]\";s:47:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:57:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:77:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:72:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:72:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:53:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:64:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/comment-page-([0-9]{1,})/?$\";s:81:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&cpage=$matches[4]\";s:51:\"([0-9]{4})/([0-9]{1,2})/comment-page-([0-9]{1,})/?$\";s:65:\"index.php?year=$matches[1]&monthnum=$matches[2]&cpage=$matches[3]\";s:38:\"([0-9]{4})/comment-page-([0-9]{1,})/?$\";s:44:\"index.php?year=$matches[1]&cpage=$matches[2]\";s:27:\".?.+?/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:37:\".?.+?/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:57:\".?.+?/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:52:\".?.+?/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:52:\".?.+?/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:33:\".?.+?/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:16:\"(.?.+?)/embed/?$\";s:41:\"index.php?pagename=$matches[1]&embed=true\";s:20:\"(.?.+?)/trackback/?$\";s:35:\"index.php?pagename=$matches[1]&tb=1\";s:40:\"(.?.+?)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:47:\"index.php?pagename=$matches[1]&feed=$matches[2]\";s:35:\"(.?.+?)/(feed|rdf|rss|rss2|atom)/?$\";s:47:\"index.php?pagename=$matches[1]&feed=$matches[2]\";s:28:\"(.?.+?)/page/?([0-9]{1,})/?$\";s:48:\"index.php?pagename=$matches[1]&paged=$matches[2]\";s:35:\"(.?.+?)/comment-page-([0-9]{1,})/?$\";s:48:\"index.php?pagename=$matches[1]&cpage=$matches[2]\";s:24:\"(.?.+?)(?:/([0-9]+))?/?$\";s:47:\"index.php?pagename=$matches[1]&page=$matches[2]\";}', 'yes'),
(30, 'hack_file', '0', 'yes'),
(31, 'blog_charset', 'UTF-8', 'yes'),
(32, 'moderation_keys', '', 'no'),
(33, 'active_plugins', 'a:7:{i:0;s:34:\"advanced-custom-fields-pro/acf.php\";i:1;s:19:\"akismet/akismet.php\";i:2;s:23:\"anti-spam/anti-spam.php\";i:3;s:22:\"cyr2lat/cyr-to-lat.php\";i:4;s:40:\"wordpress-seo-premium/wp-seo-premium.php\";i:5;s:24:\"wordpress-seo/wp-seo.php\";i:6;s:27:\"wp-super-cache/wp-cache.php\";}', 'yes'),
(34, 'category_base', '', 'yes'),
(35, 'ping_sites', 'http://rpc.pingomatic.com/', 'yes'),
(36, 'comment_max_links', '2', 'yes'),
(37, 'gmt_offset', '3', 'yes'),
(38, 'default_email_category', '5', 'yes'),
(39, 'recently_edited', '', 'no'),
(40, 'template', 'portfolioTheme', 'yes'),
(41, 'stylesheet', 'portfolioTheme', 'yes'),
(42, 'comment_registration', '', 'yes'),
(43, 'html_type', 'text/html', 'yes'),
(44, 'use_trackback', '0', 'yes'),
(45, 'default_role', 'subscriber', 'yes'),
(46, 'db_version', '53496', 'yes'),
(47, 'uploads_use_yearmonth_folders', '1', 'yes'),
(48, 'upload_path', '', 'yes'),
(49, 'blog_public', '1', 'yes'),
(50, 'default_link_category', '0', 'yes'),
(51, 'show_on_front', 'posts', 'yes'),
(52, 'tag_base', '', 'yes'),
(53, 'show_avatars', '1', 'yes'),
(54, 'avatar_rating', 'G', 'yes'),
(55, 'upload_url_path', '', 'yes'),
(56, 'thumbnail_size_w', '150', 'yes'),
(57, 'thumbnail_size_h', '150', 'yes'),
(58, 'thumbnail_crop', '1', 'yes'),
(59, 'medium_size_w', '300', 'yes'),
(60, 'medium_size_h', '300', 'yes'),
(61, 'avatar_default', 'mystery', 'yes'),
(62, 'large_size_w', '1024', 'yes'),
(63, 'large_size_h', '1024', 'yes'),
(64, 'image_default_link_type', 'none', 'yes'),
(65, 'image_default_size', '', 'yes'),
(66, 'image_default_align', '', 'yes'),
(67, 'close_comments_for_old_posts', '', 'yes'),
(68, 'close_comments_days_old', '14', 'yes'),
(69, 'thread_comments', '1', 'yes'),
(70, 'thread_comments_depth', '5', 'yes'),
(71, 'page_comments', '', 'yes'),
(72, 'comments_per_page', '50', 'yes'),
(73, 'default_comments_page', 'newest', 'yes'),
(74, 'comment_order', 'asc', 'yes'),
(75, 'sticky_posts', 'a:0:{}', 'yes'),
(76, 'widget_categories', 'a:2:{i:1;a:0:{}s:12:\"_multiwidget\";i:1;}', 'yes'),
(77, 'widget_text', 'a:2:{i:1;a:0:{}s:12:\"_multiwidget\";i:1;}', 'yes'),
(78, 'widget_rss', 'a:2:{i:1;a:0:{}s:12:\"_multiwidget\";i:1;}', 'yes'),
(79, 'uninstall_plugins', 'a:3:{s:38:\"anycomment/includes/AnyCommentCore.php\";s:36:\"AnyComment\\AnyCommentCore::uninstall\";s:24:\"wordpress-seo/wp-seo.php\";s:14:\"__return_false\";s:27:\"wp-super-cache/wp-cache.php\";s:22:\"wpsupercache_uninstall\";}', 'no'),
(80, 'timezone_string', '', 'yes'),
(81, 'page_for_posts', '0', 'yes'),
(82, 'page_on_front', '0', 'yes'),
(83, 'default_post_format', '0', 'yes'),
(84, 'link_manager_enabled', '0', 'yes'),
(85, 'finished_splitting_shared_terms', '1', 'yes'),
(86, 'site_icon', '75', 'yes'),
(87, 'medium_large_size_w', '768', 'yes'),
(88, 'medium_large_size_h', '0', 'yes'),
(89, 'ElTech_page_for_privacy_policy', '3', 'yes'),
(90, 'show_comments_cookies_opt_in', '1', 'yes'),
(91, 'admin_email_lifespan', '1677831215', 'yes'),
(92, 'disallowed_keys', '', 'no'),
(93, 'comment_previously_approved', '1', 'yes'),
(94, 'auto_plugin_theme_update_emails', 'a:0:{}', 'no'),
(95, 'auto_update_core_dev', 'enabled', 'yes'),
(96, 'auto_update_core_minor', 'enabled', 'yes'),
(97, 'auto_update_core_major', 'enabled', 'yes'),
(98, 'ElTech_force_deactivated_plugins', 'a:0:{}', 'yes'),
(99, 'initial_db_version', '53496', 'yes'),
(100, 'ElTech_user_roles', 'a:8:{s:13:\"administrator\";a:2:{s:4:\"name\";s:13:\"Administrator\";s:12:\"capabilities\";a:75:{s:13:\"switch_themes\";b:1;s:11:\"edit_themes\";b:1;s:16:\"activate_plugins\";b:1;s:12:\"edit_plugins\";b:1;s:10:\"edit_users\";b:1;s:10:\"edit_files\";b:1;s:14:\"manage_options\";b:1;s:17:\"moderate_comments\";b:1;s:17:\"manage_categories\";b:1;s:12:\"manage_links\";b:1;s:12:\"upload_files\";b:1;s:6:\"import\";b:1;s:15:\"unfiltered_html\";b:1;s:10:\"edit_posts\";b:1;s:17:\"edit_others_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:10:\"edit_pages\";b:1;s:4:\"read\";b:1;s:8:\"level_10\";b:1;s:7:\"level_9\";b:1;s:7:\"level_8\";b:1;s:7:\"level_7\";b:1;s:7:\"level_6\";b:1;s:7:\"level_5\";b:1;s:7:\"level_4\";b:1;s:7:\"level_3\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:17:\"edit_others_pages\";b:1;s:20:\"edit_published_pages\";b:1;s:13:\"publish_pages\";b:1;s:12:\"delete_pages\";b:1;s:19:\"delete_others_pages\";b:1;s:22:\"delete_published_pages\";b:1;s:12:\"delete_posts\";b:1;s:19:\"delete_others_posts\";b:1;s:22:\"delete_published_posts\";b:1;s:20:\"delete_private_posts\";b:1;s:18:\"edit_private_posts\";b:1;s:18:\"read_private_posts\";b:1;s:20:\"delete_private_pages\";b:1;s:18:\"edit_private_pages\";b:1;s:18:\"read_private_pages\";b:1;s:12:\"delete_users\";b:1;s:12:\"create_users\";b:1;s:17:\"unfiltered_upload\";b:1;s:14:\"edit_dashboard\";b:1;s:14:\"update_plugins\";b:1;s:14:\"delete_plugins\";b:1;s:15:\"install_plugins\";b:1;s:13:\"update_themes\";b:1;s:14:\"install_themes\";b:1;s:11:\"update_core\";b:1;s:10:\"list_users\";b:1;s:12:\"remove_users\";b:1;s:13:\"promote_users\";b:1;s:18:\"edit_theme_options\";b:1;s:13:\"delete_themes\";b:1;s:6:\"export\";b:1;s:18:\"read_wpdiscuz_form\";b:1;s:19:\"read_wpdiscuz_forms\";b:1;s:18:\"edit_wpdiscuz_form\";b:1;s:19:\"edit_wpdiscuz_forms\";b:1;s:26:\"edit_others_wpdiscuz_forms\";b:1;s:29:\"edit_published_wpdiscuz_forms\";b:1;s:22:\"publish_wpdiscuz_forms\";b:1;s:20:\"delete_wpdiscuz_form\";b:1;s:21:\"delete_wpdiscuz_forms\";b:1;s:28:\"delete_others_wpdiscuz_forms\";b:1;s:29:\"delete_private_wpdiscuz_forms\";b:1;s:31:\"delete_published_wpdiscuz_forms\";b:1;s:20:\"wpseo_manage_options\";b:1;s:22:\"wpseo_manage_redirects\";b:1;}}s:6:\"editor\";a:2:{s:4:\"name\";s:6:\"Editor\";s:12:\"capabilities\";a:37:{s:17:\"moderate_comments\";b:1;s:17:\"manage_categories\";b:1;s:12:\"manage_links\";b:1;s:12:\"upload_files\";b:1;s:15:\"unfiltered_html\";b:1;s:10:\"edit_posts\";b:1;s:17:\"edit_others_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:10:\"edit_pages\";b:1;s:4:\"read\";b:1;s:7:\"level_7\";b:1;s:7:\"level_6\";b:1;s:7:\"level_5\";b:1;s:7:\"level_4\";b:1;s:7:\"level_3\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:17:\"edit_others_pages\";b:1;s:20:\"edit_published_pages\";b:1;s:13:\"publish_pages\";b:1;s:12:\"delete_pages\";b:1;s:19:\"delete_others_pages\";b:1;s:22:\"delete_published_pages\";b:1;s:12:\"delete_posts\";b:1;s:19:\"delete_others_posts\";b:1;s:22:\"delete_published_posts\";b:1;s:20:\"delete_private_posts\";b:1;s:18:\"edit_private_posts\";b:1;s:18:\"read_private_posts\";b:1;s:20:\"delete_private_pages\";b:1;s:18:\"edit_private_pages\";b:1;s:18:\"read_private_pages\";b:1;s:15:\"wpseo_bulk_edit\";b:1;s:28:\"wpseo_edit_advanced_metadata\";b:1;s:22:\"wpseo_manage_redirects\";b:1;}}s:6:\"author\";a:2:{s:4:\"name\";s:6:\"Author\";s:12:\"capabilities\";a:10:{s:12:\"upload_files\";b:1;s:10:\"edit_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:4:\"read\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:12:\"delete_posts\";b:1;s:22:\"delete_published_posts\";b:1;}}s:11:\"contributor\";a:2:{s:4:\"name\";s:11:\"Contributor\";s:12:\"capabilities\";a:5:{s:10:\"edit_posts\";b:1;s:4:\"read\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:12:\"delete_posts\";b:1;}}s:10:\"subscriber\";a:2:{s:4:\"name\";s:10:\"Subscriber\";s:12:\"capabilities\";a:2:{s:4:\"read\";b:1;s:7:\"level_0\";b:1;}}s:17:\"social_subscriber\";a:2:{s:4:\"name\";s:35:\"Подписчик соц. сети\";s:12:\"capabilities\";a:3:{s:4:\"read\";b:1;s:10:\"edit_posts\";b:0;s:12:\"delete_posts\";b:0;}}s:13:\"wpseo_manager\";a:2:{s:4:\"name\";s:11:\"SEO Manager\";s:12:\"capabilities\";a:39:{s:17:\"moderate_comments\";b:1;s:17:\"manage_categories\";b:1;s:12:\"manage_links\";b:1;s:12:\"upload_files\";b:1;s:15:\"unfiltered_html\";b:1;s:10:\"edit_posts\";b:1;s:17:\"edit_others_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:10:\"edit_pages\";b:1;s:4:\"read\";b:1;s:7:\"level_7\";b:1;s:7:\"level_6\";b:1;s:7:\"level_5\";b:1;s:7:\"level_4\";b:1;s:7:\"level_3\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:17:\"edit_others_pages\";b:1;s:20:\"edit_published_pages\";b:1;s:13:\"publish_pages\";b:1;s:12:\"delete_pages\";b:1;s:19:\"delete_others_pages\";b:1;s:22:\"delete_published_pages\";b:1;s:12:\"delete_posts\";b:1;s:19:\"delete_others_posts\";b:1;s:22:\"delete_published_posts\";b:1;s:20:\"delete_private_posts\";b:1;s:18:\"edit_private_posts\";b:1;s:18:\"read_private_posts\";b:1;s:20:\"delete_private_pages\";b:1;s:18:\"edit_private_pages\";b:1;s:18:\"read_private_pages\";b:1;s:15:\"wpseo_bulk_edit\";b:1;s:28:\"wpseo_edit_advanced_metadata\";b:1;s:20:\"wpseo_manage_options\";b:1;s:23:\"view_site_health_checks\";b:1;s:22:\"wpseo_manage_redirects\";b:1;}}s:12:\"wpseo_editor\";a:2:{s:4:\"name\";s:10:\"SEO Editor\";s:12:\"capabilities\";a:37:{s:17:\"moderate_comments\";b:1;s:17:\"manage_categories\";b:1;s:12:\"manage_links\";b:1;s:12:\"upload_files\";b:1;s:15:\"unfiltered_html\";b:1;s:10:\"edit_posts\";b:1;s:17:\"edit_others_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:10:\"edit_pages\";b:1;s:4:\"read\";b:1;s:7:\"level_7\";b:1;s:7:\"level_6\";b:1;s:7:\"level_5\";b:1;s:7:\"level_4\";b:1;s:7:\"level_3\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:17:\"edit_others_pages\";b:1;s:20:\"edit_published_pages\";b:1;s:13:\"publish_pages\";b:1;s:12:\"delete_pages\";b:1;s:19:\"delete_others_pages\";b:1;s:22:\"delete_published_pages\";b:1;s:12:\"delete_posts\";b:1;s:19:\"delete_others_posts\";b:1;s:22:\"delete_published_posts\";b:1;s:20:\"delete_private_posts\";b:1;s:18:\"edit_private_posts\";b:1;s:18:\"read_private_posts\";b:1;s:20:\"delete_private_pages\";b:1;s:18:\"edit_private_pages\";b:1;s:18:\"read_private_pages\";b:1;s:15:\"wpseo_bulk_edit\";b:1;s:28:\"wpseo_edit_advanced_metadata\";b:1;s:22:\"wpseo_manage_redirects\";b:1;}}}', 'yes'),
(101, 'fresh_site', '0', 'yes'),
(102, 'WPLANG', 'ru_RU', 'yes'),
(103, 'user_count', '1', 'no'),
(104, 'widget_block', 'a:6:{i:2;a:1:{s:7:\"content\";s:19:\"<!-- wp:search /-->\";}i:3;a:1:{s:7:\"content\";s:167:\"<!-- wp:group --><div class=\"wp-block-group\"><!-- wp:heading --><h2>Свежие записи</h2><!-- /wp:heading --><!-- wp:latest-posts /--></div><!-- /wp:group -->\";}i:4;a:1:{s:7:\"content\";s:247:\"<!-- wp:group --><div class=\"wp-block-group\"><!-- wp:heading --><h2>Свежие комментарии</h2><!-- /wp:heading --><!-- wp:latest-comments {\"displayAvatar\":false,\"displayDate\":false,\"displayExcerpt\":false} /--></div><!-- /wp:group -->\";}i:5;a:1:{s:7:\"content\";s:150:\"<!-- wp:group --><div class=\"wp-block-group\"><!-- wp:heading --><h2>Архивы</h2><!-- /wp:heading --><!-- wp:archives /--></div><!-- /wp:group -->\";}i:6;a:1:{s:7:\"content\";s:154:\"<!-- wp:group --><div class=\"wp-block-group\"><!-- wp:heading --><h2>Рубрики</h2><!-- /wp:heading --><!-- wp:categories /--></div><!-- /wp:group -->\";}s:12:\"_multiwidget\";i:1;}', 'yes'),
(105, 'sidebars_widgets', 'a:2:{s:19:\"wp_inactive_widgets\";a:5:{i:0;s:7:\"block-2\";i:1;s:7:\"block-3\";i:2;s:7:\"block-4\";i:3;s:7:\"block-5\";i:4;s:7:\"block-6\";}s:13:\"array_version\";i:3;}', 'yes'),
(106, 'cron', 'a:10:{i:1663157618;a:1:{s:34:\"wp_privacy_delete_old_export_files\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:6:\"hourly\";s:4:\"args\";a:0:{}s:8:\"interval\";i:3600;}}}i:1663160959;a:1:{s:21:\"anycomment_tools_cron\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1663186418;a:4:{s:18:\"wp_https_detection\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}s:16:\"wp_version_check\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}s:17:\"wp_update_plugins\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}s:16:\"wp_update_themes\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}}i:1663186436;a:1:{s:21:\"wp_update_user_counts\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}}i:1663191937;a:2:{s:13:\"wpseo-reindex\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}s:31:\"wpseo_permalink_structure_check\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1663229618;a:1:{s:32:\"recovery_mode_clean_expired_keys\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1663229636;a:2:{s:19:\"wp_scheduled_delete\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}s:25:\"delete_expired_transients\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1663229638;a:1:{s:30:\"wp_scheduled_auto_draft_delete\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1663575218;a:1:{s:30:\"wp_site_health_scheduled_check\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:6:\"weekly\";s:4:\"args\";a:0:{}s:8:\"interval\";i:604800;}}}s:7:\"version\";i:2;}', 'yes'),
(107, 'widget_pages', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(108, 'widget_calendar', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(109, 'widget_archives', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(110, 'widget_media_audio', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(111, 'widget_media_image', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(112, 'widget_media_gallery', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(113, 'widget_media_video', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(114, 'widget_meta', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(115, 'widget_search', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(116, 'widget_tag_cloud', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(117, 'widget_nav_menu', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(118, 'widget_custom_html', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(122, 'theme_mods_twentytwentytwo', 'a:2:{s:18:\"custom_css_post_id\";i:-1;s:16:\"sidebars_widgets\";a:2:{s:4:\"time\";i:1662281304;s:4:\"data\";a:3:{s:19:\"wp_inactive_widgets\";a:0:{}s:9:\"sidebar-1\";a:3:{i:0;s:7:\"block-2\";i:1;s:7:\"block-3\";i:2;s:7:\"block-4\";}s:9:\"sidebar-2\";a:2:{i:0;s:7:\"block-5\";i:1;s:7:\"block-6\";}}}}', 'yes'),
(125, 'recovery_keys', 'a:0:{}', 'yes'),
(126, 'https_detection_errors', 'a:1:{s:23:\"ssl_verification_failed\";a:1:{i:0;s:38:\"Проверка SSL неудачна.\";}}', 'yes'),
(155, 'can_compress_scripts', '1', 'no'),
(158, 'finished_updating_comment_type', '1', 'yes'),
(161, 'current_theme', 'Portfolio2', 'yes'),
(162, 'theme_mods_portfolioTheme', 'a:3:{i:0;b:0;s:18:\"nav_menu_locations\";a:0:{}s:18:\"custom_css_post_id\";i:-1;}', 'yes'),
(163, 'theme_switched', '', 'yes'),
(190, 'widget_recent-posts', 'a:2:{i:1;a:0:{}s:12:\"_multiwidget\";i:1;}', 'yes'),
(191, 'widget_recent-comments', 'a:2:{i:1;a:0:{}s:12:\"_multiwidget\";i:1;}', 'yes'),
(206, 'recently_activated', 'a:1:{s:25:\"anycomment/anycomment.php\";i:1662472472;}', 'yes'),
(222, 'nav_menu_options', 'a:1:{s:8:\"auto_add\";a:1:{i:0;i:3;}}', 'yes'),
(271, 'acf_version', '5.12.3', 'yes'),
(274, 'category_children', 'a:0:{}', 'yes'),
(281, 'ElTech_calendar_block_has_published_posts', '1', 'yes'),
(325, '_transient_health-check-site-status-result', '{\"good\":13,\"recommended\":5,\"critical\":1}', 'yes'),
(479, 'anycomment-generic', 'a:77:{s:25:\"option_notify_sender_name\";s:0:\"\";s:28:\"option_notify_on_new_comment\";N;s:26:\"option_notify_subscription\";N;s:26:\"option_notify_on_new_reply\";N;s:27:\"option_notify_administrator\";N;s:38:\"option_notify_subscribe_email_template\";s:183:\"New comment in {blogUrlHtml}. From post {postUrlHtml}. {commentFormatted} {replyButton} You were subscribed to this post. You may unbsubscribe by following this link: {unsubscribeUrl}\";s:51:\"option_notify_subscribe_confirmation_email_template\";s:224:\"You were subscribed to {postUrlHtml} on {postTitle}. Please follow link below to confirm this action or ignore this message if you think you received this by mistake. {confirmatiomButton} Or use link below: {confirmationUrl}\";s:20:\"option_plugin_toggle\";s:2:\"on\";s:22:\"option_default_sort_by\";s:4:\"desc\";s:21:\"option_comment_rating\";s:5:\"likes\";s:21:\"option_default_avatar\";s:10:\"anycomment\";s:20:\"option_editor_toggle\";s:2:\"on\";s:26:\"option_editor_toolbar_bold\";s:2:\"on\";s:28:\"option_editor_toolbar_italic\";s:2:\"on\";s:31:\"option_editor_toolbar_underline\";s:2:\"on\";s:32:\"option_editor_toolbar_blockquote\";s:2:\"on\";s:29:\"option_editor_toolbar_ordered\";s:2:\"on\";s:28:\"option_editor_toolbar_bullet\";s:2:\"on\";s:26:\"option_editor_toolbar_link\";s:2:\"on\";s:27:\"option_editor_toolbar_clean\";s:2:\"on\";s:22:\"option_datetime_format\";s:8:\"relative\";s:29:\"option_register_default_group\";s:17:\"social_subscriber\";s:29:\"option_interval_comment_check\";s:2:\"10\";s:23:\"option_read_more_toggle\";N;s:20:\"option_rating_toggle\";N;s:30:\"option_comments_count_per_page\";s:2:\"20\";s:26:\"option_comment_update_time\";s:1:\"5\";s:35:\"option_comments_user_agreement_link\";s:0:\"\";s:22:\"options_load_on_scroll\";N;s:30:\"options_moderate_first_comment\";N;s:22:\"options_moderate_first\";N;s:22:\"options_moderate_words\";s:0:\"\";s:21:\"options_links_on_hold\";N;s:34:\"options_show_socials_in_login_page\";N;s:22:\"options_show_admin_bar\";N;s:24:\"options_show_profile_url\";N;s:30:\"options_show_tweet_attachments\";N;s:30:\"options_show_video_attachments\";N;s:30:\"options_show_image_attachments\";N;s:28:\"options_make_links_clickable\";N;s:23:\"option_copyright_toggle\";N;s:20:\"options_files_toggle\";N;s:30:\"options_files_guest_can_upload\";N;s:24:\"options_files_mime_types\";s:13:\"image/*, .pdf\";s:19:\"options_files_limit\";s:1:\"5\";s:26:\"options_files_limit_period\";s:3:\"900\";s:22:\"options_files_max_size\";s:3:\"1.5\";s:23:\"options_files_save_path\";s:0:\"\";s:28:\"options_files_save_serve_url\";s:0:\"\";s:17:\"options_form_type\";s:24:\"form_option_socials_only\";s:20:\"options_guest_fields\";s:14:\"{name} {email}\";s:25:\"options_show_updated_info\";s:2:\"on\";s:28:\"options_design_custom_toggle\";s:2:\"on\";s:29:\"options_design_global_padding\";s:0:\"\";s:28:\"options_design_global_margin\";s:6:\"20px 0\";s:46:\"options_design_global_background_border_radius\";s:0:\"\";s:38:\"options_design_global_background_color\";s:0:\"\";s:24:\"options_design_font_size\";s:4:\"14px\";s:26:\"options_design_font_family\";s:23:\"\'Noto-Sans\', sans-serif\";s:32:\"options_design_semi_hidden_color\";s:7:\"#b6c1c6\";s:25:\"options_design_link_color\";s:7:\"#1da1f2\";s:25:\"options_design_text_color\";s:7:\"#2a2e2e\";s:42:\"options_design_form_field_background_color\";s:7:\"#ffffff\";s:31:\"options_design_attachment_color\";s:7:\"#eeeeee\";s:42:\"options_design_attachment_background_color\";s:7:\"#eeeeee\";s:28:\"options_design_avatar_radius\";s:13:\"50% 50% 50% 0\";s:33:\"options_design_parent_avatar_size\";s:4:\"48px\";s:32:\"options_design_child_avatar_size\";s:4:\"30px\";s:27:\"options_design_button_color\";s:7:\"#ffffff\";s:38:\"options_design_button_background_color\";s:7:\"#1da1f2\";s:45:\"options_design_button_background_color_active\";s:7:\"#4f9f49\";s:28:\"options_design_button_radius\";s:4:\"20px\";s:28:\"options_design_global_radius\";s:4:\"10px\";s:17:\"option_editor_css\";s:0:\"\";s:17:\"option_seo_toggle\";s:2:\"on\";s:24:\"option_seo_display_limit\";s:0:\"\";s:18:\"option_seo_sorting\";s:13:\"newest_to_old\";}', 'yes'),
(480, 'anycomment-integration', 'a:11:{s:36:\"option_anycomment_sass_comments_show\";s:2:\"on\";s:36:\"option_anycomment_sass_comments_sync\";N;s:21:\"option_akismet_toggle\";N;s:37:\"option_woocommerce_replace_for_review\";N;s:21:\"option_wp_user_avatar\";N;s:23:\"option_recaptcha_toggle\";N;s:25:\"option_recaptcha_site_key\";s:0:\"\";s:27:\"option_recaptcha_secret_key\";s:0:\"\";s:21:\"option_recaptcha_user\";s:25:\"option_recaptcha_user_all\";s:22:\"option_recaptcha_theme\";s:5:\"light\";s:22:\"option_recaptcha_badge\";s:11:\"bottomright\";}', 'yes'),
(481, 'anycomment_migration', '0.0.88', 'yes'),
(482, 'anycomment-social', '1', 'yes'),
(561, 'wpd_admin_notices', 'a:0:{}', 'yes'),
(831, '_site_transient_timeout_browser_7476866355efe37484cbc26119bd85c8', '1663229136', 'no'),
(832, '_site_transient_browser_7476866355efe37484cbc26119bd85c8', 'a:10:{s:4:\"name\";s:6:\"Chrome\";s:7:\"version\";s:9:\"105.0.0.0\";s:8:\"platform\";s:7:\"Windows\";s:10:\"update_url\";s:29:\"https://www.google.com/chrome\";s:7:\"img_src\";s:43:\"http://s.w.org/images/browsers/chrome.png?1\";s:11:\"img_src_ssl\";s:44:\"https://s.w.org/images/browsers/chrome.png?1\";s:15:\"current_version\";s:2:\"18\";s:7:\"upgrade\";b:0;s:8:\"insecure\";b:0;s:6:\"mobile\";b:0;}', 'no'),
(970, '_site_transient_timeout_php_check_97f83d63b8a66f6e8c057d89a83d8845', '1663503625', 'no'),
(971, '_site_transient_php_check_97f83d63b8a66f6e8c057d89a83d8845', 'a:5:{s:19:\"recommended_version\";s:3:\"7.4\";s:15:\"minimum_version\";s:6:\"5.6.20\";s:12:\"is_supported\";b:0;s:9:\"is_secure\";b:0;s:13:\"is_acceptable\";b:0;}', 'no'),
(1091, 'widget_akismet_widget', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(1096, 'titan_bruteforce_set_default_options', '1', 'yes'),
(1097, 'titan_bruteforce_gdpr', '0', 'yes'),
(1098, 'titan_bruteforce_logged', '', 'yes'),
(1099, 'titan_bruteforce_lockouts_total', '0', 'yes'),
(1100, 'titan_bruteforce_minutes_lockout', '1200', 'yes'),
(1101, 'titan_bruteforce_valid_duration', '43200', 'yes'),
(1102, 'titan_bruteforce_allowed_retries', '4', 'yes'),
(1103, 'titan_bruteforce_lockouts', 'a:0:{}', 'yes'),
(1104, 'titan_bruteforce_whitelist_ips', 'a:0:{}', 'yes'),
(1105, 'titan_bruteforce_whitelist_usernames', 'a:0:{}', 'yes'),
(1106, 'titan_bruteforce_blacklist_ips', 'a:0:{}', 'yes'),
(1107, 'titan_bruteforce_blacklist_usernames', 'a:0:{}', 'yes'),
(1109, 'titan_plugin_activated', '1662906005', 'yes'),
(1110, 'titan_plugin_version', '7.3.1', 'yes'),
(1113, 'titan_audit_results_hided', 'a:0:{}', 'no'),
(1114, 'titan_audit_results', 'a:7:{i:0;O:22:\"WBCR\\Titan\\AuditResult\":7:{s:4:\"type\";N;s:5:\"title\";s:58:\"Your PHP version 7.1.33 is less than the recommended 7.2.0\";s:11:\"description\";s:45:\"Older versions of PHP are slow and vulnerable\";s:9:\"timestamp\";i:1662906553;s:8:\"severity\";s:6:\"medium\";s:3:\"fix\";s:0:\"\";s:5:\"hided\";b:0;}i:1;O:22:\"WBCR\\Titan\\AuditResult\":7:{s:4:\"type\";N;s:5:\"title\";s:60:\"Database table prefix is empty or has a default value: \'wp_\'\";s:11:\"description\";s:78:\"This allows hackers to plan a massive attack based on the default prefix \'wp_\'\";s:9:\"timestamp\";i:1662906553;s:8:\"severity\";s:6:\"medium\";s:3:\"fix\";s:89:\"http://portfolio2/wp-admin/admin.php?page=check-titan_security&action=fix-database-prefix\";s:5:\"hided\";b:0;}i:2;O:22:\"WBCR\\Titan\\AuditResult\":7:{s:4:\"type\";N;s:5:\"title\";s:60:\"Problems with the SSL certificate were detected on your site\";s:11:\"description\";s:35:\"HTTPS is not available on this site\";s:9:\"timestamp\";i:1662906553;s:8:\"severity\";s:6:\"medium\";s:3:\"fix\";s:0:\"\";s:5:\"hided\";b:0;}i:3;O:22:\"WBCR\\Titan\\AuditResult\":7:{s:4:\"type\";N;s:5:\"title\";s:23:\"Author URL by ID access\";s:11:\"description\";s:146:\"By knowing the username, you are one step closer to logging in using the username to brute-force the password, or to gain access in a similar way.\";s:9:\"timestamp\";i:1662906556;s:8:\"severity\";s:6:\"medium\";s:3:\"fix\";s:0:\"\";s:5:\"hided\";b:0;}i:4;O:22:\"WBCR\\Titan\\AuditResult\":7:{s:4:\"type\";N;s:5:\"title\";s:60:\"Readme.html or readme.txt file is available in the site root\";s:11:\"description\";s:123:\"It is important to hide or delete the readme.html or readme.txt file, because it contains information about the WP version.\";s:9:\"timestamp\";i:1662906556;s:8:\"severity\";s:3:\"low\";s:3:\"fix\";s:0:\"\";s:5:\"hided\";b:0;}i:5;O:22:\"WBCR\\Titan\\AuditResult\":7:{s:4:\"type\";N;s:5:\"title\";s:58:\"The plugins and themes file editor is enabled on your site\";s:11:\"description\";s:312:\"The plugins and themes file editor is a security issue because it not only shows the PHP source code, it also enables attackers to inject malicious code into your site if they manage to gain access to admin.Disable it for live websites in <b>wp_config.php:</b><br><code>define(\'DISALLOW_FILE_EDIT\', true);</code>\";s:9:\"timestamp\";i:1662906556;s:8:\"severity\";s:3:\"low\";s:3:\"fix\";s:0:\"\";s:5:\"hided\";b:0;}i:6;O:22:\"WBCR\\Titan\\AuditResult\":7:{s:4:\"type\";N;s:5:\"title\";s:25:\"The firewall is disabled.\";s:11:\"description\";s:78:\"Firewall protects against password brute force and blocks suspicious activity.\";s:9:\"timestamp\";i:1662906556;s:8:\"severity\";s:4:\"high\";s:3:\"fix\";s:65:\"http://portfolio2/wp-admin/admin.php?page=firewall-titan_security\";s:5:\"hided\";b:0;}}', 'no'),
(1115, 'wp_force_deactivated_plugins', 'a:0:{}', 'yes'),
(1116, 'titan_antispam_mode', '1', 'yes'),
(1117, 'titan_vulnerabilities_wordpress', 'a:0:{}', 'no'),
(1118, 'titan_vulnerabilities_plugins', 'a:0:{}', 'no'),
(1121, 'titan_vulnerabilities_themes', 'a:0:{}', 'no'),
(1122, 'titan_howget_ip', '', 'yes'),
(1123, 'titan_howget_ips_trusted_proxies', '', 'yes'),
(1124, 'titan_disable_wafip_blocking', '1', 'yes'),
(1125, 'titan_whitelisted', '', 'yes'),
(1126, 'titan_whitelisted_services', 'sucuri,facebook', 'yes'),
(1127, 'titan_banned_urls', '', 'yes'),
(1128, 'titan_waf_alert_whitelist', '', 'yes'),
(1129, 'titan_enable_advanced_blocking', '1', 'yes'),
(1130, 'titan_immediately_block_fake_google', '0', 'yes'),
(1176, 'yoast_migrations_free', 'a:1:{s:7:\"version\";s:6:\"19.6.1\";}', 'yes'),
(1177, 'wpseo', 'a:88:{s:8:\"tracking\";b:1;s:22:\"license_server_version\";b:0;s:15:\"ms_defaults_set\";b:0;s:40:\"ignore_search_engines_discouraged_notice\";b:0;s:19:\"indexing_first_time\";b:0;s:16:\"indexing_started\";b:0;s:15:\"indexing_reason\";s:0:\"\";s:29:\"indexables_indexing_completed\";b:1;s:13:\"index_now_key\";s:100:\"XtP1rv-poDN44K9vTJ1H-OSP8eJGFOE5d8ezj1FSpe8cX1fMMA6eUkVMw0WcAFBdcDF7MSTdx24DWph1uKEz4wpbAApLliBX8UGj\";s:7:\"version\";s:6:\"19.6.1\";s:16:\"previous_version\";s:0:\"\";s:20:\"disableadvanced_meta\";b:1;s:30:\"enable_headless_rest_endpoints\";b:1;s:17:\"ryte_indexability\";b:0;s:11:\"baiduverify\";s:0:\"\";s:12:\"googleverify\";s:0:\"\";s:8:\"msverify\";s:0:\"\";s:12:\"yandexverify\";s:0:\"\";s:9:\"site_type\";s:0:\"\";s:20:\"has_multiple_authors\";s:0:\"\";s:16:\"environment_type\";s:0:\"\";s:23:\"content_analysis_active\";b:1;s:23:\"keyword_analysis_active\";b:1;s:34:\"inclusive_language_analysis_active\";b:0;s:21:\"enable_admin_bar_menu\";b:1;s:26:\"enable_cornerstone_content\";b:1;s:18:\"enable_xml_sitemap\";b:1;s:24:\"enable_text_link_counter\";b:1;s:16:\"enable_index_now\";b:1;s:22:\"show_onboarding_notice\";b:1;s:18:\"first_activated_on\";i:1662932737;s:13:\"myyoast-oauth\";b:0;s:26:\"semrush_integration_active\";b:1;s:14:\"semrush_tokens\";a:0:{}s:20:\"semrush_country_code\";s:2:\"us\";s:19:\"permalink_structure\";s:36:\"/%year%/%monthnum%/%day%/%postname%/\";s:8:\"home_url\";s:17:\"http://portfolio2\";s:18:\"dynamic_permalinks\";b:0;s:17:\"category_base_url\";s:0:\"\";s:12:\"tag_base_url\";s:0:\"\";s:21:\"custom_taxonomy_slugs\";a:0:{}s:29:\"enable_enhanced_slack_sharing\";b:1;s:25:\"zapier_integration_active\";b:0;s:19:\"zapier_subscription\";a:0:{}s:14:\"zapier_api_key\";s:0:\"\";s:23:\"enable_metabox_insights\";b:1;s:23:\"enable_link_suggestions\";b:1;s:26:\"algolia_integration_active\";b:0;s:14:\"import_cursors\";a:0:{}s:13:\"workouts_data\";a:1:{s:13:\"configuration\";a:1:{s:13:\"finishedSteps\";a:0:{}}}s:28:\"configuration_finished_steps\";a:3:{i:0;s:18:\"siteRepresentation\";i:1;s:14:\"socialProfiles\";i:2;s:19:\"personalPreferences\";}s:36:\"dismiss_configuration_workout_notice\";b:1;s:34:\"dismiss_premium_deactivated_notice\";b:0;s:19:\"importing_completed\";a:5:{s:30:\"aioseo_custom_archive_settings\";b:1;s:31:\"aioseo_default_archive_settings\";b:1;s:23:\"aioseo_general_settings\";b:1;s:32:\"aioseo_posttype_default_settings\";b:1;s:24:\"aioseo_taxonomy_settings\";b:1;}s:26:\"wincher_integration_active\";b:1;s:14:\"wincher_tokens\";a:0:{}s:36:\"wincher_automatically_add_keyphrases\";b:0;s:18:\"wincher_website_id\";s:0:\"\";s:28:\"wordproof_integration_active\";b:0;s:29:\"wordproof_integration_changed\";b:0;s:18:\"first_time_install\";b:0;s:34:\"should_redirect_after_install_free\";b:0;s:34:\"activation_redirect_timestamp_free\";i:1662932741;s:18:\"remove_feed_global\";b:0;s:27:\"remove_feed_global_comments\";b:0;s:25:\"remove_feed_post_comments\";b:0;s:19:\"remove_feed_authors\";b:0;s:22:\"remove_feed_categories\";b:0;s:16:\"remove_feed_tags\";b:0;s:29:\"remove_feed_custom_taxonomies\";b:0;s:22:\"remove_feed_post_types\";b:0;s:18:\"remove_feed_search\";b:0;s:21:\"remove_atom_rdf_feeds\";b:0;s:17:\"remove_shortlinks\";b:0;s:21:\"remove_rest_api_links\";b:0;s:20:\"remove_rsd_wlw_links\";b:0;s:19:\"remove_oembed_links\";b:0;s:16:\"remove_generator\";b:0;s:20:\"remove_emoji_scripts\";b:0;s:24:\"remove_powered_by_header\";b:0;s:22:\"remove_pingback_header\";b:0;s:28:\"clean_campaign_tracking_urls\";b:0;s:16:\"clean_permalinks\";b:0;s:32:\"clean_permalinks_extra_variables\";s:0:\"\";s:14:\"search_cleanup\";b:0;s:20:\"search_cleanup_emoji\";b:0;s:23:\"search_cleanup_patterns\";b:0;s:22:\"search_character_limit\";i:50;}', 'yes'),
(1178, 'wpseo_titles', 'a:106:{s:17:\"forcerewritetitle\";b:0;s:9:\"separator\";s:7:\"sc-dash\";s:16:\"title-home-wpseo\";s:42:\"%%sitename%% %%page%% %%sep%% %%sitedesc%%\";s:18:\"title-author-wpseo\";s:45:\"%%name%%, Автор в %%sitename%% %%page%%\";s:19:\"title-archive-wpseo\";s:38:\"%%date%% %%page%% %%sep%% %%sitename%%\";s:18:\"title-search-wpseo\";s:64:\"Вы искали %%searchphrase%% %%page%% %%sep%% %%sitename%%\";s:15:\"title-404-wpseo\";s:57:\"Страница не найдена %%sep%% %%sitename%%\";s:25:\"social-title-author-wpseo\";s:8:\"%%name%%\";s:26:\"social-title-archive-wpseo\";s:8:\"%%date%%\";s:31:\"social-description-author-wpseo\";s:0:\"\";s:32:\"social-description-archive-wpseo\";s:0:\"\";s:29:\"social-image-url-author-wpseo\";s:0:\"\";s:30:\"social-image-url-archive-wpseo\";s:0:\"\";s:28:\"social-image-id-author-wpseo\";i:0;s:29:\"social-image-id-archive-wpseo\";i:0;s:19:\"metadesc-home-wpseo\";s:0:\"\";s:21:\"metadesc-author-wpseo\";s:0:\"\";s:22:\"metadesc-archive-wpseo\";s:0:\"\";s:9:\"rssbefore\";s:0:\"\";s:8:\"rssafter\";s:84:\"Сообщение %%POSTLINK%% появились сначала на %%BLOGLINK%%.\";s:20:\"noindex-author-wpseo\";b:0;s:28:\"noindex-author-noposts-wpseo\";b:1;s:21:\"noindex-archive-wpseo\";b:1;s:14:\"disable-author\";b:0;s:12:\"disable-date\";b:0;s:19:\"disable-post_format\";b:0;s:18:\"disable-attachment\";b:1;s:20:\"breadcrumbs-404crumb\";s:54:\"Ошибка 404: страница не найдена\";s:29:\"breadcrumbs-display-blog-page\";b:1;s:20:\"breadcrumbs-boldlast\";b:0;s:25:\"breadcrumbs-archiveprefix\";s:19:\"Архивы для\";s:18:\"breadcrumbs-enable\";b:1;s:16:\"breadcrumbs-home\";s:31:\"Главная страница\";s:18:\"breadcrumbs-prefix\";s:0:\"\";s:24:\"breadcrumbs-searchprefix\";s:17:\"Вы искали\";s:15:\"breadcrumbs-sep\";s:7:\"&raquo;\";s:12:\"website_name\";s:0:\"\";s:11:\"person_name\";s:0:\"\";s:11:\"person_logo\";s:61:\"http://portfolio2/wp-content/uploads/2022/09/cropped-logo.png\";s:22:\"alternate_website_name\";s:0:\"\";s:12:\"company_logo\";s:0:\"\";s:12:\"company_name\";s:0:\"\";s:17:\"company_or_person\";s:6:\"person\";s:25:\"company_or_person_user_id\";i:1;s:17:\"stripcategorybase\";b:0;s:26:\"open_graph_frontpage_title\";s:12:\"%%sitename%%\";s:25:\"open_graph_frontpage_desc\";s:0:\"\";s:26:\"open_graph_frontpage_image\";s:0:\"\";s:10:\"title-post\";s:39:\"%%title%% %%page%% %%sep%% %%sitename%%\";s:13:\"metadesc-post\";s:0:\"\";s:12:\"noindex-post\";b:0;s:23:\"display-metabox-pt-post\";b:1;s:23:\"post_types-post-maintax\";i:0;s:21:\"schema-page-type-post\";s:7:\"WebPage\";s:24:\"schema-article-type-post\";s:7:\"Article\";s:17:\"social-title-post\";s:9:\"%%title%%\";s:23:\"social-description-post\";s:0:\"\";s:21:\"social-image-url-post\";s:0:\"\";s:20:\"social-image-id-post\";i:0;s:10:\"title-page\";s:39:\"%%title%% %%page%% %%sep%% %%sitename%%\";s:13:\"metadesc-page\";s:0:\"\";s:12:\"noindex-page\";b:0;s:23:\"display-metabox-pt-page\";b:1;s:23:\"post_types-page-maintax\";i:0;s:21:\"schema-page-type-page\";s:7:\"WebPage\";s:24:\"schema-article-type-page\";s:4:\"None\";s:17:\"social-title-page\";s:9:\"%%title%%\";s:23:\"social-description-page\";s:0:\"\";s:21:\"social-image-url-page\";s:0:\"\";s:20:\"social-image-id-page\";i:0;s:16:\"title-attachment\";s:39:\"%%title%% %%page%% %%sep%% %%sitename%%\";s:19:\"metadesc-attachment\";s:0:\"\";s:18:\"noindex-attachment\";b:0;s:29:\"display-metabox-pt-attachment\";b:1;s:29:\"post_types-attachment-maintax\";i:0;s:27:\"schema-page-type-attachment\";s:7:\"WebPage\";s:30:\"schema-article-type-attachment\";s:4:\"None\";s:18:\"title-tax-category\";s:57:\"Архивы %%term_title%% %%page%% %%sep%% %%sitename%%\";s:21:\"metadesc-tax-category\";s:0:\"\";s:28:\"display-metabox-tax-category\";b:1;s:20:\"noindex-tax-category\";b:0;s:25:\"social-title-tax-category\";s:27:\"Архивы %%term_title%%\";s:31:\"social-description-tax-category\";s:0:\"\";s:29:\"social-image-url-tax-category\";s:0:\"\";s:28:\"social-image-id-tax-category\";i:0;s:18:\"title-tax-post_tag\";s:57:\"Архивы %%term_title%% %%page%% %%sep%% %%sitename%%\";s:21:\"metadesc-tax-post_tag\";s:0:\"\";s:28:\"display-metabox-tax-post_tag\";b:1;s:20:\"noindex-tax-post_tag\";b:0;s:25:\"social-title-tax-post_tag\";s:27:\"Архивы %%term_title%%\";s:31:\"social-description-tax-post_tag\";s:0:\"\";s:29:\"social-image-url-tax-post_tag\";s:0:\"\";s:28:\"social-image-id-tax-post_tag\";i:0;s:21:\"title-tax-post_format\";s:57:\"Архивы %%term_title%% %%page%% %%sep%% %%sitename%%\";s:24:\"metadesc-tax-post_format\";s:0:\"\";s:31:\"display-metabox-tax-post_format\";b:1;s:23:\"noindex-tax-post_format\";b:1;s:28:\"social-title-tax-post_format\";s:27:\"Архивы %%term_title%%\";s:34:\"social-description-tax-post_format\";s:0:\"\";s:32:\"social-image-url-tax-post_format\";s:0:\"\";s:31:\"social-image-id-tax-post_format\";i:0;s:14:\"person_logo_id\";i:75;s:15:\"company_logo_id\";i:0;s:17:\"company_logo_meta\";b:0;s:16:\"person_logo_meta\";a:10:{s:5:\"width\";i:512;s:6:\"height\";i:512;s:8:\"filesize\";i:54370;s:3:\"url\";s:61:\"http://portfolio2/wp-content/uploads/2022/09/cropped-logo.png\";s:4:\"path\";s:76:\"C:\\OpenServer\\domains\\Portfolio2/wp-content/uploads/2022/09/cropped-logo.png\";s:4:\"size\";s:4:\"full\";s:2:\"id\";i:75;s:3:\"alt\";s:0:\"\";s:6:\"pixels\";i:262144;s:4:\"type\";s:9:\"image/png\";}s:29:\"open_graph_frontpage_image_id\";i:0;}', 'yes'),
(1179, 'wpseo_social', 'a:19:{s:13:\"facebook_site\";s:0:\"\";s:13:\"instagram_url\";s:0:\"\";s:12:\"linkedin_url\";s:0:\"\";s:11:\"myspace_url\";s:0:\"\";s:16:\"og_default_image\";s:0:\"\";s:19:\"og_default_image_id\";s:0:\"\";s:18:\"og_frontpage_title\";s:0:\"\";s:17:\"og_frontpage_desc\";s:0:\"\";s:18:\"og_frontpage_image\";s:0:\"\";s:21:\"og_frontpage_image_id\";s:0:\"\";s:9:\"opengraph\";b:1;s:13:\"pinterest_url\";s:0:\"\";s:15:\"pinterestverify\";s:0:\"\";s:7:\"twitter\";b:1;s:12:\"twitter_site\";s:0:\"\";s:17:\"twitter_card_type\";s:19:\"summary_large_image\";s:11:\"youtube_url\";s:0:\"\";s:13:\"wikipedia_url\";s:0:\"\";s:17:\"other_social_urls\";a:0:{}}', 'yes'),
(1205, 'yoast_premium_as_an_addon_installer', 'completed', 'yes'),
(1206, 'yoast_migrations_premium', 'a:1:{s:7:\"version\";s:6:\"19.2.1\";}', 'yes'),
(1207, 'wpseo_premium', 'a:4:{s:34:\"prominent_words_indexing_completed\";b:1;s:8:\"workouts\";a:2:{s:11:\"cornerstone\";a:3:{s:13:\"finishedSteps\";a:0:{}s:16:\"indexablesByStep\";a:5:{s:8:\"addLinks\";a:0:{}s:10:\"checkLinks\";a:0:{}s:18:\"chooseCornerstones\";a:0:{}s:8:\"improved\";a:0:{}s:7:\"skipped\";a:0:{}}s:8:\"priority\";i:20;}s:8:\"orphaned\";a:3:{s:13:\"finishedSteps\";a:0:{}s:16:\"indexablesByStep\";a:7:{s:13:\"improveRemove\";a:5:{i:0;s:1:\"9\";i:1;s:2:\"13\";i:2;s:2:\"14\";i:3;s:2:\"15\";i:4;s:2:\"20\";}s:6:\"update\";a:0:{}s:8:\"addLinks\";a:0:{}s:7:\"removed\";a:0:{}s:9:\"noindexed\";a:0:{}s:8:\"improved\";a:0:{}s:7:\"skipped\";a:0:{}}s:8:\"priority\";i:30;}}s:29:\"should_redirect_after_install\";b:0;s:29:\"activation_redirect_timestamp\";i:1662932963;}', 'yes'),
(1208, 'wpseo_current_version', '16', 'no'),
(1209, 'wpseo_premium_version', '19.2.1', 'yes'),
(1210, 'wpseo-premium-redirects-export-plain', 'a:0:{}', 'yes'),
(1211, 'wpseo-premium-redirects-export-regex', 'a:0:{}', 'yes'),
(1220, 'wpseo_tracking_last_request', '1662932965', 'yes'),
(1221, '_transient_total_unindexed_prominent_words', '0', 'yes'),
(1238, '_transient_yoast_i18n_wordpress-seo_promo_hide', '1', 'yes'),
(1247, '_site_transient_update_core', 'O:8:\"stdClass\":4:{s:7:\"updates\";a:1:{i:0;O:8:\"stdClass\":10:{s:8:\"response\";s:6:\"latest\";s:8:\"download\";s:65:\"https://downloads.wordpress.org/release/ru_RU/wordpress-6.0.2.zip\";s:6:\"locale\";s:5:\"ru_RU\";s:8:\"packages\";O:8:\"stdClass\":5:{s:4:\"full\";s:65:\"https://downloads.wordpress.org/release/ru_RU/wordpress-6.0.2.zip\";s:10:\"no_content\";s:0:\"\";s:11:\"new_bundled\";s:0:\"\";s:7:\"partial\";s:0:\"\";s:8:\"rollback\";s:0:\"\";}s:7:\"current\";s:5:\"6.0.2\";s:7:\"version\";s:5:\"6.0.2\";s:11:\"php_version\";s:6:\"5.6.20\";s:13:\"mysql_version\";s:3:\"5.0\";s:11:\"new_bundled\";s:3:\"5.9\";s:15:\"partial_version\";s:0:\"\";}}s:12:\"last_checked\";i:1663156612;s:15:\"version_checked\";s:5:\"6.0.2\";s:12:\"translations\";a:0:{}}', 'no');
INSERT INTO `eltech_options` (`option_id`, `option_name`, `option_value`, `autoload`) VALUES
(1250, '_site_transient_update_plugins', 'O:8:\"stdClass\":5:{s:12:\"last_checked\";i:1663156612;s:8:\"response\";a:0:{}s:12:\"translations\";a:0:{}s:9:\"no_update\";a:6:{s:30:\"advanced-custom-fields/acf.php\";O:8:\"stdClass\":10:{s:2:\"id\";s:36:\"w.org/plugins/advanced-custom-fields\";s:4:\"slug\";s:22:\"advanced-custom-fields\";s:6:\"plugin\";s:30:\"advanced-custom-fields/acf.php\";s:11:\"new_version\";s:6:\"5.12.3\";s:3:\"url\";s:53:\"https://wordpress.org/plugins/advanced-custom-fields/\";s:7:\"package\";s:72:\"https://downloads.wordpress.org/plugin/advanced-custom-fields.5.12.3.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:75:\"https://ps.w.org/advanced-custom-fields/assets/icon-256x256.png?rev=1082746\";s:2:\"1x\";s:75:\"https://ps.w.org/advanced-custom-fields/assets/icon-128x128.png?rev=1082746\";}s:7:\"banners\";a:2:{s:2:\"2x\";s:78:\"https://ps.w.org/advanced-custom-fields/assets/banner-1544x500.jpg?rev=1729099\";s:2:\"1x\";s:77:\"https://ps.w.org/advanced-custom-fields/assets/banner-772x250.jpg?rev=1729102\";}s:11:\"banners_rtl\";a:0:{}s:8:\"requires\";s:3:\"4.7\";}s:19:\"akismet/akismet.php\";O:8:\"stdClass\":10:{s:2:\"id\";s:21:\"w.org/plugins/akismet\";s:4:\"slug\";s:7:\"akismet\";s:6:\"plugin\";s:19:\"akismet/akismet.php\";s:11:\"new_version\";s:3:\"5.0\";s:3:\"url\";s:38:\"https://wordpress.org/plugins/akismet/\";s:7:\"package\";s:54:\"https://downloads.wordpress.org/plugin/akismet.5.0.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:59:\"https://ps.w.org/akismet/assets/icon-256x256.png?rev=969272\";s:2:\"1x\";s:59:\"https://ps.w.org/akismet/assets/icon-128x128.png?rev=969272\";}s:7:\"banners\";a:1:{s:2:\"1x\";s:61:\"https://ps.w.org/akismet/assets/banner-772x250.jpg?rev=479904\";}s:11:\"banners_rtl\";a:0:{}s:8:\"requires\";s:3:\"5.0\";}s:22:\"cyr2lat/cyr-to-lat.php\";O:8:\"stdClass\":10:{s:2:\"id\";s:21:\"w.org/plugins/cyr2lat\";s:4:\"slug\";s:7:\"cyr2lat\";s:6:\"plugin\";s:22:\"cyr2lat/cyr-to-lat.php\";s:11:\"new_version\";s:5:\"5.3.0\";s:3:\"url\";s:38:\"https://wordpress.org/plugins/cyr2lat/\";s:7:\"package\";s:56:\"https://downloads.wordpress.org/plugin/cyr2lat.5.3.0.zip\";s:5:\"icons\";a:3:{s:2:\"2x\";s:60:\"https://ps.w.org/cyr2lat/assets/icon-256x256.jpg?rev=2434252\";s:2:\"1x\";s:52:\"https://ps.w.org/cyr2lat/assets/icon.svg?rev=2498806\";s:3:\"svg\";s:52:\"https://ps.w.org/cyr2lat/assets/icon.svg?rev=2498806\";}s:7:\"banners\";a:2:{s:2:\"2x\";s:63:\"https://ps.w.org/cyr2lat/assets/banner-1544x500.png?rev=2434252\";s:2:\"1x\";s:62:\"https://ps.w.org/cyr2lat/assets/banner-772x250.png?rev=2434252\";}s:11:\"banners_rtl\";a:0:{}s:8:\"requires\";s:3:\"5.1\";}s:23:\"anti-spam/anti-spam.php\";O:8:\"stdClass\":10:{s:2:\"id\";s:23:\"w.org/plugins/anti-spam\";s:4:\"slug\";s:9:\"anti-spam\";s:6:\"plugin\";s:23:\"anti-spam/anti-spam.php\";s:11:\"new_version\";s:5:\"7.3.1\";s:3:\"url\";s:40:\"https://wordpress.org/plugins/anti-spam/\";s:7:\"package\";s:52:\"https://downloads.wordpress.org/plugin/anti-spam.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:62:\"https://ps.w.org/anti-spam/assets/icon-256x256.gif?rev=2394493\";s:2:\"1x\";s:62:\"https://ps.w.org/anti-spam/assets/icon-128x128.gif?rev=2394493\";}s:7:\"banners\";a:2:{s:2:\"2x\";s:65:\"https://ps.w.org/anti-spam/assets/banner-1544x500.png?rev=2394511\";s:2:\"1x\";s:64:\"https://ps.w.org/anti-spam/assets/banner-772x250.png?rev=2394513\";}s:11:\"banners_rtl\";a:0:{}s:8:\"requires\";s:3:\"5.2\";}s:27:\"wp-super-cache/wp-cache.php\";O:8:\"stdClass\":10:{s:2:\"id\";s:28:\"w.org/plugins/wp-super-cache\";s:4:\"slug\";s:14:\"wp-super-cache\";s:6:\"plugin\";s:27:\"wp-super-cache/wp-cache.php\";s:11:\"new_version\";s:3:\"1.8\";s:3:\"url\";s:45:\"https://wordpress.org/plugins/wp-super-cache/\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/plugin/wp-super-cache.1.8.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:67:\"https://ps.w.org/wp-super-cache/assets/icon-256x256.png?rev=1095422\";s:2:\"1x\";s:67:\"https://ps.w.org/wp-super-cache/assets/icon-128x128.png?rev=1095422\";}s:7:\"banners\";a:2:{s:2:\"2x\";s:70:\"https://ps.w.org/wp-super-cache/assets/banner-1544x500.png?rev=1082414\";s:2:\"1x\";s:69:\"https://ps.w.org/wp-super-cache/assets/banner-772x250.png?rev=1082414\";}s:11:\"banners_rtl\";a:0:{}s:8:\"requires\";s:3:\"5.9\";}s:24:\"wordpress-seo/wp-seo.php\";O:8:\"stdClass\":10:{s:2:\"id\";s:27:\"w.org/plugins/wordpress-seo\";s:4:\"slug\";s:13:\"wordpress-seo\";s:6:\"plugin\";s:24:\"wordpress-seo/wp-seo.php\";s:11:\"new_version\";s:6:\"19.6.1\";s:3:\"url\";s:44:\"https://wordpress.org/plugins/wordpress-seo/\";s:7:\"package\";s:63:\"https://downloads.wordpress.org/plugin/wordpress-seo.19.6.1.zip\";s:5:\"icons\";a:3:{s:2:\"2x\";s:66:\"https://ps.w.org/wordpress-seo/assets/icon-256x256.png?rev=2643727\";s:2:\"1x\";s:58:\"https://ps.w.org/wordpress-seo/assets/icon.svg?rev=2363699\";s:3:\"svg\";s:58:\"https://ps.w.org/wordpress-seo/assets/icon.svg?rev=2363699\";}s:7:\"banners\";a:2:{s:2:\"2x\";s:69:\"https://ps.w.org/wordpress-seo/assets/banner-1544x500.png?rev=2643727\";s:2:\"1x\";s:68:\"https://ps.w.org/wordpress-seo/assets/banner-772x250.png?rev=2643727\";}s:11:\"banners_rtl\";a:2:{s:2:\"2x\";s:73:\"https://ps.w.org/wordpress-seo/assets/banner-1544x500-rtl.png?rev=2643727\";s:2:\"1x\";s:72:\"https://ps.w.org/wordpress-seo/assets/banner-772x250-rtl.png?rev=2643727\";}s:8:\"requires\";s:3:\"5.9\";}}s:7:\"checked\";a:8:{s:30:\"advanced-custom-fields/acf.php\";s:6:\"5.12.3\";s:34:\"advanced-custom-fields-pro/acf.php\";s:6:\"5.12.3\";s:19:\"akismet/akismet.php\";s:3:\"5.0\";s:22:\"cyr2lat/cyr-to-lat.php\";s:5:\"5.3.0\";s:23:\"anti-spam/anti-spam.php\";s:5:\"7.3.1\";s:27:\"wp-super-cache/wp-cache.php\";s:3:\"1.8\";s:24:\"wordpress-seo/wp-seo.php\";s:6:\"19.6.1\";s:40:\"wordpress-seo-premium/wp-seo-premium.php\";s:6:\"19.2.1\";}}', 'no'),
(1251, '_site_transient_update_themes', 'O:8:\"stdClass\":5:{s:12:\"last_checked\";i:1663156612;s:7:\"checked\";a:4:{s:14:\"portfolioTheme\";s:0:\"\";s:12:\"twentytwenty\";s:3:\"2.0\";s:15:\"twentytwentyone\";s:3:\"1.6\";s:15:\"twentytwentytwo\";s:3:\"1.2\";}s:8:\"response\";a:0:{}s:9:\"no_update\";a:3:{s:12:\"twentytwenty\";a:6:{s:5:\"theme\";s:12:\"twentytwenty\";s:11:\"new_version\";s:3:\"2.0\";s:3:\"url\";s:42:\"https://wordpress.org/themes/twentytwenty/\";s:7:\"package\";s:58:\"https://downloads.wordpress.org/theme/twentytwenty.2.0.zip\";s:8:\"requires\";s:3:\"4.7\";s:12:\"requires_php\";s:5:\"5.2.4\";}s:15:\"twentytwentyone\";a:6:{s:5:\"theme\";s:15:\"twentytwentyone\";s:11:\"new_version\";s:3:\"1.6\";s:3:\"url\";s:45:\"https://wordpress.org/themes/twentytwentyone/\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/theme/twentytwentyone.1.6.zip\";s:8:\"requires\";s:3:\"5.3\";s:12:\"requires_php\";s:3:\"5.6\";}s:15:\"twentytwentytwo\";a:6:{s:5:\"theme\";s:15:\"twentytwentytwo\";s:11:\"new_version\";s:3:\"1.2\";s:3:\"url\";s:45:\"https://wordpress.org/themes/twentytwentytwo/\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/theme/twentytwentytwo.1.2.zip\";s:8:\"requires\";s:3:\"5.9\";s:12:\"requires_php\";s:3:\"5.6\";}}s:12:\"translations\";a:0:{}}', 'no'),
(1252, 'wp_super_cache_index_detected', '3', 'no'),
(1254, 'wpsupercache_start', '1662933547', 'yes'),
(1255, 'wpsupercache_count', '0', 'yes'),
(1256, 'wpsc_2022-survey', '0', 'no'),
(1261, 'wpseo_redirect', 'a:2:{s:20:\"disable_php_redirect\";s:3:\"off\";s:13:\"separate_file\";s:3:\"off\";}', 'yes'),
(1262, 'titan_factory_dismissed_notices', 'a:1:{s:60:\"wbcr_factory_notice_wtitan_creativemotion_support_suggestion\";i:0;}', 'yes'),
(1311, 'options_footer-text', '©  2022 ООО «ЭЛЕКТРОННАЯ ТЕХНИКА»', 'no'),
(1312, '_options_footer-text', 'field_631e61c7e0c26', 'no'),
(1313, 'options_headder-gallery', 'a:3:{i:0;s:2:\"86\";i:1;s:2:\"85\";i:2;s:2:\"84\";}', 'no'),
(1314, '_options_headder-gallery', 'field_631e622fe0c27', 'no'),
(1315, 'options_Big-text-header', 'SOME CONTENT FOR EXAMPLE IS TITLE OF COMPANY...', 'no'),
(1316, '_options_Big-text-header', 'field_631e62bce0c28', 'no'),
(1317, 'options_normal-text-header', 'OTHER ADDITIONAL CONTENT...', 'no'),
(1318, '_options_normal-text-header', 'field_631e6331e0c29', 'no'),
(1370, 'wp_calendar_block_has_published_posts', '1', 'yes'),
(1426, 'titan_last_check_update_time', '1663156606', 'yes'),
(1427, 'titan_last_check_update', 'O:8:\"stdClass\":4:{s:4:\"slug\";s:9:\"anti-spam\";s:6:\"plugin\";s:23:\"anti-spam/anti-spam.php\";s:11:\"new_version\";s:5:\"7.2.2\";s:7:\"package\";s:109:\"https://github.com/Creative-Motion-Development/wp-plugin-titan-security/releases/download/7.2.2/anti-spam.zip\";}', 'yes'),
(1478, '_transient_timeout_acf_plugin_updates', '1663243012', 'no'),
(1479, '_transient_acf_plugin_updates', 'O:8:\"WP_Error\":3:{s:6:\"errors\";a:1:{s:19:\"http_request_failed\";a:1:{i:0;s:70:\"cURL error 6: Could not resolve host: connect.advancedcustomfields.com\";}}s:10:\"error_data\";a:0:{}s:18:\"\0*\0additional_data\";a:0:{}}', 'no'),
(1480, '_site_transient_timeout_theme_roots', '1663158412', 'no'),
(1481, '_site_transient_theme_roots', 'a:4:{s:14:\"portfolioTheme\";s:7:\"/themes\";s:12:\"twentytwenty\";s:7:\"/themes\";s:15:\"twentytwentyone\";s:7:\"/themes\";s:15:\"twentytwentytwo\";s:7:\"/themes\";}', 'no'),
(1484, '_site_transient_yoast_translations_wordpress-seo-premium', 'a:2:{s:21:\"wordpress-seo-premium\";a:0:{}s:13:\"_last_checked\";i:1663156678;}', 'no'),
(1485, '_transient_timeout_global_styles_portfolioTheme', '1663156837', 'no'),
(1486, '_transient_global_styles_portfolioTheme', 'body{--wp--preset--color--black: #000000;--wp--preset--color--cyan-bluish-gray: #abb8c3;--wp--preset--color--white: #ffffff;--wp--preset--color--pale-pink: #f78da7;--wp--preset--color--vivid-red: #cf2e2e;--wp--preset--color--luminous-vivid-orange: #ff6900;--wp--preset--color--luminous-vivid-amber: #fcb900;--wp--preset--color--light-green-cyan: #7bdcb5;--wp--preset--color--vivid-green-cyan: #00d084;--wp--preset--color--pale-cyan-blue: #8ed1fc;--wp--preset--color--vivid-cyan-blue: #0693e3;--wp--preset--color--vivid-purple: #9b51e0;--wp--preset--gradient--vivid-cyan-blue-to-vivid-purple: linear-gradient(135deg,rgba(6,147,227,1) 0%,rgb(155,81,224) 100%);--wp--preset--gradient--light-green-cyan-to-vivid-green-cyan: linear-gradient(135deg,rgb(122,220,180) 0%,rgb(0,208,130) 100%);--wp--preset--gradient--luminous-vivid-amber-to-luminous-vivid-orange: linear-gradient(135deg,rgba(252,185,0,1) 0%,rgba(255,105,0,1) 100%);--wp--preset--gradient--luminous-vivid-orange-to-vivid-red: linear-gradient(135deg,rgba(255,105,0,1) 0%,rgb(207,46,46) 100%);--wp--preset--gradient--very-light-gray-to-cyan-bluish-gray: linear-gradient(135deg,rgb(238,238,238) 0%,rgb(169,184,195) 100%);--wp--preset--gradient--cool-to-warm-spectrum: linear-gradient(135deg,rgb(74,234,220) 0%,rgb(151,120,209) 20%,rgb(207,42,186) 40%,rgb(238,44,130) 60%,rgb(251,105,98) 80%,rgb(254,248,76) 100%);--wp--preset--gradient--blush-light-purple: linear-gradient(135deg,rgb(255,206,236) 0%,rgb(152,150,240) 100%);--wp--preset--gradient--blush-bordeaux: linear-gradient(135deg,rgb(254,205,165) 0%,rgb(254,45,45) 50%,rgb(107,0,62) 100%);--wp--preset--gradient--luminous-dusk: linear-gradient(135deg,rgb(255,203,112) 0%,rgb(199,81,192) 50%,rgb(65,88,208) 100%);--wp--preset--gradient--pale-ocean: linear-gradient(135deg,rgb(255,245,203) 0%,rgb(182,227,212) 50%,rgb(51,167,181) 100%);--wp--preset--gradient--electric-grass: linear-gradient(135deg,rgb(202,248,128) 0%,rgb(113,206,126) 100%);--wp--preset--gradient--midnight: linear-gradient(135deg,rgb(2,3,129) 0%,rgb(40,116,252) 100%);--wp--preset--duotone--dark-grayscale: url(\'#wp-duotone-dark-grayscale\');--wp--preset--duotone--grayscale: url(\'#wp-duotone-grayscale\');--wp--preset--duotone--purple-yellow: url(\'#wp-duotone-purple-yellow\');--wp--preset--duotone--blue-red: url(\'#wp-duotone-blue-red\');--wp--preset--duotone--midnight: url(\'#wp-duotone-midnight\');--wp--preset--duotone--magenta-yellow: url(\'#wp-duotone-magenta-yellow\');--wp--preset--duotone--purple-green: url(\'#wp-duotone-purple-green\');--wp--preset--duotone--blue-orange: url(\'#wp-duotone-blue-orange\');--wp--preset--font-size--small: 13px;--wp--preset--font-size--medium: 20px;--wp--preset--font-size--large: 36px;--wp--preset--font-size--x-large: 42px;}.has-black-color{color: var(--wp--preset--color--black) !important;}.has-cyan-bluish-gray-color{color: var(--wp--preset--color--cyan-bluish-gray) !important;}.has-white-color{color: var(--wp--preset--color--white) !important;}.has-pale-pink-color{color: var(--wp--preset--color--pale-pink) !important;}.has-vivid-red-color{color: var(--wp--preset--color--vivid-red) !important;}.has-luminous-vivid-orange-color{color: var(--wp--preset--color--luminous-vivid-orange) !important;}.has-luminous-vivid-amber-color{color: var(--wp--preset--color--luminous-vivid-amber) !important;}.has-light-green-cyan-color{color: var(--wp--preset--color--light-green-cyan) !important;}.has-vivid-green-cyan-color{color: var(--wp--preset--color--vivid-green-cyan) !important;}.has-pale-cyan-blue-color{color: var(--wp--preset--color--pale-cyan-blue) !important;}.has-vivid-cyan-blue-color{color: var(--wp--preset--color--vivid-cyan-blue) !important;}.has-vivid-purple-color{color: var(--wp--preset--color--vivid-purple) !important;}.has-black-background-color{background-color: var(--wp--preset--color--black) !important;}.has-cyan-bluish-gray-background-color{background-color: var(--wp--preset--color--cyan-bluish-gray) !important;}.has-white-background-color{background-color: var(--wp--preset--color--white) !important;}.has-pale-pink-background-color{background-color: var(--wp--preset--color--pale-pink) !important;}.has-vivid-red-background-color{background-color: var(--wp--preset--color--vivid-red) !important;}.has-luminous-vivid-orange-background-color{background-color: var(--wp--preset--color--luminous-vivid-orange) !important;}.has-luminous-vivid-amber-background-color{background-color: var(--wp--preset--color--luminous-vivid-amber) !important;}.has-light-green-cyan-background-color{background-color: var(--wp--preset--color--light-green-cyan) !important;}.has-vivid-green-cyan-background-color{background-color: var(--wp--preset--color--vivid-green-cyan) !important;}.has-pale-cyan-blue-background-color{background-color: var(--wp--preset--color--pale-cyan-blue) !important;}.has-vivid-cyan-blue-background-color{background-color: var(--wp--preset--color--vivid-cyan-blue) !important;}.has-vivid-purple-background-color{background-color: var(--wp--preset--color--vivid-purple) !important;}.has-black-border-color{border-color: var(--wp--preset--color--black) !important;}.has-cyan-bluish-gray-border-color{border-color: var(--wp--preset--color--cyan-bluish-gray) !important;}.has-white-border-color{border-color: var(--wp--preset--color--white) !important;}.has-pale-pink-border-color{border-color: var(--wp--preset--color--pale-pink) !important;}.has-vivid-red-border-color{border-color: var(--wp--preset--color--vivid-red) !important;}.has-luminous-vivid-orange-border-color{border-color: var(--wp--preset--color--luminous-vivid-orange) !important;}.has-luminous-vivid-amber-border-color{border-color: var(--wp--preset--color--luminous-vivid-amber) !important;}.has-light-green-cyan-border-color{border-color: var(--wp--preset--color--light-green-cyan) !important;}.has-vivid-green-cyan-border-color{border-color: var(--wp--preset--color--vivid-green-cyan) !important;}.has-pale-cyan-blue-border-color{border-color: var(--wp--preset--color--pale-cyan-blue) !important;}.has-vivid-cyan-blue-border-color{border-color: var(--wp--preset--color--vivid-cyan-blue) !important;}.has-vivid-purple-border-color{border-color: var(--wp--preset--color--vivid-purple) !important;}.has-vivid-cyan-blue-to-vivid-purple-gradient-background{background: var(--wp--preset--gradient--vivid-cyan-blue-to-vivid-purple) !important;}.has-light-green-cyan-to-vivid-green-cyan-gradient-background{background: var(--wp--preset--gradient--light-green-cyan-to-vivid-green-cyan) !important;}.has-luminous-vivid-amber-to-luminous-vivid-orange-gradient-background{background: var(--wp--preset--gradient--luminous-vivid-amber-to-luminous-vivid-orange) !important;}.has-luminous-vivid-orange-to-vivid-red-gradient-background{background: var(--wp--preset--gradient--luminous-vivid-orange-to-vivid-red) !important;}.has-very-light-gray-to-cyan-bluish-gray-gradient-background{background: var(--wp--preset--gradient--very-light-gray-to-cyan-bluish-gray) !important;}.has-cool-to-warm-spectrum-gradient-background{background: var(--wp--preset--gradient--cool-to-warm-spectrum) !important;}.has-blush-light-purple-gradient-background{background: var(--wp--preset--gradient--blush-light-purple) !important;}.has-blush-bordeaux-gradient-background{background: var(--wp--preset--gradient--blush-bordeaux) !important;}.has-luminous-dusk-gradient-background{background: var(--wp--preset--gradient--luminous-dusk) !important;}.has-pale-ocean-gradient-background{background: var(--wp--preset--gradient--pale-ocean) !important;}.has-electric-grass-gradient-background{background: var(--wp--preset--gradient--electric-grass) !important;}.has-midnight-gradient-background{background: var(--wp--preset--gradient--midnight) !important;}.has-small-font-size{font-size: var(--wp--preset--font-size--small) !important;}.has-medium-font-size{font-size: var(--wp--preset--font-size--medium) !important;}.has-large-font-size{font-size: var(--wp--preset--font-size--large) !important;}.has-x-large-font-size{font-size: var(--wp--preset--font-size--x-large) !important;}', 'no');

-- --------------------------------------------------------

--
-- Структура таблицы `eltech_postmeta`
--

CREATE TABLE `eltech_postmeta` (
  `meta_id` bigint UNSIGNED NOT NULL,
  `post_id` bigint UNSIGNED NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_520_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Дамп данных таблицы `eltech_postmeta`
--

INSERT INTO `eltech_postmeta` (`meta_id`, `post_id`, `meta_key`, `meta_value`) VALUES
(1, 2, '_wp_page_template', 'default'),
(2, 3, '_wp_page_template', 'default'),
(3, 2, '_edit_lock', '1662290788:1'),
(4, 3, '_wp_trash_meta_status', 'draft'),
(5, 3, '_wp_trash_meta_time', '1662290967'),
(6, 3, '_wp_desired_post_slug', 'privacy-policy'),
(7, 2, '_wp_trash_meta_status', 'publish'),
(8, 2, '_wp_trash_meta_time', '1662290967'),
(9, 2, '_wp_desired_post_slug', 'sample-page'),
(10, 7, '_edit_lock', '1662290878:1'),
(11, 7, '_wp_page_template', 'index.php'),
(12, 10, '_edit_lock', '1662291015:1'),
(13, 10, '_wp_page_template', 'template-parts/page-intersting.php'),
(14, 7, '_wp_trash_meta_status', 'publish'),
(15, 7, '_wp_trash_meta_time', '1662291167'),
(16, 7, '_wp_desired_post_slug', '%d0%b3%d0%bb%d0%b0%d0%b2%d0%bd%d0%b0%d1%8f'),
(17, 10, '_wp_trash_meta_status', 'publish'),
(18, 10, '_wp_trash_meta_time', '1662291177'),
(19, 10, '_wp_desired_post_slug', '%d0%b8%d0%bd%d1%82%d0%b5%d1%80%d0%b5%d1%81%d0%bd%d0%be%d0%b5'),
(20, 13, '_edit_lock', '1662936323:1'),
(21, 15, '_edit_lock', '1662291250:1'),
(22, 15, '_wp_page_template', 'template-parts/page-intersting.php'),
(23, 13, '_wp_page_template', 'index.php'),
(24, 18, '_edit_lock', '1662291307:1'),
(25, 18, '_wp_page_template', 'template-parts/page-contacts.php'),
(26, 21, '_menu_item_type', 'post_type'),
(27, 21, '_menu_item_menu_item_parent', '0'),
(28, 21, '_menu_item_object_id', '18'),
(29, 21, '_menu_item_object', 'page'),
(30, 21, '_menu_item_target', ''),
(31, 21, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(32, 21, '_menu_item_xfn', ''),
(33, 21, '_menu_item_url', ''),
(34, 22, '_menu_item_type', 'post_type'),
(35, 22, '_menu_item_menu_item_parent', '0'),
(36, 22, '_menu_item_object_id', '15'),
(37, 22, '_menu_item_object', 'page'),
(38, 22, '_menu_item_target', ''),
(39, 22, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(40, 22, '_menu_item_xfn', ''),
(41, 22, '_menu_item_url', ''),
(42, 20, '_wp_trash_meta_status', 'publish'),
(43, 20, '_wp_trash_meta_time', '1662296235'),
(44, 24, '_menu_item_type', 'post_type'),
(45, 24, '_menu_item_menu_item_parent', '0'),
(46, 24, '_menu_item_object_id', '15'),
(47, 24, '_menu_item_object', 'page'),
(48, 24, '_menu_item_target', ''),
(49, 24, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(50, 24, '_menu_item_xfn', ''),
(51, 24, '_menu_item_url', ''),
(52, 25, '_menu_item_type', 'post_type'),
(53, 25, '_menu_item_menu_item_parent', '0'),
(54, 25, '_menu_item_object_id', '18'),
(55, 25, '_menu_item_object', 'page'),
(56, 25, '_menu_item_target', ''),
(57, 25, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(58, 25, '_menu_item_xfn', ''),
(59, 25, '_menu_item_url', ''),
(60, 23, '_wp_trash_meta_status', 'publish'),
(61, 23, '_wp_trash_meta_time', '1662300807'),
(62, 26, '_wp_trash_meta_status', 'publish'),
(63, 26, '_wp_trash_meta_time', '1662300820'),
(65, 28, '_edit_lock', '1662572657:1'),
(66, 29, '_wp_attached_file', '2022/09/no_image.jpg'),
(67, 29, '_wp_attachment_metadata', 'a:6:{s:5:\"width\";i:1200;s:6:\"height\";i:800;s:4:\"file\";s:20:\"2022/09/no_image.jpg\";s:8:\"filesize\";i:45428;s:5:\"sizes\";a:4:{s:6:\"medium\";a:5:{s:4:\"file\";s:20:\"no_image-300x200.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:200;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:2421;}s:5:\"large\";a:5:{s:4:\"file\";s:21:\"no_image-1024x683.jpg\";s:5:\"width\";i:1024;s:6:\"height\";i:683;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:13470;}s:9:\"thumbnail\";a:5:{s:4:\"file\";s:20:\"no_image-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:1674;}s:12:\"medium_large\";a:5:{s:4:\"file\";s:20:\"no_image-768x512.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:512;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:8911;}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(70, 28, '_thumbnail_id', '29'),
(73, 32, '_wp_attached_file', '2022/09/hero-4.jpg'),
(74, 32, '_wp_attachment_metadata', 'a:6:{s:5:\"width\";i:1920;s:6:\"height\";i:1280;s:4:\"file\";s:18:\"2022/09/hero-4.jpg\";s:8:\"filesize\";i:153769;s:5:\"sizes\";a:5:{s:6:\"medium\";a:5:{s:4:\"file\";s:18:\"hero-4-300x200.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:200;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:13773;}s:5:\"large\";a:5:{s:4:\"file\";s:19:\"hero-4-1024x683.jpg\";s:5:\"width\";i:1024;s:6:\"height\";i:683;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:94702;}s:9:\"thumbnail\";a:5:{s:4:\"file\";s:18:\"hero-4-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:6332;}s:12:\"medium_large\";a:5:{s:4:\"file\";s:18:\"hero-4-768x512.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:512;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:60131;}s:9:\"1536x1536\";a:5:{s:4:\"file\";s:20:\"hero-4-1536x1024.jpg\";s:5:\"width\";i:1536;s:6:\"height\";i:1024;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:175711;}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(79, 35, '_wp_attached_file', '2022/09/skyline-scaled.jpg'),
(80, 35, '_wp_attachment_metadata', 'a:7:{s:5:\"width\";i:2560;s:6:\"height\";i:1706;s:4:\"file\";s:26:\"2022/09/skyline-scaled.jpg\";s:8:\"filesize\";i:442422;s:5:\"sizes\";a:6:{s:6:\"medium\";a:5:{s:4:\"file\";s:19:\"skyline-300x200.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:200;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:17079;}s:5:\"large\";a:5:{s:4:\"file\";s:20:\"skyline-1024x683.jpg\";s:5:\"width\";i:1024;s:6:\"height\";i:683;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:103739;}s:9:\"thumbnail\";a:5:{s:4:\"file\";s:19:\"skyline-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:7879;}s:12:\"medium_large\";a:5:{s:4:\"file\";s:19:\"skyline-768x512.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:512;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:67785;}s:9:\"1536x1536\";a:5:{s:4:\"file\";s:21:\"skyline-1536x1024.jpg\";s:5:\"width\";i:1536;s:6:\"height\";i:1024;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:188923;}s:9:\"2048x2048\";a:5:{s:4:\"file\";s:21:\"skyline-2048x1365.jpg\";s:5:\"width\";i:2048;s:6:\"height\";i:1365;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:298581;}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}s:14:\"original_image\";s:11:\"skyline.jpg\";}'),
(87, 38, '_edit_lock', '1662396104:1'),
(90, 40, '_edit_lock', '1662397146:1'),
(95, 38, '_thumbnail_id', '35'),
(102, 43, '_edit_lock', '1662572354:1'),
(120, 28, '_edit_last', '1'),
(121, 50, '_edit_lock', '1662746213:1'),
(124, 50, '_edit_last', '1'),
(125, 52, '_edit_lock', '1662746259:1'),
(128, 52, '_edit_last', '1'),
(129, 54, '_edit_lock', '1662746295:1'),
(132, 54, '_edit_last', '1'),
(133, 56, '_edit_lock', '1662746498:1'),
(136, 56, '_edit_last', '1'),
(137, 58, '_edit_lock', '1662746528:1'),
(140, 58, '_edit_last', '1'),
(177, 61, '_edit_lock', '1662901265:1'),
(180, 61, '_edit_last', '1'),
(181, 63, '_edit_lock', '1662901749:1'),
(184, 63, '_edit_last', '1'),
(192, 1, '_edit_lock', '1662902402:1'),
(195, 1, '_wp_old_slug', '%d0%bf%d1%80%d0%b8%d0%b2%d0%b5%d1%82-%d0%bc%d0%b8%d1%80'),
(214, 43, '_edit_last', '1'),
(217, 40, '_edit_last', '1'),
(220, 38, '_edit_last', '1'),
(225, 1, '_edit_last', '1'),
(229, 63, '_wp_trash_meta_status', 'publish'),
(230, 63, '_wp_trash_meta_time', '1662902710'),
(231, 63, '_wp_desired_post_slug', 'sfsfsfs'),
(232, 61, '_wp_trash_meta_status', 'publish'),
(233, 61, '_wp_trash_meta_time', '1662902710'),
(234, 61, '_wp_desired_post_slug', 'na-glvavnoj'),
(235, 61, '_wp_trash_meta_comments_status', 'a:1:{i:16;s:1:\"1\";}'),
(236, 58, '_wp_trash_meta_status', 'publish'),
(237, 58, '_wp_trash_meta_time', '1662902710'),
(238, 58, '_wp_desired_post_slug', 'lenivaya-zagruzka-5'),
(239, 56, '_wp_trash_meta_status', 'publish'),
(240, 56, '_wp_trash_meta_time', '1662902710'),
(241, 56, '_wp_desired_post_slug', 'lenivaya-zagruzka-4'),
(242, 54, '_wp_trash_meta_status', 'publish'),
(243, 54, '_wp_trash_meta_time', '1662902710'),
(244, 54, '_wp_desired_post_slug', 'lenivaya-zagruzka-3'),
(245, 52, '_wp_trash_meta_status', 'publish'),
(246, 52, '_wp_trash_meta_time', '1662902710'),
(247, 52, '_wp_desired_post_slug', 'lenivaya-zagruzka-2'),
(248, 50, '_wp_trash_meta_status', 'publish'),
(249, 50, '_wp_trash_meta_time', '1662902710'),
(250, 50, '_wp_desired_post_slug', 'lenivaya-zagruzka'),
(251, 43, '_wp_trash_meta_status', 'publish'),
(252, 43, '_wp_trash_meta_time', '1662902710'),
(253, 43, '_wp_desired_post_slug', 'testovaya-zapis'),
(254, 43, '_wp_trash_meta_comments_status', 'a:5:{i:2;s:1:\"1\";i:4;s:1:\"1\";i:5;s:1:\"1\";i:7;s:1:\"1\";i:15;s:1:\"0\";}'),
(255, 40, '_wp_trash_meta_status', 'publish'),
(256, 40, '_wp_trash_meta_time', '1662902710'),
(257, 40, '_wp_desired_post_slug', 'zapis-iz-interesnogo'),
(258, 38, '_wp_trash_meta_status', 'publish'),
(259, 38, '_wp_trash_meta_time', '1662902710'),
(260, 38, '_wp_desired_post_slug', 'testovyj-post-2-iz-proektov'),
(261, 38, '_wp_trash_meta_comments_status', 'a:1:{i:6;s:1:\"1\";}'),
(262, 28, '_wp_trash_meta_status', 'publish'),
(263, 28, '_wp_trash_meta_time', '1662902710'),
(264, 28, '_wp_desired_post_slug', 'testovyj-post'),
(265, 28, '_wp_trash_meta_comments_status', 'a:8:{i:3;s:1:\"1\";i:8;s:1:\"1\";i:9;s:1:\"1\";i:10;s:1:\"1\";i:11;s:1:\"1\";i:12;s:1:\"1\";i:13;s:1:\"0\";i:14;s:1:\"0\";}'),
(266, 1, '_wp_trash_meta_status', 'publish'),
(267, 1, '_wp_trash_meta_time', '1662902710'),
(268, 1, '_wp_desired_post_slug', 'privet-mir'),
(269, 1, '_wp_trash_meta_comments_status', 'a:1:{i:1;s:1:\"1\";}'),
(270, 65, '_edit_lock', '1662902782:1'),
(273, 67, '_wp_attached_file', '2022/09/34-33.jpg'),
(274, 67, '_wp_attachment_metadata', 'a:6:{s:5:\"width\";i:1200;s:6:\"height\";i:800;s:4:\"file\";s:17:\"2022/09/34-33.jpg\";s:8:\"filesize\";i:135786;s:5:\"sizes\";a:4:{s:6:\"medium\";a:5:{s:4:\"file\";s:17:\"34-33-300x200.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:200;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:9688;}s:5:\"large\";a:5:{s:4:\"file\";s:18:\"34-33-1024x683.jpg\";s:5:\"width\";i:1024;s:6:\"height\";i:683;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:83099;}s:9:\"thumbnail\";a:5:{s:4:\"file\";s:17:\"34-33-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:4924;}s:12:\"medium_large\";a:5:{s:4:\"file\";s:17:\"34-33-768x512.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:512;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:46936;}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(277, 65, '_thumbnail_id', '67'),
(278, 68, '_edit_lock', '1662904211:1'),
(287, 74, '_wp_attached_file', '2022/09/logo.png'),
(288, 74, '_wp_attachment_metadata', 'a:6:{s:5:\"width\";i:512;s:6:\"height\";i:512;s:4:\"file\";s:16:\"2022/09/logo.png\";s:8:\"filesize\";i:57051;s:5:\"sizes\";a:2:{s:6:\"medium\";a:5:{s:4:\"file\";s:16:\"logo-300x300.png\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:9:\"image/png\";s:8:\"filesize\";i:25480;}s:9:\"thumbnail\";a:5:{s:4:\"file\";s:16:\"logo-150x150.png\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/png\";s:8:\"filesize\";i:10181;}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(289, 75, '_wp_attached_file', '2022/09/cropped-logo.png'),
(290, 75, '_wp_attachment_context', 'site-icon'),
(291, 75, '_wp_attachment_metadata', 'a:6:{s:5:\"width\";i:512;s:6:\"height\";i:512;s:4:\"file\";s:24:\"2022/09/cropped-logo.png\";s:8:\"filesize\";i:54370;s:5:\"sizes\";a:6:{s:6:\"medium\";a:5:{s:4:\"file\";s:24:\"cropped-logo-300x300.png\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:9:\"image/png\";s:8:\"filesize\";i:25480;}s:9:\"thumbnail\";a:5:{s:4:\"file\";s:24:\"cropped-logo-150x150.png\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/png\";s:8:\"filesize\";i:10181;}s:13:\"site_icon-270\";a:5:{s:4:\"file\";s:24:\"cropped-logo-270x270.png\";s:5:\"width\";i:270;s:6:\"height\";i:270;s:9:\"mime-type\";s:9:\"image/png\";s:8:\"filesize\";i:21840;}s:13:\"site_icon-192\";a:5:{s:4:\"file\";s:24:\"cropped-logo-192x192.png\";s:5:\"width\";i:192;s:6:\"height\";i:192;s:9:\"mime-type\";s:9:\"image/png\";s:8:\"filesize\";i:13953;}s:13:\"site_icon-180\";a:5:{s:4:\"file\";s:24:\"cropped-logo-180x180.png\";s:5:\"width\";i:180;s:6:\"height\";i:180;s:9:\"mime-type\";s:9:\"image/png\";s:8:\"filesize\";i:12716;}s:12:\"site_icon-32\";a:5:{s:4:\"file\";s:22:\"cropped-logo-32x32.png\";s:5:\"width\";i:32;s:6:\"height\";i:32;s:9:\"mime-type\";s:9:\"image/png\";s:8:\"filesize\";i:1373;}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(292, 76, '_wp_trash_meta_status', 'publish'),
(293, 76, '_wp_trash_meta_time', '1662932638'),
(294, 79, '_edit_last', '1'),
(295, 79, '_edit_lock', '1663006320:1'),
(296, 84, '_wp_attached_file', '2022/09/hero-1.jpg'),
(297, 84, '_wp_attachment_metadata', 'a:6:{s:5:\"width\";i:2160;s:6:\"height\";i:1080;s:4:\"file\";s:18:\"2022/09/hero-1.jpg\";s:8:\"filesize\";i:192637;s:5:\"sizes\";a:6:{s:6:\"medium\";a:5:{s:4:\"file\";s:18:\"hero-1-300x150.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:6618;}s:5:\"large\";a:5:{s:4:\"file\";s:19:\"hero-1-1024x512.jpg\";s:5:\"width\";i:1024;s:6:\"height\";i:512;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:53372;}s:9:\"thumbnail\";a:5:{s:4:\"file\";s:18:\"hero-1-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:3643;}s:12:\"medium_large\";a:5:{s:4:\"file\";s:18:\"hero-1-768x384.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:384;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:31716;}s:9:\"1536x1536\";a:5:{s:4:\"file\";s:19:\"hero-1-1536x768.jpg\";s:5:\"width\";i:1536;s:6:\"height\";i:768;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:110536;}s:9:\"2048x2048\";a:5:{s:4:\"file\";s:20:\"hero-1-2048x1024.jpg\";s:5:\"width\";i:2048;s:6:\"height\";i:1024;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:179720;}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(298, 85, '_wp_attached_file', '2022/09/hero-2.jpg'),
(299, 85, '_wp_attachment_metadata', 'a:6:{s:5:\"width\";i:1920;s:6:\"height\";i:1272;s:4:\"file\";s:18:\"2022/09/hero-2.jpg\";s:8:\"filesize\";i:467295;s:5:\"sizes\";a:5:{s:6:\"medium\";a:5:{s:4:\"file\";s:18:\"hero-2-300x199.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:199;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:15187;}s:5:\"large\";a:5:{s:4:\"file\";s:19:\"hero-2-1024x678.jpg\";s:5:\"width\";i:1024;s:6:\"height\";i:678;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:104875;}s:9:\"thumbnail\";a:5:{s:4:\"file\";s:18:\"hero-2-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:7174;}s:12:\"medium_large\";a:5:{s:4:\"file\";s:18:\"hero-2-768x509.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:509;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:65836;}s:9:\"1536x1536\";a:5:{s:4:\"file\";s:20:\"hero-2-1536x1018.jpg\";s:5:\"width\";i:1536;s:6:\"height\";i:1018;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:205229;}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(300, 86, '_wp_attached_file', '2022/09/hero-3.jpg'),
(301, 86, '_wp_attachment_metadata', 'a:6:{s:5:\"width\";i:1920;s:6:\"height\";i:1280;s:4:\"file\";s:18:\"2022/09/hero-3.jpg\";s:8:\"filesize\";i:365748;s:5:\"sizes\";a:5:{s:6:\"medium\";a:5:{s:4:\"file\";s:18:\"hero-3-300x200.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:200;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:10925;}s:5:\"large\";a:5:{s:4:\"file\";s:19:\"hero-3-1024x683.jpg\";s:5:\"width\";i:1024;s:6:\"height\";i:683;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:62287;}s:9:\"thumbnail\";a:5:{s:4:\"file\";s:18:\"hero-3-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:5479;}s:12:\"medium_large\";a:5:{s:4:\"file\";s:18:\"hero-3-768x512.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:512;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:40818;}s:9:\"1536x1536\";a:5:{s:4:\"file\";s:20:\"hero-3-1536x1024.jpg\";s:5:\"width\";i:1536;s:6:\"height\";i:1024;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:119223;}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(302, 13, '_edit_last', '1'),
(303, 13, '_yoast_indexnow_last_ping', '1662936320'),
(304, 13, '_yoast_wpseo_focuskeywords', '[]'),
(305, 13, '_yoast_wpseo_keywordsynonyms', '[\"\"]'),
(306, 13, '_yoast_wpseo_estimated-reading-time-minutes', '0'),
(307, 13, '_yoast_wpseo_wordproof_timestamp', ''),
(308, 13, 'footer-text', '©  2022 ООО «ЭЛЕКТРОННАЯ ТЕХНИКА»'),
(309, 13, '_footer-text', 'field_631e61c7e0c26'),
(310, 13, 'headder-gallery', 'a:3:{i:0;s:2:\"84\";i:1;s:2:\"85\";i:2;s:2:\"86\";}'),
(311, 13, '_headder-gallery', 'field_631e622fe0c27'),
(312, 13, 'Big-text-header', 'SOME CONTENT FOR EXAMPLE IS TITLE OF COMPANY'),
(313, 13, '_Big-text-header', 'field_631e62bce0c28'),
(314, 13, 'normal-text-header', 'OTHER ADDITIONAL CONTENT'),
(315, 13, '_normal-text-header', 'field_631e6331e0c29'),
(316, 87, 'footer-text', '©  2022 ООО «ЭЛЕКТРОННАЯ ТЕХНИКА»'),
(317, 87, '_footer-text', 'field_631e61c7e0c26'),
(318, 87, 'headder-gallery', 'a:3:{i:0;s:2:\"84\";i:1;s:2:\"85\";i:2;s:2:\"86\";}'),
(319, 87, '_headder-gallery', 'field_631e622fe0c27'),
(320, 87, 'Big-text-header', 'SOME CONTENT FOR EXAMPLE IS TITLE OF COMPANY'),
(321, 87, '_Big-text-header', 'field_631e62bce0c28'),
(322, 87, 'normal-text-header', 'OTHER ADDITIONAL CONTENT'),
(323, 87, '_normal-text-header', 'field_631e6331e0c29'),
(324, 91, '_edit_lock', '1663006911:1'),
(325, 92, '_edit_lock', '1663006869:1'),
(328, 91, '_edit_last', '1'),
(329, 91, '_yoast_indexnow_last_ping', '1663012605'),
(330, 91, '_yoast_wpseo_primary_category', '5'),
(331, 91, '_yoast_wpseo_focuskeywords', '[]'),
(332, 91, '_yoast_wpseo_keywordsynonyms', '[\"\"]'),
(333, 91, '_yoast_wpseo_estimated-reading-time-minutes', '0'),
(334, 91, '_yoast_wpseo_wordproof_timestamp', ''),
(335, 91, '_wp_trash_meta_status', 'publish'),
(336, 91, '_wp_trash_meta_time', '1663012603'),
(337, 91, '_wp_desired_post_slug', 'testovaya-zapis-dlya-proverki-formy-takie-dlinnye-ne-delat'),
(338, 91, '_wp_trash_meta_comments_status', 'a:1:{i:20;s:1:\"1\";}'),
(339, 68, '_wp_trash_meta_status', 'publish'),
(340, 68, '_wp_trash_meta_time', '1663012605'),
(341, 68, '_wp_desired_post_slug', 's-kommentariyami'),
(342, 68, '_yoast_indexnow_last_ping', '1663012605'),
(343, 68, '_wp_trash_meta_comments_status', 'a:3:{i:17;s:1:\"1\";i:18;s:1:\"1\";i:19;s:1:\"1\";}'),
(344, 65, '_wp_trash_meta_status', 'publish'),
(345, 65, '_wp_trash_meta_time', '1663012605'),
(346, 65, '_wp_desired_post_slug', 'bez-kommentariev'),
(347, 65, '_yoast_indexnow_last_ping', '1663012606'),
(348, 94, '_edit_lock', '1663014220:1'),
(349, 95, '_edit_lock', '1663012648:1'),
(352, 94, '_thumbnail_id', '67'),
(353, 94, '_edit_last', '1'),
(354, 94, '_yoast_indexnow_last_ping', '1663014217'),
(355, 94, '_yoast_wpseo_primary_category', '5'),
(356, 94, '_yoast_wpseo_focuskeywords', '[]'),
(357, 94, '_yoast_wpseo_keywordsynonyms', '[\"\"]'),
(358, 94, '_yoast_wpseo_estimated-reading-time-minutes', '0'),
(359, 94, '_yoast_wpseo_wordproof_timestamp', ''),
(362, 97, '_edit_lock', '1663014324:1'),
(363, 98, '_edit_lock', '1663014304:1'),
(366, 97, '_edit_last', '1'),
(367, 97, '_yoast_indexnow_last_ping', '1663014321'),
(368, 97, '_yoast_wpseo_primary_category', '5'),
(369, 97, '_yoast_wpseo_focuskeywords', '[]'),
(370, 97, '_yoast_wpseo_keywordsynonyms', '[\"\"]'),
(371, 97, '_yoast_wpseo_estimated-reading-time-minutes', '0'),
(372, 97, '_yoast_wpseo_wordproof_timestamp', '');

-- --------------------------------------------------------

--
-- Структура таблицы `eltech_posts`
--

CREATE TABLE `eltech_posts` (
  `ID` bigint UNSIGNED NOT NULL,
  `post_author` bigint UNSIGNED NOT NULL DEFAULT '0',
  `post_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_date_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_content` longtext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `post_title` text COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `post_excerpt` text COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `post_status` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'publish',
  `comment_status` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'open',
  `ping_status` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'open',
  `post_password` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `post_name` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `to_ping` text COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `pinged` text COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `post_modified` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_modified_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_content_filtered` longtext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `post_parent` bigint UNSIGNED NOT NULL DEFAULT '0',
  `guid` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `menu_order` int NOT NULL DEFAULT '0',
  `post_type` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'post',
  `post_mime_type` varchar(100) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `comment_count` bigint NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Дамп данных таблицы `eltech_posts`
--

INSERT INTO `eltech_posts` (`ID`, `post_author`, `post_date`, `post_date_gmt`, `post_content`, `post_title`, `post_excerpt`, `post_status`, `comment_status`, `ping_status`, `post_password`, `post_name`, `to_ping`, `pinged`, `post_modified`, `post_modified_gmt`, `post_content_filtered`, `post_parent`, `guid`, `menu_order`, `post_type`, `post_mime_type`, `comment_count`) VALUES
(1, 1, '2022-09-04 11:13:36', '2022-09-04 08:13:36', '<!-- wp:paragraph -->\n<p>Добро пожаловать в WordPress. Это ваша первая запись. Отредактируйте или удалите ее, затем начинайте создавать!</p>\n<!-- /wp:paragraph -->', 'Привет, мир!', '', 'trash', 'open', 'open', '', 'privet-mir__trashed', '', '', '2022-09-11 16:25:10', '2022-09-11 13:25:10', '', 0, 'http://portfolio2/?p=1', 0, 'post', '', 1),
(2, 1, '2022-09-04 11:13:36', '2022-09-04 08:13:36', '<!-- wp:paragraph -->\n<p>Это пример страницы. От записей в блоге она отличается тем, что остаётся на одном месте и отображается в меню сайта (в большинстве тем). На странице &laquo;Детали&raquo; владельцы сайтов обычно рассказывают о себе потенциальным посетителям. Например, так:</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:quote -->\n<blockquote class=\"wp-block-quote\"><p>Привет! Днём я курьер, а вечером &#8212; подающий надежды актёр. Это мой блог. Я живу в Ростове-на-Дону, люблю своего пса Джека и пинаколаду. (И ещё попадать под дождь.)</p></blockquote>\n<!-- /wp:quote -->\n\n<!-- wp:paragraph -->\n<p>...или так:</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:quote -->\n<blockquote class=\"wp-block-quote\"><p>Компания &laquo;Штучки XYZ&raquo; была основана в 1971 году и с тех пор производит качественные штучки. Компания находится в Готэм-сити, имеет штат из более чем 2000 сотрудников и приносит много пользы жителям Готэма.</p></blockquote>\n<!-- /wp:quote -->\n\n<!-- wp:paragraph -->\n<p>Перейдите <a href=\"http://portfolio2/wp-admin/\">в консоль</a>, чтобы удалить эту страницу и создать новые. Успехов!</p>\n<!-- /wp:paragraph -->', 'Пример страницы', '', 'trash', 'closed', 'open', '', 'sample-page__trashed', '', '', '2022-09-04 14:29:27', '2022-09-04 11:29:27', '', 0, 'http://portfolio2/?page_id=2', 0, 'page', '', 0),
(3, 1, '2022-09-04 11:13:36', '2022-09-04 08:13:36', '<!-- wp:heading --><h2>Кто мы</h2><!-- /wp:heading --><!-- wp:paragraph --><p><strong class=\"privacy-policy-tutorial\">Предлагаемый текст: </strong>Наш адрес сайта: http://portfolio2.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Комментарии</h2><!-- /wp:heading --><!-- wp:paragraph --><p><strong class=\"privacy-policy-tutorial\">Предлагаемый текст: </strong>Если посетитель оставляет комментарий на сайте, мы собираем данные указанные в форме комментария, а также IP адрес посетителя и данные user-agent браузера с целью определения спама.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>Анонимизированная строка создаваемая из вашего адреса email (\"хеш\") может предоставляться сервису Gravatar, чтобы определить используете ли вы его. Политика конфиденциальности Gravatar доступна здесь: https://automattic.com/privacy/ . После одобрения комментария ваше изображение профиля будет видимым публично в контексте вашего комментария.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Медиафайлы</h2><!-- /wp:heading --><!-- wp:paragraph --><p><strong class=\"privacy-policy-tutorial\">Предлагаемый текст: </strong>Если вы зарегистрированный пользователь и загружаете фотографии на сайт, вам возможно следует избегать загрузки изображений с метаданными EXIF, так как они могут содержать данные вашего месторасположения по GPS. Посетители могут извлечь эту информацию скачав изображения с сайта.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Куки</h2><!-- /wp:heading --><!-- wp:paragraph --><p><strong class=\"privacy-policy-tutorial\">Предлагаемый текст: </strong>Если вы оставляете комментарий на нашем сайте, вы можете включить сохранение вашего имени, адреса email и вебсайта в куки. Это делается для вашего удобства, чтобы не заполнять данные снова при повторном комментировании. Эти куки хранятся в течение одного года.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>Если у вас есть учетная запись на сайте и вы войдете в неё, мы установим временный куки для определения поддержки куки вашим браузером, куки не содержит никакой личной информации и удаляется при закрытии вашего браузера.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>При входе в учетную запись мы также устанавливаем несколько куки с данными входа и настройками экрана. Куки входа хранятся в течение двух дней, куки с настройками экрана - год. Если вы выберете возможность \"Запомнить меня\", данные о входе будут сохраняться в течение двух недель. При выходе из учетной записи куки входа будут удалены.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>При редактировании или публикации статьи в браузере будет сохранен дополнительный куки, он не содержит персональных данных и содержит только ID записи отредактированной вами, истекает через 1 день.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Встраиваемое содержимое других вебсайтов</h2><!-- /wp:heading --><!-- wp:paragraph --><p><strong class=\"privacy-policy-tutorial\">Предлагаемый текст: </strong>Статьи на этом сайте могут включать встраиваемое содержимое (например видео, изображения, статьи и др.), подобное содержимое ведет себя так же, как если бы посетитель зашел на другой сайт.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>Эти сайты могут собирать данные о вас, использовать куки, внедрять дополнительное отслеживание третьей стороной и следить за вашим взаимодействием с внедренным содержимым, включая отслеживание взаимодействия, если у вас есть учетная запись и вы авторизовались на том сайте.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>С кем мы делимся вашими данными</h2><!-- /wp:heading --><!-- wp:paragraph --><p><strong class=\"privacy-policy-tutorial\">Предлагаемый текст: </strong>Если вы запросите сброс пароля, ваш IP будет указан в email-сообщении о сбросе.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Как долго мы храним ваши данные</h2><!-- /wp:heading --><!-- wp:paragraph --><p><strong class=\"privacy-policy-tutorial\">Предлагаемый текст: </strong>Если вы оставляете комментарий, то сам комментарий и его метаданные сохраняются неопределенно долго. Это делается для того, чтобы определять и одобрять последующие комментарии автоматически, вместо помещения их в очередь на одобрение.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>Для пользователей с регистрацией на нашем сайте мы храним ту личную информацию, которую они указывают в своем профиле. Все пользователи могут видеть, редактировать или удалить свою информацию из профиля в любое время (кроме имени пользователя). Администрация вебсайта также может видеть и изменять эту информацию.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Какие у вас права на ваши данные</h2><!-- /wp:heading --><!-- wp:paragraph --><p><strong class=\"privacy-policy-tutorial\">Предлагаемый текст: </strong>При наличии учетной записи на сайте или если вы оставляли комментарии, то вы можете запросить файл экспорта персональных данных, которые мы сохранили о вас, включая предоставленные вами данные. Вы также можете запросить удаление этих данных, это не включает данные, которые мы обязаны хранить в административных целях, по закону или целях безопасности.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Куда отправляются ваши данные</h2><!-- /wp:heading --><!-- wp:paragraph --><p><strong class=\"privacy-policy-tutorial\">Предлагаемый текст: </strong>Комментарии пользователей могут проверяться автоматическим сервисом определения спама.</p><!-- /wp:paragraph -->', 'Политика конфиденциальности', '', 'trash', 'closed', 'open', '', 'privacy-policy__trashed', '', '', '2022-09-04 14:29:27', '2022-09-04 11:29:27', '', 0, 'http://portfolio2/?page_id=3', 0, 'page', '', 0),
(5, 1, '2022-09-04 14:29:27', '2022-09-04 11:29:27', '<!-- wp:heading --><h2>Кто мы</h2><!-- /wp:heading --><!-- wp:paragraph --><p><strong class=\"privacy-policy-tutorial\">Предлагаемый текст: </strong>Наш адрес сайта: http://portfolio2.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Комментарии</h2><!-- /wp:heading --><!-- wp:paragraph --><p><strong class=\"privacy-policy-tutorial\">Предлагаемый текст: </strong>Если посетитель оставляет комментарий на сайте, мы собираем данные указанные в форме комментария, а также IP адрес посетителя и данные user-agent браузера с целью определения спама.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>Анонимизированная строка создаваемая из вашего адреса email (\"хеш\") может предоставляться сервису Gravatar, чтобы определить используете ли вы его. Политика конфиденциальности Gravatar доступна здесь: https://automattic.com/privacy/ . После одобрения комментария ваше изображение профиля будет видимым публично в контексте вашего комментария.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Медиафайлы</h2><!-- /wp:heading --><!-- wp:paragraph --><p><strong class=\"privacy-policy-tutorial\">Предлагаемый текст: </strong>Если вы зарегистрированный пользователь и загружаете фотографии на сайт, вам возможно следует избегать загрузки изображений с метаданными EXIF, так как они могут содержать данные вашего месторасположения по GPS. Посетители могут извлечь эту информацию скачав изображения с сайта.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Куки</h2><!-- /wp:heading --><!-- wp:paragraph --><p><strong class=\"privacy-policy-tutorial\">Предлагаемый текст: </strong>Если вы оставляете комментарий на нашем сайте, вы можете включить сохранение вашего имени, адреса email и вебсайта в куки. Это делается для вашего удобства, чтобы не заполнять данные снова при повторном комментировании. Эти куки хранятся в течение одного года.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>Если у вас есть учетная запись на сайте и вы войдете в неё, мы установим временный куки для определения поддержки куки вашим браузером, куки не содержит никакой личной информации и удаляется при закрытии вашего браузера.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>При входе в учетную запись мы также устанавливаем несколько куки с данными входа и настройками экрана. Куки входа хранятся в течение двух дней, куки с настройками экрана - год. Если вы выберете возможность \"Запомнить меня\", данные о входе будут сохраняться в течение двух недель. При выходе из учетной записи куки входа будут удалены.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>При редактировании или публикации статьи в браузере будет сохранен дополнительный куки, он не содержит персональных данных и содержит только ID записи отредактированной вами, истекает через 1 день.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Встраиваемое содержимое других вебсайтов</h2><!-- /wp:heading --><!-- wp:paragraph --><p><strong class=\"privacy-policy-tutorial\">Предлагаемый текст: </strong>Статьи на этом сайте могут включать встраиваемое содержимое (например видео, изображения, статьи и др.), подобное содержимое ведет себя так же, как если бы посетитель зашел на другой сайт.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>Эти сайты могут собирать данные о вас, использовать куки, внедрять дополнительное отслеживание третьей стороной и следить за вашим взаимодействием с внедренным содержимым, включая отслеживание взаимодействия, если у вас есть учетная запись и вы авторизовались на том сайте.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>С кем мы делимся вашими данными</h2><!-- /wp:heading --><!-- wp:paragraph --><p><strong class=\"privacy-policy-tutorial\">Предлагаемый текст: </strong>Если вы запросите сброс пароля, ваш IP будет указан в email-сообщении о сбросе.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Как долго мы храним ваши данные</h2><!-- /wp:heading --><!-- wp:paragraph --><p><strong class=\"privacy-policy-tutorial\">Предлагаемый текст: </strong>Если вы оставляете комментарий, то сам комментарий и его метаданные сохраняются неопределенно долго. Это делается для того, чтобы определять и одобрять последующие комментарии автоматически, вместо помещения их в очередь на одобрение.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>Для пользователей с регистрацией на нашем сайте мы храним ту личную информацию, которую они указывают в своем профиле. Все пользователи могут видеть, редактировать или удалить свою информацию из профиля в любое время (кроме имени пользователя). Администрация вебсайта также может видеть и изменять эту информацию.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Какие у вас права на ваши данные</h2><!-- /wp:heading --><!-- wp:paragraph --><p><strong class=\"privacy-policy-tutorial\">Предлагаемый текст: </strong>При наличии учетной записи на сайте или если вы оставляли комментарии, то вы можете запросить файл экспорта персональных данных, которые мы сохранили о вас, включая предоставленные вами данные. Вы также можете запросить удаление этих данных, это не включает данные, которые мы обязаны хранить в административных целях, по закону или целях безопасности.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Куда отправляются ваши данные</h2><!-- /wp:heading --><!-- wp:paragraph --><p><strong class=\"privacy-policy-tutorial\">Предлагаемый текст: </strong>Комментарии пользователей могут проверяться автоматическим сервисом определения спама.</p><!-- /wp:paragraph -->', 'Политика конфиденциальности', '', 'inherit', 'closed', 'closed', '', '3-revision-v1', '', '', '2022-09-04 14:29:27', '2022-09-04 11:29:27', '', 3, 'http://portfolio2/?p=5', 0, 'revision', '', 0),
(6, 1, '2022-09-04 14:29:27', '2022-09-04 11:29:27', '<!-- wp:paragraph -->\n<p>Это пример страницы. От записей в блоге она отличается тем, что остаётся на одном месте и отображается в меню сайта (в большинстве тем). На странице &laquo;Детали&raquo; владельцы сайтов обычно рассказывают о себе потенциальным посетителям. Например, так:</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:quote -->\n<blockquote class=\"wp-block-quote\"><p>Привет! Днём я курьер, а вечером &#8212; подающий надежды актёр. Это мой блог. Я живу в Ростове-на-Дону, люблю своего пса Джека и пинаколаду. (И ещё попадать под дождь.)</p></blockquote>\n<!-- /wp:quote -->\n\n<!-- wp:paragraph -->\n<p>...или так:</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:quote -->\n<blockquote class=\"wp-block-quote\"><p>Компания &laquo;Штучки XYZ&raquo; была основана в 1971 году и с тех пор производит качественные штучки. Компания находится в Готэм-сити, имеет штат из более чем 2000 сотрудников и приносит много пользы жителям Готэма.</p></blockquote>\n<!-- /wp:quote -->\n\n<!-- wp:paragraph -->\n<p>Перейдите <a href=\"http://portfolio2/wp-admin/\">в консоль</a>, чтобы удалить эту страницу и создать новые. Успехов!</p>\n<!-- /wp:paragraph -->', 'Пример страницы', '', 'inherit', 'closed', 'closed', '', '2-revision-v1', '', '', '2022-09-04 14:29:27', '2022-09-04 11:29:27', '', 2, 'http://portfolio2/?p=6', 0, 'revision', '', 0),
(7, 1, '2022-09-04 14:30:05', '2022-09-04 11:30:05', '', 'Главная', '', 'trash', 'closed', 'closed', '', '%d0%b3%d0%bb%d0%b0%d0%b2%d0%bd%d0%b0%d1%8f__trashed', '', '', '2022-09-04 14:32:47', '2022-09-04 11:32:47', '', 0, 'http://portfolio2/?page_id=7', 0, 'page', '', 0),
(8, 1, '2022-09-04 14:29:39', '2022-09-04 11:29:39', '{\"version\": 2, \"isGlobalStylesUserThemeJSON\": true }', 'Custom Styles', '', 'publish', 'closed', 'closed', '', 'wp-global-styles-portfoliotheme', '', '', '2022-09-04 14:29:39', '2022-09-04 11:29:39', '', 0, 'http://portfolio2/2022/09/04/wp-global-styles-portfoliotheme/', 0, 'wp_global_styles', '', 0),
(9, 1, '2022-09-04 14:30:05', '2022-09-04 11:30:05', '', 'Главная', '', 'inherit', 'closed', 'closed', '', '7-revision-v1', '', '', '2022-09-04 14:30:05', '2022-09-04 11:30:05', '', 7, 'http://portfolio2/?p=9', 0, 'revision', '', 0),
(10, 1, '2022-09-04 14:31:06', '2022-09-04 11:31:06', '', 'Interesting', '', 'trash', 'closed', 'closed', '', '%d0%b8%d0%bd%d1%82%d0%b5%d1%80%d0%b5%d1%81%d0%bd%d0%be%d0%b5__trashed', '', '', '2022-09-04 14:32:57', '2022-09-04 11:32:57', '', 0, 'http://portfolio2/?page_id=10', 0, 'page', '', 0),
(11, 1, '2022-09-04 14:31:06', '2022-09-04 11:31:06', '', 'Интересное', '', 'inherit', 'closed', 'closed', '', '10-revision-v1', '', '', '2022-09-04 14:31:06', '2022-09-04 11:31:06', '', 10, 'http://portfolio2/?p=11', 0, 'revision', '', 0),
(12, 1, '2022-09-04 14:32:23', '2022-09-04 11:32:23', '', 'Interesting', '', 'inherit', 'closed', 'closed', '', '10-revision-v1', '', '', '2022-09-04 14:32:23', '2022-09-04 11:32:23', '', 10, 'http://portfolio2/?p=12', 0, 'revision', '', 0),
(13, 1, '2022-09-04 14:35:26', '2022-09-04 11:35:26', '', 'Главная', '', 'publish', 'closed', 'closed', '', 'glavnoe', '', '', '2022-09-12 01:45:18', '2022-09-11 22:45:18', '', 0, 'http://portfolio2/?page_id=13', 0, 'page', '', 0),
(14, 1, '2022-09-04 14:35:26', '2022-09-04 11:35:26', '', 'Главное', '', 'inherit', 'closed', 'closed', '', '13-revision-v1', '', '', '2022-09-04 14:35:26', '2022-09-04 11:35:26', '', 13, 'http://portfolio2/?p=14', 0, 'revision', '', 0),
(15, 1, '2022-09-04 14:36:28', '2022-09-04 11:36:28', '', 'Интересное', '', 'publish', 'closed', 'closed', '', 'interesnoe', '', '', '2022-09-04 14:36:28', '2022-09-04 11:36:28', '', 0, 'http://portfolio2/?page_id=15', 0, 'page', '', 0),
(16, 1, '2022-09-04 14:36:28', '2022-09-04 11:36:28', '', 'Интересное', '', 'inherit', 'closed', 'closed', '', '15-revision-v1', '', '', '2022-09-04 14:36:28', '2022-09-04 11:36:28', '', 15, 'http://portfolio2/?p=16', 0, 'revision', '', 0),
(17, 1, '2022-09-04 14:36:59', '2022-09-04 11:36:59', '', 'Главная', '', 'inherit', 'closed', 'closed', '', '13-revision-v1', '', '', '2022-09-04 14:36:59', '2022-09-04 11:36:59', '', 13, 'http://portfolio2/?p=17', 0, 'revision', '', 0),
(18, 1, '2022-09-04 14:37:26', '2022-09-04 11:37:26', '', 'Контакты', '', 'publish', 'closed', 'closed', '', 'kontakty', '', '', '2022-09-04 14:37:26', '2022-09-04 11:37:26', '', 0, 'http://portfolio2/?page_id=18', 0, 'page', '', 0),
(19, 1, '2022-09-04 14:37:26', '2022-09-04 11:37:26', '', 'Контакты', '', 'inherit', 'closed', 'closed', '', '18-revision-v1', '', '', '2022-09-04 14:37:26', '2022-09-04 11:37:26', '', 18, 'http://portfolio2/?p=19', 0, 'revision', '', 0),
(20, 1, '2022-09-04 15:57:15', '2022-09-04 12:57:15', '{\n    \"nav_menu[-5323798441715679000]\": {\n        \"value\": {\n            \"name\": \"menu-desktop\",\n            \"description\": \"\",\n            \"parent\": 0,\n            \"auto_add\": true\n        },\n        \"type\": \"nav_menu\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2022-09-04 12:57:15\"\n    },\n    \"nav_menu_item[-6828032159187067000]\": {\n        \"value\": {\n            \"object_id\": 18,\n            \"object\": \"page\",\n            \"menu_item_parent\": 0,\n            \"position\": 1,\n            \"type\": \"post_type\",\n            \"title\": \"\\u041a\\u043e\\u043d\\u0442\\u0430\\u043a\\u0442\\u044b\",\n            \"url\": \"http://portfolio2/kontakty/\",\n            \"target\": \"\",\n            \"attr_title\": \"\",\n            \"description\": \"\",\n            \"classes\": \"\",\n            \"xfn\": \"\",\n            \"status\": \"publish\",\n            \"original_title\": \"\\u041a\\u043e\\u043d\\u0442\\u0430\\u043a\\u0442\\u044b\",\n            \"nav_menu_term_id\": -5323798441715679000,\n            \"_invalid\": false,\n            \"type_label\": \"\\u0421\\u0442\\u0440\\u0430\\u043d\\u0438\\u0446\\u0430\"\n        },\n        \"type\": \"nav_menu_item\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2022-09-04 12:57:15\"\n    },\n    \"nav_menu_item[-2792680442693148700]\": {\n        \"value\": {\n            \"object_id\": 15,\n            \"object\": \"page\",\n            \"menu_item_parent\": 0,\n            \"position\": 2,\n            \"type\": \"post_type\",\n            \"title\": \"\\u0418\\u043d\\u0442\\u0435\\u0440\\u0435\\u0441\\u043d\\u043e\\u0435\",\n            \"url\": \"http://portfolio2/interesnoe/\",\n            \"target\": \"\",\n            \"attr_title\": \"\",\n            \"description\": \"\",\n            \"classes\": \"\",\n            \"xfn\": \"\",\n            \"status\": \"publish\",\n            \"original_title\": \"\\u0418\\u043d\\u0442\\u0435\\u0440\\u0435\\u0441\\u043d\\u043e\\u0435\",\n            \"nav_menu_term_id\": -5323798441715679000,\n            \"_invalid\": false,\n            \"type_label\": \"\\u0421\\u0442\\u0440\\u0430\\u043d\\u0438\\u0446\\u0430\"\n        },\n        \"type\": \"nav_menu_item\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2022-09-04 12:57:15\"\n    }\n}', '', '', 'trash', 'closed', 'closed', '', '82eee6d3-ae76-4494-b4cb-0c18b17e36e8', '', '', '2022-09-04 15:57:15', '2022-09-04 12:57:15', '', 0, 'http://portfolio2/2022/09/04/82eee6d3-ae76-4494-b4cb-0c18b17e36e8/', 0, 'customize_changeset', '', 0),
(21, 1, '2022-09-04 17:13:40', '2022-09-04 12:57:15', ' ', '', '', 'publish', 'closed', 'closed', '', '21', '', '', '2022-09-04 17:13:40', '2022-09-04 14:13:40', '', 0, 'http://portfolio2/2022/09/04/21/', 2, 'nav_menu_item', '', 0),
(22, 1, '2022-09-04 17:13:40', '2022-09-04 12:57:15', ' ', '', '', 'publish', 'closed', 'closed', '', '22', '', '', '2022-09-04 17:13:40', '2022-09-04 14:13:40', '', 0, 'http://portfolio2/2022/09/04/22/', 1, 'nav_menu_item', '', 0),
(23, 1, '2022-09-04 17:13:27', '2022-09-04 14:13:27', '{\n    \"nav_menu[-7946804689700248000]\": {\n        \"value\": {\n            \"name\": \"menu-mobile\",\n            \"description\": \"\",\n            \"parent\": 0,\n            \"auto_add\": false\n        },\n        \"type\": \"nav_menu\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2022-09-04 14:13:27\"\n    },\n    \"nav_menu_item[-2325332738210369500]\": {\n        \"value\": false,\n        \"type\": \"nav_menu_item\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2022-09-04 14:13:27\"\n    },\n    \"nav_menu_item[-6663211883915405000]\": {\n        \"value\": false,\n        \"type\": \"nav_menu_item\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2022-09-04 14:13:27\"\n    },\n    \"nav_menu_item[-3049193876349982700]\": {\n        \"value\": {\n            \"object_id\": 15,\n            \"object\": \"page\",\n            \"menu_item_parent\": 0,\n            \"position\": 1,\n            \"type\": \"post_type\",\n            \"title\": \"\\u0418\\u043d\\u0442\\u0435\\u0440\\u0435\\u0441\\u043d\\u043e\\u0435\",\n            \"url\": \"http://portfolio2/interesnoe/\",\n            \"target\": \"\",\n            \"attr_title\": \"\",\n            \"description\": \"\",\n            \"classes\": \"\",\n            \"xfn\": \"\",\n            \"status\": \"publish\",\n            \"original_title\": \"\\u0418\\u043d\\u0442\\u0435\\u0440\\u0435\\u0441\\u043d\\u043e\\u0435\",\n            \"nav_menu_term_id\": -7946804689700248000,\n            \"_invalid\": false,\n            \"type_label\": \"\\u0421\\u0442\\u0440\\u0430\\u043d\\u0438\\u0446\\u0430\"\n        },\n        \"type\": \"nav_menu_item\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2022-09-04 14:13:27\"\n    },\n    \"nav_menu_item[-3377779648019810300]\": {\n        \"value\": {\n            \"object_id\": 18,\n            \"object\": \"page\",\n            \"menu_item_parent\": 0,\n            \"position\": 2,\n            \"type\": \"post_type\",\n            \"title\": \"\\u041a\\u043e\\u043d\\u0442\\u0430\\u043a\\u0442\\u044b\",\n            \"url\": \"http://portfolio2/kontakty/\",\n            \"target\": \"\",\n            \"attr_title\": \"\",\n            \"description\": \"\",\n            \"classes\": \"\",\n            \"xfn\": \"\",\n            \"status\": \"publish\",\n            \"original_title\": \"\\u041a\\u043e\\u043d\\u0442\\u0430\\u043a\\u0442\\u044b\",\n            \"nav_menu_term_id\": -7946804689700248000,\n            \"_invalid\": false,\n            \"type_label\": \"\\u0421\\u0442\\u0440\\u0430\\u043d\\u0438\\u0446\\u0430\"\n        },\n        \"type\": \"nav_menu_item\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2022-09-04 14:13:27\"\n    }\n}', '', '', 'trash', 'closed', 'closed', '', 'da81f16a-7180-4a6d-910c-d06380a35dc9', '', '', '2022-09-04 17:13:27', '2022-09-04 14:13:27', '', 0, 'http://portfolio2/2022/09/04/da81f16a-7180-4a6d-910c-d06380a35dc9/', 0, 'customize_changeset', '', 0),
(24, 1, '2022-09-04 17:13:27', '2022-09-04 14:13:27', ' ', '', '', 'publish', 'closed', 'closed', '', '24', '', '', '2022-09-04 17:13:27', '2022-09-04 14:13:27', '', 0, 'http://portfolio2/2022/09/04/24/', 1, 'nav_menu_item', '', 0),
(25, 1, '2022-09-04 17:13:27', '2022-09-04 14:13:27', ' ', '', '', 'publish', 'closed', 'closed', '', '25', '', '', '2022-09-04 17:13:27', '2022-09-04 14:13:27', '', 0, 'http://portfolio2/2022/09/04/25/', 2, 'nav_menu_item', '', 0),
(26, 1, '2022-09-04 17:13:40', '2022-09-04 14:13:40', '{\n    \"nav_menu_item[21]\": {\n        \"value\": {\n            \"menu_item_parent\": 0,\n            \"object_id\": 18,\n            \"object\": \"page\",\n            \"type\": \"post_type\",\n            \"type_label\": \"\\u0421\\u0442\\u0440\\u0430\\u043d\\u0438\\u0446\\u0430\",\n            \"url\": \"http://portfolio2/kontakty/\",\n            \"title\": \"\",\n            \"target\": \"\",\n            \"attr_title\": \"\",\n            \"description\": \"\",\n            \"classes\": \"\",\n            \"xfn\": \"\",\n            \"nav_menu_term_id\": 3,\n            \"position\": 2,\n            \"status\": \"publish\",\n            \"original_title\": \"\\u041a\\u043e\\u043d\\u0442\\u0430\\u043a\\u0442\\u044b\",\n            \"_invalid\": false\n        },\n        \"type\": \"nav_menu_item\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2022-09-04 14:13:40\"\n    },\n    \"nav_menu_item[22]\": {\n        \"value\": {\n            \"menu_item_parent\": 0,\n            \"object_id\": 15,\n            \"object\": \"page\",\n            \"type\": \"post_type\",\n            \"type_label\": \"\\u0421\\u0442\\u0440\\u0430\\u043d\\u0438\\u0446\\u0430\",\n            \"url\": \"http://portfolio2/interesnoe/\",\n            \"title\": \"\",\n            \"target\": \"\",\n            \"attr_title\": \"\",\n            \"description\": \"\",\n            \"classes\": \"\",\n            \"xfn\": \"\",\n            \"nav_menu_term_id\": 3,\n            \"position\": 1,\n            \"status\": \"publish\",\n            \"original_title\": \"\\u0418\\u043d\\u0442\\u0435\\u0440\\u0435\\u0441\\u043d\\u043e\\u0435\",\n            \"_invalid\": false\n        },\n        \"type\": \"nav_menu_item\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2022-09-04 14:13:40\"\n    }\n}', '', '', 'trash', 'closed', 'closed', '', '71fe1353-229b-4475-89c3-8c91a167ceb8', '', '', '2022-09-04 17:13:40', '2022-09-04 14:13:40', '', 0, 'http://portfolio2/2022/09/04/71fe1353-229b-4475-89c3-8c91a167ceb8/', 0, 'customize_changeset', '', 0),
(28, 1, '2022-09-04 18:00:46', '2022-09-04 15:00:46', '<!-- wp:paragraph -->\n<p>Reiciendis incidunt sapiente perspiciatis debitis praesentium maiores nihil beatae vitae, mollitia asperiores architecto assumenda esse est fugiat libero ducimus quis. Possimus obcaecati aut neque ratione voluptas commodi unde quo veniam. it tempora voluptatum ipsam, voluptas debitis? Laudantium ratione quo eum commodi et numquam accusantium quaerat sed facere excepturi. Repellat placeat aliquid amet distinctio qui incidunt dolores nihil aspernatur eius vitae magnam, tempora quo eos fugit suscipit quibusdam hic ullam libero fugiat delectus. Quia vel incidunt praesentium in officia. Numquam eligendi aliquam consequuntur autem debitis placeat, dolor modi quidem molestiae provident! Officia quae autem aperiam sed ipsam optio doloremque, nesciunt, ipsa inventore doloribus dolor nulla harum dicta architecto sapiente. Sit repellat et nam hic totam voluptatem maxime! Animi sit enim, consequuntur, dignissimos placeat vel ducimus dicta ut aliquid tempore quasi voluptatum laborum atque nemo saepe ad neque, praesentium eos! Labore, aliquam praesentium, in culpa velit et vitae minus fugiat magnam repellendus nostrum tempora laborum saepe. Et, a voluptas! Ratione rerum doloribus aliquam ut architecto enim dolores laudantium possimus porro! Non beatae maxime, possimus consequuntur aperiam totam eligendi odit eos? Ipsa et quasi voluptatibus ea fuga iure beatae nihil necessitatibus? Aperiam accusamus eveniet est esse vitae dicta assumenda incidunt itaque? Nostrum possimus quibusdam similique repudiandae earum esse sed consequatur amet vitae nihil cum est veniam fugiat in explicabo voluptate hic tenetur, laboriosam ipsa nemo? Harum cupiditate ipsum dolore hic nihil! Rem reiciendis repellendus id aspernatur voluptatum consequuntur quis rerum fugiat dicta veritatis assumenda voluptates fugit odit atque, quos quia voluptate qui accusantium animi quas, ipsa enim porro sint ratione? Perferendis. Aperiam in, autem aliquid sequi, voluptate porro explicabo excepturi veniam reprehenderit praesentium molestias quidem corrupti? Corporis enim nesciunt numquam repellat voluptates neque eos dolorum quibusdam natus, recusandae perferendis voluptatem sint. Saepe sequi facilis dolores, magnam doloremque porro recusandae ipsa cumque inventore. Delectus molestias soluta nemo nulla doloremque atque impedit asperiores fuga expedita odio nisi temporibus, aspernatur consectetur odit! Libero, maxime? Lorem ipsum dolor sit amet consectetur adipisicing elit. Optio rerum repellendus modi ut quis perferendis reprehenderit nemo magnam. Asperiores incidunt optio tempora temporibus quaerat, magni earum a provident ex praesentium. Distinctio harum provident sapiente repellat explicabo, odit veritatis fugit ullam ducimus nihil. Reprehenderit provident tempore fuga architecto officiis voluptatum iure sequi porro dignissimos, tempora voluptates inventore nesciunt et vitae repudiandae! Totam et, corporis aut nulla delectus quae magni necessitatibus accusamus mollitia pariatur eius ipsam, eaque molestiae eveniet vitae nemo facere voluptatibus porro a eum dolor accusantium tempore. Necessitatibus, repudiandae atque? Autem quam accusamus adipisci magnam a voluptatum doloribus ab expedita! Neque consequatur ab ad doloremque. Accusantium maxime odit, animi unde possimus quas neque distinctio? Quasi eaque distinctio qui ratione soluta! Laborum adipisci velit nobis quos, ipsa illum, consectetur soluta at molestias eaque ea animi minus incidunt ipsam debitis nulla, beatae ad! Enim minima aliquam perspiciatis eligendi beatae ea atque praesentium. Culpa quia blanditiis iure animi ratione ex quisquam amet accusantium aliquid ab, non voluptatum fugiat corporis, obcaecati consequatur laudantium totam excepturi aspernatur similique sequi veritatis libero. Quaerat, sed. Minus, eaque. Libero suscipit ratione, quam quaerat perferendis iste odio quasi quae commodi rerum laudantium doloribus! Perspiciatis culpa soluta sequi cumque cum, magni nulla, minima iste harum, nihil quis! Ex, quo molestias! Officia corporis sapiente facere vero, animi ipsum? Inventore accusamus nesciunt voluptate incidunt quam omnis quibusdam laboriosam. Non deserunt aut, corrupti amet architecto reprehenderit eius, dolores assumenda, blanditiis voluptatibus natus laudantium. Reiciendis dolores odio ab quaerat minima necessitatibus cumque, fuga dolor libero, nisi fugiat exercitationem, maiores voluptate voluptatem vel consectetur praesentium. Culpa eos, voluptatem inventore nemo id expedita atque quis rerum? Dignissimos voluptatum nemo architecto, velit quis magni eum animi, mollitia pariatur facere assumenda. Nam, cum. Deserunt vitae incidunt sunt temporibus! Debitis porro dolorem ea assumenda nulla unde, aliquam natus laborum!</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>&nbsp; &nbsp; </p>\n<!-- /wp:paragraph -->\n\n<!-- wp:image {\"id\":32,\"sizeSlug\":\"full\",\"linkDestination\":\"none\"} -->\n<figure class=\"wp-block-image size-full\"><img src=\"http://portfolio2/wp-content/uploads/2022/09/hero-4.jpg\" alt=\"\" class=\"wp-image-32\"/></figure>\n<!-- /wp:image -->\n\n<!-- wp:paragraph -->\n<p>perferendis reprehenderit nemo magnam. Asperiores incidunt optio tempora temporibus quaerat, magni earum a provident ex praesentium. Distinctio harum provident sapiente repellat explicabo, odit veritatis fugit ullam ducimus nihil. Reprehenderit provident tempore fuga architecto officiis voluptatum iure sequi porro dignissimos, tempora voluptates inventore nesciunt et vitae repudiandae! Totam et, corporis aut nulla delectus quae magni necessitatibus accusamus mollitia pariatur eius ipsam, eaque molestiae eveniet vitae nemo facere voluptatibus porro a eum dolor accusantium tempore. Necessitatibus, repudiandae atque? Autem quam accusamus adipisci magnam a voluptatum doloribus ab expedita! Neque consequatur ab ad doloremque. Accusantium maxime odit, animi unde possimus quas neque distinctio? Quasi eaque distinctio qui ratione soluta! Laborum adipisci velit nobis quos, ipsa illum, consectetur soluta at molestias eaque ea animi minus incidunt ipsam debitis nulla, beatae ad! Enim minima aliquam perspiciatis eligendi beatae ea atque praesentium. Culpa quia blanditiis iure animi ratione ex quisquam amet accusantium aliquid ab, non voluptatum fugiat corporis, obcaecati consequatur laudantium totam excepturi aspernatur similique sequi veritatis libero. Quaerat, sed. Minus, eaque. Libero suscipit ratione, quam quaerat perferendis iste odio quasi quae commodi rerum laudantium doloribus! Perspiciatis culpa soluta sequi cumque cum, magni nulla, minima iste harum, nihil quis! Ex, quo molestias! Officia corporis sapiente facere vero, animi ipsum? Inventore accusamus nesciunt voluptate incidunt quam omnis quibusdam laboriosam. Non deserunt aut, corrupti amet architecto reprehenderit eius, dolores assumenda, blanditiis voluptatibus natus laudantium. Reiciendis dolores odio ab quaerat minima necessitatibus cumque, fuga dolor libero, nisi fugiat exercitationem, maiores voluptate voluptatem vel consectetur praesentium. Culpa eos, voluptatem inventore nemo id expedita atque quis rerum? Dignissimos voluptatum nemo architecto, velit quis magni eum animi, mollitia pariatur facere assumenda. Nam, cum. Deserunt vitae incidunt sunt temporibus! Debitis porro dolorem ea assumenda nulla unde, aliquam natus laborum!</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:image {\"id\":35,\"sizeSlug\":\"full\",\"linkDestination\":\"none\"} -->\n<figure class=\"wp-block-image size-full\"><img src=\"http://portfolio2/wp-content/uploads/2022/09/skyline-scaled.jpg\" alt=\"\" class=\"wp-image-35\"/></figure>\n<!-- /wp:image -->', 'Тестовый пост', 'Это краткое описание поста, которое содержит основную информацию', 'trash', 'open', 'open', '', 'testovyj-post__trashed', '', '', '2022-09-11 16:25:10', '2022-09-11 13:25:10', '', 0, 'http://portfolio2/?p=28', 0, 'post', '', 6),
(29, 1, '2022-09-04 18:00:17', '2022-09-04 15:00:17', '', 'no_image', '', 'inherit', 'open', 'closed', '', 'no_image', '', '', '2022-09-04 18:00:17', '2022-09-04 15:00:17', '', 28, 'http://portfolio2/wp-content/uploads/2022/09/no_image.jpg', 0, 'attachment', 'image/jpeg', 0),
(30, 1, '2022-09-04 18:00:46', '2022-09-04 15:00:46', '<!-- wp:paragraph -->\n<p>Lorem ipsum </p>\n<!-- /wp:paragraph -->', 'Тестовый пост', '', 'inherit', 'closed', 'closed', '', '28-revision-v1', '', '', '2022-09-04 18:00:46', '2022-09-04 15:00:46', '', 28, 'http://portfolio2/?p=30', 0, 'revision', '', 0),
(31, 1, '2022-09-05 11:27:39', '2022-09-05 08:27:39', '<!-- wp:paragraph -->\n<p>Lorem ipsum </p>\n<!-- /wp:paragraph -->', 'Тестовый пост', 'Это краткое описание поста, которое содержит основную информацию', 'inherit', 'closed', 'closed', '', '28-revision-v1', '', '', '2022-09-05 11:27:39', '2022-09-05 08:27:39', '', 28, 'http://portfolio2/?p=31', 0, 'revision', '', 0),
(32, 1, '2022-09-05 11:35:18', '2022-09-05 08:35:18', '', 'hero-4', '', 'inherit', 'open', 'closed', '', 'hero-4', '', '', '2022-09-05 11:35:18', '2022-09-05 08:35:18', '', 28, 'http://portfolio2/wp-content/uploads/2022/09/hero-4.jpg', 0, 'attachment', 'image/jpeg', 0),
(33, 1, '2022-09-05 11:35:23', '2022-09-05 08:35:23', '<!-- wp:paragraph -->\n<p>eiciendis incidunt sapiente perspiciatis debitis praesentium maiores nihil beatae vitae, mollitia asperiores architecto assumenda esse est fugiat libero ducimus quis. Possimus obcaecati aut neque ratione voluptas commodi unde quo veniam.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; it tempora voluptatum ipsam, voluptas debitis? Laudantium ratione quo eum commodi et numquam accusantium quaerat sed facere excepturi.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; Repellat placeat aliquid amet distinctio qui incidunt dolores nihil aspernatur eius vitae magnam, tempora quo eos fugit suscipit quibusdam hic ullam libero fugiat delectus. Quia vel incidunt praesentium in officia.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; Numquam eligendi aliquam consequuntur autem debitis placeat, dolor modi quidem molestiae provident! Officia quae autem aperiam sed ipsam optio doloremque, nesciunt, ipsa inventore doloribus dolor nulla harum dicta architecto sapiente.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>inventore nemo id expedita atque quis rerum?</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>    </p>\n<!-- /wp:paragraph -->\n\n<!-- wp:image {\"id\":32,\"sizeSlug\":\"large\",\"linkDestination\":\"none\"} -->\n<figure class=\"wp-block-image size-large\"><img src=\"http://portfolio2/wp-content/uploads/2022/09/hero-4-1024x683.jpg\" alt=\"\" class=\"wp-image-32\"/></figure>\n<!-- /wp:image -->', 'Тестовый пост', 'Это краткое описание поста, которое содержит основную информацию', 'inherit', 'closed', 'closed', '', '28-revision-v1', '', '', '2022-09-05 11:35:23', '2022-09-05 08:35:23', '', 28, 'http://portfolio2/?p=33', 0, 'revision', '', 0),
(34, 1, '2022-09-05 11:44:05', '2022-09-05 08:44:05', '<!-- wp:paragraph -->\n<p>Reiciendis incidunt sapiente perspiciatis debitis praesentium maiores nihil beatae vitae, mollitia asperiores architecto assumenda esse est fugiat libero ducimus quis. Possimus obcaecati aut neque ratione voluptas commodi unde quo veniam. it tempora voluptatum ipsam, voluptas debitis? Laudantium ratione quo eum commodi et numquam accusantium quaerat sed facere excepturi. Repellat placeat aliquid amet distinctio qui incidunt dolores nihil aspernatur eius vitae magnam, tempora quo eos fugit suscipit quibusdam hic ullam libero fugiat delectus. Quia vel incidunt praesentium in officia. Numquam eligendi aliquam consequuntur autem debitis placeat, dolor modi quidem molestiae provident! Officia quae autem aperiam sed ipsam optio doloremque, nesciunt, ipsa inventore doloribus dolor nulla harum dicta architecto sapiente. Sit repellat et nam hic totam voluptatem maxime! Animi sit enim, consequuntur, dignissimos placeat vel ducimus dicta ut aliquid tempore quasi voluptatum laborum atque nemo saepe ad neque, praesentium eos! Labore, aliquam praesentium, in culpa velit et vitae minus fugiat magnam repellendus nostrum tempora laborum saepe. Et, a voluptas! Ratione rerum doloribus aliquam ut architecto enim dolores laudantium possimus porro! Non beatae maxime, possimus consequuntur aperiam totam eligendi odit eos? Ipsa et quasi voluptatibus ea fuga iure beatae nihil necessitatibus? Aperiam accusamus eveniet est esse vitae dicta assumenda incidunt itaque? Nostrum possimus quibusdam similique repudiandae earum esse sed consequatur amet vitae nihil cum est veniam fugiat in explicabo voluptate hic tenetur, laboriosam ipsa nemo? Harum cupiditate ipsum dolore hic nihil! Rem reiciendis repellendus id aspernatur voluptatum consequuntur quis rerum fugiat dicta veritatis assumenda voluptates fugit odit atque, quos quia voluptate qui accusantium animi quas, ipsa enim porro sint ratione? Perferendis. Aperiam in, autem aliquid sequi, voluptate porro explicabo excepturi veniam reprehenderit praesentium molestias quidem corrupti? Corporis enim nesciunt numquam repellat voluptates neque eos dolorum quibusdam natus, recusandae perferendis voluptatem sint. Saepe sequi facilis dolores, magnam doloremque porro recusandae ipsa cumque inventore. Delectus molestias soluta nemo nulla doloremque atque impedit asperiores fuga expedita odio nisi temporibus, aspernatur consectetur odit! Libero, maxime? Lorem ipsum dolor sit amet consectetur adipisicing elit. Optio rerum repellendus modi ut quis perferendis reprehenderit nemo magnam. Asperiores incidunt optio tempora temporibus quaerat, magni earum a provident ex praesentium. Distinctio harum provident sapiente repellat explicabo, odit veritatis fugit ullam ducimus nihil. Reprehenderit provident tempore fuga architecto officiis voluptatum iure sequi porro dignissimos, tempora voluptates inventore nesciunt et vitae repudiandae! Totam et, corporis aut nulla delectus quae magni necessitatibus accusamus mollitia pariatur eius ipsam, eaque molestiae eveniet vitae nemo facere voluptatibus porro a eum dolor accusantium tempore. Necessitatibus, repudiandae atque? Autem quam accusamus adipisci magnam a voluptatum doloribus ab expedita! Neque consequatur ab ad doloremque. Accusantium maxime odit, animi unde possimus quas neque distinctio? Quasi eaque distinctio qui ratione soluta! Laborum adipisci velit nobis quos, ipsa illum, consectetur soluta at molestias eaque ea animi minus incidunt ipsam debitis nulla, beatae ad! Enim minima aliquam perspiciatis eligendi beatae ea atque praesentium. Culpa quia blanditiis iure animi ratione ex quisquam amet accusantium aliquid ab, non voluptatum fugiat corporis, obcaecati consequatur laudantium totam excepturi aspernatur similique sequi veritatis libero. Quaerat, sed. Minus, eaque. Libero suscipit ratione, quam quaerat perferendis iste odio quasi quae commodi rerum laudantium doloribus! Perspiciatis culpa soluta sequi cumque cum, magni nulla, minima iste harum, nihil quis! Ex, quo molestias! Officia corporis sapiente facere vero, animi ipsum? Inventore accusamus nesciunt voluptate incidunt quam omnis quibusdam laboriosam. Non deserunt aut, corrupti amet architecto reprehenderit eius, dolores assumenda, blanditiis voluptatibus natus laudantium. Reiciendis dolores odio ab quaerat minima necessitatibus cumque, fuga dolor libero, nisi fugiat exercitationem, maiores voluptate voluptatem vel consectetur praesentium. Culpa eos, voluptatem inventore nemo id expedita atque quis rerum? Dignissimos voluptatum nemo architecto, velit quis magni eum animi, mollitia pariatur facere assumenda. Nam, cum. Deserunt vitae incidunt sunt temporibus! Debitis porro dolorem ea assumenda nulla unde, aliquam natus laborum!</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>&nbsp; &nbsp; </p>\n<!-- /wp:paragraph -->\n\n<!-- wp:image {\"id\":32,\"sizeSlug\":\"large\",\"linkDestination\":\"none\"} -->\n<figure class=\"wp-block-image size-large\"><img src=\"http://portfolio2/wp-content/uploads/2022/09/hero-4-1024x683.jpg\" alt=\"\" class=\"wp-image-32\"/></figure>\n<!-- /wp:image -->\n\n<!-- wp:paragraph -->\n<p>perferendis reprehenderit nemo magnam. Asperiores incidunt optio tempora temporibus quaerat, magni earum a provident ex praesentium. Distinctio harum provident sapiente repellat explicabo, odit veritatis fugit ullam ducimus nihil. Reprehenderit provident tempore fuga architecto officiis voluptatum iure sequi porro dignissimos, tempora voluptates inventore nesciunt et vitae repudiandae! Totam et, corporis aut nulla delectus quae magni necessitatibus accusamus mollitia pariatur eius ipsam, eaque molestiae eveniet vitae nemo facere voluptatibus porro a eum dolor accusantium tempore. Necessitatibus, repudiandae atque? Autem quam accusamus adipisci magnam a voluptatum doloribus ab expedita! Neque consequatur ab ad doloremque. Accusantium maxime odit, animi unde possimus quas neque distinctio? Quasi eaque distinctio qui ratione soluta! Laborum adipisci velit nobis quos, ipsa illum, consectetur soluta at molestias eaque ea animi minus incidunt ipsam debitis nulla, beatae ad! Enim minima aliquam perspiciatis eligendi beatae ea atque praesentium. Culpa quia blanditiis iure animi ratione ex quisquam amet accusantium aliquid ab, non voluptatum fugiat corporis, obcaecati consequatur laudantium totam excepturi aspernatur similique sequi veritatis libero. Quaerat, sed. Minus, eaque. Libero suscipit ratione, quam quaerat perferendis iste odio quasi quae commodi rerum laudantium doloribus! Perspiciatis culpa soluta sequi cumque cum, magni nulla, minima iste harum, nihil quis! Ex, quo molestias! Officia corporis sapiente facere vero, animi ipsum? Inventore accusamus nesciunt voluptate incidunt quam omnis quibusdam laboriosam. Non deserunt aut, corrupti amet architecto reprehenderit eius, dolores assumenda, blanditiis voluptatibus natus laudantium. Reiciendis dolores odio ab quaerat minima necessitatibus cumque, fuga dolor libero, nisi fugiat exercitationem, maiores voluptate voluptatem vel consectetur praesentium. Culpa eos, voluptatem inventore nemo id expedita atque quis rerum? Dignissimos voluptatum nemo architecto, velit quis magni eum animi, mollitia pariatur facere assumenda. Nam, cum. Deserunt vitae incidunt sunt temporibus! Debitis porro dolorem ea assumenda nulla unde, aliquam natus laborum!</p>\n<!-- /wp:paragraph -->', 'Тестовый пост', 'Это краткое описание поста, которое содержит основную информацию', 'inherit', 'closed', 'closed', '', '28-revision-v1', '', '', '2022-09-05 11:44:05', '2022-09-05 08:44:05', '', 28, 'http://portfolio2/?p=34', 0, 'revision', '', 0),
(35, 1, '2022-09-05 11:44:18', '2022-09-05 08:44:18', '', 'skyline', '', 'inherit', 'open', 'closed', '', 'skyline', '', '', '2022-09-05 11:44:18', '2022-09-05 08:44:18', '', 28, 'http://portfolio2/wp-content/uploads/2022/09/skyline.jpg', 0, 'attachment', 'image/jpeg', 0);
INSERT INTO `eltech_posts` (`ID`, `post_author`, `post_date`, `post_date_gmt`, `post_content`, `post_title`, `post_excerpt`, `post_status`, `comment_status`, `ping_status`, `post_password`, `post_name`, `to_ping`, `pinged`, `post_modified`, `post_modified_gmt`, `post_content_filtered`, `post_parent`, `guid`, `menu_order`, `post_type`, `post_mime_type`, `comment_count`) VALUES
(36, 1, '2022-09-05 11:44:26', '2022-09-05 08:44:26', '<!-- wp:paragraph -->\n<p>Reiciendis incidunt sapiente perspiciatis debitis praesentium maiores nihil beatae vitae, mollitia asperiores architecto assumenda esse est fugiat libero ducimus quis. Possimus obcaecati aut neque ratione voluptas commodi unde quo veniam. it tempora voluptatum ipsam, voluptas debitis? Laudantium ratione quo eum commodi et numquam accusantium quaerat sed facere excepturi. Repellat placeat aliquid amet distinctio qui incidunt dolores nihil aspernatur eius vitae magnam, tempora quo eos fugit suscipit quibusdam hic ullam libero fugiat delectus. Quia vel incidunt praesentium in officia. Numquam eligendi aliquam consequuntur autem debitis placeat, dolor modi quidem molestiae provident! Officia quae autem aperiam sed ipsam optio doloremque, nesciunt, ipsa inventore doloribus dolor nulla harum dicta architecto sapiente. Sit repellat et nam hic totam voluptatem maxime! Animi sit enim, consequuntur, dignissimos placeat vel ducimus dicta ut aliquid tempore quasi voluptatum laborum atque nemo saepe ad neque, praesentium eos! Labore, aliquam praesentium, in culpa velit et vitae minus fugiat magnam repellendus nostrum tempora laborum saepe. Et, a voluptas! Ratione rerum doloribus aliquam ut architecto enim dolores laudantium possimus porro! Non beatae maxime, possimus consequuntur aperiam totam eligendi odit eos? Ipsa et quasi voluptatibus ea fuga iure beatae nihil necessitatibus? Aperiam accusamus eveniet est esse vitae dicta assumenda incidunt itaque? Nostrum possimus quibusdam similique repudiandae earum esse sed consequatur amet vitae nihil cum est veniam fugiat in explicabo voluptate hic tenetur, laboriosam ipsa nemo? Harum cupiditate ipsum dolore hic nihil! Rem reiciendis repellendus id aspernatur voluptatum consequuntur quis rerum fugiat dicta veritatis assumenda voluptates fugit odit atque, quos quia voluptate qui accusantium animi quas, ipsa enim porro sint ratione? Perferendis. Aperiam in, autem aliquid sequi, voluptate porro explicabo excepturi veniam reprehenderit praesentium molestias quidem corrupti? Corporis enim nesciunt numquam repellat voluptates neque eos dolorum quibusdam natus, recusandae perferendis voluptatem sint. Saepe sequi facilis dolores, magnam doloremque porro recusandae ipsa cumque inventore. Delectus molestias soluta nemo nulla doloremque atque impedit asperiores fuga expedita odio nisi temporibus, aspernatur consectetur odit! Libero, maxime? Lorem ipsum dolor sit amet consectetur adipisicing elit. Optio rerum repellendus modi ut quis perferendis reprehenderit nemo magnam. Asperiores incidunt optio tempora temporibus quaerat, magni earum a provident ex praesentium. Distinctio harum provident sapiente repellat explicabo, odit veritatis fugit ullam ducimus nihil. Reprehenderit provident tempore fuga architecto officiis voluptatum iure sequi porro dignissimos, tempora voluptates inventore nesciunt et vitae repudiandae! Totam et, corporis aut nulla delectus quae magni necessitatibus accusamus mollitia pariatur eius ipsam, eaque molestiae eveniet vitae nemo facere voluptatibus porro a eum dolor accusantium tempore. Necessitatibus, repudiandae atque? Autem quam accusamus adipisci magnam a voluptatum doloribus ab expedita! Neque consequatur ab ad doloremque. Accusantium maxime odit, animi unde possimus quas neque distinctio? Quasi eaque distinctio qui ratione soluta! Laborum adipisci velit nobis quos, ipsa illum, consectetur soluta at molestias eaque ea animi minus incidunt ipsam debitis nulla, beatae ad! Enim minima aliquam perspiciatis eligendi beatae ea atque praesentium. Culpa quia blanditiis iure animi ratione ex quisquam amet accusantium aliquid ab, non voluptatum fugiat corporis, obcaecati consequatur laudantium totam excepturi aspernatur similique sequi veritatis libero. Quaerat, sed. Minus, eaque. Libero suscipit ratione, quam quaerat perferendis iste odio quasi quae commodi rerum laudantium doloribus! Perspiciatis culpa soluta sequi cumque cum, magni nulla, minima iste harum, nihil quis! Ex, quo molestias! Officia corporis sapiente facere vero, animi ipsum? Inventore accusamus nesciunt voluptate incidunt quam omnis quibusdam laboriosam. Non deserunt aut, corrupti amet architecto reprehenderit eius, dolores assumenda, blanditiis voluptatibus natus laudantium. Reiciendis dolores odio ab quaerat minima necessitatibus cumque, fuga dolor libero, nisi fugiat exercitationem, maiores voluptate voluptatem vel consectetur praesentium. Culpa eos, voluptatem inventore nemo id expedita atque quis rerum? Dignissimos voluptatum nemo architecto, velit quis magni eum animi, mollitia pariatur facere assumenda. Nam, cum. Deserunt vitae incidunt sunt temporibus! Debitis porro dolorem ea assumenda nulla unde, aliquam natus laborum!</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>&nbsp; &nbsp; </p>\n<!-- /wp:paragraph -->\n\n<!-- wp:image {\"id\":32,\"sizeSlug\":\"large\",\"linkDestination\":\"none\"} -->\n<figure class=\"wp-block-image size-large\"><img src=\"http://portfolio2/wp-content/uploads/2022/09/hero-4-1024x683.jpg\" alt=\"\" class=\"wp-image-32\"/></figure>\n<!-- /wp:image -->\n\n<!-- wp:paragraph -->\n<p>perferendis reprehenderit nemo magnam. Asperiores incidunt optio tempora temporibus quaerat, magni earum a provident ex praesentium. Distinctio harum provident sapiente repellat explicabo, odit veritatis fugit ullam ducimus nihil. Reprehenderit provident tempore fuga architecto officiis voluptatum iure sequi porro dignissimos, tempora voluptates inventore nesciunt et vitae repudiandae! Totam et, corporis aut nulla delectus quae magni necessitatibus accusamus mollitia pariatur eius ipsam, eaque molestiae eveniet vitae nemo facere voluptatibus porro a eum dolor accusantium tempore. Necessitatibus, repudiandae atque? Autem quam accusamus adipisci magnam a voluptatum doloribus ab expedita! Neque consequatur ab ad doloremque. Accusantium maxime odit, animi unde possimus quas neque distinctio? Quasi eaque distinctio qui ratione soluta! Laborum adipisci velit nobis quos, ipsa illum, consectetur soluta at molestias eaque ea animi minus incidunt ipsam debitis nulla, beatae ad! Enim minima aliquam perspiciatis eligendi beatae ea atque praesentium. Culpa quia blanditiis iure animi ratione ex quisquam amet accusantium aliquid ab, non voluptatum fugiat corporis, obcaecati consequatur laudantium totam excepturi aspernatur similique sequi veritatis libero. Quaerat, sed. Minus, eaque. Libero suscipit ratione, quam quaerat perferendis iste odio quasi quae commodi rerum laudantium doloribus! Perspiciatis culpa soluta sequi cumque cum, magni nulla, minima iste harum, nihil quis! Ex, quo molestias! Officia corporis sapiente facere vero, animi ipsum? Inventore accusamus nesciunt voluptate incidunt quam omnis quibusdam laboriosam. Non deserunt aut, corrupti amet architecto reprehenderit eius, dolores assumenda, blanditiis voluptatibus natus laudantium. Reiciendis dolores odio ab quaerat minima necessitatibus cumque, fuga dolor libero, nisi fugiat exercitationem, maiores voluptate voluptatem vel consectetur praesentium. Culpa eos, voluptatem inventore nemo id expedita atque quis rerum? Dignissimos voluptatum nemo architecto, velit quis magni eum animi, mollitia pariatur facere assumenda. Nam, cum. Deserunt vitae incidunt sunt temporibus! Debitis porro dolorem ea assumenda nulla unde, aliquam natus laborum!</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:image {\"id\":35,\"sizeSlug\":\"large\",\"linkDestination\":\"none\"} -->\n<figure class=\"wp-block-image size-large\"><img src=\"http://portfolio2/wp-content/uploads/2022/09/skyline-1024x683.jpg\" alt=\"\" class=\"wp-image-35\"/></figure>\n<!-- /wp:image -->', 'Тестовый пост', 'Это краткое описание поста, которое содержит основную информацию', 'inherit', 'closed', 'closed', '', '28-revision-v1', '', '', '2022-09-05 11:44:26', '2022-09-05 08:44:26', '', 28, 'http://portfolio2/?p=36', 0, 'revision', '', 0),
(37, 1, '2022-09-05 19:38:06', '2022-09-05 16:38:06', '<!-- wp:paragraph -->\n<p>Добро пожаловать в WordPress. Это ваша первая запись. Отредактируйте или удалите ее, затем начинайте создавать!</p>\n<!-- /wp:paragraph -->', 'Привет, мир!', '', 'inherit', 'closed', 'closed', '', '1-revision-v1', '', '', '2022-09-05 19:38:06', '2022-09-05 16:38:06', '', 1, 'http://portfolio2/?p=37', 0, 'revision', '', 0),
(38, 1, '2022-09-05 19:38:36', '2022-09-05 16:38:36', '<!-- wp:paragraph -->\n<p>Lorem ipsum </p>\n<!-- /wp:paragraph -->', 'Тестовый пост 2 из проектов', '', 'trash', 'open', 'open', '', 'testovyj-post-2-iz-proektov__trashed', '', '', '2022-09-11 16:25:10', '2022-09-11 13:25:10', '', 0, 'http://portfolio2/?p=38', 0, 'post', '', 1),
(39, 1, '2022-09-05 19:38:36', '2022-09-05 16:38:36', '', 'Тестовый пост 2 из проектов', '', 'inherit', 'closed', 'closed', '', '38-revision-v1', '', '', '2022-09-05 19:38:36', '2022-09-05 16:38:36', '', 38, 'http://portfolio2/?p=39', 0, 'revision', '', 0),
(40, 1, '2022-09-05 19:39:07', '2022-09-05 16:39:07', '', 'Запись из интересного', '', 'trash', 'open', 'open', '', 'zapis-iz-interesnogo__trashed', '', '', '2022-09-11 16:25:10', '2022-09-11 13:25:10', '', 0, 'http://portfolio2/?p=40', 0, 'post', '', 0),
(41, 1, '2022-09-05 19:39:07', '2022-09-05 16:39:07', '', 'Запись из интересного', '', 'inherit', 'closed', 'closed', '', '40-revision-v1', '', '', '2022-09-05 19:39:07', '2022-09-05 16:39:07', '', 40, 'http://portfolio2/?p=41', 0, 'revision', '', 0),
(42, 1, '2022-09-05 19:40:10', '2022-09-05 16:40:10', '<!-- wp:paragraph -->\n<p>Lorem ipsum </p>\n<!-- /wp:paragraph -->', 'Тестовый пост 2 из проектов', '', 'inherit', 'closed', 'closed', '', '38-revision-v1', '', '', '2022-09-05 19:40:10', '2022-09-05 16:40:10', '', 38, 'http://portfolio2/?p=42', 0, 'revision', '', 0),
(43, 1, '2022-09-06 15:52:21', '2022-09-06 12:52:21', '<!-- wp:paragraph -->\n<p>Hi</p>\n<!-- /wp:paragraph -->', 'тестовая запись', '', 'trash', 'open', 'open', '', 'testovaya-zapis__trashed', '', '', '2022-09-11 16:25:10', '2022-09-11 13:25:10', '', 0, 'http://portfolio2/?p=43', 0, 'post', '', 4),
(44, 1, '2022-09-06 15:52:21', '2022-09-06 12:52:21', '<!-- wp:paragraph -->\n<p>Hi</p>\n<!-- /wp:paragraph -->', 'тестовая запись', '', 'inherit', 'closed', 'closed', '', '43-revision-v1', '', '', '2022-09-06 15:52:21', '2022-09-06 12:52:21', '', 43, 'http://portfolio2/?p=44', 0, 'revision', '', 0),
(49, 1, '2022-09-07 20:44:10', '2022-09-07 17:44:10', '<!-- wp:paragraph -->\n<p>Reiciendis incidunt sapiente perspiciatis debitis praesentium maiores nihil beatae vitae, mollitia asperiores architecto assumenda esse est fugiat libero ducimus quis. Possimus obcaecati aut neque ratione voluptas commodi unde quo veniam. it tempora voluptatum ipsam, voluptas debitis? Laudantium ratione quo eum commodi et numquam accusantium quaerat sed facere excepturi. Repellat placeat aliquid amet distinctio qui incidunt dolores nihil aspernatur eius vitae magnam, tempora quo eos fugit suscipit quibusdam hic ullam libero fugiat delectus. Quia vel incidunt praesentium in officia. Numquam eligendi aliquam consequuntur autem debitis placeat, dolor modi quidem molestiae provident! Officia quae autem aperiam sed ipsam optio doloremque, nesciunt, ipsa inventore doloribus dolor nulla harum dicta architecto sapiente. Sit repellat et nam hic totam voluptatem maxime! Animi sit enim, consequuntur, dignissimos placeat vel ducimus dicta ut aliquid tempore quasi voluptatum laborum atque nemo saepe ad neque, praesentium eos! Labore, aliquam praesentium, in culpa velit et vitae minus fugiat magnam repellendus nostrum tempora laborum saepe. Et, a voluptas! Ratione rerum doloribus aliquam ut architecto enim dolores laudantium possimus porro! Non beatae maxime, possimus consequuntur aperiam totam eligendi odit eos? Ipsa et quasi voluptatibus ea fuga iure beatae nihil necessitatibus? Aperiam accusamus eveniet est esse vitae dicta assumenda incidunt itaque? Nostrum possimus quibusdam similique repudiandae earum esse sed consequatur amet vitae nihil cum est veniam fugiat in explicabo voluptate hic tenetur, laboriosam ipsa nemo? Harum cupiditate ipsum dolore hic nihil! Rem reiciendis repellendus id aspernatur voluptatum consequuntur quis rerum fugiat dicta veritatis assumenda voluptates fugit odit atque, quos quia voluptate qui accusantium animi quas, ipsa enim porro sint ratione? Perferendis. Aperiam in, autem aliquid sequi, voluptate porro explicabo excepturi veniam reprehenderit praesentium molestias quidem corrupti? Corporis enim nesciunt numquam repellat voluptates neque eos dolorum quibusdam natus, recusandae perferendis voluptatem sint. Saepe sequi facilis dolores, magnam doloremque porro recusandae ipsa cumque inventore. Delectus molestias soluta nemo nulla doloremque atque impedit asperiores fuga expedita odio nisi temporibus, aspernatur consectetur odit! Libero, maxime? Lorem ipsum dolor sit amet consectetur adipisicing elit. Optio rerum repellendus modi ut quis perferendis reprehenderit nemo magnam. Asperiores incidunt optio tempora temporibus quaerat, magni earum a provident ex praesentium. Distinctio harum provident sapiente repellat explicabo, odit veritatis fugit ullam ducimus nihil. Reprehenderit provident tempore fuga architecto officiis voluptatum iure sequi porro dignissimos, tempora voluptates inventore nesciunt et vitae repudiandae! Totam et, corporis aut nulla delectus quae magni necessitatibus accusamus mollitia pariatur eius ipsam, eaque molestiae eveniet vitae nemo facere voluptatibus porro a eum dolor accusantium tempore. Necessitatibus, repudiandae atque? Autem quam accusamus adipisci magnam a voluptatum doloribus ab expedita! Neque consequatur ab ad doloremque. Accusantium maxime odit, animi unde possimus quas neque distinctio? Quasi eaque distinctio qui ratione soluta! Laborum adipisci velit nobis quos, ipsa illum, consectetur soluta at molestias eaque ea animi minus incidunt ipsam debitis nulla, beatae ad! Enim minima aliquam perspiciatis eligendi beatae ea atque praesentium. Culpa quia blanditiis iure animi ratione ex quisquam amet accusantium aliquid ab, non voluptatum fugiat corporis, obcaecati consequatur laudantium totam excepturi aspernatur similique sequi veritatis libero. Quaerat, sed. Minus, eaque. Libero suscipit ratione, quam quaerat perferendis iste odio quasi quae commodi rerum laudantium doloribus! Perspiciatis culpa soluta sequi cumque cum, magni nulla, minima iste harum, nihil quis! Ex, quo molestias! Officia corporis sapiente facere vero, animi ipsum? Inventore accusamus nesciunt voluptate incidunt quam omnis quibusdam laboriosam. Non deserunt aut, corrupti amet architecto reprehenderit eius, dolores assumenda, blanditiis voluptatibus natus laudantium. Reiciendis dolores odio ab quaerat minima necessitatibus cumque, fuga dolor libero, nisi fugiat exercitationem, maiores voluptate voluptatem vel consectetur praesentium. Culpa eos, voluptatem inventore nemo id expedita atque quis rerum? Dignissimos voluptatum nemo architecto, velit quis magni eum animi, mollitia pariatur facere assumenda. Nam, cum. Deserunt vitae incidunt sunt temporibus! Debitis porro dolorem ea assumenda nulla unde, aliquam natus laborum!</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>&nbsp; &nbsp; </p>\n<!-- /wp:paragraph -->\n\n<!-- wp:image {\"id\":32,\"sizeSlug\":\"full\",\"linkDestination\":\"none\"} -->\n<figure class=\"wp-block-image size-full\"><img src=\"http://portfolio2/wp-content/uploads/2022/09/hero-4.jpg\" alt=\"\" class=\"wp-image-32\"/></figure>\n<!-- /wp:image -->\n\n<!-- wp:paragraph -->\n<p>perferendis reprehenderit nemo magnam. Asperiores incidunt optio tempora temporibus quaerat, magni earum a provident ex praesentium. Distinctio harum provident sapiente repellat explicabo, odit veritatis fugit ullam ducimus nihil. Reprehenderit provident tempore fuga architecto officiis voluptatum iure sequi porro dignissimos, tempora voluptates inventore nesciunt et vitae repudiandae! Totam et, corporis aut nulla delectus quae magni necessitatibus accusamus mollitia pariatur eius ipsam, eaque molestiae eveniet vitae nemo facere voluptatibus porro a eum dolor accusantium tempore. Necessitatibus, repudiandae atque? Autem quam accusamus adipisci magnam a voluptatum doloribus ab expedita! Neque consequatur ab ad doloremque. Accusantium maxime odit, animi unde possimus quas neque distinctio? Quasi eaque distinctio qui ratione soluta! Laborum adipisci velit nobis quos, ipsa illum, consectetur soluta at molestias eaque ea animi minus incidunt ipsam debitis nulla, beatae ad! Enim minima aliquam perspiciatis eligendi beatae ea atque praesentium. Culpa quia blanditiis iure animi ratione ex quisquam amet accusantium aliquid ab, non voluptatum fugiat corporis, obcaecati consequatur laudantium totam excepturi aspernatur similique sequi veritatis libero. Quaerat, sed. Minus, eaque. Libero suscipit ratione, quam quaerat perferendis iste odio quasi quae commodi rerum laudantium doloribus! Perspiciatis culpa soluta sequi cumque cum, magni nulla, minima iste harum, nihil quis! Ex, quo molestias! Officia corporis sapiente facere vero, animi ipsum? Inventore accusamus nesciunt voluptate incidunt quam omnis quibusdam laboriosam. Non deserunt aut, corrupti amet architecto reprehenderit eius, dolores assumenda, blanditiis voluptatibus natus laudantium. Reiciendis dolores odio ab quaerat minima necessitatibus cumque, fuga dolor libero, nisi fugiat exercitationem, maiores voluptate voluptatem vel consectetur praesentium. Culpa eos, voluptatem inventore nemo id expedita atque quis rerum? Dignissimos voluptatum nemo architecto, velit quis magni eum animi, mollitia pariatur facere assumenda. Nam, cum. Deserunt vitae incidunt sunt temporibus! Debitis porro dolorem ea assumenda nulla unde, aliquam natus laborum!</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:image {\"id\":35,\"sizeSlug\":\"full\",\"linkDestination\":\"none\"} -->\n<figure class=\"wp-block-image size-full\"><img src=\"http://portfolio2/wp-content/uploads/2022/09/skyline-scaled.jpg\" alt=\"\" class=\"wp-image-35\"/></figure>\n<!-- /wp:image -->', 'Тестовый пост', 'Это краткое описание поста, которое содержит основную информацию', 'inherit', 'closed', 'closed', '', '28-revision-v1', '', '', '2022-09-07 20:44:10', '2022-09-07 17:44:10', '', 28, 'http://portfolio2/?p=49', 0, 'revision', '', 0),
(50, 1, '2022-09-09 20:56:46', '2022-09-09 17:56:46', '<!-- wp:paragraph -->\n<p>загрузка </p>\n<!-- /wp:paragraph -->', 'Ленивая загрузка', 'привет', 'trash', 'open', 'open', '', 'lenivaya-zagruzka__trashed', '', '', '2022-09-11 16:25:10', '2022-09-11 13:25:10', '', 0, 'http://portfolio2/?p=50', 0, 'post', '', 0),
(51, 1, '2022-09-09 20:56:46', '2022-09-09 17:56:46', '<!-- wp:paragraph -->\n<p>загрузка </p>\n<!-- /wp:paragraph -->', 'Ленивая загрузка', 'привет', 'inherit', 'closed', 'closed', '', '50-revision-v1', '', '', '2022-09-09 20:56:46', '2022-09-09 17:56:46', '', 50, 'http://portfolio2/?p=51', 0, 'revision', '', 0),
(52, 1, '2022-09-09 20:57:33', '2022-09-09 17:57:33', '<!-- wp:paragraph -->\n<p>вававаф</p>\n<!-- /wp:paragraph -->', 'ленивая загрузка 2', 'фыафафыва', 'trash', 'open', 'open', '', 'lenivaya-zagruzka-2__trashed', '', '', '2022-09-11 16:25:10', '2022-09-11 13:25:10', '', 0, 'http://portfolio2/?p=52', 0, 'post', '', 0),
(53, 1, '2022-09-09 20:57:33', '2022-09-09 17:57:33', '<!-- wp:paragraph -->\n<p>вававаф</p>\n<!-- /wp:paragraph -->', 'ленивая загрузка 2', 'фыафафыва', 'inherit', 'closed', 'closed', '', '52-revision-v1', '', '', '2022-09-09 20:57:33', '2022-09-09 17:57:33', '', 52, 'http://portfolio2/?p=53', 0, 'revision', '', 0),
(54, 1, '2022-09-09 20:58:10', '2022-09-09 17:58:10', '<!-- wp:paragraph -->\n<p>фафываыфвафыва</p>\n<!-- /wp:paragraph -->', 'ленивая загрузка 3', 'фывафывафыа', 'trash', 'open', 'open', '', 'lenivaya-zagruzka-3__trashed', '', '', '2022-09-11 16:25:10', '2022-09-11 13:25:10', '', 0, 'http://portfolio2/?p=54', 0, 'post', '', 0),
(55, 1, '2022-09-09 20:58:10', '2022-09-09 17:58:10', '<!-- wp:paragraph -->\n<p>фафываыфвафыва</p>\n<!-- /wp:paragraph -->', 'ленивая загрузка 3', 'фывафывафыа', 'inherit', 'closed', 'closed', '', '54-revision-v1', '', '', '2022-09-09 20:58:10', '2022-09-09 17:58:10', '', 54, 'http://portfolio2/?p=55', 0, 'revision', '', 0),
(56, 1, '2022-09-09 20:58:43', '2022-09-09 17:58:43', '<!-- wp:paragraph -->\n<p>фывафывафываыфва</p>\n<!-- /wp:paragraph -->', 'ленивая загрузка 4', 'фывафывафыа', 'trash', 'open', 'open', '', 'lenivaya-zagruzka-4__trashed', '', '', '2022-09-11 16:25:10', '2022-09-11 13:25:10', '', 0, 'http://portfolio2/?p=56', 0, 'post', '', 0),
(57, 1, '2022-09-09 20:58:43', '2022-09-09 17:58:43', '<!-- wp:paragraph -->\n<p>фывафывафываыфва</p>\n<!-- /wp:paragraph -->', 'ленивая загрузка 4', 'фывафывафыа', 'inherit', 'closed', 'closed', '', '56-revision-v1', '', '', '2022-09-09 20:58:43', '2022-09-09 17:58:43', '', 56, 'http://portfolio2/?p=57', 0, 'revision', '', 0),
(58, 1, '2022-09-09 20:59:21', '2022-09-09 17:59:21', '<!-- wp:paragraph -->\n<p>цвафылдаофжыдао</p>\n<!-- /wp:paragraph -->', 'ленивая загрузка 5', 'фывафцваыфва', 'trash', 'open', 'open', '', 'lenivaya-zagruzka-5__trashed', '', '', '2022-09-11 16:25:10', '2022-09-11 13:25:10', '', 0, 'http://portfolio2/?p=58', 0, 'post', '', 0),
(59, 1, '2022-09-09 20:59:21', '2022-09-09 17:59:21', '<!-- wp:paragraph -->\n<p>цвафылдаофжыдао</p>\n<!-- /wp:paragraph -->', 'ленивая загрузка 5', 'фывафцваыфва', 'inherit', 'closed', 'closed', '', '58-revision-v1', '', '', '2022-09-09 20:59:21', '2022-09-09 17:59:21', '', 58, 'http://portfolio2/?p=59', 0, 'revision', '', 0),
(60, 1, '2022-09-11 15:20:25', '0000-00-00 00:00:00', '', 'Черновик', '', 'auto-draft', 'open', 'open', '', '', '', '', '2022-09-11 15:20:25', '0000-00-00 00:00:00', '', 0, 'http://portfolio2/?p=60', 0, 'post', '', 0),
(61, 1, '2022-09-11 16:00:59', '2022-09-11 13:00:59', '', 'На глвавной', '', 'trash', 'open', 'open', '', 'na-glvavnoj__trashed', '', '', '2022-09-11 16:25:10', '2022-09-11 13:25:10', '', 0, 'http://portfolio2/?p=61', 0, 'post', '', 1),
(62, 1, '2022-09-11 16:00:59', '2022-09-11 13:00:59', '', 'На глвавной', '', 'inherit', 'closed', 'closed', '', '61-revision-v1', '', '', '2022-09-11 16:00:59', '2022-09-11 13:00:59', '', 61, 'http://portfolio2/?p=62', 0, 'revision', '', 0),
(63, 1, '2022-09-11 16:09:03', '2022-09-11 13:09:03', '', 'sfsfsfs', '', 'trash', 'open', 'open', '', 'sfsfsfs__trashed', '', '', '2022-09-11 16:25:10', '2022-09-11 13:25:10', '', 0, 'http://portfolio2/?p=63', 0, 'post', '', 0),
(64, 1, '2022-09-11 16:09:03', '2022-09-11 13:09:03', '', 'sfsfsfs', '', 'inherit', 'closed', 'closed', '', '63-revision-v1', '', '', '2022-09-11 16:09:03', '2022-09-11 13:09:03', '', 63, 'http://portfolio2/?p=64', 0, 'revision', '', 0),
(65, 1, '2022-09-11 16:25:54', '2022-09-11 13:25:54', '', 'Без комментариев', '', 'trash', 'closed', 'closed', '', 'bez-kommentariev__trashed', '', '', '2022-09-12 22:56:45', '2022-09-12 19:56:45', '', 0, 'http://portfolio2/?p=65', 0, 'post', '', 0),
(66, 1, '2022-09-11 16:25:54', '2022-09-11 13:25:54', '', 'Без комментариев', '', 'inherit', 'closed', 'closed', '', '65-revision-v1', '', '', '2022-09-11 16:25:54', '2022-09-11 13:25:54', '', 65, 'http://portfolio2/?p=66', 0, 'revision', '', 0),
(67, 1, '2022-09-11 16:26:30', '2022-09-11 13:26:30', '', '34-33', '', 'inherit', 'open', 'closed', '', '34-33', '', '', '2022-09-11 16:26:30', '2022-09-11 13:26:30', '', 65, 'http://portfolio2/wp-content/uploads/2022/09/34-33.jpg', 0, 'attachment', 'image/jpeg', 0),
(68, 1, '2022-09-11 16:52:31', '2022-09-11 13:52:31', '', 'С комментариями', '', 'trash', 'open', 'open', '', 's-kommentariyami__trashed', '', '', '2022-09-12 22:56:45', '2022-09-12 19:56:45', '', 0, 'http://portfolio2/?p=68', 0, 'post', '', 3),
(69, 1, '2022-09-11 16:52:31', '2022-09-11 13:52:31', '', 'С комментариями', '', 'inherit', 'closed', 'closed', '', '68-revision-v1', '', '', '2022-09-11 16:52:31', '2022-09-11 13:52:31', '', 68, 'http://portfolio2/?p=69', 0, 'revision', '', 0),
(70, 1, '2022-09-11 17:31:26', '0000-00-00 00:00:00', '', 'Черновик', '', 'auto-draft', 'closed', 'closed', '', '', '', '', '2022-09-11 17:31:26', '0000-00-00 00:00:00', '', 0, 'http://portfolio2/?post_type=acf-field-group&p=70', 0, 'acf-field-group', '', 0),
(74, 1, '2022-09-12 00:43:46', '2022-09-11 21:43:46', '', 'logo', '', 'inherit', 'open', 'closed', '', 'logo', '', '', '2022-09-12 00:43:46', '2022-09-11 21:43:46', '', 0, 'http://portfolio2/wp-content/uploads/2022/09/logo.png', 0, 'attachment', 'image/png', 0),
(75, 1, '2022-09-12 00:43:49', '2022-09-11 21:43:49', 'http://portfolio2/wp-content/uploads/2022/09/cropped-logo.png', 'cropped-logo.png', '', 'inherit', 'open', 'closed', '', 'cropped-logo-png', '', '', '2022-09-12 00:43:49', '2022-09-11 21:43:49', '', 0, 'http://portfolio2/wp-content/uploads/2022/09/cropped-logo.png', 0, 'attachment', 'image/png', 0),
(76, 1, '2022-09-12 00:43:58', '2022-09-11 21:43:58', '{\n    \"site_icon\": {\n        \"value\": 75,\n        \"type\": \"option\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2022-09-11 21:43:58\"\n    }\n}', '', '', 'trash', 'closed', 'closed', '', '0a1f0ff2-cfe8-4c14-b727-9249e1228820', '', '', '2022-09-12 00:43:58', '2022-09-11 21:43:58', '', 0, 'http://portfolio2/2022/09/12/0a1f0ff2-cfe8-4c14-b727-9249e1228820/', 0, 'customize_changeset', '', 0),
(77, 1, '2022-09-12 01:02:49', '0000-00-00 00:00:00', '', 'Черновик', '', 'auto-draft', 'closed', 'closed', '', '', '', '', '2022-09-12 01:02:49', '0000-00-00 00:00:00', '', 0, 'http://portfolio2/?post_type=acf-field-group&p=77', 0, 'acf-field-group', '', 0),
(78, 1, '2022-09-12 01:17:47', '0000-00-00 00:00:00', '', 'Черновик', '', 'auto-draft', 'closed', 'closed', '', '', '', '', '2022-09-12 01:17:47', '0000-00-00 00:00:00', '', 0, 'http://portfolio2/?post_type=acf-field-group&p=78', 0, 'acf-field-group', '', 0),
(79, 1, '2022-09-12 01:41:51', '2022-09-11 22:41:51', 'a:8:{s:8:\"location\";a:1:{i:0;a:1:{i:0;a:3:{s:5:\"param\";s:12:\"options_page\";s:8:\"operator\";s:2:\"==\";s:5:\"value\";s:22:\"theme-general-settings\";}}}s:8:\"position\";s:6:\"normal\";s:5:\"style\";s:7:\"default\";s:15:\"label_placement\";s:3:\"top\";s:21:\"instruction_placement\";s:5:\"label\";s:14:\"hide_on_screen\";s:0:\"\";s:11:\"description\";s:0:\"\";s:12:\"show_in_rest\";i:0;}', 'Шапка сайта и footer', 'shapka-sajta-i-footer', 'publish', 'closed', 'closed', '', 'group_631e619a6e8c8', '', '', '2022-09-12 20:34:49', '2022-09-12 17:34:49', '', 0, 'http://portfolio2/?post_type=acf-field-group&#038;p=79', 0, 'acf-field-group', '', 0),
(80, 1, '2022-09-12 01:41:51', '2022-09-11 22:41:51', 'a:10:{s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:115:\"Пишет в футере текст (менять вообще не нужно без необходимости)\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:57:\"©  2022 ООО «ЭЛЕКТРОННАЯ ТЕХНИКА»\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";}', 'Текст в футере', 'footer-text', 'publish', 'closed', 'closed', '', 'field_631e61c7e0c26', '', '', '2022-09-12 20:34:48', '2022-09-12 17:34:48', '', 79, 'http://portfolio2/?post_type=acf-field&#038;p=80', 0, 'acf-field', '', 0),
(81, 1, '2022-09-12 01:41:51', '2022-09-11 22:41:51', 'a:18:{s:4:\"type\";s:7:\"gallery\";s:12:\"instructions\";s:100:\"Это поле нужно будет измнетить, добавить свои картинки\";s:8:\"required\";i:1;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"return_format\";s:5:\"array\";s:12:\"preview_size\";s:4:\"full\";s:6:\"insert\";s:6:\"append\";s:7:\"library\";s:3:\"all\";s:3:\"min\";i:2;s:3:\"max\";s:0:\"\";s:9:\"min_width\";s:0:\"\";s:10:\"min_height\";s:0:\"\";s:8:\"min_size\";s:0:\"\";s:9:\"max_width\";s:0:\"\";s:10:\"max_height\";s:0:\"\";s:8:\"max_size\";s:0:\"\";s:10:\"mime_types\";s:0:\"\";}', 'Галерея картинок в шапке (затухающий слайдер)', 'headder-gallery', 'publish', 'closed', 'closed', '', 'field_631e622fe0c27', '', '', '2022-09-12 01:41:51', '2022-09-11 22:41:51', '', 79, 'http://portfolio2/?post_type=acf-field&p=81', 1, 'acf-field', '', 0),
(82, 1, '2022-09-12 01:41:52', '2022-09-11 22:41:52', 'a:10:{s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:43:\"Это поле нужно поменять\";s:8:\"required\";i:1;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:52:\"Необходимо внести изменения\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";}', 'Самый большой текст в шапке', 'Big-text-header', 'publish', 'closed', 'closed', '', 'field_631e62bce0c28', '', '', '2022-09-12 01:41:52', '2022-09-11 22:41:52', '', 79, 'http://portfolio2/?post_type=acf-field&p=82', 2, 'acf-field', '', 0),
(83, 1, '2022-09-12 01:41:52', '2022-09-11 22:41:52', 'a:10:{s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:1;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";}', 'Текст под самым большим', 'normal-text-header', 'publish', 'closed', 'closed', '', 'field_631e6331e0c29', '', '', '2022-09-12 01:41:52', '2022-09-11 22:41:52', '', 79, 'http://portfolio2/?post_type=acf-field&p=83', 3, 'acf-field', '', 0),
(84, 1, '2022-09-12 01:44:21', '2022-09-11 22:44:21', '', 'hero-1', '', 'inherit', 'open', 'closed', '', 'hero-1', '', '', '2022-09-12 01:44:21', '2022-09-11 22:44:21', '', 13, 'http://portfolio2/wp-content/uploads/2022/09/hero-1.jpg', 0, 'attachment', 'image/jpeg', 0),
(85, 1, '2022-09-12 01:44:24', '2022-09-11 22:44:24', '', 'hero-2', '', 'inherit', 'open', 'closed', '', 'hero-2', '', '', '2022-09-12 01:44:24', '2022-09-11 22:44:24', '', 13, 'http://portfolio2/wp-content/uploads/2022/09/hero-2.jpg', 0, 'attachment', 'image/jpeg', 0),
(86, 1, '2022-09-12 01:44:28', '2022-09-11 22:44:28', '', 'hero-3', '', 'inherit', 'open', 'closed', '', 'hero-3', '', '', '2022-09-12 01:44:28', '2022-09-11 22:44:28', '', 13, 'http://portfolio2/wp-content/uploads/2022/09/hero-3.jpg', 0, 'attachment', 'image/jpeg', 0),
(87, 1, '2022-09-12 01:45:18', '2022-09-11 22:45:18', '', 'Главная', '', 'inherit', 'closed', 'closed', '', '13-revision-v1', '', '', '2022-09-12 01:45:18', '2022-09-11 22:45:18', '', 13, 'http://portfolio2/?p=87', 0, 'revision', '', 0),
(88, 1, '2022-09-12 20:20:27', '0000-00-00 00:00:00', '', 'Черновик', '', 'auto-draft', 'closed', 'closed', '', '', '', '', '2022-09-12 20:20:27', '0000-00-00 00:00:00', '', 0, 'http://portfolio2/?post_type=acf-field-group&p=88', 0, 'acf-field-group', '', 0),
(89, 1, '2022-09-12 21:14:02', '0000-00-00 00:00:00', '', 'Черновик', '', 'auto-draft', 'closed', 'closed', '', '', '', '', '2022-09-12 21:14:02', '0000-00-00 00:00:00', '', 0, 'http://portfolio2/?post_type=acf-field-group&p=89', 0, 'acf-field-group', '', 0),
(90, 1, '2022-09-12 21:14:27', '0000-00-00 00:00:00', '', 'Черновик', '', 'auto-draft', 'closed', 'closed', '', '', '', '', '2022-09-12 21:14:27', '0000-00-00 00:00:00', '', 0, 'http://portfolio2/?post_type=acf-field-group&p=90', 0, 'acf-field-group', '', 0),
(91, 1, '2022-09-12 21:21:46', '2022-09-12 18:21:46', '', 'Тестовая запись для проверки формы такие длинные не делать', '', 'trash', 'open', 'open', '', 'testovaya-zapis-dlya-proverki-formy-takie-dlinnye-ne-delat__trashed', '', '', '2022-09-12 22:56:43', '2022-09-12 19:56:43', '', 0, 'http://portfolio2/?p=91', 0, 'post', '', 1),
(92, 1, '2022-09-12 21:21:09', '0000-00-00 00:00:00', '', 'Черновик', '', 'auto-draft', 'open', 'open', '', '', '', '', '2022-09-12 21:21:09', '0000-00-00 00:00:00', '', 0, 'http://portfolio2/?p=92', 0, 'post', '', 0),
(93, 1, '2022-09-12 21:21:46', '2022-09-12 18:21:46', '', 'Тестовая запись для проверки формы такие длинные не делать', '', 'inherit', 'closed', 'closed', '', '91-revision-v1', '', '', '2022-09-12 21:21:46', '2022-09-12 18:21:46', '', 91, 'http://portfolio2/?p=93', 0, 'revision', '', 0),
(94, 1, '2022-09-12 22:57:57', '2022-09-12 19:57:57', '', 'Без комментариев', '', 'publish', 'closed', 'open', '', 'bez-kommentariev', '', '', '2022-09-12 23:23:36', '2022-09-12 20:23:36', '', 0, 'http://portfolio2/?p=94', 0, 'post', '', 0),
(95, 1, '2022-09-12 22:57:28', '0000-00-00 00:00:00', '', 'Черновик', '', 'auto-draft', 'open', 'open', '', '', '', '', '2022-09-12 22:57:28', '0000-00-00 00:00:00', '', 0, 'http://portfolio2/?p=95', 0, 'post', '', 0),
(96, 1, '2022-09-12 22:57:57', '2022-09-12 19:57:57', '', 'Без комментариев', '', 'inherit', 'closed', 'closed', '', '94-revision-v1', '', '', '2022-09-12 22:57:57', '2022-09-12 19:57:57', '', 94, 'http://portfolio2/?p=96', 0, 'revision', '', 0),
(97, 1, '2022-09-12 23:25:16', '2022-09-12 20:25:16', '', 'Тест длины записи, такую лучше не делать', '', 'publish', 'open', 'open', '', 'test-dliny-zapisi-takuyu-luchshe-ne-delat', '', '', '2022-09-12 23:25:20', '2022-09-12 20:25:20', '', 0, 'http://portfolio2/?p=97', 0, 'post', '', 0),
(98, 1, '2022-09-12 23:25:04', '0000-00-00 00:00:00', '', 'Черновик', '', 'auto-draft', 'open', 'open', '', '', '', '', '2022-09-12 23:25:04', '0000-00-00 00:00:00', '', 0, 'http://portfolio2/?p=98', 0, 'post', '', 0),
(99, 1, '2022-09-12 23:25:16', '2022-09-12 20:25:16', '', 'Тест длины записи, такую лучше не делать', '', 'inherit', 'closed', 'closed', '', '97-revision-v1', '', '', '2022-09-12 23:25:16', '2022-09-12 20:25:16', '', 97, 'http://portfolio2/?p=99', 0, 'revision', '', 0);

-- --------------------------------------------------------

--
-- Структура таблицы `eltech_termmeta`
--

CREATE TABLE `eltech_termmeta` (
  `meta_id` bigint UNSIGNED NOT NULL,
  `term_id` bigint UNSIGNED NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_520_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `eltech_terms`
--

CREATE TABLE `eltech_terms` (
  `term_id` bigint UNSIGNED NOT NULL,
  `name` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `slug` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `term_group` bigint NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Дамп данных таблицы `eltech_terms`
--

INSERT INTO `eltech_terms` (`term_id`, `name`, `slug`, `term_group`) VALUES
(1, 'Без рубрики', '%d0%b1%d0%b5%d0%b7-%d1%80%d1%83%d0%b1%d1%80%d0%b8%d0%ba%d0%b8', 0),
(2, 'portfolioTheme', 'portfoliotheme', 0),
(3, 'menu-desktop', 'menu-desktop', 0),
(4, 'menu-mobile', 'menu-mobile', 0),
(5, 'Проекты', 'projects', 0),
(6, 'Интересное', 'interesting', 0);

-- --------------------------------------------------------

--
-- Структура таблицы `eltech_term_relationships`
--

CREATE TABLE `eltech_term_relationships` (
  `object_id` bigint UNSIGNED NOT NULL DEFAULT '0',
  `term_taxonomy_id` bigint UNSIGNED NOT NULL DEFAULT '0',
  `term_order` int NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Дамп данных таблицы `eltech_term_relationships`
--

INSERT INTO `eltech_term_relationships` (`object_id`, `term_taxonomy_id`, `term_order`) VALUES
(1, 1, 0),
(8, 2, 0),
(21, 3, 0),
(22, 3, 0),
(24, 4, 0),
(25, 4, 0),
(28, 5, 0),
(38, 5, 0),
(40, 6, 0),
(43, 5, 0),
(50, 6, 0),
(52, 6, 0),
(54, 6, 0),
(56, 6, 0),
(58, 6, 0),
(61, 5, 0),
(63, 6, 0),
(65, 5, 0),
(68, 5, 0),
(91, 5, 0),
(94, 5, 0),
(97, 5, 0);

-- --------------------------------------------------------

--
-- Структура таблицы `eltech_term_taxonomy`
--

CREATE TABLE `eltech_term_taxonomy` (
  `term_taxonomy_id` bigint UNSIGNED NOT NULL,
  `term_id` bigint UNSIGNED NOT NULL DEFAULT '0',
  `taxonomy` varchar(32) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `description` longtext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `parent` bigint UNSIGNED NOT NULL DEFAULT '0',
  `count` bigint NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Дамп данных таблицы `eltech_term_taxonomy`
--

INSERT INTO `eltech_term_taxonomy` (`term_taxonomy_id`, `term_id`, `taxonomy`, `description`, `parent`, `count`) VALUES
(1, 1, 'category', '', 0, 0),
(2, 2, 'wp_theme', '', 0, 1),
(3, 3, 'nav_menu', '', 0, 2),
(4, 4, 'nav_menu', '', 0, 2),
(5, 5, 'category', '', 0, 2),
(6, 6, 'category', '', 0, 0);

-- --------------------------------------------------------

--
-- Структура таблицы `eltech_usermeta`
--

CREATE TABLE `eltech_usermeta` (
  `umeta_id` bigint UNSIGNED NOT NULL,
  `user_id` bigint UNSIGNED NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_520_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Дамп данных таблицы `eltech_usermeta`
--

INSERT INTO `eltech_usermeta` (`umeta_id`, `user_id`, `meta_key`, `meta_value`) VALUES
(1, 1, 'nickname', 'Admin'),
(2, 1, 'first_name', ''),
(3, 1, 'last_name', ''),
(4, 1, 'description', ''),
(5, 1, 'rich_editing', 'true'),
(6, 1, 'syntax_highlighting', 'true'),
(7, 1, 'comment_shortcuts', 'false'),
(8, 1, 'admin_color', 'fresh'),
(9, 1, 'use_ssl', '0'),
(10, 1, 'show_admin_bar_front', 'true'),
(11, 1, 'locale', ''),
(12, 1, 'ElTech_capabilities', 'a:1:{s:13:\"administrator\";b:1;}'),
(13, 1, 'ElTech_user_level', '10'),
(14, 1, 'dismissed_wp_pointers', ''),
(15, 1, 'show_welcome_panel', '0'),
(17, 1, 'ElTech_dashboard_quick_press_last_post_id', '60'),
(18, 1, 'community-events-location', 'a:1:{s:2:\"ip\";s:9:\"127.0.0.0\";}'),
(19, 1, 'managenav-menuscolumnshidden', 'a:0:{}'),
(20, 1, 'nav_menu_recently_edited', '3'),
(21, 1, 'metaboxhidden_nav-menus', 'a:1:{i:0;s:12:\"add-post_tag\";}'),
(22, 1, 'ElTech_user-settings', 'libraryContent=browse'),
(23, 1, 'ElTech_user-settings-time', '1662303647'),
(24, 1, 'anycomment_disabled_tour_social', '1'),
(25, 1, 'anycomment_disabled_tour_social', '1'),
(26, 1, 'anycomment_disabled_tour_settings', '1'),
(31, 1, 'session_tokens', 'a:1:{s:64:\"9522cc7bb7898e6d7f61d1b6da840c64995c7587277679fa7dd632c89c97c3f0\";a:4:{s:10:\"expiration\";i:1663955750;s:2:\"ip\";s:9:\"127.0.0.1\";s:2:\"ua\";s:106:\"Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/105.0.0.0 Safari/537.36\";s:5:\"login\";i:1662746150;}}'),
(32, 1, 'ElTech_yoast_notifications', 'a:1:{i:0;a:2:{s:7:\"message\";s:570:\"<p>Мы видим, что вы включили автоматическое обновление для WordPress. Мы рекомендуем сделать это и для Yoast SEO. Таким образом, мы можем гарантировать, что WordPress и Yoast SEO  продолжат бесперебойно работать вместе. <a href=\"http://portfolio2/wp-admin/plugins.php\">Перейдите к списку плагинов, чтобы включить автоматические обновления для Yoast SEO.</a></p>\";s:7:\"options\";a:10:{s:4:\"type\";s:7:\"warning\";s:2:\"id\";s:17:\"wpseo-auto-update\";s:4:\"user\";O:7:\"WP_User\":8:{s:4:\"data\";O:8:\"stdClass\":10:{s:2:\"ID\";s:1:\"1\";s:10:\"user_login\";s:5:\"Admin\";s:9:\"user_pass\";s:34:\"$P$BLFvyJpXmYnvCE54Qxal671H0MEBlg0\";s:13:\"user_nicename\";s:5:\"admin\";s:10:\"user_email\";s:24:\"egor.kor013000@gmail.com\";s:8:\"user_url\";s:17:\"http://portfolio2\";s:15:\"user_registered\";s:19:\"2022-09-04 08:13:36\";s:19:\"user_activation_key\";s:0:\"\";s:11:\"user_status\";s:1:\"0\";s:12:\"display_name\";s:5:\"Admin\";}s:2:\"ID\";i:1;s:4:\"caps\";a:1:{s:13:\"administrator\";b:1;}s:7:\"cap_key\";s:19:\"ElTech_capabilities\";s:5:\"roles\";a:1:{i:0;s:13:\"administrator\";}s:7:\"allcaps\";a:75:{s:13:\"switch_themes\";b:1;s:11:\"edit_themes\";b:1;s:16:\"activate_plugins\";b:1;s:12:\"edit_plugins\";b:1;s:10:\"edit_users\";b:1;s:10:\"edit_files\";b:1;s:14:\"manage_options\";b:1;s:17:\"moderate_comments\";b:1;s:17:\"manage_categories\";b:1;s:12:\"manage_links\";b:1;s:12:\"upload_files\";b:1;s:6:\"import\";b:1;s:15:\"unfiltered_html\";b:1;s:10:\"edit_posts\";b:1;s:17:\"edit_others_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:10:\"edit_pages\";b:1;s:4:\"read\";b:1;s:8:\"level_10\";b:1;s:7:\"level_9\";b:1;s:7:\"level_8\";b:1;s:7:\"level_7\";b:1;s:7:\"level_6\";b:1;s:7:\"level_5\";b:1;s:7:\"level_4\";b:1;s:7:\"level_3\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:17:\"edit_others_pages\";b:1;s:20:\"edit_published_pages\";b:1;s:13:\"publish_pages\";b:1;s:12:\"delete_pages\";b:1;s:19:\"delete_others_pages\";b:1;s:22:\"delete_published_pages\";b:1;s:12:\"delete_posts\";b:1;s:19:\"delete_others_posts\";b:1;s:22:\"delete_published_posts\";b:1;s:20:\"delete_private_posts\";b:1;s:18:\"edit_private_posts\";b:1;s:18:\"read_private_posts\";b:1;s:20:\"delete_private_pages\";b:1;s:18:\"edit_private_pages\";b:1;s:18:\"read_private_pages\";b:1;s:12:\"delete_users\";b:1;s:12:\"create_users\";b:1;s:17:\"unfiltered_upload\";b:1;s:14:\"edit_dashboard\";b:1;s:14:\"update_plugins\";b:1;s:14:\"delete_plugins\";b:1;s:15:\"install_plugins\";b:1;s:13:\"update_themes\";b:1;s:14:\"install_themes\";b:1;s:11:\"update_core\";b:1;s:10:\"list_users\";b:1;s:12:\"remove_users\";b:1;s:13:\"promote_users\";b:1;s:18:\"edit_theme_options\";b:1;s:13:\"delete_themes\";b:1;s:6:\"export\";b:1;s:18:\"read_wpdiscuz_form\";b:1;s:19:\"read_wpdiscuz_forms\";b:1;s:18:\"edit_wpdiscuz_form\";b:1;s:19:\"edit_wpdiscuz_forms\";b:1;s:26:\"edit_others_wpdiscuz_forms\";b:1;s:29:\"edit_published_wpdiscuz_forms\";b:1;s:22:\"publish_wpdiscuz_forms\";b:1;s:20:\"delete_wpdiscuz_form\";b:1;s:21:\"delete_wpdiscuz_forms\";b:1;s:28:\"delete_others_wpdiscuz_forms\";b:1;s:29:\"delete_private_wpdiscuz_forms\";b:1;s:31:\"delete_published_wpdiscuz_forms\";b:1;s:20:\"wpseo_manage_options\";b:1;s:13:\"administrator\";b:1;}s:6:\"filter\";N;s:16:\"\0WP_User\0site_id\";i:1;}s:5:\"nonce\";N;s:8:\"priority\";d:0.8;s:9:\"data_json\";a:0:{}s:13:\"dismissal_key\";N;s:12:\"capabilities\";s:20:\"wpseo_manage_options\";s:16:\"capability_check\";s:3:\"all\";s:14:\"yoast_branding\";b:0;}}}'),
(33, 1, 'ElTech_wpseo-auto-update', 'seen'),
(34, 1, 'facebook', ''),
(35, 1, 'instagram', ''),
(36, 1, 'linkedin', ''),
(37, 1, 'myspace', ''),
(38, 1, 'pinterest', ''),
(39, 1, 'soundcloud', ''),
(40, 1, 'tumblr', ''),
(41, 1, 'twitter', ''),
(42, 1, 'youtube', ''),
(43, 1, 'wikipedia', ''),
(44, 1, 'closedpostboxes_page', 'a:1:{i:0;s:10:\"wpseo_meta\";}'),
(45, 1, 'metaboxhidden_page', 'a:0:{}'),
(46, 1, 'meta-box-order_toplevel_page_theme-general-settings', 'a:2:{s:4:\"side\";s:9:\"submitdiv\";s:6:\"normal\";s:23:\"acf-group_631e619a6e8c8\";}'),
(47, 1, 'screen_layout_toplevel_page_theme-general-settings', '2'),
(48, 1, 'closedpostboxes_post', 'a:1:{i:0;s:10:\"wpseo_meta\";}'),
(49, 1, 'metaboxhidden_post', 'a:0:{}');

-- --------------------------------------------------------

--
-- Структура таблицы `eltech_users`
--

CREATE TABLE `eltech_users` (
  `ID` bigint UNSIGNED NOT NULL,
  `user_login` varchar(60) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_pass` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_nicename` varchar(50) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_email` varchar(100) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_url` varchar(100) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_registered` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `user_activation_key` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_status` int NOT NULL DEFAULT '0',
  `display_name` varchar(250) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Дамп данных таблицы `eltech_users`
--

INSERT INTO `eltech_users` (`ID`, `user_login`, `user_pass`, `user_nicename`, `user_email`, `user_url`, `user_registered`, `user_activation_key`, `user_status`, `display_name`) VALUES
(1, 'Admin', '$P$BLFvyJpXmYnvCE54Qxal671H0MEBlg0', 'admin', 'egor.kor013000@gmail.com', 'http://portfolio2', '2022-09-04 08:13:36', '', 0, 'Admin');

-- --------------------------------------------------------

--
-- Структура таблицы `eltech_yoast_indexable`
--

CREATE TABLE `eltech_yoast_indexable` (
  `id` int UNSIGNED NOT NULL,
  `permalink` longtext COLLATE utf8mb4_unicode_520_ci,
  `permalink_hash` varchar(40) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `object_id` bigint DEFAULT NULL,
  `object_type` varchar(32) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `object_sub_type` varchar(32) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `author_id` bigint DEFAULT NULL,
  `post_parent` bigint DEFAULT NULL,
  `title` text COLLATE utf8mb4_unicode_520_ci,
  `description` mediumtext COLLATE utf8mb4_unicode_520_ci,
  `breadcrumb_title` text COLLATE utf8mb4_unicode_520_ci,
  `post_status` varchar(20) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `is_public` tinyint(1) DEFAULT NULL,
  `is_protected` tinyint(1) DEFAULT '0',
  `has_public_posts` tinyint(1) DEFAULT NULL,
  `number_of_pages` int UNSIGNED DEFAULT NULL,
  `canonical` longtext COLLATE utf8mb4_unicode_520_ci,
  `primary_focus_keyword` varchar(191) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `primary_focus_keyword_score` int DEFAULT NULL,
  `readability_score` int DEFAULT NULL,
  `is_cornerstone` tinyint(1) DEFAULT '0',
  `is_robots_noindex` tinyint(1) DEFAULT '0',
  `is_robots_nofollow` tinyint(1) DEFAULT '0',
  `is_robots_noarchive` tinyint(1) DEFAULT '0',
  `is_robots_noimageindex` tinyint(1) DEFAULT '0',
  `is_robots_nosnippet` tinyint(1) DEFAULT '0',
  `twitter_title` text COLLATE utf8mb4_unicode_520_ci,
  `twitter_image` longtext COLLATE utf8mb4_unicode_520_ci,
  `twitter_description` longtext COLLATE utf8mb4_unicode_520_ci,
  `twitter_image_id` varchar(191) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `twitter_image_source` text COLLATE utf8mb4_unicode_520_ci,
  `open_graph_title` text COLLATE utf8mb4_unicode_520_ci,
  `open_graph_description` longtext COLLATE utf8mb4_unicode_520_ci,
  `open_graph_image` longtext COLLATE utf8mb4_unicode_520_ci,
  `open_graph_image_id` varchar(191) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `open_graph_image_source` text COLLATE utf8mb4_unicode_520_ci,
  `open_graph_image_meta` mediumtext COLLATE utf8mb4_unicode_520_ci,
  `link_count` int DEFAULT NULL,
  `incoming_link_count` int DEFAULT NULL,
  `prominent_words_version` int UNSIGNED DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `blog_id` bigint NOT NULL DEFAULT '1',
  `language` varchar(32) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `region` varchar(32) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `schema_page_type` varchar(64) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `schema_article_type` varchar(64) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `has_ancestors` tinyint(1) DEFAULT '0',
  `estimated_reading_time_minutes` int DEFAULT NULL,
  `version` int DEFAULT '1',
  `object_last_modified` datetime DEFAULT NULL,
  `object_published_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Дамп данных таблицы `eltech_yoast_indexable`
--

INSERT INTO `eltech_yoast_indexable` (`id`, `permalink`, `permalink_hash`, `object_id`, `object_type`, `object_sub_type`, `author_id`, `post_parent`, `title`, `description`, `breadcrumb_title`, `post_status`, `is_public`, `is_protected`, `has_public_posts`, `number_of_pages`, `canonical`, `primary_focus_keyword`, `primary_focus_keyword_score`, `readability_score`, `is_cornerstone`, `is_robots_noindex`, `is_robots_nofollow`, `is_robots_noarchive`, `is_robots_noimageindex`, `is_robots_nosnippet`, `twitter_title`, `twitter_image`, `twitter_description`, `twitter_image_id`, `twitter_image_source`, `open_graph_title`, `open_graph_description`, `open_graph_image`, `open_graph_image_id`, `open_graph_image_source`, `open_graph_image_meta`, `link_count`, `incoming_link_count`, `prominent_words_version`, `created_at`, `updated_at`, `blog_id`, `language`, `region`, `schema_page_type`, `schema_article_type`, `has_ancestors`, `estimated_reading_time_minutes`, `version`, `object_last_modified`, `object_published_at`) VALUES
(1, 'http://portfolio2/category/%d0%b1%d0%b5%d0%b7-%d1%80%d1%83%d0%b1%d1%80%d0%b8%d0%ba%d0%b8/', '89:c4fd524a2fe9f7bb7933361f887f5260', 1, 'term', 'category', NULL, NULL, NULL, NULL, 'Без рубрики', NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, 2, '2022-09-11 21:50:18', '2022-09-11 18:50:47', 1, NULL, NULL, NULL, NULL, 0, NULL, 2, NULL, NULL),
(2, 'http://portfolio2/category/projects/', '36:25d53cabc121066d4069a8b582bb22b9', 5, 'term', 'category', NULL, NULL, NULL, NULL, 'Проекты', NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, 2, '2022-09-11 21:50:18', '2022-09-12 17:25:21', 1, NULL, NULL, NULL, NULL, 0, NULL, 2, '2022-09-12 20:25:20', '2022-09-11 13:25:54'),
(3, 'http://portfolio2/category/interesting/', '39:6c357ec1a92258b62ca94d571ec85a3e', 6, 'term', 'category', NULL, NULL, NULL, NULL, 'Интересное', NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, 2, '2022-09-11 21:50:18', '2022-09-11 18:50:47', 1, NULL, NULL, NULL, NULL, 0, NULL, 2, NULL, NULL),
(4, 'http://portfolio2/author/admin/', '31:b0de1f5bd975b35c6e5530227145eb26', 1, 'user', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, NULL, NULL, NULL, NULL, 'https://1.gravatar.com/avatar/1fb7baa6f28bc76a6bf2b165cf7d9352?s=500&d=mm&r=g', NULL, NULL, 'gravatar-image', NULL, NULL, 'https://1.gravatar.com/avatar/1fb7baa6f28bc76a6bf2b165cf7d9352?s=500&d=mm&r=g', NULL, 'gravatar-image', NULL, NULL, NULL, NULL, '2022-09-11 21:50:21', '2022-09-12 17:25:21', 1, NULL, NULL, NULL, NULL, 0, NULL, 2, '2022-09-12 20:25:20', '2022-09-04 11:29:39'),
(5, 'http://portfolio2/?p=28', '23:8bf97b3d4e360f1a3b9fe52ad592c938', 28, 'post', 'post', 1, 0, NULL, NULL, 'Тестовый пост', 'trash', 0, 0, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, 0, NULL, NULL, NULL, NULL, 'http://portfolio2/wp-content/uploads/2022/09/no_image.jpg', NULL, '29', 'featured-image', NULL, NULL, 'http://portfolio2/wp-content/uploads/2022/09/no_image.jpg', '29', 'featured-image', '{\n    \"width\": 1200,\n    \"height\": 800,\n    \"filesize\": 45428,\n    \"url\": \"http://portfolio2/wp-content/uploads/2022/09/no_image.jpg\",\n    \"path\": \"C:\\\\OpenServer\\\\domains\\\\Portfolio2/wp-content/uploads/2022/09/no_image.jpg\",\n    \"size\": \"full\",\n    \"id\": 29,\n    \"alt\": \"\",\n    \"pixels\": 960000,\n    \"type\": \"image/jpeg\"\n}', NULL, NULL, NULL, '2022-09-11 21:50:21', '2022-09-11 18:50:21', 1, NULL, NULL, NULL, NULL, 0, NULL, 2, '2022-09-11 13:25:10', '2022-09-04 15:00:46'),
(6, 'http://portfolio2/wp-content/uploads/2022/09/no_image.jpg', '57:4550ab12c4f82c47a676b86e2a728033', 29, 'post', 'attachment', 1, 28, NULL, NULL, 'no_image', 'inherit', NULL, 0, 0, NULL, NULL, NULL, NULL, 0, 0, NULL, 0, NULL, NULL, NULL, NULL, 'http://portfolio2/wp-content/uploads/2022/09/no_image.jpg', NULL, '29', 'attachment-image', NULL, NULL, 'http://portfolio2/wp-content/uploads/2022/09/no_image.jpg', '29', 'attachment-image', '{\n    \"width\": 1200,\n    \"height\": 800,\n    \"filesize\": 45428,\n    \"url\": \"http://portfolio2/wp-content/uploads/2022/09/no_image.jpg\",\n    \"path\": \"C:\\\\OpenServer\\\\domains\\\\Portfolio2/wp-content/uploads/2022/09/no_image.jpg\",\n    \"size\": \"full\",\n    \"id\": 29,\n    \"alt\": \"\",\n    \"pixels\": 960000,\n    \"type\": \"image/jpeg\"\n}', NULL, NULL, NULL, '2022-09-11 21:50:21', '2022-09-11 18:50:21', 1, NULL, NULL, NULL, NULL, 0, NULL, 2, '2022-09-04 15:00:17', '2022-09-04 15:00:17'),
(7, 'http://portfolio2/wp-content/uploads/2022/09/hero-4.jpg', '55:138444389f8ad6bab2e97da6ba4dcfed', 32, 'post', 'attachment', 1, 28, NULL, NULL, 'hero-4', 'inherit', NULL, 0, 0, NULL, NULL, NULL, NULL, 0, 0, NULL, 0, NULL, NULL, NULL, NULL, 'http://portfolio2/wp-content/uploads/2022/09/hero-4.jpg', NULL, '32', 'attachment-image', NULL, NULL, 'http://portfolio2/wp-content/uploads/2022/09/hero-4.jpg', '32', 'attachment-image', '{\n    \"width\": 1920,\n    \"height\": 1280,\n    \"filesize\": 153769,\n    \"url\": \"http://portfolio2/wp-content/uploads/2022/09/hero-4.jpg\",\n    \"path\": \"C:\\\\OpenServer\\\\domains\\\\Portfolio2/wp-content/uploads/2022/09/hero-4.jpg\",\n    \"size\": \"full\",\n    \"id\": 32,\n    \"alt\": \"\",\n    \"pixels\": 2457600,\n    \"type\": \"image/jpeg\"\n}', NULL, NULL, NULL, '2022-09-11 21:50:21', '2022-09-11 18:50:21', 1, NULL, NULL, NULL, NULL, 0, NULL, 2, '2022-09-05 08:35:18', '2022-09-05 08:35:18'),
(8, 'http://portfolio2/wp-content/uploads/2022/09/skyline-scaled.jpg', '63:b276ab266a2155c86f09bcf971a3f73c', 35, 'post', 'attachment', 1, 28, NULL, NULL, 'skyline', 'inherit', NULL, 0, 0, NULL, NULL, NULL, NULL, 0, 0, NULL, 0, NULL, NULL, NULL, NULL, 'http://portfolio2/wp-content/uploads/2022/09/skyline-scaled.jpg', NULL, '35', 'attachment-image', NULL, NULL, 'http://portfolio2/wp-content/uploads/2022/09/skyline-scaled.jpg', '35', 'attachment-image', '{\n    \"width\": 2560,\n    \"height\": 1706,\n    \"filesize\": 442422,\n    \"url\": \"http://portfolio2/wp-content/uploads/2022/09/skyline-scaled.jpg\",\n    \"path\": \"C:\\\\OpenServer\\\\domains\\\\Portfolio2/wp-content/uploads/2022/09/skyline-scaled.jpg\",\n    \"size\": \"full\",\n    \"id\": 35,\n    \"alt\": \"\",\n    \"pixels\": 4367360,\n    \"type\": \"image/jpeg\"\n}', NULL, NULL, NULL, '2022-09-11 21:50:21', '2022-09-11 18:50:21', 1, NULL, NULL, NULL, NULL, 0, NULL, 2, '2022-09-05 08:44:18', '2022-09-05 08:44:18'),
(9, 'http://portfolio2/?p=65', '23:10316dbf4fd1ec923befd24407d1e4cc', 65, 'post', 'post', 1, 0, NULL, NULL, 'Без комментариев', 'trash', 0, 0, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, 0, NULL, NULL, NULL, NULL, 'http://portfolio2/wp-content/uploads/2022/09/34-33.jpg', NULL, '67', 'featured-image', NULL, NULL, 'http://portfolio2/wp-content/uploads/2022/09/34-33.jpg', '67', 'featured-image', '{\n    \"width\": 1200,\n    \"height\": 800,\n    \"filesize\": 135786,\n    \"url\": \"http://portfolio2/wp-content/uploads/2022/09/34-33.jpg\",\n    \"path\": \"C:\\\\OpenServer\\\\domains\\\\Portfolio2/wp-content/uploads/2022/09/34-33.jpg\",\n    \"size\": \"full\",\n    \"id\": 67,\n    \"alt\": \"\",\n    \"pixels\": 960000,\n    \"type\": \"image/jpeg\"\n}', 0, NULL, 2, '2022-09-11 21:50:21', '2022-09-12 16:56:46', 1, NULL, NULL, NULL, NULL, 0, NULL, 2, '2022-09-12 19:56:45', '2022-09-11 13:25:54'),
(10, 'http://portfolio2/wp-content/uploads/2022/09/34-33.jpg', '54:97c434f15a67c74e2bae6446cc6f0329', 67, 'post', 'attachment', 1, 65, NULL, NULL, '34-33', 'inherit', NULL, 0, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, 0, NULL, NULL, NULL, NULL, 'http://portfolio2/wp-content/uploads/2022/09/34-33.jpg', NULL, '67', 'attachment-image', NULL, NULL, 'http://portfolio2/wp-content/uploads/2022/09/34-33.jpg', '67', 'attachment-image', '{\n    \"width\": 1200,\n    \"height\": 800,\n    \"filesize\": 135786,\n    \"url\": \"http://portfolio2/wp-content/uploads/2022/09/34-33.jpg\",\n    \"path\": \"C:\\\\OpenServer\\\\domains\\\\Portfolio2/wp-content/uploads/2022/09/34-33.jpg\",\n    \"size\": \"full\",\n    \"id\": 67,\n    \"alt\": \"\",\n    \"pixels\": 960000,\n    \"type\": \"image/jpeg\"\n}', NULL, NULL, NULL, '2022-09-11 21:50:21', '2022-09-11 18:50:21', 1, NULL, NULL, NULL, NULL, 0, NULL, 2, '2022-09-11 13:26:30', '2022-09-11 13:26:30'),
(11, 'http://portfolio2/wp-content/uploads/2022/09/logo.png', '53:8d98b4d2bd2b496ff567d37c686bb0ea', 74, 'post', 'attachment', 1, 0, NULL, NULL, 'logo', 'inherit', 0, 0, 0, NULL, NULL, NULL, NULL, 0, 0, NULL, 0, NULL, NULL, NULL, NULL, 'http://portfolio2/wp-content/uploads/2022/09/logo.png', NULL, '74', 'attachment-image', NULL, NULL, 'http://portfolio2/wp-content/uploads/2022/09/logo.png', '74', 'attachment-image', '{\n    \"width\": 512,\n    \"height\": 512,\n    \"filesize\": 57051,\n    \"url\": \"http://portfolio2/wp-content/uploads/2022/09/logo.png\",\n    \"path\": \"C:\\\\OpenServer\\\\domains\\\\Portfolio2/wp-content/uploads/2022/09/logo.png\",\n    \"size\": \"full\",\n    \"id\": 74,\n    \"alt\": \"\",\n    \"pixels\": 262144,\n    \"type\": \"image/png\"\n}', NULL, NULL, NULL, '2022-09-11 21:50:21', '2022-09-11 18:50:21', 1, NULL, NULL, NULL, NULL, 0, NULL, 2, '2022-09-11 21:43:46', '2022-09-11 21:43:46'),
(12, 'http://portfolio2/wp-content/uploads/2022/09/cropped-logo.png', '61:dd0e654560331d4772d30eb4d0077a77', 75, 'post', 'attachment', 1, 0, NULL, NULL, 'cropped-logo.png', 'inherit', 0, 0, 0, NULL, NULL, NULL, NULL, 0, 0, NULL, 0, NULL, NULL, NULL, NULL, 'http://portfolio2/wp-content/uploads/2022/09/cropped-logo.png', NULL, '75', 'attachment-image', NULL, NULL, 'http://portfolio2/wp-content/uploads/2022/09/cropped-logo.png', '75', 'attachment-image', '{\n    \"width\": 512,\n    \"height\": 512,\n    \"filesize\": 54370,\n    \"url\": \"http://portfolio2/wp-content/uploads/2022/09/cropped-logo.png\",\n    \"path\": \"C:\\\\OpenServer\\\\domains\\\\Portfolio2/wp-content/uploads/2022/09/cropped-logo.png\",\n    \"size\": \"full\",\n    \"id\": 75,\n    \"alt\": \"\",\n    \"pixels\": 262144,\n    \"type\": \"image/png\"\n}', NULL, NULL, NULL, '2022-09-11 21:50:21', '2022-09-11 18:50:21', 1, NULL, NULL, NULL, NULL, 0, NULL, 2, '2022-09-11 21:43:49', '2022-09-11 21:43:49'),
(13, 'http://portfolio2/glavnoe/', '26:8a1ab3ebabf43c521eb29bba7c6d835b', 13, 'post', 'page', 1, 0, NULL, NULL, 'Главная', 'publish', NULL, 0, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, 2, '2022-09-11 21:50:21', '2022-09-11 19:45:20', 1, NULL, NULL, NULL, NULL, 0, 0, 2, '2022-09-11 22:45:18', '2022-09-04 11:35:26'),
(14, 'http://portfolio2/interesnoe/', '29:4dedf5a0ae3d4cff3c64fd394e05813d', 15, 'post', 'page', 1, 0, NULL, NULL, 'Интересное', 'publish', NULL, 0, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, 2, '2022-09-11 21:50:21', '2022-09-11 18:50:47', 1, NULL, NULL, NULL, NULL, 0, NULL, 2, '2022-09-04 11:36:28', '2022-09-04 11:36:28'),
(15, 'http://portfolio2/kontakty/', '27:807d083b91b636ec39dc9f6a69299f40', 18, 'post', 'page', 1, 0, NULL, NULL, 'Контакты', 'publish', NULL, 0, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, 2, '2022-09-11 21:50:21', '2022-09-11 18:50:47', 1, NULL, NULL, NULL, NULL, 0, NULL, 2, '2022-09-04 11:37:26', '2022-09-04 11:37:26'),
(16, 'http://portfolio2/?page_id=2', '28:85d544e2a54c0c0f08abb5fedb808eb3', 2, 'post', 'page', 1, 0, NULL, NULL, 'Пример страницы', 'trash', 0, 0, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2022-09-11 21:50:21', '2022-09-11 18:50:21', 1, NULL, NULL, NULL, NULL, 0, NULL, 2, '2022-09-04 11:29:27', '2022-09-04 08:13:36'),
(17, 'http://portfolio2/?page_id=3', '28:09c588cbde9d270c9ebe05cbad227652', 3, 'post', 'page', 1, 0, NULL, NULL, 'Политика конфиденциальности', 'trash', 0, 0, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2022-09-11 21:50:21', '2022-09-11 18:50:21', 1, NULL, NULL, NULL, NULL, 0, NULL, 2, '2022-09-04 11:29:27', '2022-09-04 08:13:36'),
(18, 'http://portfolio2/?page_id=7', '28:0c77a5cb1879edf3bbd073d6cc3ced6e', 7, 'post', 'page', 1, 0, NULL, NULL, 'Главная', 'trash', 0, 0, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2022-09-11 21:50:21', '2022-09-11 18:50:21', 1, NULL, NULL, NULL, NULL, 0, NULL, 2, '2022-09-04 11:32:47', '2022-09-04 11:30:05'),
(19, 'http://portfolio2/?page_id=10', '29:662481011c60d6dce76b97b7c8123d82', 10, 'post', 'page', 1, 0, NULL, NULL, 'Interesting', 'trash', 0, 0, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2022-09-11 21:50:21', '2022-09-11 18:50:21', 1, NULL, NULL, NULL, NULL, 0, NULL, 2, '2022-09-04 11:32:57', '2022-09-04 11:31:06'),
(20, 'http://portfolio2/?p=68', '23:9913fa63af4e37951ad73680a739f556', 68, 'post', 'post', 1, 0, NULL, NULL, 'С комментариями', 'trash', 0, 0, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, 2, '2022-09-11 21:50:21', '2022-09-12 16:56:45', 1, NULL, NULL, NULL, NULL, 0, NULL, 2, '2022-09-12 19:56:45', '2022-09-11 13:52:31'),
(21, 'http://portfolio2/?p=1', '22:711b1a54e27ea5e954ee4f2737bd9bc3', 1, 'post', 'post', 1, 0, NULL, NULL, 'Привет, мир!', 'trash', 0, 0, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2022-09-11 21:50:21', '2022-09-11 18:50:21', 1, NULL, NULL, NULL, NULL, 0, NULL, 2, '2022-09-11 13:25:10', '2022-09-04 08:13:36'),
(22, 'http://portfolio2/?p=38', '23:49398d9683487f1166a07e68767a54a1', 38, 'post', 'post', 1, 0, NULL, NULL, 'Тестовый пост 2 из проектов', 'trash', 0, 0, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, 0, NULL, NULL, NULL, NULL, 'http://portfolio2/wp-content/uploads/2022/09/skyline-scaled.jpg', NULL, '35', 'featured-image', NULL, NULL, 'http://portfolio2/wp-content/uploads/2022/09/skyline-scaled.jpg', '35', 'featured-image', '{\n    \"width\": 2560,\n    \"height\": 1706,\n    \"filesize\": 442422,\n    \"url\": \"http://portfolio2/wp-content/uploads/2022/09/skyline-scaled.jpg\",\n    \"path\": \"C:\\\\OpenServer\\\\domains\\\\Portfolio2/wp-content/uploads/2022/09/skyline-scaled.jpg\",\n    \"size\": \"full\",\n    \"id\": 35,\n    \"alt\": \"\",\n    \"pixels\": 4367360,\n    \"type\": \"image/jpeg\"\n}', NULL, NULL, NULL, '2022-09-11 21:50:21', '2022-09-11 18:50:21', 1, NULL, NULL, NULL, NULL, 0, NULL, 2, '2022-09-11 13:25:10', '2022-09-05 16:38:36'),
(23, 'http://portfolio2/?p=40', '23:d525982e1dc178cec507c8663aefb737', 40, 'post', 'post', 1, 0, NULL, NULL, 'Запись из интересного', 'trash', 0, 0, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2022-09-11 21:50:21', '2022-09-11 18:50:21', 1, NULL, NULL, NULL, NULL, 0, NULL, 2, '2022-09-11 13:25:10', '2022-09-05 16:39:07'),
(24, 'http://portfolio2/?p=43', '23:f9b26ce998c8698b8ebf05b29f197983', 43, 'post', 'post', 1, 0, NULL, NULL, 'тестовая запись', 'trash', 0, 0, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2022-09-11 21:50:21', '2022-09-11 18:50:21', 1, NULL, NULL, NULL, NULL, 0, NULL, 2, '2022-09-11 13:25:10', '2022-09-06 12:52:21'),
(25, 'http://portfolio2/?p=50', '23:0d6cb19b844454a5eaaab2f0d3962449', 50, 'post', 'post', 1, 0, NULL, NULL, 'Ленивая загрузка', 'trash', 0, 0, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2022-09-11 21:50:21', '2022-09-11 18:50:21', 1, NULL, NULL, NULL, NULL, 0, NULL, 2, '2022-09-11 13:25:10', '2022-09-09 17:56:46'),
(26, 'http://portfolio2/?p=52', '23:4d8ec45e1469ea48a1fec82536cbbbfa', 52, 'post', 'post', 1, 0, NULL, NULL, 'ленивая загрузка 2', 'trash', 0, 0, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2022-09-11 21:50:21', '2022-09-11 18:50:21', 1, NULL, NULL, NULL, NULL, 0, NULL, 2, '2022-09-11 13:25:10', '2022-09-09 17:57:33'),
(27, 'http://portfolio2/?p=54', '23:9328c7e7dd0ed93ef7f781ee8b431e14', 54, 'post', 'post', 1, 0, NULL, NULL, 'ленивая загрузка 3', 'trash', 0, 0, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2022-09-11 21:50:21', '2022-09-11 18:50:21', 1, NULL, NULL, NULL, NULL, 0, NULL, 2, '2022-09-11 13:25:10', '2022-09-09 17:58:10'),
(28, 'http://portfolio2/?p=56', '23:31a2a84346c0fe0a939053c8ca60bfc4', 56, 'post', 'post', 1, 0, NULL, NULL, 'ленивая загрузка 4', 'trash', 0, 0, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2022-09-11 21:50:21', '2022-09-11 18:50:21', 1, NULL, NULL, NULL, NULL, 0, NULL, 2, '2022-09-11 13:25:10', '2022-09-09 17:58:43'),
(29, 'http://portfolio2/?p=58', '23:696556dea023edb83b5854b8371744c1', 58, 'post', 'post', 1, 0, NULL, NULL, 'ленивая загрузка 5', 'trash', 0, 0, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2022-09-11 21:50:21', '2022-09-11 18:50:21', 1, NULL, NULL, NULL, NULL, 0, NULL, 2, '2022-09-11 13:25:10', '2022-09-09 17:59:21'),
(30, 'http://portfolio2/?p=61', '23:fcf4ef40f001ffaf0ad3e842d5dce3b0', 61, 'post', 'post', 1, 0, NULL, NULL, 'На глвавной', 'trash', 0, 0, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2022-09-11 21:50:23', '2022-09-11 18:50:23', 1, NULL, NULL, NULL, NULL, 0, NULL, 2, '2022-09-11 13:25:10', '2022-09-11 13:00:59'),
(31, 'http://portfolio2/?p=63', '23:12ce2c4f98159fb95d0f4813eb19809b', 63, 'post', 'post', 1, 0, NULL, NULL, 'sfsfsfs', 'trash', 0, 0, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2022-09-11 21:50:23', '2022-09-11 18:50:23', 1, NULL, NULL, NULL, NULL, 0, NULL, 2, '2022-09-11 13:25:10', '2022-09-11 13:09:03'),
(32, NULL, NULL, NULL, 'system-page', '404', NULL, NULL, 'Страница не найдена %%sep%% %%sitename%%', NULL, 'Ошибка 404: страница не найдена', NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, 0, 1, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2022-09-11 21:50:28', '2022-09-11 18:50:28', 1, NULL, NULL, NULL, NULL, 0, NULL, 1, NULL, NULL),
(33, NULL, NULL, NULL, 'system-page', 'search-result', NULL, NULL, 'Вы искали %%searchphrase%% %%page%% %%sep%% %%sitename%%', NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, 0, 1, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2022-09-11 21:50:28', '2022-09-11 18:50:28', 1, NULL, NULL, NULL, NULL, 0, NULL, 1, NULL, NULL),
(34, NULL, NULL, NULL, 'date-archive', NULL, NULL, NULL, '%%date%% %%page%% %%sep%% %%sitename%%', '', NULL, NULL, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, 0, 1, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2022-09-11 21:50:28', '2022-09-11 18:50:28', 1, NULL, NULL, NULL, NULL, 0, NULL, 1, NULL, NULL),
(35, 'http://portfolio2/', '18:0606a83497a7e68f69b64609897e4c59', NULL, 'home-page', NULL, NULL, NULL, '%%sitename%% %%page%% %%sep%% %%sitedesc%%', 'Ещё один сайт на WordPress', 'Главная страница', NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, '%%sitename%%', '', '', '0', NULL, NULL, NULL, NULL, NULL, '2022-09-11 21:50:28', '2022-09-12 17:25:21', 1, NULL, NULL, NULL, NULL, 0, NULL, 2, '2022-09-12 20:25:20', '2022-09-11 13:25:54'),
(36, 'http://portfolio2/?post_type=acf-field-group&p=79', '49:58c64a26c0c38f4b937c42f697685100', 79, 'post', 'acf-field-group', 1, 0, NULL, NULL, 'Шапка сайта и footer', 'publish', NULL, 0, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, '2022-09-11 22:41:51', '2022-09-12 14:34:49', 1, NULL, NULL, NULL, NULL, 0, NULL, 2, '2022-09-12 17:34:49', '2022-09-11 22:41:51'),
(37, 'http://portfolio2/?post_type=acf-field&p=80', '43:76763eedbdd76ed496a925dc04c3add5', 80, 'post', 'acf-field', 1, 79, NULL, NULL, 'Текст в футере', 'publish', NULL, 0, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, '2022-09-11 22:41:51', '2022-09-12 14:34:49', 1, NULL, NULL, NULL, NULL, 1, NULL, 2, '2022-09-12 17:34:48', '2022-09-11 22:41:51'),
(38, 'http://portfolio2/?post_type=acf-field&p=81', '43:c26d89b197846b804e1465f378596ef5', 81, 'post', 'acf-field', 1, 79, NULL, NULL, 'Галерея картинок в шапке (затухающий слайдер)', 'publish', NULL, 0, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, '2022-09-11 22:41:51', '2022-09-11 19:41:52', 1, NULL, NULL, NULL, NULL, 0, NULL, 2, '2022-09-11 22:41:51', '2022-09-11 22:41:51'),
(39, 'http://portfolio2/?post_type=acf-field&p=82', '43:36e0504a767245d115a5a79fc8be10b2', 82, 'post', 'acf-field', 1, 79, NULL, NULL, 'Самый большой текст в шапке', 'publish', NULL, 0, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, '2022-09-11 22:41:52', '2022-09-11 19:41:52', 1, NULL, NULL, NULL, NULL, 0, NULL, 2, '2022-09-11 22:41:52', '2022-09-11 22:41:52'),
(40, 'http://portfolio2/?post_type=acf-field&p=83', '43:fbb284f6fc1b7e7a8beee50b31085313', 83, 'post', 'acf-field', 1, 79, NULL, NULL, 'Текст под самым большим', 'publish', NULL, 0, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, '2022-09-11 22:41:52', '2022-09-11 19:41:52', 1, NULL, NULL, NULL, NULL, 0, NULL, 2, '2022-09-11 22:41:52', '2022-09-11 22:41:52'),
(41, 'http://portfolio2/wp-content/uploads/2022/09/hero-1.jpg', '55:6cb5a51845abb3af03487e3f6027c664', 84, 'post', 'attachment', 1, 13, NULL, NULL, 'hero-1', 'inherit', NULL, 0, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, 0, NULL, NULL, NULL, NULL, 'http://portfolio2/wp-content/uploads/2022/09/hero-1.jpg', NULL, '84', 'attachment-image', NULL, NULL, NULL, '84', 'attachment-image', NULL, NULL, NULL, NULL, '2022-09-11 22:44:21', '2022-09-11 19:44:21', 1, NULL, NULL, NULL, NULL, 1, NULL, 2, '2022-09-11 22:44:21', '2022-09-11 22:44:21'),
(42, 'http://portfolio2/wp-content/uploads/2022/09/hero-2.jpg', '55:89605e412b4af98b261a596633f3ad6f', 85, 'post', 'attachment', 1, 13, NULL, NULL, 'hero-2', 'inherit', NULL, 0, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, 0, NULL, NULL, NULL, NULL, 'http://portfolio2/wp-content/uploads/2022/09/hero-2.jpg', NULL, '85', 'attachment-image', NULL, NULL, NULL, '85', 'attachment-image', NULL, NULL, NULL, NULL, '2022-09-11 22:44:24', '2022-09-11 19:44:24', 1, NULL, NULL, NULL, NULL, 1, NULL, 2, '2022-09-11 22:44:24', '2022-09-11 22:44:24'),
(43, 'http://portfolio2/wp-content/uploads/2022/09/hero-3.jpg', '55:30dc71722f16171ad7ba1ed1cfa7670b', 86, 'post', 'attachment', 1, 13, NULL, NULL, 'hero-3', 'inherit', NULL, 0, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, 0, NULL, NULL, NULL, NULL, 'http://portfolio2/wp-content/uploads/2022/09/hero-3.jpg', NULL, '86', 'attachment-image', NULL, NULL, NULL, '86', 'attachment-image', NULL, NULL, NULL, NULL, '2022-09-11 22:44:28', '2022-09-11 19:44:28', 1, NULL, NULL, NULL, NULL, 1, NULL, 2, '2022-09-11 22:44:28', '2022-09-11 22:44:28'),
(44, 'http://portfolio2/?p=91', '23:370899fb7f9e7fb88388c3cf7f9305a7', 91, 'post', 'post', 1, 0, NULL, NULL, 'Тестовая запись для проверки формы такие длинные не делать', 'trash', 0, 0, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, '2022-09-12 18:21:46', '2022-09-12 16:56:45', 1, NULL, NULL, NULL, NULL, 0, 0, 2, '2022-09-12 19:56:43', '2022-09-12 18:21:46'),
(45, 'http://portfolio2/2022/09/12/bez-kommentariev/', '46:a4abfc666086e3ad2949487f7251eff3', 94, 'post', 'post', 1, 0, NULL, NULL, 'Без комментариев', 'publish', NULL, 0, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, 0, NULL, NULL, NULL, NULL, 'http://portfolio2/wp-content/uploads/2022/09/34-33.jpg', NULL, '67', 'featured-image', NULL, NULL, 'http://portfolio2/wp-content/uploads/2022/09/34-33.jpg', '67', 'featured-image', '{\n    \"width\": 1200,\n    \"height\": 800,\n    \"filesize\": 135786,\n    \"url\": \"http://portfolio2/wp-content/uploads/2022/09/34-33.jpg\",\n    \"path\": \"C:\\\\OpenServer\\\\domains\\\\Portfolio2/wp-content/uploads/2022/09/34-33.jpg\",\n    \"size\": \"full\",\n    \"id\": 67,\n    \"alt\": \"\",\n    \"pixels\": 960000,\n    \"type\": \"image/jpeg\"\n}', 0, NULL, NULL, '2022-09-12 19:57:58', '2022-09-12 17:23:37', 1, NULL, NULL, NULL, NULL, 0, 0, 2, '2022-09-12 20:23:36', '2022-09-12 19:57:57'),
(46, 'http://portfolio2/2022/09/12/test-dliny-zapisi-takuyu-luchshe-ne-delat/', '71:27995ca0ef9d125c4cfd5092de6570cb', 97, 'post', 'post', 1, 0, NULL, NULL, 'Тест длины записи, такую лучше не делать', 'publish', NULL, 0, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, '2022-09-12 20:25:16', '2022-09-12 17:25:21', 1, NULL, NULL, NULL, NULL, 0, 0, 2, '2022-09-12 20:25:20', '2022-09-12 20:25:16');

-- --------------------------------------------------------

--
-- Структура таблицы `eltech_yoast_indexable_hierarchy`
--

CREATE TABLE `eltech_yoast_indexable_hierarchy` (
  `indexable_id` int UNSIGNED NOT NULL,
  `ancestor_id` int UNSIGNED NOT NULL,
  `depth` int UNSIGNED DEFAULT NULL,
  `blog_id` bigint NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Дамп данных таблицы `eltech_yoast_indexable_hierarchy`
--

INSERT INTO `eltech_yoast_indexable_hierarchy` (`indexable_id`, `ancestor_id`, `depth`, `blog_id`) VALUES
(4, 0, 0, 1),
(9, 0, 0, 1),
(10, 9, 1, 1),
(13, 0, 0, 1),
(14, 0, 0, 1),
(15, 0, 0, 1),
(20, 0, 0, 1),
(35, 0, 0, 1),
(36, 0, 0, 1),
(37, 36, 1, 1),
(44, 0, 0, 1),
(45, 0, 0, 1),
(46, 0, 0, 1);

-- --------------------------------------------------------

--
-- Структура таблицы `eltech_yoast_migrations`
--

CREATE TABLE `eltech_yoast_migrations` (
  `id` int UNSIGNED NOT NULL,
  `version` varchar(191) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Дамп данных таблицы `eltech_yoast_migrations`
--

INSERT INTO `eltech_yoast_migrations` (`id`, `version`) VALUES
(1, '20171228151840'),
(2, '20171228151841'),
(3, '20190529075038'),
(24, '20190715101200'),
(4, '20191011111109'),
(5, '20200408101900'),
(6, '20200420073606'),
(7, '20200428123747'),
(8, '20200428194858'),
(9, '20200429105310'),
(10, '20200430075614'),
(11, '20200430150130'),
(12, '20200507054848'),
(13, '20200513133401'),
(14, '20200609154515'),
(15, '20200616130143'),
(16, '20200617122511'),
(17, '20200702141921'),
(18, '20200728095334'),
(19, '20201202144329'),
(20, '20201216124002'),
(21, '20201216141134'),
(22, '20210817092415'),
(25, '20210827093024'),
(23, '20211020091404');

-- --------------------------------------------------------

--
-- Структура таблицы `eltech_yoast_primary_term`
--

CREATE TABLE `eltech_yoast_primary_term` (
  `id` int UNSIGNED NOT NULL,
  `post_id` bigint DEFAULT NULL,
  `term_id` bigint DEFAULT NULL,
  `taxonomy` varchar(32) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `blog_id` bigint NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Дамп данных таблицы `eltech_yoast_primary_term`
--

INSERT INTO `eltech_yoast_primary_term` (`id`, `post_id`, `term_id`, `taxonomy`, `created_at`, `updated_at`, `blog_id`) VALUES
(1, 91, 5, 'category', '2022-09-12 18:21:51', '2022-09-12 16:56:45', 1),
(2, 94, 5, 'category', '2022-09-12 19:58:03', '2022-09-12 17:23:37', 1),
(3, 97, 5, 'category', '2022-09-12 20:25:21', '2022-09-12 17:25:21', 1);

-- --------------------------------------------------------

--
-- Структура таблицы `eltech_yoast_prominent_words`
--

CREATE TABLE `eltech_yoast_prominent_words` (
  `id` int UNSIGNED NOT NULL,
  `stem` varchar(191) DEFAULT NULL,
  `indexable_id` int UNSIGNED DEFAULT NULL,
  `weight` float DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

-- --------------------------------------------------------

--
-- Структура таблицы `eltech_yoast_seo_links`
--

CREATE TABLE `eltech_yoast_seo_links` (
  `id` bigint UNSIGNED NOT NULL,
  `url` varchar(255) DEFAULT NULL,
  `post_id` bigint UNSIGNED DEFAULT NULL,
  `target_post_id` bigint UNSIGNED DEFAULT NULL,
  `type` varchar(8) DEFAULT NULL,
  `indexable_id` int UNSIGNED DEFAULT NULL,
  `target_indexable_id` int UNSIGNED DEFAULT NULL,
  `height` int UNSIGNED DEFAULT NULL,
  `width` int UNSIGNED DEFAULT NULL,
  `size` int UNSIGNED DEFAULT NULL,
  `language` varchar(32) DEFAULT NULL,
  `region` varchar(32) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

--
-- Индексы сохранённых таблиц
--

--
-- Индексы таблицы `eltech_anycomment_email_queue`
--
ALTER TABLE `eltech_anycomment_email_queue`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `post_ID` (`post_ID`),
  ADD KEY `comment_ID` (`comment_ID`);

--
-- Индексы таблицы `eltech_anycomment_likes`
--
ALTER TABLE `eltech_anycomment_likes`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `user_ID` (`user_ID`),
  ADD KEY `post_ID` (`post_ID`);

--
-- Индексы таблицы `eltech_anycomment_rating`
--
ALTER TABLE `eltech_anycomment_rating`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `post_ID` (`post_ID`),
  ADD KEY `user_ID` (`user_ID`);

--
-- Индексы таблицы `eltech_anycomment_subscriptions`
--
ALTER TABLE `eltech_anycomment_subscriptions`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `post_ID` (`post_ID`),
  ADD KEY `user_ID` (`user_ID`);

--
-- Индексы таблицы `eltech_anycomment_uploaded_files`
--
ALTER TABLE `eltech_anycomment_uploaded_files`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `post_ID` (`post_ID`),
  ADD KEY `user_ID` (`user_ID`),
  ADD KEY `ip_created_at` (`ip`,`created_at`);

--
-- Индексы таблицы `eltech_commentmeta`
--
ALTER TABLE `eltech_commentmeta`
  ADD PRIMARY KEY (`meta_id`),
  ADD KEY `comment_id` (`comment_id`),
  ADD KEY `meta_key` (`meta_key`(191));

--
-- Индексы таблицы `eltech_comments`
--
ALTER TABLE `eltech_comments`
  ADD PRIMARY KEY (`comment_ID`),
  ADD KEY `comment_post_ID` (`comment_post_ID`),
  ADD KEY `comment_approved_date_gmt` (`comment_approved`,`comment_date_gmt`),
  ADD KEY `comment_date_gmt` (`comment_date_gmt`),
  ADD KEY `comment_parent` (`comment_parent`),
  ADD KEY `comment_author_email` (`comment_author_email`(10));

--
-- Индексы таблицы `eltech_links`
--
ALTER TABLE `eltech_links`
  ADD PRIMARY KEY (`link_id`),
  ADD KEY `link_visible` (`link_visible`);

--
-- Индексы таблицы `eltech_options`
--
ALTER TABLE `eltech_options`
  ADD PRIMARY KEY (`option_id`),
  ADD UNIQUE KEY `option_name` (`option_name`),
  ADD KEY `autoload` (`autoload`);

--
-- Индексы таблицы `eltech_postmeta`
--
ALTER TABLE `eltech_postmeta`
  ADD PRIMARY KEY (`meta_id`),
  ADD KEY `post_id` (`post_id`),
  ADD KEY `meta_key` (`meta_key`(191));

--
-- Индексы таблицы `eltech_posts`
--
ALTER TABLE `eltech_posts`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `post_name` (`post_name`(191)),
  ADD KEY `type_status_date` (`post_type`,`post_status`,`post_date`,`ID`),
  ADD KEY `post_parent` (`post_parent`),
  ADD KEY `post_author` (`post_author`);

--
-- Индексы таблицы `eltech_termmeta`
--
ALTER TABLE `eltech_termmeta`
  ADD PRIMARY KEY (`meta_id`),
  ADD KEY `term_id` (`term_id`),
  ADD KEY `meta_key` (`meta_key`(191));

--
-- Индексы таблицы `eltech_terms`
--
ALTER TABLE `eltech_terms`
  ADD PRIMARY KEY (`term_id`),
  ADD KEY `slug` (`slug`(191)),
  ADD KEY `name` (`name`(191));

--
-- Индексы таблицы `eltech_term_relationships`
--
ALTER TABLE `eltech_term_relationships`
  ADD PRIMARY KEY (`object_id`,`term_taxonomy_id`),
  ADD KEY `term_taxonomy_id` (`term_taxonomy_id`);

--
-- Индексы таблицы `eltech_term_taxonomy`
--
ALTER TABLE `eltech_term_taxonomy`
  ADD PRIMARY KEY (`term_taxonomy_id`),
  ADD UNIQUE KEY `term_id_taxonomy` (`term_id`,`taxonomy`),
  ADD KEY `taxonomy` (`taxonomy`);

--
-- Индексы таблицы `eltech_usermeta`
--
ALTER TABLE `eltech_usermeta`
  ADD PRIMARY KEY (`umeta_id`),
  ADD KEY `user_id` (`user_id`),
  ADD KEY `meta_key` (`meta_key`(191));

--
-- Индексы таблицы `eltech_users`
--
ALTER TABLE `eltech_users`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `user_login_key` (`user_login`),
  ADD KEY `user_nicename` (`user_nicename`),
  ADD KEY `user_email` (`user_email`);

--
-- Индексы таблицы `eltech_yoast_indexable`
--
ALTER TABLE `eltech_yoast_indexable`
  ADD PRIMARY KEY (`id`),
  ADD KEY `object_type_and_sub_type` (`object_type`,`object_sub_type`),
  ADD KEY `object_id_and_type` (`object_id`,`object_type`),
  ADD KEY `permalink_hash_and_object_type` (`permalink_hash`,`object_type`),
  ADD KEY `subpages` (`post_parent`,`object_type`,`post_status`,`object_id`),
  ADD KEY `prominent_words` (`prominent_words_version`,`object_type`,`object_sub_type`,`post_status`),
  ADD KEY `published_sitemap_index` (`object_published_at`,`is_robots_noindex`,`object_type`,`object_sub_type`);

--
-- Индексы таблицы `eltech_yoast_indexable_hierarchy`
--
ALTER TABLE `eltech_yoast_indexable_hierarchy`
  ADD PRIMARY KEY (`indexable_id`,`ancestor_id`),
  ADD KEY `indexable_id` (`indexable_id`),
  ADD KEY `ancestor_id` (`ancestor_id`),
  ADD KEY `depth` (`depth`);

--
-- Индексы таблицы `eltech_yoast_migrations`
--
ALTER TABLE `eltech_yoast_migrations`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `ElTech_yoast_migrations_version` (`version`);

--
-- Индексы таблицы `eltech_yoast_primary_term`
--
ALTER TABLE `eltech_yoast_primary_term`
  ADD PRIMARY KEY (`id`),
  ADD KEY `post_taxonomy` (`post_id`,`taxonomy`),
  ADD KEY `post_term` (`post_id`,`term_id`);

--
-- Индексы таблицы `eltech_yoast_prominent_words`
--
ALTER TABLE `eltech_yoast_prominent_words`
  ADD PRIMARY KEY (`id`),
  ADD KEY `stem` (`stem`),
  ADD KEY `indexable_id` (`indexable_id`),
  ADD KEY `indexable_id_and_stem` (`indexable_id`,`stem`);

--
-- Индексы таблицы `eltech_yoast_seo_links`
--
ALTER TABLE `eltech_yoast_seo_links`
  ADD PRIMARY KEY (`id`),
  ADD KEY `link_direction` (`post_id`,`type`),
  ADD KEY `indexable_link_direction` (`indexable_id`,`type`);

--
-- AUTO_INCREMENT для сохранённых таблиц
--

--
-- AUTO_INCREMENT для таблицы `eltech_anycomment_email_queue`
--
ALTER TABLE `eltech_anycomment_email_queue`
  MODIFY `ID` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `eltech_anycomment_likes`
--
ALTER TABLE `eltech_anycomment_likes`
  MODIFY `ID` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `eltech_anycomment_rating`
--
ALTER TABLE `eltech_anycomment_rating`
  MODIFY `ID` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `eltech_anycomment_subscriptions`
--
ALTER TABLE `eltech_anycomment_subscriptions`
  MODIFY `ID` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `eltech_anycomment_uploaded_files`
--
ALTER TABLE `eltech_anycomment_uploaded_files`
  MODIFY `ID` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `eltech_commentmeta`
--
ALTER TABLE `eltech_commentmeta`
  MODIFY `meta_id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=43;

--
-- AUTO_INCREMENT для таблицы `eltech_comments`
--
ALTER TABLE `eltech_comments`
  MODIFY `comment_ID` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=35;

--
-- AUTO_INCREMENT для таблицы `eltech_links`
--
ALTER TABLE `eltech_links`
  MODIFY `link_id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `eltech_options`
--
ALTER TABLE `eltech_options`
  MODIFY `option_id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1488;

--
-- AUTO_INCREMENT для таблицы `eltech_postmeta`
--
ALTER TABLE `eltech_postmeta`
  MODIFY `meta_id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=373;

--
-- AUTO_INCREMENT для таблицы `eltech_posts`
--
ALTER TABLE `eltech_posts`
  MODIFY `ID` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=100;

--
-- AUTO_INCREMENT для таблицы `eltech_termmeta`
--
ALTER TABLE `eltech_termmeta`
  MODIFY `meta_id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `eltech_terms`
--
ALTER TABLE `eltech_terms`
  MODIFY `term_id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT для таблицы `eltech_term_taxonomy`
--
ALTER TABLE `eltech_term_taxonomy`
  MODIFY `term_taxonomy_id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT для таблицы `eltech_usermeta`
--
ALTER TABLE `eltech_usermeta`
  MODIFY `umeta_id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=50;

--
-- AUTO_INCREMENT для таблицы `eltech_users`
--
ALTER TABLE `eltech_users`
  MODIFY `ID` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT для таблицы `eltech_yoast_indexable`
--
ALTER TABLE `eltech_yoast_indexable`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=47;

--
-- AUTO_INCREMENT для таблицы `eltech_yoast_migrations`
--
ALTER TABLE `eltech_yoast_migrations`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

--
-- AUTO_INCREMENT для таблицы `eltech_yoast_primary_term`
--
ALTER TABLE `eltech_yoast_primary_term`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT для таблицы `eltech_yoast_prominent_words`
--
ALTER TABLE `eltech_yoast_prominent_words`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `eltech_yoast_seo_links`
--
ALTER TABLE `eltech_yoast_seo_links`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
