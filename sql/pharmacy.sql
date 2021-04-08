-- phpMyAdmin SQL Dump
-- version 5.0.3
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jan 02, 2021 at 07:53 AM
-- Server version: 10.4.14-MariaDB
-- PHP Version: 7.4.11

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `pharmacy`
--

-- --------------------------------------------------------

--
-- Table structure for table `adminlogin`
--

CREATE TABLE `adminlogin` (
  `id` int(100) NOT NULL,
  `username` varchar(10) DEFAULT NULL,
  `password` varchar(10) DEFAULT NULL,
  `email` varchar(50) DEFAULT NULL,
  `secque` varchar(50) DEFAULT NULL,
  `secans` varchar(50) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `adminlogin`
--

INSERT INTO `adminlogin` (`id`, `username`, `password`, `email`, `secque`, `secans`) VALUES
(1, 'admin', '12345', 'admin@gmail.com', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `billing`
--

CREATE TABLE `billing` (
  `firstname` varchar(100) NOT NULL,
  `email` varchar(255) NOT NULL,
  `address` text NOT NULL,
  `city` varchar(255) NOT NULL,
  `state` varchar(10) NOT NULL,
  `zip` int(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `billing`
--

INSERT INTO `billing` (`firstname`, `email`, `address`, `city`, `state`, `zip`) VALUES
('ashvina', 'aashvina2001@gmail.com', '99,palace road', 'madurai', 'tamilnadu', 625001),
('ashvina', 'aashvina2001@gmail.com', '99,palace road', 'madurai', 'tamilnadu', 625001);

-- --------------------------------------------------------

--
-- Table structure for table `booking`
--

CREATE TABLE `booking` (
  `id` int(100) NOT NULL,
  `username` varchar(100) DEFAULT NULL,
  `item` varchar(100) NOT NULL,
  `price` varchar(100) NOT NULL,
  `total` varchar(100) NOT NULL,
  `quantity` varchar(100) NOT NULL,
  `date` date NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `booking`
--

INSERT INTO `booking` (`id`, `username`, `item`, `price`, `total`, `quantity`, `date`) VALUES
(16, 'priyanka', 'Medicine 2', '150', '150', '1', '2019-05-03'),
(17, 'priyanka', 'D&D Baby Soap', '70', '140', '2', '2019-05-03'),
(18, 'priyanka', 'Head and Shoulders Shampoo', '130', '130', '1', '2019-05-03'),
(20, 'Soundarya', 'Head and Shoulders Shampoo', '130', '260', '2', '2019-05-04'),
(21, 'Soundarya', 'Medicine 2', '150', '150', '1', '2019-05-04'),
(22, 'Soundarya', 'Johnsons Baby Lotion', '180', '180', '1', '2019-05-04'),
(23, 'Soundarya', 'Johnsons Baby Powder', '100', '100', '1', '2019-05-06'),
(24, 'Soundarya', 'Medicine 2', '150', '300', '2', '2019-05-06'),
(25, 'Soundarya', 'Head and Shoulders Shampoo', '130', '130', '1', '2019-05-06'),
(26, 'Soundarya', 'Garnier Face Wash', '90', '90', '1', '2019-05-11'),
(27, 'Soundarya', 'Tresemme Shampoo', '140', '140', '1', '2019-05-11'),
(28, 'Soundarya', 'Johnsons Baby Soap', '100', '100', '1', '2019-05-11'),
(29, 'Soundarya', 'Tresemme Shampoo', '140', '140', '1', '2020-10-29'),
(30, 'Soundarya', 'Pigeon Baby Transparent Soap', '100', '100', '1', '2020-10-28'),
(31, 'Soundarya', 'Dove Mens Face Wash', '100', '100', '1', '2020-10-29'),
(32, 'Soundarya', 'Dr.Vaidyas LivitUp Capsules', '70', '70', '1', '2020-10-29'),
(33, 'Soundarya', 'Dr.Vaidyas LivitUp Capsules', '70', '70', '1', '2020-10-29'),
(34, 'Soundarya', 'Dr.Vaidyas LivitUp Capsules', '70', '70', '1', '2020-10-30'),
(35, 'Soundarya', 'EATRITE CORN FLAKES PLAIN 500GM\r\n', '130', '260', '2', '2020-10-31'),
(36, 'Soundarya', 'HORLICKS GROWTH PLUS VANILLA REFILL 200GM\r\n', '150', '150', '1', '2020-11-01'),
(37, 'Soundarya', 'AVELIA NEEM HAND WASH 250ML', '55', '55', '1', '2020-11-01'),
(38, 'Soundarya', 'CLOTH MASK MODEL-1', '40', '40', '1', '2020-11-01'),
(39, 'aashvina', 'HORLICKS GROWTH PLUS VANILLA REFILL 200GM\r\n', '150', '150', '1', '2020-11-01'),
(40, 'aashvina', 'HORLICKS JUNIOR JAR 500GM\r\n', '5', '5', '1', '2020-11-01'),
(41, 'aashvina', 'HIMALAYA ARJUNA CAP 60S', '65', '65', '1', '2020-11-01'),
(42, 'aashvina', 'ACCU-CHEK ACTIVE STRIPS 50S\r\n', '55', '55', '1', '2020-11-02'),
(43, 'aashvina', 'ACCU-CHEK ACTIVE STRIPS 50S\r\n', '55', '55', '1', '2020-11-01'),
(44, 'aashvina', 'SUGAR FREE GOLD 500S PELLETS TABLET', '250', '250', '1', '2020-11-01'),
(45, 'aashvina', 'Garnier Face Wash', '90', '90', '1', '2020-11-02'),
(46, 'aashvina', 'ACCU-CHEK ACTIVE STRIPS 50S\r\n', '55', '55', '1', '2020-11-02'),
(47, 'aashvina', 'HIMALAYA ARJUNA CAP 60S', '65', '65', '1', '2020-11-02'),
(48, 'aashvina', 'HORLICKS GROWTH PLUS VANILLA REFILL 200GM\r\n', '150', '150', '1', '2020-11-02'),
(49, 'nive', 'BECOZYME C FORTE TABLET', '22', '44', '2', '2020-11-02'),
(50, 'aashvina', 'HORLICKS JUNIOR JAR 500GM\r\n', '5', '5', '1', '2020-11-02'),
(51, 'aashvina', 'HORLICKS JUNIOR JAR 500GM\r\n', '5', '5', '1', '2020-11-02'),
(52, 'aashvina', 'HORLICKS GROWTH PLUS VANILLA REFILL 200GM\r\n', '150', '750', '5', '2020-11-03'),
(53, 'Soundarya', 'CETAPHIL BABY DAILY LOTION 400ML\r\n', '390', '390', '1', '2020-11-10'),
(54, 'sri', 'ACCU-CHEK ACTIVE STRIPS 50S\r\n', '55', '55', '1', '2020-11-11'),
(55, 'sri', 'BOOST BOTTLE 500GM\r\n', '150', '150', '1', '2020-11-11'),
(56, 'aashvina', 'HORLICKS GROWTH PLUS VANILLA REFILL 200GM\r\n', '150', '150', '1', '2020-11-11'),
(57, 'nithin', 'CLOTH MASK MODEL-1', '40', '80', '2', '2020-11-11'),
(58, 'aash', 'HORLICKS GROWTH PLUS VANILLA REFILL 200GM\r\n', '150', '450', '3', '2020-11-18'),
(59, 'aash', 'SUGAR FREE GOLD 500S PELLETS TABLET', '250', '250', '1', '2020-11-18'),
(60, 'aashvina', 'HORLICKS GROWTH PLUS VANILLA REFILL 200GM\r\n', '150', '150', '1', '2020-11-21'),
(61, 'aashvina', 'CETAPHIL BABY DAILY LOTION 400ML\r\n', '390', '390', '1', '2020-11-21'),
(62, 'aashvina', 'RIGHTEST GS 260 BLOOD GLUCOSE TEST STRIPS 25S+25 LANCETS\r\n', '39', '39', '1', '2020-11-21'),
(63, 'aashvina', 'CETAPHIL BABY DAILY LOTION 400ML\r\n', '390', '390', '1', '2020-11-21'),
(64, 'aashvina', 'INFRARED FOREHEAD THERMOMETER', '2799', '2799', '1', '2020-11-21'),
(65, 'aashvina', 'HORLICKS GROWTH PLUS VANILLA REFILL 200GM\r\n', '150', '150', '1', '2020-11-21'),
(66, 'aashvina', 'FAST&UP CHARGE IMMUNITY BOOSTER 20S TAB\r\n', '199', '199', '1', '2020-11-21'),
(67, 'aashvina', 'SUGAR FREE GOLD 500S PELLETS TABLET', '250', '250', '1', '2020-11-21'),
(68, 'aashvina', 'CETAPHIL BABY DAILY LOTION 400ML\r\n', '390', '390', '1', '2020-11-21');

-- --------------------------------------------------------

--
-- Table structure for table `cart`
--

CREATE TABLE `cart` (
  `id` int(100) NOT NULL,
  `name` varchar(100) DEFAULT NULL,
  `price` varchar(100) DEFAULT NULL,
  `quantity` varchar(100) DEFAULT NULL,
  `username` varchar(100) DEFAULT NULL,
  `date` date NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `cart`
--

INSERT INTO `cart` (`id`, `name`, `price`, `quantity`, `username`, `date`) VALUES
(75, 'Garnier Face Wash', '90', '6', 'nithya', '2020-11-12'),
(74, 'COMPLAN CHOCOLATE REFILL 500GM\r\n', '150', '3', 'nithya', '2020-11-12');

-- --------------------------------------------------------

--
-- Table structure for table `contact`
--

CREATE TABLE `contact` (
  `name` varchar(20) NOT NULL,
  `email` varchar(100) NOT NULL,
  `message` varchar(1000) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `items`
--

CREATE TABLE `items` (
  `id` int(100) NOT NULL,
  `name` varchar(100) NOT NULL,
  `category` varchar(100) NOT NULL,
  `price` int(100) NOT NULL,
  `quantity` int(100) NOT NULL,
  `stock` varchar(100) NOT NULL,
  `description` varchar(200) NOT NULL,
  `img` varchar(250) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `items`
--

INSERT INTO `items` (`id`, `name`, `category`, `price`, `quantity`, `stock`, `description`, `img`) VALUES
(28, 'Garnier Face Wash', 'DailyCare', 90, 44, 'In Stock', 'Womens Face Wash', '16.jpg'),
(6, 'D&D Baby Soap', 'Baby Care', 70, 78, 'In Stock', 'D&D Private Limited 75g', '2.jpg'),
(7, 'Pigeon Baby Transparent Soap', 'Baby Care', 100, 55, 'In Stock', 'Baby Soap', '14.jpg'),
(26, 'Tresemme Shampoo', 'DailyCare', 140, 7, 'Out of Stock', 'Hair Product', '5.jpg'),
(27, 'Dove Mens Face Wash', 'DailyCare', 100, 7, 'In Stock', 'Mens Face Wash', '10.jpg'),
(58, 'HORLICKS GROWTH PLUS VANILLA REFILL 200GM\r\n', 'Health & Nutrition', 150, 9, 'In Stock', 'It helps support healthy birth weight of the baby, DHA and choline for brain development and calories to help meet the increased demands of energy in pregnancy. Now, it also comes with a great new tas', 'HORL0069_S.jpg'),
(57, 'HORLICKS JUNIOR JAR 500GM\r\n', 'Health & Nutrition', 5, 22, 'In Stock', 'It helps support healthy birth weight of the baby, DHA and choline for brain development and calories to help meet the increased demands of energy in pregnancy. Now, it also comes with a great new tas', 'HORL0065_S.jpg'),
(25, 'Johnsons Baby Soap', 'Baby Care', 100, 55, 'In Stock', 'Baby Soap', '5.jpg'),
(228, 'SAVLON HERBAL SENSITIVE HAND WASH REFILL 175ML', 'COVID-19 ESSENTIALS', 65, 0, 'In Stock', 'handwash', 'SAVL0026_S.jpg'),
(227, 'AVELIA HAND SANITIZER ETHANOL BASED BLUE 100ML', 'COVID-19 ESSENTIALS', 50, 0, 'In Stock', 'covid awareness', 'RITE0014_S.jpg'),
(34, 'FINGERTIP PULSE OXIMETER YK009', 'COVID-19 ESSENTIALS', 999, 23, 'In Stock', '\r\nLONGNAN REN ZHONG MEDICAL EQUIPMENT CO LTD', 'FING0012_S.jpg'),
(42, 'AVELIA HAND SANITIZER ETHANOL', 'COVID-19 ESSENTIALS', 40, 10, 'In Stock', 'Hand sanitizer is a liquid, gel, or foam generally used to decrease infectious agents on the hands.', 'AVEL0048_S.jpg'),
(43, 'DISPOSABLE LATEX ', 'COVID-19 ESSENTIALS', 1500, 44, 'In Stock', 'DISPOSABLE LATEX GLOVES SIZE-MEDIUM FOR A BOX OF 100 GLOVES', 'DISP0073_S.jpg'),
(44, 'LIFEBUOY HAND SANITIZER 50 ML', 'COVID-19 ESSENTIALS', 25, 22, 'In Stock', 'hand sanitizer is non-sticky in texture, it dries quickly. It is also enriched with Vitamin E and other moisturizers that help keep the hands soft.', 'LIFE0060_S.jpg'),
(45, 'LIFEBUOY TOTAL 10 HANDWASH REFILL 750ML', 'COVID-19 ESSENTIALS', 189, 8, 'In Stock', ' Lifebuoy Total 10 Germ Protection Handwash Refill Pack also moisturizes the hands, keeping them soft. ', 'LIFE0050_S.jpg'),
(56, 'COMPLAN CHOCOLATE REFILL 500GM\r\n', 'Health & Nutrition', 150, 10, 'In Stock', 'This complete planned food with 100% milk protein aids a rapid growth, development and the overall maintenance of the brain as well as body.', 'COMP0024_S.jpg'),
(51, 'CIPHANDS SURFACE DISINFECTANT SPRAY 75ML', 'COVID-19 ESSENTIALS', 129, 20, 'In Stock', 'Ensures 99.99% Germs-Kill Including Antibiotic Resistant Germs.', 'CIPH0005_S.jpg'),
(52, 'HIMALAYA PURE HAND SANITIZER ORANGE 500ML\r\n', 'COVID-19 ESSENTIALS', 250, 34, 'In Stock', 'Hand sanitizer is a liquid, gel, or foam generally used to decrease infectious agents on the hands.', 'HIMA0452_S.jpg'),
(233, 'SAVLON HERBAL SENSITIVE HAND WASH REFILL 175ML', 'covid-19essentials', 65, 0, 'In Stock', 'handwash', 'SAVL0026_S.jpg'),
(231, 'BENADON 40MG TAB', 'Vitamins', 90, 0, 'Out of Stock', 'vitamin tablet', 'A_TO0002_S.jpg'),
(226, '', 'covid-19essentials', 0, 0, 'In Stock', '', ''),
(60, 'BOOST BOTTLE 500GM\r\n', 'Health & Nutrition', 150, 22, 'In Stock', 'It helps support healthy birth weight of the baby, DHA and choline for brain development and calories to help meet the increased demands of energy in pregnancy. Now, it also comes with a great new tas', 'BOOS0002_S.jpg'),
(61, 'WOMENS HORLICKS CARAMEL POWDER JAR 400GM\r\n', 'Health & Nutrition', 220, 3, 'In Stock', 'It helps support healthy birth weight of the baby, DHA and choline for brain development and calories to help meet the increased demands of energy in pregnancy. Now, it also comes with a great new tas', 'WOME0005_S.jpg'),
(62, 'WOMENS HORLICKS CHOCOLATE JAR 400 GM\r\n', 'Health & Nutrition', 250, 10, 'In Stock', 'It helps support healthy birth weight of the baby, DHA and choline for brain development and calories to help meet the increased demands of energy in pregnancy. Now, it also comes with a great new tas', 'HORL0065_S.jpg'),
(63, 'DABUR CHYAWANPRASH 1KG\r\n', 'Health & Nutrition', 79, 30, 'In Stock', 'it is an amalgamation of 41 Ayurvedic herbs that helps in strengthening the immune system of the body, thereby enabling it to protect itself from infections and diseases. ', 'DABU0002_S.jpg'),
(64, 'FAST&UP CHARGE IMMUNITY BOOSTER 20S TAB\r\n', 'Health & Nutrition', 199, 30, 'In Stock', 'It provides non stop energy, especially of greater use during the summers or hot weathers. ', 'FAST0101_S.jpg'),
(65, 'EATRITE RAGIFILLS CHACOLATE 250GM\r\n', 'Health & Nutrition', 200, 40, 'In Stock', ' With whole wheat flakes, jumbo oats, corn flakes, pineapple and strawberry crushes and a number of dry fruits like 10% almonds, 10% raisins, the Eatrite Muesli Fruit and Nut is loaded with high fiber', 'EATR0050_S.jpg'),
(66, 'COMPLAN CHOCOLATE REFILL 500GM\r\n', 'Health & Nutrition', 150, 10, 'In Stock', 'This complete planned food with 100% milk protein aids a rapid growth, development and the overall maintenance of the brain as well as body.', 'COMP0024_S.jpg'),
(67, 'HORLICKS JUNIOR JAR 500GM\r\n', 'Health & Nutrition', 5, 22, 'In Stock', 'It helps support healthy birth weight of the baby, DHA and choline for brain development and calories to help meet the increased demands of energy in pregnancy. Now, it also comes with a great new tas', 'HORL0065_S.jpg'),
(68, 'HORLICKS GROWTH PLUS VANILLA REFILL 200GM\r\n', 'Health & Nutrition', 150, 9, 'In Stock', 'It helps support healthy birth weight of the baby, DHA and choline for brain development and calories to help meet the increased demands of energy in pregnancy. Now, it also comes with a great new tas', 'HORL0069_S.jpg'),
(69, 'EATRITE CORN FLAKES PLAIN 500GM\r\n', 'Health & Nutrition', 130, 30, 'In Stock', 'The Eatrite Muesli Fruit and Nut product is a grain blend loaded with too much goodness and taste at the same time. ', 'EATR0011_S.jpg'),
(70, 'BOOST BOTTLE 500GM\r\n', 'Health & Nutrition', 150, 22, 'In Stock', 'It helps support healthy birth weight of the baby, DHA and choline for brain development and calories to help meet the increased demands of energy in pregnancy. Now, it also comes with a great new tas', 'BOOS0002_S.jpg'),
(71, 'WOMENS HORLICKS CARAMEL POWDER JAR 400GM\r\n', 'Health & Nutrition', 220, 3, 'In Stock', 'It helps support healthy birth weight of the baby, DHA and choline for brain development and calories to help meet the increased demands of energy in pregnancy. Now, it also comes with a great new tas', 'WOME0005_S.jpg'),
(72, 'WOMENS HORLICKS CHOCOLATE JAR 400 GM\r\n', 'Health & Nutrition', 250, 10, 'In Stock', 'It helps support healthy birth weight of the baby, DHA and choline for brain development and calories to help meet the increased demands of energy in pregnancy. Now, it also comes with a great new tas', 'HORL0065_S.jpg'),
(73, 'DABUR CHYAWANPRASH 1KG\r\n', 'Health & Nutrition', 79, 30, 'In Stock', 'it is an amalgamation of 41 Ayurvedic herbs that helps in strengthening the immune system of the body, thereby enabling it to protect itself from infections and diseases. ', 'DABU0002_S.jpg'),
(74, 'FAST&UP CHARGE IMMUNITY BOOSTER 20S TAB\r\n', 'Health & Nutrition', 199, 30, 'In Stock', 'It provides non stop energy, especially of greater use during the summers or hot weathers. ', 'FAST0101_S.jpg'),
(75, 'EATRITE RAGIFILLS CHACOLATE 250GM\r\n', 'Health & Nutrition', 200, 40, 'In Stock', ' With whole wheat flakes, jumbo oats, corn flakes, pineapple and strawberry crushes and a number of dry fruits like 10% almonds, 10% raisins, the Eatrite Muesli Fruit and Nut is loaded with high fiber', 'EATR0050_S.jpg'),
(76, 'ORS L APPLE DRINK 200ML LIQUID\r\n', 'Health & Nutrition\r\n', 35, 20, 'In Stock', 'The ORS L Apple drink is a ready-to-serve health drink of 200ml net quantity enriched with electrolytes and vitamin C to ensure your good health always.', 'ORSL0001_S.jpg'),
(77, 'REBALANZ QRS ORANGE 200ML LIQUID\r\n', 'Health & Nutrition\r\n', 20, 90, 'In Stock', 'an electrolyte energy drink', 'REBA0034_S.jpg'),
(78, 'FRESUBIN DM CARDAMOM 400GM POWDER\r\n', 'Health & Nutrition\r\n', 150, 3, 'In Stock', 'Fresubin DM Powder Cardamom is a nutritionally balanced meal replacement for Diabetic patients.', 'FRES0004_S.jpg'),
(79, 'GLUCON-D 500GM\r\n', 'Health & Nutrition\r\n', 50, 22, 'In Stock\r\n', 'instant Energy Drink', 'GLUC0016_S.jpg'),
(80, 'GLUCON D ORANGE REFILL 450GM\r\n', 'Health & Nutrition\r\n', 0, 0, 'In Stock', 'instant Energy Drink', 'GLUC0018_S.jpg'),
(81, 'NEPRO HP VANILLA POWDER 400GM\r\n', 'Health & Nutrition\r\n', 200, 10, 'In Stock\r\n', 'instant Energy Drink', 'NEPR0002_S.jpg'),
(82, 'BOURNVITA POWDER REFILL 500GM\r\n', 'Health & Nutrition\r\n', 250, 10, 'In Stock', 'Protein aids muscle building and muscle repair thus leading to stronger muscles.', 'BOUR0002_S.jpg'),
(83, 'EATRITE CORN FLAKES PLAIN 500GM\r\n', 'Health & Nutrition\r\n', 80, 10, 'In Stock\r\n', 'The nourishing breakfast will keep you feeling full for a longer duration thus keeping hunger pangs away.', 'EATR0011_S.jpg'),
(84, 'VEELAC WHEAT APPLE 400GM POWDER\r\n', 'Health & Nutrition\r\n', 199, 30, 'In Stock\r\n', 'Veelac Wheat Apple Powder is the specially designed gluten-free weaning food for infants 4 months onwards as a supplement to breastfeeding ', 'VEEL0004_S.jpg'),
(85, 'VEELAC WHEAT 400GM POWDER\r\n', 'Health & Nutrition\r\n', 200, 40, 'In Stock\r\n', 'Veelac Wheat Apple Powder is the specially designed gluten-free weaning food for infants 4 months onwards as a supplement to breastfeeding ', 'VEEL0003_S.jpg'),
(86, 'NATURE\'S BEST ALOE VERA JUICE 500ML\r\n', 'Health & Nutrition\r\n', 70, 5, 'In Stock\r\n', 'pure juice replenishes the body and provides all the necessary vitamins. ', 'NATU0022_S.jpg'),
(88, 'B-PROTIN CHOCOLATE 500GM POWDER\r\n', 'Health & Nutrition', 50, 5, 'In Stock\r\n', 'Protein aids muscle building and muscle repair thus leading to stronger muscles', 'B-PR0006_S.jpg'),
(89, 'NEPRO HP VANILLA POWDER 400GM\r\n', 'Health & Nutrition\r\n', 35, 10, 'In Stock\r\n', 'Protein aids muscle building and muscle repair thus leading to stronger muscles', 'NEPR0002_S.jpg'),
(90, 'MUSCLETECH MASS TECH 7.05 LBS CHOCOLATE\r\n', 'Health & Nutrition\r\n', 45, 5, 'In Stock\r\n', ' It helps to reduce fatigue and muscle soreness after workouts and increases the blood flow to muscles ·', 'MUSC0032_S.jpg'),
(91, 'OBESIGO PREMIUM MANGO 350GM POWDER\r\n', 'Health & Nutrition\r\n', 150, 5, 'In Stock\r\n', 'Flavor. Mango. Protein Type. Whey Protein', 'OBES0008_S.jpg'),
(92, 'ENDURA MASS CHOCOLATE POWDER 500GM\r\n', 'Health & Nutrition\r\n', 500, 15, 'In Stock\r\n', 'It helps to reduce fatigue and muscle soreness after workouts and increases the blood flow to muscles ·', 'ENDU0007_S.jpg'),
(93, 'PROHANCE MOM CHOCOLATE 400GM POWDER\r\n', '\r\nHealth & Nutrition\r\n', 50, 10, 'In Stock', ' It helps to reduce fatigue and muscle soreness after workouts and increases the blood flow to muscles ·', 'PROH0020_S.jpg'),
(94, 'ENO SACHET LEMON\r\n', '\r\nHealth & Nutrition\r\n', 8, 90, 'In Stock', 'An antacid taken for providing instant relief from acidity, gastric discomfort and heart burn', 'ENO_0004_S.jpg'),
(116, 'HIMALAYA ARJUNA CAP 60S', 'Vitamins', 65, 10, 'In Stock', 'helps in maintaining normal blood pressure and overall normal cardiac functioning. ', 'ARJU0001_S.jpg'),
(96, 'ORS L APPLE DRINK 200ML LIQUID\r\n', 'Health & Nutrition\r\n', 35, 20, 'In Stock', 'The ORS L Apple drink is a ready-to-serve health drink of 200ml net quantity enriched with electrolytes and vitamin C to ensure your good health always.', 'ORSL0001_S.jpg'),
(97, 'REBALANZ QRS ORANGE 200ML LIQUID\r\n', 'Health & Nutrition\r\n', 20, 90, 'In Stock', 'an electrolyte energy drink', 'REBA0034_S.jpg'),
(98, 'FRESUBIN DM CARDAMOM 400GM POWDER\r\n', 'Health & Nutrition\r\n', 150, 3, 'In Stock', 'Fresubin DM Powder Cardamom is a nutritionally balanced meal replacement for Diabetic patients.', 'FRES0004_S.jpg'),
(99, 'GLUCON-D 500GM\r\n', 'Health & Nutrition\r\n', 50, 22, 'In Stock\r\n', 'instant Energy Drink', 'GLUC0016_S.jpg'),
(100, 'GLUCON D ORANGE REFILL 450GM\r\n', 'Health & Nutrition\r\n', 45, 5, 'In Stock', 'instant Energy Drink', 'GLUC0018_S.jpg'),
(101, 'NEPRO HP VANILLA POWDER 400GM\r\n', 'Health & Nutrition\r\n', 200, 10, 'In Stock\r\n', 'instant Energy Drink', 'NEPR0002_S.jpg'),
(102, 'BOURNVITA POWDER REFILL 500GM\r\n', 'Health & Nutrition\r\n', 250, 10, 'In Stock', 'Protein aids muscle building and muscle repair thus leading to stronger muscles.', 'BOUR0002_S.jpg'),
(103, 'EATRITE CORN FLAKES PLAIN 500GM\r\n', 'Health & Nutrition\r\n', 80, 10, 'In Stock\r\n', 'The nourishing breakfast will keep you feeling full for a longer duration thus keeping hunger pangs away.', 'EATR0011_S.jpg'),
(104, 'VEELAC WHEAT APPLE 400GM POWDER\r\n', 'Health & Nutrition\r\n', 199, 30, 'In Stock\r\n', 'Veelac Wheat Apple Powder is the specially designed gluten-free weaning food for infants 4 months onwards as a supplement to breastfeeding ', 'VEEL0004_S.jpg'),
(105, 'VEELAC WHEAT 400GM POWDER\r\n', 'Health & Nutrition\r\n', 200, 40, 'In Stock\r\n', 'Veelac Wheat Apple Powder is the specially designed gluten-free weaning food for infants 4 months onwards as a supplement to breastfeeding ', 'VEEL0003_S.jpg'),
(106, 'NATURE\'S BEST ALOE VERA JUICE 500ML\r\n', 'Health & Nutrition\r\n', 70, 5, 'In Stock\r\n', 'pure juice replenishes the body and provides all the necessary vitamins. ', 'NATU0022_S.jpg'),
(109, 'NEPRO HP VANILLA POWDER 400GM\r\n', 'Health & Nutrition\r\n', 35, 10, 'In Stock\r\n', 'Protein aids muscle building and muscle repair thus leading to stronger muscles', 'NEPR0002_S.jpg'),
(110, 'MUSCLETECH MASS TECH 7.05 LBS CHOCOLATE\r\n', 'Health & Nutrition\r\n', 45, 5, 'In Stock\r\n', ' It helps to reduce fatigue and muscle soreness after workouts and increases the blood flow to muscles ·', 'MUSC0032_S.jpg'),
(111, 'OBESIGO PREMIUM MANGO 350GM POWDER\r\n', 'Health & Nutrition\r\n', 150, 5, 'In Stock\r\n', 'Flavor. Mango. Protein Type. Whey Protein', 'OBES0008_S.jpg'),
(112, 'ENDURA MASS CHOCOLATE POWDER 500GM\r\n', 'Health & Nutrition\r\n', 500, 15, 'In Stock\r\n', 'It helps to reduce fatigue and muscle soreness after workouts and increases the blood flow to muscles ·', 'ENDU0007_S.jpg'),
(113, 'PROHANCE MOM CHOCOLATE 400GM POWDER\r\n', '\r\nHealth & Nutrition\r\n', 50, 10, 'In Stock', ' It helps to reduce fatigue and muscle soreness after workouts and increases the blood flow to muscles ·', 'PROH0020_S.jpg'),
(114, 'ENO SACHET LEMON\r\n', '\r\nHealth & Nutrition\r\n', 8, 90, 'In Stock', 'An antacid taken for providing instant relief from acidity, gastric discomfort and heart burn', 'ENO_0004_S.jpg'),
(118, 'AUTRIN CAPSULE', 'Vitamins', 123, 10, 'In Stock', 'Autrin capsule is a combination of Ferrous fumarate (Iron), Folic acid, Vitamin B12.', 'AUTR0001_S.jpg'),
(119, 'BECOSULES CAPSULE', 'Vitamins', 41, 10, 'In Stock', 'Becosules Capsule is an premium Multivitamin formulation of Vitamin B complex (Vitamin B12, B1, B2, B6, B3 and Folic acid), Vitamin C and Calcium pantothenate', 'BECO0005_S.jpg'),
(120, 'BECOZYME C FORTE TABLET', 'Vitamins', 22, 5, 'In Stock', 'LBecozyme C Forte is a unique blend of Vitamin B Complex and Folic acid. ', 'BECO0011_S.jpg'),
(121, 'BENADON 40MG TAB', 'Vitamins', 21, 5, 'In Stock', 'Benadon Tablet contains Pyridoxine. Pyridoxine, (Vitamin B6) , is required by your body for utilization of energy in the foods you eat, production of red blood cells, and proper functioning of nerves.', 'BENA0004_S.jpg'),
(122, 'BEPLEX FORTE TABLET', 'Vitamins', 35, 10, 'In Stock', 'vitamins essential for normal functions of muscles, nerves, blood cells and eyes.', 'BEPL0006_S.jpg'),
(123, 'HIMALAYA BRAHMI CAP 60S', 'Vitamins', 65, 10, 'In Stock', 'Brahmi is a multi-purpose nervine capsule which has a positive effect on the overall learning processes for usually youngsters and improves memory experiences for elders', 'BRAH0002_S.jpg'),
(124, 'BENADON 40MG TAB', 'Health&Nutrition', 21, 5, 'In Stock', 'Benadon is recommended for the prevention and management of vitamin B6 deficiency, treatment of sideroblastic anaemias, homocystinuria or primary hyperoxaluria and vitamin B6 dependency in infants.', 'BENA0004_S.jpg'),
(125, 'BENADON 40MG TAB', 'Vitamins', 21, 9, 'In Stock', 'Benadon is recommended for the prevention and management of vitamin B6 deficiency, treatment of sideroblastic anaemias, homocystinuria or primary hyperoxaluria and vitamin B6 dependency in infants.', 'BENA0004_S.jpg'),
(126, 'CALCIMAX FORTE TABLET', 'Vitamins', 225, 10, 'In Stock', 'Calcium is an extremely vital nutrient in our body which is often considered to keep our bones fit and strong. ', 'CALC0007_S.jpg'),
(127, 'COBADEX CZS TAB', 'Vitamins', 65, 5, 'In Stock', 'Cobadex CZS is provides nutritional support or helps who are at risk of developing nutritional deficiency. ', 'COBA0001_S.jpg'),
(128, 'EVION 200MG CAPSULES', 'Vitamins', 66, 10, 'In Stock', 'It prevents muscle cramps and fatigue.', 'EVIO0003_S.jpg'),
(129, 'EVION FORTE CAPSULE', 'Vitamins', 90, 10, 'In Stock', 'Evion Forte Capsule contains Lycopene 5000 mcg, Eicosapentaenoic Acid (EPA) 90mg, Docosahexaenoic Acid (DHA) 60 mg, Vitamin C 150 mg, and Vitamin E 50 IU (D alpha tocopherol) as active ingredients.', 'EVIO0010_S.jpg'),
(130, 'FERIUM XT TABLET', 'Health&Nutrition', 65, 10, 'In Stock', 'Ferium XT tablet is a combination of Ferrous Ascorbate (Iron) and Folic Acid (vitamin B9). ', 'FERI0013_S.jpg'),
(131, 'FERIUM XT TABLET', 'Vitamins', 65, 10, 'In Stock', 'Ferium XT tablet is a combination of Ferrous Ascorbate (Iron) and Folic Acid (vitamin B9). ', 'FERI0013_S.jpg'),
(132, 'FERONIA XT TABLET', 'Vitamins', 90, 10, 'In Stock', 'Fol 5 Tablet is a rich organic formulation of Folic acid compounds', 'FOL_0001_S.jpg'),
(133, 'FOURTS B TABLET', 'Vitamins', 65, 5, 'In Stock', 'Fourts B tablet is a combination of Biotin, Cyanocobalamin, Chromium, Selenium, Zinc, Folic acid, Glycine, Inositol, L glutamic acid, N Acetylcysteine, Niacinamide, Pyridoxine, and Vanadium. ', 'FOUR0001_S.jpg'),
(134, 'GLA 120MG CAPSULE', 'Vitamins', 225, 2, 'In Stock', 'Gamma Linolenic Acid also known as Omega 6 Fatty Acids are not produced in the body naturally and should therefore be consumed separately through supplements like GLA 120mg Capsules', 'GLA_0001_S.jpg'),
(135, 'HIMALAYA LASUNA 60S CAPSULE', 'Vitamins', 65, 2, 'In Stock', 'Lasuna also is known as Garlic (Latin name: Allium Sativum) is used for various purposes. ', 'HIMA0007_S.jpg'),
(136, 'HAPPY KIDZ 30S 75GM GUMMIES', 'Vitamins', 195, 5, 'In Stock', 'Happi Kidz Multi-Vitamin And Mineral Gummies is a perfect dietary supplement composed of 16 essential multivitamins and minerals', 'HAPP0036_S.jpg'),
(137, 'HIMALAYA SHUDDHA GUGGULU 60 CAPSULES', 'Vitamins', 165, 5, 'In Stock', 'Shuddha Guggulu is an ancient medicine used for numerous traditional uses owing to its anti-inflammatory', 'HIMA0009_S.jpg'),
(138, 'REVITAL H 30S CAP', 'Vitamins', 90, 5, 'In Stock', ' help to prevent fatigue and weakness as well as increase the concentration level.', 'REVI0012_S.jpg'),
(139, 'LIVOGEN Z TABLET', 'Vitamins', 65, 10, 'In Stock', 'LivogenZ tablet contains Ferrous Fumarate (Iron), Folic Acid (vitamin B9), and Zinc Sulphate as active ingredients. ', 'LIVO0004_S.jpg'),
(140, 'MENOPACE ISO TAB', 'Vitamins', 65, 10, 'In Stock', 'MENOPACE ISO TAB\r\n', 'MENO0012_S.jpg'),
(141, 'SWISSE UB VITAMIN D 90 TABLETS', 'Vitamins', 65, 5, 'In Stock', 'Swisse Ultiboost Vitamin D is a premium quality formula containing 1000 IU of naturally derived vitamin D3 to support strong, healthy bones and teeth, calcium absorption and immune health.', 'SWIS0040_S.jpg'),
(145, 'ENSURE DIABETIC CARE VANILLA 400GM JAR', 'DiabeticNeeds', 650, 0, 'In Stock', 'Ensure Diabetic Vanilla Care is a diabetes specific nutrition which optimizes glycemic response and minimize blood sugar spikes.', 'ENSU0017_S.jpg'),
(144, 'LIVOGEN Z TABLET', 'Vitamins', 65, 7, 'In Stock', 'vitamins essential for normal functions of muscles, nerves, blood cells and eyes.', 'LIVO0004_S.jpg'),
(147, 'RIGHTEST GS 260 BLOOD GLUCOSE TEST STRIPS 25S+25 LANCETS\r\n', 'Diabetic Needs', 39, 22, 'In Stock', 'Suitable for people who are health conscious and intend to keep themselves fit with smart ways.', 'ONE_0055_S.jpg'),
(148, 'ACCU-CHEK ACTIVE KIT DEVICE\r\n', 'Diabetic Needs', 150, 9, 'In Stock', 'Suitable for people who are health conscious and intend to keep themselves fit with smart ways.', 'ACCU0005_S.jpg'),
(149, 'ACCU-CHEK SOFTCLIX LANCETS 25S\r\n', 'Diabetic Needs', 130, 30, 'In Stock', 'Suitable for people who are health conscious and intend to keep themselves fit with smart ways.', 'ACCU0005_S.jpg'),
(150, 'ONE TOUCH SELECT PLUS SIMPLE METER\r\n', 'Diabetic Needs', 150, 22, 'In Stock', 'Suitable for people who are health conscious and intend to keep themselves fit with smart ways.', 'ONE_0009_S.jpg'),
(151, 'SUGAR FREE NATURA TABLET 500S\r\n', 'Diabetic Needs', 220, 3, 'In Stock', 'Suitable for people who are health conscious and intend to keep themselves fit with smart ways.', 'SUGA0041_S.jpg'),
(232, 'SAVLON HERBAL SENSITIVE HAND WASH REFILL 175ML', 'covid-19essentials', 65, 0, 'In Stock', 'handwash', 'SAVL0026_S.jpg'),
(153, 'GLUCORITE BLOOD GLUCOSE MONITORING SYSTEM GM-260\r\n', 'Diabetic Needs', 79, 30, 'In Stock', 'Suitable for people who are health conscious and intend to keep themselves fit with smart ways.', 'GLUC0350_S.jpg'),
(154, 'RESOURCE DIABETIC VANILLA 400GM\r\n', 'Diabetic Needs', 199, 30, 'In Stock', 'Suitable for people who are health conscious and intend to keep themselves fit with smart ways.', 'D_PR0006_S.jpg'),
(155, 'RELISH DIET SUGAR SACHETS 100S\r\n', 'Diabetic Needs', 200, 40, 'In Stock', 'Suitable for people who are health conscious and intend to keep themselves fit with smart ways.', 'RIGH0009_S.jpg'),
(156, 'ACCU-CHEK ACTIVE STRIPS 50S\r\n', 'Diabetic Needs', 55, 10, 'In Stock', 'Suitable for people who are health conscious and intend to keep themselves fit with smart ways.', 'ACCU0002_S.jpg'),
(157, 'RIGHTEST GS 260 BLOOD GLUCOSE TEST STRIPS 25S+25 LANCETS\r\n', 'Diabetic Needs', 39, 22, 'In Stock', 'Suitable for people who are health conscious and intend to keep themselves fit with smart ways.', 'ONE_0055_S.jpg'),
(158, 'ACCU-CHEK ACTIVE KIT DEVICE\r\n', 'Diabetic Needs', 150, 9, 'In Stock', 'Suitable for people who are health conscious and intend to keep themselves fit with smart ways.', 'ACCU0005_S.jpg'),
(159, 'ACCU-CHEK SOFTCLIX LANCETS 25S\r\n', 'Diabetic Needs', 130, 30, 'In Stock', 'Suitable for people who are health conscious and intend to keep themselves fit with smart ways.', 'ACCU0005_S.jpg'),
(160, 'ONE TOUCH SELECT PLUS SIMPLE METER\r\n', 'Diabetic Needs', 150, 22, 'In Stock', 'Suitable for people who are health conscious and intend to keep themselves fit with smart ways.', 'ONE_0009_S.jpg'),
(161, 'SUGAR FREE NATURA TABLET 500S\r\n', 'Diabetic Needs', 220, 3, 'In Stock', 'Suitable for people who are health conscious and intend to keep themselves fit with smart ways.', 'SUGA0041_S.jpg'),
(230, 'AVELIA HAND SANITIZER ETHANOL BASED BLUE 100ML', 'covid-19essentials', 65, 0, 'In Stock', 'handwash', 'AVEL0047_S.jpg'),
(163, 'GLUCORITE BLOOD GLUCOSE MONITORING SYSTEM GM-260\r\n', 'Diabetic Needs', 79, 30, 'In Stock', 'Suitable for people who are health conscious and intend to keep themselves fit with smart ways.', 'GLUC0350_S.jpg'),
(164, 'RESOURCE DIABETIC VANILLA 400GM\r\n', 'Diabetic Needs', 199, 30, 'In Stock', 'Suitable for people who are health conscious and intend to keep themselves fit with smart ways.', 'D_PR0006_S.img'),
(165, 'RELISH DIET SUGAR SACHETS 100S\r\n', 'Diabetic Needs', 200, 40, 'In Stock', 'Suitable for people who are health conscious and intend to keep themselves fit with smart ways.', 'RIGH0009_S.jpg'),
(229, 'SAVLON HERBAL SENSITIVE HAND WASH REFILL 175ML', 'covid-19essentials', 65, 0, 'In Stock', 'handwash', 'SAVL0026_S.jpg'),
(166, 'WOODWARD\'S GRIPE WATER 200 ML\r\n', 'BabyCare', 55, 10, 'In Stock', 'baby products', 'WOOD0006_S.jpg'),
(167, 'CETAPHIL BABY DAILY LOTION 400ML\r\n', 'BabyCare', 390, 22, 'In Stock', 'It promotes healthy growth of the baby', 'CETA0052_S.jpg'),
(168, 'HIMALAYA GENTLE BABY SOAP 75GM\r\n', 'BabyCare', 150, 9, 'In Stock', 'It promotes healthy growth of the baby', 'HIMA0069_S.jpg'),
(169, 'KIDDO\'S PREMIUM BABY WIPES 72S\r\n', 'BabyCare', 130, 30, 'In Stock', 'It promotes healthy growth of the baby', 'KIDD0019_S.jpg'),
(170, 'HIMALAYA BABY POWDER 400GM\r\n', 'BabyCare', 150, 22, 'In Stock', 'It promotes healthy growth of the baby', 'HIMA0213_S.jpg'),
(171, 'HIMALAYA DIAPER RASH CREAM 20GM\r\n', 'BabyCare', 220, 3, 'In Stock', 'It promotes healthy growth of the baby', 'HIMA0056_S.jpg'),
(172, 'BABY DOVE RICH MOISTURE BABY CARE WIPES 50S\r\n', 'BabyCare', 250, 10, 'In Stock', 'It promotes healthy growth of the baby', 'BABY0083_S.jpg'),
(173, 'BABY DOVE RICH MOISTURE BABY SHAMPOO 200ML\r\n', 'BabyCare', 79, 30, 'In Stock', 'It promotes healthy growth of the baby', 'BABY0090_S.jpg'),
(174, 'MAMYPOKO EXTRA ABSORB PANT STYLE DIAPERS - XL 14S\r\n', 'BabyCare', 199, 30, 'In Stock', 'It promotes healthy growth of the baby', 'MAMY0083_S.jpg'),
(175, 'SEBAMED PROTECTIVE FACIAL 50ML CREAM\r\n', 'BabyCare', 200, 40, 'In Stock', 'It promotes healthy growth of the baby', 'SEBA0077_S.jpg'),
(176, 'HIMALAYA REFRESHING BABY SOAP 75GM\r\n', 'BabyCare', 456, 44, 'In Stock', 'It promotes healthy growth of the baby', 'HIMA0182_S.jpg'),
(177, 'HUGGIES WONDER PANTS XS 12S\r\n', 'BabyCare', 120, 34, 'In Stock', 'It promotes healthy growth of the baby', 'HUGG0070_S.jpg'),
(178, 'VASELINE ITCH RELIEF 100GM CREAM\r\n', 'BabyCare', 237, 22, 'In Stock', 'It promotes healthy growth of the baby', 'VASE0065_S.jpg'),
(179, 'OLEMESSA BABY MASSAGE OIL 100ML LIQUID\r\n', 'BabyCare', 78, 9, 'In Stock', 'It promotes healthy growth of the baby', 'OLEM0002_S.jpg'),
(180, 'AVEENO SKIN RELIEF MOISTURIZING 354ML LOTION\r\n', 'BabyCare', 56, 9, 'In Stock', 'It promotes healthy growth of the baby', 'AVEE0004_S.jpg'),
(181, 'PAMPERS PREMIUM CARE PANTS NB 24S\r\n', 'BabyCare', 120, 7, 'In Stock', 'It promotes healthy growth of the baby', 'PAMP0186_S.jpg'),
(182, 'PIGEON NATURAL FIT SILICONE NIPPLE SHIELD\r\n', 'BabyCare', 150, 8, 'In Stock', 'It promotes healthy growth of the baby', 'PIGE0063_S.jpg'),
(183, 'BABY DOVE RICH MOISTURE BABY MASSAGE OIL 200ML\r\n', 'BabyCare', 120, 6, 'In Stock', 'It promotes healthy growth of the baby', 'BABY0096_S.jpg'),
(184, 'PAMPERS DIAPERS M 66S\r\n', 'BabyCare', 130, 7, 'In Stock', 'It promotes healthy growth of the baby', 'PAMP0038_S.jpg'),
(185, 'HIMALAYA BABYCARE GIFT JAR GENERAL\r\n', 'BabyCare', 150, 78, 'In Stock', 'It promotes healthy growth of the baby', 'HIMA0080_S.jpg'),
(186, 'WOODWARD\'S GRIPE WATER 200 ML\r\n', 'BabyCare', 55, 10, 'In Stock', 'baby products', 'WOOD0006_S.jpg'),
(187, 'CETAPHIL BABY DAILY LOTION 400ML\r\n', 'BabyCare', 390, 22, 'In Stock', 'It promotes healthy growth of the baby', 'CETA0052_S.JPG'),
(188, 'HIMALAYA GENTLE BABY SOAP 75GM\r\n', 'BabyCare', 150, 9, 'In Stock', 'It promotes healthy growth of the baby', 'HIMA0069_S.jpg'),
(189, 'KIDDO\'S PREMIUM BABY WIPES 72S\r\n', 'BabyCare', 130, 30, 'In Stock', 'It promotes healthy growth of the baby', 'KIDD0019_S.jpg'),
(190, 'HIMALAYA BABY POWDER 400GM\r\n', 'BabyCare', 150, 22, 'In Stock', 'It promotes healthy growth of the baby', 'HIMA0213_S.jpg'),
(191, 'HIMALAYA DIAPER RASH CREAM 20GM\r\n', 'BabyCare', 220, 3, 'In Stock', 'It promotes healthy growth of the baby', 'HIMA0056_S.jpg'),
(192, 'BABY DOVE RICH MOISTURE BABY CARE WIPES 50S\r\n', 'BabyCare', 250, 10, 'In Stock', 'It promotes healthy growth of the baby', 'BABY0083_S.jpg'),
(193, 'BABY DOVE RICH MOISTURE BABY SHAMPOO 200ML\r\n', 'BabyCare', 79, 30, 'In Stock', 'It promotes healthy growth of the baby', 'BABY0090_S.jpg'),
(194, 'MAMYPOKO EXTRA ABSORB PANT STYLE DIAPERS - XL 14S\r\n', 'BabyCare', 199, 30, 'In Stock', 'It promotes healthy growth of the baby', 'MAMY0083_S.jpg'),
(195, 'SEBAMED PROTECTIVE FACIAL 50ML CREAM\r\n', 'BabyCare', 200, 40, 'In Stock', 'It promotes healthy growth of the baby', 'SEBA0077_S.jpg'),
(196, 'HIMALAYA REFRESHING BABY SOAP 75GM\r\n', 'BabyCare', 456, 44, 'In Stock', 'It promotes healthy growth of the baby', 'HIMA0182_S.jpg'),
(197, 'HUGGIES WONDER PANTS XS 12S\r\n', 'BabyCare', 120, 34, 'In Stock', 'It promotes healthy growth of the baby', 'HUGG0070_S.jpg'),
(198, 'VASELINE ITCH RELIEF 100GM CREAM\r\n', 'BabyCare', 237, 22, 'In Stock', 'It promotes healthy growth of the baby', 'VASE0065_S.jpg'),
(199, 'OLEMESSA BABY MASSAGE OIL 100ML LIQUID\r\n', 'BabyCare', 78, 9, 'In Stock', 'It promotes healthy growth of the baby', 'OLEM0002_S.jpg'),
(200, 'AVEENO SKIN RELIEF MOISTURIZING 354ML LOTION\r\n', 'BabyCare', 56, 9, 'In Stock', 'It promotes healthy growth of the baby', 'AVEE0004_S.jpg'),
(201, 'PAMPERS PREMIUM CARE PANTS NB 24S\r\n', 'BabyCare', 120, 7, 'In Stock', 'It promotes healthy growth of the baby', 'PAMP0186_S.jpg'),
(202, 'PIGEON NATURAL FIT SILICONE NIPPLE SHIELD\r\n', 'BabyCare', 150, 8, 'In Stock', 'It promotes healthy growth of the baby', 'PIGE0063_S.jpg'),
(203, 'BABY DOVE RICH MOISTURE BABY MASSAGE OIL 200ML\r\n', 'BabyCare', 120, 6, 'In Stock', 'It promotes healthy growth of the baby', 'BABY0096_S.jpg'),
(204, 'PAMPERS DIAPERS M 66S\r\n', 'BabyCare', 130, 7, 'In Stock', 'It promotes healthy growth of the baby', 'PAMP0038_S.jpg'),
(205, 'HIMALAYA BABYCARE GIFT JAR GENERAL\r\n', 'BabyCare', 150, 78, 'In Stock', 'It promotes healthy growth of the baby', 'HIMA0080_S.jpg'),
(206, 'HEAD & SHOULDERS COOL MENTHOL SHAMPOO 180ML\r\n', 'DailyCare', 55, 10, 'In Stock', 'dailycare products', 'HEAD0014_S.jpg'),
(207, 'POND\'S TRIPLE VITAMIN MOISTURIZING LOTION 300ML\r\n', 'DailyCare', 39, 22, 'In Stock', 'dailycare products', 'POND0002_S.jpg'),
(208, 'FAIR & LOVELY AYURVEDIC CARE 25GM\r\n', 'DailyCare', 150, 9, 'In Stock', 'dailycare products', 'FAIR0051_S.jpg'),
(209, 'POND\'S MEN POLLUTION OUT FACE WASH 100GM\r\n', 'DailyCare', 130, 30, 'In Stock', 'dailycare products', 'POND0124_S.jpg'),
(210, 'LAKME FRUIT MOISTURE PEACH MILK MOISTURISER 200ML\r\n', 'DailyCare', 150, 22, 'In Stock', 'dailycare products', 'LAKM0508_S.jpg'),
(211, 'PONDS MEN OIL CONTROL FACE WASH 100GM\r\n', 'DailyCare', 220, 3, 'In Stock', 'dailycare products', 'POND0110_S.jpg'),
(212, 'POND\'S LIGHT MOISTURISER 75ML\r\n', 'DailyCare', 250, 10, 'In Stock', 'dailycare products', 'POND0160_S.jpg'),
(213, 'I CAN PREGNANCY TEST DEVICE\r\n', 'DailyCare', 79, 30, 'In Stock', 'dailycare products', 'I_CA0001_S.jpg'),
(214, 'WHISPER ULTRA CLEAN SANITARY PADS - XL WINGS (30 PADS)\r\n', 'DailyCare', 199, 30, 'In Stock', 'dailycare products', 'WHIS0029_S.jpg'),
(215, 'PEE SAFE MENSTRUAL CUPS LARGE\r\n', 'DailyCare', 200, 40, 'In Stock', 'dailycare products', 'PEE_0010_S.jpg'),
(216, 'LISTERINE COOL MINT MOUTHWASH 250ML\r\n', 'DailyCare', 150, 5, 'In Stock', '', 'LIST0001_S.jpg'),
(217, 'COLGATE TOTAL WAXED DENTAL FLOSS 25M\r\n', 'DailyCare', 120, 4, 'In Stock', 'dailycare products', 'COLG0050_S.jpg'),
(218, 'THERMOSEAL PROXA NS TOOTH BRUSHES 5S\r\n', 'DailyCare', 50, 5, 'In Stock', 'dailycare products', 'THER0032_S.jpg'),
(219, 'HIORA K MOUTHWASH 150ML LIQUID\r\n', 'DailyCare', 40, 5, 'In Stock', 'dailycare products', 'HIOR0010_S.jpg'),
(220, 'VICCO VAJRADANTI POWDER 100GM\r\n', 'DailyCare', 50, 45, 'In Stock', 'dailycare products', 'VICC0008_S.jpg'),
(221, 'THERMOSEAL MINT FLOSS\r\n', 'DailyCare', 55, 10, 'In Stock', 'dailycare products', 'THER0022_S.jpg'),
(222, 'VICKS VAPORUB CREAM 50ML\r\n', 'DailyCare', 70, 8, 'In Stock', 'dailycare products', 'VICK0006_S.jpg'),
(223, 'VICKS BABYRUB 50ML\r\n', 'DailyCare', 50, 5, 'In Stock', 'dailycare products', 'VICK0028_S.jpg'),
(224, 'VOLINI 100GM SPRAY\r\n', 'DailyCare', 45, 8, 'In Stock', 'dailycare products', 'VOLI0034_S.jpg'),
(225, 'CROCIN ADVANCE TAB\r\n', 'DailyCare', 20, 45, 'In Stock', 'dailycare products', 'CROC0012_S.jpg'),
(236, 'SAVLON HERBAL SENSITIVE HAND WASH REFILL 175ML', 'covid-19essentials', 65, 22, 'In Stock', 'handwash', 'SAVL0026_S.jpg'),
(237, 'SAVLON HERBAL SENSITIVE HAND WASH REFILL 175ML', 'covid-19essentials', 65, 22, 'In Stock', 'handwash', 'SAVL0026_S.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `prescription`
--

CREATE TABLE `prescription` (
  `name` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `prescriptionupload`
--

CREATE TABLE `prescriptionupload` (
  `name` varchar(100) NOT NULL,
  `email` varchar(50) NOT NULL,
  `presc` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `prescriptionupload`
--

INSERT INTO `prescriptionupload` (`name`, `email`, `presc`) VALUES
('aashvina', 'aashvina2001@gmail.com', 'Resume-1.jpg'),
('aashvina', 'aashvina2001@gmail.com', 'Resume-1.jpg'),
('aashvina', 'aashvina2001@gmail.com', 'css.ppt'),
('aashvina', 'aashvina2001@gmail.com', 'javascript.ppt'),
('aashvina', 'sound@gmail.com', 'javascript.ppt');

-- --------------------------------------------------------

--
-- Table structure for table `userlogin`
--

CREATE TABLE `userlogin` (
  `id` int(100) NOT NULL,
  `username` varchar(10) DEFAULT NULL,
  `password` varchar(10) DEFAULT NULL,
  `email` varchar(50) DEFAULT NULL,
  `secque` varchar(50) DEFAULT NULL,
  `secans` varchar(50) DEFAULT NULL,
  `phone` varchar(11) DEFAULT NULL,
  `address` varchar(200) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `userlogin`
--

INSERT INTO `userlogin` (`id`, `username`, `password`, `email`, `secque`, `secans`, `phone`, `address`) VALUES
(1, 'Soundarya', '12345', 'sound@gmail.com', 'Which is your favourite color?', 'Blue', '8978523456', '#44, 9th Main, 1st Cross, AR Colony, Bangalore'),
(10, 'aashvina', '12345', 'sound@gmail.com', 'Which is your birth place?', 'madurai', '06379940398', '99,palace road\r\nEast marret street'),
(3, 'nive', '12345', 'nive@gmail.com', 'Which is your favourite color?', 'blue', NULL, NULL),
(7, 'nithya', '12345', 'nithya@gmail.com', 'Which is your birth place?', 'madurai', NULL, NULL);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `adminlogin`
--
ALTER TABLE `adminlogin`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `booking`
--
ALTER TABLE `booking`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `cart`
--
ALTER TABLE `cart`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `items`
--
ALTER TABLE `items`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `prescription`
--
ALTER TABLE `prescription`
  ADD UNIQUE KEY `email` (`name`);

--
-- Indexes for table `userlogin`
--
ALTER TABLE `userlogin`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `adminlogin`
--
ALTER TABLE `adminlogin`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `booking`
--
ALTER TABLE `booking`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=69;

--
-- AUTO_INCREMENT for table `cart`
--
ALTER TABLE `cart`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=91;

--
-- AUTO_INCREMENT for table `items`
--
ALTER TABLE `items`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=238;

--
-- AUTO_INCREMENT for table `userlogin`
--
ALTER TABLE `userlogin`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
