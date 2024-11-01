-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- 主機： 127.0.0.1
-- 產生時間： 2024-11-01 09:41:03
-- 伺服器版本： 10.4.32-MariaDB
-- PHP 版本： 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- 資料庫： `journal`
--

-- --------------------------------------------------------

--
-- 資料表結構 `classify`
--

CREATE TABLE `classify` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(8) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- 傾印資料表的資料 `classify`
--

INSERT INTO `classify` (`id`, `name`) VALUES
(1, '食'),
(2, '衣'),
(3, '住'),
(4, '行'),
(5, '育'),
(6, '樂');

-- --------------------------------------------------------

--
-- 資料表結構 `routine`
--

CREATE TABLE `routine` (
  `id` int(10) UNSIGNED NOT NULL,
  `date` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `amount` int(10) UNSIGNED NOT NULL,
  `classify` int(1) NOT NULL,
  `item` varchar(32) DEFAULT NULL,
  `remain` text DEFAULT NULL,
  `payment` varchar(16) NOT NULL,
  `location` varchar(64) DEFAULT NULL,
  `consumer` varchar(32) NOT NULL DEFAULT 'mack',
  `type` varchar(10) DEFAULT NULL,
  `sub_classify` varchar(16) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- 傾印資料表的資料 `routine`
--

INSERT INTO `routine` (`id`, `date`, `amount`, `classify`, `item`, `remain`, `payment`, `location`, `consumer`, `type`, `sub_classify`) VALUES
(1, '2024-11-01 08:35:46', 50, 1, '早餐', '美而美', '現金', '泰山', 'mack', '支出', '三餐'),
(2, '2024-11-01 08:36:23', 70, 5, '書藉', '天瓏', '現金', '台北', 'mack', '支出', ''),
(3, '2024-11-01 08:36:18', 70, 4, '捷運', '', '悠遊卡', '泰山', 'mack', '支出', '交通'),
(4, '2024-11-01 08:35:52', 120, 1, '晚餐', '一樂拉麵', '信用卡', '新北', 'mack', '支出', '三餐'),
(5, '2024-11-01 08:35:55', 45, 1, '三明治', '', '現金', '士林', 'bear', '支出', '早餐'),
(6, '2024-11-01 08:35:58', 25, 1, '紅茶', '', '現金', '士林', 'bear', '支出', '早餐'),
(7, '2024-11-01 08:36:00', 20, 1, '茶葉蛋', '', '現金', '士林', 'bear', '支出', '早午餐'),
(8, '2024-11-01 08:36:02', 25, 1, '地瓜', '', '現金', '士林', 'bear', '支出', '點心'),
(9, '2024-11-01 08:36:17', 100, 4, '加油', '', '現金', '泰山', 'bear', '支出', '摩托車'),
(10, '2024-11-01 08:36:03', 100, 1, '便當', '', '現金', '士林', 'bear', '支出', '晚餐'),
(11, '2024-11-01 08:36:05', 100, 1, '青菜', '', '現金', '士林', 'bear', '支出', '午餐'),
(12, '2024-11-01 08:36:09', 350, 2, '上衣', '', '現金', '士林', 'bear', '支出', '便服'),
(13, '2024-11-01 08:36:26', 60, 6, '扭蛋', '', '現金', '士林', 'bear', '支出', '玩具'),
(14, '2024-11-01 08:36:15', 30000, 3, '房租', '', '現金', '士林', 'bear', '支出', '房租');

--
-- 已傾印資料表的索引
--

--
-- 資料表索引 `classify`
--
ALTER TABLE `classify`
  ADD PRIMARY KEY (`id`);

--
-- 資料表索引 `routine`
--
ALTER TABLE `routine`
  ADD PRIMARY KEY (`id`);

--
-- 在傾印的資料表使用自動遞增(AUTO_INCREMENT)
--

--
-- 使用資料表自動遞增(AUTO_INCREMENT) `classify`
--
ALTER TABLE `classify`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- 使用資料表自動遞增(AUTO_INCREMENT) `routine`
--
ALTER TABLE `routine`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=653;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
