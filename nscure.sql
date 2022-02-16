-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Dec 08, 2021 at 04:28 PM
-- Server version: 10.4.21-MariaDB
-- PHP Version: 8.0.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `nscure`
--

-- --------------------------------------------------------

--
-- Table structure for table `batches`
--

CREATE TABLE `batches` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tu_amount` double NOT NULL,
  `tp_amount` double NOT NULL,
  `mdr_amount` double DEFAULT NULL,
  `user_id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `payment_type` varchar(225) COLLATE utf8mb4_unicode_ci NOT NULL,
  `bank_name` varchar(225) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `account_no` varchar(225) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `other_info` varchar(225) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `notes` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `net_amount` double NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `batch_fees`
--

CREATE TABLE `batch_fees` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `monthly` double NOT NULL,
  `yearly` double NOT NULL,
  `others` double NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `other_additions` double DEFAULT NULL,
  `batch_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `batch_refunds`
--

CREATE TABLE `batch_refunds` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `batch_id` bigint(20) UNSIGNED NOT NULL,
  `transaction_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `batch_reserves`
--

CREATE TABLE `batch_reserves` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `batch_id` bigint(20) UNSIGNED NOT NULL,
  `reserve_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `batch_transactions`
--

CREATE TABLE `batch_transactions` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `batch_id` bigint(20) UNSIGNED NOT NULL,
  `transaction_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `countries`
--

