-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Хост: 127.0.0.1:3306
-- Время создания: Сен 14 2023 г., 19:46
-- Версия сервера: 8.0.30
-- Версия PHP: 8.1.9

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- База данных: `lenta`
--

-- --------------------------------------------------------

--
-- Структура таблицы `comments`
--

CREATE TABLE `comments` (
  `id` int NOT NULL,
  `text` varchar(600) NOT NULL,
  `timestamp` timestamp NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Дамп данных таблицы `comments`
--

INSERT INTO `comments` (`id`, `text`, `timestamp`) VALUES
(1, 'afaf', '2023-09-13 17:36:55'),
(2, 'afaf', '2023-09-13 17:37:56'),
(3, 'afaf', '2023-09-13 17:38:16'),
(4, 'afaf', '2023-09-13 17:42:11'),
(5, 'aga', '2023-09-13 17:48:09'),
(6, 'afaf', '2023-09-13 17:48:22'),
(7, 'afaf', '2023-09-13 17:49:03'),
(8, 'kl;', '2023-09-13 17:49:11'),
(9, 'afa', '2023-09-13 17:49:27'),
(10, 'afaf', '2023-09-13 20:46:42'),
(11, 'afaf', '2023-09-14 07:13:05'),
(12, 'afaf', '2023-09-14 07:33:01'),
(13, 'Отлично', '2023-09-14 07:33:44'),
(14, 'отлично', '2023-09-14 07:35:02');

-- --------------------------------------------------------

--
-- Структура таблицы `posts`
--

CREATE TABLE `posts` (
  `id` int NOT NULL,
  `text` varchar(600) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `timestamp` timestamp NOT NULL,
  `likes` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Дамп данных таблицы `posts`
--

INSERT INTO `posts` (`id`, `text`, `timestamp`, `likes`) VALUES
(1, 'хфаохфоахфомж ожфоаьфгахщфь', '2023-09-13 13:20:57', 5),
(2, 'хфаохфоахфомж ожфоаьфгахщфь', '2023-09-13 13:21:00', 5),
(3, 'Lorem ipsum, dolor sit amet consectetur adipisicing elit. Exercitationem, nobis nesciunt placeat qui blanditiis temporibus veritatis odit obcaecati pariatur. Ex nesciunt itaque enim. Non atque quam sint voluptatibus rerum est voluptas. Itaque deserunt est rerum et nemo! Aut quod omnis nemo veritatis recusandae, iusto repellendus itaque, quos sequi corporis temporibus fugiat sint esse! At accusamus', '2023-09-13 13:36:13', 5),
(4, 'Lorem ipsum, dolor sit amet consectetur adipisicing elit. Exercitationem, nobis nesciunt placeat qui blanditiis temporibus veritatis odit obcaecati pariatur. Ex nesciunt itaque enim. Non atque quam sint voluptatibus rerum est voluptas. Itaque deserunt est rerum et nemo! Aut quod omnis nemo veritatis recusandae, iusto repellendus itaque, quos sequi corporis temporibus fugiat sint esse! At accusamus', '2023-09-13 13:36:13', 5),
(5, 'Lorem ipsum, dolor sit amet consectetur adipisicing elit. Exercitationem, nobis nesciunt placeat qui blanditiis temporibus veritatis odit obcaecati pariatur. Ex nesciunt itaque enim. Non atque quam sint voluptatibus rerum est voluptas. Itaque deserunt est rerum et nemo! Aut quod omnis nemo veritatis recusandae, iusto repellendus itaque, quos sequi corporis temporibus fugiat sint esse! At accusamus', '2023-09-13 13:36:13', 5),
(6, 'Lorem ipsum, dolor sit amet consectetur adipisicing elit. Exercitationem, nobis nesciunt placeat qui blanditiis temporibus veritatis odit obcaecati pariatur. Ex nesciunt itaque enim. Non atque quam sint voluptatibus rerum est voluptas. Itaque deserunt est rerum et nemo! Aut quod omnis nemo veritatis recusandae, iusto repellendus itaque, quos sequi corporis temporibus fugiat sint esse! At accusamus', '2023-09-13 13:36:13', 5),
(7, 'Lorem ipsum, dolor sit amet consectetur adipisicing elit. Exercitationem, nobis nesciunt placeat qui blanditiis temporibus veritatis odit obcaecati pariatur. Ex nesciunt itaque enim. Non atque quam sint voluptatibus rerum est voluptas. Itaque deserunt est rerum et nemo! Aut quod omnis nemo veritatis recusandae, iusto repellendus itaque, quos sequi corporis temporibus fugiat sint esse! At accusamus', '2023-09-13 13:36:13', 5),
(8, 'Lorem ipsum, dolor sit amet consectetur adipisicing elit. Exercitationem, nobis nesciunt placeat qui blanditiis temporibus veritatis odit obcaecati pariatur. Ex nesciunt itaque enim. Non atque quam sint voluptatibus rerum est voluptas. Itaque deserunt est rerum et nemo! Aut quod omnis nemo veritatis recusandae, iusto repellendus itaque, quos sequi corporis temporibus fugiat sint esse! At accusamus', '2023-09-13 13:36:13', 5),
(9, 'Lorem ipsum, dolor sit amet consectetur adipisicing elit. Exercitationem, nobis nesciunt placeat qui blanditiis temporibus veritatis odit obcaecati pariatur. Ex nesciunt itaque enim. Non atque quam sint voluptatibus rerum est voluptas. Itaque deserunt est rerum et nemo! Aut quod omnis nemo veritatis recusandae, iusto repellendus itaque, quos sequi corporis temporibus fugiat sint esse! At accusamus', '2023-09-13 13:36:13', 5),
(10, 'Lorem ipsum, dolor sit amet consectetur adipisicing elit. Exercitationem, nobis nesciunt placeat qui blanditiis temporibus veritatis odit obcaecati pariatur. Ex nesciunt itaque enim. Non atque quam sint voluptatibus rerum est voluptas. Itaque deserunt est rerum et nemo! Aut quod omnis nemo veritatis recusandae, iusto repellendus itaque, quos sequi corporis temporibus fugiat sint esse! At accusamus', '2023-09-13 13:36:13', 5),
(11, 'Lorem ipsum, dolor sit amet consectetur adipisicing elit. Exercitationem, nobis nesciunt placeat qui blanditiis temporibus veritatis odit obcaecati pariatur. Ex nesciunt itaque enim. Non atque quam sint voluptatibus rerum est voluptas. Itaque deserunt est rerum et nemo! Aut quod omnis nemo veritatis recusandae, iusto repellendus itaque, quos sequi corporis temporibus fugiat sint esse! At accusamus', '2023-09-13 13:36:13', 5),
(12, 'Lorem ipsum, dolor sit amet consectetur adipisicing elit. Exercitationem, nobis nesciunt placeat qui blanditiis temporibus veritatis odit obcaecati pariatur. Ex nesciunt itaque enim. Non atque quam sint voluptatibus rerum est voluptas. Itaque deserunt est rerum et nemo! Aut quod omnis nemo veritatis recusandae, iusto repellendus itaque, quos sequi corporis temporibus fugiat sint esse! At accusamus', '2023-09-13 13:36:13', 5),
(13, 'Lorem ipsum, dolor sit amet consectetur adipisicing elit. Exercitationem, nobis nesciunt placeat qui blanditiis temporibus veritatis odit obcaecati pariatur. Ex nesciunt itaque enim. Non atque quam sint voluptatibus rerum est voluptas. Itaque deserunt est rerum et nemo! Aut quod omnis nemo veritatis recusandae, iusto repellendus itaque, quos sequi corporis temporibus fugiat sint esse! At accusamus', '2023-09-13 13:36:13', 6),
(14, 'Lorem ipsum, dolor sit amet consectetur adipisicing elit. Exercitationem, nobis nesciunt placeat qui blanditiis temporibus veritatis odit obcaecati pariatur. Ex nesciunt itaque enim. Non atque quam sint voluptatibus rerum est voluptas. Itaque deserunt est rerum et nemo! Aut quod omnis nemo veritatis recusandae, iusto repellendus itaque, quos sequi corporis temporibus fugiat sint esse! At accusamus', '2023-09-13 13:36:13', 6),
(15, 'Lorem ipsum, dolor sit amet consectetur adipisicing elit. Exercitationem, nobis nesciunt placeat qui blanditiis temporibus veritatis odit obcaecati pariatur. Ex nesciunt itaque enim. Non atque quam sint voluptatibus rerum est voluptas. Itaque deserunt est rerum et nemo! Aut quod omnis nemo veritatis recusandae, iusto repellendus itaque, quos sequi corporis temporibus fugiat sint esse! At accusamus', '2023-09-13 13:36:13', 7),
(16, 'Lorem ipsum, dolor sit amet consectetur adipisicing elit. Exercitationem, nobis nesciunt placeat qui blanditiis temporibus veritatis odit obcaecati pariatur. Ex nesciunt itaque enim. Non atque quam sint voluptatibus rerum est voluptas. Itaque deserunt est rerum et nemo! Aut quod omnis nemo veritatis recusandae, iusto repellendus itaque, quos sequi corporis temporibus fugiat sint esse! At accusamus', '2023-09-13 13:36:13', 5),
(17, 'Lorem ipsum, dolor sit amet consectetur adipisicing elit. Exercitationem, nobis nesciunt placeat qui blanditiis temporibus veritatis odit obcaecati pariatur. Ex nesciunt itaque enim. Non atque quam sint voluptatibus rerum est voluptas. Itaque deserunt est rerum et nemo! Aut quod omnis nemo veritatis recusandae, iusto repellendus itaque, quos sequi corporis temporibus fugiat sint esse! At accusamus', '2023-09-13 13:36:13', 5),
(18, 'Lorem ipsum, dolor sit amet consectetur adipisicing elit. Exercitationem, nobis nesciunt placeat qui blanditiis temporibus veritatis odit obcaecati pariatur. Ex nesciunt itaque enim. Non atque quam sint voluptatibus rerum est voluptas. Itaque deserunt est rerum et nemo! Aut quod omnis nemo veritatis recusandae, iusto repellendus itaque, quos sequi corporis temporibus fugiat sint esse! At accusamus', '2023-09-13 13:36:13', 6),
(19, 'Lorem ipsum, dolor sit amet consectetur adipisicing elit. Exercitationem, nobis nesciunt placeat qui blanditiis temporibus veritatis odit obcaecati pariatur. Ex nesciunt itaque enim. Non atque quam sint voluptatibus rerum est voluptas. Itaque deserunt est rerum et nemo! Aut quod omnis nemo veritatis recusandae, iusto repellendus itaque, quos sequi corporis temporibus fugiat sint esse! At accusamus', '2023-09-13 13:36:13', 5),
(20, 'Lorem ipsum, dolor sit amet consectetur adipisicing elit. Exercitationem, nobis nesciunt placeat qui blanditiis temporibus veritatis odit obcaecati pariatur. Ex nesciunt itaque enim. Non atque quam sint voluptatibus rerum est voluptas. Itaque deserunt est rerum et nemo! Aut quod omnis nemo veritatis recusandae, iusto repellendus itaque, quos sequi corporis temporibus fugiat sint esse! At accusamus', '2023-09-13 13:36:13', 6),
(21, 'Lorem ipsum, dolor sit amet consectetur adipisicing elit. Exercitationem, nobis nesciunt placeat qui blanditiis temporibus veritatis odit obcaecati pariatur. Ex nesciunt itaque enim. Non atque quam sint voluptatibus rerum est voluptas. Itaque deserunt est rerum et nemo! Aut quod omnis nemo veritatis recusandae, iusto repellendus itaque, quos sequi corporis temporibus fugiat sint esse! At accusamus', '2023-09-13 13:36:13', 5),
(22, 'Lorem ipsum, dolor sit amet consectetur adipisicing elit. Exercitationem, nobis nesciunt placeat qui blanditiis temporibus veritatis odit obcaecati pariatur. Ex nesciunt itaque enim. Non atque quam sint voluptatibus rerum est voluptas. Itaque deserunt est rerum et nemo! Aut quod omnis nemo veritatis recusandae, iusto repellendus itaque, quos sequi corporis temporibus fugiat sint esse! At accusamus', '2023-09-13 13:36:13', 6),
(23, 'Lorem ipsum, dolor sit amet consectetur adipisicing elit. Exercitationem, nobis nesciunt placeat qui blanditiis temporibus veritatis odit obcaecati pariatur. Ex nesciunt itaque enim. Non atque quam sint voluptatibus rerum est voluptas. Itaque deserunt est rerum et nemo! Aut quod omnis nemo veritatis recusandae, iusto repellendus itaque, quos sequi corporis temporibus fugiat sint esse! At accusamus', '2023-09-13 13:36:13', 5),
(24, 'Lorem ipsum, dolor sit amet consectetur adipisicing elit. Exercitationem, nobis nesciunt placeat qui blanditiis temporibus veritatis odit obcaecati pariatur. Ex nesciunt itaque enim. Non atque quam sint voluptatibus rerum est voluptas. Itaque deserunt est rerum et nemo! Aut quod omnis nemo veritatis recusandae, iusto repellendus itaque, quos sequi corporis temporibus fugiat sint esse! At accusamus', '2023-09-13 13:36:13', 5),
(25, 'Lorem ipsum, dolor sit amet consectetur adipisicing elit. Exercitationem, nobis nesciunt placeat qui blanditiis temporibus veritatis odit obcaecati pariatur. Ex nesciunt itaque enim. Non atque quam sint voluptatibus rerum est voluptas. Itaque deserunt est rerum et nemo! Aut quod omnis nemo veritatis recusandae, iusto repellendus itaque, quos sequi corporis temporibus fugiat sint esse! At accusamus', '2023-09-13 13:36:13', 5),
(26, 'Lorem ipsum, dolor sit amet consectetur adipisicing elit. Exercitationem, nobis nesciunt placeat qui blanditiis temporibus veritatis odit obcaecati pariatur. Ex nesciunt itaque enim. Non atque quam sint voluptatibus rerum est voluptas. Itaque deserunt est rerum et nemo! Aut quod omnis nemo veritatis recusandae, iusto repellendus itaque, quos sequi corporis temporibus fugiat sint esse! At accusamus', '2023-09-13 13:36:13', 5),
(27, 'Lorem ipsum, dolor sit amet consectetur adipisicing elit. Exercitationem, nobis nesciunt placeat qui blanditiis temporibus veritatis odit obcaecati pariatur. Ex nesciunt itaque enim. Non atque quam sint voluptatibus rerum est voluptas. Itaque deserunt est rerum et nemo! Aut quod omnis nemo veritatis recusandae, iusto repellendus itaque, quos sequi corporis temporibus fugiat sint esse! At accusamus', '2023-09-13 13:36:13', 5),
(28, 'Lorem ipsum, dolor sit amet consectetur adipisicing elit. Exercitationem, nobis nesciunt placeat qui blanditiis temporibus veritatis odit obcaecati pariatur. Ex nesciunt itaque enim. Non atque quam sint voluptatibus rerum est voluptas. Itaque deserunt est rerum et nemo! Aut quod omnis nemo veritatis recusandae, iusto repellendus itaque, quos sequi corporis temporibus fugiat sint esse! At accusamus', '2023-09-13 13:36:13', 5),
(29, 'Lorem ipsum, dolor sit amet consectetur adipisicing elit. Exercitationem, nobis nesciunt placeat qui blanditiis temporibus veritatis odit obcaecati pariatur. Ex nesciunt itaque enim. Non atque quam sint voluptatibus rerum est voluptas. Itaque deserunt est rerum et nemo! Aut quod omnis nemo veritatis recusandae, iusto repellendus itaque, quos sequi corporis temporibus fugiat sint esse! At accusamus', '2023-09-13 13:36:13', 5),
(30, 'Lorem ipsum, dolor sit amet consectetur adipisicing elit. Exercitationem, nobis nesciunt placeat qui blanditiis temporibus veritatis odit obcaecati pariatur. Ex nesciunt itaque enim. Non atque quam sint voluptatibus rerum est voluptas. Itaque deserunt est rerum et nemo! Aut quod omnis nemo veritatis recusandae, iusto repellendus itaque, quos sequi corporis temporibus fugiat sint esse! At accusamus', '2023-09-13 13:36:13', 5),
(31, 'Lorem ipsum, dolor sit amet consectetur adipisicing elit. Exercitationem, nobis nesciunt placeat qui blanditiis temporibus veritatis odit obcaecati pariatur. Ex nesciunt itaque enim. Non atque quam sint voluptatibus rerum est voluptas. Itaque deserunt est rerum et nemo! Aut quod omnis nemo veritatis recusandae, iusto repellendus itaque, quos sequi corporis temporibus fugiat sint esse! At accusamus', '2023-09-13 13:36:13', 5),
(32, 'Lorem ipsum, dolor sit amet consectetur adipisicing elit. Exercitationem, nobis nesciunt placeat qui blanditiis temporibus veritatis odit obcaecati pariatur. Ex nesciunt itaque enim. Non atque quam sint voluptatibus rerum est voluptas. Itaque deserunt est rerum et nemo! Aut quod omnis nemo veritatis recusandae, iusto repellendus itaque, quos sequi corporis temporibus fugiat sint esse! At accusamus', '2023-09-13 13:36:13', 5),
(33, 'Lorem ipsum, dolor sit amet consectetur adipisicing elit. Exercitationem, nobis nesciunt placeat qui blanditiis temporibus veritatis odit obcaecati pariatur. Ex nesciunt itaque enim. Non atque quam sint voluptatibus rerum est voluptas. Itaque deserunt est rerum et nemo! Aut quod omnis nemo veritatis recusandae, iusto repellendus itaque, quos sequi corporis temporibus fugiat sint esse! At accusamus', '2023-09-13 13:36:13', 5),
(34, 'Lorem ipsum, dolor sit amet consectetur adipisicing elit. Exercitationem, nobis nesciunt placeat qui blanditiis temporibus veritatis odit obcaecati pariatur. Ex nesciunt itaque enim. Non atque quam sint voluptatibus rerum est voluptas. Itaque deserunt est rerum et nemo! Aut quod omnis nemo veritatis recusandae, iusto repellendus itaque, quos sequi corporis temporibus fugiat sint esse! At accusamus', '2023-09-13 13:36:13', 5),
(35, 'Lorem ipsum, dolor sit amet consectetur adipisicing elit. Exercitationem, nobis nesciunt placeat qui blanditiis temporibus veritatis odit obcaecati pariatur. Ex nesciunt itaque enim. Non atque quam sint voluptatibus rerum est voluptas. Itaque deserunt est rerum et nemo! Aut quod omnis nemo veritatis recusandae, iusto repellendus itaque, quos sequi corporis temporibus fugiat sint esse! At accusamus', '2023-09-13 13:36:13', 5),
(36, 'Lorem ipsum, dolor sit amet consectetur adipisicing elit. Exercitationem, nobis nesciunt placeat qui blanditiis temporibus veritatis odit obcaecati pariatur. Ex nesciunt itaque enim. Non atque quam sint voluptatibus rerum est voluptas. Itaque deserunt est rerum et nemo! Aut quod omnis nemo veritatis recusandae, iusto repellendus itaque, quos sequi corporis temporibus fugiat sint esse! At accusamus', '2023-09-13 13:36:13', 5),
(37, 'Lorem ipsum, dolor sit amet consectetur adipisicing elit. Exercitationem, nobis nesciunt placeat qui blanditiis temporibus veritatis odit obcaecati pariatur. Ex nesciunt itaque enim. Non atque quam sint voluptatibus rerum est voluptas. Itaque deserunt est rerum et nemo! Aut quod omnis nemo veritatis recusandae, iusto repellendus itaque, quos sequi corporis temporibus fugiat sint esse! At accusamus', '2023-09-13 13:36:13', 5),
(38, 'Lorem ipsum, dolor sit amet consectetur adipisicing elit. Exercitationem, nobis nesciunt placeat qui blanditiis temporibus veritatis odit obcaecati pariatur. Ex nesciunt itaque enim. Non atque quam sint voluptatibus rerum est voluptas. Itaque deserunt est rerum et nemo! Aut quod omnis nemo veritatis recusandae, iusto repellendus itaque, quos sequi corporis temporibus fugiat sint esse! At accusamus', '2023-09-13 13:36:13', 5),
(39, 'Lorem ipsum, dolor sit amet consectetur adipisicing elit. Exercitationem, nobis nesciunt placeat qui blanditiis temporibus veritatis odit obcaecati pariatur. Ex nesciunt itaque enim. Non atque quam sint voluptatibus rerum est voluptas. Itaque deserunt est rerum et nemo! Aut quod omnis nemo veritatis recusandae, iusto repellendus itaque, quos sequi corporis temporibus fugiat sint esse! At accusamus', '2023-09-13 13:36:13', 5),
(40, 'Lorem ipsum, dolor sit amet consectetur adipisicing elit. Exercitationem, nobis nesciunt placeat qui blanditiis temporibus veritatis odit obcaecati pariatur. Ex nesciunt itaque enim. Non atque quam sint voluptatibus rerum est voluptas. Itaque deserunt est rerum et nemo! Aut quod omnis nemo veritatis recusandae, iusto repellendus itaque, quos sequi corporis temporibus fugiat sint esse! At accusamus', '2023-09-13 13:36:13', 5),
(41, 'Lorem ipsum, dolor sit amet consectetur adipisicing elit. Exercitationem, nobis nesciunt placeat qui blanditiis temporibus veritatis odit obcaecati pariatur. Ex nesciunt itaque enim. Non atque quam sint voluptatibus rerum est voluptas. Itaque deserunt est rerum et nemo! Aut quod omnis nemo veritatis recusandae, iusto repellendus itaque, quos sequi corporis temporibus fugiat sint esse! At accusamus', '2023-09-13 13:36:13', 5),
(42, 'Lorem ipsum, dolor sit amet consectetur adipisicing elit. Exercitationem, nobis nesciunt placeat qui blanditiis temporibus veritatis odit obcaecati pariatur. Ex nesciunt itaque enim. Non atque quam sint voluptatibus rerum est voluptas. Itaque deserunt est rerum et nemo! Aut quod omnis nemo veritatis recusandae, iusto repellendus itaque, quos sequi corporis temporibus fugiat sint esse! At accusamus', '2023-09-13 13:36:13', 5),
(43, 'Lorem ipsum, dolor sit amet consectetur adipisicing elit. Exercitationem, nobis nesciunt placeat qui blanditiis temporibus veritatis odit obcaecati pariatur. Ex nesciunt itaque enim. Non atque quam sint voluptatibus rerum est voluptas. Itaque deserunt est rerum et nemo! Aut quod omnis nemo veritatis recusandae, iusto repellendus itaque, quos sequi corporis temporibus fugiat sint esse! At accusamus', '2023-09-13 13:36:13', 5),
(44, 'Lorem ipsum, dolor sit amet consectetur adipisicing elit. Exercitationem, nobis nesciunt placeat qui blanditiis temporibus veritatis odit obcaecati pariatur. Ex nesciunt itaque enim. Non atque quam sint voluptatibus rerum est voluptas. Itaque deserunt est rerum et nemo! Aut quod omnis nemo veritatis recusandae, iusto repellendus itaque, quos sequi corporis temporibus fugiat sint esse! At accusamus', '2023-09-13 13:36:13', 5),
(45, 'Lorem ipsum, dolor sit amet consectetur adipisicing elit. Exercitationem, nobis nesciunt placeat qui blanditiis temporibus veritatis odit obcaecati pariatur. Ex nesciunt itaque enim. Non atque quam sint voluptatibus rerum est voluptas. Itaque deserunt est rerum et nemo! Aut quod omnis nemo veritatis recusandae, iusto repellendus itaque, quos sequi corporis temporibus fugiat sint esse! At accusamus', '2023-09-13 13:36:13', 5),
(46, 'Lorem ipsum, dolor sit amet consectetur adipisicing elit. Exercitationem, nobis nesciunt placeat qui blanditiis temporibus veritatis odit obcaecati pariatur. Ex nesciunt itaque enim. Non atque quam sint voluptatibus rerum est voluptas. Itaque deserunt est rerum et nemo! Aut quod omnis nemo veritatis recusandae, iusto repellendus itaque, quos sequi corporis temporibus fugiat sint esse! At accusamus', '2023-09-13 13:36:13', 5),
(47, 'Lorem ipsum, dolor sit amet consectetur adipisicing elit. Exercitationem, nobis nesciunt placeat qui blanditiis temporibus veritatis odit obcaecati pariatur. Ex nesciunt itaque enim. Non atque quam sint voluptatibus rerum est voluptas. Itaque deserunt est rerum et nemo! Aut quod omnis nemo veritatis recusandae, iusto repellendus itaque, quos sequi corporis temporibus fugiat sint esse! At accusamus', '2023-09-13 13:36:13', 5),
(48, 'Lorem ipsum, dolor sit amet consectetur adipisicing elit. Exercitationem, nobis nesciunt placeat qui blanditiis temporibus veritatis odit obcaecati pariatur. Ex nesciunt itaque enim. Non atque quam sint voluptatibus rerum est voluptas. Itaque deserunt est rerum et nemo! Aut quod omnis nemo veritatis recusandae, iusto repellendus itaque, quos sequi corporis temporibus fugiat sint esse! At accusamus', '2023-09-13 13:36:13', 5),
(49, 'Lorem ipsum, dolor sit amet consectetur adipisicing elit. Exercitationem, nobis nesciunt placeat qui blanditiis temporibus veritatis odit obcaecati pariatur. Ex nesciunt itaque enim. Non atque quam sint voluptatibus rerum est voluptas. Itaque deserunt est rerum et nemo! Aut quod omnis nemo veritatis recusandae, iusto repellendus itaque, quos sequi corporis temporibus fugiat sint esse! At accusamus', '2023-09-13 13:36:13', 5),
(50, 'Lorem ipsum, dolor sit amet consectetur adipisicing elit. Exercitationem, nobis nesciunt placeat qui blanditiis temporibus veritatis odit obcaecati pariatur. Ex nesciunt itaque enim. Non atque quam sint voluptatibus rerum est voluptas. Itaque deserunt est rerum et nemo! Aut quod omnis nemo veritatis recusandae, iusto repellendus itaque, quos sequi corporis temporibus fugiat sint esse! At accusamus', '2023-09-13 13:36:13', 5),
(51, 'Lorem ipsum, dolor sit amet consectetur adipisicing elit. Exercitationem, nobis nesciunt placeat qui blanditiis temporibus veritatis odit obcaecati pariatur. Ex nesciunt itaque enim. Non atque quam sint voluptatibus rerum est voluptas. Itaque deserunt est rerum et nemo! Aut quod omnis nemo veritatis recusandae, iusto repellendus itaque, quos sequi corporis temporibus fugiat sint esse! At accusamus', '2023-09-13 13:36:13', 8),
(52, 'afaf', '2023-09-13 16:34:33', 6),
(53, 'afaf', '2023-09-13 16:34:36', 5),
(54, 'hi\r\n', '2023-09-13 16:36:12', 5),
(55, '', '2023-09-13 16:36:14', 6),
(56, 'afaf', '2023-09-13 16:42:13', 9),
(57, 'afaf', '2023-09-13 16:42:16', 21),
(58, 'afaf', '2023-09-13 17:29:15', 41),
(59, 'ПРивет', '2023-09-14 07:32:52', 0),
(60, 'Привет', '2023-09-14 07:33:28', 1),
(61, 'Привет', '2023-09-14 07:34:53', 1);

-- --------------------------------------------------------

--
-- Структура таблицы `post_comment`
--

CREATE TABLE `post_comment` (
  `post_id` int NOT NULL,
  `comment_id` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Дамп данных таблицы `post_comment`
--

INSERT INTO `post_comment` (`post_id`, `comment_id`) VALUES
(58, 7),
(58, 8),
(58, 9),
(56, 10),
(56, 11),
(59, 12),
(13, 13),
(61, 14);

--
-- Индексы сохранённых таблиц
--

--
-- Индексы таблицы `comments`
--
ALTER TABLE `comments`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `posts`
--
ALTER TABLE `posts`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT для сохранённых таблиц
--

--
-- AUTO_INCREMENT для таблицы `comments`
--
ALTER TABLE `comments`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT для таблицы `posts`
--
ALTER TABLE `posts`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=62;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
