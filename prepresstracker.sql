-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Sep 22, 2024 at 06:12 AM
-- Server version: 10.4.28-MariaDB
-- PHP Version: 8.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `prepresstracker`
--

-- --------------------------------------------------------

--
-- Table structure for table `dj_hold_table`
--

CREATE TABLE `dj_hold_table` (
  `id` int(10) NOT NULL,
  `DJ_No` varchar(255) DEFAULT NULL,
  `hold_by` varchar(255) DEFAULT NULL,
  `hold_at` timestamp(6) NULL DEFAULT current_timestamp(6),
  `Remarks` varchar(255) DEFAULT NULL,
  `dj_receive_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `dj_hold_table`
--

INSERT INTO `dj_hold_table` (`id`, `DJ_No`, `hold_by`, `hold_at`, `Remarks`, `dj_receive_id`) VALUES
(1, '58781851', 'Ruhul_Khan', '2024-01-25 11:25:43.171272', 'SKU Details missing', 3),
(2, '58781853', 'Ruhul_Khan', '2024-01-25 11:25:43.174720', 'SKU Details missing', 4),
(3, '58786351', 'Ruhul_Khan', '2024-01-25 11:25:43.180738', 'SKU Details missing', 5),
(4, '58786355', 'Kamrul', '2024-01-28 10:31:36.740865', 'AW Missing', 7),
(5, '58786355', 'Ruhul_Khan', '2024-01-31 08:46:27.164695', 'SKU Details missing', 7);

-- --------------------------------------------------------

--
-- Table structure for table `dj_receive_table`
--

CREATE TABLE `dj_receive_table` (
  `id` int(11) NOT NULL,
  `DJ_No` varchar(255) NOT NULL,
  `product_line` varchar(255) NOT NULL,
  `received_by` varchar(255) NOT NULL,
  `received_at` timestamp(6) NULL DEFAULT current_timestamp(6)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `dj_receive_table`
--

INSERT INTO `dj_receive_table` (`id`, `DJ_No`, `product_line`, `received_by`, `received_at`) VALUES
(1, '58747694', 'HTL', 'Apurbo', '2024-01-23 08:55:49.055024'),
(2, '58747696', 'HTL', 'Apurbo', '2024-01-23 08:55:49.057668'),
(3, '58781851', 'HTL', 'Apurbo', '2024-01-23 08:55:49.069321'),
(4, '58781853', 'HTL', 'Apurbo', '2024-01-23 08:55:49.077439'),
(5, '58786351', 'HTL', 'Apurbo', '2024-01-23 08:55:49.080894'),
(6, '58786353', 'HTL', 'Apurbo', '2024-01-23 08:55:49.083475'),
(7, '58786355', 'HTL', 'Apurbo', '2024-01-23 08:55:49.085807'),
(8, '58786357', 'HTL', 'Apurbo', '2024-01-23 08:55:49.088339'),
(9, '58788373', 'HTL', 'Apurbo', '2024-01-23 08:55:49.095767'),
(10, '58788375', 'HTL', 'Apurbo', '2024-01-23 08:55:49.098507'),
(11, '58681587', 'Digital', 'Ruhul_Khan', '2024-01-25 09:07:00.116766'),
(12, '58747694', 'Digital', 'Ruhul_Khan', '2024-01-25 09:07:00.120198'),
(13, '58747696', 'Digital', 'Ruhul_Khan', '2024-01-25 09:07:00.126865'),
(14, '58781851', 'Digital', 'Ruhul_Khan', '2024-01-25 09:07:00.134835'),
(15, '58781853', 'Digital', 'Ruhul_Khan', '2024-01-25 09:07:00.137139'),
(16, '58786351', 'Digital', 'Ruhul_Khan', '2024-01-25 09:07:00.141502'),
(17, '58786353', 'Digital', 'Ruhul_Khan', '2024-01-25 09:07:00.146264'),
(18, '58786355', 'Digital', 'Ruhul_Khan', '2024-01-25 09:07:00.148992'),
(19, '58786357', 'Digital', 'Ruhul_Khan', '2024-01-25 09:07:00.152246'),
(20, '58788373', 'Digital', 'Ruhul_Khan', '2024-01-25 09:07:00.154600'),
(21, '58788375', 'Digital', 'Ruhul_Khan', '2024-01-25 09:07:00.160874'),
(22, '58807616', 'Digital', 'Ruhul_Khan', '2024-01-25 09:07:00.164236'),
(23, '58866856', 'Digital', 'Ruhul_Khan', '2024-01-25 09:07:00.167341'),
(24, '58869444', 'Digital', 'Ruhul_Khan', '2024-01-25 09:07:00.169978'),
(25, '58869584', 'Digital', 'Ruhul_Khan', '2024-01-25 09:07:00.176788'),
(26, '58869588', 'Digital', 'Ruhul_Khan', '2024-01-25 09:07:00.180021'),
(27, '58869609', 'Digital', 'Ruhul_Khan', '2024-01-25 09:07:00.182557'),
(28, '58869611', 'Digital', 'Ruhul_Khan', '2024-01-25 09:07:00.185203'),
(29, '58913661', 'Digital', 'Ruhul_Khan', '2024-01-25 09:07:00.187652'),
(30, '58786355', 'Sample', 'Shiblu', '2024-01-25 09:17:26.848404');

-- --------------------------------------------------------

--
-- Table structure for table `dj_release_table`
--

CREATE TABLE `dj_release_table` (
  `id` int(10) NOT NULL,
  `DJ_No` varchar(255) DEFAULT NULL,
  `released_by` varchar(255) DEFAULT NULL,
  `released_at` timestamp(6) NULL DEFAULT current_timestamp(6),
  `Remarks` varchar(255) DEFAULT NULL,
  `dj_receive_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `dj_release_table`
--

INSERT INTO `dj_release_table` (`id`, `DJ_No`, `released_by`, `released_at`, `Remarks`, `dj_receive_id`) VALUES
(1, '58786357', 'Nazrul', '2024-01-23 08:56:25.340796', 'Manual Common', NULL),
(2, '58788373', 'Nazrul', '2024-01-23 08:56:25.347581', 'Manual Common', NULL),
(3, '58788375', 'Nazrul', '2024-01-23 08:56:25.350363', 'Manual Common', NULL),
(4, '58747694', 'Ruhul_Khan', '2024-01-25 09:01:53.941743', 'VIPS', 1),
(5, '58747694', 'Shahabuddin', '2024-01-25 09:03:27.147792', 'PAS', 1),
(6, '58681587', 'Shiblu', '2024-01-25 09:07:32.378542', 'PAS', 11),
(7, '58747694', 'Shiblu', '2024-01-25 09:07:32.382681', 'PAS', 1),
(8, '58747696', 'Shiblu', '2024-01-25 09:07:32.392958', 'PAS', 2),
(9, '58781851', 'Shiblu', '2024-01-25 09:07:32.398244', 'PAS', 3),
(10, '58781853', 'Shiblu', '2024-01-25 09:07:32.401571', 'PAS', 4),
(11, '58786351', 'Shiblu', '2024-01-25 09:07:32.406389', 'PAS', 5),
(12, '58786353', 'Shiblu', '2024-01-25 09:07:32.413701', 'PAS', 6),
(13, '58786355', 'Shiblu', '2024-01-25 09:07:32.416860', 'PAS', 7),
(14, '58786357', 'Shiblu', '2024-01-25 09:07:32.420453', 'PAS', 8),
(15, '58788373', 'Shiblu', '2024-01-25 09:07:32.427295', 'PAS', 9),
(16, '58788375', 'Shiblu', '2024-01-25 09:07:32.431102', 'PAS', 10),
(17, '58807616', 'Shiblu', '2024-01-25 09:07:32.434124', 'PAS', 22),
(18, '58866856', 'Shiblu', '2024-01-25 09:07:32.437718', 'PAS', 23),
(19, '58869444', 'Shiblu', '2024-01-25 09:07:32.442762', 'PAS', 24),
(20, '58869584', 'Shiblu', '2024-01-25 09:07:32.446771', 'PAS', 25),
(21, '58869588', 'Shiblu', '2024-01-25 09:07:32.451923', 'PAS', 26),
(22, '58869609', 'Shiblu', '2024-01-25 09:07:32.454616', 'PAS', 27),
(23, '58869611', 'Shiblu', '2024-01-25 09:07:32.461385', 'PAS', 28),
(24, '58913661', 'Shiblu', '2024-01-25 09:07:32.464428', 'PAS', 29),
(25, '58807616', 'Ikbal', '2024-01-25 09:18:36.312948', 'Hold', 22),
(26, '58866856', 'Ikbal', '2024-01-25 09:18:36.318351', 'Hold', 23),
(27, '58869444', 'Ikbal', '2024-01-25 09:18:36.321455', 'Hold', 24),
(28, '58869584', 'Ikbal', '2024-01-25 09:18:36.326368', 'Hold', 25),
(29, '58786353', 'Apurbo', '2024-01-25 09:21:35.016580', 'GPM', 6);

-- --------------------------------------------------------

--
-- Table structure for table `oracle_data`
--

CREATE TABLE `oracle_data` (
  `id` int(255) NOT NULL,
  `Discrete_Job` int(255) DEFAULT NULL,
  `SO_Line` varchar(255) DEFAULT NULL,
  `Customer` varchar(255) NOT NULL,
  `RBO` varchar(255) NOT NULL,
  `Product_Line` varchar(255) NOT NULL,
  `Item` varchar(255) NOT NULL,
  `Quantity` int(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `oracle_data`
--

INSERT INTO `oracle_data` (`id`, `Discrete_Job`, `SO_Line`, `Customer`, `RBO`, `Product_Line`, `Item`, `Quantity`) VALUES
(1, 58681587, '101399677_2.1', 'ASWAD COMPOSITE MILLS LTD', 'GEOG', 'OFFSET', 'X1', 3094),
(2, 58747694, '101164202_2.1', 'ASWAD COMPOSITE MILLS LTD', 'GEOG', 'OFFSET', 'X1', 8224),
(3, 58747696, '101185088_2.1', 'ASWAD COMPOSITE MILLS LTD', 'GEOG', 'OFFSET', 'X1', 10),
(4, 58781851, '101164116_2.1', 'ASWAD COMPOSITE MILLS LTD', 'GEOG', 'OFFSET', 'X1', 10),
(5, 58781853, '101185098_3.1', 'ASWAD COMPOSITE MILLS LTD', 'GEOG', 'OFFSET', 'X1', 10),
(6, 58786351, '101135087_2.1', 'ASWAD COMPOSITE MILLS LTD', 'GEOG', 'OFFSET', 'X1', 2042),
(7, 58786353, '101185110_2.1', 'ASWAD COMPOSITE MILLS LTD', 'GEOG', 'OFFSET', 'X1', 10),
(8, 58786355, '101185079_2.1', 'ASWAD COMPOSITE MILLS LTD', 'GEOG', 'OFFSET', 'X1', 10),
(9, 58786357, '101185102_2.1', 'ASWAD COMPOSITE MILLS LTD', 'GEOG', 'OFFSET', 'X1', 10),
(10, 58788373, '101135091_2.1', 'ASWAD COMPOSITE MILLS LTD', 'GEOG', 'OFFSET', 'X1', 4156),
(11, 58788375, '101135107_2.1', 'ASWAD COMPOSITE MILLS LTD', 'GEOG', 'OFFSET', 'X1', 17396),
(12, 58807616, '101135101_2.1', 'ASWAD COMPOSITE MILLS LTD', 'GEOG', 'OFFSET', 'X1', 18585),
(13, 58866856, '101635733_2.1', 'ASWAD COMPOSITE MILLS LTD', 'GEOG', 'OFFSET', 'X1', 10),
(14, 58869444, '101135067_2.1', 'ASWAD COMPOSITE MILLS LTD', 'GEOG', 'OFFSET', 'X1', 4830),
(15, 58869584, '101392191_2.1', 'ASWAD COMPOSITE MILLS LTD', 'GEOG', 'OFFSET', 'X1', 10088),
(16, 58869588, '101399715_2.1', 'ASWAD COMPOSITE MILLS LTD', 'GEOG', 'OFFSET', 'X1', 10),
(17, 58869609, '101392237_2.1', 'ASWAD COMPOSITE MILLS LTD', 'GEOG', 'OFFSET', 'X1', 10),
(18, 58869611, '101399746_2.1', 'ASWAD COMPOSITE MILLS LTD', 'GEOG', 'OFFSET', 'X1', 7826),
(19, 58913661, '101439684_2.1', 'ASWAD COMPOSITE MILLS LTD', 'GEOG', 'OFFSET', 'X1', 10);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `dj_hold_table`
--
ALTER TABLE `dj_hold_table`
  ADD PRIMARY KEY (`id`),
  ADD KEY `dj_receive_table.id` (`dj_receive_id`);

--
-- Indexes for table `dj_receive_table`
--
ALTER TABLE `dj_receive_table`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `dj_release_table`
--
ALTER TABLE `dj_release_table`
  ADD PRIMARY KEY (`id`),
  ADD KEY `dj_receive_id` (`dj_receive_id`);

--
-- Indexes for table `oracle_data`
--
ALTER TABLE `oracle_data`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `Discrete Job` (`Discrete_Job`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `dj_hold_table`
--
ALTER TABLE `dj_hold_table`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `dj_receive_table`
--
ALTER TABLE `dj_receive_table`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;

--
-- AUTO_INCREMENT for table `dj_release_table`
--
ALTER TABLE `dj_release_table`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=30;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `dj_release_table`
--
ALTER TABLE `dj_release_table`
  ADD CONSTRAINT `dj_release_table_ibfk_1` FOREIGN KEY (`dj_receive_id`) REFERENCES `dj_receive_table` (`id`),
  ADD CONSTRAINT `fk_dj_release_dj_receive` FOREIGN KEY (`dj_receive_id`) REFERENCES `dj_receive_table` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
