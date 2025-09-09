-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Nov 21, 2022 at 06:37 AM
-- Server version: 10.4.24-MariaDB
-- PHP Version: 7.4.29

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `dropship`
--

-- --------------------------------------------------------

--
-- Table structure for table `tbl_brand`
--

CREATE TABLE `tbl_brand` (
  `brand_id` int(11) NOT NULL,
  `brand_name` varchar(255) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_brand`
--

INSERT INTO `tbl_brand` (`brand_id`, `brand_name`) VALUES
(6, 'Asus'),
(14, 'Apple'),
(15, 'Samsung'),
(16, 'HP'),
(17, 'Xiaomi');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_category`
--

CREATE TABLE `tbl_category` (
  `category_id` int(11) NOT NULL,
  `category_name` varchar(255) NOT NULL,
  `category_status` tinyint(3) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_category`
--

INSERT INTO `tbl_category` (`category_id`, `category_name`, `category_status`) VALUES
(73, 'Watch', 1),
(72, 'Laptop', 1),
(71, 'Mobile', 1),
(74, 'Monitor', 1),
(75, 'Mouse', 1),
(76, 'PC', 1);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_customer`
--

CREATE TABLE `tbl_customer` (
  `cus_id` int(11) NOT NULL,
  `cus_name` varchar(55) NOT NULL,
  `cus_email` varchar(55) NOT NULL,
  `cus_password` varchar(32) NOT NULL,
  `cus_mobile` varchar(14) NOT NULL,
  `cus_address` text NOT NULL,
  `cus_city` varchar(55) NOT NULL,
  `cus_country` varchar(55) NOT NULL,
  `cus_zip` varchar(5) NOT NULL,
  `membership` tinyint(4) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_customer`
--

INSERT INTO `tbl_customer` (`cus_id`, `cus_name`, `cus_email`, `cus_password`, `cus_mobile`, `cus_address`, `cus_city`, `cus_country`, `cus_zip`, `membership`) VALUES
(48, 'Sm shuvo', 'sumonsarker080@gmail.com', '25d55ad283aa400af464c76d713c07ad', '1611606484', 'Sylhet City', 'Mymensingh', 'Bangladesh', '2220', 0),
(47, 'Trailer', 'Traileralltimesu@gmail.com', '25d55ad283aa400af464c76d713c07ad', '1611606484', 'Sylhet City', 'Mymensingh', 'UK', '2220', 0),
(49, 'Mugi Pangestu', 'mugi@gmail.com', '6e62b88940a9dd1cacdaba09e2d48132', '08993100016', 'cikandang', 'Bandung Barat', 'Jawa Barat', '40552', 0),
(50, 'mugi pa', 'mugipangestu41@gmail.com', '6e62b88940a9dd1cacdaba09e2d48132', '89931000160', 'cikandang', 'Bandung Barat', '-- Provinsi --', '40552', 1),
(51, 'mugi pa2', 'mugipangestu42@gmail.com', '6e62b88940a9dd1cacdaba09e2d48132', '8993100016', 'cikandang', 'Bandung Barat', '-- Provinsi --', '40552', 1),
(52, 'budi sudarsono', 'budi@gmail.com', '25d55ad283aa400af464c76d713c07ad', '', '', '', '', '', 0),
(53, 'budi sudarsono', 'budi123@gmail.com', '25d55ad283aa400af464c76d713c07ad', '088971203725', 'PPI G10/13', 'BANDUNG BARAT', 'Jawa Barat', '40553', 1),
(54, 'Chandrian Tubagus', 'chandrian@gmail.com', '25d55ad283aa400af464c76d713c07ad', '088971203725', 'PPI G10/13', 'Bandung Barat', '-- Provinsi --', '40553', 1),
(55, 'Brianly', 'briannrf1@gmail.com', '25d55ad283aa400af464c76d713c07ad', '089515656056', 'Bandung', 'Bandung', 'Jawa Tengah', '40553', 1),
(56, 'chandrian tubagus', 'chandriant@gmail.com', '8d0f12ba984a7fbf8a9d1de2936fa922', '', '', '', '', '', 0),
(57, 'chandrian tubagus', 'chandriantubagus22@gmail.com', '495cfa94e37b1635ebef52a3813440e0', '088971203725', 'PPI G10/13', 'BANDUNG BARAT', 'Jawa Barat', '40553', 1);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_membership_payment`
--

CREATE TABLE `tbl_membership_payment` (
  `order_id` char(20) NOT NULL,
  `customer_name` varchar(50) DEFAULT NULL,
  `customer_email` varchar(50) DEFAULT NULL,
  `gross_amount` int(20) DEFAULT NULL,
  `payment_type` varchar(20) DEFAULT NULL,
  `transaction_time` datetime DEFAULT NULL,
  `settlement_time` datetime DEFAULT NULL,
  `bank` varchar(20) DEFAULT NULL,
  `va_numbers` varchar(50) DEFAULT NULL,
  `status_message` text DEFAULT NULL,
  `pdf_url` text DEFAULT NULL,
  `transaction_status` char(20) DEFAULT NULL,
  `status_code` char(3) DEFAULT NULL,
  `transaction_id` varchar(200) DEFAULT NULL,
  `finish_redirect_url` text DEFAULT NULL,
  `payment_code` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tbl_membership_payment`
--

INSERT INTO `tbl_membership_payment` (`order_id`, `customer_name`, `customer_email`, `gross_amount`, `payment_type`, `transaction_time`, `settlement_time`, `bank`, `va_numbers`, `status_message`, `pdf_url`, `transaction_status`, `status_code`, `transaction_id`, `finish_redirect_url`, `payment_code`) VALUES
('1525847851', 'mugi pa', 'mugipangestu41@gmail', 100000, 'bank_transfer', '2022-09-25 23:24:15', NULL, 'bca', '50463381814', 'Transaksi sedang diproses', 'https://app.sandbox.midtrans.com/snap/v1/transactions/35a58b1a-4a29-4326-957b-8baf39c57136/pdf', 'expire', '201', NULL, 'http://example.com?order_id=1525847851&status_code=201&transaction_status=pending', NULL),
('997109778', 'mugi pa', 'mugipangestu41@gmail', 100000, 'bank_transfer', '2022-09-25 23:39:07', NULL, 'bca', '50463977822', 'Success, transaction is found', 'https://app.sandbox.midtrans.com/snap/v1/transactions/0e626d89-c92f-4e69-bec0-15147e017008/pdf', 'settlement', '200', NULL, 'http://example.com?order_id=997109778&status_code=200&transaction_status=settlement', NULL),
('2097511621', 'mugi pa', 'mugipangestu41@gmail', 100000, 'bank_transfer', '2022-09-25 23:44:59', NULL, 'bca', '50463861538', 'Transaksi sedang diproses', 'https://app.sandbox.midtrans.com/snap/v1/transactions/10992517-2a9c-4b7e-9560-1bb2604532ac/pdf', 'settlement', '201', NULL, 'http://example.com?order_id=2097511621&status_code=201&transaction_status=pending', NULL),
('853637942', 'mugi pa', 'mugipangestu41@gmail', 100000, 'bank_transfer', '2022-09-25 23:50:28', NULL, 'bca', '50463479026', 'Transaksi sedang diproses', 'https://app.sandbox.midtrans.com/snap/v1/transactions/52767e50-4a99-48fd-a3aa-57b4033ce488/pdf', 'settlement', '201', NULL, 'http://example.com?order_id=853637942&status_code=201&transaction_status=pending', NULL),
('1531676564', 'mugi pa', 'mugipangestu41@gmail', 100000, 'bank_transfer', '2022-09-25 23:53:04', NULL, 'bca', '50463739510', 'Transaksi sedang diproses', 'https://app.sandbox.midtrans.com/snap/v1/transactions/42574e0f-87b3-4513-b634-476dcf5b2137/pdf', 'settlement', '201', NULL, 'http://example.com?order_id=1531676564&status_code=201&transaction_status=pending', NULL),
('720932206', 'mugi pa', 'mugipangestu41@gmail.com', 100000, 'bank_transfer', '2022-09-26 00:18:41', NULL, 'bca', '50463271707', 'Transaksi sedang diproses', 'https://app.sandbox.midtrans.com/snap/v1/transactions/269120c2-7a05-4b03-acbf-14f59855daba/pdf', 'settlement', '201', NULL, 'http://example.com?order_id=720932206&status_code=201&transaction_status=pending', NULL),
('1499085290', 'mugi pa2', 'mugipangestu42@gmail.com', 100000, 'bank_transfer', '2022-09-26 00:22:29', NULL, 'bca', '50463976053', 'Transaksi sedang diproses', 'https://app.sandbox.midtrans.com/snap/v1/transactions/4252be5e-5458-4aee-84c0-afaf4362558e/pdf', 'expire', '201', NULL, 'http://example.com?order_id=1499085290&status_code=201&transaction_status=pending', NULL),
('1581921331', 'mugi pa2', 'mugipangestu42@gmail.com', 100000, 'bank_transfer', '2022-09-26 00:23:30', NULL, 'bca', '50463475496', 'Success, transaction is found', 'https://app.sandbox.midtrans.com/snap/v1/transactions/08ebbc15-5cb7-46d6-a637-ff984135c932/pdf', 'settlement', '200', NULL, 'http://example.com?order_id=1581921331&status_code=200&transaction_status=settlement', NULL),
('1108095622', 'budi sudarsono', 'budi123@gmail.com', 100000, 'bank_transfer', '2022-10-11 14:30:39', NULL, 'bca', '50463476771', 'Success, transaction is found', 'https://app.sandbox.midtrans.com/snap/v1/transactions/32e015db-610c-4513-85ba-47ce15a6aa3b/pdf', 'settlement', '200', NULL, 'http://example.com?order_id=1108095622&status_code=200&transaction_status=settlement', NULL),
('861059083', 'Chandrian Tubagus', 'chandrian@gmail.com', 100000, 'bank_transfer', '2022-10-11 15:33:37', NULL, 'bca', '50463599333', 'Success, transaction is found', 'https://app.sandbox.midtrans.com/snap/v1/transactions/7288403a-d99a-4845-894e-1f0b823b4ac9/pdf', 'settlement', '200', NULL, 'http://example.com?order_id=861059083&status_code=200&transaction_status=settlement', NULL),
('201097834', 'Brianly', 'briannrf1@gmail.com', 100000, 'bank_transfer', '2022-10-12 00:01:07', NULL, 'bca', '50463274854', 'Success, transaction is found', 'https://app.sandbox.midtrans.com/snap/v1/transactions/72e8110b-347d-4ddd-bfb5-167a23a1a9a9/pdf', 'settlement', '200', NULL, 'http://example.com?order_id=201097834&status_code=200&transaction_status=settlement', NULL),
('1921949318', 'chandrian tubagus', 'chandriantubagus22@gmail.com', 100000, 'bank_transfer', '2022-10-17 15:45:13', NULL, 'bca', '50463763973', 'Success, transaction is found', 'https://app.sandbox.midtrans.com/snap/v1/transactions/99670ab2-3cf5-44f2-8a35-fb9382a031f6/pdf', 'settlement', '200', NULL, 'http://example.com?order_id=1921949318&status_code=200&transaction_status=settlement', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_order`
--

CREATE TABLE `tbl_order` (
  `order_id` int(11) NOT NULL,
  `cus_id` int(11) NOT NULL,
  `shipping_id` int(11) NOT NULL,
  `payment_id` int(11) NOT NULL,
  `order_total` float NOT NULL,
  `order_status` varchar(20) NOT NULL DEFAULT 'pending',
  `order_date` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_order`
--

INSERT INTO `tbl_order` (`order_id`, `cus_id`, `shipping_id`, `payment_id`, `order_total`, `order_status`, `order_date`) VALUES
(100, 47, 78, 102, 107, 'pending', '2017-12-31 17:20:20'),
(97, 48, 76, 99, 107, 'pending', '2017-12-31 17:01:39'),
(101, 49, 79, 103, 107, 'pending', '2022-09-17 16:56:52'),
(102, 50, 83, 104, 30.6, 'pending', '2022-09-25 07:48:29'),
(103, 50, 86, 105, 107, 'pending', '2022-09-25 17:21:30'),
(105, 53, 89, 107, 19277000, 'pending', '2022-10-11 07:31:46'),
(106, 54, 90, 108, 34984000, 'pending', '2022-10-11 08:34:01'),
(107, 54, 90, 109, 34984000, 'pending', '2022-10-11 08:34:55'),
(108, 54, 90, 110, 0, 'pending', '2022-10-11 08:34:57'),
(109, 54, 90, 111, 17492000, 'pending', '2022-10-11 08:35:15'),
(110, 54, 90, 112, 17492000, 'pending', '2022-10-11 08:35:17'),
(111, 55, 91, 113, 12137000, 'pending', '2022-10-11 17:02:23'),
(112, 54, 95, 114, 8751400, 'pending', '2022-11-18 10:52:42'),
(113, 54, 96, 115, 42234900, 'pending', '2022-11-18 11:15:30'),
(114, 54, 97, 116, 37501800, 'pending', '2022-11-21 04:24:37'),
(115, 54, 97, 117, 12507300, 'pending', '2022-11-21 05:05:03'),
(116, 54, 98, 118, 12507300, 'pending', '2022-11-21 05:13:35'),
(117, 54, 98, 119, 12754900, 'pending', '2022-11-21 05:34:51');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_order_details`
--

CREATE TABLE `tbl_order_details` (
  `order_details_id` int(12) NOT NULL,
  `order_id` int(11) NOT NULL,
  `product_id` int(5) NOT NULL,
  `product_name` varchar(100) NOT NULL,
  `product_price` float NOT NULL,
  `sales_quantity` int(3) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_order_details`
--

INSERT INTO `tbl_order_details` (`order_details_id`, `order_id`, `product_id`, `product_name`, `product_price`, `sales_quantity`) VALUES
(125, 100, 53, 'Samsung j7', 100, 1),
(119, 97, 53, 'Samsung j7', 100, 1),
(126, 101, 53, 'Samsung j7', 100, 1),
(127, 102, 60, 'Asus Mouse', 30, 1),
(128, 103, 53, 'Samsung j7', 100, 1),
(130, 105, 56, 'Apple Macbook Pro 13inch M1 2021', 18899000, 1),
(131, 106, 59, 'Apple iPhone 13 Pro', 17149000, 2),
(132, 109, 59, 'Apple iPhone 13 Pro', 17149000, 1),
(133, 111, 53, 'Apple iPad Pro 5 2021 11 inch M1 Chip 128GB', 11899000, 1),
(134, 112, 57, 'iPad Air 5 2022 M1 Chip 256GB', 8570000, 1),
(135, 113, 58, 'Apple iPhone 13', 13799000, 3),
(136, 114, 79, 'SAMSUNG Galaxy Z Flip 4 Cell Phone', 12495000, 3),
(137, 115, 79, 'SAMSUNG Galaxy Z Flip 4 Cell Phone', 12495000, 1),
(138, 116, 79, 'SAMSUNG Galaxy Z Flip 4 Cell Phone', 12495000, 1),
(139, 117, 79, 'SAMSUNG Galaxy Z Flip 4 Cell Phone', 12495000, 1);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_payment`
--

CREATE TABLE `tbl_payment` (
  `payment_id` int(11) NOT NULL,
  `payment_status` varchar(20) NOT NULL DEFAULT 'pending',
  `payment_type` varchar(20) NOT NULL,
  `payment_date_time` timestamp NOT NULL DEFAULT current_timestamp(),
  `payment_message` text NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_payment`
--

INSERT INTO `tbl_payment` (`payment_id`, `payment_status`, `payment_type`, `payment_date_time`, `payment_message`) VALUES
(102, 'pending', 'cash_on_delivery', '2017-12-31 17:20:20', ''),
(98, 'pending', 'cash_on_delivery', '2017-12-30 23:45:17', ''),
(97, 'pending', 'cash_on_delivery', '2017-12-30 23:36:17', ''),
(96, 'pending', 'cash_on_delivery', '2017-12-30 23:17:07', ''),
(103, 'pending', 'cash_on_delivery', '2022-09-17 16:56:52', ''),
(104, 'pending', 'cash_on_delivery', '2022-09-25 07:48:29', ''),
(105, 'pending', 'cash_on_delivery', '2022-09-25 17:21:30', ''),
(107, 'pending', 'cash_on_delivery', '2022-10-11 07:31:46', 'Tolong ditambahkan buble ya'),
(108, 'pending', 'cash_on_delivery', '2022-10-11 08:34:01', ''),
(109, 'pending', 'cash_on_delivery', '2022-10-11 08:34:55', ''),
(110, 'pending', 'cash_on_delivery', '2022-10-11 08:34:57', ''),
(111, 'pending', 'cash_on_delivery', '2022-10-11 08:35:15', ''),
(112, 'pending', 'cash_on_delivery', '2022-10-11 08:35:17', ''),
(113, 'pending', 'cash_on_delivery', '2022-10-11 17:02:23', ''),
(114, 'pending', 'cash_on_delivery', '2022-11-18 10:52:42', 'Sebelah toko masjid'),
(115, 'pending', 'cash_on_delivery', '2022-11-18 11:15:30', 'Sebelah warung bambu'),
(116, 'pending', 'cash_on_delivery', '2022-11-21 04:24:37', 'G10/13 RT/RW 02/28'),
(117, 'pending', 'cash_on_delivery', '2022-11-21 05:05:03', ''),
(118, 'pending', 'cash_on_delivery', '2022-11-21 05:13:35', ''),
(119, 'pending', 'cash_on_delivery', '2022-11-21 05:34:51', '');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_product`
--

CREATE TABLE `tbl_product` (
  `pro_id` int(11) NOT NULL,
  `pro_title` varchar(255) NOT NULL,
  `pro_desc` text NOT NULL,
  `pro_cat` tinyint(4) NOT NULL,
  `pro_sub_cat` tinyint(4) NOT NULL,
  `pro_brand` tinyint(4) NOT NULL,
  `pro_price` float NOT NULL,
  `pro_quantity` tinyint(4) NOT NULL,
  `pro_weight` int(11) NOT NULL,
  `pro_availability` tinyint(4) NOT NULL COMMENT 'status 1=instock, 2=outof stock, 3= up coming',
  `pro_status` tinyint(1) NOT NULL DEFAULT 1 COMMENT 'status=1 enable status=2 disable',
  `pro_image` text DEFAULT NULL,
  `top_product` tinyint(1) DEFAULT 0 COMMENT 'show top value=1 other wise value=0'
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_product`
--

INSERT INTO `tbl_product` (`pro_id`, `pro_title`, `pro_desc`, `pro_cat`, `pro_sub_cat`, `pro_brand`, `pro_price`, `pro_quantity`, `pro_weight`, `pro_availability`, `pro_status`, `pro_image`, `top_product`) VALUES
(53, 'Apple iPad Pro 5 2021 11 inch M1 Chip 128GB', '<p>Spesifikasi :<br>\r\nChip :<br>\r\nApple M1 chip<br>\r\n8-core CPU with 4 performance cores and 4 efficiency cores<br>\r\n8-core GPU<br>\r\n16-core Neural Engine<br>\r\n8GB RAM<br>\r\n<br>\r\nDisplay :<br>\r\nLiquid Retina display<br>\r\n11-inch (diagonal) LED backlit Multi?Touch display with IPS technology<br>\r\n2388-by-1668-pixel resolution at 264 pixels per inch (ppi)<br>\r\nProMotion technology<br>\r\nWide color display (P3)<br>\r\nTrue Tone display<br>\r\nFingerprint-resistant oleophobic coating<br>\r\nFully laminated display<br>\r\nAntireflective coating<br>\r\n1.8% reflectivity<br>\r\n600 nits max brightness<br>\r\n<br>\r\nSupports :<br>\r\n- Apple Pencil (2nd generation)<br>\r\n- Smart Keyboard<br>\r\n- Magic Keyboard</p>\r\n', 71, 33, 14, 11899000, 98, 1000, 1, 1, 'uploads/83b08898-c3f2-487c-a2bc-f2c46b51fe1f.jpg', 1),
(56, 'Apple Macbook Pro 13inch M1 2021', '<p> Apple M1 chip with 8core CPU, 8core GPU, and 16 core Neural Engine<br>\r\n• 8GB unified memory<br>\r\n• 512GB SSD storage<br>\r\n• Retina display with True Tone<br>\r\n• Magic Keyboard<br>\r\n• Touch Bar and Touch ID<br>\r\n• Two Thunderbolt / USB 4 ports</p>\r\n', 72, 33, 6, 18899000, 98, 2000, 1, 1, 'uploads/30606abc-edcc-4e8c-930b-09eb3099f42b.jpg', 1),
(57, 'iPad Air 5 2022 M1 Chip 256GB', '<p>Spesifikasi :<br>\r\nApple M1 8-Core CPU<br>\r\n8-Core GPU | 16-Core Neural Engine<br>\r\n10.9\" Liquid Retina Display<br>\r\n2360 x 1640 Screen Resolution (264 ppi)<br>\r\nWi-Fi 6 (802.11ax) | Bluetooth 5.0<br>\r\n12MP Front Camera with Center Stage<br>\r\n12MP Wide Rear Camera<br>\r\nUSB 3.1 Gen 2 Type-C Connector (10 Gb/s)<br>\r\niPadOS</p>\r\n', 71, 33, 14, 8570000, 98, 3000, 1, 1, 'uploads/103372a0-d541-46dd-8992-3017f66335f5.jpg', 1),
(58, 'Apple iPhone 13', '<p>Spesifikasi :<br>\r\n<br>\r\nJaringan GSM / HSPA / LTE / 5G<br>\r\nSistem Operasi iOS 15<br>\r\nProsesor Apple A15 Bionic (5 nm), Hexa-core (2x3.22 GHz Avalanche + 4xX.X GHz Blizzard)<br>\r\nGPU Apple GPU (4-core graphics)<br>\r\nRAM 4 GB<br>\r\nUkuran Layar 6.1 inch<br>\r\nTipe Layar Super Retina XDR OLED, HDR10, Dolby Vision, 800 nits (HBM), 1200 nits (peak)<br>\r\nResolusi Layar 1170 x 2532 pixels<br>\r\nKamera Belakang<br>\r\n12 MP, f/1.6, 26mm (wide), 1.7µm, dual pixel PDAF, sensor-shift OIS<br>\r\n12 MP, f/2.4, 120?, 13mm (ultrawide)<br>\r\n<br>\r\nKamera Depan<br>\r\n12 MP, f/2.2, 23mm (wide), 1/3.6\"<br>\r\nSL 3D, (depth/biometrics sensor)<br>\r\n<br>\r\nFitur Kamera<br>\r\nDual-LED dual-tone flash, HDR (photo/panorama)<br>\r\n<br>\r\nAudio Stereo speakers<br>\r\nWLAN Wi-Fi 802.11 a/b/g/n/ac/6, dual-band, hotspot<br>\r\nBluetooth 5.0, A2DP, LE<br>\r\nGPS Yes, with A-GPS, GLONASS, GALILEO, BDS, QZSS<br>\r\nSensor Face ID, accelerometer, gyro, proximity, compass, barometer, Siri natural language commands and dictation, Ultra Wideband (UWB) support<br>\r\nBaterai 3240 mAh<br>\r\nPengisian Daya<br>\r\nFast charging (23W, unofficial rating), 50% in 30 min (advertised)<br>\r\nUSB Power Delivery 2.0<br>\r\nMagSafe wireless charging 15W<br>\r\nQi magnetic fast wireless charging 7.5W<br>\r\n<br>\r\nSlot Memori Eksternal No<br>\r\nSIM Single Nano SIM + Esim<br>\r\nBerat 174 gr<br>\r\nDimensi 146.7 x 71.5 x 7.65 mm<br>\r\nLainnya<br>\r\nMaterial Glass front (Gorilla Glass), glass back (Gorilla Glass), aluminum fr</p>\r\n', 71, 33, 6, 13799000, 96, 3000, 1, 1, 'uploads/7ab96674-9602-4126-a552-ac8a385d39e4.jpg', 1),
(59, 'Apple iPhone 13 Pro', '<p>Spesifikasi :<br>\r\n<br>\r\nJaringan GSM / HSPA / LTE / 5G<br>\r\nSistem Operasi iOS 15<br>\r\nProsesor Apple A15 Bionic (5 nm), Hexa-core (2x3.22 GHz Avalanche + 4xX.X GHz Blizzard)<br>\r\nGPU Apple GPU (5-core graphics)<br>\r\nRAM 6 GB<br>\r\nUkuran Layar 6.1 inch<br>\r\nTipe Layar Super Retina XDR OLED, 120Hz, HDR10, Dolby Vision, 1000 nits (HBM), 1200 nits (peak)<br>\r\nResolusi Layar 1170 x 2532 pixels<br>\r\nKamera Belakang<br>\r\n12 MP, f/1.5, 26mm (wide), 1.9µm, dual pixel PDAF, sensor-shift OIS<br>\r\n12 MP, f/2.8, 77mm (telephoto), PDAF, OIS, 3x optical zoom<br>\r\n12 MP, f/1.8, 13mm, 120? (ultrawide), PDAF<br>\r\n<br>\r\nKamera Depan<br>\r\n12 MP, f/2.2, 23mm (wide), 1/3.6\"<br>\r\n<br>\r\nFitur Kamera<br>\r\nDual-LED dual-tone flash, HDR (photo/panorama)<br>\r\n<br>\r\nAudio Stereo speakers<br>\r\nWLAN Wi-Fi 802.11 a/b/g/n/ac/6, dual-band, hotspot<br>\r\nBluetooth 5.0, A2DP, LE<br>\r\nGPS Yes, with A-GPS, GLONASS, GALILEO, BDS, QZSS<br>\r\nSensor Face ID, accelerometer, gyro, proximity, compass, barometer, Siri natural language commands and dictation, Ultra Wideband (UWB) support<br>\r\nBaterai 3095 mAh<br>\r\nPengisian Daya<br>\r\nFast charging (23W, unofficial rating), 50% in 30 min (advertised)<br>\r\nUSB Power Delivery 2.0<br>\r\nMagSafe wireless charging 15W<br>\r\nQi magnetic fast wireless charging 7.5W<br>\r\n<br>\r\nSlot Memori Eksternal No<br>\r\nSIM Single Nano SIM + Esim<br>\r\nBerat 203 gr<br>\r\nDimensi 146.7 x 71.5 x 7.65 mm<br>\r\nLainnya<br>\r\nMaterial Glass front (Gorilla Glass),</p>\r\n', 71, 33, 14, 17149000, 96, 500, 1, 1, 'uploads/3c0f8ca1-3ef7-48d7-9148-e29545c514b4.jpg', 1),
(79, 'SAMSUNG Galaxy Z Flip 4 Cell Phone', '<p>Spesifikasi :<br>\r\n- Processor : Snapdragon 8+ Gen 1 (4nm)<br>\r\n- Main : \"6.7\" FHD+ Dynamic AMOLED 2X Infinity Flex Display with 1-120Hz adaptive refresh rate<br>\r\n- Cover : 1.9\" Super AMOLED 60Hz<br>\r\n- Rear Camera Resolution : 12 MP Ultra Wide Camera with OIS Super Clear Glass (GorillaDX)<br>\r\n- Front Camera Resolution : 10 MP<br>\r\n- Cover Camera Resolution : -<br>\r\n- Video Resolution : UHD 4K (3840 x 2160) @60fps<br>\r\n- RAM : 8GB<br>\r\n- ROM : 128GB / 156GB / 512GB<br>\r\n- Network Type : 5G<br>\r\n- Unfolded : 165.2 x 71.9 x 6.9 mm<br>\r\n- Folded : 84.9 x 71.9 x 17.1/15.9 mm<br>\r\n- Weight : 187 g<br>\r\n- Battery Capacity : 3.700 mAh<br>\r\n- Water Resistance : IPX8 Water Resistance</p>\r\n', 71, 0, 15, 12495000, 27, 0, 1, 1, 'uploads/samsung_flip_41.jpg', 1);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_shipping`
--

CREATE TABLE `tbl_shipping` (
  `shipping_id` int(11) NOT NULL,
  `cus_id` int(11) NOT NULL,
  `cus_name` varchar(55) NOT NULL,
  `cus_email` varchar(55) NOT NULL,
  `cus_password` varchar(32) NOT NULL,
  `cus_mobile` varchar(14) NOT NULL,
  `cus_address` text NOT NULL,
  `cus_city` varchar(55) NOT NULL,
  `cus_country` varchar(55) NOT NULL,
  `cus_zip` varchar(5) NOT NULL,
  `cus_fax` varchar(50) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_shipping`
--

INSERT INTO `tbl_shipping` (`shipping_id`, `cus_id`, `cus_name`, `cus_email`, `cus_password`, `cus_mobile`, `cus_address`, `cus_city`, `cus_country`, `cus_zip`, `cus_fax`) VALUES
(75, 48, 'Sm shuvo', 'sumonsarker080@gmail.com', '', '1611606484', 'Sylhet City', 'Mymensingh', 'Bangladesh', '2220', ''),
(78, 47, 'Trailer', 'Traileralltimesu@gmail.com', '', '1611606484', 'Sylhet City', 'Mymensingh', 'UK', '2220', ''),
(79, 49, 'Mugi Pangestu', 'mugi@gmail.com', '', '08993100016', 'cikandang', 'Bandung Barat', 'Jawa Barat', '40552', ''),
(80, 0, 'Mugi Pangestu', 'mugi@gmail.com', '', '08993100016', 'cikandang', 'Bandung Barat', 'Jawa Barat', '40552', '40552'),
(81, 50, 'mugi pa', 'mugipangestu41@gmail.com', '', '89931000160', 'cikandang', 'Bandung Barat', 'Jawa Barat', '40552', ''),
(82, 51, 'mugi pa2', 'mugipangestu42@gmail.com', '', '8993100016', 'cikandang', 'Bandung Barat', 'Jawa Barat', '40552', ''),
(83, 0, 'young', 'young@gmail.com', '', '08993100016', 'asdasdd', 'asdasd', 'Riau', '40552', '4055212312'),
(84, 50, 'mugi pa', 'mugipangestu41@gmail.com', '', '89931000160', 'cikandang', 'Bandung Barat', '-- Provinsi --', '40552', ''),
(85, 50, 'mugi pa', 'mugipangestu41@gmail.com', '', '89931000160', 'cikandang', 'Bandung Barat', '-- Provinsi --', '40552', ''),
(86, 0, 'mugi', 'mugipangestu41@gmail.com', '', '8993100016', 'cikandang', 'Bandung Barat', 'Bengkulu', '40552', '4055212312'),
(88, 51, 'mugi pa2', 'mugipangestu42@gmail.com', '', '8993100016', 'cikandang', 'Bandung Barat', '-- Provinsi --', '40552', ''),
(89, 53, 'budi sudarsono', 'budi123@gmail.com', '', '088971203725', 'PPI G10/13', 'BANDUNG BARAT', 'Jawa Barat', '40553', ''),
(90, 54, 'Chandrian Tubagus', 'chandrian@gmail.com', '', '088971203725', 'PPI G10/13', 'Bandung Barat', 'Jawa Barat', '40553', ''),
(91, 55, 'Brianly', 'briannrf1@gmail.com', '', '089515656056', 'Bandung', 'Bandung', 'Jawa Tengah', '40553', ''),
(92, 57, 'chandrian tubagus', 'chandriantubagus22@gmail.com', '', '088971203725', 'PPI G10/13', 'BANDUNG BARAT', 'Jawa Barat', '40553', ''),
(93, 57, 'chandrian tubagus', 'chandriantubagus22@gmail.com', '', '088971203725', 'PPI G10/13', 'BANDUNG BARAT', 'Jawa Barat', '40553', ''),
(94, 57, 'chandrian tubagus', 'chandriantubagus22@gmail.com', '', '088971203725', 'PPI G10/13', 'BANDUNG BARAT', 'Jawa Barat', '40553', ''),
(95, 0, 'chandrian tubagus', 'chandrian@gmail.com', '', '088971203725', 'PPI G10/13', 'BANDUNG BARAT', 'Jawa Barat', '40553', ''),
(96, 0, 'chandrian tubagus', 'chandrian@gmail.com', '', '088971203725', 'PPI G10/13', 'BANDUNG BARAT', 'Jawa Barat', '40553', ''),
(97, 54, 'Chandrian Tubagus', 'chandrian@gmail.com', '', '088971203725', 'PPI G10/13', 'Bandung Barat', 'Jawa Barat', '40553', ''),
(98, 54, 'Chandrian Tubagus', 'chandrian@gmail.com', '', '088971203725', 'PPI G10/13', 'Bandung Barat', '-- Provinsi --', '40553', '');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_sub_category`
--

CREATE TABLE `tbl_sub_category` (
  `sub_cat_id` int(11) NOT NULL,
  `sub_category_name` varchar(255) NOT NULL,
  `category_sub_id` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_sub_category`
--

INSERT INTO `tbl_sub_category` (`sub_cat_id`, `sub_category_name`, `category_sub_id`) VALUES
(29, 'ASUS', 76),
(30, 'Symphony', 71),
(28, 'Women Watches', 73),
(26, 'Hp 22er', 74),
(27, 'Men watch', 73),
(25, 'Bloody', 75),
(33, 'Asus', 75);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_user`
--

CREATE TABLE `tbl_user` (
  `user_id` int(11) NOT NULL,
  `username` varchar(30) NOT NULL,
  `user_email` varchar(255) NOT NULL,
  `user_password` varchar(255) NOT NULL,
  `user_role` tinyint(3) NOT NULL,
  `user_membership` tinyint(4) NOT NULL,
  `user_status` tinyint(3) NOT NULL,
  `user_brand` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_user`
--

INSERT INTO `tbl_user` (`user_id`, `username`, `user_email`, `user_password`, `user_role`, `user_membership`, `user_status`, `user_brand`) VALUES
(1, 'csesumonpro', 'admin@gmail.com', '$2y$10$jC5vMlVtrPNSZNZr4cpJ.O4x.pvMMhRMkLV/NuOthbiVlttTHmsTi', 1, 0, 1, 0),
(24, 'chandrian tubagus', 'chandrian@gmail.com', '$2y$10$nunITb8GhMnDEpepFfm3ZecsmS4/I4gIY0lq/ITzk1.WeGjjTg9s6', 1, 0, 1, 0),
(25, 'apple company', 'apple@gmail.com', '$2y$10$Pbfs4wXd58KLL/8oTaf1he1re0K0j0tuCWQQnJ23p84h3uaD.mQ7C', 2, 0, 1, 14),
(30, 'asus inc', 'asus@gmail.com', '$2y$10$PSAYsiO3xc2ukcWMO82fVufjeeLR1ch33EkO/k7jNvMHqS4Getr8G', 2, 0, 1, 6),
(29, 'xiaomi inc', 'xiaomi@gmail.com', '$2y$10$1/3KyHDMYXl.xw89zTFNw.hXSHxgNmIP67AQvbjpBHfZqfyRLuc02', 2, 0, 1, 17),
(28, 'hp company', 'hp@gmail.com', '$2y$10$5SWa8Szmul5ezfpB.nvoZe37ZvUbyZx4lxJ.D64D5qg2PZvJzhTIy', 2, 0, 1, 16),
(31, 'Apple 2', 'apple2@gmail.com', '$2y$10$XN3t6Uu.0fUc1SJb7nPdoO2cifesWHOb.cXCXu4vVxFlHD6TL45.K', 2, 0, 1, 14),
(32, 'The Samsung Group', 'samsung@gmail.com', '$2y$10$XN3t6Uu.0fUc1SJb7nPdoO2cifesWHOb.cXCXu4vVxFlHD6TL45.K', 2, 0, 1, 15),
(33, 'Naufal Nur', 'naufalnur@gmail.com', '$2y$10$lkv9qiE8pXvgug7TRovcUuWtwVgwF2y0cWnlV0TdYXSkX8dFFJc3C', 1, 0, 1, 0);

-- --------------------------------------------------------

--
-- Stand-in structure for view `view_brand_dsb`
-- (See below for the actual view)
--
CREATE TABLE `view_brand_dsb` (
`brand_id` int(11)
,`brand_name` varchar(255)
,`user_brand` int(11)
);

-- --------------------------------------------------------

--
-- Structure for view `view_brand_dsb`
--
DROP TABLE IF EXISTS `view_brand_dsb`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `view_brand_dsb`  AS SELECT `tbl_brand`.`brand_id` AS `brand_id`, `tbl_brand`.`brand_name` AS `brand_name`, `tbl_user`.`user_brand` AS `user_brand` FROM (`tbl_brand` join `tbl_user`) WHERE `tbl_brand`.`brand_id` = `tbl_user`.`user_brand` ORDER BY `tbl_brand`.`brand_name` ASC  ;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `tbl_brand`
--
ALTER TABLE `tbl_brand`
  ADD PRIMARY KEY (`brand_id`);

--
-- Indexes for table `tbl_category`
--
ALTER TABLE `tbl_category`
  ADD PRIMARY KEY (`category_id`);

--
-- Indexes for table `tbl_customer`
--
ALTER TABLE `tbl_customer`
  ADD PRIMARY KEY (`cus_id`);

--
-- Indexes for table `tbl_order`
--
ALTER TABLE `tbl_order`
  ADD PRIMARY KEY (`order_id`);

--
-- Indexes for table `tbl_order_details`
--
ALTER TABLE `tbl_order_details`
  ADD PRIMARY KEY (`order_details_id`);

--
-- Indexes for table `tbl_payment`
--
ALTER TABLE `tbl_payment`
  ADD PRIMARY KEY (`payment_id`);

--
-- Indexes for table `tbl_product`
--
ALTER TABLE `tbl_product`
  ADD PRIMARY KEY (`pro_id`);

--
-- Indexes for table `tbl_shipping`
--
ALTER TABLE `tbl_shipping`
  ADD PRIMARY KEY (`shipping_id`);

--
-- Indexes for table `tbl_sub_category`
--
ALTER TABLE `tbl_sub_category`
  ADD PRIMARY KEY (`sub_cat_id`);

--
-- Indexes for table `tbl_user`
--
ALTER TABLE `tbl_user`
  ADD PRIMARY KEY (`user_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `tbl_brand`
--
ALTER TABLE `tbl_brand`
  MODIFY `brand_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT for table `tbl_category`
--
ALTER TABLE `tbl_category`
  MODIFY `category_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=78;

--
-- AUTO_INCREMENT for table `tbl_customer`
--
ALTER TABLE `tbl_customer`
  MODIFY `cus_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=58;

--
-- AUTO_INCREMENT for table `tbl_order`
--
ALTER TABLE `tbl_order`
  MODIFY `order_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=118;

--
-- AUTO_INCREMENT for table `tbl_order_details`
--
ALTER TABLE `tbl_order_details`
  MODIFY `order_details_id` int(12) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=140;

--
-- AUTO_INCREMENT for table `tbl_payment`
--
ALTER TABLE `tbl_payment`
  MODIFY `payment_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=120;

--
-- AUTO_INCREMENT for table `tbl_product`
--
ALTER TABLE `tbl_product`
  MODIFY `pro_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=80;

--
-- AUTO_INCREMENT for table `tbl_shipping`
--
ALTER TABLE `tbl_shipping`
  MODIFY `shipping_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=99;

--
-- AUTO_INCREMENT for table `tbl_sub_category`
--
ALTER TABLE `tbl_sub_category`
  MODIFY `sub_cat_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=34;

--
-- AUTO_INCREMENT for table `tbl_user`
--
ALTER TABLE `tbl_user`
  MODIFY `user_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=34;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
