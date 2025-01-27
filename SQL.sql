-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 27, 2022 at 12:38 PM
-- Server version: 10.4.22-MariaDB
-- PHP Version: 7.4.27

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `test`
--

-- --------------------------------------------------------

--
-- Table structure for table `card_other`
--

CREATE TABLE `card_other` (
  `id` int(11) NOT NULL,
  `image` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `card_product`
--

CREATE TABLE `card_product` (
  `id` int(11) NOT NULL,
  `name` text NOT NULL,
  `image` text NOT NULL,
  `price` decimal(10,2) NOT NULL DEFAULT 0.00,
  `details` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `card_script`
--

CREATE TABLE `card_script` (
  `id` int(11) NOT NULL,
  `name` text NOT NULL,
  `image` text NOT NULL,
  `price` decimal(10,2) NOT NULL DEFAULT 0.00,
  `details` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `card_program`
--

CREATE TABLE `card_program` (
  `id` int(11) NOT NULL,
  `name` text NOT NULL,
  `image` text NOT NULL,
  `price` decimal(10,2) NOT NULL DEFAULT 0.00,
  `details` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `history_code`
--

CREATE TABLE `history_code` (
  `id` int(11) NOT NULL,
  `username` text NOT NULL,
  `code` text NOT NULL,
  `amount` text NOT NULL,
  `date` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `history_random`
--

CREATE TABLE `history_random` (
  `id` int(11) NOT NULL,
  `username` text NOT NULL,
  `details` text NOT NULL,
  `date` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `stock_product`
--

CREATE TABLE `stock_product` (
  `id` int(11) NOT NULL,
  `name` text NOT NULL,
  `list` text NOT NULL,
  `image` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `stock_product`
--

INSERT INTO `stock_product` (`id`, `name`, `list`, `image`) VALUES (1, 'SCRIPT | สคริปต์', 'stock-script', '-');
INSERT INTO `stock_product` (`id`, `name`, `list`, `image`) VALUES (2, 'SELLID | ไอดีไก่ตัน', 'stock-id', '-');

-- --------------------------------------------------------

--
-- Table structure for table `game_new`
--

CREATE TABLE `game_new` (
  `id` int(11) NOT NULL,
  `name` text NOT NULL,
  `details` text NOT NULL,
  `image` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `history_shop`
--

CREATE TABLE `history_shop` (
  `id` int(11) NOT NULL,
  `username` text NOT NULL,
  `name` text NOT NULL,
  `details` text NOT NULL,
  `price` text NOT NULL,
  `date` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `history_termgame`
--

CREATE TABLE `history_termgame` (
  `id` int(11) NOT NULL,
  `username` text NOT NULL,
  `username_tm` text NOT NULL,
  `password_tm` text NOT NULL,
  `email_tm` text NOT NULL,
  `phonenumber_tm` text NOT NULL,
  `details` text NOT NULL,
  `price` text NOT NULL,
  `status` text NOT NULL DEFAULT '0',
  `date` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `history_topup`
--

CREATE TABLE `history_topup` (
  `id` int(11) NOT NULL,
  `username` text NOT NULL,
  `name` text NOT NULL,
  `amount` text NOT NULL,
  `link` text NOT NULL,
  `date` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `stock_code`
--

CREATE TABLE `stock_code` (
  `id` int(11) NOT NULL,
  `code` text CHARACTER SET utf8 NOT NULL,
  `point` decimal(10,2) NOT NULL DEFAULT 0.00,
  `amount` text CHARACTER SET utf8 NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `stock_script`
--

CREATE TABLE `stock_script` (
  `id` int(11) NOT NULL,
  `details` text NOT NULL,
  `username_buy` text NOT NULL DEFAULT '0',
  `id_card` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `stock_id`
--

CREATE TABLE `stock_id` (
  `id` int(11) NOT NULL,
  `details` text NOT NULL,
  `username_buy` text NOT NULL DEFAULT '0',
  `id_card` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `stock_item`
--

CREATE TABLE `stock_item` (
  `id` int(11) NOT NULL,
  `details` text NOT NULL,
  `price` decimal(10,2) NOT NULL,
  `image` text NOT NULL,
  `id_card_other` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_username`
--

CREATE TABLE `tbl_username` (
  `id` int(11) NOT NULL,
  `username` text NOT NULL,
  `password` text NOT NULL,
  `email` text NOT NULL,
  `phonenumber` text NOT NULL,
  `point` decimal(10,2) NOT NULL DEFAULT 0.00,
  `class` text NOT NULL DEFAULT '0',
  `date` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `web_config`
--

CREATE TABLE `web_config` (
  `id` int(11) NOT NULL,
  `title` text NOT NULL,
  `logo` text NOT NULL,
  `phone` text NOT NULL,
  `contact` text NOT NULL,
  `banner` text NOT NULL,
  `info` text NOT NULL,
  `page` text NOT NULL,
  `clip` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `web_config`
--

INSERT INTO `web_config` (`id`, `title`, `logo`, `phone`, `contact`, `banner`, `info`, `page`, `clip`) VALUES
(1, '-', '-', '-', '-', '-', '-', '-', '-');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `card_other`
--
ALTER TABLE `card_other`
  ADD PRIMARY KEY (`id`);

  --
  -- Indexes for table `game_new`
  --
  ALTER TABLE `game_new`
    ADD PRIMARY KEY (`id`);

--
-- Indexes for table `card_product`
--
ALTER TABLE `card_product`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `card_script`
--
ALTER TABLE `card_script`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `card_program`
--
ALTER TABLE `card_program`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `history_code`
--
ALTER TABLE `history_code`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `history_random`
--
ALTER TABLE `history_random`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `history_shop`
--
ALTER TABLE `history_shop`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `history_termgame`
--
ALTER TABLE `history_termgame`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `history_topup`
--
ALTER TABLE `history_topup`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `stock_script`
--
ALTER TABLE `stock_script`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `stock_id`
--
ALTER TABLE `stock_id`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `stock_code`
--
ALTER TABLE `stock_code`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `stock_item`
--
ALTER TABLE `stock_item`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_username`
--
ALTER TABLE `tbl_username`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `web_config`
--
ALTER TABLE `web_config`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `stock_product`
--
ALTER TABLE `stock_product`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `stock_product`
--
ALTER TABLE `stock_product`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `stock_id`
--
ALTER TABLE `stock_id`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `card_other`
--
ALTER TABLE `card_other`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `card_product`
--
ALTER TABLE `card_product`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `card_script`
--
ALTER TABLE `card_script`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `card_program`
--
ALTER TABLE `card_program`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

  --
  -- AUTO_INCREMENT for table `game_new`
  --
  ALTER TABLE `game_new`
    MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `history_code`
--
ALTER TABLE `history_code`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `history_random`
--
ALTER TABLE `history_random`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `history_shop`
--
ALTER TABLE `history_shop`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `history_termgame`
--
ALTER TABLE `history_termgame`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `history_topup`
--
ALTER TABLE `history_topup`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `stock_script`
--
ALTER TABLE `stock_script`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;


--
-- AUTO_INCREMENT for table `stock_code`
--

ALTER TABLE `stock_code`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `stock_item`
--
ALTER TABLE `stock_item`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tbl_username`
--
ALTER TABLE `tbl_username`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `web_config`
--
ALTER TABLE `web_config`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
