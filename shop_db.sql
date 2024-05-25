-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 21, 2024 at 01:29 PM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `shop_db`
--

-- --------------------------------------------------------

--
-- Table structure for table `cart`
--

CREATE TABLE `cart` (
  `id` int(100) NOT NULL,
  `user_id` int(100) NOT NULL,
  `name` varchar(100) NOT NULL,
  `price` int(100) NOT NULL,
  `quantity` int(100) NOT NULL,
  `image` varchar(100) NOT NULL,
  `writer` varchar(100) DEFAULT NULL,
  `year` year(4) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `cart`
--

INSERT INTO `cart` (`id`, `user_id`, `name`, `price`, `quantity`, `image`, `writer`, `year`) VALUES
(68, 0, 'Modern Architecture', 150000, 1, 'history_of_modern_architecture.jpg', 'Richard Phillips', '1977');

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `id` int(100) NOT NULL,
  `user_id` int(100) NOT NULL,
  `name` varchar(100) NOT NULL,
  `number` varchar(12) NOT NULL,
  `email` varchar(100) NOT NULL,
  `method` varchar(50) NOT NULL,
  `address` varchar(500) NOT NULL,
  `total_products` varchar(1000) NOT NULL,
  `total_price` int(100) NOT NULL,
  `placed_on` varchar(50) NOT NULL,
  `payment_status` varchar(20) NOT NULL DEFAULT 'pending'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `orders`
--

INSERT INTO `orders` (`id`, `user_id`, `name`, `number`, `email`, `method`, `address`, `total_products`, `total_price`, `placed_on`, `payment_status`) VALUES
(16, 2, 'Afnan A', '08970589400', 'aafn@gmail.com', 'paypal', 'flat no. 4, Kismosyo, Boyolali, Indonesia - 123456', ', Modern Architecture (1) , Darknet (1) , Free Fall (1) , Bash and Lucy  (1) ', 350000, '12-May-2024', 'completed'),
(17, 2, 'Envry ', '908237623', 'envry@gmail.com', 'credit card', 'flat no. 7, Banyuanar, Surakarta, Indonesia - 123456', ', Radical Gardening (1) , Modern Architecture (1) , Holy Ghost (1) ', 470000, '12-May-2024', 'completed'),
(19, 2, 'honeycomb', '534987106', 'comb@gmail.com', 'cash on delivery', 'flat no. 45, Kismosyo, Surakarta, Center Java, Indonesia - 768109', ', The Apocalypse of Lloyd (1) , Radical Gardening (1) , Modern Architecture (1) , Bash and Lucy  (1) , Clever Lands (1) ', 550000, '12-May-2024', 'completed'),
(20, 2, 'afnan', '8970589400', 'afnan@gmail.com', 'credit card', 'flat no. 0, 1, Surakarta, Center java, Indonesia - 123456', ', Radical Gardening (1) , Modern Architecture (1) , Darknet (1) ', 420000, '13-May-2024', 'completed'),
(21, 2, 'Envry', '8970589400', 'envry@gmail.com', 'credit card', 'flat no. 5, Teras, Boyolali, Center Java, Indonesia - 123456', ', Mushoku Tensei Vol.17 (1) , Mushoku Tensei Vol.18 (1) ', 360000, '18-May-2024', 'pending'),
(22, 2, 'Afnan', '8970589400', 'afnan@yahoo.com', 'credit card', 'flat no. 1, sawahan, boyolali, center java, indonesia - 234567', ', Bumi Manusia (1) , Funiculi Funicula (1) , Funiculi Funicula 2 (1) ', 262000, '19-May-2024', 'pending'),
(23, 2, 'Albini', '620752024', 'albini@gmail.com', 'credit card', 'flat no. 5, 24, Chicago, Illinois, United States of America - 070524', ', Pukul Setengah Lima (1) ', 89000, '19-May-2024', 'pending'),
(25, 2, 'Naufal', '123456789', 'naufall@gmail.com', 'credit card', 'flat no. 5, Banyuanyar, Surakarta, Central Java, Indonesia - 123456', ', Pukul Setengah Lima (1) , Bocchi The Rock: Vol .1 (1) , Blue Lock: Vol.11 (2) ', 224000, '21-May-2024', 'completed');

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `id` int(100) NOT NULL,
  `name` varchar(100) NOT NULL,
  `price` int(100) NOT NULL,
  `image` varchar(100) NOT NULL,
  `year` year(4) NOT NULL,
  `writer` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `name`, `price`, `image`, `year`, `writer`) VALUES
