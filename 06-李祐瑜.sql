-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- 主機： 127.0.0.1
-- 產生時間： 2024-11-01 08:08:50
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
-- 資料表結構 `routine`
--

CREATE TABLE `routine` (
  `id` int(10) UNSIGNED NOT NULL,
  `date` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `amount` int(10) UNSIGNED NOT NULL,
  `classify` varchar(16) NOT NULL,
  `item` varchar(32) NOT NULL,
  `remain` text DEFAULT NULL,
  `payment` varchar(16) NOT NULL,
  `location` varchar(64) NOT NULL,
  `consumer` varchar(32) NOT NULL DEFAULT 'youyu',
  `type` varchar(10) NOT NULL,
  `sub_classify` varchar(16) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- 傾印資料表的資料 `routine`
--

INSERT INTO `routine` (`id`, `date`, `amount`, `classify`, `item`, `remain`, `payment`, `location`, `consumer`, `type`, `sub_classify`) VALUES
(1, '2024-11-01 06:41:25', 100, '食', '烤肉飯', NULL, '現金', '上野烤肉飯', 'youyu', '支出', '午餐'),
(2, '2024-11-01 06:41:25', 65, '食', '焦糖拿鐵', NULL, '信用卡', '全家', 'youyu', '支出', '飲料'),
(3, '2024-11-01 06:42:26', 1000, '行', '加油', NULL, '支出', '中油', 'youyu', '支出', '加油'),
(4, '2024-11-01 06:43:32', 700, '樂', '按摩', NULL, '現金', '永久足道', 'youyu', '支出', '按摩'),
(5, '2024-11-01 06:44:14', 10000, '住', '房租', NULL, '轉帳', '房東', 'youyu', '支出', '房租'),
(6, '2024-11-01 06:45:50', 65, '收入', '利息', NULL, '轉帳', '永豐銀行', 'youyu', '收入', '利息'),
(7, '2024-11-01 06:47:14', 35, '食', '御飯糰', NULL, '信用卡', '全家', 'youyu', '支出', '早餐'),
(8, '2024-11-01 06:47:59', 99, '食', '丼飯', NULL, '現金', '燒肉之家', 'youyu', '支出', '晚餐'),
(9, '2024-11-01 06:48:44', 35, '食', '洋芋片', NULL, '信用卡', '全聯', 'youyu', '支出', '零食'),
(10, '2024-11-01 06:49:19', 66, '食', '大薯', NULL, '信用卡', '麥當勞', 'youyu', '支出', '消夜');

--
-- 已傾印資料表的索引
--

--
-- 資料表索引 `routine`
--
ALTER TABLE `routine`
  ADD PRIMARY KEY (`id`);

--
-- 在傾印的資料表使用自動遞增(AUTO_INCREMENT)
--

--
-- 使用資料表自動遞增(AUTO_INCREMENT) `routine`
--
ALTER TABLE `routine`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