CREATE TABLE `countries` (
  `id` int(11) NOT NULL,
  `Name` varchar(30) NOT NULL,
  `Code` varchar(10) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `countries`
--

INSERT INTO `countries` (`id`, `Name`, `Code`, `created_at`, `updated_at`) VALUES
(1, 'Afghanistan', 'AF', NULL, NULL),
(2, 'Åland Islands', 'AX', NULL, NULL),
(3, 'Albania', 'AL', NULL, NULL),
(4, 'Algeria', 'DZ', NULL, NULL),
(5, 'American Samoa', 'AS', NULL, NULL),
(6, 'Andorra', 'AD', NULL, NULL),
(7, 'Angola', 'AO', NULL, NULL),
(8, 'Anguilla', 'AI', NULL, NULL),
(9, 'Antarctica', 'AQ', NULL, NULL),
(10, 'Antigua and Barbuda', 'AG', NULL, NULL),
(11, 'Argentina', 'AR', NULL, NULL),
(12, 'Armenia', 'AM', NULL, NULL),
(13, 'Aruba', 'AW', NULL, NULL),
(14, 'Australia', 'AU', NULL, NULL),
(15, 'Austria', 'AT', NULL, NULL),
(16, 'Azerbaijan', 'AZ', NULL, NULL),
(17, 'Bahamas', 'BS', NULL, NULL),
(18, 'Bahrain', 'BH', NULL, NULL),
(19, 'Bangladesh', 'BD', NULL, NULL),
(20, 'Barbados', 'BB', NULL, NULL),
(21, 'Belarus', 'BY', NULL, NULL),
(22, 'Belgium', 'BE', NULL, NULL),
(23, 'Belize', 'BZ', NULL, NULL),
(24, 'Benin', 'BJ', NULL, NULL),
(25, 'Bermuda', 'BM', NULL, NULL),
(26, 'Bhutan', 'BT', NULL, NULL),
(27, 'Bolivia, Plurinational State o', 'BO', NULL, NULL),
(28, 'Bonaire, Sint Eustatius and Sa', 'BQ', NULL, NULL),
(29, 'Bosnia and Herzegovina', 'BA', NULL, NULL),
(30, 'Botswana', 'BW', NULL, NULL),
(31, 'Bouvet Island', 'BV', NULL, NULL),
(32, 'Brazil', 'BR', NULL, NULL),
(33, 'British Indian Ocean Territory', 'IO', NULL, NULL),
(34, 'Brunei Darussalam', 'BN', NULL, NULL),
(35, 'Bulgaria', 'BG', NULL, NULL),
(36, 'Burkina Faso', 'BF', NULL, NULL),
(37, 'Burundi', 'BI', NULL, NULL),
(38, 'Cambodia', 'KH', NULL, NULL),
(39, 'Cameroon', 'CM', NULL, NULL),
(40, 'Canada', 'CA', NULL, NULL),
(41, 'Cape Verde', 'CV', NULL, NULL),
(42, 'Cayman Islands', 'KY', NULL, NULL),
(43, 'Central African Republic', 'CF', NULL, NULL),
(44, 'Chad', 'TD', NULL, NULL),
(45, 'Chile', 'CL', NULL, NULL),
(46, 'China', 'CN', NULL, NULL),
(47, 'Christmas Island', 'CX', NULL, NULL),
(48, 'Cocos (Keeling) Islands', 'CC', NULL, NULL),
(49, 'Colombia', 'CO', NULL, NULL),
(50, 'Comoros', 'KM', NULL, NULL),
(51, 'Congo', 'CG', NULL, NULL),
(52, 'Congo, the Democratic Republic', 'CD', NULL, NULL),
(53, 'Cook Islands', 'CK', NULL, NULL),
(54, 'Costa Rica', 'CR', NULL, NULL),
(55, 'Côte d\'Ivoire', 'CI', NULL, NULL),
(56, 'Croatia', 'HR', NULL, NULL),
(57, 'Cuba', 'CU', NULL, NULL),
(58, 'Curaçao', 'CW', NULL, NULL),
(59, 'Cyprus', 'CY', NULL, NULL),
(60, 'Czech Republic', 'CZ', NULL, NULL),
(61, 'Denmark', 'DK', NULL, NULL),
(62, 'Djibouti', 'DJ', NULL, NULL),
(63, 'Dominica', 'DM', NULL, NULL),
(64, 'Dominican Republic', 'DO', NULL, NULL),
(65, 'Ecuador', 'EC', NULL, NULL),
(66, 'Egypt', 'EG', NULL, NULL),
(67, 'El Salvador', 'SV', NULL, NULL),
(68, 'Equatorial Guinea', 'GQ', NULL, NULL),
(69, 'Eritrea', 'ER', NULL, NULL),
(70, 'Estonia', 'EE', NULL, NULL),
(71, 'Ethiopia', 'ET', NULL, NULL),
(72, 'Falkland Islands (Malvinas)', 'FK', NULL, NULL),
(73, 'Faroe Islands', 'FO', NULL, NULL),
(74, 'Fiji', 'FJ', NULL, NULL),
(75, 'Finland', 'FI', NULL, NULL),
(76, 'France', 'FR', NULL, NULL),
(77, 'French Guiana', 'GF', NULL, NULL),
(78, 'French Polynesia', 'PF', NULL, NULL),
(79, 'French Southern Territories', 'TF', NULL, NULL),
(80, 'Gabon', 'GA', NULL, NULL),
(81, 'Gambia', 'GM', NULL, NULL),
(82, 'Georgia', 'GE', NULL, NULL),
(83, 'Germany', 'DE', NULL, NULL),
(84, 'Ghana', 'GH', NULL, NULL),
(85, 'Gibraltar', 'GI', NULL, NULL),
(86, 'Greece', 'GR', NULL, NULL),
(87, 'Greenland', 'GL', NULL, NULL),
(88, 'Grenada', 'GD', NULL, NULL),
(89, 'Guadeloupe', 'GP', NULL, NULL),
(90, 'Guam', 'GU', NULL, NULL),
(91, 'Guatemala', 'GT', NULL, NULL),
(92, 'Guernsey', 'GG', NULL, NULL),
(93, 'Guinea', 'GN', NULL, NULL),
(94, 'Guinea-Bissau', 'GW', NULL, NULL),
(95, 'Guyana', 'GY', NULL, NULL),
(96, 'Haiti', 'HT', NULL, NULL),
(97, 'Heard Island and McDonald Isla', 'HM', NULL, NULL),
(98, 'Holy See (Vatican City State)', 'VA', NULL, NULL),
(99, 'Honduras', 'HN', NULL, NULL),
(100, 'Hong Kong', 'HK', NULL, NULL),
(101, 'Hungary', 'HU', NULL, NULL),
(102, 'Iceland', 'IS', NULL, NULL),
(103, 'India', 'IN', NULL, NULL),
(104, 'Indonesia', 'ID', NULL, NULL),
(105, 'Iran, Islamic Republic of', 'IR', NULL, NULL),
(106, 'Iraq', 'IQ', NULL, NULL),
(107, 'Ireland', 'IE', NULL, NULL),
(108, 'Isle of Man', 'IM', NULL, NULL),
(109, 'Israel', 'IL', NULL, NULL),
(110, 'Italy', 'IT', NULL, NULL),
(111, 'Jamaica', 'JM', NULL, NULL),
(112, 'Japan', 'JP', NULL, NULL),
(113, 'Jersey', 'JE', NULL, NULL),
(114, 'Jordan', 'JO', NULL, NULL),
(115, 'Kazakhstan', 'KZ', NULL, NULL),
(116, 'Kenya', 'KE', NULL, NULL),
(117, 'Kiribati', 'KI', NULL, NULL),
(118, 'Korea, Democratic People\'s Rep', 'KP', NULL, NULL),
(119, 'Korea, Republic of', 'KR', NULL, NULL),
(120, 'Kuwait', 'KW', NULL, NULL),
(121, 'Kyrgyzstan', 'KG', NULL, NULL),
(122, 'Lao People\'s Democratic Republ', 'LA', NULL, NULL),
(123, 'Latvia', 'LV', NULL, NULL),
(124, 'Lebanon', 'LB', NULL, NULL),
(125, 'Lesotho', 'LS', NULL, NULL),
(126, 'Liberia', 'LR', NULL, NULL),
(127, 'Libya', 'LY', NULL, NULL),
(128, 'Liechtenstein', 'LI', NULL, NULL),
(129, 'Lithuania', 'LT', NULL, NULL),
(130, 'Luxembourg', 'LU', NULL, NULL),
(131, 'Macao', 'MO', NULL, NULL),
(132, 'Macedonia, the Former Yugoslav', 'MK', NULL, NULL),
(133, 'Madagascar', 'MG', NULL, NULL),
(134, 'Malawi', 'MW', NULL, NULL),
(135, 'Malaysia', 'MY', NULL, NULL),
(136, 'Maldives', 'MV', NULL, NULL),
(137, 'Mali', 'ML', NULL, NULL),
(138, 'Malta', 'MT', NULL, NULL),
(139, 'Marshall Islands', 'MH', NULL, NULL),
(140, 'Martinique', 'MQ', NULL, NULL),
(141, 'Mauritania', 'MR', NULL, NULL),
(142, 'Mauritius', 'MU', NULL, NULL),
(143, 'Mayotte', 'YT', NULL, NULL),
(144, 'Mexico', 'MX', NULL, NULL),
(145, 'Micronesia, Federated States o', 'FM', NULL, NULL),
(146, 'Moldova, Republic of', 'MD', NULL, NULL),
(147, 'Monaco', 'MC', NULL, NULL),
(148, 'Mongolia', 'MN', NULL, NULL),
(149, 'Montenegro', 'ME', NULL, NULL),
(150, 'Montserrat', 'MS', NULL, NULL),
(151, 'Morocco', 'MA', NULL, NULL),
(152, 'Mozambique', 'MZ', NULL, NULL),
(153, 'Myanmar', 'MM', NULL, NULL),
(154, 'Namibia', 'NA', NULL, NULL),
(155, 'Nauru', 'NR', NULL, NULL),
(156, 'Nepal', 'NP', NULL, NULL),
(157, 'Netherlands', 'NL', NULL, NULL),
(158, 'New Caledonia', 'NC', NULL, NULL),
(159, 'New Zealand', 'NZ', NULL, NULL),
(160, 'Nicaragua', 'NI', NULL, NULL),
(161, 'Niger', 'NE', NULL, NULL),
(162, 'Nigeria', 'NG', NULL, NULL),
(163, 'Niue', 'NU', NULL, NULL),
(164, 'Norfolk Island', 'NF', NULL, NULL),
(165, 'Northern Mariana Islands', 'MP', NULL, NULL),
(166, 'Norway', 'NO', NULL, NULL),
(167, 'Oman', 'OM', NULL, NULL),
(168, 'Pakistan', 'PK', NULL, NULL),
(169, 'Palau', 'PW', NULL, NULL),
(170, 'Palestine, State of', 'PS', NULL, NULL),
(171, 'Panama', 'PA', NULL, NULL),
(172, 'Papua New Guinea', 'PG', NULL, NULL),
(173, 'Paraguay', 'PY', NULL, NULL),
(174, 'Peru', 'PE', NULL, NULL),
(175, 'Philippines', 'PH', NULL, NULL),
(176, 'Pitcairn', 'PN', NULL, NULL),
(177, 'Poland', 'PL', NULL, NULL),
(178, 'Portugal', 'PT', NULL, NULL),
(179, 'Puerto Rico', 'PR', NULL, NULL),
(180, 'Qatar', 'QA', NULL, NULL),
(181, 'Réunion', 'RE', NULL, NULL),
(182, 'Romania', 'RO', NULL, NULL),
(183, 'Russian Federation', 'RU', NULL, NULL),
(184, 'Rwanda', 'RW', NULL, NULL),
(185, 'Saint Barthélemy', 'BL', NULL, NULL),
(186, 'Saint Helena, Ascension and Tr', 'SH', NULL, NULL),
(187, 'Saint Kitts and Nevis', 'KN', NULL, NULL),
(188, 'Saint Lucia', 'LC', NULL, NULL),
(189, 'Saint Martin (French part)', 'MF', NULL, NULL),
(190, 'Saint Pierre and Miquelon', 'PM', NULL, NULL),
(191, 'Saint Vincent and the Grenadin', 'VC', NULL, NULL),
(192, 'Samoa', 'WS', NULL, NULL),
(193, 'San Marino', 'SM', NULL, NULL),
(194, 'Sao Tome and Principe', 'ST', NULL, NULL),
(195, 'Saudi Arabia', 'SA', NULL, NULL),
(196, 'Senegal', 'SN', NULL, NULL),
(197, 'Serbia', 'RS', NULL, NULL),
(198, 'Seychelles', 'SC', NULL, NULL),
(199, 'Sierra Leone', 'SL', NULL, NULL),
(200, 'Singapore', 'SG', NULL, NULL),
(201, 'Sint Maarten (Dutch part)', 'SX', NULL, NULL),
(202, 'Slovakia', 'SK', NULL, NULL),
(203, 'Slovenia', 'SI', NULL, NULL),
(204, 'Solomon Islands', 'SB', NULL, NULL),
(205, 'Somalia', 'SO', NULL, NULL),
(206, 'South Africa', 'ZA', NULL, NULL),
(207, 'South Georgia and the South Sa', 'GS', NULL, NULL),
(208, 'South Sudan', 'SS', NULL, NULL),
(209, 'Spain', 'ES', NULL, NULL),
(210, 'Sri Lanka', 'LK', NULL, NULL),
(211, 'Sudan', 'SD', NULL, NULL),
(212, 'Suriname', 'SR', NULL, NULL),
(213, 'Svalbard and Jan Mayen', 'SJ', NULL, NULL),
(214, 'Swaziland', 'SZ', NULL, NULL),
(215, 'Sweden', 'SE', NULL, NULL),
(216, 'Switzerland', 'CH', NULL, NULL),
(217, 'Syrian Arab Republic', 'SY', NULL, NULL),
(218, 'Taiwan, Province of China', 'TW', NULL, NULL),
(219, 'Tajikistan', 'TJ', NULL, NULL),
(220, 'Tanzania, United Republic of', 'TZ', NULL, NULL),
(221, 'Thailand', 'TH', NULL, NULL),
(222, 'Timor-Leste', 'TL', NULL, NULL),
(223, 'Togo', 'TG', NULL, NULL),
(224, 'Tokelau', 'TK', NULL, NULL),
(225, 'Tonga', 'TO', NULL, NULL),
(226, 'Trinidad and Tobago', 'TT', NULL, NULL),
(227, 'Tunisia', 'TN', NULL, NULL),
(228, 'Turkey', 'TR', NULL, NULL),
(229, 'Turkmenistan', 'TM', NULL, NULL),
(230, 'Turks and Caicos Islands', 'TC', NULL, NULL),
(231, 'Tuvalu', 'TV', NULL, NULL),
(232, 'Uganda', 'UG', NULL, NULL),
(233, 'Ukraine', 'UA', NULL, NULL),
(234, 'United Arab Emirates', 'AE', NULL, NULL),
(235, 'United Kingdom', 'GB', NULL, NULL),
(236, 'United States', 'US', NULL, NULL),
(237, 'United States Minor Outlying I', 'UM', NULL, NULL),
(238, 'Uruguay', 'UY', NULL, NULL),
(239, 'Uzbekistan', 'UZ', NULL, NULL),
(240, 'Vanuatu', 'VU', NULL, NULL),
(241, 'Venezuela, Bolivarian Republic', 'VE', NULL, NULL),
(242, 'Viet Nam', 'VN', NULL, NULL),
(243, 'Virgin Islands, British', 'VG', NULL, NULL),
(244, 'Virgin Islands, U.S.', 'VI', NULL, NULL),
(245, 'Wallis and Futuna', 'WF', NULL, NULL),
(246, 'Western Sahara', 'EH', NULL, NULL),
(247, 'Yemen', 'YE', NULL, NULL),
(248, 'Zambia', 'ZM', NULL, NULL),
(249, 'Zimbabwe', 'ZW', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `currencies`
--

CREATE TABLE `currencies` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `currency_name` varchar(225) COLLATE utf8mb4_unicode_ci NOT NULL,
  `c_code` varchar(225) COLLATE utf8mb4_unicode_ci NOT NULL,
  `c_amount` double NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `currencies`
--

INSERT INTO `currencies` (`id`, `currency_name`, `c_code`, `c_amount`, `created_at`, `updated_at`) VALUES
(1, 'Pakistani Rupee', 'PKR', 123, NULL, NULL),
(2, 'Pakistani Rupee', 'PKR', 123, NULL, NULL),
(3, 'Pakistani Rupee', 'PKR', 123, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `customers`
--

CREATE TABLE `customers` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `city` varchar(225) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `country` varchar(225) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `address` varchar(225) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `postal_code` varchar(225) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `state` varchar(225) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `fore_name` varchar(225) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `sur_name` varchar(225) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(225) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `phone` varchar(225) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `ip_address` varchar(225) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `card_no` varchar(225) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `card_expiry` varchar(225) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `cvn` int(11) DEFAULT NULL,
  `transaction_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `customers`
--

INSERT INTO `customers` (`id`, `city`, `country`, `address`, `postal_code`, `state`, `fore_name`, `sur_name`, `email`, `phone`, `ip_address`, `card_no`, `card_expiry`, `cvn`, `transaction_id`, `created_at`, `updated_at`) VALUES
(7, 'Whitehouse', 'US', '421 Amanda Court', '75791', 'TX', 'Kyli', 'Nail', 'kyli@suddenlink.net', '9033165988', '74.192.44.31', NULL, NULL, NULL, 12, '2021-10-07 21:36:43', NULL),
(8, 'Annandale', 'US', 'PO Box 11', '22003', 'VA', 'Elizabeth', 'R Roberts', 'roberts240@hotmail.com', '5712157433', '173.73.98.178', NULL, NULL, NULL, 13, '2021-10-07 22:23:11', NULL),
(9, 'Annandale', 'US', 'PO Box 11', '22003', 'VA', 'Elizabeth', 'R Roberts', 'roberts240@hotmail.com', '5712157433', '173.73.98.178', NULL, NULL, NULL, 14, '2021-10-07 23:12:22', NULL),
(10, 'Charleston', 'US', '2284 Ashley River Rd  Apt  303D', '29414', 'SC', 'Liza', 'Martin', 'Lizawrites@yahoo.com', '9372198578', '45.30.167.251', NULL, NULL, NULL, 15, '2021-10-07 23:12:25', NULL),
(11, 'Newtown', 'US', '3 Haines Circle', '18940', 'PA', 'Jessica', 'Burgess', 'Jessegirl_ca@hotmail.com', '6198690045', '71.224.73.48', NULL, NULL, NULL, 16, '2021-10-08 01:16:49', NULL),
(12, 'San Mateo', 'US', '1826 Hamlet St', '94403', 'CA', 'Darrah', 'Coddington', 'Eamlynne@icloud.com', '6507661118', '99.21.36.21', NULL, NULL, NULL, 17, '2021-10-08 03:00:19', NULL),
(13, 'Walla', 'US', '3565 Powerline Rd', '99362', 'WA', 'Robert', 'C Greene', 'bgreene@columbiarea.coop', '5096290237', '64.146.170.26', NULL, NULL, NULL, 18, '2021-10-08 03:24:01', NULL),
(14, 'Bradford', 'GB', '49 Bingley Road', 'BD18 4SB', 'West Yorkshire', 'Julie', 'Baldwin', 'Juliebaldwin1970@live.co.uk', '07870606408', '109.153.118.63', NULL, NULL, NULL, 19, '2021-10-08 03:42:28', NULL),
(15, 'Liverpool', 'GB', '42 Silver Leigh', 'L17 5BL', 'England', 'Jayne', 'E Sloan', 'J.sloan251@btinternet.com', '07485172423', '86.146.228.179', NULL, NULL, NULL, 20, '2021-10-08 16:38:10', NULL),
(16, 'Naples', 'US', '816 Kingbird court', '34108', 'FL', 'Brian', 'Michael Smith', 'Brismi0808@gmail.com', '2392739897', '174.211.128.136', NULL, NULL, NULL, 21, '2021-10-08 22:37:47', NULL),
(17, 'midland', 'US', '4604 anetta dr', '79703', 'TX', 'dale', 'kershner', 'dajugl@yahoo.com', '4322625931', '24.155.174.157', NULL, NULL, NULL, 22, '2021-10-08 23:14:11', NULL),
(18, 'SANDOWN', 'GB', 'Flat 4 Greenfields Newport road', 'PO369FH', 'ISLE OF WIGHT', 'Lindsay', 'C Allen', 'Lindsaylou1302@hotmail.co.uk', '07779686170', '109.249.185.107', NULL, NULL, NULL, 23, '2021-10-08 23:21:36', NULL),
(19, 'Opelika', 'US', '2700 3rd Ave', '36801', 'AL', 'jason', 'Justice', 'Bamagarcia@gmail.com', '3347032893', '47.36.193.123', NULL, NULL, NULL, 24, '2021-10-09 00:12:11', NULL),
(20, 'Maxwell', 'US', 'P o box 455', '95955', 'Ca', 'Gary', 'Jones', 'Half100jones@hotmail.com', '5306353698', '174.208.99.126', NULL, NULL, NULL, 25, '2021-10-09 01:43:39', NULL),
(21, 'St Ives', 'GB', 'Royal Square', 'TR262ND', 'Cornwall', 'Georgia', 'Gillam', 'georgiegillam@gmail.com', '447779233831', '109.249.187.65', NULL, NULL, NULL, 26, '2021-10-09 02:51:15', NULL),
(22, 'Dover', 'US', '16 south main st', '17315', 'PA', 'Bret', 'Addlesberger', 'Bretaddlesberger@gmail.com', '7173240678', '172.58.203.151', NULL, NULL, NULL, 27, '2021-10-09 05:33:57', NULL),
(23, 'Spokane', 'US', '222 W Mission Ave Ste 25', '99201', 'WA', 'Brant', 'L Stevens', 'brantstevens@yahoo.com', '5097100085', '67.170.31.235', NULL, NULL, NULL, 28, '2021-10-09 06:39:33', NULL),
(24, 'Pittsburgh', 'US', '115 Cobb Avenue', '15205', 'PA', 'Ellen', 'Janocha', 'Ecolley817@aol.com', '8148072671', '96.235.25.85', NULL, NULL, NULL, 29, '2021-10-09 21:44:53', NULL),
(25, 'Spring hill', 'US', '1149 wrights mill rd', '37174', 'TN', 'Emily', 'Dickson', 'Emily.tnrn@yahoo.com', '6153979941', '99.177.196.230', NULL, NULL, NULL, 30, '2021-10-09 23:29:32', NULL),
(26, 'Mccormick', 'US', '207 mallard lane', '29835', 'Sc', 'Dan', 'Drabik', 'Dan.drabik@aol.com', '3033251051', '64.53.36.50', NULL, NULL, NULL, 31, '2021-10-10 00:18:18', NULL),
(27, 'Fresno', 'US', '3010 Acacia Fair Ln', '77545', 'TX', 'LaToya', 'T Newsome', 'Babygirl-4@sbcglobal.net', '8324836881', '99.19.59.36', NULL, NULL, NULL, 32, '2021-10-11 19:34:52', NULL),
(28, 'Lima', 'US', '3040 Elijah', '45805', 'OH', 'Jon', 'Trent', 'jonmtrent@yahoo.com', '9374798710', '174.207.129.175', NULL, NULL, NULL, 33, '2021-10-11 20:21:35', NULL),
(29, 'Chalfont', 'US', '28 Citadel Circle', '18914', 'PA', 'Denise', 'Christensen', 'deanie0120@aol.com', '2155343888', '72.94.86.16', NULL, NULL, NULL, 34, '2021-10-11 21:56:28', NULL),
(30, 'Roswell', 'US', '345 Hollyberry Dr', '30076', 'GA', 'Mary', 'Van Note', 'deezannote55@gmail.com', '5026441585', '104.176.30.238', NULL, NULL, NULL, 35, '2021-10-15 20:50:30', NULL),
(31, 'RWP', 'PK', 'Pindi town ISB', '54000', 'Punjab', 'Abc', 'Abc', 'nikxen@gmail.com', '033333333', '72.255.43.25', NULL, NULL, NULL, 36, '2021-11-02 23:33:25', '2021-11-02 23:33:25'),
(32, 'RWP', 'PK', 'Pindi town ISB', '54000', 'Punjab', 'Abc', 'Abc', 'nikxen@gmail.com', '33333333', '72.255.43.25', NULL, NULL, NULL, 37, '2021-11-02 23:53:51', '2021-11-02 23:53:51'),
(33, 'RWP', 'PK', 'Pindi town ISB', '54000', 'Punjab', 'Abc', 'Abc', 'nikxen@gmail.com', '033333333', '72.255.43.25', NULL, NULL, NULL, 38, '2021-11-03 22:46:51', '2021-11-03 22:46:51'),
(34, 'Little Rock', 'US', '5 White Willow Ct', '72212', 'AR', 'Barry', 'Durham', 'barry@netmonkeys.net', '5017251888', '76.125.100.225', NULL, NULL, NULL, 39, '2021-11-04 19:11:04', '2021-11-04 19:11:04'),
(35, 'Buckeye', 'US', '30887 W Fairmount Ave', '85396', 'AR', 'Isabel', 'Salazar', 'Isaven13@gmail.com', '4803716540', '174.74.135.14', NULL, NULL, NULL, 40, '2021-11-04 19:58:30', '2021-11-04 19:58:30'),
(36, 'Seaham', 'GB', '72 Weymouth Drive', 'SR78DF', 'Co Durham', 'Mrs Pamela', 'Pritchard', 'pamypritchard@msn.com', '07837052156', '90.214.98.106', NULL, NULL, NULL, 41, '2021-11-04 21:24:23', '2021-11-04 21:24:23'),
(37, 'Nashville', 'US', '4020 windwood lane', '37214', 'TN', 'Patricia', 'D Smith', 'Trcs37214@gmail.com', '6153325163', '174.212.167.156', NULL, NULL, NULL, 42, '2021-11-04 21:27:25', '2021-11-04 21:27:25'),
(38, 'london', 'GB', '103 Sclater street', 'E1 6HR', 'London', 'keirion', 'carroll', 'keirion@hotmail.com', '07917668270', '5.65.51.1', NULL, NULL, NULL, 43, '2021-11-05 04:22:19', NULL),
(39, 'West windsor', 'US', '7 Marian dr', '08550', 'Nj', 'Michael', 'Palmer', 'Rehabmd83@gmail.com', '6099778304', '100.35.23.18', NULL, NULL, NULL, 44, '2021-11-05 06:25:47', '2021-11-05 06:25:47'),
(40, 'HUNTSVILLE', 'US', '100070 GREENVIEW DRIVE', '35803', 'Al', 'Thomas', 'REINHART', 'TOMREIN3@AOL.COM', '2566515293', '68.62.220.84', NULL, NULL, NULL, 45, '2021-11-07 09:45:14', '2021-11-07 09:45:14'),
(41, 'Huntinton', 'US', '9327 sugar groove road', '16652', 'PA', 'Robert', 'J Seyko', 'rjseyko@yahoo.com', '8146432601', '71.114.190.8', NULL, NULL, NULL, 46, '2021-11-07 09:11:49', '2021-11-07 09:11:49'),
(42, 'Glasgow', 'GB', '2 kirklee rd', 'G120tn', 'Scotland', 'Jeff', 'Reid', 'Jeff.reid@btinternet.com', '447714030733', '81.109.44.122', NULL, NULL, NULL, 47, '2021-11-06 00:45:30', '2021-11-06 00:45:30'),
(43, 'Sutton', 'US', '313 manchaug rd', '01590', 'MA', 'Melissa', 'Szczurko', 'zurksm12@gmail.com', '5083537456', '74.104.115.9', NULL, NULL, NULL, 48, '2021-11-06 01:34:19', '2021-11-06 01:34:19'),
(44, 'Huntinton', 'US', '9327 sugar groove road', '16652', 'PA', 'Robert', 'J Seyko', 'rjseyko@yahoo.com', '8146432601', '71.114.190.8', NULL, NULL, NULL, 49, '2021-11-10 04:02:51', '2021-11-10 04:02:51'),
(45, 'East Patchogue', 'US', '115 Lake Dr', '11772', 'NY', 'scott', 'E stocker', 'sctts001@aol.com', '6314123615', '67.80.65.94', NULL, NULL, NULL, 50, '2021-11-06 02:57:44', '2021-11-06 02:57:44'),
(46, 'Wilmington', 'US', '4211 Greens Ferry Ct', '28409', 'NC', 'Bambi', 'Rivenbark', 'Toplevelcleaning1@gmail.com', '9106179114', '173.93.123.237', NULL, NULL, NULL, 51, '2021-11-07 00:15:56', '2021-11-07 00:15:56'),
(47, 'Baldwinsville', 'US', '3578 Patchett Rd', '13027', 'NY', 'James', 'Rawson', 'ramsingelectric@yahoo.com', '3152632377', '174.197.195.243', NULL, NULL, NULL, 52, '2021-11-06 06:18:59', '2021-11-06 06:18:59'),
(48, 'LONDON', 'GB', '29 Princedale Road  Holland Park', 'W11 4NW', 'LONDON', 'LEONIE', 'FALLSTROM', 'LEONIE.FALLSTROM@YMAIL.COM', '07767345496', '86.153.115.179', NULL, NULL, NULL, 53, '2021-11-10 03:12:42', '2021-11-10 03:12:42'),
(49, 'Hudson', 'US', '12713 willowdale way', '34667', 'FL', 'Charlene', 'Giglio', 'Tonygig120@gmail.com', '5166448975', '172.56.27.93', NULL, NULL, NULL, 54, '2021-11-06 07:07:37', '2021-11-06 07:07:37'),
(50, 'Lancaster', 'US', '646 W Avenue J4', '93535', 'CA', 'Thomas', 'Biederman', 'thomasbiederman@hotmail.com', '3078710773', '172.58.67.145', NULL, NULL, NULL, 55, '2021-11-06 08:34:00', NULL),
(51, 'windsor', 'US', '418 cynthia ct', '95492', 'CA', 'theodore', 'C capellos', 'webefishing@yahoo.com', '7078365205', '67.180.71.40', NULL, NULL, NULL, 56, '2021-11-07 00:04:38', '2021-11-07 00:04:38'),
(52, 'YARDLEY', 'US', '1710 yardley commons', '19067', 'PA', 'daniel', 'gramigna', 'maxwellgramigna2@yahoo.com', '2672294212', '110.36.181.10', NULL, NULL, NULL, 57, '2021-11-07 00:00:48', NULL),
(53, 'Connersville', 'US', '2043 West Country Club Road', '47331', 'IN', 'Bradley', 'Wilmore', 'Wilmorebradley@yahoo.com', '7655413457', '68.45.77.67', NULL, NULL, NULL, 58, '2021-11-07 00:36:31', NULL),
(54, 'east patchogue', 'US', '115 lake dr', '11772', 'NY', 'scott', 'stocker', 'sctts001@aol.com', '6314123615', '67.80.65.94', NULL, NULL, NULL, 59, '2021-11-10 04:37:55', '2021-11-10 04:37:55'),
(55, 'Pittsburgh', 'US', '191 Cobblestone Dr', '15237', 'PA', 'Fredrick', 'O Kendrick', 'kendrickphd@yahoo.com', '4128557301', '172.58.86.243', NULL, NULL, NULL, 60, '2021-11-07 01:07:28', NULL),
(56, 'warren', 'US', '1956 Stewart Dr nw', '44485', 'OH', 'Margaret', 'E Criss', 'eean42@neo.rr.com', '3306467540', '166.216.159.31', NULL, NULL, NULL, 61, '2021-11-07 03:22:31', '2021-11-07 03:22:31'),
(57, 'Ratho', 'GB', '66 west croft', 'Eh28 8pb', 'Edinburgh', 'Keo', 'Kidd', 'Keokidd@yahoo.co.uk', '07713908238', '90.209.200.170', NULL, NULL, NULL, 62, '2021-11-07 02:34:39', NULL),
(58, 'Stone mountain', 'US', '1090 to lani dr', '30083', 'GA', 'Maria', 'R Walker', 'Mariajohnson500@yahoo.com', '4702599345', '108.89.138.87', NULL, NULL, NULL, 63, '2021-11-07 06:43:34', '2021-11-07 06:43:34'),
(59, 'floydada', 'US', '1000 west kentucky street', '79235', 'TX', 'Karen', 'A Farris', 'TURNERKAT.23@GMAIL.COM', '8067812847', '104.8.107.72', NULL, NULL, NULL, 64, '2021-11-07 08:26:09', NULL),
(60, 'Fountain', 'US', '7406 Willow Pines Place', '80817', 'CO', 'Tanya', 'Van der Stock', 'Tanya@tansempire.com', '5106979365', '73.203.75.148', NULL, NULL, NULL, 65, '2021-11-09 01:01:32', '2021-11-09 01:01:32'),
(61, 'Green river', 'US', '655 ironwood st', '82935', 'WY', 'Thomas', 'Biederman', 'thomasbiederman@hotmail.com', '3078710773', '172.56.6.15', NULL, NULL, NULL, 66, '2021-11-09 03:11:48', '2021-11-09 03:11:48'),
(62, 'Parkville', 'US', '9305 Montego Ave', '21234', 'MD', 'Fredrick', 'Riefner III', 'F.riefner@comcast.net', '4438048550', '69.160.255.135', NULL, NULL, NULL, 67, '2021-11-08 23:20:03', '2021-11-08 23:20:03'),
(63, 'Cedartown', 'US', '1037 Campbell Rd', '30125', 'GA', 'Carol', 'Jones', 'xlecamry@aol.com', '7702891483', '174.80.137.8', NULL, NULL, NULL, 68, '2021-11-09 00:45:36', NULL),
(64, 'HUNTSVILLE', 'US', '100070 GREENVIEW DRIVE', '35803', 'Al', 'Thomas', 'REINHART', 'TOMREIN3@AOL.COM', '2566515293', '68.62.220.84', NULL, NULL, NULL, 69, '2021-11-09 08:43:54', '2021-11-09 08:43:54'),
(65, 'indian rock beach', 'US', 'po box 669', '33785', 'FL', 'Irene', 'c Escalera', 'caramelprod@mpinet.net', '7272371807', '47.202.49.145', NULL, NULL, NULL, 70, '2021-11-09 03:18:42', NULL),
(66, 'Pittsburgh', 'US', '191 Cobblestone Dr', '15237', 'PA', 'Fredrick', 'O Kendrick', 'kendrickphd@yahoo.com', '4128557301', '172.58.184.40', NULL, NULL, NULL, 71, '2021-11-09 10:48:24', '2021-11-09 10:48:24'),
(67, 'Staten island', 'US', '297 Thomas street', '10306', 'NY', 'James', 'Schermerhorn', 'jim5109@aol.com', '9175386154', '173.56.8.154', NULL, NULL, NULL, 72, '2021-11-09 05:04:46', '2021-11-09 05:04:46'),
(68, 'Scottsdale', 'US', '15030 N 90th Pl', '85260', 'AZ', 'Heather', 'Feldhacker', 'Hfeldhacker@yahoo.com', '6025580594', '107.77.228.116', NULL, NULL, NULL, 73, '2021-11-09 06:00:09', NULL),
(69, 'Coogee', 'AU', 'PO Box 343', '2034', 'NSW', 'Kelvin', 'B Lawrie', 'kel_lawrie@bigpond.com', '0413831810', '101.173.241.202', NULL, NULL, NULL, 74, '2021-11-09 06:28:06', '2021-11-09 06:28:06'),
(70, 'West windsor', 'US', '7 Marian dr', '08550', 'Nj', 'Michael', 'Palmer', 'Rehabmd83@gmail.com', '6099778304', '100.35.23.18', NULL, NULL, NULL, 75, '2021-11-09 08:21:26', '2021-11-09 08:21:26'),
(71, 'London', 'GB', '9c Keyes road', 'Nw32xb', 'England', 'Mollie', 'Grosberg', 'Molliegrosberg@hotmail.com', '07790836261', '87.80.236.155', NULL, NULL, NULL, 76, '2021-11-09 09:16:10', NULL),
(72, 'Newhall', 'US', '26281 Rainbow Glen Dr', '91321', 'Ca', 'Travis', 'T Miller', 'Tmiller5281@yahoo.com', '6617132581', '191.101.132.105', NULL, NULL, NULL, 77, '2021-11-10 02:32:56', '2021-11-10 02:32:56'),
(73, 'Suisun City', 'US', '513 Del Oro Ct', '94585', 'CA', 'Susan', 'Miesner', 'Susanm24@sbcglobal.net', '7076883089', '76.232.182.204', NULL, NULL, NULL, 78, '2021-11-18 11:49:26', '2021-11-18 11:49:26'),
(74, 'dartmouth', 'US', '141 tucker lane', '02747', 'MA', 'christine', 'oliveira', 'calvin71902@yahoo.com', '5089658310', '174.196.197.230', NULL, NULL, NULL, 79, '2021-11-10 01:30:22', '2021-11-10 01:30:22'),
(75, 'TULSA', 'US', '3701 S Peoria Ave', '74105', 'OK', 'scott', 'marion', 'marion@kjrh.com', '9185953512', '107.203.57.66', NULL, NULL, NULL, 80, '2021-11-10 00:23:43', '2021-11-10 00:23:43'),
(76, 'Norwalk', 'US', '87 Magnolia Ave', '06850', 'CT', 'Jennifer', 'Rizzo', 'jrizzo7951@aol.com', '2038567395', '173.2.32.80', NULL, NULL, NULL, 81, '2021-11-15 01:23:29', '2021-11-15 01:23:29'),
(77, 'Pembroke Pnes', 'US', '541 Sw 178th Way', '33029', 'FL', 'Steven', 'A Server', 'steserver@gmail.com', '3056086826', '76.110.143.187', NULL, NULL, NULL, 82, '2021-11-10 03:57:40', '2021-11-10 03:57:40'),
(78, 'Cold Ash', 'GB', '4 Hazels Paddock', 'RG18 9LD', 'Berkshire', 'Karl', 'Whelpdale', 'karlwhelpdale@gmail.com', '447506663688', '90.213.221.74', NULL, NULL, NULL, 83, '2021-11-10 02:12:35', NULL),
(79, 'Holmbury St Mary', 'GB', 'Wildwood Felday Glade', 'RH5 6PG', 'Surrey', 'Paul', 'Benedict', 'paulbenedict46@yahoo.com', '01306730304', '5.81.9.162', NULL, NULL, NULL, 84, '2021-11-10 03:42:45', NULL),
(80, 'New York', 'US', '95 Greene St  Apt 4C', '10012', 'NY', 'Meriam', 'Alrashid', 'Meriamal-rashid@eversheds-sutherland.com', '9493789133', '66.65.132.53', NULL, NULL, NULL, 85, '2021-11-10 07:03:20', '2021-11-10 07:03:20'),
(81, 'Rye', 'US', '66 milton road  J42', '10580', 'NY', 'brian', 'Stack', 'brianwstack@yahoo.com', '9142915240', '172.58.228.175', NULL, NULL, NULL, 86, '2021-11-10 05:13:10', '2021-11-10 05:13:10'),
(82, 'Reynoldsburg', 'US', '6435 Old Church Way', '43068', 'OH', 'Eric', 'Romweber', 'ericromweber@wowway.com', '6145519363', '69.47.138.17', NULL, NULL, NULL, 87, '2021-11-10 05:19:48', '2021-11-10 05:19:48'),
(83, 'Cartersville', 'US', '214 W Main Street', '30120', 'GA', 'Angela', 'Edwards', 'Angeliaedwards@comcast.net', '7703243417', '174.254.56.38', NULL, NULL, NULL, 88, '2021-11-10 05:50:43', NULL),
(84, 'Hampton', 'US', '359 Warrington Circle', '23669', 'VA', 'Emory', 'J Thomason', 'tomthomason1@hotmail.com', '7578761500', '70.106.16.214', NULL, NULL, NULL, 89, '2021-11-10 07:01:26', '2021-11-10 07:01:26'),
(85, 'Henderson', 'US', '855 N Stephanie St Unit 2311', '89014', 'NV', 'Paul', 'C Singletleton', 'pcurtiscrete@aol.com', '7027710018', '107.77.231.5', NULL, NULL, NULL, 90, '2021-11-10 06:38:02', NULL),
(86, 'MIDVALE', 'US', '7643 Lark Meadow cove', '84047', 'UT', 'Thomas', 'Dolan', 'Thomas.Dolan12@comcast.net', '8014400453', '174.204.23.46', NULL, NULL, NULL, 91, '2021-11-10 07:52:22', NULL),
(87, 'Hyde Park', 'US', '220 Fairmount Ave', '02136', 'MA', 'Michael', 'R Horner', 'michael_horner@comcast.net', '6179010557', '24.62.1.23', NULL, NULL, NULL, 92, '2021-11-10 09:12:15', '2021-11-10 09:12:15'),
(88, 'Monroe', 'US', '234 Cutlers Farm Rd', '06468', 'CT', 'Missy', 'Ogando', 'mnk.pinto.ogando@gmail.com', '2037676764', '35.134.14.98', NULL, NULL, NULL, 93, '2021-11-11 01:56:08', '2021-11-11 01:56:08'),
(89, 'Kapaa', 'US', '6231 Hauiki Rd', '96746', 'HI', 'Lehua', 'Fernandes Salling', 'Ilikelehua@yahoo.com', '8088223484', '24.165.48.52', NULL, NULL, NULL, 94, '2021-11-10 08:48:44', NULL),
(90, 'Bradford', 'GB', '49 Bingley Road', 'BD18 4SB', 'West Yorkshire', 'Julie', 'Baldwin', 'Juliebaldwin1970@live.co.uk', '07870606408', '86.189.213.105', NULL, NULL, NULL, 95, '2021-11-10 08:58:01', NULL),
(91, 'millstone township', 'US', '16 van arsdale circle', '08535', 'nj', 'Richard', 'Meyer', 'theohbananas@yahoo.com', '7329916249', '156.146.34.145', NULL, NULL, NULL, 96, '2021-11-11 02:10:34', '2021-11-11 02:10:34'),
(92, 'TULSA', 'US', '3701 S Peoria Ave', '74105', 'OK', 'scott', 'marion', 'marion@kjrh.com', '9185953512', '174.202.166.247', NULL, NULL, NULL, 97, '2021-11-11 01:59:59', '2021-11-11 01:59:59'),
(93, 'Naples', 'US', '320 Sugar Pine Ln', '34108', 'FL', 'Brian', 'Michael Smith', 'Brismi0808@gmail.com', '2392739897', '174.211.100.62', NULL, NULL, NULL, 98, '2021-11-11 00:19:32', NULL),
(94, 'woolwich', 'US', '2606 lexington mews', '08085', 'nj', 'julie', 'tripoli', 'oregon91704@aol.com', '6094325773', '50.235.12.114', NULL, NULL, NULL, 99, '2021-11-11 02:08:54', NULL),
(95, 'Naples', 'US', '2905 gulfshore blvd Florida', '34103', 'FL', 'James', 'A Oleary', 'jao34103@hotmail.com', '2394502865', '134.56.112.235', NULL, NULL, NULL, 100, '2021-11-11 02:42:46', '2021-11-11 02:42:46'),
(96, 'Bremond', 'US', '13355 Andreski Road', '76629', 'TX', 'Dennis', 'Groholski', 'Dengro66@yaho.com', '2547166192', '174.202.226.106', NULL, NULL, NULL, 101, '2021-11-11 03:14:42', NULL),
(97, 'south hill park', 'GB', '5 south hill mansions 68-70 south hill park', 'NW32SL', 'England', 'fiona', 'lafferty', 'Fionalafferty@blueyonder.co.uk', '07802447856', '92.233.196.65', NULL, NULL, NULL, 102, '2021-11-11 04:00:09', '2021-11-11 04:00:09'),
(98, 'Tempe', 'US', '2440 S mill Ave 8136', '85282', 'AZ', 'George', 'Mccullough', 'georgemccullough385@gmail.com', '4806840263', '174.205.179.49', NULL, NULL, NULL, 103, '2021-11-11 03:58:12', '2021-11-11 03:58:12'),
(99, 'Vinemont', 'US', '445 County Road 1218', '35179', 'Al', 'Karen', 'y Vance', 'Kvance98@aol.com', '2563391739', '72.255.1.238', NULL, NULL, NULL, 104, '2021-11-11 09:03:04', '2021-11-11 09:03:04'),
(100, 'Spokane', 'US', '2603 N Napa', '99207', 'WA', 'Catherine', 'Hills', 'chillsrun3@comcast.net', '5095996102', '174.31.83.249', NULL, NULL, NULL, 105, '2021-11-11 06:53:10', '2021-11-11 06:53:10'),
(101, 'Roseville', 'US', '1900 S Cirby  17', '95661', 'CA', 'Christa', 'Pifer', 'Sitarfchrista@gmail.com', '9162200277', '174.34.196.139', NULL, NULL, NULL, 106, '2021-11-11 07:37:55', '2021-11-11 07:37:55'),
(102, 'Pittsburgh', 'US', '191 Cobblestone Dr', '15237', 'PA', 'Fredrick O', 'Kendrick', 'kendrickphd@yahoo.com', '4128557301', '172.58.184.12', NULL, NULL, NULL, 107, '2021-11-12 04:25:18', '2021-11-12 04:25:18'),
(103, 'Lehi', 'US', '3333 Digital Drive 5th Floor', '84043', 'UT', 'Kenneth', 'Forrest', 'Firstforrest@gmail.com', '3106899794', '172.58.72.242', NULL, NULL, NULL, 108, '2021-11-11 08:59:15', NULL),
(104, 'Scottsdale', 'US', '20701 N Scottsdale Rd', '85255', 'Ar', 'Todd', 'E Moseson', 'Crestasouthwest@outlook.com', '6027990265', '68.2.104.54', NULL, NULL, NULL, 109, '2021-11-12 23:35:47', '2021-11-12 23:35:47'),
(105, 'O Fallon', 'US', '254 Colt Circle', '63368', 'MO', 'Richard', 'Hamlton', 'ou812.barf@gmail.com', '6366333929', '172.58.143.179', NULL, NULL, NULL, 110, '2021-11-11 23:56:43', NULL),
(106, 'Huffman', 'US', '1111 Valley Commons Dr', '77336', 'TX', 'Kevin', 'S Abshire', 'coachabshire11@yahoo.com', '7138596780', '107.115.147.85', NULL, NULL, NULL, 111, '2021-11-15 03:36:17', '2021-11-15 03:36:17'),
(107, 'San antonio', 'US', '302 Pearl pkwy 3213', '78215', 'TX', 'Katie', 'R Bowen', 'katiehaugland@hotmail.com', '9032405870', '104.48.214.103', NULL, NULL, NULL, 112, '2021-11-12 05:47:56', '2021-11-12 05:47:56'),
(108, 'Pasadena', 'US', '2199 Oakwood St', '91104', 'CA', 'Pilar', 'Oliva', 'Pilar.m.oliva@gmail.com', '6263944704', '162.207.95.162', NULL, NULL, NULL, 113, '2021-11-12 05:25:26', '2021-11-12 05:25:26'),
(109, 'Cold lake', 'CA', '6 1001 7 ave', 'T9m 0c4', 'Ab', 'Merissa', 'Smith', 'Smith.merissa@hotmail.com', '7808080121', '207.228.78.243', NULL, NULL, NULL, 114, '2021-11-12 06:28:38', '2021-11-12 06:28:38'),
(110, 'bear creek', 'US', '2303 meadow run rd', '18702', 'pa', 'Steve', 'rovinski', 'steve.rovinski89@gmail.com', '5708812831', '24.115.50.241', NULL, NULL, NULL, 115, '2021-11-12 22:13:49', '2021-11-12 22:13:49'),
(111, 'Newtown', 'US', '3 Haines Circle', '18940', 'PA', 'Jessica', 'P Burgess', 'Jessegirl_ca@hotmail.com', '6198690045', '71.224.73.48', NULL, NULL, NULL, 116, '2021-11-12 10:22:16', '2021-11-12 10:22:16'),
(112, 'Naples', 'US', '320 Sugar Pine Ln', '34108', 'FL', 'Brian', 'Michael Smith', 'Brismi0808@gmail.com', '2392739897', '174.211.163.13', NULL, NULL, NULL, 117, '2021-11-13 00:03:19', '2021-11-13 00:03:19'),
(113, 'Glasgow', 'GB', '158 Estate road Carmyle Glasgow', 'G32 8AQ', 'Glasgow', 'Janie', 'M Fox', 'janiem161@yahoo.com', '07833326387', '81.96.142.183', NULL, NULL, NULL, 118, '2021-11-13 01:54:32', '2021-11-13 01:54:32'),
(114, 'Fresno', 'US', '3010 Acacia Fair Ln', '77545', 'TX', 'La Toya', 'T Newsome', 'Babygirl-4@sbcglobal.net', '8324836881', '107.77.221.85', NULL, NULL, NULL, 119, '2021-11-13 01:59:35', NULL),
(115, 'highlands ranch', 'US', '1211 Michener way', '80126', 'co', 'John', 'Morton', 'Johnm19489@aol.com', '3039097722', '202.163.123.230', NULL, NULL, NULL, 120, '2021-11-20 00:26:42', '2021-11-20 00:26:42'),
(116, 'Stockton', 'US', '4322 Whispering Wind Court', '95219', 'CA', 'Lois', 'Lang', 'Lois.lang@evolvepartnergroup.com', '2096085465', '73.41.131.235', NULL, NULL, NULL, 121, '2021-11-13 03:52:33', '2021-11-13 03:52:33'),
(117, 'highlands ranch', 'US', '1211 Michener way', '80126', 'co', 'John', 'Morton', 'Johnm19489@aol.com', '3039097722', '72.255.43.25', NULL, NULL, NULL, 122, '2021-11-16 01:56:05', NULL),
(118, 'Columbia', 'US', '1634 Whiteford Road', '29210', 'SC', 'Darryl', 'Bennett', 'edboyd5@aol.com', '8035538578', '173.93.151.141', NULL, NULL, NULL, 123, '2021-11-20 04:23:59', '2021-11-20 04:23:59');

-- --------------------------------------------------------

--
-- Table structure for table `employees`
--

CREATE TABLE `employees` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `invoices`
--

CREATE TABLE `invoices` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `order_id` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `inv_url` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `amount` varchar(225) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `currency` varchar(225) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `merchant_id` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `merchant_url` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `shipping_amount` double NOT NULL,
  `ship_to_address_city` varchar(225) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `ship_to_address_country` varchar(225) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `ship_to_address_line1` varchar(225) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `ship_to_address_postal_code` varchar(225) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `ship_to_address_state` varchar(225) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `ship_to_email` varchar(225) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `ship_to_phone` varchar(225) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `ship_to_forename` varchar(225) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `ship_to_surname` varchar(225) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `bill_to_address_city` varchar(225) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `bill_to_address_country` varchar(225) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `bill_to_address_line1` varchar(225) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `bill_to_address_postal_code` varchar(225) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `bill_to_address_state` varchar(225) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `bill_to_forename` varchar(225) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `bill_to_surname` varchar(225) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `bill_to_email` varchar(225) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `bill_to_phone` varchar(225) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` varchar(225) COLLATE utf8mb4_unicode_ci DEFAULT 'pending',
  `expire` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `invoices`
--

INSERT INTO `invoices` (`id`, `order_id`, `inv_url`, `amount`, `currency`, `merchant_id`, `merchant_url`, `shipping_amount`, `ship_to_address_city`, `ship_to_address_country`, `ship_to_address_line1`, `ship_to_address_postal_code`, `ship_to_address_state`, `ship_to_email`, `ship_to_phone`, `ship_to_forename`, `ship_to_surname`, `bill_to_address_city`, `bill_to_address_country`, `bill_to_address_line1`, `bill_to_address_postal_code`, `bill_to_address_state`, `bill_to_forename`, `bill_to_surname`, `bill_to_email`, `bill_to_phone`, `status`, `expire`, `created_at`, `updated_at`) VALUES
(4186, '80000', '7JDRcCbbY9MeKykk', '430', 'USD', 'nikxen_vmi', 'https://nikxen.com', 29, 'Kingston', 'US', '459 smalley ln', '37763', 'TN', 'savagewendyjohn@charter.net', '8653168564', 'Wendy', 'Savage', 'Kingston', 'US', '459 smalley ln', '37763', 'TN', 'Wendy', 'Savage', 'savagewendyjohn@charter.net', '8653168564', 'pending', 'no', '2021-10-06 23:59:14', '2021-12-06 13:20:06'),
(4187, '80001', 'Rrb71GoAIvVby7My', '148', 'USD', 'nikxen_vmi', 'https://nikxen.com', 29, 'Lenoir City', 'US', '335 Zane Lane', '37772', 'TN', 'darenspoon@gmail.com', '8656040396', 'Daren', 'Spoon', 'Lenoir City', 'US', '335 Zane Lane', '37772', 'TN', 'Daren', 'Spoon', 'darenspoon@gmail.com', '8656040396', 'pending', 'no', '2021-10-07 00:02:29', '2021-12-06 11:49:20'),
(4188, '80002', 'v1rISFeVRkQueaBj', '377', 'USD', 'nikxen_vmi', 'https://nikxen.com', 29, 'Seattle', 'US', '6905 carelton ave s', '98108', 'WA', 'Adamcboardman@mac.com', '4153682482', 'Adam', 'Boardman', 'Seattle', 'US', '6905 carelton ave s', '98108', 'WA', 'Adam', 'Boardman', 'Adamcboardman@mac.com', '4153682482', 'paid', 'no', '2021-10-07 00:11:02', '2021-10-07 00:21:42'),
(4189, '80003', 'PRvbODdI2vNpSDz7', '278', 'USD', 'nikxen_vmi', 'https://nikxen.com', 29, 'Stow', 'US', '4342 Cherryhurst Drive', '44224', 'OH', 'ouacstow@gmail.com', '3306872550', 'annie', 'weddle', 'Stow', 'US', '4342 Cherryhurst Drive', '44224', 'OH', 'annie', 'weddle', 'ouacstow@gmail.com', '3306872550', 'pending', 'no', '2021-10-07 00:41:59', '2021-10-07 00:41:59'),
(4190, '80004', 'dIvv0G1JseazI6pi', '497', 'USD', 'nikxen_vmi', 'https://nikxen.com', 29, 'Naples', 'US', '320 Sugar Pine Ln', '34108', 'FL', 'Brismi0808@gmail.com', '2392739897', 'Brian', 'Michael Smith', 'Naples', 'US', '816 Kingbird court', '34108', 'FL', 'Brian', 'Michael Smith', 'Brismi0808@gmail.com', '2392739897', 'paid', 'no', '2021-10-07 19:19:43', '2021-10-08 22:37:47'),
(4191, '80005', 's25oF0GUyhrrYVal', '460', 'USD', 'nikxen_vmi', 'https://nikxen.com', 30, 'Falls Chruch', 'US', '3242 Holly Berry Ct', '22043', 'VA', 'roberts240@hotmail.com', '5712157433', 'Elizabeth', 'R Roberts', 'Annandale', 'US', 'PO Box 11', '22003', 'VA', 'Elizabeth', 'R Roberts', 'roberts240@hotmail.com', '5712157433', 'pending', 'no', '2021-10-07 21:21:45', '2021-10-07 21:21:45'),
(4192, '80006', '6oSVFjbJfXCHuZ1X', '440', 'USD', 'nikxen_vmi', 'https://nikxen.com', 29, 'Whitehouse', 'US', '421 Amanda Court', '75791', 'TX', 'kyli@suddenlink.net', '9033165988', 'Kyli', 'Nail', 'Whitehouse', 'US', '421 Amanda Court', '75791', 'TX', 'Kyli', 'Nail', 'kyli@suddenlink.net', '9033165988', 'pending', 'no', '2021-10-07 21:24:33', '2021-10-07 21:30:14'),
(4193, '80007', 'bUawJQ63TQ6VjTh5', '460', 'USD', 'nikxen_vmi', 'https://nikxen.com', 29, 'Falls Chruch', 'US', '3242 Holly Berry Ct', '22043', 'VA', 'roberts240@hotmail.com', '5712157433', 'Elizabeth', 'R Roberts', 'Annandale', 'US', 'PO Box 11', '22003', 'VA', 'Elizabeth', 'R Roberts', 'roberts240@hotmail.com', '5712157433', 'pending', 'no', '2021-10-07 23:05:21', '2021-10-07 23:05:21'),
(4194, '80008', '92xG9nEqPAConrcw', '377', 'USD', 'nikxen_vmi', 'https://nikxen.com', 29, 'Charleston', 'US', '2284 Ashley River Rd  Apt  303D', '29414', 'SC', 'Lizawrites@yahoo.com', '9372198578', 'Liza', 'Martin', 'Charleston', 'US', '2284 Ashley River Rd  Apt  303D', '29414', 'SC', 'Liza', 'Martin', 'Lizawrites@yahoo.com', '9372198578', 'pending', 'no', '2021-10-07 23:08:08', '2021-10-07 23:08:08'),
(4195, '80009', 'DBn0cEtS3Mk96Ggy', '600', 'USD', 'nikxen_vmi', 'https://nikxen.com', 29, 'Hudson', 'US', '8600 forest glade dr', '34667', 'FL', 'Tonygig120@gmail.com', '5166448975', 'Anthony', 'Giglio', 'Hudson', 'US', '8600 forest glade dr', '34667', 'FL', 'Anthony', 'Giglio', 'Tonygig120@gmail.com', '5166448975', 'pending', 'no', '2021-10-08 00:00:09', '2021-10-08 00:00:09'),
(4196, '80010', '0Uxfyt3twGf1bQF8', '520', 'USD', 'nikxen_vmi', 'https://nikxen.com', 29, 'Newtown', 'US', '3 Haines Circle', '18940', 'PA', 'Jessegirl_ca@hotmail.com', '6198690045', 'Jessica', 'Burgess', 'Newtown', 'US', '3 Haines Circle', '18940', 'PA', 'Jessica', 'Burgess', 'Jessegirl_ca@hotmail.com', '6198690045', 'paid', 'no', '2021-10-08 01:09:01', '2021-10-08 01:19:36'),
(4197, '80011', 's7X4j0GpJGS5J0k1', '228', 'USD', 'nikxen_vmi', 'https://nikxen.com', 29, 'San Mateo', 'US', '1826 Hamlet St', '94403', 'CA', 'Eamlynne@icloud.com', '6507661118', 'Darrah', 'Coddington', 'San Mateo', 'US', '1826 Hamlet St', '94403', 'CA', 'Darrah', 'Coddington', 'Eamlynne@icloud.com', '6507661118', 'paid', 'no', '2021-10-08 02:46:08', '2021-10-08 03:00:20'),
(4198, '80012', 'LxcYiJZNMTaZy8nd', '730', 'USD', 'nikxen_vmi', 'https://nikxen.com', 29, 'Walla', 'US', '3565 Powerline Rd', '99362', 'WA', 'bgreene@columbiarea.coop', '5096290237', 'Robert', 'C Greene', 'Walla', 'US', '3565 Powerline Rd', '99362', 'WA', 'Robert', 'C Greene', 'bgreene@columbiarea.coop', '5096290237', 'pending', 'no', '2021-10-08 03:20:26', '2021-10-08 03:20:26'),
(4199, '80013', 'LHUJsnGaoJxNgLHo', '829', 'USD', 'nikxen_vmi', 'https://nikxen.com', 29, 'Bradford', 'GB', '49 Bingley Road', 'BD18 4SB', 'West Yorkshire', 'Juliebaldwin1970@live.co.uk', '07870606408', 'Julie', 'Baldwin', 'Bradford', 'GB', '49 Bingley Road', 'BD18 4SB', 'West Yorkshire', 'Julie', 'Baldwin', 'Juliebaldwin1970@live.co.uk', '07870606408', 'paid', 'no', '2021-10-08 03:32:55', '2021-10-08 03:47:45'),
(4200, '80014', 'lbHKEsnt2XB7pN7D', '197', 'USD', 'nikxen_vmi', 'https://nikxen.com', 29, 'Liverpool', 'GB', '42 Silver Leigh', 'L17 5BL', 'England', 'J.sloan251@btinternet.com', '07485172423', 'Jayne', 'Sloan', 'Liverpool', 'GB', '42 Silver Leigh', 'L17 5BL', 'England', 'Jayne', 'Sloan', 'J.sloan251@btinternet.com', '07485172423', 'paid', 'no', '2021-10-08 16:18:22', '2021-10-08 17:07:49'),
(4201, '80015', 'd2J1Ly6c8Vj5xB4W', '170', 'USD', 'nikxen_vmi', 'https://nikxen.com', 29, 'GROVELAND', 'US', '2 HARVARD RD', '01834', 'MA', 'Hashemjohn1@gmail.com', '9784570193', 'John', 'Hashem', 'GROVELAND', 'US', '2 HARVARD RD', '01834', 'MA', 'John', 'Hashem', 'Hashemjohn1@gmail.com', '9784570193', 'pending', 'no', '2021-10-08 18:38:09', '2021-12-06 12:18:49'),
(4202, '80016', 'oaXFh0osNBsBPeFc', '238', 'USD', 'nikxen_vmi', 'https://nikxen.com', 29, 'midland', 'US', '4604 anetta dr', '79703', 'TX', 'dajugl@yahoo.com', '4322366666', 'dale', 'kershner', 'midland', 'US', '4604 anetta dr', '79703', 'TX', 'dale', 'kershner', 'dajugl@yahoo.com', '4322366666', 'pending', 'no', '2021-10-08 23:10:10', '2021-12-06 12:19:34'),
(4203, '80017', 'OUllWrOMzii9pUBT', '728', 'USD', 'nikxen_vmi', 'https://nikxen.com', 29, 'SANDOWN', 'GB', 'Flat 4 Greenfields Newport road', 'PO369FH', 'ISLE OF WIGHT', 'Lindsaylou1302@hotmail.co.uk', '07779686170', 'Lindsay', 'C Allen', 'SANDOWN', 'GB', 'Flat 4 Greenfields Newport road', 'PO369FH', 'ISLE OF WIGHT', 'Lindsay', 'C Allen', 'Lindsaylou1302@hotmail.co.uk', '07779686170', 'paid', 'no', '2021-10-08 23:17:28', '2021-10-09 00:21:59'),
(4204, '80018', 'NiuTbUqQ68zD6Gpb', '343', 'USD', 'nikxen_vmi', 'https://nikxen.com', 29, 'Opelika', 'US', '2700 3rd Ave', '36801', 'AL', 'Bamagarcia@gmail.com', '3347032893', 'jason', 'Justice', 'Opelika', 'US', '2700 3rd Ave', '36801', 'AL', 'jason', 'Justice', 'Bamagarcia@gmail.com', '3347032893', 'paid', 'no', '2021-10-09 00:02:18', '2021-12-06 12:18:28'),
(4205, '80019', 'ew4FlC4cSG56Eclw', '239', 'USD', 'nikxen_vmi', 'https://nikxen.com', 29, 'Houston', 'US', '5319 Institute Lane', '77005', 'TX', 'gwesh1@gmail.com', '7138256770', 'George', 'Hawkins', 'Houston', 'US', '5319 Institute Lane', '77005', 'TX', 'George', 'Hawkins', 'gwesh1@gmail.com', '7138256770', 'pending', 'no', '2021-10-09 00:54:27', '2021-10-09 00:54:27'),
(4206, '80020', 'q1hoj2QpBfxvtlzl', '450', 'USD', 'nikxen_vmi', 'https://nikxen.com', 29, 'Maxwell', 'US', 'P o box 455', '95955', 'Ca', 'Half100jones@hotmail.com', '5306353698', 'Gary', 'Jones', 'Maxwell', 'US', 'P o box 455', '95955', 'Ca', 'Gary', 'Jones', 'Half100jones@hotmail.com', '5306353698', 'pending', 'no', '2021-10-09 01:38:23', '2021-10-09 01:38:23'),
(4207, '80021', 'pLs4by0OtfKaJeDl', '745', 'USD', 'nikxen_vmi', 'https://nikxen.com', 29, 'Dover', 'US', '16 south main st', '17315', 'PA', 'Bretaddlesberger@gmail.com', '7173240678', 'Bret', 'Addlesberger', 'Dover', 'US', '16 south main st', '17315', 'PA', 'Bret', 'Addlesberger', 'Bretaddlesberger@gmail.com', '7173240678', 'paid', 'no', '2021-10-09 02:37:06', '2021-10-09 21:41:12'),
(4208, '80022', 'L55ho2RuOV9cdr26', '485', 'USD', 'nikxen_vmi', 'https://nikxen.com', 29, 'Porthleven', 'GB', '5a Fore Street', 'TR139HQ', 'Cornwall', 'georgiegillam@gmail.com', '447779233831', 'Georgia', 'Gillam', 'St Ives', 'GB', 'Royal Square', 'TR262ND', 'Cornwall', 'Georgia', 'Gillam', 'georgiegillam@gmail.com', '447779233831', 'paid', 'no', '2021-10-09 02:47:01', '2021-10-09 02:51:15'),
(4209, '80023', '9fWkPnZHlF5cHAHk', '263', 'USD', 'nikxen_vmi', 'https://nikxen.com', 29, 'Spokane', 'US', '222 W Mission Ave Ste 25', '99201', 'WA', 'brantstevens@yahoo.com', '5097100085', 'Brant', 'L Stevens', 'Spokane', 'US', '222 W Mission Ave Ste 25', '99201', 'WA', 'Brant', 'L Stevens', 'brantstevens@yahoo.com', '5097100085', 'pending', 'no', '2021-10-09 03:31:28', '2021-10-09 03:31:28'),
(4210, '80024', 'ADzstXwrmMrYRmiV', '422', 'USD', 'nikxen_vmi', 'https://nikxen.com', 29, 'praze camborne', 'GB', 'the hollies station hill', 'TR14 0JT', 'cornwall', 'kelvbatt@gmail.com', '07817241024', 'kelvin', 'batt', 'praze camborne', 'GB', 'the hollies station hill', 'TR14 0JT', 'cornwall', 'kelvin', 'batt', 'kelvbatt@gmail.com', '07817241024', 'pending', 'no', '2021-10-09 03:36:26', '2021-10-09 03:36:26'),
(4211, '80025', '8QzBgTZFoPJBwRbw', '378', 'USD', 'nikxen_vmi', 'https://nikxen.com', 29, 'south heights', 'US', '24 Bradbury drive', '15081', 'PA', 'straderr69@gmail.com', '7246500609', 'Jason', 'J strader', 'south heights', 'US', '24 Bradbury drive', '15081', 'PA', 'Jason', 'J strader', 'straderr69@gmail.com', '7246500609', 'pending', 'no', '2021-10-09 21:19:10', '2021-10-09 21:19:10'),
(4212, '80026', 'NW62JM4rX7tuGMrn', '228', 'USD', 'nikxen_vmi', 'https://nikxen.com', 29, 'Pittsburgh', 'US', '115 Cobb Avenue', '15205', 'PA', 'Ecolley817@aol.com', '8148072671', 'Ellen', 'Janocha', 'Pittsburgh', 'US', '115 Cobb Avenue', '15205', 'PA', 'Ellen', 'Janocha', 'Ecolley817@aol.com', '8148072671', 'paid', 'no', '2021-10-09 21:24:21', '2021-10-09 21:47:20'),
(4213, '80027', 'V6uUihxlJVPCMDhT', '197', 'USD', 'nikxen_vmi', 'https://nikxen.com', 29, 'Spring hill', 'US', '1149 wrights mill rd', '37174', 'TN', 'Emily.tnrn@yahoo.com', '6153979941', 'Emily', 'Dickson', 'Spring hill', 'US', '1149 wrights mill rd', '37174', 'TN', 'Emily', 'Dickson', 'Emily.tnrn@yahoo.com', '6153979941', 'paid', 'no', '2021-10-09 22:45:54', '2021-10-09 23:29:32'),
(4214, '80028', 'DNpzOfap9PVyUlKv', '550', 'USD', 'nikxen_vmi', 'https://nikxen.com', 29, 'Spokane', 'US', '222 W Mission Ave Ste 25', '99201', 'WA', 'brantstevens@yahoo.com', '5097100085', 'Brant', 'L Stevens', 'Spokane', 'US', '222 W Mission Ave Ste 25', '99201', 'WA', 'Brant', 'L Stevens', 'brantstevens@yahoo.com', '5097100085', 'pending', 'no', '2021-10-09 23:48:38', '2021-10-09 23:48:38'),
(4215, '80029', '8ZyIBovnRZ5vFSh2', '608', 'USD', 'nikxen_vmi', 'https://nikxen.com', 29, 'Mccormick', 'US', '207 mallard lane', '29835', 'Sc', 'Dan.drabik@aol.com', '3033251051', 'Dan', 'Drabik', 'Mccormick', 'US', '207 mallard lane', '29835', 'Sc', 'Dan', 'Drabik', 'Dan.drabik@aol.com', '3033251051', 'pending', 'no', '2021-10-10 00:08:18', '2021-10-10 00:08:18'),
(4216, '80030', 'w5Qcj8HCfoCG0SBX', '729', 'USD', 'nikxen_vmi', 'https://nikxen.com', 29, 'Columbus', 'US', '1985 Henderson Rd STE 1497', '43220', 'OH', 'Heather022079@icloud.com', '9124412291', 'Heather', 'Jarold', 'Columbus', 'US', '1985 Henderson Rd STE 1497', '43220', 'OH', 'Heather', 'Jarold', 'Heather022079@icloud.com', '9124412291', 'pending', 'no', '2021-10-10 00:47:50', '2021-10-10 00:47:50'),
(4217, '80031', 'iPFaZXzSfgSaqExT', '239', 'USD', 'nikxen_vmi', 'https://nikxen.com', 29, 'Baton Rouge', 'US', '1808 Edinburgh Ave', '70808', 'LA', 'Rouge430@yahoo.com', '2254287005', 'Sharon', 'Blanchard', 'Baton Rouge', 'US', '1808 Edinburgh Ave', '70808', 'LA', 'Sharon', 'Blanchard', 'Rouge430@yahoo.com', '2254287005', 'pending', 'no', '2021-10-10 03:11:04', '2021-10-10 03:11:04'),
(4218, '80032', '6zoFAhLumsuobl02', '474', 'USD', 'nikxen_vmi', 'https://nikxen.com', 29, 'Lima', 'US', '3040 Elijah', '45805', 'OH', 'jonmtrent@yahoo.com', '9374798710', 'Jon', 'Trent', 'Lima', 'US', '3040 Elijah', '45805', 'OH', 'Jon', 'Trent', 'jonmtrent@yahoo.com', '9374798710', 'pending', 'no', '2021-10-11 18:26:12', '2021-10-11 18:26:12'),
(4219, '80033', 'q6rZU4JNRADbvUfY', '749', 'USD', 'nikxen_vmi', 'https://nikxen.com', 29, 'Fresno', 'US', '3010 Acacia Fair Ln', '77545', 'TX', 'Babygirl-4@sbcglobal.net', '8324836881', 'Toni', 'T Newsome', 'Fresno', 'US', '3010 Acacia Fair Ln', '77545', 'TX', 'LaToya', 'T Newsome', 'Babygirl-4@sbcglobal.net', '8324836881', 'paid', 'no', '2021-10-11 19:30:31', '2021-10-11 21:57:57'),
(4220, '80034', 'oQFvoL9tVhfrugfV', '828', 'USD', 'nikxen_vmi', 'https://nikxen.com', 29, 'Roswell', 'US', '345 Hollyberry Dr', '30076', 'GA', 'deezannote55@gmail.com', '5026441585', 'Mary', 'Van Note', 'Roswell', 'US', '345 Hollyberry Dr', '30076', 'GA', 'Mary', 'Van Note', 'deezannote55@gmail.com', '5026441585', 'pending', 'no', '2021-10-11 20:42:36', '2021-10-11 20:42:36'),
(4221, '80035', 'hvBAXTBIokZYoh00', '249', 'USD', 'nikxen_vmi', 'https://nikxen.com', 29, 'Redwood city', 'US', '1776 Stockbridge avenue', '94061', 'CA', 'Susan.Rickard.hansen@gmail.com', '4152159416', 'Susan', 'Hansen', 'Redwood city', 'US', '1776 Stockbridge avenue', '94061', 'CA', 'Susan', 'Hansen', 'Susan.Rickard.hansen@gmail.com', '4152159416', 'pending', 'no', '2021-10-11 21:08:34', '2021-10-11 21:08:34'),
(4222, '80036', 'ucbm1WdSwiqbrVzH', '415', 'USD', 'nikxen_vmi', 'https://nikxen.com', 29, 'Chalfont', 'US', '28 Citadel Circle', '18914', 'PA', 'deanie0120@aol.com', '2155343888', 'Denise', 'Christensen', 'Chalfont', 'US', '28 Citadel Circle', '18914', 'PA', 'Denise', 'Christensen', 'deanie0120@aol.com', '2155343888', 'pending', 'no', '2021-10-11 21:46:34', '2021-10-11 21:54:01'),
(4223, '80037', 'WmbqlSK1URyC8MHgPB0LaFjZ4TAO76pd', '1', 'USD', 'nikxen_vmi', 'https://nikxen.com', 0, 'RWP', 'PK', 'Pindi town ISB', '54000', 'Punjab', 'nikxen@gmail.com', '033333333', 'Abc', 'Abc', 'RWP', 'PK', 'Pindi town ISB', '54000', 'Punjab', 'Abc', 'Abc', 'nikxen@gmail.com', '033333333', 'paid', 'no', '2021-11-02 23:29:24', '2021-11-02 23:34:50'),
(4224, '80038', 'wO9m0RysY7q3Vxi6aCQFEvcl5ZJnPWfd', '1', 'USD', 'nikxen_vmi', 'https://nikxen.com', 0, 'RWP', 'PK', 'Pindi town ISB', '54000', 'Punjab', 'nikxen@gmail.com', '33333333', 'Abc', 'Abc', 'RWP', 'PK', 'Pindi town ISB', '54000', 'Punjab', 'Abc', 'Abc', 'nikxen@gmail.com', '33333333', 'paid', 'no', '2021-11-02 23:53:05', '2021-11-02 23:55:04'),
(4225, '80039', 'Hp2I1JQLOM0Ahy69EGqVFnxjKzs8WfgN', '1', 'USD', 'nikxen_vmi', 'https://nikxen.com', 0, 'RWP', 'PK', 'Pindi town ISB', '54000', 'Punjab', 'nikxen@gmail.com', '033333333', 'Abc', 'Abc', 'RWP', 'PK', 'Pindi town ISB', '54000', 'Punjab', 'Abc', 'Abc', 'nikxen@gmail.com', '033333333', 'paid', 'no', '2021-11-03 22:42:42', '2021-11-03 22:48:17'),
(4226, '80040', 'nK8zgAfC0GNPp1S4XU5sO6eMlDmkTioj', '350', 'USD', 'nikxen_vmi', 'https://nikxen.com', 29, 'YARDLEY', 'US', '1710 yardley commons', '19067', 'PA', 'maxwellgramigna2@yahoo.com', '2672294212', 'daniel', 'gramigna', 'YARDLEY', 'US', '1710 yardley commons', '19067', 'PA', 'daniel', 'gramigna', 'maxwellgramigna2@yahoo.com', '2672294212', 'pending', 'no', '2021-11-04 18:46:55', '2021-11-04 18:46:55'),
(4227, '80041', 'dRLgv7C1xm02wispEOWrzKPGHfejVhDB', '200', 'USD', 'nikxen_vmi', 'https://nikxen.com', 29, 'Little Rock', 'US', '5 White Willow Ct', '72212', 'AR', 'barry@netmonkeys.net', '5017251888', 'Barry', 'Durham', 'Little Rock', 'US', '5 White Willow Ct', '72212', 'AR', 'Barry', 'Durham', 'barry@netmonkeys.net', '5017251888', 'paid', 'no', '2021-11-04 19:05:20', '2021-11-04 19:11:48'),
(4228, '80042', 'QbWxk6AqRKIiuVZYwvsaUtOm2hLfloCp', '197', 'USD', 'nikxen_vmi', 'https://nikxen.com', 29, 'Buckeye', 'US', '30887 W Fairmount Ave', '85396', 'AR', 'Isaven13@gmail.com', '4803716540', 'Isabel', 'Salazar', 'Buckeye', 'US', '30887 W Fairmount Ave', '85396', 'AR', 'Isabel', 'Salazar', 'Isaven13@gmail.com', '4803716540', 'paid', 'no', '2021-11-04 19:20:52', '2021-11-04 20:01:06'),
(4229, '80043', 'nPgk9FCJqpGTfQUzxoXAhaNMV45Li2Ym', '828', 'USD', 'nikxen_vmi', 'https://nikxen.com', 29, 'HUNTSVILLE', 'US', '100070 GREENVIEW DRIVE', '35803', 'Al', 'TOMREIN3@AOL.COM', '2566515293', 'Thomas', 'REINHART', 'HUNTSVILLE', 'US', '100070 GREENVIEW DRIVE', '35803', 'Al', 'Thomas', 'REINHART', 'TOMREIN3@AOL.COM', '2566515293', 'pending', 'no', '2021-11-04 19:46:11', '2021-11-04 19:46:11'),
(4230, '80044', 'epYayirqM6tfX8PlSVLxBG4Od9hNDJ37', '458', 'USD', 'nikxen_vmi', 'https://nikxen.com', 29, 'Corpus Christi', 'US', '5601 S Padre Island Dr. Suite D #116', '78412', 'TX', 'thomasbiederman@hotmail.com', '3078710773', 'Thomas', 'Biederman', 'Lancaster', 'US', '646 W Avenue J4', '93535', 'CA', 'Thomas', 'Biederman', 'thomasbiederman@hotmail.com', '3078710773', 'pending', 'no', '2021-11-04 19:57:16', '2021-11-04 19:57:16'),
(4231, '80045', 'ouN2avym9ecMBtSRPZqEVUfOQgrwp7zX', '378', 'USD', 'nikxen_vmi', 'https://nikxen.com', 29, 'Seaham', 'GB', '72 Weymouth Drive', 'SR78DF', 'Co Durham', 'pamypritchard@msn.com', '07837052156', 'Mrs Pamela', 'Pritchard', 'Seaham', 'GB', '72 Weymouth Drive', 'SR78DF', 'Co Durham', 'Mrs Pamela', 'Pritchard', 'pamypritchard@msn.com', '07837052156', 'paid', 'no', '2021-11-04 20:11:48', '2021-11-04 21:27:27'),
(4232, '80046', 'gGz2YNAucK369RakUTDirESsLjVPJ4b8', '358', 'USD', 'nikxen_vmi', 'https://nikxen.com', 29, 'Nashville', 'US', '4020 windwood lane', '37214', 'TN', 'Trcs37214@gmail.com', '6153325163', 'Patricia', 'D Smith', 'Nashville', 'US', '4020 windwood lane', '37214', 'TN', 'Patricia', 'D Smith', 'Trcs37214@gmail.com', '6153325163', 'paid', 'no', '2021-11-04 21:17:57', '2021-11-04 21:28:09'),
(4233, '80047', '0npHXZdWj3klisP8ch7fyKuQDg9L4qm2', '1109', 'USD', 'nikxen_vmi', 'https://nikxen.com', 29, 'West windsor', 'US', '7 Marian dr', '08550', 'Nj', 'Rehabmd83@gmail.com', '6099778304', 'Michael', 'Palmer', 'West windsor', 'US', '7 Marian dr', '08550', 'Nj', 'Michael', 'Palmer', 'Rehabmd83@gmail.com', '6099778304', 'pending', 'no', '2021-11-05 03:47:23', '2021-11-05 03:48:34'),
(4234, '80048', 'r1Vwi0Kgb8JXC3s5ELdSa4p9zGMPovjq', '279', 'USD', 'nikxen_vmi', 'https://nikxen.com', 29, 'london', 'GB', '103 Sclater street', 'E1 6HR', 'London', 'keirion@hotmail.com', '07917668270', 'keirion', 'carroll', 'london', 'GB', '103 Sclater street', 'E1 6HR', 'London', 'keirion', 'carroll', 'keirion@hotmail.com', '07917668270', 'paid', 'no', '2021-11-05 04:09:05', '2021-11-05 04:23:53'),
(4235, '80049', 'ancjQGXPv8CpDKBWU9ybtLrTIlefM3YJ', '828', 'USD', 'nikxen_vmi', 'https://nikxen.com', 29, 'West windsor', 'US', '7 Marian dr', '08550', 'Nj', 'Rehabmd83@gmail.com', '6099778304', 'Michael', 'Palmer', 'West windsor', 'US', '7 Marian dr', '08550', 'Nj', 'Michael', 'Palmer', 'Rehabmd83@gmail.com', '6099778304', 'paid', 'no', '2021-11-05 05:23:40', '2021-11-05 06:27:47'),
(4236, '80050', '2wAU1MGVK5eZphbSFkOmqxHln7PtJ86i', '639', 'USD', 'nikxen_vmi', 'https://nikxen.com', 29, 'MONA VALE', 'AU', 'Unit 3  3 Bassett Street', '2103', 'NSW', 'peter@healthistore.com', '0414999165', 'Peter', 'Riley', 'MONA VALE', 'AU', 'Unit 3  3 Bassett Street', '2103', 'NSW', 'Peter', 'Riley', 'peter@healthistore.com', '0414999165', 'pending', 'no', '2021-11-05 08:06:22', '2021-11-05 08:06:22'),
(4237, '80051', 'aPz4QutkGyNLZcqg1hVDm0j8KnIxXd7J', '534', 'USD', 'nikxen_vmi', 'https://nikxen.com', 29, 'Staten island', 'US', '297 Thomas street', '10306', 'NY', 'jim5109@aol.com', '9175386154', 'James', 'Schermerhorn', 'Staten island', 'US', '297 Thomas street', '10306', 'NY', 'James', 'Schermerhorn', 'jim5109@aol.com', '9175386154', 'paid', 'no', '2021-11-05 22:32:31', '2021-11-09 05:05:52'),
(4238, '80052', 'ExBf9rYn13W4j7IZitwuU5FkTHdgMX0R', '840', 'USD', 'nikxen_vmi', 'https://nikxen.com', 29, 'New York', 'US', '127 W96th ST Apt 13C', '10025', 'New York', 'kevincorbin@gmail.com', '9293099551', 'Kevin', 'Corbin', 'New York', 'US', '127 W96th ST Apt 13C', '10025', 'New York', 'Kevin', 'Corbin', 'kevincorbin@gmail.com', '9293099551', 'pending', 'no', '2021-11-05 22:35:44', '2021-11-05 22:35:44'),
(4239, '80053', '5k0OlQUfnuRXc3iD1jz89IKvdxrBFpPh', '738', 'USD', 'nikxen_vmi', 'https://nikxen.com', 29, 'Huntinton', 'US', '9327 sugar groove road', '16652', 'PA', 'rjseyko@yahoo.com', '8146432601', 'Robert', 'J Seyko', 'Huntinton', 'US', '9327 sugar groove road', '16652', 'PA', 'Robert', 'J Seyko', 'rjseyko@yahoo.com', '8146432601', 'pending', 'no', '2021-11-05 23:50:12', '2021-11-05 23:50:12'),
(4240, '80054', 'q163gOPsVHE7ejxYWkM2ionvltuJNQZh', '307', 'USD', 'nikxen_vmi', 'https://nikxen.com', 29, 'Glasgow', 'GB', '2 kirklee rd', 'G120tn', 'Scotland', 'Jeff.reid@btinternet.com', '447714030733', 'Jeff', 'Reid', 'Glasgow', 'GB', '2 kirklee rd', 'G120tn', 'Scotland', 'Jeff', 'Reid', 'Jeff.reid@btinternet.com', '447714030733', 'paid', 'no', '2021-11-06 00:38:10', '2021-11-06 00:46:20'),
(4241, '80055', '3XsRyHfvI6CBtxYlGSaEq0Tdn8ADMUpJ', '230', 'USD', 'nikxen_vmi', 'https://nikxen.com', 29, 'Sutton', 'US', '313 manchaug rd', '01590', 'MA', 'zurksm12@gmail.com', '5083537456', 'Melissa', 'Szczurko', 'Sutton', 'US', '313 manchaug rd', '01590', 'MA', 'Melissa', 'Szczurko', 'zurksm12@gmail.com', '5083537456', 'paid', 'no', '2021-11-06 00:49:39', '2021-11-06 01:33:43'),
(4242, '80056', 'pZ9NYTWscxMzLk5H2qiP8R1436hSnbjJ', '738', 'USD', 'nikxen_vmi', 'https://nikxen.com', 29, 'Huntinton', 'US', '9327 sugar groove road', '16652', 'PA', 'rjseyko@yahoo.com', '8146432601', 'Robert', 'J Seyko', 'Huntinton', 'US', '9327 sugar groove road', '16652', 'PA', 'Robert', 'J Seyko', 'rjseyko@yahoo.com', '8146432601', 'paid', 'no', '2021-11-06 00:51:54', '2021-11-10 04:03:18'),
(4243, '80057', 'GTP3y6NmjBirDko8d049cxtRVhZ7ebAM', '219', 'USD', 'nikxen_vmi', 'https://nikxen.com', 29, 'elkton', 'US', '614 middle road', '21921', 'MD', 'Nicolehope6229@gmail.com', '4434669663', 'Nicole', 'H Muller THYM', 'elkton', 'US', '614 middle road', '21921', 'MD', 'Nicole', 'H Muller THYM', 'Nicolehope6229@gmail.com', '4434669663', 'pending', 'no', '2021-11-06 01:10:32', '2021-11-06 01:10:32'),
(4244, '80058', 'qIJAR86eXodkmuStvHjzsW4p9UbcNVZf', '248', 'USD', 'nikxen_vmi', 'https://nikxen.com', 29, 'Columbia', 'US', '1634 Whiteford Road', '29210', 'SC', 'edboyd5@aol.com', '8035538578', 'Darryl', 'Bennett', 'Columbia', 'US', '1634 Whiteford Road', '29210', 'SC', 'Darryl', 'Bennett', 'edboyd5@aol.com', '8035538578', 'pending', 'no', '2021-11-06 01:17:13', '2021-11-06 01:17:13'),
(4245, '80059', 'Q8FpIu1WAM5r3GPXvUHnyftOYgcS7bas', '249', 'USD', 'nikxen_vmi', 'https://nikxen.com', 29, 'East Patchogue', 'US', '115 Lake Dr', '11772', 'NY', 'sctts001@aol.com', '6314123615', 'scott', 'E stocker', 'East Patchogue', 'US', '115 Lake Dr', '11772', 'NY', 'scott', 'E stocker', 'sctts001@aol.com', '6314123615', 'pending', 'no', '2021-11-06 01:27:19', '2021-11-06 01:54:14'),
(4246, '80060', '3KQB5Pqa7JrAbhsCpmwX8OZyS1xfnvIj', '699', 'USD', 'nikxen_vmi', 'https://nikxen.com', 29, 'Parkville', 'US', '9305 Montego Ave', '21234', 'MD', 'F.riefner@comcast.net', '4438048550', 'Fredrick', 'Riefner III', 'Parkville', 'US', '9305 Montego Ave', '21234', 'MD', 'Fredrick', 'Riefner III', 'F.riefner@comcast.net', '4438048550', 'pending', 'no', '2021-11-06 01:38:12', '2021-11-06 01:38:12'),
(4247, '80061', 'hQiHIDdyCoGrE5F7Jk3OxwvVp4mNnZB2', '240', 'USD', 'nikxen_vmi', 'https://nikxen.com', 29, 'Troon', 'GB', '33 Lang Roan', 'KA106Te', 'Ayrshire', 'Nairnm@hotmail.co.uk', '4407866746', 'Nairn', 'Macnee', 'Troon', 'GB', '33 Lang Roan', 'KA106Te', 'Ayrshire', 'Nairn', 'Macnee', 'Nairnm@hotmail.co.uk', '4407866746', 'pending', 'no', '2021-11-06 02:06:27', '2021-11-06 02:06:27'),
(4248, '80062', 'xaMqIQC0T4fowFJmR5iphkbcXPA2vt3u', '248', 'USD', 'nikxen_vmi', 'https://nikxen.com', 29, 'Greenville', 'US', '2120 East Firetower Rd  107 4', '27858', 'NC', 'rastatterm@ecu.edu', '2529167935', 'Michael', 'Rastatter', 'Greenville', 'US', '2120 East Firetower Rd  107 4', '27858', 'NC', 'Michael', 'Rastatter', 'rastatterm@ecu.edu', '2529167935', 'pending', 'no', '2021-11-06 02:23:15', '2021-11-06 02:23:15'),
(4249, '80063', 'MJt2sxSbOoTQrc8z1mHLZ95Iu0vKVYEX', '800', 'USD', 'nikxen_vmi', 'https://nikxen.com', 29, 'Naples', 'US', '320 Sugar Pine Ln', '34108', 'FL', 'Brismi0808@gmail.com', '2392739897', 'Brian', 'Michael Smith', 'Naples', 'US', '320 Sugar Pine Ln', '34108', 'FL', 'Brian', 'Michael Smith', 'Brismi0808@gmail.com', '2392739897', 'pending', 'no', '2021-11-06 04:20:53', '2021-11-06 04:20:53'),
(4250, '80064', '14XmSP8foinAUdtQaeNTRYVEgBMI3qD2', '800', 'USD', 'nikxen_vmi', 'https://nikxen.com', 29, 'Naples', 'US', '320 Sugar Pine Ln', '34108', 'FL', 'Brismi0808@gmail.com', '2392739897', 'Brian', 'Michael Smith', 'Naples', 'US', '320 Sugar Pine Ln', '34108', 'FL', 'Brian', 'Michael Smith', 'Brismi0808@gmail.com', '2392739897', 'pending', 'no', '2021-11-06 04:22:39', '2021-11-06 04:22:39'),
(4251, '80065', 'V0Pjg6Xiv2p5rSxcqEFYNkoKMeJAOu9h', '425', 'USD', 'nikxen_vmi', 'https://nikxen.com', 29, 'Wetumpka', 'US', '144 Susie s pl', '36092', 'AL', '1tmb@cox.net', '7023759097', 'Tim', 'Brennan', 'Wetumpka', 'US', '144 Susie s pl', '36092', 'AL', 'Tim', 'Brennan', '1tmb@cox.net', '7023759097', 'pending', 'no', '2021-11-06 04:27:34', '2021-11-06 04:27:34'),
(4252, '80066', 'o87IJLKU90ZE4iptjs6qXPQcARHYbTxG', '480', 'USD', 'nikxen_vmi', 'https://nikxen.com', 29, 'Wilmington', 'US', '4211 Greens Ferry Ct', '28409', 'NC', 'Toplevelcleaning1@gmail.com', '9106179114', 'Bambi', 'Rivenbark', 'Wilmington', 'US', '4211 Greens Ferry Ct', '28409', 'NC', 'Bambi', 'Rivenbark', 'Toplevelcleaning1@gmail.com', '9106179114', 'paid', 'no', '2021-11-06 05:25:40', '2021-11-06 08:00:50'),
(4253, '80067', 'FJUB9reGzYbI1WwXPqT8aDv0VytoCm3E', '524', 'USD', 'nikxen_vmi', 'https://nikxen.com', 29, 'Rockland', 'US', '6 king Phillip circle', '02370', 'Ma', 'Smitty11707@yahoo.com', '7815109167', 'Glenn', 'Smith', 'Rockland', 'US', '6 king Phillip circle', '02370', 'Ma', 'Glenn', 'Smith', 'Smitty11707@yahoo.com', '7815109167', 'pending', 'no', '2021-11-06 06:07:51', '2021-11-06 06:07:51'),
(4254, '80068', '26P1SL4RJTHwusjMqgdVBkEvnOiFZUra', '524', 'USD', 'nikxen_vmi', 'https://nikxen.com', 29, 'Rockland', 'US', '6 king Phillip circle', '02370', 'Ma', 'Smitty11707@yahoo.com', '7815109167', 'Glenn', 'Smith', 'Rockland', 'US', '6 king Phillip circle', '02370', 'Ma', 'Glenn', 'Smith', 'Smitty11707@yahoo.com', '7815109167', 'pending', 'no', '2021-11-06 06:07:51', '2021-11-06 06:07:51'),
(4255, '80068', 'QwJbhKVHCSZU5p6gqP2ldo9yxXes3L8B', '248', 'USD', 'nikxen_vmi', 'https://nikxen.com', 29, 'Baldwinsville', 'US', '3578 Patchett Rd', '13027', 'NY', 'ramsingelectric@yahoo.com', '3152632377', 'James', 'Rawson', 'Baldwinsville', 'US', '3578 Patchett Rd', '13027', 'NY', 'James', 'Rawson', 'ramsingelectric@yahoo.com', '3152632377', 'pending', 'no', '2021-11-06 06:09:43', '2021-11-06 06:09:43'),
(4256, '80069', '0LXyvqcs8bpKBUF7VJfhdzora3WMCgmO', '239', 'USD', 'nikxen_vmi', 'https://nikxen.com', 29, 'LONDON', 'GB', '29 Princedale Road  Holland Park', 'W11 4NW', 'LONDON', 'LEONIE.FALLSTROM@YMAIL.COM', '07767345496', 'LEONIE', 'FALLSTROM', 'LONDON', 'GB', '29 Princedale Road  Holland Park', 'W11 4NW', 'LONDON', 'LEONIE', 'FALLSTROM', 'LEONIE.FALLSTROM@YMAIL.COM', '07767345496', 'paid', 'no', '2021-11-06 06:12:41', '2021-11-10 03:11:21'),
(4257, '80070', 'ZaTfdKVizX9NLnCGoh4EckuM6JYgy10Q', '600', 'USD', 'nikxen_vmi', 'https://nikxen.com', 29, 'Hudson', 'US', '8600 forest glade dr', '34667', 'FL', 'Tonygig120@gmail.com', '5166448975', 'Anthony', 'Giglio', 'Hudson', 'US', '12713 willowdale way', '34667', 'FL', 'Charlene', 'Giglio', 'Tonygig120@gmail.com', '5166448975', 'paid', 'no', '2021-11-06 06:41:12', '2021-11-06 07:10:08'),
(4258, '80071', 'bxNHSzTG1AmndFYrItPoka3WpgJKVDC2', '519', 'USD', 'nikxen_vmi', 'https://nikxen.com', 29, 'Pittsburgh', 'US', '191 Cobblestone Dr', '15237', 'PA', 'kendrickphd@yahoo.com', '4128557301', 'Fredrick', 'O Kendrick', 'Pittsburgh', 'US', '191 Cobblestone Dr', '15237', 'PA', 'Fredrick', 'O Kendrick', 'kendrickphd@yahoo.com', '4128557301', 'pending', 'no', '2021-11-06 08:01:06', '2021-11-06 08:01:06'),
(4259, '80072', 'l7c3HNVbksEhaxOGwrdWuSZ14KqmJFPX', '468', 'USD', 'nikxen_vmi', 'https://nikxen.com', 29, 'Corpus Christi', 'US', '5601 S Padre Island Dr. Suite D #116', '78412', 'TX', 'thomasbiederman@hotmail.com', '3078710773', 'Thomas', 'Biederman', 'Lancaster', 'US', '646 W Avenue J4', '93535', 'CA', 'Thomas', 'Biederman', 'thomasbiederman@hotmail.com', '3078710773', 'pending', 'no', '2021-11-06 08:13:54', '2021-11-06 08:13:54'),
(4260, '80073', 'MTXnEvHzlwJtgycqOirQU5YKSaPAIFkb', '829', 'USD', 'nikxen_vmi', 'https://nikxen.com', 29, 'windsor', 'US', '418 cynthia ct', '95492', 'CA', 'webefishing@yahoo.com', '7078365205', 'theodore', 'C capellos', 'windsor', 'US', '418 cynthia ct', '95492', 'CA', 'theodore', 'C capellos', 'webefishing@yahoo.com', '7078365205', 'paid', 'no', '2021-11-06 23:57:38', '2021-11-07 00:05:04'),
(4261, '80074', 'a3DFMmpJWwsnlGvOIUzPHuLxSC6Y2KgT', '249', 'USD', 'nikxen_vmi', 'https://nikxen.com', 29, 'east patchogue', 'US', '115 lake dr', '11772', 'NY', 'sctts001@aol.com', '6314123615', 'scott', 'stocker', 'east patchogue', 'US', '115 lake dr', '11772', 'NY', 'scott', 'stocker', 'sctts001@aol.com', '6314123615', 'pending', 'no', '2021-11-07 00:14:02', '2021-11-07 00:14:02'),
(4262, '80075', 'OVHGoP3edaQ87DrwMWsTxzlqNc1Im6pU', '250', 'USD', 'nikxen_vmi', 'https://nikxen.com', 29, 'Parkville', 'US', '9305 Montego Ave', '21234', 'MD', 'F.riefner@comcast.net', '4438048550', 'Fredrick', 'Riefner III', 'Parkville', 'US', '9305 Montego Ave', '21234', 'MD', 'Fredrick', 'Riefner III', 'F.riefner@comcast.net', '4438048550', 'pending', 'no', '2021-11-07 00:21:49', '2021-11-07 00:21:49'),
(4263, '80076', 'nvr1J05p9ghOK27e6GPuMWaLViydX4lf', '629', 'USD', 'nikxen_vmi', 'https://nikxen.com', 29, 'Connersville', 'US', '2043 West Country Club Road', '47331', 'IN', 'Wilmorebradley@yahoo.com', '7655413457', 'Bradley', 'Wilmore', 'Connersville', 'US', '2043 West Country Club Road', '47331', 'IN', 'Bradley', 'Wilmore', 'Wilmorebradley@yahoo.com', '7655413457', 'paid', 'no', '2021-11-07 00:30:48', '2021-11-07 00:38:49'),
(4264, '80077', 'nux8lfqJsp1I4ceitmjHvQkTUZAS0DYF', '209', 'USD', 'nikxen_vmi', 'https://nikxen.com', 29, 'warren', 'US', '1956 Stewart Dr nw', '44485', 'OH', 'eean42@neo.rr.com', '3306467540', 'Margaret', 'E Criss', 'warren', 'US', '1956 Stewart Dr nw', '44485', 'OH', 'Margaret', 'E Criss', 'eean42@neo.rr.com', '3306467540', 'pending', 'no', '2021-11-07 02:10:43', '2021-11-07 02:18:20'),
(4265, '80078', 'X1zCkGuB67eriaV3OpKU4vSgRIH09EJY', '248', 'USD', 'nikxen_vmi', 'https://nikxen.com', 29, 'Charlotte', 'US', '7312 Old Mount Holly Rd B', '28214', 'NC', 'edward.fuller87@gmail.com', '9807770272', 'Eddie', 'Fuller', 'Charlotte', 'US', '7312 Old Mount Holly Rd B', '28214', 'NC', 'Eddie', 'Fuller', 'edward.fuller87@gmail.com', '9807770272', 'pending', 'no', '2021-11-07 02:14:56', '2021-11-07 02:14:56'),
(4266, '80079', '6JgBC0AmVcuMQPetkSzLEiaGXxvZI9l2', '248', 'USD', 'nikxen_vmi', 'https://nikxen.com', 29, 'Ratho', 'GB', '66 west croft', 'Eh28 8pb', 'Edinburgh', 'Keokidd@yahoo.co.uk', '07713908238', 'Keo', 'Kidd', 'Ratho', 'GB', '66 west croft', 'Eh28 8pb', 'Edinburgh', 'Keo', 'Kidd', 'Keokidd@yahoo.co.uk', '07713908238', 'paid', 'no', '2021-11-07 02:31:00', '2021-11-07 02:35:37'),
(4267, '80080', 'YULZDbOBdvknyqeNzK4FlJGrW81SRA3u', '197', 'USD', 'nikxen_vmi', 'https://nikxen.com', 29, 'Stone mountain', 'US', '1090 to lani dr', '30083', 'GA', 'Mariajohnson500@yahoo.com', '4702599345', 'Maria', 'R Walker', 'Stone mountain', 'US', '1090 to lani dr', '30083', 'GA', 'Maria', 'R Walker', 'Mariajohnson500@yahoo.com', '4702599345', 'pending', 'no', '2021-11-07 06:32:42', '2021-11-07 06:32:42'),
(4268, '80081', 'EKVkrptafoA1h03O64ZmxW5HTFdXeqlc', '425', 'USD', 'nikxen_vmi', 'https://nikxen.com', 29, 'Fountain', 'US', '7406 Willow Pines Place', '80817', 'CO', 'Tanya@tansempire.com', '5106979365', 'Tanya', 'Van der Stock', 'Fountain', 'US', '7406 Willow Pines Place', '80817', 'CO', 'Tanya', 'Van der Stock', 'Tanya@tansempire.com', '5106979365', 'paid', 'no', '2021-11-07 06:50:29', '2021-11-09 01:02:37'),
(4269, '80082', 'DApwm6GP280axRXZ5rhQTzdY4JVg9voC', '480', 'USD', 'nikxen_vmi', 'https://nikxen.com', 29, 'floydada', 'US', '1000 west kentucky street', '79235', 'TX', 'TURNERKAT.23@GMAIL.COM', '8067812847', 'Karen', 'A Farris', 'floydada', 'US', '1000 west kentucky street', '79235', 'TX', 'Karen', 'A Farris', 'TURNERKAT.23@GMAIL.COM', '8067812847', 'pending', 'no', '2021-11-07 08:24:11', '2021-11-07 08:24:11'),
(4270, '80083', 'Fo4UeqbGAX0PMDl3Ocy6Y7vSC28NjWzs', '1037', 'USD', 'nikxen_vmi', 'https://nikxen.com', 29, 'Corpus Christi', 'US', '5601 S Padre Island Dr Suite D 116', '78412', 'TX', 'thomasbiederman@hotmail.com', '3078710773', 'Thomas', 'Biederman', 'Green river', 'US', '655 ironwood st', '82935', 'WY', 'Thomas', 'Biederman', 'thomasbiederman@hotmail.com', '3078710773', 'pending', 'no', '2021-11-08 20:56:24', '2021-11-08 20:56:24'),
(4271, '80084', '8pauFkHfqcWtRBXM1VDAQ5rLSI2od6yb', '197', 'USD', 'nikxen_vmi', 'https://nikxen.com', 29, 'Cold Ash', 'GB', '4 Hazels Paddock', 'RG18 9LD', 'Berkshire', 'karlwhelpdale@gmail.com', '447506663688', 'Karl', 'Whelpdale', 'Cold Ash', 'GB', '4 Hazels Paddock', 'RG18 9LD', 'Berkshire', 'Karl', 'Whelpdale', 'karlwhelpdale@gmail.com', '447506663688', 'paid', 'no', '2021-11-08 21:54:41', '2021-11-10 02:13:40'),
(4272, '80085', 'Mfk3lPoZjHE0utgpAiKzWn5CULR1q7yd', '158', 'USD', 'nikxen_vmi', 'https://nikxen.com', 29, 'Cedartown', 'US', '1037 Campbell Rd', '30125', 'GA', 'xlecamry@aol.com', '7702891483', 'Carol', 'Jones', 'Cedartown', 'US', '1037 Campbell Rd', '30125', 'GA', 'Carol', 'Jones', 'xlecamry@aol.com', '7702891483', 'paid', 'no', '2021-11-08 22:35:28', '2021-11-09 00:49:52'),
(4273, '80086', 'dEGIKhJYePj8i17axVLNZTv4HfU62QWB', '475', 'USD', 'nikxen_vmi', 'https://nikxen.com', 29, 'TULSA', 'US', '3701 S Peoria Ave', '74105', 'OK', 'marion@kjrh.com', '9185953512', 'scott', 'marion', 'TULSA', 'US', '3701 S Peoria Ave', '74105', 'OK', 'scott', 'marion', 'marion@kjrh.com', '9185953512', 'pending', 'no', '2021-11-08 23:11:03', '2021-11-08 23:11:03'),
(4274, '80087', 'cf2FMBOjx5JGPQ70D3KnvI1N8AYWdpSu', '600', 'USD', 'nikxen_vmi', 'https://nikxen.com', 29, 'Parkville', 'US', '9305 Montego Ave', '21234', 'MD', 'F.riefner@comcast.net', '4438048550', 'Fredrick', 'Riefner III', 'Parkville', 'US', '9305 Montego Ave', '21234', 'MD', 'Fredrick', 'Riefner III', 'F.riefner@comcast.net', '4438048550', 'paid', 'no', '2021-11-08 23:16:53', '2021-11-08 23:23:04'),
(4275, '80088', 'owp30IZsqOm81fygd5TWVcDLECAa9zBH', '580', 'USD', 'nikxen_vmi', 'https://nikxen.com', 29, 'Newhall', 'US', '26281 Rainbow Glen Dr', '91321', 'Ca', 'Tmiller5281@yahoo.com', '6617132581', 'Travis', 'T Miller', 'Newhall', 'US', '26281 Rainbow Glen Dr', '91321', 'Ca', 'Travis', 'T Miller', 'Tmiller5281@yahoo.com', '6617132581', 'pending', 'no', '2021-11-08 23:55:47', '2021-11-09 02:38:29'),
(4276, '80089', 'LFrCVcj4kUtoQs2Bz90AmDpOdMWKhRli', '520', 'USD', 'nikxen_vmi', 'https://nikxen.com', 29, 'Vinemont', 'US', '445 County Road 1218', '35179', 'Al', 'Kvance98@aol.com', '2563391739', 'Dennis', 'Vance', 'Vinemont', 'US', '445 County Road 1218', '35179', 'Al', 'Dennis', 'Vance', 'Kvance98@aol.com', '2563391739', 'pending', 'no', '2021-11-09 01:13:23', '2021-11-09 01:18:35'),
(4277, '80090', 'zclm7YJwF4OKQsxUy29GubHSkAWEaB0D', '397', 'USD', 'nikxen_vmi', 'https://nikxen.com', 29, 'Falls Chruch', 'US', '3242 Holly Berry Ct', '22043', 'VA', 'roberts240@hotmail.com', '5712157433', 'Elizabeth', 'R Roberts', 'Annandale', 'US', 'PO Box 11', '22003', 'VA', 'Elizabeth', 'R Roberts', 'roberts240@hotmail.com', '5712157433', 'pending', 'no', '2021-11-09 01:36:14', '2021-11-09 01:36:14'),
(4278, '80091', '0SKQoulNiaY1yvmHscO5rnCV8JF2UejP', '550', 'USD', 'nikxen_vmi', 'https://nikxen.com', 29, 'Milwaukee', 'US', '600 s 6th st', '53204', 'WI', 'Aaron@standeatdrink.com', '4142133495', 'Aaron', 'Gersonde', 'Milwaukee', 'US', '600 s 6th st', '53204', 'WI', 'Aaron', 'Gersonde', 'Aaron@standeatdrink.com', '4142133495', 'pending', 'no', '2021-11-09 01:38:22', '2021-11-09 01:38:22'),
(4279, '80092', '15ny8rTAfVSRPEQ6IUKC9tGXsiqdDalF', '628', 'USD', 'nikxen_vmi', 'https://nikxen.com', 29, 'HUNTSVILLE', 'US', '100070 GREENVIEW DRIVE', '35803', 'Al', 'TOMREIN3@AOL.COM', '2566515293', 'Thomas', 'REINHART', 'HUNTSVILLE', 'US', '100070 GREENVIEW DRIVE', '35803', 'Al', 'Thomas', 'REINHART', 'TOMREIN3@AOL.COM', '2566515293', 'pending', 'no', '2021-11-09 01:51:41', '2021-11-09 01:51:41'),
(4280, '80093', 'VfgWH5cOD2wBtYClqPJunL0pMTXIjASU', '628', 'USD', 'nikxen_vmi', 'https://nikxen.com', 29, 'HUNTSVILLE', 'US', '100070 GREENVIEW DRIVE', '35803', 'Al', 'TOMREIN3@AOL.COM', '2566515293', 'Thomas', 'REINHART', 'HUNTSVILLE', 'US', '100070 GREENVIEW DRIVE', '35803', 'Al', 'Thomas', 'REINHART', 'TOMREIN3@AOL.COM', '2566515293', 'pending', 'no', '2021-11-09 01:51:46', '2021-11-09 01:51:46'),
(4281, '80094', '6TNzkZEMftbVm5BC9JWj7KOypqsDa1oc', '200', 'USD', 'nikxen_vmi', 'https://nikxen.com', 29, 'Truckee', 'US', '11260 donner pass rd c1 293', '96161', 'Ca', 'Jamesmozrok@icloud.com', '4157930324', 'Evan', 'Polk', 'Truckee', 'US', '11260 donner pass rd c1 293', '96161', 'Ca', 'Evan', 'Polk', 'Jamesmozrok@icloud.com', '4157930324', 'pending', 'no', '2021-11-09 02:30:01', '2021-11-09 02:30:01'),
(4282, '80095', 'JaR76r9gyFveZsbLBUnmjd0tMziKuNl3', '219', 'USD', 'nikxen_vmi', 'https://nikxen.com', 29, 'Glendale', 'US', '7740 79th place', '11385', 'NY', 'Vsooky821@icloud.com', '9176021316', 'Piotr', 'Okurowski', 'Glendale', 'US', '7740 79th place', '11385', 'NY', 'Piotr', 'Okurowski', 'Vsooky821@icloud.com', '9176021316', 'pending', 'no', '2021-11-09 02:32:17', '2021-11-09 02:32:17'),
(4283, '80096', 'PjmFz0MhRWVAJOgIHaZTpnw578qC4k16', '293', 'USD', 'nikxen_vmi', 'https://nikxen.com', 29, 'indian rock beach', 'US', 'po box 669', '33785', 'FL', 'caramelprod@mpinet.net', '7272371807', 'Irene', 'c Escalera', 'indian rock beach', 'US', 'po box 669', '33785', 'FL', 'Irene', 'c Escalera', 'caramelprod@mpinet.net', '7272371807', 'paid', 'no', '2021-11-09 03:15:54', '2021-11-09 03:21:42'),
(4284, '80097', 'd6jpL1AXMgH5YbR2eBDQ3Vftri8uFZJk', '234', 'USD', 'nikxen_vmi', 'https://nikxen.com', 29, 'Wichita', 'US', '625 N Ridgehurst', '67230', 'KS', 'goodrum_nikki@hotmail.com', '3168077910', 'Nicole', 'A Goodrum', 'Wichita', 'US', '625 N Ridgehurst', '67230', 'KS', 'Nicole', 'A Goodrum', 'goodrum_nikki@hotmail.com', '3168077910', 'pending', 'no', '2021-11-09 03:35:21', '2021-11-09 03:35:21'),
(4285, '80098', 'bQ4KGTF2c80xoZwJk6lz7j9rD5LV3Ogm', '439', 'USD', 'nikxen_vmi', 'https://nikxen.com', 29, 'Pittsburgh', 'US', '191 Cobblestone Dr', '15237', 'PA', 'kendrickphd@yahoo.com', '4128557301', 'Fredrick', 'O Kendrick', 'Pittsburgh', 'US', '191 Cobblestone Dr', '15237', 'PA', 'Fredrick', 'O Kendrick', 'kendrickphd@yahoo.com', '4128557301', 'pending', 'no', '2021-11-09 04:09:49', '2021-11-09 04:09:49'),
(4286, '80099', 'smg5lXDvJ1k9CN3x4pchGMjibt8FQHTU', '358', 'USD', 'nikxen_vmi', 'https://nikxen.com', 29, 'Crediton', 'GB', '5 Landboat Cottages  Cheriton Fitzpaine', 'EX17 4HA', 'Devon', 'dorothy99@live.co.uk', '07910691647', 'Kathryn', 'Nicolle', 'Crediton', 'GB', '5 Landboat Cottages  Cheriton Fitzpaine', 'EX17 4HA', 'Devon', 'Kathryn', 'Nicolle', 'dorothy99@live.co.uk', '07910691647', 'pending', 'no', '2021-11-09 05:16:53', '2021-11-09 05:16:53'),
(4287, '80100', 'bQ1ceUGOaWv8tHikC6Zn9DVzETSX4w3B', '880', 'USD', 'nikxen_vmi', 'https://nikxen.com', 29, 'New York', 'US', '95 Greene St  Apt 4C', '10012', 'NY', 'Meriamal-rashid@eversheds-sutherland.com', '9493789133', 'Meriam', 'Alrashid', 'New York', 'US', '95 Greene St  Apt 4C', '10012', 'NY', 'Meriam', 'Alrashid', 'Meriamal-rashid@eversheds-sutherland.com', '9493789133', 'pending', 'no', '2021-11-09 05:22:19', '2021-11-10 05:38:15'),
(4288, '80101', 'WLa1QAkMfhJtS4EZ83msvuYPiFwCTbyV', '720', 'USD', 'nikxen_vmi', 'https://nikxen.com', 29, 'Scottsdale', 'US', '15030 N 90th Pl', '85260', 'AZ', 'Hfeldhacker@yahoo.com', '6025580594', 'Heather', 'Feldhacker', 'Scottsdale', 'US', '15030 N 90th Pl', '85260', 'AZ', 'Heather', 'Feldhacker', 'Hfeldhacker@yahoo.com', '6025580594', 'pending', 'no', '2021-11-09 05:55:11', '2021-11-09 05:55:11'),
(4289, '80102', '1VY5KgDb9IsBvxHopFtrlz7XJ3Nnawj4', '633', 'USD', 'nikxen_vmi', 'https://nikxen.com', 29, 'Coogee', 'AU', 'PO Box 343', '2034', 'NSW', 'kel_lawrie@bigpond.com', '0413831810', 'Kelvin', 'B Lawrie', 'Coogee', 'AU', 'PO Box 343', '2034', 'NSW', 'Kelvin', 'B Lawrie', 'kel_lawrie@bigpond.com', '0413831810', 'paid', 'no', '2021-11-09 06:15:05', '2021-11-09 06:31:28'),
(4290, '80103', 'gSU9MI4boLCl70FWZPJVD5xXaBYdu1Nr', '490', 'USD', 'nikxen_vmi', 'https://nikxen.com', 29, 'West windsor', 'US', '7 Marian dr', '08550', 'Nj', 'Rehabmd83@gmail.com', '6099778304', 'Michael', 'Palmer', 'West windsor', 'US', '7 Marian dr', '08550', 'Nj', 'Michael', 'Palmer', 'Rehabmd83@gmail.com', '6099778304', 'paid', 'no', '2021-11-09 06:37:38', '2021-11-09 08:23:11'),
(4291, '80104', 'OamN8ze1GErVsk0wACx3f6L2QpoJjIYT', '180', 'USD', 'nikxen_vmi', 'https://nikxen.com', 29, 'Norwalk', 'US', '87 Magnolia Ave', '06850', 'CT', 'jrizzo7951@aol.com', '2038567395', 'Jennifer', 'Rizzo', 'Norwalk', 'US', '87 Magnolia Ave', '06850', 'CT', 'Jennifer', 'Rizzo', 'jrizzo7951@aol.com', '2038567395', 'pending', 'no', '2021-11-09 07:00:57', '2021-11-09 07:00:57'),
(4292, '80105', 'qJGUIovm0xyPptS1DLdFjb28rueVn3KT', '828', 'USD', 'nikxen_vmi', 'https://nikxen.com', 29, 'Hurst', 'US', '947 W Glade Rd', '76054', 'TX', 'jasonefox@aol.com', '8173005082', 'Jennifer', 'Waganer', 'Hurst', 'US', '947 W Glade Rd', '76054', 'TX', 'Jennifer', 'Waganer', 'jasonefox@aol.com', '8173005082', 'pending', 'no', '2021-11-09 07:36:19', '2021-11-09 07:36:19'),
(4293, '80106', 'mun3f91pDr6PhXLoZtRqjINCWV5JlaBK', '1109', 'USD', 'nikxen_vmi', 'https://nikxen.com', 29, 'Chicago', 'US', '209 W Jackson Blvd suite 800', '60606', 'IL', 'mwj@northwestinsurance.com', '3122392700', 'MARTIN', 'JOSEPH', 'Chicago', 'US', '209 W Jackson Blvd suite 800', '60606', 'IL', 'MARTIN', 'JOSEPH', 'mwj@northwestinsurance.com', '3122392700', 'pending', 'no', '2021-11-09 07:52:38', '2021-11-09 07:52:38'),
(4294, '80107', 'exwiQD9CyG4O6au8oMbhqm5g0YKjNdZl', '628', 'USD', 'nikxen_vmi', 'https://nikxen.com', 29, 'Suisun City', 'US', '513 Del Oro Ct', '94585', 'CA', 'Susanm24@sbcglobal.net', '7076883089', 'Susan', 'Miesner', 'Suisun City', 'US', '513 Del Oro Ct', '94585', 'CA', 'Susan', 'Miesner', 'Susanm24@sbcglobal.net', '7076883089', 'pending', 'no', '2021-11-09 08:37:57', '2021-11-09 08:37:57'),
(4295, '80108', 'hrOJDbzXGTUa5NF9SpYqgMjB0duLv2Qc', '209', 'USD', 'nikxen_vmi', 'https://nikxen.com', 29, 'London', 'GB', '9c Keyes road', 'Nw32xb', 'England', 'Molliegrosberg@hotmail.com', '07790836261', 'Mollie', 'Grosberg', 'London', 'GB', '9c Keyes road', 'Nw32xb', 'England', 'Mollie', 'Grosberg', 'Molliegrosberg@hotmail.com', '07790836261', 'paid', 'no', '2021-11-09 09:10:04', '2021-11-09 09:18:17'),
(4296, '80109', 'mMPC8ULjn2eZ4NSbFh9ri0pzGuTQv1f6', '520', 'USD', 'nikxen_vmi', 'https://nikxen.com', 29, 'Tempe', 'US', '2440 S mill Ave 8136', '85282', 'AZ', 'georgemccullough385@gmail.com', '4806840263', 'George', 'Mccullough', 'Tempe', 'US', '2440 S mill Ave 8136', '85282', 'AZ', 'George', 'Mccullough', 'georgemccullough385@gmail.com', '4806840263', 'paid', 'no', '2021-11-09 20:40:47', '2021-11-11 03:59:58'),
(4297, '80110', 'lzYEITfD57iXK48MkHnPqcOGehaNSJuw', '188', 'USD', 'nikxen_vmi', 'https://nikxen.com', 29, 'dartmouth', 'US', '141 tucker lane', '02747', 'MA', 'calvin71902@yahoo.com', '5089658310', 'christine', 'oliveira', 'dartmouth', 'US', '141 tucker lane', '02747', 'MA', 'christine', 'oliveira', 'calvin71902@yahoo.com', '5089658310', 'paid', 'no', '2021-11-09 21:00:30', '2021-11-10 01:30:56'),
(4298, '80111', 'CcE0vfQn2ksm1GWePlXu6NodM7JTFbi4', '155', 'USD', 'nikxen_vmi', 'https://nikxen.com', 29, 'Norwalk', 'US', '87 Magnolia Ave', '06850', 'CT', 'jrizzo7951@aol.com', '2038567395', 'Jennifer', 'Rizzo', 'Norwalk', 'US', '87 Magnolia Ave', '06850', 'CT', 'Jennifer', 'Rizzo', 'jrizzo7951@aol.com', '2038567395', 'pending', 'no', '2021-11-10 00:15:28', '2021-11-10 00:15:28'),
(4299, '80112', '7ECPDgVrBlSwWqQZ6y0imnedtFaKGX1j', '227', 'USD', 'nikxen_vmi', 'https://nikxen.com', 29, 'Pembroke Pnes', 'US', '541 Sw 178th Way', '33029', 'FL', 'steserver@gmail.com', '3056086826', 'Steven', 'A Server', 'Pembroke Pnes', 'US', '541 Sw 178th Way', '33029', 'FL', 'Steven', 'A Server', 'steserver@gmail.com', '3056086826', 'paid', 'no', '2021-11-10 01:36:47', '2021-11-10 03:59:03'),
(4300, '80113', 'bRjEAW7xmCh0XraGo8sYwcfKUtVkp1DZ', '278', 'USD', 'nikxen_vmi', 'https://nikxen.com', 29, 'Holmbury St Mary', 'GB', 'Wildwood Felday Glade', 'RH5 6PG', 'Surrey', 'paulbenedict46@yahoo.com', '01306730304', 'Paul', 'Benedict', 'Holmbury St Mary', 'GB', 'Wildwood Felday Glade', 'RH5 6PG', 'Surrey', 'Paul', 'Benedict', 'paulbenedict46@yahoo.com', '01306730304', 'paid', 'no', '2021-11-10 02:53:14', '2021-11-10 03:43:40'),
(4301, '80114', 'ShQesIM0DoUgABvPb3rztqxOKV6N2GkR', '550', 'USD', 'nikxen_vmi', 'https://nikxen.com', 29, 'Perry Hall', 'US', '4713A Forge Road', '21128', 'Md', 'Chuckw3116@comcast.net', '4438412598', 'Charles', 'Watson', 'Perry Hall', 'US', '4713A Forge Road', '21128', 'Md', 'Charles', 'Watson', 'Chuckw3116@comcast.net', '4438412598', 'pending', 'no', '2021-11-10 03:21:24', '2021-11-10 03:21:24'),
(4302, '80115', 'VBQRmqckKTMiS81pezYnGCUxW6u37sav', '290', 'USD', 'nikxen_vmi', 'https://nikxen.com', 29, 'Steamboat Springs', 'US', '1557 Conestoga Cir', '80487', 'CO', 'Thejeffmichael@gmail.com', '3055879104', 'Jeff', 'Sublett', 'Steamboat Springs', 'US', '1557 Conestoga Cir', '80487', 'CO', 'Jeff', 'Sublett', 'Thejeffmichael@gmail.com', '3055879104', 'pending', 'no', '2021-11-10 03:51:44', '2021-11-10 03:51:44'),
(4303, '80116', 'SnDUmgKPXpoNIhOQGWCvJyLjMus54awz', '560', 'USD', 'nikxen_vmi', 'https://nikxen.com', 29, 'Raymond', 'US', '14818 Dry Grove Rd', '39154', 'MS', 'Jdfoster6789@msn.com', '2282499087', 'Jacob', 'Foster', 'Raymond', 'US', '14818 Dry Grove Rd', '39154', 'MS', 'Jacob', 'Foster', 'Jdfoster6789@msn.com', '2282499087', 'pending', 'no', '2021-11-10 04:19:45', '2021-11-10 04:19:45'),
(4304, '80117', 'fGOLKVoNUu1Zw4IRdnWc9HBpJh7tygbx', '218', 'USD', 'nikxen_vmi', 'https://nikxen.com', 29, 'Rye', 'US', '66 milton road  J42', '10580', 'NY', 'brianwstack@yahoo.com', '9142915240', 'brian', 'Stack', 'Rye', 'US', '66 milton road  J42', '10580', 'NY', 'brian', 'Stack', 'brianwstack@yahoo.com', '9142915240', 'pending', 'no', '2021-11-10 04:23:33', '2021-11-10 04:23:33'),
(4305, '80118', 'a5EqZ6tCNFm3Q0zY1hk7ARSugdVHIO8L', '1080', 'USD', 'nikxen_vmi', 'https://nikxen.com', 29, 'Weston', 'US', '53 Godfrey road west', '06883', 'CT', 'Batmobile79k@gmail.com', '2035616321', 'KATE', 'BRODY', 'Weston', 'US', '53 Godfrey road west', '06883', 'CT', 'KATE', 'BRODY', 'Batmobile79k@gmail.com', '2035616321', 'pending', 'no', '2021-11-10 04:55:30', '2021-11-10 04:55:30'),
(4306, '80119', '6CNfRXuH9VoPtMSJalm5ZvFAQsBcxWTe', '378', 'USD', 'nikxen_vmi', 'https://nikxen.com', 29, 'Reynoldsburg', 'US', '6435 Old Church Way', '43068', 'OH', 'ericromweber@wowway.com', '6145519363', 'Eric', 'Romweber', 'Reynoldsburg', 'US', '6435 Old Church Way', '43068', 'OH', 'Eric', 'Romweber', 'ericromweber@wowway.com', '6145519363', 'paid', 'no', '2021-11-10 04:59:31', '2021-11-10 05:22:04'),
(4307, '80120', 'eVraE1pNPHZ8w3cF2uKGOBMLQIlRgJmi', '190', 'USD', 'nikxen_vmi', 'https://nikxen.com', 29, 'woolwich', 'US', '2606 lexington mews', '08085', 'nj', 'oregon91704@aol.com', '6094325773', 'julie', 'tripoli', 'woolwich', 'US', '2606 lexington mews', '08085', 'nj', 'julie', 'tripoli', 'oregon91704@aol.com', '6094325773', 'paid', 'no', '2021-11-10 05:11:49', '2021-11-11 02:15:56'),
(4308, '80121', 'ZkbrPTe7Khjlo9yfJt5vBCW08SpmaA6s', '400', 'USD', 'nikxen_vmi', 'https://nikxen.com', 29, 'Carmichael', 'US', '6120 sizemore lane', '95607', 'CA', 'Promarina01@gmail.com', '9168683963', 'Marina', 'Protsenko', 'Carmichael', 'US', '6120 sizemore lane', '95607', 'CA', 'Marina', 'Protsenko', 'Promarina01@gmail.com', '9168683963', 'pending', 'no', '2021-11-10 05:15:56', '2021-11-10 05:15:56'),
(4309, '80122', 'krb6VIvcaDUz9yH1x5YqAuiNoGnhtBme', '639', 'USD', 'nikxen_vmi', 'https://nikxen.com', 29, 'Cartersville', 'US', 'P.O. Box 3862', '30120', 'GA', 'Angeliaedwards@comcast.net', '7703243417', 'Angela', 'Edwards', 'Cartersville', 'US', '214 W Main Street', '30120', 'GA', 'Angela', 'Edwards', 'Angeliaedwards@comcast.net', '7703243417', 'pending', 'no', '2021-11-10 05:46:19', '2021-11-10 05:50:14');
INSERT INTO `invoices` (`id`, `order_id`, `inv_url`, `amount`, `currency`, `merchant_id`, `merchant_url`, `shipping_amount`, `ship_to_address_city`, `ship_to_address_country`, `ship_to_address_line1`, `ship_to_address_postal_code`, `ship_to_address_state`, `ship_to_email`, `ship_to_phone`, `ship_to_forename`, `ship_to_surname`, `bill_to_address_city`, `bill_to_address_country`, `bill_to_address_line1`, `bill_to_address_postal_code`, `bill_to_address_state`, `bill_to_forename`, `bill_to_surname`, `bill_to_email`, `bill_to_phone`, `status`, `expire`, `created_at`, `updated_at`) VALUES
(4310, '80123', 'I9opyKj26TCNtO7cX5Fe0zZP3aEqhHLr', '278', 'USD', 'nikxen_vmi', 'https://nikxen.com', 29, 'Henderson', 'US', '855 N Stephanie St Unit 2311', '89014', 'NV', 'pcurtiscrete@aol.com', '7027710018', 'Paul', 'C Singletleton', 'Henderson', 'US', '855 N Stephanie St Unit 2311', '89014', 'NV', 'Paul', 'C Singletleton', 'pcurtiscrete@aol.com', '7027710018', 'pending', 'no', '2021-11-10 06:29:24', '2021-11-10 06:29:24'),
(4311, '80124', 'Ltvc9VzMgf2F8bHhr1wDqEXGApeaSk5N', '750', 'USD', 'nikxen_vmi', 'https://nikxen.com', 29, 'Hampton', 'US', '359 Warrington Circle', '23669', 'VA', 'tomthomason1@hotmail.com', '7578761500', 'Emory', 'J Thomason', 'Hampton', 'US', '359 Warrington Circle', '23669', 'VA', 'Emory', 'J Thomason', 'tomthomason1@hotmail.com', '7578761500', 'paid', 'no', '2021-11-10 06:31:14', '2021-11-10 07:01:51'),
(4312, '80125', '6HlFYTUup3BwahcILKS91Db8PfxeorQO', '178', 'USD', 'nikxen_vmi', 'https://nikxen.com', 29, 'Monroe', 'US', '234 Cutlers Farm Rd', '06468', 'CT', 'mnk.pinto.ogando@gmail.com', '2037676764', 'Missy', 'Ogando', 'Monroe', 'US', '234 Cutlers Farm Rd', '06468', 'CT', 'Missy', 'Ogando', 'mnk.pinto.ogando@gmail.com', '2037676764', 'paid', 'no', '2021-11-10 06:38:58', '2021-11-11 01:56:06'),
(4313, '80126', 'KxjHP4Ge0VwzmiD6Ul9EIuyCJkTn7WS8', '679', 'USD', 'nikxen_vmi', 'https://nikxen.com', 29, 'MIDVALE', 'US', '7643 Lark Meadow cove', '84047', 'UT', 'Thomas.Dolan12@comcast.net', '8014400453', 'Thomas', 'Dolan', 'MIDVALE', 'US', '7643 Lark Meadow cove', '84047', 'UT', 'Thomas', 'Dolan', 'Thomas.Dolan12@comcast.net', '8014400453', 'pending', 'no', '2021-11-10 07:24:21', '2021-11-10 07:24:21'),
(4314, '80127', 'SHP7nWfhgEbKzJV3jmq24cTdLy1ktiAF', '219', 'USD', 'nikxen_vmi', 'https://nikxen.com', 29, 'Ashville', 'US', '3296 coupon gallitzin rd', '16613', 'Pa', 'Klschmitty10@gmail.com', '8146318316', 'Keri', 'Schmitt', 'Ashville', 'US', '3296 coupon gallitzin rd', '16613', 'Pa', 'Keri', 'Schmitt', 'Klschmitty10@gmail.com', '8146318316', 'pending', 'no', '2021-11-10 07:36:05', '2021-11-10 07:36:05'),
(4315, '80128', 'ZA04ycxT9CQKd3wUv8JWVikpqLsfDnGj', '209', 'USD', 'nikxen_vmi', 'https://nikxen.com', 29, 'O Fallon', 'US', '254 Colt Circle', '63368', 'MO', 'ou812.barf@gmail.com', '6366333929', 'Richard', 'Hamlton', 'O Fallon', 'US', '254 Colt Circle', '63368', 'MO', 'Richard', 'Hamlton', 'ou812.barf@gmail.com', '6366333929', 'pending', 'no', '2021-11-10 08:11:43', '2021-11-10 08:11:43'),
(4316, '80129', '5WYXgqmcTseKul068PiQLOo4zHNGkbnU', '400', 'USD', 'nikxen_vmi', 'https://nikxen.com', 29, 'Hyde Park', 'US', '220 Fairmount Ave', '02136', 'MA', 'michael_horner@comcast.net', '6179010557', 'Michael', 'R Horner', 'Hyde Park', 'US', '220 Fairmount Ave', '02136', 'MA', 'Michael', 'R Horner', 'michael_horner@comcast.net', '6179010557', 'paid', 'no', '2021-11-10 08:19:06', '2021-11-10 09:13:58'),
(4317, '80130', 'VovPNaqhiGDw7bBCgQlYyWHZMftSzceI', '158', 'USD', 'nikxen_vmi', 'https://nikxen.com', 29, 'Kapaa', 'US', '6231 Hauiki Rd', '96746', 'HI', 'Ilikelehua@yahoo.com', '8088223484', 'Lehua', 'Fernandes Salling', 'Kapaa', 'US', '6231 Hauiki Rd', '96746', 'HI', 'Lehua', 'Fernandes Salling', 'Ilikelehua@yahoo.com', '8088223484', 'pending', 'no', '2021-11-10 08:35:55', '2021-11-10 08:35:55'),
(4318, '80131', 'NTAznlcZV6BKF8EUfba9rJ3HORkIWmL0', '400', 'USD', 'nikxen_vmi', 'https://nikxen.com', 29, 'Bradford', 'GB', '49 Bingley Road', 'BD18 4SB', 'West Yorkshire', 'Juliebaldwin1970@live.co.uk', '07870606408', 'Julie', 'Baldwin', 'Bradford', 'GB', '49 Bingley Road', 'BD18 4SB', 'West Yorkshire', 'Julie', 'Baldwin', 'Juliebaldwin1970@live.co.uk', '07870606408', 'paid', 'no', '2021-11-10 08:54:40', '2021-11-10 09:00:09'),
(4319, '80132', 'rak0x9j2ZIvWqiudG51fJc7FYXSRoPyN', '370', 'USD', 'nikxen_vmi', 'https://nikxen.com', 29, 'millstone township', 'US', '16 van arsdale circle', '08535', 'nj', 'theohbananas@yahoo.com', '7329916249', 'Richard', 'Meyer', 'millstone township', 'US', '16 van arsdale circle', '08535', 'nj', 'Richard', 'Meyer', 'theohbananas@yahoo.com', '7329916249', 'paid', 'no', '2021-11-10 09:02:36', '2021-11-11 02:13:12'),
(4320, '80133', 'RbLq3EN12cFAQk46Cwuz9f05n8lmOPMB', '475', 'USD', 'nikxen_vmi', 'https://nikxen.com', 29, 'TULSA', 'US', '3701 S Peoria Ave', '74105', 'OK', 'marion@kjrh.com', '9185953512', 'scott', 'marion', 'TULSA', 'US', '3701 S Peoria Ave', '74105', 'OK', 'scott', 'marion', 'marion@kjrh.com', '9185953512', 'paid', 'no', '2021-11-10 21:13:22', '2021-11-11 02:00:39'),
(4321, '80134', '5mgCuWGoiyXEx0KIcVZSTJlBL7dnPRj1', '515', 'USD', 'nikxen_vmi', 'https://nikxen.com', 29, 'Naples', 'US', '320 Sugar Pine Ln', '34108', 'FL', 'Brismi0808@gmail.com', '2392739897', 'Brian', 'Michael Smith', 'Naples', 'US', '320 Sugar Pine Ln', '34108', 'FL', 'Brian', 'Michael Smith', 'Brismi0808@gmail.com', '2392739897', 'pending', 'no', '2021-11-10 22:14:10', '2021-11-10 22:14:10'),
(4322, '80135', 'MH2PwcFJ0zRBYg7oOLIuqGSDyer3fTsm', '180', 'USD', 'nikxen_vmi', 'https://nikxen.com', 29, 'Marietta', 'US', '1486 Terrell Mill Rd SE apt 358', '30067', 'GA', 'Jamainstephens@yahoo.com', '3366025766', 'Jamain', 'Stephens', 'Marietta', 'US', '1486 Terrell Mill Rd SE apt 358', '30067', 'GA', 'Jamain', 'Stephens', 'Jamainstephens@yahoo.com', '3366025766', 'pending', 'no', '2021-11-11 01:37:35', '2021-11-11 01:37:35'),
(4323, '80136', 'v3TxQZqClB0mifHjgwAI1UEGy2dpKhWY', '900', 'USD', 'nikxen_vmi', 'https://nikxen.com', 29, 'Falls Chruch', 'US', '3242 Holly Berry Ct', '22043', 'VA', 'roberts240@hotmail.com', '5712157433', 'Elizabeth', 'R Roberts', 'Annandale', 'US', 'PO Box 11', '22003', 'VA', 'Elizabeth', 'R Roberts', 'roberts240@hotmail.com', '5712157433', 'pending', 'no', '2021-11-11 01:48:02', '2021-11-11 01:48:02'),
(4324, '80137', 'uHRry2wXYPxIjQ86bU317FWAcqdioaGZ', '349', 'USD', 'nikxen_vmi', 'https://nikxen.com', 29, 'Naples', 'US', '2905 gulfshore blvd Florida', '34103', 'FL', 'jao34103@hotmail.com', '2394502865', 'James', 'A Oleary', 'Naples', 'US', '2905 gulfshore blvd Florida', '34103', 'FL', 'James', 'A Oleary', 'jao34103@hotmail.com', '2394502865', 'pending', 'no', '2021-11-11 02:13:35', '2021-11-11 02:13:35'),
(4325, '80138', 'G0OtF1iRD3r9lcAsxXUMg45EY2K6CufH', '197', 'USD', 'nikxen_vmi', 'https://nikxen.com', 29, 'Bremond', 'US', '13355 Andreski Road', '76629', 'TX', 'Dengro66@yaho.com', '2547166192', 'Dennis', 'Groholski', 'Bremond', 'US', '13355 Andreski Road', '76629', 'TX', 'Dennis', 'Groholski', 'Dengro66@yaho.com', '2547166192', 'paid', 'no', '2021-11-11 02:55:15', '2021-11-11 03:16:02'),
(4326, '80139', 'dspZKIM9qglheoBwDjfmO30EA4ucykFG', '214', 'USD', 'nikxen_vmi', 'https://nikxen.com', 29, 'Scottsdale', 'US', '7272 E GAainey rance road house no 72', '85258', 'Ar', 'Crestasouthwest@outlook.com', '6027990265', 'Todd', 'E Moseson', 'Scottsdale', 'US', '20701 N Scottsdale Rd', '85255', 'Ar', 'Todd', 'E Moseson', 'Crestasouthwest@outlook.com', '6027990265', 'paid', 'no', '2021-11-11 03:29:21', '2021-11-12 23:36:57'),
(4327, '80140', 'Q6RIjHOcFk7xdubDvPMCa42e8qKpwfzS', '139', 'USD', 'nikxen_vmi', 'https://nikxen.com', 29, 'south hill park', 'GB', '5 south hill mansions 68-70 south hill park', 'NW32SL', 'England', 'Fionalafferty@blueyonder.co.uk', '07802447856', 'fiona', 'lafferty', 'south hill park', 'GB', '5 south hill mansions 68-70 south hill park', 'NW32SL', 'England', 'fiona', 'lafferty', 'Fionalafferty@blueyonder.co.uk', '07802447856', 'paid', 'no', '2021-11-11 03:39:58', '2021-11-11 04:01:12'),
(4328, '80141', 'NHLvGyuz1DihUojIK3as0ld692BctQqZ', '386', 'USD', 'nikxen_vmi', 'https://nikxen.com', 29, 'Lakehills', 'US', '12222 park road 37', '78063', 'tx', 'Susan.Rickard.hansen@gmail.com', '4152159416', 'Susan', 'Hansen', 'Redwood city', 'US', '1776 Stockbridge avenue', '94061', 'CA', 'Susan', 'Hansen', 'Susan.Rickard.hansen@gmail.com', '4152159416', 'pending', 'no', '2021-11-11 03:54:13', '2021-11-11 03:54:13'),
(4329, '80142', 'ZhJKjyYTwqirM1L4dcWHDGE620Qkem3N', '490', 'USD', 'nikxen_vmi', 'https://nikxen.com', 29, 'Vinemont', 'US', '445 County Road 1218', '35179', 'Al', 'Kvance98@aol.com', '2563391739', 'Karen', 'y Vance', 'Vinemont', 'US', '445 County Road 1218', '35179', 'Al', 'Karen', 'y Vance', 'Kvance98@aol.com', '2563391739', 'pending', 'no', '2021-11-11 05:27:23', '2021-11-11 05:27:23'),
(4330, '80143', '7z0Q5ZOuqxkNKAbeJjoygWh1apvRL8ns', '349', 'USD', 'nikxen_vmi', 'https://nikxen.com', 29, 'Stockton', 'US', '829 S San Joaquin apt B', '95206', 'CA', 'Davelpax@hotmail.com', '2096882656', 'Dave', 'Paxman', 'Stockton', 'US', '829 S San Joaquin apt B', '95206', 'CA', 'Dave', 'Paxman', 'Davelpax@hotmail.com', '2096882656', 'pending', 'no', '2021-11-11 05:34:02', '2021-11-11 05:34:02'),
(4331, '80144', 'ZoHCMm8Wrlibkv0de5DJRKOVt3pYNghc', '394', 'USD', 'nikxen_vmi', 'https://nikxen.com', 29, 'bear creek', 'US', '2303 meadow run rd', '18702', 'pa', 'steve.rovinski89@gmail.com', '5708812831', 'Steve', 'rovinski', 'bear creek', 'US', '2303 meadow run rd', '18702', 'pa', 'Steve', 'rovinski', 'steve.rovinski89@gmail.com', '5708812831', 'pending', 'no', '2021-11-11 05:36:12', '2021-11-11 05:36:12'),
(4332, '80145', 'KEwGJrySQC2vuoN7zU5fkMR4X0dq1ViY', '390', 'USD', 'nikxen_vmi', 'https://nikxen.com', 29, 'Spokane', 'US', '2603 N Napa', '99207', 'WA', 'chillsrun3@comcast.net', '5095996102', 'Catherine', 'Hills', 'Spokane', 'US', '2603 N Napa', '99207', 'WA', 'Catherine', 'Hills', 'chillsrun3@comcast.net', '5095996102', 'paid', 'no', '2021-11-11 06:35:38', '2021-11-11 06:53:44'),
(4333, '80146', 'OaEfADtZTMczU09FXi5nrBgV68bvRSh3', '750', 'USD', 'nikxen_vmi', 'https://nikxen.com', 29, 'Lehi', 'US', '3333 Digital Drive 5th Floor', '84043', 'UT', 'Firstforrest@gmail.com', '3106899794', 'Kenneth', 'Forrest', 'Lehi', 'US', '3333 Digital Drive 5th Floor', '84043', 'UT', 'Kenneth', 'Forrest', 'Firstforrest@gmail.com', '3106899794', 'pending', 'no', '2021-11-11 06:40:47', '2021-11-11 06:40:47'),
(4334, '80147', 'CjMRpvZ1dwfQVyqYhW5brnTeoOsUPLFS', '800', 'USD', 'nikxen_vmi', 'https://nikxen.com', 29, 'Roseville', 'US', '1900 S Cirby  17', '95661', 'CA', 'Sitarfchrista@gmail.com', '9162200277', 'Christa', 'Pifer', 'Roseville', 'US', '1900 S Cirby  17', '95661', 'CA', 'Christa', 'Pifer', 'Sitarfchrista@gmail.com', '9162200277', 'paid', 'no', '2021-11-11 07:24:31', '2021-12-06 13:35:29'),
(4335, '80148', '6VMxWs290NcurmZQHY4JX7TbSan8KIeg', '450', 'USD', 'nikxen_vmi', 'https://nikxen.com', 29, 'Pittsburgh', 'US', '191 Cobblestone Dr', '15237', 'PA', 'kendrickphd@yahoo.com', '4128557301', 'Fredrick O', 'Kendrick', 'Pittsburgh', 'US', '191 Cobblestone Dr', '15237', 'PA', 'Fredrick O', 'Kendrick', 'kendrickphd@yahoo.com', '4128557301', 'paid', 'no', '2021-11-11 07:43:03', '2021-11-11 07:50:55'),
(4336, '80149', 'lbLWCkD6wz3YtMa0Ax8vqhBpQ29EZsX7', '829', 'USD', 'nikxen_vmi', 'https://nikxen.com', 29, 'Huffman', 'US', '1111 Valley Commons Dr', '77336', 'TX', 'coachabshire11@yahoo.com', '7138596780', 'Kevin', 'S Abshire', 'Huffman', 'US', '1111 Valley Commons Dr', '77336', 'TX', 'Kevin', 'S Abshire', 'coachabshire11@yahoo.com', '7138596780', 'pending', 'no', '2021-11-12 04:29:15', '2021-11-12 04:48:13'),
(4337, '80150', 'vJe3mzsRH4t1XuB5Cg92MdWc6UkQVxKS', '278', 'USD', 'nikxen_vmi', 'https://nikxen.com', 29, 'Baldwyn', 'US', '150 Road 2768', '38824', 'MS', 'rjjemail999@gmail.com', '3125199574', 'Ron', 'J Jankowski', 'Baldwyn', 'US', '150 Road 2768', '38824', 'MS', 'Ron', 'J Jankowski', 'rjjemail999@gmail.com', '3125199574', 'pending', 'no', '2021-11-12 04:31:19', '2021-11-12 04:31:19'),
(4338, '80151', 'nuWemJ6zEKUOwBG5YbjiLkH4A9CV8RNt', '219', 'USD', 'nikxen_vmi', 'https://nikxen.com', 29, 'Cold lake', 'CA', '6 1001 7 ave', 'T9m 0c4', 'Ab', 'Smith.merissa@hotmail.com', '7808080121', 'Merissa', 'Smith', 'Cold lake', 'CA', '6 1001 7 ave', 'T9m 0c4', 'Ab', 'Merissa', 'Smith', 'Smith.merissa@hotmail.com', '7808080121', 'paid', 'no', '2021-11-12 04:34:33', '2021-11-12 06:30:04'),
(4339, '80152', 'OqnkePjwZoG3rlEWgydKaQ78Rv950IFf', '900', 'USD', 'nikxen_vmi', 'https://nikxen.com', 29, 'San antonio', 'US', '302 Pearl pkwy 3213', '78215', 'TX', 'katiehaugland@hotmail.com', '9032405870', 'Katie', 'R Bowen', 'San antonio', 'US', '302 Pearl pkwy 3213', '78215', 'TX', 'Katie', 'R Bowen', 'katiehaugland@hotmail.com', '9032405870', 'pending', 'no', '2021-11-12 04:50:22', '2021-11-12 04:57:39'),
(4340, '80153', 'oAdPHXKOV0h5pEijecxTGWDvtkUsy42q', '850', 'USD', 'nikxen_vmi', 'https://nikxen.com', 29, 'Newtown', 'US', '3 Haines Circle', '18940', 'PA', 'Jessegirl_ca@hotmail.com', '6198690045', 'Jessica', 'P Burgess', 'Newtown', 'US', '3 Haines Circle', '18940', 'PA', 'Jessica', 'P Burgess', 'Jessegirl_ca@hotmail.com', '6198690045', 'paid', 'no', '2021-11-12 04:53:36', '2021-11-12 10:23:29'),
(4341, '80154', 'j9u2VIr05GPkqh63WS8FbvHfdeCcoAgK', '224', 'USD', 'nikxen_vmi', 'https://nikxen.com', 29, 'MEADVILLE', 'US', '1004 first street', '16335', 'PA', 'lisanewhard@outlook.com', '8143506708', 'Lisa', 'Newhard', 'MEADVILLE', 'US', '1004 first street', '16335', 'PA', 'Lisa', 'Newhard', 'lisanewhard@outlook.com', '8143506708', 'pending', 'no', '2021-11-12 04:56:07', '2021-11-12 04:56:07'),
(4342, '80155', 'uFUpr4GWzx6ydAa1Nf9KZkMCm3vRJQi8', '253', 'USD', 'nikxen_vmi', 'https://nikxen.com', 29, 'Pasadena', 'US', '2199 Oakwood St', '91104', 'CA', 'Pilar.m.oliva@gmail.com', '6263944704', 'Pilar', 'Oliva', 'Pasadena', 'US', '2199 Oakwood St', '91104', 'CA', 'Pilar', 'Oliva', 'Pilar.m.oliva@gmail.com', '6263944704', 'pending', 'no', '2021-11-12 05:10:03', '2021-11-12 05:10:03'),
(4343, '80156', 'UuKFS042fpjwvPxbNTzi7LscJWmnHd3X', '479', 'USD', 'nikxen_vmi', 'https://nikxen.com', 29, 'Macon', 'US', '5277 Zebulon road', '31210', 'GA', 'kaponeal2000@hotmail.com', '4785016672', 'Kimberly', 'Maddox', 'Macon', 'US', '5277 Zebulon road', '31210', 'GA', 'Kimberly', 'Maddox', 'kaponeal2000@hotmail.com', '4785016672', 'pending', 'no', '2021-11-12 05:28:51', '2021-11-12 05:28:51'),
(4344, '80157', 'qn5LKZtGkREhw4jveAaBF9NDfc0ClMY8', '529', 'USD', 'nikxen_vmi', 'https://nikxen.com', 29, 'Naples', 'US', '320 Sugar Pine Ln', '34108', 'FL', 'Brismi0808@gmail.com', '2392739897', 'Brian', 'Michael Smith', 'Naples', 'US', '320 Sugar Pine Ln', '34108', 'FL', 'Brian', 'Michael Smith', 'Brismi0808@gmail.com', '2392739897', 'pending', 'no', '2021-11-12 05:43:24', '2021-11-13 00:43:09'),
(4345, '80158', 'pmuCqcHj4ovta3Ty7xhieZI0kgMnPGsr', '668', 'USD', 'nikxen_vmi', 'https://nikxen.com', 29, 'Fresno', 'US', '3010 Acacia Fair Ln', '77545', 'TX', 'Babygirl-4@sbcglobal.net', '8324836881', 'La Toya', 'T Newsome', 'Fresno', 'US', '3010 Acacia Fair Ln', '77545', 'TX', 'La Toya', 'T Newsome', 'Babygirl-4@sbcglobal.net', '8324836881', 'paid', 'no', '2021-11-13 01:24:57', '2021-11-13 02:00:07'),
(4346, '80159', 'SfK5H871hJtDLVU4oGmNR0espnubilaQ', '378', 'USD', 'nikxen_vmi', 'https://nikxen.com', 29, 'Glasgow', 'GB', '158 Estate road Carmyle Glasgow', 'G32 8AQ', 'Glasgow', 'janiem161@yahoo.com', '07833326387', 'Janie', 'M Fox', 'Glasgow', 'GB', '158 Estate road Carmyle Glasgow', 'G32 8AQ', 'Glasgow', 'Janie', 'M Fox', 'janiem161@yahoo.com', '07833326387', 'pending', 'no', '2021-11-13 01:47:11', '2021-11-13 01:47:11'),
(4347, '80160', '6JoWfSLz5TkEKsqcda83Qpxv1bZlAGnr', '425', 'USD', 'nikxen_vmi', 'https://nikxen.com', 29, 'Lynchburg', 'US', '3130 Landon St', '24503', 'VA', 'Mary.barney@gmail.com', '4349071942', 'Mary', 'Barney', 'Lynchburg', 'US', '3130 Landon St', '24503', 'VA', 'Mary', 'Barney', 'Mary.barney@gmail.com', '4349071942', 'pending', 'no', '2021-11-13 01:58:39', '2021-11-13 01:58:39'),
(4348, '80161', 'eVFqYbZR2oLzPWNdHtwnIAgXJSU0flxs', '248', 'USD', 'nikxen_vmi', 'https://nikxen.com', 29, 'Quincy', 'US', '1721 n 17th', '62301', 'Il', 'Ceaton@batessalesco.com', '2175775431', 'Anthony', 'Eaton', 'Quincy', 'US', '1721 n 17th', '62301', 'Il', 'Anthony', 'Eaton', 'Ceaton@batessalesco.com', '2175775431', 'pending', 'no', '2021-11-13 02:22:08', '2021-11-13 02:22:08'),
(4349, '80162', 'MZdSUhcQXWfCYlj6LkgKJB2F5pPRazsT', '800', 'USD', 'nikxen_vmi', 'https://nikxen.com', 29, 'Stockton', 'US', '4900 N  Hwy 99  Space 220', '95219', 'CA', 'Lois.lang@evolvepartnergroup.com', '2096085465', 'Andrew', 'Coleman', 'Stockton', 'US', '4322 Whispering Wind Court', '95219', 'CA', 'Lois', 'Lang', 'Lois.lang@evolvepartnergroup.com', '2096085465', 'pending', 'no', '2021-11-13 02:56:18', '2021-11-13 02:56:18'),
(4350, '80163', 'vRHIpxuflbV5SgADMWZcqhmo68EjJYKr', '799', 'USD', 'nikxen_vmi', 'https://nikxen.com', 29, 'highlands ranch', 'US', '1211 Michener way', '80126', 'co', 'Johnm19489@aol.com', '3039097722', 'John', 'Morton', 'highlands ranch', 'US', '1211 Michener way', '80126', 'co', 'John', 'Morton', 'Johnm19489@aol.com', '3039097722', 'pending', 'no', '2021-11-13 03:12:46', '2021-11-13 03:12:46'),
(4351, '80164', 'JnyYaU6PE5ojHLNziZM3eOG8WTxmshbt', '700', 'USD', 'nikxen_vmi', 'https://nikxen.com', 29, 'highlands ranch', 'US', '1211 Michener way', '80126', 'co', 'Johnm19489@aol.com', '3039097722', 'John', 'Morton', 'highlands ranch', 'US', '1211 Michener way', '80126', 'co', 'John', 'Morton', 'Johnm19489@aol.com', '3039097722', 'pending', 'no', '2021-11-13 03:13:45', '2021-12-07 01:03:49'),
(4364, '80165', '806jl2oq9gsObdyICahzMSFApuNDUKvJ', '25', 'USD', '1', 'https://nikxen.com', 5, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'pending', 'no', '2021-12-07 14:19:41', '2021-12-07 14:19:41'),
(4365, '80166', '1vAKi45dx0NM37Yu9XzePfZRoljWQcgs', '1416', 'USD', '1', 'https://nikxen.com', 10, 'lahore', 'PK', 'lahore adress', '12345', 'punjab', 'munib@gmail.com', '03037306009', 'muhammad', 'munib', 'lahore', 'PK', 'lahore adress', '12345', 'punjab', 'muhammad', 'munib', 'munib@gmail.com', '03037306009', 'pending', 'no', '2021-12-07 14:29:34', '2021-12-08 00:43:22');

-- --------------------------------------------------------

--
-- Table structure for table `merchants`
--

CREATE TABLE `merchants` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `legal_name` varchar(225) COLLATE utf8mb4_unicode_ci NOT NULL,
  `dba` varchar(225) COLLATE utf8mb4_unicode_ci NOT NULL,
  `business_type` varchar(225) COLLATE utf8mb4_unicode_ci NOT NULL,
  `address` varchar(225) COLLATE utf8mb4_unicode_ci NOT NULL,
  `primary_name` varchar(225) COLLATE utf8mb4_unicode_ci NOT NULL,
  `secondary_name` varchar(225) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `primary_phone` varchar(225) COLLATE utf8mb4_unicode_ci NOT NULL,
  `secondary_phone` varchar(225) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `primary_email` varchar(225) COLLATE utf8mb4_unicode_ci NOT NULL,
  `secondary_email` varchar(225) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `account_no` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `bank_name` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `url` varchar(225) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `logo_url` varchar(225) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `product_category` varchar(225) COLLATE utf8mb4_unicode_ci NOT NULL,
  `mdr` double NOT NULL,
  `rolling_resv` double NOT NULL,
  `no_of_days` varchar(225) COLLATE utf8mb4_unicode_ci NOT NULL,
  `settlement_days` varchar(225) COLLATE utf8mb4_unicode_ci NOT NULL,
  `refund` double NOT NULL,
  `charge_per` double NOT NULL,
  `charge_back` double NOT NULL,
  `setup_fee` double NOT NULL,
  `annual_fee` double NOT NULL,
  `monthly_fee` double NOT NULL,
  `user_id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `merchants`
--

INSERT INTO `merchants` (`id`, `legal_name`, `dba`, `business_type`, `address`, `primary_name`, `secondary_name`, `primary_phone`, `secondary_phone`, `primary_email`, `secondary_email`, `account_no`, `bank_name`, `url`, `logo_url`, `product_category`, `mdr`, `rolling_resv`, `no_of_days`, `settlement_days`, `refund`, `charge_per`, `charge_back`, `setup_fee`, `annual_fee`, `monthly_fee`, `user_id`, `created_at`, `updated_at`) VALUES
(1, 'VMI', 'VMI', 'Select', 'DHA Lahore', 'Abdullah', NULL, '03219464818', NULL, 'vmi@nikxen.com', NULL, '18587901317603', 'HBL', 'https://nikxen.com', 'https://nikxen.com', 'Select', 12, 0, '30', '4', 0, 0, 0, 0, 0, 0, 3, '2020-07-18 09:19:05', '2020-07-18 09:19:05');

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(225) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2019_12_03_104338_create_permission_tables', 1),
(4, '2019_12_03_113116_add_lockout_time_to_users_table', 1),
(5, '2019_12_25_064530_create_merchants_table', 1),
(6, '2019_12_25_064719_create_employees_table', 1),
(7, '2019_12_25_065350_add_user_type_to_users_table', 1),
(8, '2019_12_28_060540_create_transactions_table', 1),
(9, '2020_01_07_054112_create_shippings_table', 1),
(10, '2020_01_07_054210_create_transaction_histories_table', 1),
(11, '2020_01_07_054238_create_order_details_table', 1),
(12, '2020_01_07_054300_create_customers_table', 1),
(13, '2020_01_08_092904_create_reserves_table', 1),
(14, '2020_01_08_092933_create_batches_table', 1),
(15, '2020_01_14_120627_create_invoices_table', 1),
(16, '2020_01_15_050422_create_temp_orders_table', 1),
(17, '2020_02_01_065303_create_currencies_table', 1),
(18, '2020_02_15_122446_create_batch_transactions_table', 1),
(19, '2020_02_15_122830_create_batch_refunds_table', 1),
(20, '2020_02_15_122849_create_batch_reserves_table', 1),
(21, '2020_02_15_122909_create_batch_fees_table', 1),
(22, '2020_03_05_065501_create_notifications_table', 1),
(23, '2020_06_24_112439_add_details_to_batches_table', 1),
(24, '2020_07_06_065715_add_company_to_users_table', 1),
(25, '2020_07_10_045259_create_tickets_table', 1),
(26, '2020_07_10_080059_create_portal_transactions_table', 1);

-- --------------------------------------------------------

--
-- Table structure for table `model_has_permissions`
--

CREATE TABLE `model_has_permissions` (
  `permission_id` bigint(20) UNSIGNED NOT NULL,
  `model_type` varchar(225) COLLATE utf8mb4_unicode_ci NOT NULL,
  `model_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `model_has_roles`
--

CREATE TABLE `model_has_roles` (
  `role_id` bigint(20) UNSIGNED NOT NULL,
  `model_type` varchar(225) COLLATE utf8mb4_unicode_ci NOT NULL,
  `model_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `model_has_roles`
--

INSERT INTO `model_has_roles` (`role_id`, `model_type`, `model_id`) VALUES
(1, 'App\\User', 1),
(4, 'App\\User', 3),
(5, 'App\\User', 5),
(6, 'App\\User', 6);

-- --------------------------------------------------------

--
-- Table structure for table `notifications`
--

CREATE TABLE `notifications` (
  `id` char(36) COLLATE utf8mb4_unicode_ci NOT NULL,
  `type` varchar(225) COLLATE utf8mb4_unicode_ci NOT NULL,
  `notifiable_type` varchar(225) COLLATE utf8mb4_unicode_ci NOT NULL,
  `notifiable_id` bigint(20) UNSIGNED NOT NULL,
  `data` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `read_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `notifications`
--

INSERT INTO `notifications` (`id`, `type`, `notifiable_type`, `notifiable_id`, `data`, `read_at`, `created_at`, `updated_at`) VALUES
('9776855f-6a97-4ee1-99b8-ee022615ee97', 'App\\Notifications\\MSettleNotification', 'App\\User', 1, '{\"notification\":\"MSOID:|Hi Admin! Enter your Message|View My Trasnaction|https:\\/\\/nsecure.nikxen.com\\/transactions\\/view|14|yes|no|yes|no\"}', '2021-10-08 23:51:51', '2021-10-08 02:05:19', '2021-10-08 23:51:51');

-- --------------------------------------------------------

--
-- Table structure for table `order_details`
--

CREATE TABLE `order_details` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `order_id` varchar(225) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `item_name` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `type` varchar(225) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `price` varchar(225) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `tax` varchar(225) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `qty` varchar(225) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `currency` varchar(225) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `total` varchar(225) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `transaction_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `order_details`
--

INSERT INTO `order_details` (`id`, `order_id`, `item_name`, `type`, `price`, `tax`, `qty`, `currency`, `total`, `transaction_id`, `created_at`, `updated_at`) VALUES
(7, '80006', 'WM-SO', NULL, '411', '29', '1', 'USD', '411', 12, '2021-10-07 21:36:43', NULL),
(8, '80005', 'WM-SO', NULL, '430', '30', '1', 'USD', '430', 13, '2021-10-07 22:23:11', NULL),
(9, '80007', 'WM-SO', NULL, '431', '29', '1', 'USD', '431', 14, '2021-10-07 23:12:22', NULL),
(10, '80008', 'WM-SO', NULL, '348', '29', '1', 'USD', '348', 15, '2021-10-07 23:12:25', NULL),
(11, '80010', 'MAD', NULL, '491', '29', '1', 'USD', '491', 16, '2021-10-08 01:16:49', NULL),
(12, '80011', 'GP-LBD', NULL, '199', '29', '1', 'USD', '199', 17, '2021-10-08 03:00:20', NULL),
(13, '80012', 'MAD', NULL, '701', '29', '1', 'USD', '701', 18, '2021-10-08 03:24:01', NULL),
(14, '80013', 'CPD', NULL, '800', '29', '1', 'USD', '800', 19, '2021-10-08 03:42:28', NULL),
(15, '80014', 'G.P-L.B.D', NULL, '168', '29', '1', 'USD', '168', 20, '2021-10-08 16:38:10', NULL),
(16, '80004', 'MAD', NULL, '468', '29', '1', 'USD', '468', 21, '2021-10-08 22:37:47', NULL),
(17, '80016', 'GP-LBD', NULL, '209', '29', '1', 'USD', '209', 22, '2021-10-08 23:14:11', NULL),
(18, '80017', 'MAD', NULL, '699', '29', '1', 'USD', '699', 23, '2021-10-08 23:21:36', NULL),
(19, '80018', 'WM-SO', NULL, '314', '29', '1', 'USD', '314', 24, '2021-10-09 00:12:11', NULL),
(20, '80020', 'WM-SO', NULL, '421', '29', '1', 'USD', '421', 25, '2021-10-09 01:43:39', NULL),
(21, '80022', 'WM-SO', NULL, '456', '29', '1', 'USD', '456', 26, '2021-10-09 02:51:15', NULL),
(22, '80021', 'MAD', NULL, '716', '29', '1', 'USD', '716', 27, '2021-10-09 05:33:57', NULL),
(23, '80023', 'GP-LBD', NULL, '234', '29', '1', 'USD', '234', 28, '2021-10-09 06:39:33', NULL),
(24, '80026', 'GP-LBD', NULL, '199', '29', '1', 'USD', '199', 29, '2021-10-09 21:44:53', NULL),
(25, '80027', 'GP-LBD', NULL, '168', '29', '1', 'USD', '168', 30, '2021-10-09 23:29:32', NULL),
(26, '80029', 'MAD', NULL, '579', '29', '1', 'USD', '579', 31, '2021-10-10 00:18:18', NULL),
(27, '80033', 'MAD', NULL, '720', '29', '1', 'USD', '720', 32, '2021-10-11 19:34:52', NULL),
(28, '80032', 'WM-SO', NULL, '445', '29', '1', 'USD', '445', 33, '2021-10-11 20:21:35', NULL),
(29, '80036', 'WM-SO', NULL, '386', '29', '1', 'USD', '386', 34, '2021-10-11 21:56:28', NULL),
(30, '80034', 'CPD', NULL, '799', '29', '1', 'USD', '799', 35, '2021-10-15 20:50:30', NULL),
(36, '80037', NULL, NULL, '1', '', '1', 'USD', '1', 36, '2021-11-02 23:33:25', NULL),
(40, '80038', NULL, NULL, '1', '', '1', 'USD', '1', 37, '2021-11-02 23:53:51', NULL),
(43, '80039', NULL, NULL, '1', '', '1', 'USD', '1', 38, '2021-11-03 22:46:51', NULL),
(45, '80041', NULL, NULL, '171', '', '1', 'USD', '171', 39, '2021-11-04 19:11:04', NULL),
(48, '80042', NULL, NULL, '168', '', '1', 'USD', '168', 40, '2021-11-04 19:58:30', NULL),
(61, '80045', NULL, NULL, '349', '29', '1', 'USD', '349', 41, '2021-11-04 21:24:23', NULL),
(62, '80046', NULL, NULL, '329', '', '1', 'USD', '329', 42, '2021-11-04 21:27:25', NULL),
(63, '80048', NULL, NULL, '250', '29', '1', 'USD', '250', 43, '2021-11-05 04:22:19', NULL),
(67, '80049', NULL, NULL, '799', '', '1', 'USD', '799', 44, '2021-11-05 06:25:47', NULL),
(74, '80054', NULL, NULL, '278', '29', '1', 'USD', '278', 47, '2021-11-06 00:45:30', NULL),
(89, '80055', NULL, NULL, '201', '', '1', 'USD', '201', 48, '2021-11-06 01:34:19', NULL),
(99, '80059', NULL, NULL, '220', '29', '1', 'USD', '220', 50, '2021-11-06 02:57:44', NULL),
(111, '80068', NULL, NULL, '219', '', '1', 'USD', '219', 52, '2021-11-06 06:18:59', NULL),
(116, '80070', NULL, NULL, '571', '29', '1', 'USD', '571', 54, '2021-11-06 07:07:37', NULL),
(117, '80072', NULL, NULL, '439', '', '1', 'USD', '439', 55, '2021-11-06 08:34:00', NULL),
(119, '80073', NULL, NULL, '800', '', '1', 'USD', '800', 56, '2021-11-07 00:04:38', NULL),
(121, '80066', NULL, NULL, '451', '', '1', 'USD', '451', 51, '2021-11-07 00:15:56', NULL),
(122, '80076', NULL, NULL, '600', '29', '1', 'USD', '600', 58, '2021-11-07 00:36:31', NULL),
(124, '80079', NULL, NULL, '219', '', '1', 'USD', '219', 62, '2021-11-07 02:34:39', NULL),
(127, '80077', NULL, NULL, '180', '29', '1', 'USD', '180', 61, '2021-11-07 03:22:31', NULL),
(129, '80080', NULL, NULL, '168', '', '1', 'USD', '168', 63, '2021-11-07 06:43:34', NULL),
(130, '80082', NULL, NULL, '451', '', '1', 'USD', '451', 64, '2021-11-07 08:26:09', NULL),
(131, '80053', NULL, NULL, '709', '', '1', 'USD', '709', 46, '2021-11-07 09:11:49', NULL),
(136, '80087', NULL, NULL, '571', '', '1', 'USD', '571', 67, '2021-11-08 23:20:03', NULL),
(137, '80085', NULL, NULL, '129', '', '1', 'USD', '129', 68, '2021-11-09 00:45:36', NULL),
(139, '80081', NULL, NULL, '396', '', '1', 'USD', '396', 65, '2021-11-09 01:01:32', NULL),
(144, '80096', NULL, NULL, '264', '', '1', 'USD', '264', 70, '2021-11-09 03:18:42', NULL),
(147, '80101', NULL, NULL, '691', '', '1', 'USD', '691', 73, '2021-11-09 06:00:09', NULL),
(153, '80102', NULL, NULL, '604', '', '1', 'USD', '604', 74, '2021-11-09 06:28:06', NULL),
(155, '80103', NULL, NULL, '461', '', '1', 'USD', '461', 75, '2021-11-09 08:21:26', NULL),
(159, '80093', NULL, NULL, '599', '', '1', 'USD', '599', 69, '2021-11-09 08:43:54', NULL),
(161, '80108', NULL, NULL, '180', '', '1', 'USD', '180', 76, '2021-11-09 09:16:10', NULL),
(163, '80098', NULL, NULL, '410', '', '1', 'USD', '410', 71, '2021-11-09 10:48:24', NULL),
(169, '80110', NULL, NULL, '159', '', '1', 'USD', '159', 79, '2021-11-10 01:30:22', NULL),
(172, '80113', NULL, NULL, '249', '', '1', 'USD', '249', 84, '2021-11-10 03:42:45', NULL),
(174, '80112', NULL, NULL, '198', '', '1', 'USD', '198', 82, '2021-11-10 03:57:40', NULL),
(182, '80117', NULL, NULL, '189', '', '1', 'USD', '189', 86, '2021-11-10 05:13:10', NULL),
(184, '80119', NULL, NULL, '349', '', '1', 'USD', '349', 87, '2021-11-10 05:19:48', NULL),
(187, '80122', NULL, NULL, '610', '29', '1', 'USD', '610', 88, '2021-11-10 05:50:43', NULL),
(189, '80123', NULL, NULL, '249', '', '1', 'USD', '249', 90, '2021-11-10 06:38:02', NULL),
(197, '80124', NULL, NULL, '721', '', '1', 'USD', '721', 89, '2021-11-10 07:01:26', NULL),
(198, '80126', NULL, NULL, '650', '', '1', 'USD', '650', 91, '2021-11-10 07:52:22', NULL),
(206, '80130', NULL, NULL, '129', '', '1', 'USD', '129', 94, '2021-11-10 08:48:44', NULL),
(208, '80131', NULL, NULL, '371', '', '1', 'USD', '371', 95, '2021-11-10 08:58:01', NULL),
(211, '80129', NULL, NULL, '371', '', '1', 'USD', '371', 92, '2021-11-10 09:12:15', NULL),
(214, '80134', NULL, NULL, '486', '', '1', 'USD', '486', 98, '2021-11-11 00:19:32', NULL),
(220, '80125', NULL, NULL, '149', '', '1', 'USD', '149', 93, '2021-11-11 01:56:08', NULL),
(221, '80133', NULL, NULL, '446', '', '1', 'USD', '446', 97, '2021-11-11 01:59:59', NULL),
(222, '80132', NULL, NULL, '341', '', '1', 'USD', '341', 96, '2021-11-11 02:10:34', NULL),
(225, '80137', NULL, NULL, '320', '', '1', 'USD', '320', 100, '2021-11-11 02:42:46', NULL),
(226, '80138', NULL, NULL, '168', '', '1', 'USD', '168', 101, '2021-11-11 03:14:42', NULL),
(231, '80140', NULL, NULL, '110', '', '1', 'USD', '110', 102, '2021-11-11 04:00:09', NULL),
(233, '80147', NULL, NULL, '771', '', '1', 'USD', '771', 106, '2021-11-11 07:37:55', NULL),
(243, '80148', NULL, NULL, '421', '', '1', 'USD', '421', 107, '2021-11-12 04:25:18', NULL),
(249, '80155', NULL, NULL, '224', '', '1', 'USD', '224', 113, '2021-11-12 05:25:26', NULL),
(251, '80157', NULL, NULL, '970', '29', '1', 'USD', '970', 117, '2021-11-13 00:03:19', NULL),
(253, '80159', NULL, NULL, '349', '', '1', 'USD', '349', 118, '2021-11-13 01:54:32', NULL),
(254, '80158', NULL, NULL, '639', '29', '1', 'USD', '639', 119, '2021-11-13 01:59:35', NULL),
(262, '80164', NULL, NULL, '671', '29', '1', 'USD', '671', 120, '2021-11-20 00:26:42', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(225) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(225) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `password_resets`
--

INSERT INTO `password_resets` (`email`, `token`, `created_at`) VALUES
('ahsannghalib@gmail.com', '$2y$10$IwPkCTpq5gWQfKNAyPF7VuGDy7kjHkfn.zN1dtY.NLv5LWnO6M7ei', '2020-07-20 13:10:44');

-- --------------------------------------------------------

--
-- Table structure for table `permissions`
--

CREATE TABLE `permissions` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(225) COLLATE utf8mb4_unicode_ci NOT NULL,
  `guard_name` varchar(225) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `permissions`
--

INSERT INTO `permissions` (`id`, `name`, `guard_name`, `created_at`, `updated_at`) VALUES
(1, 'merchant-panel', 'web', '2020-07-05 19:00:00', NULL),
(2, 'users', 'web', '2020-07-05 19:00:00', NULL),
(3, 'merchant-user', 'web', '2020-07-05 19:00:00', NULL),
(4, 'batches', 'web', '2020-07-05 19:00:00', NULL),
(5, 'transactions', 'web', '2020-07-05 19:00:00', NULL),
(6, 'quick-billing', 'web', '2020-07-05 19:00:00', NULL),
(7, 'roles', 'web', '2020-07-07 19:00:00', NULL),
(8, 'permissions', 'web', '2020-07-07 19:00:00', NULL),
(9, 'tickets', 'web', '2020-07-09 19:00:00', NULL),
(10, 'import-transactions', 'web', '2020-07-09 19:00:00', NULL),
(11, 'merchant-users', 'web', '2020-07-10 19:00:00', NULL),
(12, 'settled-transactions', 'web', '2020-07-10 19:00:00', NULL),
(13, 'mannual-settlement', 'web', '2020-07-10 19:00:00', NULL),
(14, 'balance', 'web', '2020-07-20 09:26:30', NULL),
(15, 'export-transactions', 'web', '2020-07-20 09:28:33', NULL),
(16, 'accepted-transactions', 'web', '2020-08-20 18:03:45', NULL),
(17, 'create-invoice', 'web', '2021-01-21 17:15:11', NULL),
(18, 'edit-invoice', 'web', '2021-01-21 17:15:22', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `portal_transactions`
--

CREATE TABLE `portal_transactions` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `request_id` varchar(225) COLLATE utf8mb4_unicode_ci NOT NULL,
  `card_number` varchar(225) COLLATE utf8mb4_unicode_ci NOT NULL,
  `approval_code` varchar(225) COLLATE utf8mb4_unicode_ci NOT NULL,
  `net_amount` double NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `reserves`
--

CREATE TABLE `reserves` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `reserve` double DEFAULT NULL,
  `status` varchar(225) COLLATE utf8mb4_unicode_ci NOT NULL,
  `transaction_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `roles`
--

CREATE TABLE `roles` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(225) COLLATE utf8mb4_unicode_ci NOT NULL,
  `guard_name` varchar(225) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `roles`
--

INSERT INTO `roles` (`id`, `name`, `guard_name`, `created_at`, `updated_at`) VALUES
(1, 'superadmin', 'web', '2020-07-05 19:00:00', NULL),
(2, 'accounts', 'web', '2020-07-05 19:00:00', NULL),
(3, 'chargeback-refund', 'web', '2020-07-05 19:00:00', NULL),
(4, 'merchant', 'web', '2020-07-05 19:00:00', NULL),
(5, 'ops', 'web', '2020-07-05 19:00:00', NULL),
(6, 'user', 'web', '2021-01-21 00:00:00', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `role_has_permissions`
--

CREATE TABLE `role_has_permissions` (
  `permission_id` bigint(20) UNSIGNED NOT NULL,
  `role_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `role_has_permissions`
--

INSERT INTO `role_has_permissions` (`permission_id`, `role_id`) VALUES
(1, 1),
(2, 1),
(2, 4),
(3, 1),
(3, 4),
(4, 1),
(4, 2),
(4, 4),
(5, 1),
(5, 2),
(5, 3),
(5, 4),
(5, 5),
(5, 6),
(6, 1),
(6, 4),
(6, 5),
(6, 6),
(7, 1),
(8, 1),
(9, 1),
(9, 4),
(9, 5),
(10, 1),
(12, 1),
(12, 4),
(13, 1),
(13, 4),
(13, 5),
(14, 1),
(14, 4),
(15, 1),
(15, 4),
(15, 5),
(16, 1),
(16, 4),
(17, 1),
(17, 4),
(17, 5),
(18, 1),
(18, 4),
(18, 5);

-- --------------------------------------------------------

--
-- Table structure for table `shippings`
--

CREATE TABLE `shippings` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `shipping_city` varchar(225) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `shipping_country` varchar(225) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `shipping_address` varchar(225) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `shipping_postal_code` varchar(225) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `shipping_state` varchar(225) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `shipping_email` varchar(225) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `shipping_phone` varchar(225) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `shipping_fore_name` varchar(225) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `shipping_sur_name` varchar(225) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `transaction_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `shippings`
--

INSERT INTO `shippings` (`id`, `shipping_city`, `shipping_country`, `shipping_address`, `shipping_postal_code`, `shipping_state`, `shipping_email`, `shipping_phone`, `shipping_fore_name`, `shipping_sur_name`, `transaction_id`, `created_at`, `updated_at`) VALUES
(7, 'Whitehouse', 'US', NULL, '75791', 'TX', 'kyli@suddenlink.net', '9033165988', 'Kyli', 'Nail', 12, '2021-10-07 21:36:43', NULL),
(8, 'Falls Chruch', 'US', NULL, '22043', 'VA', 'roberts240@hotmail.com', '5712157433', 'Elizabeth', 'R Roberts', 13, '2021-10-07 22:23:11', NULL),
(9, 'Falls Chruch', 'US', NULL, '22043', 'VA', 'roberts240@hotmail.com', '5712157433', 'Elizabeth', 'R Roberts', 14, '2021-10-07 23:12:22', NULL),
(10, 'Charleston', 'US', NULL, '29414', 'SC', 'Lizawrites@yahoo.com', '9372198578', 'Liza', 'Martin', 15, '2021-10-07 23:12:25', NULL),
(11, 'Newtown', 'US', NULL, '18940', 'PA', 'Jessegirl_ca@hotmail.com', '6198690045', 'Jessica', 'Burgess', 16, '2021-10-08 01:16:49', NULL),
(12, 'San Mateo', 'US', NULL, '94403', 'CA', 'Eamlynne@icloud.com', '6507661118', 'Darrah', 'Coddington', 17, '2021-10-08 03:00:20', NULL),
(13, 'Walla', 'US', NULL, '99362', 'WA', 'bgreene@columbiarea.coop', '5096290237', 'Robert', 'C Greene', 18, '2021-10-08 03:24:01', NULL),
(14, 'Bradford', 'GB', NULL, 'BD18 4SB', 'West Yorkshire', 'Juliebaldwin1970@live.co.uk', '07870606408', 'Julie', 'Baldwin', 19, '2021-10-08 03:42:28', NULL),
(15, 'Liverpool', 'GB', NULL, 'L17 5BL', 'England', 'J.sloan251@btinternet.com', '07485172423', 'Jayne', 'E Sloan', 20, '2021-10-08 16:38:10', NULL),
(16, 'Naples', 'US', NULL, '34108', 'FL', 'Brismi0808@gmail.com', '2392739897', 'Brian', 'Michael Smith', 21, '2021-10-08 22:37:47', NULL),
(17, 'midland', 'US', NULL, '79703', 'TX', 'dajugl@yahoo.com', '4322625931', 'dale', 'kershner', 22, '2021-10-08 23:14:11', NULL),
(18, 'SANDOWN', 'GB', NULL, 'PO369FH', 'ISLE OF WIGHT', 'Lindsaylou1302@hotmail.co.uk', '07779686170', 'Lindsay', 'C Allen', 23, '2021-10-08 23:21:36', NULL),
(19, 'Opelika', 'US', NULL, '36801', 'AL', 'Bamagarcia@gmail.com', '3347032893', 'jason', 'Justice', 24, '2021-10-09 00:12:11', NULL),
(20, 'Maxwell', 'US', NULL, '95955', 'Ca', 'Half100jones@hotmail.com', '5306353698', 'Gary', 'Jones', 25, '2021-10-09 01:43:39', NULL),
(21, 'Porthleven', 'GB', NULL, 'TR139HQ', 'Cornwall', 'georgiegillam@gmail.com', '447779233831', 'Georgia', 'Gillam', 26, '2021-10-09 02:51:15', NULL),
(22, 'Dover', 'US', NULL, '17315', 'PA', 'Bretaddlesberger@gmail.com', '7173240678', 'Bret', 'Addlesberger', 27, '2021-10-09 05:33:57', NULL),
(23, 'Spokane', 'US', NULL, '99201', 'WA', 'brantstevens@yahoo.com', '5097100085', 'Brant', 'L Stevens', 28, '2021-10-09 06:39:33', NULL),
(24, 'Pittsburgh', 'US', NULL, '15205', 'PA', 'Ecolley817@aol.com', '8148072671', 'Ellen', 'Janocha', 29, '2021-10-09 21:44:53', NULL),
(25, 'Spring hill', 'US', NULL, '37174', 'TN', 'Emily.tnrn@yahoo.com', '6153979941', 'Emily', 'Dickson', 30, '2021-10-09 23:29:32', NULL),
(26, 'Mccormick', 'US', NULL, '29835', 'Sc', 'Dan.drabik@aol.com', '3033251051', 'Dan', 'Drabik', 31, '2021-10-10 00:18:18', NULL),
(27, 'Fresno', 'US', NULL, '77545', 'TX', 'Babygirl-4@sbcglobal.net', '8324836881', 'Toni', 'T Newsome', 32, '2021-10-11 19:34:52', NULL),
(28, 'Lima', 'US', NULL, '45805', 'OH', 'jonmtrent@yahoo.com', '9374798710', 'Jon', 'Trent', 33, '2021-10-11 20:21:35', NULL),
(29, 'Chalfont', 'US', NULL, '18914', 'PA', 'deanie0120@aol.com', '2155343888', 'Denise', 'Christensen', 34, '2021-10-11 21:56:28', NULL),
(30, 'Roswell', 'US', NULL, '30076', 'GA', 'deezannote55@gmail.com', '5026441585', 'Mary', 'Van Note', 35, '2021-10-15 20:50:30', NULL),
(31, 'RWP', 'PK', NULL, '54000', 'Punjab', 'abc@abc.com', '033333333', 'Abc', 'Abc', 36, '2021-11-02 23:30:48', NULL),
(32, 'RWP', 'PK', NULL, '54000', 'Punjab', 'abc@abc.com', '33333333', 'Abc', 'Abc', 37, '2021-11-02 23:53:35', NULL),
(33, 'RWP', 'PK', NULL, '54000', 'Punjab', 'abc@abc.com', '033333333', 'Abc', 'Abc', 38, '2021-11-03 22:43:02', NULL),
(34, 'Little Rock', 'US', NULL, '72212', 'AR', 'abc@abc.com', '5017251888', 'Barry', 'Durham', 39, '2021-11-04 19:07:56', NULL),
(35, 'Buckeye', 'US', NULL, '85396', 'AR', 'abc@abc.com', '4803716540', 'Isabel', 'Salazar', 40, '2021-11-04 19:44:59', NULL),
(36, 'Seaham', 'GB', NULL, 'SR78DF', 'Co Durham', 'abc@abc.com', '07837052156', 'Pam', 'Pritchard', 41, '2021-11-04 20:14:52', NULL),
(37, 'Nashville', 'US', NULL, '37214', 'TN', 'abc@abc.com', '6153325163', 'Patricia', 'D Smith', 42, '2021-11-04 21:21:45', NULL),
(38, 'london', 'GB', NULL, 'E1 6HR', 'London', 'abc@abc.com', '07917668270', 'keirion', 'carroll', 43, '2021-11-05 04:22:19', NULL),
(39, 'West windsor', 'US', NULL, '08550', 'Nj', 'abc@abc.com', '6099778304', 'Michael', 'Palmer', 44, '2021-11-05 06:14:18', NULL),
(40, 'HUNTSVILLE', 'US', NULL, '35803', 'Al', 'abc@abc.com', '2566515293', 'Thomas', 'REINHART', 45, '2021-11-05 09:11:16', NULL),
(41, 'Huntinton', 'US', NULL, '16652', 'PA', 'abc@abc.com', '8146432601', 'Robert', 'J Seyko', 46, '2021-11-05 23:54:15', NULL),
(42, 'Glasgow', 'GB', NULL, 'G120tn', 'Scotland', 'abc@abc.com', '447714030733', 'Jeff', 'Reid', 47, '2021-11-06 00:41:58', NULL),
(43, 'Sutton', 'US', NULL, '01590', 'MA', 'abc@abc.com', '5083537456', 'Melissa', 'Szczurko', 48, '2021-11-06 00:51:30', NULL),
(44, 'Huntinton', 'US', NULL, '16652', 'PA', 'abc@abc.com', '8146432601', 'Robert', 'J Seyko', 49, '2021-11-06 01:04:20', NULL),
(45, 'East Patchogue', 'US', NULL, '11772', 'NY', 'abc@abc.com', '6314123615', 'scott', 'stocker', 50, '2021-11-06 01:37:58', NULL),
(46, 'Wilmington', 'US', NULL, '28409', 'NC', 'abc@abc.com', '9106179114', 'Bambi', 'Rivenbark', 51, '2021-11-06 05:48:46', NULL),
(47, 'Baldwinsville', 'US', NULL, '13027', 'NY', 'abc@abc.com', '3152632377', 'James', 'Rawson', 52, '2021-11-06 06:12:30', NULL),
(48, 'LONDON', 'GB', NULL, 'W11 4NW', 'LONDON', 'abc@abc.com', '07767345496', 'LEONIE', 'FALLSTROM', 53, '2021-11-06 07:00:28', NULL),
(49, 'Hudson', 'US', NULL, '34667', 'FL', 'abc@abc.com', '5166448975', 'Anthony', 'Giglio', 54, '2021-11-06 07:05:49', NULL),
(50, 'Corpus Christi', 'US', NULL, '78412', 'TX', 'abc@abc.com', '3078710773', 'Thomas', 'Biederman', 55, '2021-11-06 08:34:00', NULL),
(51, 'windsor', 'US', NULL, '95492', 'CA', 'abc@abc.com', '7078365205', 'theodore', 'C capellos', 56, '2021-11-07 00:00:29', NULL),
(52, 'YARDLEY', 'US', NULL, '19067', 'PA', 'abc@abc.com', '2672294212', 'daniel', 'gramigna', 57, '2021-11-07 00:00:48', NULL),
(53, 'Connersville', 'US', NULL, '47331', 'IN', 'abc@abc.com', '7655413457', 'Bradley', 'Wilmore', 58, '2021-11-07 00:36:31', NULL),
(54, 'east patchogue', 'US', NULL, '11772', 'NY', 'abc@abc.com', '6314123615', 'scott', 'stocker', 59, '2021-11-07 00:39:47', NULL),
(55, 'Pittsburgh', 'US', NULL, '15237', 'PA', 'abc@abc.com', '4128557301', 'Fredrick', 'O Kendrick', 60, '2021-11-07 01:07:28', NULL),
(56, 'warren', 'US', NULL, '44485', 'OH', 'abc@abc.com', '3306467540', 'Margaret', 'E Criss', 61, '2021-11-07 02:27:27', NULL),
(57, 'Ratho', 'GB', NULL, 'Eh28 8pb', 'Edinburgh', 'abc@abc.com', '07713908238', 'Keo', 'Kidd', 62, '2021-11-07 02:34:39', NULL),
(58, 'Stone mountain', 'US', NULL, '30083', 'GA', 'abc@abc.com', '4702599345', 'Maria', 'R Walker', 63, '2021-11-07 06:41:08', NULL),
(59, 'floydada', 'US', NULL, '79235', 'TX', 'abc@abc.com', '8067812847', 'Karen', 'A Farris', 64, '2021-11-07 08:26:09', NULL),
(60, 'Fountain', 'US', NULL, '80817', 'CO', 'abc@abc.com', '5106979365', 'Tanya', 'Van der Stock', 65, '2021-11-07 10:29:26', NULL),
(61, 'Corpus Christi', 'US', NULL, '78412', 'TX', 'abc@abc.com', '3078710773', 'Thomas', 'Biederman', 66, '2021-11-08 22:09:52', NULL),
(62, 'Parkville', 'US', NULL, '21234', 'MD', 'abc@abc.com', '4438048550', 'Fredrick', 'Riefner III', 67, '2021-11-08 23:18:26', NULL),
(63, 'Cedartown', 'US', NULL, '30125', 'GA', 'abc@abc.com', '7702891483', 'Carol', 'Jones', 68, '2021-11-09 00:45:36', NULL),
(64, 'HUNTSVILLE', 'US', NULL, '35803', 'Al', 'abc@abc.com', '2566515293', 'Thomas', 'REINHART', 69, '2021-11-09 02:13:54', NULL),
(65, 'indian rock beach', 'US', NULL, '33785', 'FL', 'abc@abc.com', '7272371807', 'Irene', 'c Escalera', 70, '2021-11-09 03:18:42', NULL),
(66, 'Pittsburgh', 'US', NULL, '15237', 'PA', 'abc@abc.com', '4128557301', 'Fredrick', 'O Kendrick', 71, '2021-11-09 04:12:01', NULL),
(67, 'Staten island', 'US', NULL, '10306', 'NY', 'abc@abc.com', '9175386154', 'James', 'Schermerhorn', 72, '2021-11-09 04:44:15', NULL),
(68, 'Scottsdale', 'US', NULL, '85260', 'AZ', 'Hfeldhacker@yahoo.com', '6025580594', 'Heather', 'Feldhacker', 73, '2021-11-09 06:00:09', NULL),
(69, 'Coogee', 'AU', NULL, '2034', 'NSW', 'kel_lawrie@bigpond.com', '0413831810', 'Kelvin', 'B Lawrie', 74, '2021-11-09 06:19:22', NULL),
(70, 'West windsor', 'US', NULL, '08550', 'Nj', 'Rehabmd83@gmail.com', '6099778304', 'Michael', 'Palmer', 75, '2021-11-09 08:17:04', NULL),
(71, 'London', 'GB', NULL, 'Nw32xb', 'England', 'Molliegrosberg@hotmail.com', '07790836261', 'Mollie', 'Grosberg', 76, '2021-11-09 09:16:10', NULL),
(72, 'Newhall', 'US', NULL, '91321', 'Ca', 'Tmiller5281@yahoo.com', '6617132581', 'Travis', 'T Miller', 77, '2021-11-09 09:18:25', NULL),
(73, 'Suisun City', 'US', NULL, '94585', 'CA', 'Susanm24@sbcglobal.net', '7076883089', 'Susan', 'Miesner', 78, '2021-11-09 15:19:44', NULL),
(74, 'dartmouth', 'US', NULL, '02747', 'MA', 'calvin71902@yahoo.com', '5089658310', 'christine', 'oliveira', 79, '2021-11-09 23:27:46', NULL),
(75, 'TULSA', 'US', NULL, '74105', 'OK', 'marion@kjrh.com', '9185953512', 'scott', 'marion', 80, '2021-11-10 00:16:49', NULL),
(76, 'Norwalk', 'US', NULL, '06850', 'CT', 'jrizzo7951@aol.com', '2038567395', 'Jennifer', 'Rizzo', 81, '2021-11-10 00:36:03', NULL),
(77, 'Pembroke Pnes', 'US', NULL, '33029', 'FL', 'steserver@gmail.com', '3056086826', 'Steven', 'A Server', 82, '2021-11-10 01:39:17', NULL),
(78, 'Cold Ash', 'GB', NULL, 'RG18 9LD', 'Berkshire', 'karlwhelpdale@gmail.com', '447506663688', 'Karl', 'Whelpdale', 83, '2021-11-10 02:12:35', NULL),
(79, 'Holmbury St Mary', 'GB', NULL, 'RH5 6PG', 'Surrey', 'paulbenedict46@yahoo.com', '01306730304', 'Paul', 'Benedict', 84, '2021-11-10 03:42:45', NULL),
(80, 'New York', 'US', NULL, '10012', 'New York', 'Meriamal-rashid@eversheds-sutherland.com', '9493789133', 'Meriam', 'Alrashid', 85, '2021-11-10 04:19:11', NULL),
(81, 'Rye', 'US', NULL, '10580', 'NY', 'brianwstack@yahoo.com', '9142915240', 'brian', 'Stack', 86, '2021-11-10 04:28:42', NULL),
(82, 'Reynoldsburg', 'US', NULL, '43068', 'OH', 'ericromweber@wowway.com', '6145519363', 'Eric', 'Romweber', 87, '2021-11-10 05:15:44', NULL),
(83, 'Cartersville', 'US', NULL, '30120', 'GA', 'Angeliaedwards@comcast.net', '7703243417', 'Angela', 'Edwards', 88, '2021-11-10 05:50:43', NULL),
(84, 'Hampton', 'US', NULL, '23669', 'VA', 'tomthomason1@hotmail.com', '7578761500', 'Emory', 'J Thomason', 89, '2021-11-10 06:37:04', NULL),
(85, 'Henderson', 'US', NULL, '89014', 'NV', 'pcurtiscrete@aol.com', '7027710018', 'Paul', 'C Singletleton', 90, '2021-11-10 06:38:02', NULL),
(86, 'MIDVALE', 'US', NULL, '84047', 'UT', 'Thomas.Dolan12@comcast.net', '8014400453', 'Thomas', 'Dolan', 91, '2021-11-10 07:52:22', NULL),
(87, 'Hyde Park', 'US', NULL, '02136', 'MA', 'michael_horner@comcast.net', '6179010557', 'Michael', 'R Horner', 92, '2021-11-10 08:20:38', NULL),
(88, 'Monroe', 'US', NULL, '06468', 'CT', 'mnk.pinto.ogando@gmail.com', '2037676764', 'Missy', 'Ogando', 93, '2021-11-10 08:21:49', NULL),
(89, 'Kapaa', 'US', NULL, '96746', 'HI', 'Ilikelehua@yahoo.com', '8088223484', 'Lehua', 'Fernandes Salling', 94, '2021-11-10 08:48:44', NULL),
(90, 'Bradford', 'GB', NULL, 'BD18 4SB', 'West Yorkshire', 'Juliebaldwin1970@live.co.uk', '07870606408', 'Julie', 'Baldwin', 95, '2021-11-10 08:58:01', NULL),
(91, 'millstone township', 'US', NULL, '08535', 'nj', 'theohbananas@yahoo.com', '7329916249', 'Richard', 'Meyer', 96, '2021-11-10 09:20:13', NULL),
(92, 'TULSA', 'US', NULL, '74105', 'OK', 'marion@kjrh.com', '9185953512', 'scott', 'marion', 97, '2021-11-10 22:09:13', NULL),
(93, 'Naples', 'US', NULL, '34108', 'FL', 'Brismi0808@gmail.com', '2392739897', 'Brian', 'Michael Smith', 98, '2021-11-11 00:19:32', NULL),
(94, 'woolwich', 'US', NULL, '08085', 'nj', 'oregon91704@aol.com', '6094325773', 'julie', 'tripoli', 99, '2021-11-11 02:08:54', NULL),
(95, 'Naples', 'US', NULL, '34103', 'FL', 'jao34103@hotmail.com', '2394502865', 'James', 'A Oleary', 100, '2021-11-11 02:20:34', NULL),
(96, 'Bremond', 'US', NULL, '76629', 'TX', 'Dengro66@yaho.com', '2547166192', 'Dennis', 'Groholski', 101, '2021-11-11 03:14:42', NULL),
(97, 'south hill park', 'GB', NULL, 'NW32SL', 'England', 'Fionalafferty@blueyonder.co.uk', '07802447856', 'fiona', 'lafferty', 102, '2021-11-11 03:43:22', NULL),
(98, 'Tempe', 'US', NULL, '85282', 'AZ', 'georgemccullough385@gmail.com', '4806840263', 'George', 'Mccullough', 103, '2021-11-11 03:54:47', NULL),
(99, 'Vinemont', 'US', NULL, '35179', 'Al', 'Kvance98@aol.com', '2563391739', 'Karen', 'y Vance', 104, '2021-11-11 05:56:41', NULL),
(100, 'Spokane', 'US', NULL, '99207', 'WA', 'chillsrun3@comcast.net', '5095996102', 'Catherine', 'Hills', 105, '2021-11-11 06:45:54', NULL),
(101, 'Roseville', 'US', NULL, '95661', 'CA', 'Sitarfchrista@gmail.com', '9162200277', 'Christa', 'Pifer', 106, '2021-11-11 07:29:42', NULL),
(102, 'Pittsburgh', 'US', NULL, '15237', 'PA', 'kendrickphd@yahoo.com', '4128557301', 'Fredrick O', 'Kendrick', 107, '2021-11-11 07:45:31', NULL),
(103, 'Lehi', 'US', NULL, '84043', 'UT', 'Firstforrest@gmail.com', '3106899794', 'Kenneth', 'Forrest', 108, '2021-11-11 08:59:15', NULL),
(104, 'Scottsdale', 'US', NULL, '85258', 'Ar', 'Crestasouthwest@outlook.com', '6027990265', 'Todd', 'E Moseson', 109, '2021-11-11 22:59:30', NULL),
(105, 'O Fallon', 'US', NULL, '63368', 'MO', 'ou812.barf@gmail.com', '6366333929', 'Richard', 'Hamlton', 110, '2021-11-11 23:56:43', NULL),
(106, 'Huffman', 'US', NULL, '77336', 'TX', 'coachabshire11@yahoo.com', '7138596780', 'Kevin', 'S Abshire', 111, '2021-11-12 04:49:22', NULL),
(107, 'San antonio', 'US', NULL, '78215', 'TX', 'katiehaugland@hotmail.com', '9032405870', 'Katie', 'R Bowen', 112, '2021-11-12 04:58:49', NULL),
(108, 'Pasadena', 'US', NULL, '91104', 'CA', 'Pilar.m.oliva@gmail.com', '6263944704', 'Pilar', 'Oliva', 113, '2021-11-12 05:18:20', NULL),
(109, 'Cold lake', 'CA', NULL, 'T9m 0c4', 'AL', 'Smith.merissa@hotmail.com', '7808080121', 'Merissa', 'Smith', 114, '2021-11-12 05:39:40', NULL),
(110, 'bear creek', 'US', NULL, '18702', 'pa', 'steve.rovinski89@gmail.com', '5708812831', 'Steve', 'rovinski', 115, '2021-11-12 05:46:16', NULL),
(111, 'Newtown', 'US', NULL, '18940', 'PA', 'Jessegirl_ca@hotmail.com', '6198690045', 'Jessica', 'Burgess', 116, '2021-11-12 07:32:52', NULL),
(112, 'Naples', 'US', NULL, '34108', 'FL', 'Brismi0808@gmail.com', '2392739897', 'Brian', 'Michael Smith', 117, '2021-11-12 22:07:14', NULL),
(113, 'Glasgow', 'GB', NULL, 'G32 8AQ', 'Glasgow', 'janiem161@yahoo.com', '07833326387', 'Janie', 'M Fox', 118, '2021-11-13 01:49:04', NULL),
(114, 'Fresno', 'US', NULL, '77545', 'TX', 'Babygirl-4@sbcglobal.net', '8324836881', 'La Toya', 'T Newsome', 119, '2021-11-13 01:59:35', NULL),
(115, 'highlands ranch', 'US', NULL, '80126', 'co', 'Johnm19489@aol.com', '3039097722', 'John', 'Morton', 120, '2021-11-13 03:20:37', NULL),
(116, 'Stockton', 'US', NULL, '95219', 'CA', 'Lois.lang@evolvepartnergroup.com', '2096085465', 'Andrew', 'Coleman', 121, '2021-11-13 03:39:56', NULL),
(117, 'highlands ranch', 'US', NULL, '80126', 'co', 'Johnm19489@aol.com', '3039097722', 'John', 'Morton', 122, '2021-11-16 01:56:05', NULL),
(118, 'Columbia', 'US', NULL, '29210', 'SC', 'edboyd5@aol.com', '8035538578', 'Darryl', 'Bennett', 123, '2021-11-20 04:19:36', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `temp_orders`
--

CREATE TABLE `temp_orders` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `item_name` varchar(225) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `item_code` varchar(225) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `item_sku` varchar(225) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `item_quantity` varchar(225) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `item_unit_price` varchar(225) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `item_tax_amount` varchar(225) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `currency` varchar(225) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `total` varchar(225) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `item_shipping_amount` double DEFAULT NULL,
  `invoice_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `temp_orders`
--

INSERT INTO `temp_orders` (`id`, `item_name`, `item_code`, `item_sku`, `item_quantity`, `item_unit_price`, `item_tax_amount`, `currency`, `total`, `item_shipping_amount`, `invoice_id`, `created_at`, `updated_at`) VALUES
(4512, 'test product', '1234', 'sku', '5', '6', '6', NULL, '36', 6, 4365, '2021-12-07 14:29:34', '2021-12-08 00:43:22');

-- --------------------------------------------------------

--
-- Table structure for table `tickets`
--

CREATE TABLE `tickets` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `merchant_id` varchar(225) COLLATE utf8mb4_unicode_ci NOT NULL,
  `transaction_id` bigint(20) UNSIGNED NOT NULL,
  `ticket_type` varchar(225) COLLATE utf8mb4_unicode_ci NOT NULL,
  `message` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `tickets`
--

INSERT INTO `tickets` (`id`, `merchant_id`, `transaction_id`, `ticket_type`, `message`, `status`, `created_at`, `updated_at`) VALUES
(1, 'vmi_ops', 14, 'Manual Settlement', 'Enter your Message', 'processed', '2021-10-08 02:05:19', '2021-10-08 23:53:58');

-- --------------------------------------------------------

--
-- Table structure for table `transactions`
--

CREATE TABLE `transactions` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `order_id` varchar(225) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `trans_status` varchar(225) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` varchar(225) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `invalid_fields` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `merchant_id` varchar(225) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `request_id` varchar(225) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `amount` varchar(225) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `currency` varchar(225) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `payment_method` varchar(225) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `account_sufix` varchar(225) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `auth_code` varchar(225) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `reason_code` varchar(225) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `net` double DEFAULT NULL,
  `net_settle` varchar(225) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `transactions`
--

INSERT INTO `transactions` (`id`, `order_id`, `trans_status`, `status`, `description`, `invalid_fields`, `merchant_id`, `request_id`, `amount`, `currency`, `payment_method`, `account_sufix`, `auth_code`, `reason_code`, `net`, `net_settle`, `user_id`, `created_at`, `updated_at`) VALUES
(8, '80001', 'refund', 'ACCEPT', 'Request was processed successfully.', 'No fields', 'nikxen_vmi', '6335471239476092604230', '148', 'USD', NULL, '3466', '75932P', '100', 148, '148', 3, '2021-10-07 00:05:25', '2021-10-07 00:05:25'),
(9, '80000', 'paid', 'ACCEPT', 'Request was processed successfully.', 'No fields', 'nikxen_vmi', '6335477806536217504040', '430', 'USD', NULL, '9066', '664305', '100', 430, '430', 3, '2021-10-07 00:16:22', '2021-10-07 00:16:22'),
(10, '80002', 'paid', 'ACCEPT', 'Request was processed successfully.', 'No fields', 'nikxen_vmi', '6335481000276912203228', '377', 'USD', NULL, '8354', '012115', '100', 377, '377', 3, '2021-10-07 00:19:51', '2021-10-07 00:21:42'),
(11, '80003', 'pending', 'DECLINE', 'Do not honor', 'No fields', 'nikxen_vmi', '6335533990256070504003', '278', 'USD', NULL, '8829', NULL, '203', 278, '278', 3, '2021-10-07 00:56:48', '2021-10-07 01:50:00'),
(12, '80006', 'pending', 'DECLINE', 'Do not honor', 'No fields', 'nikxen_vmi', '6341817368976795203042', '440', 'USD', NULL, '8414', NULL, '203', 440, '440', 3, '2021-10-07 21:36:43', '2021-10-14 08:22:18'),
(13, '80005', 'pending', 'DECLINE', 'No such issuer', 'No fields', 'nikxen_vmi', '6336291316276897904007', '460', 'USD', NULL, '2009', NULL, '233', 460, '460', 3, '2021-10-07 22:23:11', '2021-10-07 22:52:12'),
(14, '80007', 'paid', 'ACCEPT', 'Decision is REJECT.', 'No fields', 'nikxen_vmi', '6336784237716908204029', '460', 'USD', NULL, '0097', '091697', '100', 460, '460', 3, '2021-10-07 23:12:22', '2021-10-08 23:54:17'),
(15, '80008', 'pending', 'DECLINE', 'Do not honor', 'No fields', 'nikxen_vmi', '6336309278816020404262', '377', 'USD', NULL, '5078', NULL, '203', 377, '377', 3, '2021-10-07 23:12:25', '2021-10-07 23:22:09'),
(16, '80010', 'paid', 'ACCEPT', 'Request was processed successfully.', 'No fields', 'nikxen_vmi', '6336379746806140904037', '520', 'USD', NULL, '7469', '095997', '100', 520, '520', 3, '2021-10-08 01:16:49', '2021-10-08 01:19:36'),
(17, '80011', 'paid', 'ACCEPT', 'Request was processed successfully.', 'No fields', 'nikxen_vmi', '6336440177656062403032', '228', 'USD', NULL, '0664', '01126S', '100', 228, '228', 3, '2021-10-08 03:00:19', '2021-10-08 03:00:19'),
(18, '80012', 'pending', 'DECLINE', 'Not sufficient funds', 'No fields', 'nikxen_vmi', '6339715532846270603263', '730', 'USD', NULL, '4321', NULL, '204', 730, '730', 3, '2021-10-08 03:24:01', '2021-10-11 21:59:15'),
(19, '80013', 'paid', 'ACCEPT', 'Request was processed successfully.', 'No fields', 'nikxen_vmi', '6336468635806533504003', '829', 'USD', NULL, '4018', '035744', '100', 829, '829', 3, '2021-10-08 03:42:28', '2021-10-08 03:47:45'),
(20, '80014', 'paid', 'ACCEPT', 'Request was processed successfully.', 'No fields', 'nikxen_vmi', '6336948588836694304240', '197', 'USD', NULL, '7506', '904971', '100', 197, '197', 3, '2021-10-08 16:38:10', '2021-10-08 17:07:49'),
(21, '80004', 'paid', 'ACCEPT', 'Request was processed successfully.', 'No fields', 'nikxen_vmi', '6337146658616462604225', '497', 'USD', NULL, '1240', '026637', '100', 497, '497', 3, '2021-10-08 22:37:47', '2021-10-08 22:37:47'),
(22, '80016', 'pending', 'DECLINE', 'Do not honor', 'No fields', 'nikxen_vmi', '6338171971836840903038', '238', 'USD', NULL, '4987', NULL, '203', 238, '238', 3, '2021-10-08 23:14:11', '2021-10-10 03:06:38'),
(23, '80017', 'paid', 'ACCEPT', 'Request was processed successfully.', 'No fields', 'nikxen_vmi', '6337209179506970104242', '728', 'USD', NULL, '0019', '055158', '100', 728, '728', 3, '2021-10-08 23:21:36', '2021-10-09 00:21:59'),
(24, '80018', 'paid', 'ACCEPT', 'Request was processed successfully.', 'No fields', 'nikxen_vmi', '6337208403206960604043', '343', 'USD', NULL, '2956', '43148Y', '100', 343, '343', 3, '2021-10-09 00:12:11', '2021-10-09 00:20:42'),
(25, '80020', 'pending', 'DECLINE', 'Payer could not be authenticated.', 'No fields', 'nikxen_vmi', '6337465038426018403262', '450', 'USD', NULL, '4967', NULL, '476', 450, '450', 3, '2021-10-09 01:43:39', '2021-10-09 07:28:25'),
(26, '80022', 'paid', 'ACCEPT', 'Request was processed successfully.', 'No fields', 'nikxen_vmi', '6337298734756449204250', '485', 'USD', NULL, '9015', '030114', '100', 485, '485', 3, '2021-10-09 02:51:15', '2021-10-09 02:51:15'),
(27, '80021', 'balance', 'ACCEPT', 'Request was processed successfully.', 'No fields', 'nikxen_vmi', '6337976702156469004244', '745', 'USD', NULL, '1551', '024111', '100', 745, '745', 3, '2021-10-09 05:33:57', '2021-10-14 05:00:02'),
(28, '80023', 'pending', 'DECLINE', 'Stolen card, pick up (fraud account)', 'No fields', 'nikxen_vmi', '6337464325686013003269', '263', 'USD', NULL, '1748', NULL, '205', 263, '263', 3, '2021-10-09 06:39:33', '2021-10-09 07:27:14'),
(29, '80026', 'balance', 'ACCEPT', 'Request was processed successfully.', 'No fields', 'nikxen_vmi', '6337980381476565304042', '228', 'USD', NULL, '3323', '07126P', '100', 228, '228', 3, '2021-10-09 21:44:53', '2021-10-14 05:00:02'),
(30, '80027', 'balance', 'ACCEPT', 'Request was processed successfully.', 'No fields', 'nikxen_vmi', '6338041709566371704259', '197', 'USD', NULL, '7607', '07832D', '100', 197, '197', 3, '2021-10-09 23:29:32', '2021-10-14 05:00:02'),
(31, '80029', 'pending', 'ERROR', 'Request parameters are invalid or missing', 'card_number', 'nikxen_vmi', NULL, '608', 'USD', NULL, '3976', NULL, '102', 608, '608', 3, '2021-10-10 00:18:18', '2021-10-10 00:18:18'),
(32, '80033', 'balance', 'ACCEPT', 'Request was processed successfully.', 'No fields', 'nikxen_vmi', '6339714755146263703277', '749', 'USD', NULL, '3396', '02684C', '100', 749, '749', 3, '2021-10-11 19:34:52', '2021-10-16 05:00:01'),
(33, '80032', 'pending', 'DECLINE', 'Do not honor', 'No fields', 'nikxen_vmi', '6339656945576361904263', '474', 'USD', NULL, '5420', NULL, '203', 474, '474', 3, '2021-10-11 20:21:35', '2021-10-11 20:21:35'),
(34, '80036', 'pending', 'DECLINE', 'Do not honor', 'No fields', 'nikxen_vmi', '6339752343206081404009', '415', 'USD', NULL, '9377', NULL, '203', 415, '415', 3, '2021-10-11 21:56:28', '2021-10-11 23:00:35'),
(35, '80034', 'pending', 'DECLINE', 'Suspected fraud', 'No fields', 'nikxen_vmi', '6343130292536062404238', '828', 'USD', NULL, '2766', NULL, '203', 828, '828', 3, '2021-10-15 20:50:30', '2021-10-15 20:50:30'),
(36, '80037', 'paid', 'ACCEPT', NULL, NULL, 'nikxen_vmi', '6358816870536853604250', '1', 'USD', NULL, '4833', '534343', '100', 0.88, '0.88', 3, '2021-11-02 23:30:48', '2021-11-02 23:34:50'),
(37, '80038', 'paid', 'ACCEPT', NULL, NULL, 'nikxen_vmi', '6358829011516174104025', '1', 'USD', NULL, '4833', '546731', '100', 0.88, '0.88', 3, '2021-11-02 23:53:35', '2021-11-02 23:55:04'),
(38, '80039', 'paid', 'ACCEPT', NULL, NULL, 'nikxen_vmi', '6359652938846362103008', '1', 'USD', NULL, '4833', '081423', '100', 0.88, '0.88', 3, '2021-11-03 22:43:02', '2021-11-03 22:48:17'),
(39, '80041', 'paid', 'ACCEPT', NULL, NULL, 'nikxen_vmi', '6360387058516311204226', '200', 'USD', NULL, '6717', '2IFBGH', '100', 176, '176', 3, '2021-11-04 19:07:56', '2021-11-04 19:11:48'),
(40, '80042', 'paid', 'ACCEPT', NULL, NULL, 'nikxen_vmi', '6363582634696029603027', '197', 'USD', NULL, '3854', '08652P', '100', 173.36, '173.36', 3, '2021-11-04 19:44:59', '2021-11-04 20:01:06'),
(41, '80045', 'paid', 'ACCEPT', NULL, NULL, 'nikxen_vmi', '6360468447076768604226', '378', 'USD', NULL, '1465', 'T62879', '100', 332.64, '332.64', 3, '2021-11-04 20:14:52', '2021-11-04 21:27:27'),
(42, '80046', 'paid', 'ACCEPT', NULL, NULL, 'nikxen_vmi', '6360468875506144804003', '358', 'USD', NULL, '5439', '04251D', '100', 315.04, '315.04', 3, '2021-11-04 21:21:45', '2021-11-04 21:28:09'),
(43, '80048', 'paid', 'ACCEPT', NULL, NULL, 'nikxen_vmi', '6360538319366429104037', '279', 'USD', NULL, '2781', '004252', '100', 245.52, '245.52', 3, '2021-11-05 04:22:19', '2021-11-05 04:23:53'),
(44, '80049', 'paid', 'ACCEPT', NULL, NULL, 'nikxen_vmi', '6360612651256898404238', '828', 'USD', NULL, '3108', '26355C', '100', 728.64, '728.64', 3, '2021-11-05 06:14:18', '2021-11-05 06:27:47'),
(45, '80043', 'paid', 'ACCEPT', NULL, NULL, 'nikxen_vmi', '6363582795926029503025', '828', 'USD', NULL, '1275', '03261Z', '100', 728.64, '728.64', 3, '2021-11-05 09:11:16', '2021-11-07 09:49:08'),
(46, '80053', 'DECLINE', 'DECLINE', NULL, NULL, 'nikxen_vmi', '6361241477106353304005', '738', 'USD', NULL, '6643', NULL, '203', 649.44, '649.44', 3, '2021-11-05 23:54:15', '2021-11-05 23:55:49'),
(47, '80054', 'paid', 'ACCEPT', NULL, NULL, 'nikxen_vmi', '6361271782286522904247', '307', 'USD', NULL, '2318', '293582', '100', 270.16, '270.16', 3, '2021-11-06 00:41:58', '2021-11-06 00:46:20'),
(48, '80055', 'paid', 'ACCEPT', NULL, NULL, 'nikxen_vmi', '6361300206826691604006', '230', 'USD', NULL, '6347', '422282', '100', 202.4, '202.4', 3, '2021-11-06 00:51:30', '2021-11-06 01:33:43'),
(49, '80056', 'paid', 'ACCEPT', NULL, NULL, 'nikxen_vmi', '6364809963656253904249', '738', 'USD', NULL, '6643', '040285', '100', 649.44, '649.44', 3, '2021-11-06 01:04:20', '2021-11-10 04:03:18'),
(50, '80059', 'ERROR', 'ERROR', NULL, NULL, 'nikxen_vmi', '6361350981486994004267', '249', 'USD', NULL, '9300', NULL, '150', 219.12, '219.12', 3, '2021-11-06 01:37:58', '2021-11-06 02:58:19'),
(51, '80066', 'paid', 'ACCEPT', NULL, NULL, 'nikxen_vmi', '6361532486506854004246', '480', 'USD', NULL, '5330', '417490', '100', 422.4, '422.4', 3, '2021-11-06 05:48:46', '2021-11-06 08:00:50'),
(52, '80068', 'paid', 'ACCEPT', NULL, NULL, 'nikxen_vmi', '6363725175326633904037', '248', 'USD', NULL, '2762', '05415B', '100', 218.24, '218.24', 3, '2021-11-06 06:12:30', '2021-11-12 03:26:26'),
(53, '80069', 'paid', 'ACCEPT', NULL, NULL, 'nikxen_vmi', '6364778794546702304228', '239', 'USD', NULL, '8008', '011205', '100', 210.32, '210.32', 3, '2021-11-06 07:00:28', '2021-11-10 03:11:21'),
(54, '80070', 'paid', 'ACCEPT', NULL, NULL, 'nikxen_vmi', '6361502053586769904242', '600', 'USD', NULL, '7865', '01050Z', '100', 528, '528', 3, '2021-11-06 07:05:49', '2021-11-06 07:10:08'),
(55, '80072', 'paid', 'ACCEPT', NULL, NULL, 'nikxen_vmi', '6363725587486730804234', '468', 'USD', NULL, '4556', '57358Z', '100', 411.84, '411.84', 3, '2021-11-06 08:34:00', '2021-11-12 03:24:34'),
(56, '80073', 'paid', 'ACCEPT', NULL, NULL, 'nikxen_vmi', '6362111031816866603250', '829', 'USD', NULL, '1685', '05115D', '100', 729.52, '729.52', 3, '2021-11-07 00:00:29', '2021-11-07 00:05:04'),
(57, '80040', NULL, NULL, NULL, NULL, 'nikxen_vmi', NULL, '350', 'USD', NULL, NULL, NULL, NULL, NULL, NULL, 3, '2021-11-07 00:00:48', NULL),
(58, '80076', 'paid', 'ACCEPT', NULL, NULL, 'nikxen_vmi', '6362131270866741804254', '629', 'USD', NULL, '2850', '599002', '100', 553.52, '553.52', 3, '2021-11-07 00:36:31', '2021-11-07 00:38:49'),
(59, '80074', 'DECLINE', 'DECLINE', NULL, NULL, 'nikxen_vmi', '6364830856256619204025', '249', 'USD', NULL, '9300', '009515', '481', 219.12, '219.12', 3, '2021-11-07 00:39:47', '2021-11-10 04:38:07'),
(60, '80071', NULL, NULL, NULL, NULL, 'nikxen_vmi', NULL, '519', 'USD', NULL, NULL, NULL, NULL, NULL, NULL, 3, '2021-11-07 01:07:28', NULL),
(61, '80077', 'DECLINE', 'DECLINE', NULL, NULL, 'nikxen_vmi', '6362230135396294104010', '209', 'USD', NULL, '7497', NULL, '203', 183.92, '183.92', 3, '2021-11-07 02:27:27', '2021-11-07 03:23:35'),
(62, '80079', 'paid', 'ACCEPT', NULL, NULL, 'nikxen_vmi', '6362201348326119704260', '248', 'USD', NULL, '8654', 'T78928', '100', 218.24, '218.24', 3, '2021-11-07 02:34:39', '2021-11-07 02:35:37'),
(63, '80080', 'DECLINE', 'DECLINE', NULL, NULL, 'nikxen_vmi', '6362314363626282104226', '197', 'USD', NULL, '4487', NULL, '204', 173.36, '173.36', 3, '2021-11-07 06:41:08', '2021-11-07 06:43:57'),
(64, '80082', 'paid', 'ACCEPT', NULL, NULL, 'nikxen_vmi', '6363726620036772904250', '480', 'USD', NULL, '9772', '04707P', '100', 422.4, '422.4', 3, '2021-11-07 08:26:09', '2021-11-12 03:25:42'),
(65, '80081', 'paid', 'ACCEPT', NULL, NULL, 'nikxen_vmi', '6363837543626700103042', '425', 'USD', NULL, '5489', '090235', '100', 374, '374', 3, '2021-11-07 10:29:26', '2021-11-09 01:02:36'),
(66, '80083', 'DECLINE', 'DECLINE', NULL, NULL, 'nikxen_vmi', '6363915789826314203044', '1037', 'USD', NULL, '9011', '486491', '481', 912.56, '912.56', 3, '2021-11-08 22:09:52', '2021-11-09 03:13:00'),
(67, '80087', 'paid', 'ACCEPT', NULL, NULL, 'nikxen_vmi', '6363777821616026804242', '600', 'USD', NULL, '2248', '08000Z', '100', 528, '528', 3, '2021-11-08 23:18:26', '2021-11-08 23:23:04'),
(68, '80085', 'paid', 'ACCEPT', NULL, NULL, 'nikxen_vmi', '6363829902226322504251', '158', 'USD', NULL, '0698', '19702Z', '100', 139.04, '139.04', 3, '2021-11-09 00:45:36', '2021-11-09 00:49:52'),
(69, '80093', 'DECLINE', 'DECLINE', NULL, NULL, 'nikxen_vmi', '6364114720076834604029', '628', 'USD', NULL, '4871', NULL, '203', 552.64, '552.64', 3, '2021-11-09 02:13:54', '2021-11-09 08:44:33'),
(70, '80096', 'paid', 'ACCEPT', NULL, NULL, 'nikxen_vmi', '6363920998746058904001', '293', 'USD', NULL, '0510', '122717', '100', 257.84, '257.84', 3, '2021-11-09 03:18:42', '2021-11-09 03:21:42'),
(71, '80098', 'DECLINE', 'DECLINE', NULL, NULL, 'nikxen_vmi', '6364188488966055504007', '439', 'USD', NULL, '1349', NULL, '203', 386.32, '386.32', 3, '2021-11-09 04:12:01', '2021-11-09 10:47:30'),
(72, '80051', 'paid', 'ACCEPT', NULL, NULL, 'nikxen_vmi', '6363983504016217204243', '534', 'USD', NULL, '1601', '06539C', '100', 469.92, '469.92', 3, '2021-11-09 04:44:15', '2021-11-09 05:05:52'),
(73, '80101', 'DECLINE', 'DECLINE', NULL, NULL, 'nikxen_vmi', '6364017171276853203235', '720', 'USD', NULL, '0442', NULL, '203', 633.6, '633.6', 3, '2021-11-09 06:00:09', '2021-11-09 06:01:58'),
(74, '80102', 'paid', 'ACCEPT', NULL, NULL, 'nikxen_vmi', '6364034858826555903008', '633', 'USD', NULL, '5135', 'R58186', '100', 557.04, '557.04', 3, '2021-11-09 06:19:22', '2021-11-09 06:31:28'),
(75, '80103', 'paid', 'ACCEPT', NULL, NULL, 'nikxen_vmi', '6364101892356788504046', '490', 'USD', NULL, '3108', '00320C', '100', 431.2, '431.2', 3, '2021-11-09 08:17:04', '2021-11-09 08:23:11'),
(76, '80108', 'paid', 'ACCEPT', NULL, NULL, 'nikxen_vmi', '6364134960046893304262', '209', 'USD', NULL, '5267', '003942', '100', 183.92, '183.92', 3, '2021-11-09 09:16:10', '2021-11-09 09:18:17'),
(77, '80088', 'DECLINE', 'DECLINE', NULL, NULL, 'nikxen_vmi', '6364756270016400403238', '580', 'USD', NULL, '4601', NULL, '203', 510.4, '510.4', 3, '2021-11-09 09:18:25', '2021-11-10 02:33:48'),
(78, '80107', 'DECLINE', 'DECLINE', NULL, NULL, 'nikxen_vmi', '6371292240816980903030', '628', 'USD', NULL, '8848', NULL, '476', 552.64, '552.64', 3, '2021-11-09 15:19:44', '2021-11-17 16:07:04'),
(79, '80110', 'paid', 'ACCEPT', NULL, NULL, 'nikxen_vmi', '6364718542006751104030', '188', 'USD', NULL, '6895', '883231', '100', 165.44, '165.44', 3, '2021-11-09 23:27:46', '2021-11-10 01:30:56'),
(80, '80086', 'DECLINE', 'DECLINE', NULL, NULL, 'nikxen_vmi', '6364678705526976203269', '475', 'USD', NULL, '5431', NULL, '203', 418, '418', 3, '2021-11-10 00:16:49', '2021-11-10 00:24:31'),
(81, '80111', 'DECLINE', 'DECLINE', NULL, NULL, 'nikxen_vmi', '6369034488886740404035', '155', 'USD', NULL, '3682', '182847', '481', 136.4, '136.4', 3, '2021-11-10 00:36:02', '2021-11-15 01:24:10'),
(82, '80112', 'paid', 'ACCEPT', NULL, NULL, 'nikxen_vmi', '6364807413736225404233', '227', 'USD', NULL, '8340', '175690', '100', 199.76, '199.76', 3, '2021-11-10 01:39:17', '2021-11-10 03:59:03'),
(83, '80084', 'paid', 'ACCEPT', NULL, NULL, 'nikxen_vmi', '6364744183366872404041', '197', 'USD', NULL, '6580', '219457', '100', 173.36, '173.36', 3, '2021-11-10 02:12:35', '2021-11-10 02:13:40'),
(84, '80113', 'paid', 'ACCEPT', NULL, NULL, 'nikxen_vmi', '6364798176216068204036', '278', 'USD', NULL, '3910', '001386', '100', 244.64, '244.64', 3, '2021-11-10 03:42:45', '2021-11-10 03:43:40'),
(85, '80100', 'DECLINE', 'DECLINE', NULL, NULL, 'nikxen_vmi', '6364918303986813204238', '880', 'USD', NULL, '1858', NULL, '203', 774.4, '774.4', 3, '2021-11-10 04:19:11', '2021-11-10 07:03:51'),
(86, '80117', 'DECLINE', 'DECLINE', NULL, NULL, 'nikxen_vmi', '6364852600216486304262', '218', 'USD', NULL, '9459', '031421', '481', 191.84, '191.84', 3, '2021-11-10 04:28:42', '2021-11-10 05:14:22'),
(87, '80119', 'paid', 'ACCEPT', NULL, NULL, 'nikxen_vmi', '6364857219166520004269', '378', 'USD', NULL, '0840', '06094C', '100', 332.64, '332.64', 3, '2021-11-10 05:15:44', '2021-11-10 05:22:04'),
(88, '80122', 'ERROR', 'ERROR', NULL, NULL, 'nikxen_vmi', NULL, '639', 'USD', NULL, '3267', NULL, '102', 562.32, '562.32', 3, '2021-11-10 05:50:43', '2021-11-10 05:51:26'),
(89, '80124', 'paid', 'ACCEPT', NULL, NULL, 'nikxen_vmi', '6364917092646835904004', '750', 'USD', NULL, '8771', '04502D', '100', 660, '660', 3, '2021-11-10 06:37:04', '2021-11-10 07:01:51'),
(90, '80123', 'DECLINE', 'DECLINE', NULL, NULL, 'nikxen_vmi', '6364903118746184203240', '278', 'USD', NULL, '2986', '04995B', '481', 244.64, '244.64', 3, '2021-11-10 06:38:02', '2021-11-10 06:38:33'),
(91, '80126', NULL, NULL, NULL, NULL, 'nikxen_vmi', NULL, '679', 'USD', NULL, NULL, NULL, NULL, NULL, NULL, 3, '2021-11-10 07:52:22', NULL),
(92, '80129', 'paid', 'ACCEPT', NULL, NULL, 'nikxen_vmi', '6364996365106250904028', '400', 'USD', NULL, '1857', '86778B', '100', 352, '352', 3, '2021-11-10 08:20:38', '2021-11-10 09:13:58'),
(93, '80125', 'paid', 'ACCEPT', NULL, NULL, 'nikxen_vmi', '6365597642106389204026', '178', 'USD', NULL, '2742', '055610', '100', 156.64, '156.64', 3, '2021-11-10 08:21:49', '2021-11-11 01:56:06'),
(94, '80130', 'DECLINE', 'DECLINE', NULL, NULL, 'nikxen_vmi', '6364981975246515203237', '158', 'USD', NULL, '8990', NULL, '203', 139.04, '139.04', 3, '2021-11-10 08:48:44', '2021-11-10 08:50:24'),
(95, '80131', 'paid', 'ACCEPT', NULL, NULL, 'nikxen_vmi', '6364988077906221104239', '400', 'USD', NULL, '7817', 'T19130', '100', 352, '352', 3, '2021-11-10 08:58:01', '2021-11-10 09:00:09'),
(96, '80132', 'paid', 'ACCEPT', NULL, NULL, 'nikxen_vmi', '6365607905056468203252', '370', 'USD', NULL, '6215', '00622B', '100', 325.6, '325.6', 3, '2021-11-10 09:20:13', '2021-11-11 02:13:12'),
(97, '80133', 'paid', 'ACCEPT', NULL, NULL, 'nikxen_vmi', '6365600371796963503236', '475', 'USD', NULL, '5431', '005111', '100', 418, '418', 3, '2021-11-10 22:09:13', '2021-11-11 02:00:39'),
(98, '80134', 'DECLINE', 'DECLINE', NULL, NULL, 'nikxen_vmi', '6365540012326923904036', '515', 'USD', NULL, '1240', '056789', '481', 453.2, '453.2', 3, '2021-11-11 00:19:32', '2021-11-11 00:20:03'),
(99, '80120', 'paid', 'ACCEPT', NULL, NULL, 'nikxen_vmi', '6365609535326529604267', '190', 'USD', NULL, '4997', '010977', '100', 167.2, '167.2', 3, '2021-11-11 02:08:54', '2021-11-11 02:15:56'),
(100, '80137', 'DECLINE', 'DECLINE', NULL, NULL, 'nikxen_vmi', '6365626467296715704235', '349', 'USD', NULL, '5459', NULL, '203', 307.12, '307.12', 3, '2021-11-11 02:20:34', '2021-11-11 02:44:08'),
(101, '80138', 'paid', 'ACCEPT', NULL, NULL, 'nikxen_vmi', '6365645613496049503265', '197', 'USD', NULL, '3454', '010487', '100', 173.36, '173.36', 3, '2021-11-11 03:14:42', '2021-11-11 03:16:02'),
(102, '80140', 'paid', 'ACCEPT', NULL, NULL, 'nikxen_vmi', '6365672704146068704263', '139', 'USD', NULL, '2323', '033436', '100', 122.32, '122.32', 3, '2021-11-11 03:43:22', '2021-11-11 04:01:12'),
(103, '80109', 'paid', 'ACCEPT', NULL, NULL, 'nikxen_vmi', '6365671959276541603254', '520', 'USD', NULL, '9827', '04265Z', '100', 457.6, '457.6', 3, '2021-11-11 03:54:47', '2021-11-11 03:59:58'),
(104, '80142', NULL, NULL, NULL, NULL, 'nikxen_vmi', NULL, '490', 'USD', NULL, NULL, NULL, NULL, NULL, NULL, 3, '2021-11-11 05:56:41', NULL),
(105, '80145', 'paid', 'ACCEPT', NULL, NULL, 'nikxen_vmi', '6365776230816266103036', '390', 'USD', NULL, '6703', '410135', '100', 343.2, '343.2', 3, '2021-11-11 06:45:54', '2021-11-11 06:53:44'),
(106, '80147', 'paid', 'ACCEPT', NULL, NULL, 'nikxen_vmi', '6365803146266397003048', '800', 'USD', NULL, '8814', '369676', '100', 704, '704', 3, '2021-11-11 07:29:42', '2021-11-11 07:38:36'),
(107, '80148', 'paid', 'ACCEPT', NULL, NULL, 'nikxen_vmi', '6365810537266821704268', '450', 'USD', NULL, '7435', '01640A', '100', 396, '396', 3, '2021-11-11 07:45:31', '2021-11-11 07:50:55'),
(108, '80146', 'ERROR', 'ERROR', NULL, NULL, 'nikxen_vmi', NULL, '750', 'USD', NULL, '4307', NULL, '102', 660, '660', 3, '2021-11-11 08:59:15', '2021-11-11 09:01:19'),
(109, '80139', 'paid', 'ACCEPT', NULL, NULL, 'nikxen_vmi', '6367242160616595703042', '214', 'USD', NULL, '5629', '012194', '100', 188.32, '188.32', 3, '2021-11-11 22:59:30', '2021-11-12 23:36:57'),
(110, '80128', NULL, NULL, NULL, NULL, 'nikxen_vmi', NULL, '209', 'USD', NULL, NULL, NULL, NULL, NULL, NULL, 3, '2021-11-11 23:56:43', NULL),
(111, '80149', 'DECLINE', 'DECLINE', NULL, NULL, 'nikxen_vmi', '6369114161276188104263', '829', 'USD', NULL, '4196', '014483', '481', 729.52, '729.52', 3, '2021-11-12 04:49:22', '2021-11-15 03:36:57'),
(112, '80152', 'DECLINE', 'DECLINE', NULL, NULL, 'nikxen_vmi', '6366600914716819603034', '900', 'USD', NULL, '6660', '07045D', '481', 792, '792', 3, '2021-11-12 04:58:49', '2021-11-12 05:48:13'),
(113, '80155', 'DECLINE', 'DECLINE', NULL, NULL, 'nikxen_vmi', '6366587656726766303239', '253', 'USD', NULL, '5139', '186862', '481', 222.64, '222.64', 3, '2021-11-12 05:18:20', '2021-11-12 05:26:06'),
(114, '80151', 'paid', 'ACCEPT', NULL, NULL, 'nikxen_vmi', '6366626027376944903041', '219', 'USD', NULL, '3420', '00118Z', '100', 192.72, '192.72', 3, '2021-11-12 05:39:40', '2021-11-12 06:30:04'),
(115, '80144', 'DECLINE', 'DECLINE', NULL, NULL, 'nikxen_vmi', '6367193613186903104225', '394', 'USD', NULL, '8873', NULL, '204', 346.72, '346.72', 3, '2021-11-12 05:46:16', '2021-11-12 22:16:02'),
(116, '80153', 'paid', 'ACCEPT', NULL, NULL, 'nikxen_vmi', '6366766071936622704244', '850', 'USD', NULL, '1191', '09847Y', '100', 748, '748', 3, '2021-11-12 07:32:52', '2021-11-12 10:23:29'),
(117, '80157', 'DECLINE', 'DECLINE', NULL, NULL, 'nikxen_vmi', '6367258383886304504010', '999', 'USD', NULL, '1240', '030161', '481', 879.12, '879.12', 3, '2021-11-12 22:07:14', '2021-11-13 00:04:00'),
(118, '80159', 'DECLINE', 'DECLINE', NULL, NULL, 'nikxen_vmi', '6367326991426774604251', '378', 'USD', NULL, '1001', NULL, '203', 332.64, '332.64', 3, '2021-11-13 01:49:04', '2021-11-13 01:58:20'),
(119, '80158', 'paid', 'ACCEPT', NULL, NULL, 'nikxen_vmi', '6367328059606271303274', '668', 'USD', NULL, '3396', '00204C', '100', 587.84, '587.84', 3, '2021-11-13 01:59:35', '2021-11-13 02:00:07'),
(120, '80164', 'ERROR', 'ERROR', NULL, NULL, 'nikxen_vmi', NULL, '700', 'USD', NULL, '6114', NULL, '102', 616, '616', 3, '2021-11-13 03:20:37', '2021-11-13 03:35:03'),
(121, '80162', 'ERROR', 'ERROR', NULL, NULL, 'nikxen_vmi', NULL, '800', 'USD', NULL, '6061', NULL, '102', 704, '704', 3, '2021-11-13 03:39:56', '2021-11-13 03:53:22'),
(122, '80163', NULL, NULL, NULL, NULL, 'nikxen_vmi', NULL, '799', 'USD', NULL, NULL, NULL, NULL, NULL, NULL, 3, '2021-11-16 01:56:05', NULL),
(123, '80058', 'DECLINE', 'DECLINE', NULL, NULL, 'nikxen_vmi', '6373463117006916704229', '248', 'USD', NULL, '3306', NULL, '208', 218.24, '218.24', 3, '2021-11-20 04:19:36', '2021-11-20 04:25:13');

-- --------------------------------------------------------

--
-- Table structure for table `transaction_histories`
--

CREATE TABLE `transaction_histories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `order_id` varchar(225) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_id` int(10) UNSIGNED NOT NULL,
  `transaction_id` bigint(20) UNSIGNED NOT NULL,
  `trans_status` varchar(225) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` varchar(225) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `merchant_id` varchar(225) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `request_id` varchar(225) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `amount` varchar(225) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `currency` varchar(225) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `payment_method` varchar(225) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `account_sufix` varchar(225) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `auth_code` varchar(225) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `reason_code` varchar(225) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `net` double DEFAULT NULL,
  `net_settle` varchar(225) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `transaction_histories`
--

INSERT INTO `transaction_histories` (`id`, `order_id`, `user_id`, `transaction_id`, `trans_status`, `status`, `merchant_id`, `request_id`, `amount`, `currency`, `payment_method`, `account_sufix`, `auth_code`, `reason_code`, `net`, `net_settle`, `created_at`, `updated_at`) VALUES
(7, '80006', 3, 12, 'pending', 'DECLINE', 'nikxen_vmi', '6341817368976795203042', '440', 'USD', NULL, '8414', NULL, '203', 440, '440', '2021-10-07 21:36:43', '2021-10-14 08:22:18'),
(8, '80005', 3, 13, 'pending', 'DECLINE', 'nikxen_vmi', '6336291316276897904007', '460', 'USD', NULL, '2009', NULL, '233', 460, '460', '2021-10-07 22:23:11', '2021-10-07 22:52:12'),
(9, '80007', 3, 14, 'paid', 'ACCEPT', 'nikxen_vmi', '6336784237716908204029', '460', 'USD', NULL, '0097', '091697', '100', 460, '460', '2021-10-07 23:12:22', '2021-10-08 23:54:17'),
(10, '80008', 3, 15, 'pending', 'DECLINE', 'nikxen_vmi', '6336309278816020404262', '377', 'USD', NULL, '5078', NULL, '203', 377, '377', '2021-10-07 23:12:25', '2021-10-07 23:22:09'),
(11, '80010', 3, 16, 'paid', 'ACCEPT', 'nikxen_vmi', '6336379746806140904037', '520', 'USD', NULL, '7469', '095997', '100', 520, '520', '2021-10-08 01:16:49', '2021-10-08 01:19:36'),
(12, '80011', 3, 17, 'paid', 'ACCEPT', 'nikxen_vmi', '6336440177656062403032', '228', 'USD', NULL, '0664', '01126S', '100', 228, '228', '2021-10-08 03:00:19', '2021-10-08 03:00:19'),
(13, '80012', 3, 18, 'pending', 'DECLINE', 'nikxen_vmi', '6339715532846270603263', '730', 'USD', NULL, '4321', NULL, '204', 730, '730', '2021-10-08 03:24:01', '2021-10-11 21:59:15'),
(14, '80013', 3, 19, 'paid', 'ACCEPT', 'nikxen_vmi', '6336468635806533504003', '829', 'USD', NULL, '4018', '035744', '100', 829, '829', '2021-10-08 03:42:28', '2021-10-08 03:47:45'),
(15, '80014', 3, 20, 'paid', 'ACCEPT', 'nikxen_vmi', '6336948588836694304240', '197', 'USD', NULL, '7506', '904971', '100', 197, '197', '2021-10-08 16:38:10', '2021-10-08 17:07:49'),
(16, '80004', 3, 21, 'paid', 'ACCEPT', 'nikxen_vmi', '6337146658616462604225', '497', 'USD', NULL, '1240', '026637', '100', 497, '497', '2021-10-08 22:37:47', '2021-10-08 22:37:47'),
(17, '80016', 3, 22, 'pending', 'DECLINE', 'nikxen_vmi', '6338171971836840903038', '238', 'USD', NULL, '4987', NULL, '203', 238, '238', '2021-10-08 23:14:11', '2021-10-10 03:06:38'),
(18, '80017', 3, 23, 'paid', 'ACCEPT', 'nikxen_vmi', '6337209179506970104242', '728', 'USD', NULL, '0019', '055158', '100', 728, '728', '2021-10-08 23:21:36', '2021-10-09 00:21:59'),
(19, '80018', 3, 24, 'paid', 'ACCEPT', 'nikxen_vmi', '6337208403206960604043', '343', 'USD', NULL, '2956', '43148Y', '100', 343, '343', '2021-10-09 00:12:11', '2021-10-09 00:20:42'),
(20, '80020', 3, 25, 'pending', 'DECLINE', 'nikxen_vmi', '6337465038426018403262', '450', 'USD', NULL, '4967', NULL, '476', 450, '450', '2021-10-09 01:43:39', '2021-10-09 07:28:25'),
(21, '80022', 3, 26, 'paid', 'ACCEPT', 'nikxen_vmi', '6337298734756449204250', '485', 'USD', NULL, '9015', '030114', '100', 485, '485', '2021-10-09 02:51:15', '2021-10-09 02:51:15'),
(22, '80021', 3, 27, 'paid', 'ACCEPT', 'nikxen_vmi', '6337976702156469004244', '745', 'USD', NULL, '1551', '024111', '100', 745, '745', '2021-10-09 05:33:57', '2021-10-09 21:41:12'),
(23, '80023', 3, 28, 'pending', 'DECLINE', 'nikxen_vmi', '6337464325686013003269', '263', 'USD', NULL, '1748', NULL, '205', 263, '263', '2021-10-09 06:39:33', '2021-10-09 07:27:14'),
(24, '80026', 3, 29, 'paid', 'ACCEPT', 'nikxen_vmi', '6337980381476565304042', '228', 'USD', NULL, '3323', '07126P', '100', 228, '228', '2021-10-09 21:44:53', '2021-10-09 21:47:20'),
(25, '80027', 3, 30, 'paid', 'ACCEPT', 'nikxen_vmi', '6338041709566371704259', '197', 'USD', NULL, '7607', '07832D', '100', 197, '197', '2021-10-09 23:29:32', '2021-10-09 23:29:32'),
(26, '80029', 3, 31, 'pending', 'ERROR', 'nikxen_vmi', NULL, '608', 'USD', NULL, '3976', NULL, '102', 608, '608', '2021-10-10 00:18:18', '2021-10-10 00:18:18'),
(27, '80033', 3, 32, 'paid', 'ACCEPT', 'nikxen_vmi', '6339714755146263703277', '749', 'USD', NULL, '3396', '02684C', '100', 749, '749', '2021-10-11 19:34:52', '2021-10-11 21:57:57'),
(28, '80032', 3, 33, 'pending', 'DECLINE', 'nikxen_vmi', '6339656945576361904263', '474', 'USD', NULL, '5420', NULL, '203', 474, '474', '2021-10-11 20:21:35', '2021-10-11 20:21:35'),
(29, '80036', 3, 34, 'pending', 'DECLINE', 'nikxen_vmi', '6339752343206081404009', '415', 'USD', NULL, '9377', NULL, '203', 415, '415', '2021-10-11 21:56:28', '2021-10-11 23:00:35'),
(30, '80021', 3, 27, 'balance', 'ACCEPT', 'nikxen_vmi', '6337976702156469004244', '745', 'USD', NULL, '1551', NULL, '100', 745, '745', '2021-10-14 05:00:02', NULL),
(31, '80026', 3, 29, 'balance', 'ACCEPT', 'nikxen_vmi', '6337980381476565304042', '228', 'USD', NULL, '3323', NULL, '100', 228, '228', '2021-10-14 05:00:02', NULL),
(32, '80027', 3, 30, 'balance', 'ACCEPT', 'nikxen_vmi', '6338041709566371704259', '197', 'USD', NULL, '7607', NULL, '100', 197, '197', '2021-10-14 05:00:02', NULL),
(33, '80034', 3, 35, 'pending', 'DECLINE', 'nikxen_vmi', '6343130292536062404238', '828', 'USD', NULL, '2766', NULL, '203', 828, '828', '2021-10-15 20:50:30', '2021-10-15 20:50:30'),
(34, '80033', 3, 32, 'balance', 'ACCEPT', 'nikxen_vmi', '6339714755146263703277', '749', 'USD', NULL, '3396', NULL, '100', 749, '749', '2021-10-16 05:00:01', NULL),
(35, '80037', 3, 36, 'pending', 'ACCEPT', 'nikxen_vmi', '6358816870536853604250', '1', 'USD', NULL, '4833', NULL, '100', 0.88, '0.88', '2021-11-02 23:33:25', '2021-11-09 04:52:47'),
(36, '80038', 3, 37, 'pending', 'ACCEPT', 'nikxen_vmi', '6358829011516174104025', '1', 'USD', NULL, '4833', NULL, '100', 0.88, '0.88', '2021-11-02 23:53:51', '2021-11-09 04:52:47'),
(37, '80039', 3, 38, 'pending', 'ACCEPT', 'nikxen_vmi', '6359652938846362103008', '1', 'USD', NULL, '4833', NULL, '100', 0.88, '0.88', '2021-11-03 22:46:51', '2021-11-09 04:52:47'),
(38, '80041', 3, 39, 'pending', 'ACCEPT', 'nikxen_vmi', '6360387058516311204226', '200', 'USD', NULL, '6717', NULL, '100', 176, '176', '2021-11-04 19:11:04', '2021-11-09 04:52:47'),
(39, '80042', 3, 40, 'paid', 'ACCEPT', 'nikxen_vmi', '6363582634696029603027', '197', 'USD', NULL, '3854', '08652P', '100', 173.36, '173.36', '2021-11-04 19:58:30', '2021-11-09 04:52:47'),
(40, '80045', 3, 41, 'paid', 'ACCEPT', 'nikxen_vmi', '6360468447076768604226', '378', 'USD', NULL, '1465', NULL, '100', 332.64, '332.64', '2021-11-04 21:24:23', '2021-11-09 04:52:47'),
(41, '80046', 3, 42, 'paid', 'ACCEPT', 'nikxen_vmi', '6360468875506144804003', '358', 'USD', NULL, '5439', NULL, '100', 315.04, '315.04', '2021-11-04 21:27:25', '2021-11-09 04:52:47'),
(42, '80048', 3, 43, 'paid', 'ACCEPT', 'nikxen_vmi', '6360538319366429104037', '279', 'USD', NULL, '2781', NULL, '100', 245.52, '245.52', '2021-11-05 04:22:19', '2021-11-09 04:52:47'),
(43, '80049', 3, 44, 'paid', 'ACCEPT', 'nikxen_vmi', '6360612651256898404238', '828', 'USD', NULL, '3108', NULL, '100', 728.64, '728.64', '2021-11-05 06:25:47', '2021-11-09 04:52:47'),
(44, '80043', 3, 45, 'paid', 'ACCEPT', 'nikxen_vmi', '6363582795926029503025', '828', 'USD', NULL, '1275', '03261Z', '100', NULL, NULL, '2021-11-07 09:45:14', '2021-11-07 09:45:14'),
(45, '80053', 3, 46, NULL, NULL, 'nikxen_vmi', NULL, '738', 'USD', NULL, NULL, NULL, NULL, NULL, NULL, '2021-11-07 09:11:49', '2021-11-07 09:11:49'),
(46, '80054', 3, 47, 'paid', 'ACCEPT', 'nikxen_vmi', '6361271782286522904247', '307', 'USD', NULL, '2318', NULL, '100', 270.16, '270.16', '2021-11-06 00:45:30', '2021-11-09 04:52:47'),
(47, '80055', 3, 48, 'paid', 'ACCEPT', 'nikxen_vmi', '6361300206826691604006', '230', 'USD', NULL, '6347', NULL, '100', 202.4, '202.4', '2021-11-06 01:34:19', '2021-11-09 04:52:47'),
(48, '80056', 3, 49, 'paid', 'ACCEPT', 'nikxen_vmi', '6364809963656253904249', '738', 'USD', NULL, '6643', '040285', '100', NULL, NULL, '2021-11-10 04:02:51', '2021-11-10 04:03:18'),
(49, '80059', 3, 50, NULL, NULL, 'nikxen_vmi', NULL, '249', 'USD', NULL, NULL, NULL, NULL, NULL, NULL, '2021-11-06 02:57:44', '2021-11-06 02:57:44'),
(50, '80066', 3, 51, 'paid', 'ACCEPT', 'nikxen_vmi', '6361532486506854004246', '480', 'USD', NULL, '5330', NULL, '100', 422.4, '422.4', '2021-11-07 00:15:56', '2021-11-09 04:52:47'),
(51, '80068', 3, 52, 'paid', 'ACCEPT', 'nikxen_vmi', '6363725175326633904037', '248', 'USD', NULL, '2762', '05415B', '100', NULL, NULL, '2021-11-06 06:18:59', '2021-11-12 03:26:26'),
(52, '80069', 3, 53, 'paid', 'ACCEPT', 'nikxen_vmi', '6364778794546702304228', '239', 'USD', NULL, '8008', '011205', '100', NULL, NULL, '2021-11-10 03:12:42', '2021-11-10 03:12:42'),
(53, '80070', 3, 54, 'paid', 'ACCEPT', 'nikxen_vmi', '6361502053586769904242', '600', 'USD', NULL, '7865', NULL, '100', 528, '528', '2021-11-06 07:07:37', '2021-11-09 04:52:47'),
(54, '80072', 3, 55, 'paid', 'ACCEPT', 'nikxen_vmi', '6363725587486730804234', '468', 'USD', NULL, '4556', '57358Z', '100', NULL, NULL, '2021-11-06 08:34:00', '2021-11-12 03:24:34'),
(55, '80073', 3, 56, 'paid', 'ACCEPT', 'nikxen_vmi', '6362111031816866603250', '829', 'USD', NULL, '1685', NULL, '100', 729.52, '729.52', '2021-11-07 00:04:38', '2021-11-09 04:52:47'),
(56, '80040', 3, 57, NULL, NULL, 'nikxen_vmi', NULL, '350', 'USD', NULL, NULL, NULL, NULL, NULL, NULL, '2021-11-07 00:00:48', NULL),
(57, '80076', 3, 58, 'paid', 'ACCEPT', 'nikxen_vmi', '6362131270866741804254', '629', 'USD', NULL, '2850', NULL, '100', 553.52, '553.52', '2021-11-07 00:36:31', '2021-11-09 04:52:47'),
(58, '80074', 3, 59, 'DECLINE', 'DECLINE', 'nikxen_vmi', '6364830856256619204025', '249', 'USD', NULL, '9300', '009515', '481', NULL, NULL, '2021-11-10 04:37:55', '2021-11-10 04:38:07'),
(59, '80071', 3, 60, NULL, NULL, 'nikxen_vmi', NULL, '519', 'USD', NULL, NULL, NULL, NULL, NULL, NULL, '2021-11-07 01:07:28', NULL),
(60, '80077', 3, 61, NULL, NULL, 'nikxen_vmi', NULL, '209', 'USD', NULL, NULL, NULL, NULL, NULL, NULL, '2021-11-07 03:22:31', '2021-11-07 03:22:31'),
(61, '80079', 3, 62, 'paid', 'ACCEPT', 'nikxen_vmi', '6362201348326119704260', '248', 'USD', NULL, '8654', NULL, '100', 218.24, '218.24', '2021-11-07 02:34:39', '2021-11-09 04:52:47'),
(62, '80080', 3, 63, NULL, NULL, 'nikxen_vmi', NULL, '197', 'USD', NULL, NULL, NULL, NULL, NULL, NULL, '2021-11-07 06:43:34', '2021-11-07 06:43:34'),
(63, '80082', 3, 64, 'paid', 'ACCEPT', 'nikxen_vmi', '6363726620036772904250', '480', 'USD', NULL, '9772', '04707P', '100', NULL, NULL, '2021-11-07 08:26:09', '2021-11-12 03:25:42'),
(64, '80081', 3, 65, 'paid', 'ACCEPT', 'nikxen_vmi', '6363837543626700103042', '425', 'USD', NULL, '5489', NULL, '100', 374, '374', '2021-11-09 01:01:32', '2021-11-09 04:52:47'),
(65, '80083', 3, 66, NULL, NULL, 'nikxen_vmi', NULL, '1037', 'USD', NULL, NULL, NULL, NULL, NULL, NULL, '2021-11-09 03:11:48', '2021-11-09 03:11:48'),
(66, '80087', 3, 67, 'paid', 'ACCEPT', 'nikxen_vmi', '6363777821616026804242', '600', 'USD', NULL, '2248', NULL, '100', 528, '528', '2021-11-08 23:20:03', '2021-11-09 04:52:47'),
(67, '80085', 3, 68, 'paid', 'ACCEPT', 'nikxen_vmi', '6363829902226322504251', '158', 'USD', NULL, '0698', NULL, '100', 139.04, '139.04', '2021-11-09 00:45:36', '2021-11-09 04:52:47'),
(68, '80093', 3, 69, 'DECLINE', 'DECLINE', 'nikxen_vmi', '6364114720076834604029', '628', 'USD', NULL, '4871', NULL, '203', NULL, NULL, '2021-11-09 08:43:54', '2021-11-09 08:44:33'),
(69, '80096', 3, 70, 'paid', 'ACCEPT', 'nikxen_vmi', '6363920998746058904001', '293', 'USD', NULL, '0510', NULL, '100', 257.84, '257.84', '2021-11-09 03:18:42', '2021-11-09 04:52:47'),
(70, '80098', 3, 71, 'DECLINE', 'DECLINE', 'nikxen_vmi', '6364188488966055504007', '439', 'USD', NULL, '1349', NULL, '203', NULL, NULL, '2021-11-09 10:48:24', '2021-11-09 10:48:24'),
(71, '80051', 3, 72, 'paid', 'ACCEPT', 'nikxen_vmi', '6363983504016217204243', '534', 'USD', NULL, '1601', '06539C', '100', NULL, NULL, '2021-11-09 05:04:46', '2021-11-09 05:05:52'),
(72, '80101', 3, 73, 'DECLINE', 'DECLINE', 'nikxen_vmi', '6364017171276853203235', '720', 'USD', NULL, '0442', NULL, '203', NULL, NULL, '2021-11-09 06:00:09', '2021-11-09 06:01:58'),
(73, '80102', 3, 74, 'paid', 'ACCEPT', 'nikxen_vmi', '6364034858826555903008', '633', 'USD', NULL, '5135', 'R58186', '100', NULL, NULL, '2021-11-09 06:28:06', '2021-11-09 06:31:28'),
(74, '80103', 3, 75, 'paid', 'ACCEPT', 'nikxen_vmi', '6364101892356788504046', '490', 'USD', NULL, '3108', '00320C', '100', NULL, NULL, '2021-11-09 08:21:26', '2021-11-09 08:23:11'),
(75, '80108', 3, 76, 'paid', 'ACCEPT', 'nikxen_vmi', '6364134960046893304262', '209', 'USD', NULL, '5267', '003942', '100', NULL, NULL, '2021-11-09 09:16:10', '2021-11-09 09:18:17'),
(76, '80088', 3, 77, 'DECLINE', 'DECLINE', 'nikxen_vmi', '6364756270016400403238', '580', 'USD', NULL, '4601', NULL, '203', NULL, NULL, '2021-11-10 02:32:56', '2021-11-10 02:33:48'),
(77, '80107', 3, 78, 'DECLINE', 'DECLINE', 'nikxen_vmi', '6371292240816980903030', '628', 'USD', NULL, '8848', NULL, '476', NULL, NULL, '2021-11-18 11:49:26', '2021-11-18 11:49:26'),
(78, '80110', 3, 79, 'paid', 'ACCEPT', 'nikxen_vmi', '6364718542006751104030', '188', 'USD', NULL, '6895', '883231', '100', NULL, NULL, '2021-11-10 01:30:22', '2021-11-10 01:30:56'),
(79, '80086', 3, 80, 'DECLINE', 'DECLINE', 'nikxen_vmi', '6364678705526976203269', '475', 'USD', NULL, '5431', NULL, '203', NULL, NULL, '2021-11-10 00:23:43', '2021-11-10 00:24:31'),
(80, '80111', 3, 81, 'DECLINE', 'DECLINE', 'nikxen_vmi', '6369034488886740404035', '155', 'USD', NULL, '3682', '182847', '481', NULL, NULL, '2021-11-15 01:23:29', '2021-11-15 01:24:10'),
(81, '80112', 3, 82, 'paid', 'ACCEPT', 'nikxen_vmi', '6364807413736225404233', '227', 'USD', NULL, '8340', '175690', '100', NULL, NULL, '2021-11-10 03:57:40', '2021-11-10 03:59:03'),
(82, '80084', 3, 83, 'paid', 'ACCEPT', 'nikxen_vmi', '6364744183366872404041', '197', 'USD', NULL, '6580', '219457', '100', NULL, NULL, '2021-11-10 02:12:35', '2021-11-10 02:13:40'),
(83, '80113', 3, 84, 'paid', 'ACCEPT', 'nikxen_vmi', '6364798176216068204036', '278', 'USD', NULL, '3910', '001386', '100', NULL, NULL, '2021-11-10 03:42:45', '2021-11-10 03:43:40'),
(84, '80100', 3, 85, 'DECLINE', 'DECLINE', 'nikxen_vmi', '6364918303986813204238', '880', 'USD', NULL, '1858', NULL, '203', NULL, NULL, '2021-11-10 07:03:20', '2021-11-10 07:03:51'),
(85, '80117', 3, 86, 'DECLINE', 'DECLINE', 'nikxen_vmi', '6364852600216486304262', '218', 'USD', NULL, '9459', '031421', '481', NULL, NULL, '2021-11-10 05:13:10', '2021-11-10 05:14:22'),
(86, '80119', 3, 87, 'paid', 'ACCEPT', 'nikxen_vmi', '6364857219166520004269', '378', 'USD', NULL, '0840', '06094C', '100', NULL, NULL, '2021-11-10 05:19:48', '2021-11-10 05:22:04'),
(87, '80122', 3, 88, 'ERROR', 'ERROR', 'nikxen_vmi', NULL, '639', 'USD', NULL, '3267', NULL, '102', NULL, NULL, '2021-11-10 05:50:43', '2021-11-10 05:51:26'),
(88, '80124', 3, 89, 'paid', 'ACCEPT', 'nikxen_vmi', '6364917092646835904004', '750', 'USD', NULL, '8771', '04502D', '100', NULL, NULL, '2021-11-10 07:01:26', '2021-11-10 07:01:51'),
(89, '80123', 3, 90, 'DECLINE', 'DECLINE', 'nikxen_vmi', '6364903118746184203240', '278', 'USD', NULL, '2986', '04995B', '481', NULL, NULL, '2021-11-10 06:38:02', '2021-11-10 06:38:33'),
(90, '80126', 3, 91, NULL, NULL, 'nikxen_vmi', NULL, '679', 'USD', NULL, NULL, NULL, NULL, NULL, NULL, '2021-11-10 07:52:22', NULL),
(91, '80129', 3, 92, 'paid', 'ACCEPT', 'nikxen_vmi', '6364996365106250904028', '400', 'USD', NULL, '1857', '86778B', '100', NULL, NULL, '2021-11-10 09:12:15', '2021-11-10 09:13:58'),
(92, '80125', 3, 93, 'paid', 'ACCEPT', 'nikxen_vmi', '6365597642106389204026', '178', 'USD', NULL, '2742', '055610', '100', NULL, NULL, '2021-11-11 01:56:08', '2021-11-11 01:56:08'),
(93, '80130', 3, 94, 'DECLINE', 'DECLINE', 'nikxen_vmi', '6364981975246515203237', '158', 'USD', NULL, '8990', NULL, '203', NULL, NULL, '2021-11-10 08:48:44', '2021-11-10 08:50:24'),
(94, '80131', 3, 95, 'paid', 'ACCEPT', 'nikxen_vmi', '6364988077906221104239', '400', 'USD', NULL, '7817', 'T19130', '100', NULL, NULL, '2021-11-10 08:58:01', '2021-11-10 09:00:09'),
(95, '80132', 3, 96, 'paid', 'ACCEPT', 'nikxen_vmi', '6365607905056468203252', '370', 'USD', NULL, '6215', '00622B', '100', NULL, NULL, '2021-11-11 02:10:34', '2021-11-11 02:13:12'),
(96, '80133', 3, 97, 'paid', 'ACCEPT', 'nikxen_vmi', '6365600371796963503236', '475', 'USD', NULL, '5431', '005111', '100', NULL, NULL, '2021-11-11 01:59:59', '2021-11-11 02:00:39'),
(97, '80134', 3, 98, 'DECLINE', 'DECLINE', 'nikxen_vmi', '6365540012326923904036', '515', 'USD', NULL, '1240', '056789', '481', NULL, NULL, '2021-11-11 00:19:32', '2021-11-11 00:20:03'),
(98, '80120', 3, 99, 'paid', 'ACCEPT', 'nikxen_vmi', '6365609535326529604267', '190', 'USD', NULL, '4997', '010977', '100', NULL, NULL, '2021-11-11 02:08:54', '2021-11-11 02:15:56'),
(99, '80137', 3, 100, 'DECLINE', 'DECLINE', 'nikxen_vmi', '6365626467296715704235', '349', 'USD', NULL, '5459', NULL, '203', NULL, NULL, '2021-11-11 02:42:46', '2021-11-11 02:44:08'),
(100, '80138', 3, 101, 'paid', 'ACCEPT', 'nikxen_vmi', '6365645613496049503265', '197', 'USD', NULL, '3454', '010487', '100', NULL, NULL, '2021-11-11 03:14:42', '2021-11-11 03:16:02'),
(101, '80140', 3, 102, 'paid', 'ACCEPT', 'nikxen_vmi', '6365672704146068704263', '139', 'USD', NULL, '2323', '033436', '100', NULL, NULL, '2021-11-11 04:00:09', '2021-11-11 04:01:12'),
(102, '80109', 3, 103, 'paid', 'ACCEPT', 'nikxen_vmi', '6365671959276541603254', '520', 'USD', NULL, '9827', '04265Z', '100', NULL, NULL, '2021-11-11 03:58:12', '2021-11-11 03:59:58'),
(103, '80142', 3, 104, NULL, NULL, 'nikxen_vmi', NULL, '490', 'USD', NULL, NULL, NULL, NULL, NULL, NULL, '2021-11-11 09:03:04', '2021-11-11 09:03:04'),
(104, '80145', 3, 105, 'paid', 'ACCEPT', 'nikxen_vmi', '6365776230816266103036', '390', 'USD', NULL, '6703', '410135', '100', NULL, NULL, '2021-11-11 06:53:10', '2021-11-11 06:53:44'),
(105, '80147', 3, 106, 'paid', 'ACCEPT', 'nikxen_vmi', '6365803146266397003048', '800', 'USD', NULL, '8814', '369676', '100', NULL, NULL, '2021-11-11 07:37:55', '2021-11-11 07:38:36'),
(106, '80148', 3, 107, 'paid', 'ACCEPT', 'nikxen_vmi', '6365810537266821704268', '450', 'USD', NULL, '7435', '01640A', '100', NULL, NULL, '2021-11-12 04:25:18', '2021-11-12 04:25:18'),
(107, '80146', 3, 108, 'ERROR', 'ERROR', 'nikxen_vmi', NULL, '750', 'USD', NULL, '4307', NULL, '102', NULL, NULL, '2021-11-11 08:59:15', '2021-11-11 09:01:19'),
(108, '80139', 3, 109, 'paid', 'ACCEPT', 'nikxen_vmi', '6367242160616595703042', '214', 'USD', NULL, '5629', '012194', '100', NULL, NULL, '2021-11-12 23:35:47', '2021-11-12 23:36:57'),
(109, '80128', 3, 110, NULL, NULL, 'nikxen_vmi', NULL, '209', 'USD', NULL, NULL, NULL, NULL, NULL, NULL, '2021-11-11 23:56:43', NULL),
(110, '80149', 3, 111, 'DECLINE', 'DECLINE', 'nikxen_vmi', '6369114161276188104263', '829', 'USD', NULL, '4196', '014483', '481', NULL, NULL, '2021-11-15 03:36:17', '2021-11-15 03:36:57'),
(111, '80152', 3, 112, 'DECLINE', 'DECLINE', 'nikxen_vmi', '6366600914716819603034', '900', 'USD', NULL, '6660', '07045D', '481', NULL, NULL, '2021-11-12 05:47:56', '2021-11-12 05:48:13'),
(112, '80155', 3, 113, 'DECLINE', 'DECLINE', 'nikxen_vmi', '6366587656726766303239', '253', 'USD', NULL, '5139', '186862', '481', NULL, NULL, '2021-11-12 05:25:26', '2021-11-12 05:26:06'),
(113, '80151', 3, 114, 'paid', 'ACCEPT', 'nikxen_vmi', '6366626027376944903041', '219', 'USD', NULL, '3420', '00118Z', '100', NULL, NULL, '2021-11-12 06:28:38', '2021-11-12 06:30:04'),
(114, '80144', 3, 115, 'DECLINE', 'DECLINE', 'nikxen_vmi', '6367193613186903104225', '394', 'USD', NULL, '8873', NULL, '204', NULL, NULL, '2021-11-12 22:13:49', '2021-11-12 22:16:02'),
(115, '80153', 3, 116, 'paid', 'ACCEPT', 'nikxen_vmi', '6366766071936622704244', '850', 'USD', NULL, '1191', '09847Y', '100', NULL, NULL, '2021-11-12 10:22:16', '2021-11-12 10:23:29'),
(116, '80157', 3, 117, 'DECLINE', 'DECLINE', 'nikxen_vmi', '6367258383886304504010', '999', 'USD', NULL, '1240', '030161', '481', NULL, NULL, '2021-11-13 00:03:19', '2021-11-13 00:04:00'),
(117, '80159', 3, 118, 'DECLINE', 'DECLINE', 'nikxen_vmi', '6367326991426774604251', '378', 'USD', NULL, '1001', NULL, '203', NULL, NULL, '2021-11-13 01:54:32', '2021-11-13 01:58:20'),
(118, '80158', 3, 119, 'paid', 'ACCEPT', 'nikxen_vmi', '6367328059606271303274', '668', 'USD', NULL, '3396', '00204C', '100', NULL, NULL, '2021-11-13 01:59:35', '2021-11-13 02:00:07'),
(119, '80164', 3, 120, 'ERROR', 'ERROR', 'nikxen_vmi', NULL, '700', 'USD', NULL, '6114', NULL, '102', NULL, NULL, '2021-11-20 00:26:42', '2021-11-20 00:26:42'),
(120, '80162', 3, 121, 'ERROR', 'ERROR', 'nikxen_vmi', NULL, '800', 'USD', NULL, '6061', NULL, '102', NULL, NULL, '2021-11-13 03:52:33', '2021-11-13 03:53:22'),
(121, '80163', 3, 122, NULL, NULL, 'nikxen_vmi', NULL, '799', 'USD', NULL, NULL, NULL, NULL, NULL, NULL, '2021-11-16 01:56:05', NULL),
(122, '80058', 3, 123, 'DECLINE', 'DECLINE', 'nikxen_vmi', '6373463117006916704229', '248', 'USD', NULL, '3306', NULL, '208', NULL, NULL, '2021-11-20 04:23:59', '2021-11-20 04:25:13');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(225) COLLATE utf8mb4_unicode_ci NOT NULL,
  `merchant_id` varchar(225) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(225) COLLATE utf8mb4_unicode_ci NOT NULL,
  `lockout_time` int(11) NOT NULL DEFAULT 0,
  `password` varchar(225) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `user_type` varchar(225) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'merchant',
  `merchant_user_id` bigint(20) UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `merchant_id`, `email`, `lockout_time`, `password`, `remember_token`, `created_at`, `updated_at`, `user_type`, `merchant_user_id`) VALUES
(1, 'Nikxen co', 'superadmin', 'mentropay@gmail.com', 30, '$2y$10$8v8SkVFUMEZw0dLtMPwWMejdd71RtE9hvnl51guMws4z80AWv4R5G', 'rilo6xt1jheK5JF2j8NNWDacUjxfDapmgARa7ACEsQ4PSFSBrxHNy84fhLmJ', '2020-07-17 10:15:57', '2020-07-29 05:07:16', 'superadmin', NULL),
(3, 'Steve Mark', 'nikxen_vmi', 'stevemark365@gmail.com', 0, '$2y$10$vxHDYIEL..GgM3p2GcKzveHiDFUZVvP2Fper.DaZ9JNGw1.WqAC6y', NULL, '2020-07-18 09:19:05', '2021-12-08 00:44:48', 'merchant', NULL),
(5, 'Actuary', 'vmi_ops', 'actuary754@gmail.com', 0, '$2y$10$fKu0nw4WM9NKrkOry4/Jvu3G6idBpQw7RJEhhiGimiQBEPRvErMp6', NULL, '2020-07-18 09:26:20', '2021-09-27 22:47:37', 'admin', 1),
(9, 'admin', NULL, 'marchant@gmail.com', 0, '$2y$10$CdczygB0L/Br/5K3BNcdkeANbOR85Tht4K.wp00CADfku1N7Xx.q2', NULL, '2021-12-08 00:30:00', '2021-12-08 00:30:00', 'merchant', NULL);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `batches`
--
ALTER TABLE `batches`
  ADD PRIMARY KEY (`id`),
  ADD KEY `batches_user_id_foreign` (`user_id`);

--
-- Indexes for table `batch_fees`
--
ALTER TABLE `batch_fees`
  ADD PRIMARY KEY (`id`),
  ADD KEY `batch_fees_batch_id_foreign` (`batch_id`);

--
-- Indexes for table `batch_refunds`
--
ALTER TABLE `batch_refunds`
  ADD PRIMARY KEY (`id`),
  ADD KEY `batch_refunds_batch_id_foreign` (`batch_id`),
  ADD KEY `batch_refunds_transaction_id_foreign` (`transaction_id`);

--
-- Indexes for table `batch_reserves`
--
ALTER TABLE `batch_reserves`
  ADD PRIMARY KEY (`id`),
  ADD KEY `batch_reserves_batch_id_foreign` (`batch_id`),
  ADD KEY `batch_reserves_reserve_id_foreign` (`reserve_id`);

--
-- Indexes for table `batch_transactions`
--
ALTER TABLE `batch_transactions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `batch_transactions_batch_id_foreign` (`batch_id`),
  ADD KEY `batch_transactions_transaction_id_foreign` (`transaction_id`);

--
-- Indexes for table `countries`
--
ALTER TABLE `countries`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `currencies`
--
ALTER TABLE `currencies`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `customers`
--
ALTER TABLE `customers`
  ADD PRIMARY KEY (`id`),
  ADD KEY `customers_transaction_id_foreign` (`transaction_id`);

--
-- Indexes for table `employees`
--
ALTER TABLE `employees`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `invoices`
--
ALTER TABLE `invoices`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `merchants`
--
ALTER TABLE `merchants`
  ADD PRIMARY KEY (`id`),
  ADD KEY `merchants_user_id_foreign` (`user_id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `model_has_permissions`
--
ALTER TABLE `model_has_permissions`
  ADD PRIMARY KEY (`permission_id`,`model_id`,`model_type`),
  ADD KEY `model_has_permissions_model_id_model_type_index` (`model_id`,`model_type`);

--
-- Indexes for table `model_has_roles`
--
ALTER TABLE `model_has_roles`
  ADD PRIMARY KEY (`role_id`,`model_id`,`model_type`),
  ADD KEY `model_has_roles_model_id_model_type_index` (`model_id`,`model_type`);

--
-- Indexes for table `notifications`
--
ALTER TABLE `notifications`
  ADD PRIMARY KEY (`id`),
  ADD KEY `notifications_notifiable_type_notifiable_id_index` (`notifiable_type`,`notifiable_id`);

--
-- Indexes for table `order_details`
--
ALTER TABLE `order_details`
  ADD PRIMARY KEY (`id`),
  ADD KEY `order_details_transaction_id_foreign` (`transaction_id`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indexes for table `permissions`
--
ALTER TABLE `permissions`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `portal_transactions`
--
ALTER TABLE `portal_transactions`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `reserves`
--
ALTER TABLE `reserves`
  ADD PRIMARY KEY (`id`),
  ADD KEY `reserves_transaction_id_foreign` (`transaction_id`);

--
-- Indexes for table `roles`
--
ALTER TABLE `roles`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `role_has_permissions`
--
ALTER TABLE `role_has_permissions`
  ADD PRIMARY KEY (`permission_id`,`role_id`),
  ADD KEY `role_has_permissions_role_id_foreign` (`role_id`);

--
-- Indexes for table `shippings`
--
ALTER TABLE `shippings`
  ADD PRIMARY KEY (`id`),
  ADD KEY `shippings_transaction_id_foreign` (`transaction_id`);

--
-- Indexes for table `temp_orders`
--
ALTER TABLE `temp_orders`
  ADD PRIMARY KEY (`id`),
  ADD KEY `temp_orders_invoice_id_foreign` (`invoice_id`);

--
-- Indexes for table `tickets`
--
ALTER TABLE `tickets`
  ADD PRIMARY KEY (`id`),
  ADD KEY `tickets_transaction_id_foreign` (`transaction_id`);

--
-- Indexes for table `transactions`
--
ALTER TABLE `transactions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `transactions_user_id_foreign` (`user_id`);

--
-- Indexes for table `transaction_histories`
--
ALTER TABLE `transaction_histories`
  ADD PRIMARY KEY (`id`),
  ADD KEY `transaction_histories_user_id_foreign` (`user_id`),
  ADD KEY `transaction_histories_transaction_id_foreign` (`transaction_id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`),
  ADD KEY `users_merchant_user_id_foreign` (`merchant_user_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `batches`
--
ALTER TABLE `batches`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `batch_fees`
--
ALTER TABLE `batch_fees`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `batch_refunds`
--
ALTER TABLE `batch_refunds`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `batch_reserves`
--
ALTER TABLE `batch_reserves`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `batch_transactions`
--
ALTER TABLE `batch_transactions`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `countries`
--
ALTER TABLE `countries`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=748;

--
-- AUTO_INCREMENT for table `currencies`
--
ALTER TABLE `currencies`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `customers`
--
ALTER TABLE `customers`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=119;

--
-- AUTO_INCREMENT for table `employees`
--
ALTER TABLE `employees`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `invoices`
--
ALTER TABLE `invoices`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4366;

--
-- AUTO_INCREMENT for table `merchants`
--
ALTER TABLE `merchants`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;

--
-- AUTO_INCREMENT for table `order_details`
--
ALTER TABLE `order_details`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=263;

--
-- AUTO_INCREMENT for table `permissions`
--
ALTER TABLE `permissions`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT for table `portal_transactions`
--
ALTER TABLE `portal_transactions`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `reserves`
--
ALTER TABLE `reserves`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `roles`
--
ALTER TABLE `roles`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `shippings`
--
ALTER TABLE `shippings`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=119;

--
-- AUTO_INCREMENT for table `temp_orders`
--
ALTER TABLE `temp_orders`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4516;

--
-- AUTO_INCREMENT for table `tickets`
--
ALTER TABLE `tickets`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `transactions`
--
ALTER TABLE `transactions`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=124;

--
-- AUTO_INCREMENT for table `transaction_histories`
--
ALTER TABLE `transaction_histories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=123;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `batches`
--
ALTER TABLE `batches`
  ADD CONSTRAINT `batches_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`);

--
-- Constraints for table `batch_fees`
--
ALTER TABLE `batch_fees`
  ADD CONSTRAINT `batch_fees_batch_id_foreign` FOREIGN KEY (`batch_id`) REFERENCES `batches` (`id`);

--
-- Constraints for table `batch_refunds`
--
ALTER TABLE `batch_refunds`
  ADD CONSTRAINT `batch_refunds_batch_id_foreign` FOREIGN KEY (`batch_id`) REFERENCES `batches` (`id`),
  ADD CONSTRAINT `batch_refunds_transaction_id_foreign` FOREIGN KEY (`transaction_id`) REFERENCES `transactions` (`id`);

--
-- Constraints for table `batch_reserves`
--
ALTER TABLE `batch_reserves`
  ADD CONSTRAINT `batch_reserves_batch_id_foreign` FOREIGN KEY (`batch_id`) REFERENCES `batches` (`id`),
  ADD CONSTRAINT `batch_reserves_reserve_id_foreign` FOREIGN KEY (`reserve_id`) REFERENCES `reserves` (`id`);

--
-- Constraints for table `batch_transactions`
--
ALTER TABLE `batch_transactions`
  ADD CONSTRAINT `batch_transactions_batch_id_foreign` FOREIGN KEY (`batch_id`) REFERENCES `batches` (`id`),
  ADD CONSTRAINT `batch_transactions_transaction_id_foreign` FOREIGN KEY (`transaction_id`) REFERENCES `transactions` (`id`);

--
-- Constraints for table `customers`
--
ALTER TABLE `customers`
  ADD CONSTRAINT `customers_transaction_id_foreign` FOREIGN KEY (`transaction_id`) REFERENCES `transactions` (`id`);

--
-- Constraints for table `merchants`
--
ALTER TABLE `merchants`
  ADD CONSTRAINT `merchants_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`);

--
-- Constraints for table `model_has_permissions`
--
ALTER TABLE `model_has_permissions`
  ADD CONSTRAINT `model_has_permissions_permission_id_foreign` FOREIGN KEY (`permission_id`) REFERENCES `permissions` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `model_has_roles`
--
ALTER TABLE `model_has_roles`
  ADD CONSTRAINT `model_has_roles_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `order_details`
--
ALTER TABLE `order_details`
  ADD CONSTRAINT `order_details_transaction_id_foreign` FOREIGN KEY (`transaction_id`) REFERENCES `transactions` (`id`);

--
-- Constraints for table `reserves`
--
ALTER TABLE `reserves`
  ADD CONSTRAINT `reserves_transaction_id_foreign` FOREIGN KEY (`transaction_id`) REFERENCES `transactions` (`id`);

--
-- Constraints for table `role_has_permissions`
--
ALTER TABLE `role_has_permissions`
  ADD CONSTRAINT `role_has_permissions_permission_id_foreign` FOREIGN KEY (`permission_id`) REFERENCES `permissions` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `role_has_permissions_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `shippings`
--
ALTER TABLE `shippings`
  ADD CONSTRAINT `shippings_transaction_id_foreign` FOREIGN KEY (`transaction_id`) REFERENCES `transactions` (`id`);

--
-- Constraints for table `temp_orders`
--
ALTER TABLE `temp_orders`
  ADD CONSTRAINT `temp_orders_invoice_id_foreign` FOREIGN KEY (`invoice_id`) REFERENCES `invoices` (`id`);

--
-- Constraints for table `tickets`
--
ALTER TABLE `tickets`
  ADD CONSTRAINT `tickets_transaction_id_foreign` FOREIGN KEY (`transaction_id`) REFERENCES `transactions` (`id`);

--
-- Constraints for table `transactions`
--
ALTER TABLE `transactions`
  ADD CONSTRAINT `transactions_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`);

--
-- Constraints for table `transaction_histories`
--
ALTER TABLE `transaction_histories`
  ADD CONSTRAINT `transaction_histories_transaction_id_foreign` FOREIGN KEY (`transaction_id`) REFERENCES `transactions` (`id`),
  ADD CONSTRAINT `transaction_histories_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`);

--
-- Constraints for table `users`
--
ALTER TABLE `users`
  ADD CONSTRAINT `users_merchant_user_id_foreign` FOREIGN KEY (`merchant_user_id`) REFERENCES `merchants` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