(16, 'Bumi Manusia', 122000, 'bumi-manusia.jpg', '2015', 'Pramoedya Ananta Toer'),
(17, 'Pada Sebuah Kapal', 99000, 'pada sebuah kapal.jpg', '2023', 'N.H Dini'),
(18, 'Laut Bercerita', 109000, 'laut bercerita.JPG', '2017', 'Leila S. Chudori'),
(19, 'Laskar Pelangi', 89900, 'Laskar-Pelangi.jpg', '2005', 'Andrea Hirata'),
(20, 'Pukul Setengah Lima', 89000, 'pukul setengah limajpg.jpg', '2023', 'Rintik Sedu'),
(21, 'Bumi', 109000, 'bumi.jpg', '2014', 'Tere Liye'),
(22, 'Bulan', 105000, 'bulan.jpg', '2015', 'Tere Liye'),
(23, 'Surat Kopi', 88000, '9786020515823_surat_kopi.jpg', '2019', 'Joko Pinurbo'),
(24, 'Perahu Kertas', 50000, 'perahukertas.jpg', '2016', 'Dewi \"Dee\" Lestari'),
(25, 'Cantik Itu Luka', 150000, 'cantikitu.jpg', '2018', 'Eka Kurniawan'),
(26, 'Panggil Aku Kartini Saja', 90000, 'PANGGIL-AKU-KARTINI-SAJA-ed.jpg', '2015', 'Pramoedya Ananta Toer'),
(27, 'Funiculi Funicula', 70000, 'Funiculi_Funicula_cov.jpg', '2015', 'Toshikazu Kawguchi'),
(31, 'Funiculi Funicula 2', 70000, 'funicula2.jpg', '2022', 'Toshikazu Kawguchi'),
(32, 'Atomic Habit', 128000, 'Atomic_Habit.jpg', '2018', 'James Clear'),
(33, 'Psychology of Money', 85000, 'psychology_of_money.jpg', '2020', 'Morgan Housel'),
(34, 'Seni Untuk Bersikap Bodo Amat', 78000, 'idgaf.png', '2016', 'Mark Manson'),
(35, 'Filosofi Teras', 98000, 'teras.jpg', '2018', 'Henry Manampiring'),
(36, 'Melangkah', 93000, 'Melangkah_UV_Spot_R4-1.jpg', '2020', 'JS Khairen'),
(38, 'Mushoku Tensei Vol.17', 180000, 'IMG_20240514_074039.jpg', '2022', 'Rifujin na Magonote'),
(39, 'Mushoku Tensei Vol.18', 180000, 'IMG_20240514_073545_431.jpg', '2022', 'Rifujin na Magonote'),
(40, 'To Kill A Mockingbird', 200000, 'tokill.webp', '1960', 'Harper Lee'),
(41, 'Court of Shadows', 190000, '122753134.jpg', '2018', 'C.N Crawford'),
(42, 'Under The Oak Tree S2', 50000, 'IMG_20240514_075007_323.jpg', '2022', 'Suji Kim'),
(43, 'Shadow Slave', 950000, 'IMG_20240514_075022_997.jpg', '2022', 'Guiltythree'),
(44, 'You Cant See The Snow', 300000, 'IMG_20240514_075055_234.jpg', '2024', 'Rokudo Ningen'),
(45, 'Why Series: The Universe', 119000, 'IMG_9571.JPG', '2008', 'Kwang Woong Lee '),
(46, 'Why Series: The Sea', 95000, 'IMG_9570.JPG', '2020', 'Kwang Woong Lee'),
(47, 'Blue Lock: Vol .10', 45000, 'bluelock.jpg', '2020', 'Muneyuki Kaneshiro'),
(48, 'Bocchi The Rock: Vol .1', 45000, 'bocchi.jpeg', '2019', 'Aki Hamaji'),
(49, 'Yotsuba&! 1', 50000, 'yotsuba.jpg', '2023', 'Kiyohiko Azuma'),
(50, 'Berserk Deluxe: Vol.1', 450000, 'berserk.webp', '1990', 'Kentaro Miura'),
(51, 'Stitches', 250000, 'junji.webp', '2024', 'Junji ito'),
(52, 'Gyo', 290000, 'junji1.webp', '2001', 'Junji Ito'),
(53, 'Kaguya-Sama: Love is War', 175000, 'loveiswar.jpg', '2018', 'Aka Akasaka'),
(54, 'Re: Zero Vol. 24', 210000, 'rezero.jpg', '2024', 'Tappei Nagatsuki'),
(55, 'Classroom of The Elite; Year 2 Vol. 8', 180000, 'cote2.jpg', '2024', 'Syougo Kinugasa'),
(56, 'Toradora!', 200000, 'toradora.jpg', '2016', 'Yuyuko Takemiya'),
(57, 'Darknet ', 310000, 'darknet.jpg', '2015', 'Matthew Mather'),
(58, 'Free Fall', 90000, 'freefall.jpg', '2015', 'Peter Cawdron'),
(59, 'The Apocalypse of Lloyd', 280000, 'lloyd.jpg', '2016', 'Mike Sauve'),
(60, 'Radical Gardening', 600000, 'radical_gardening.jpg', '2011', 'George McKay'),
(61, 'The Moonshiners Daughter', 175000, 'moonshiner.webp', '2019', 'Donna Everhart'),
(62, 'The Richest Man In Babylon', 110000, 'richestman.webp', '1926', 'George S. Clason'),
(63, 'The Spanish Daughter', 160000, 'spanishdaughter.webp', '2021', 'Lorena Hughes'),
(64, 'The Silent Patient', 140000, 'silentpatient.webp', '2019', 'Alex Michaelides'),
(65, 'The Nurses Secret', 145000, 'nursesecret.webp', '2022', 'Amanda Skenandore'),
(66, 'Animal Farm', 60000, 'Animal_Farm_cov.jpg', '1945', 'George Orwell'),
(67, 'Fight Club', 220000, 'fightclub.jpg', '1996', 'Chuck Palahniuk'),
(68, 'Menjadi Pribadi Tahan Banting', 55000, 'menjadi_pribadi_tahan_banting.jpg', '2021', 'Haidar Musyafa'),
(69, 'Cerita Bergambar 25 Nabi & Rasul', 100000, '9786023780044_Cerita-Bergambar-25-NabiRasul.jpg', '2015', 'Irsyad Zulfahmi'),
(70, 'Blue Lock: Vol.11', 45000, 'bluelock11.jpg', '2023', 'Muneyuki Kaneshiro'),
(71, 'Keluarga Super Irit Keliling Dunia - Amazon', 100000, 'keluarga.jpg', '2017', 'Kwon Can Ho'),
(72, 'Keluarga Super Irit Keliling Dunia - Inggris', 100000, 'keluarga2.jpg', '2017', 'Kwon Can Ho'),
(73, 'Keluarga Super Irit Keliling Dunia - Prancis', 100000, 'keluarga3.jpg', '2017', 'Kwon Can Ho');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(100) NOT NULL,
  `name` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `password` varchar(100) NOT NULL,
  `user_type` varchar(20) NOT NULL DEFAULT 'user'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `password`, `user_type`) VALUES
(1, 'Adminn', 'min@gmail.com', 'eb62f6b9306db575c2d596b1279627a4', 'admin'),
(2, 'user', 'user@gmail.com', 'f4d87ed3b0dbf9c79746d00cedbb5e78', 'user'),
(4, 'admin1', 'admin1@gmail.com', '2cad8fa47bbef282badbb8de5374b894', 'admin'),
(5, 'user01', 'user01@gmail.com', '6ad14ba9986e3615423dfca256d04e3f', 'user');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `cart`
--
ALTER TABLE `cart`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `cart`
--
ALTER TABLE `cart`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=104;

--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=74;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
