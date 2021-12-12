-- phpMyAdmin SQL Dump
-- version 4.9.7
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Dec 12, 2021 at 01:30 AM
-- Server version: 5.7.36
-- PHP Version: 7.3.33

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `advocate_manage`
--

-- --------------------------------------------------------

--
-- Table structure for table `academic_infos`
--

CREATE TABLE `academic_infos` (
  `id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `created_by` int(10) UNSIGNED NOT NULL,
  `last_updated_by` int(10) UNSIGNED DEFAULT NULL,
  `students_id` int(10) UNSIGNED NOT NULL,
  `institution` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `board` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `pass_year` varchar(4) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `symbol_no` varchar(15) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `percentage` int(11) DEFAULT NULL,
  `division_grade` varchar(10) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `major_subjects` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `remark` text COLLATE utf8mb4_unicode_ci,
  `sorting_order` int(10) UNSIGNED DEFAULT NULL,
  `status` tinyint(1) NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `account_categories`
--

CREATE TABLE `account_categories` (
  `id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `created_by` int(10) UNSIGNED NOT NULL,
  `last_updated_by` int(10) UNSIGNED DEFAULT NULL,
  `ac_name` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `ac_type` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `dr` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `cr` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `account_categories`
--

INSERT INTO `account_categories` (`id`, `created_at`, `updated_at`, `created_by`, `last_updated_by`, `ac_name`, `ac_type`, `dr`, `cr`, `status`) VALUES
(1, '2021-06-30 05:36:06', '2021-06-30 05:36:06', 1, NULL, 'ACCOUNTS PAYABLE', 'Liability', 'Decrease', 'Increase', 1),
(2, '2021-06-30 05:36:06', '2021-06-30 05:36:06', 1, NULL, 'ACCOUNTS RECEIVABLE', 'Asset', 'Increase', 'Decrease', 1),
(3, '2021-06-30 05:36:07', '2021-06-30 05:36:07', 1, NULL, 'ACCUMULATED DEPRECIATION', 'Contra Asset', 'Decrease', 'Increase', 1),
(4, '2021-06-30 05:36:07', '2021-06-30 05:36:07', 1, NULL, 'ADVERTISING EXPENSE', 'Expense', 'Increase', 'Decrease', 1),
(5, '2021-06-30 05:36:07', '2021-06-30 05:36:07', 1, NULL, 'ALLOWANCE FOR UNCOLLECTIBLE ACCOUNTS', 'Contra Asset', 'Decrease', 'Increase', 1),
(6, '2021-06-30 05:36:07', '2021-06-30 05:36:07', 1, NULL, 'AMORTIZATION EXPENSE', 'Expense', 'Increase', 'Decrease', 1),
(7, '2021-06-30 05:36:07', '2021-06-30 05:36:07', 1, NULL, 'AVAILABLE FOR SALE SECURITIES', 'Asset', 'Increase', 'Decrease', 1),
(8, '2021-06-30 05:36:07', '2021-06-30 05:36:07', 1, NULL, 'Bank Accounts', 'Asset', 'Increase', 'Decrease', 1),
(9, '2021-06-30 05:36:07', '2021-06-30 05:36:07', 1, NULL, 'Bank OD A/c', 'Liability', 'Decrease', 'Increase', 1),
(10, '2021-06-30 05:36:08', '2021-06-30 05:36:08', 1, NULL, 'BONDS PAYABLE', 'Liability', 'Decrease', 'Increase', 1),
(11, '2021-06-30 05:36:08', '2021-06-30 05:36:08', 1, NULL, 'BUILDING', 'Asset', 'Increase', 'Decrease', 1),
(12, '2021-06-30 05:36:08', '2021-06-30 05:36:08', 1, NULL, 'CAPITAL STOCK', 'Equity', 'Decrease', 'Increase', 1),
(13, '2021-06-30 05:36:08', '2021-06-30 05:36:08', 1, NULL, 'CASH', 'Asset', 'Increase', 'Decrease', 1),
(14, '2021-06-30 05:36:08', '2021-06-30 05:36:08', 1, NULL, 'CASH OVER', 'Revenue', 'Decrease', 'Increase', 1),
(15, '2021-06-30 05:36:08', '2021-06-30 05:36:08', 1, NULL, 'CASH SHORT', 'Expense', 'Increase', 'Decrease', 1),
(16, '2021-06-30 05:36:08', '2021-06-30 05:36:08', 1, NULL, 'CHARITABLE CONTRIBUTIONS PAYABLE', 'Liability', 'Decrease', 'Increase', 1),
(17, '2021-06-30 05:36:08', '2021-06-30 05:36:08', 1, NULL, 'COMMON STOCK', 'Equity', 'Decrease', 'Increase', 1),
(18, '2021-06-30 05:36:09', '2021-06-30 05:36:09', 1, NULL, 'COST OF GOODS SOLD', 'Expense', 'Increase', 'Decrease', 1),
(19, '2021-06-30 05:36:09', '2021-06-30 05:36:09', 1, NULL, 'CURRENCY EXCHANGE GAIN', 'Gain', 'Decrease', 'Increase', 1),
(20, '2021-06-30 05:36:09', '2021-06-30 05:36:09', 1, NULL, 'CURRENCY EXCHANGE LOSS', 'Loss', 'Increase', 'Decrease', 1),
(21, '2021-06-30 05:36:09', '2021-06-30 05:36:09', 1, NULL, 'DEPRECIATION EXPENSE', 'Expense', 'Increase', 'Decrease', 1),
(22, '2021-06-30 05:36:09', '2021-06-30 05:36:09', 1, NULL, 'DISCOUNT ON BONDS PAYABLE', 'Liability', 'Decrease', 'Increase', 1),
(23, '2021-06-30 05:36:09', '2021-06-30 05:36:09', 1, NULL, 'DISCOUNT ON NOTES PAYABLE', 'Contra Liability', 'Increase', 'Decrease', 1),
(24, '2021-06-30 05:36:09', '2021-06-30 05:36:09', 1, NULL, 'DIVIDEND INCOME', 'Revenue', 'Decrease', 'Increase', 1),
(25, '2021-06-30 05:36:09', '2021-06-30 05:36:09', 1, NULL, 'DIVIDENDS', 'Dividend', 'Increase', 'Decrease', 1),
(26, '2021-06-30 05:36:09', '2021-06-30 05:36:09', 1, NULL, 'DIVIDENDS PAYABLE', 'Liability', 'Decrease', 'Increase', 1),
(27, '2021-06-30 05:36:10', '2021-06-30 05:36:10', 1, NULL, 'DOMAIN NAME', 'Asset', 'Increase', 'Decrease', 1),
(28, '2021-06-30 05:36:10', '2021-06-30 05:36:10', 1, NULL, 'EMPLOYEE BENEFITS EXPENSE', 'Expense', 'Increase', 'Decrease', 1),
(29, '2021-06-30 05:36:10', '2021-06-30 05:36:10', 1, NULL, 'EQUIPMENT', 'Asset', 'Increase', 'Decrease', 1),
(30, '2021-06-30 05:36:10', '2021-06-30 05:36:10', 1, NULL, 'FEDERAL INCOME TAX PAYABLE', 'Liability', 'Decrease', 'Increase', 1),
(31, '2021-06-30 05:36:10', '2021-06-30 05:36:10', 1, NULL, 'FEDERAL UNEMPLOYMENT TAX PAYABLE', 'Liability', 'Decrease', 'Increase', 1),
(32, '2021-06-30 05:36:10', '2021-06-30 05:36:10', 1, NULL, 'FREIGHT-IN', 'Part of Calculation of Net Purchases', 'Increase', 'Decrease', 1),
(33, '2021-06-30 05:36:10', '2021-06-30 05:36:10', 1, NULL, 'FREIGHT-OUT', 'Expense', 'Increase', 'Decrease', 1),
(34, '2021-06-30 05:36:10', '2021-06-30 05:36:10', 1, NULL, 'FUEL EXPENSE', 'Expense', 'Increase', 'Decrease', 1),
(35, '2021-06-30 05:36:10', '2021-06-30 05:36:10', 1, NULL, 'GAIN', 'Gain', 'Decrease', 'Increase', 1),
(36, '2021-06-30 05:36:10', '2021-06-30 05:36:10', 1, NULL, 'HEALTH/CHILD FLEX PAYABLE', 'Liability', 'Decrease', 'Increase', 1),
(37, '2021-06-30 05:36:10', '2021-06-30 05:36:10', 1, NULL, 'INCOME SUMMARY', 'Not a Financial Statement Account', 'Debited for Total Expenses', 'Credited for Total Revenues', 1),
(38, '2021-06-30 05:36:10', '2021-06-30 05:36:10', 1, NULL, 'INSURANCE EXPENSE', 'Expense', 'Increase', 'Decrease', 1),
(39, '2021-06-30 05:36:11', '2021-06-30 05:36:11', 1, NULL, 'INSURANCE PAYABLE', 'Liability', 'Decrease', 'Increase', 1),
(40, '2021-06-30 05:36:11', '2021-06-30 05:36:11', 1, NULL, 'INTEREST EXPENSE', 'Expense', 'Increase', 'Decrease', 1),
(41, '2021-06-30 05:36:11', '2021-06-30 05:36:11', 1, NULL, 'INTEREST INCOME', 'Revenue', 'Decrease', 'Increase', 1),
(42, '2021-06-30 05:36:11', '2021-06-30 05:36:11', 1, NULL, 'INTEREST PAYABLE', 'Liability', 'Decrease', 'Increase', 1),
(43, '2021-06-30 05:36:11', '2021-06-30 05:36:11', 1, NULL, 'INTEREST RECEIVABLE', 'Asset', 'Increase', 'Decrease', 1),
(44, '2021-06-30 05:36:11', '2021-06-30 05:36:11', 1, NULL, 'INVENTORY', 'Asset', 'Increase', 'Decrease', 1),
(45, '2021-06-30 05:36:11', '2021-06-30 05:36:11', 1, NULL, 'INVESTMENT IN BONDS', 'Asset', 'Increase', 'Decrease', 1),
(46, '2021-06-30 05:36:12', '2021-06-30 05:36:12', 1, NULL, 'INVESTMENT INCOME', 'Revenue', 'Decrease', 'Increase', 1),
(47, '2021-06-30 05:36:12', '2021-06-30 05:36:12', 1, NULL, 'INVESTMENTS', 'Asset', 'Increase', 'Decrease', 1),
(48, '2021-06-30 05:36:12', '2021-06-30 05:36:12', 1, NULL, 'LAND', 'Asset', 'Increase', 'Decrease', 1),
(49, '2021-06-30 05:36:12', '2021-06-30 05:36:12', 1, NULL, 'LOAN PAYABLE', 'Liability', 'Decrease', 'Increase', 1),
(50, '2021-06-30 05:36:12', '2021-06-30 05:36:12', 1, NULL, 'LOAN & ADVANCE', 'Asset', 'Increase', 'Decrease', 1),
(51, '2021-06-30 05:36:12', '2021-06-30 05:36:12', 1, NULL, 'LOSS', 'Loss', 'Increase', 'Decrease', 1),
(52, '2021-06-30 05:36:12', '2021-06-30 05:36:12', 1, NULL, 'MEDICARE/MEDICAID PAYABLE', 'Liability', 'Decrease', 'Increase', 1),
(53, '2021-06-30 05:36:12', '2021-06-30 05:36:12', 1, NULL, 'MISCELLANEOUS EXPENSE', 'Expense', 'Increase', 'Decrease', 1),
(54, '2021-06-30 05:36:13', '2021-06-30 05:36:13', 1, NULL, 'NOTES PAYABLE', 'Liability', 'Decrease', 'Increase', 1),
(55, '2021-06-30 05:36:13', '2021-06-30 05:36:13', 1, NULL, 'NOTES RECEIVABLE', 'Asset', 'Increase', 'Decrease', 1),
(56, '2021-06-30 05:36:13', '2021-06-30 05:36:13', 1, NULL, 'OBLIGATION UNDER CAPITAL LEASE', 'Liability', 'Decrease', 'Increase', 1),
(57, '2021-06-30 05:36:13', '2021-06-30 05:36:13', 1, NULL, 'PAID-IN CAPITAL IN EXCESS OF PAR – COMMON', 'Equity', 'Decrease', 'Increase', 1),
(58, '2021-06-30 05:36:13', '2021-06-30 05:36:13', 1, NULL, 'PAID-IN CAPITAL IN EXCESS OF PAR – PREFERRED', 'Equity', 'Decrease', 'Increase', 1),
(59, '2021-06-30 05:36:13', '2021-06-30 05:36:13', 1, NULL, 'PATENT', 'Asset', 'Increase', 'Decrease', 1),
(60, '2021-06-30 05:36:14', '2021-06-30 05:36:14', 1, NULL, 'PAYROLL TAX EXPENSE', 'Expense', 'Increase', 'Decrease', 1),
(61, '2021-06-30 05:36:14', '2021-06-30 05:36:14', 1, NULL, 'PETTY CASH', 'Asset', 'Increase', 'Decrease', 1),
(62, '2021-06-30 05:36:15', '2021-06-30 05:36:15', 1, NULL, 'POSTAGE EXPENSE', 'Expense', 'Increase', 'Decrease', 1),
(63, '2021-06-30 05:36:15', '2021-06-30 05:36:15', 1, NULL, 'PREMIUM ON BONDS PAYABLE', 'Liability Adjunct Account', 'Decrease', 'Increase', 1),
(64, '2021-06-30 05:36:15', '2021-06-30 05:36:15', 1, NULL, 'PREPAID INSURANCE', 'Asset', 'Increase', 'Decrease', 1),
(65, '2021-06-30 05:36:15', '2021-06-30 05:36:15', 1, NULL, 'PREPAID RENT', 'Asset', 'Increase', 'Decrease', 1),
(66, '2021-06-30 05:36:15', '2021-06-30 05:36:15', 1, NULL, 'PURCHASE DISCOUNTS', 'Reduces Calculation of Net Purchases', 'Decrease', 'Increase', 1),
(67, '2021-06-30 05:36:16', '2021-06-30 05:36:16', 1, NULL, 'PURCHASE DISCOUNTS LOST', 'Expense', 'Increase', 'Decrease', 1),
(68, '2021-06-30 05:36:16', '2021-06-30 05:36:16', 1, NULL, 'PURCHASES', 'Part of Calculation of Net Purchases', 'Increase', 'Decrease', 1),
(69, '2021-06-30 05:36:16', '2021-06-30 05:36:16', 1, NULL, 'PURCHASE RETURNS', 'Reduces Calculation of Net Purchases', 'Decrease', 'Increase', 1),
(70, '2021-06-30 05:36:16', '2021-06-30 05:36:16', 1, NULL, 'RENT EXPENSE', 'Expense', 'Increase', 'Decrease', 1),
(71, '2021-06-30 05:36:16', '2021-06-30 05:36:16', 1, NULL, 'REPAIR EXPENSE', 'Expense', 'Increase', 'Decrease', 1),
(72, '2021-06-30 05:36:16', '2021-06-30 05:36:16', 1, NULL, 'RETAINED EARNINGS', 'Equity', 'Decrease', 'Increase', 1),
(73, '2021-06-30 05:36:17', '2021-06-30 05:36:17', 1, NULL, 'RETIREMENT CONTRIBUTION PAYABLE', 'Liability', 'Decrease', 'Increase', 1),
(74, '2021-06-30 05:36:17', '2021-06-30 05:36:17', 1, NULL, 'REVENUE', 'Revenue', 'Decrease', 'Increase', 1),
(75, '2021-06-30 05:36:17', '2021-06-30 05:36:17', 1, NULL, 'SALARIES EXPENSE', 'Expense', 'Increase', 'Decrease', 1),
(76, '2021-06-30 05:36:17', '2021-06-30 05:36:17', 1, NULL, 'SALARIES PAYABLE', 'Liability', 'Decrease', 'Increase', 1),
(77, '2021-06-30 05:36:17', '2021-06-30 05:36:17', 1, NULL, 'SALES', 'Revenue', 'Decrease', 'Increase', 1),
(78, '2021-06-30 05:36:17', '2021-06-30 05:36:17', 1, NULL, 'SALES DISCOUNTS', 'Contra Revenue', 'Increase', 'Decrease', 1),
(79, '2021-06-30 05:36:17', '2021-06-30 05:36:17', 1, NULL, 'SALES RETURNS', 'Contra Revenue', 'Increase', 'Decrease', 1),
(80, '2021-06-30 05:36:17', '2021-06-30 05:36:17', 1, NULL, 'SERVICE CHARGE', 'Expense', 'Increase', 'Decrease', 1),
(81, '2021-06-30 05:36:17', '2021-06-30 05:36:17', 1, NULL, 'SERVICE REVENUE', 'Revenue', 'Decrease', 'Increase', 1),
(82, '2021-06-30 05:36:17', '2021-06-30 05:36:17', 1, NULL, 'SOCIAL SECURITY PAYABLE', 'Liability', 'Decrease', 'Increase', 1),
(83, '2021-06-30 05:36:18', '2021-06-30 05:36:18', 1, NULL, 'STATE INCOME TAX PAYABLE', 'Liability', 'Decrease', 'Increase', 1),
(84, '2021-06-30 05:36:18', '2021-06-30 05:36:18', 1, NULL, 'STATE UNEMPLOYMENT TAX PAYABLE', 'Liability', 'Decrease', 'Increase', 1),
(85, '2021-06-30 05:36:18', '2021-06-30 05:36:18', 1, NULL, 'SUNDRY CREDITORS', 'Current liabilities', 'Decrease', 'Increase', 1),
(86, '2021-06-30 05:36:18', '2021-06-30 05:36:18', 1, NULL, 'SUNDRY DEBTORS', 'Current Assets', 'Increase', 'Decrease', 1),
(87, '2021-06-30 05:36:18', '2021-06-30 05:36:18', 1, NULL, 'SUPPLIES', 'Asset', 'Increase', 'Decrease', 1),
(88, '2021-06-30 05:36:18', '2021-06-30 05:36:18', 1, NULL, 'SUPPLIES EXPENSE', 'Expense', 'Increase', 'Decrease', 1),
(89, '2021-06-30 05:36:18', '2021-06-30 05:36:18', 1, NULL, 'TRADING SECURITIES', 'Asset', 'Increase', 'Decrease', 1),
(90, '2021-06-30 05:36:18', '2021-06-30 05:36:18', 1, NULL, 'TREASURY STOCK', 'Contra Equity', 'Increase', 'Decrease', 1),
(91, '2021-06-30 05:36:18', '2021-06-30 05:36:18', 1, NULL, 'UNCOLLECTIBLE ACCOUNTS EXPENSE', 'Expense', 'Increase', 'Decrease', 1),
(92, '2021-06-30 05:36:18', '2021-06-30 05:36:18', 1, NULL, 'UNEARNED REVENUE', 'Liability', 'Decrease', 'Increase', 1),
(93, '2021-06-30 05:36:18', '2021-06-30 05:36:18', 1, NULL, 'UNREALIZED GAIN', 'Gain', 'Decrease', 'Increase', 1),
(94, '2021-06-30 05:36:19', '2021-06-30 05:36:19', 1, NULL, 'UNREALIZED LOSS', 'Loss', 'Increase', 'Decrease', 1),
(95, '2021-06-30 05:36:19', '2021-06-30 05:36:19', 1, NULL, 'UNREALIZED GAIN – OTHER COMPREHENSIVE INCOME', 'Increase in Equity Via Other Comprehensive Income', 'Decrease', 'Increase', 1),
(96, '2021-06-30 05:36:19', '2021-06-30 05:36:19', 1, NULL, 'UNREALIZED LOSS – OTHER COMPREHENSIVE INCOME', 'Decrease in Equity Via Other Comprehensive Income', 'Increase', 'Decrease', 1),
(97, '2021-06-30 05:36:19', '2021-06-30 05:36:19', 1, NULL, 'UTILITIES EXPENSE', 'Expense', 'Increase', 'Decrease', 1),
(98, '2021-06-30 05:36:19', '2021-06-30 05:36:19', 1, NULL, 'WARRANTY EXPENSE', 'Expense', 'Increase', 'Decrease', 1),
(99, '2021-06-30 05:36:19', '2021-06-30 05:36:19', 1, NULL, 'WARRANTY LIABILITY', 'Liability', 'Decrease', 'Increase', 1);

-- --------------------------------------------------------

--
-- Table structure for table `addressinfos`
--

CREATE TABLE `addressinfos` (
  `id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `created_by` int(10) UNSIGNED NOT NULL,
  `last_updated_by` int(10) UNSIGNED DEFAULT NULL,
  `students_id` int(10) UNSIGNED NOT NULL,
  `address` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `state` varchar(25) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `country` varchar(25) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `temp_address` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `temp_state` varchar(25) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `temp_country` varchar(25) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `home_phone` varchar(15) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `mobile_1` varchar(15) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `mobile_2` varchar(15) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` tinyint(1) NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `alert_settings`
--

CREATE TABLE `alert_settings` (
  `id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `created_by` int(10) UNSIGNED NOT NULL,
  `last_updated_by` int(10) UNSIGNED DEFAULT NULL,
  `event` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `sms` tinyint(1) NOT NULL DEFAULT '1',
  `email` tinyint(1) NOT NULL DEFAULT '1',
  `subject` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `template` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `alert_settings`
--

INSERT INTO `alert_settings` (`id`, `created_at`, `updated_at`, `created_by`, `last_updated_by`, `event`, `sms`, `email`, `subject`, `template`, `status`) VALUES
(1, '2021-06-30 05:33:59', '2021-06-30 05:33:59', 1, NULL, 'BirthdayWish', 0, 0, 'Wish Your Birthday Dear', 'Dear {{first_name}}, Sending you smiles for every moment of your special day…Have a wonderful time and a very happy birthday!', 1),
(2, '2021-06-30 05:33:59', '2021-06-30 05:33:59', 1, NULL, 'StudentRegistration', 0, 0, 'Registration Information', 'Dear {{first_name}}, you are successfully registered in our institution with RegNo.{{reg_no}}. Your login password is {{password}} ,Thank You.', 1),
(3, '2021-06-30 05:33:59', '2021-06-30 05:33:59', 1, NULL, 'StudentTransfer', 0, 0, 'Transfer Information', 'Dear {{first_name}}, We would like to inform you are successfully transferred to {{semester}}. Thank You.', 1),
(4, '2021-06-30 05:33:59', '2021-06-30 05:33:59', 1, NULL, 'FeeReceive', 0, 0, 'Fees Receive Information', 'Dear {{first_name}}, We would like to inform you we are successfully received {{amount}} on {{date}}. Thank you for the Deposit.', 1),
(5, '2021-06-30 05:33:59', '2021-06-30 05:33:59', 1, NULL, 'BalanceFees', 0, 0, 'Balance Fees Information', 'Dear {{first_name}}, you have {{due_amount}} balance fees. please deposit on time. For more info contact the Account Department.', 1),
(6, '2021-06-30 05:33:59', '2021-06-30 05:33:59', 1, NULL, 'SubjectAttendance', 0, 0, 'Student Subject Wise Attendance Information', 'Dear {{guardian_name}}, your child {{first_name}} was Absent in {{absent_status}} subjects attendance on {{date}}.', 1),
(7, '2021-06-30 05:33:59', '2021-06-30 05:33:59', 1, NULL, 'StudentAttendance', 0, 0, 'Student Attendance Information', 'Dear Guardian, This is to inform you that {{first_name}} is {{status}} on {{date}}.', 1),
(8, '2021-06-30 05:33:59', '2021-06-30 05:33:59', 1, NULL, 'StaffAttendance', 0, 0, 'Staff Attendance Information', 'Dear {{first_name}}, This is to inform you are {{status}} on {{date}}.', 1),
(9, '2021-06-30 05:33:59', '2021-06-30 05:33:59', 1, NULL, 'StaffAbsentNotification', 0, 0, 'Staff Absent Information', 'Dear Sir, This is to inform you following staffs are absent today. {{staffs_name}}', 1),
(10, '2021-06-30 05:33:59', '2021-06-30 05:33:59', 1, NULL, 'ExamScoreForGuardian', 0, 0, 'Exam Score Information', 'Dear Guardian, {{first_name}} has obtained the following marks in {{exam_mark_detail}}.', 1),
(11, '2021-06-30 05:33:59', '2021-06-30 05:33:59', 1, NULL, 'ExamScoreForStudent', 0, 0, 'Exam Score Information', 'Dear {{first_name}}, you have obtained following marks in {{exam_mark_detail}}.', 1),
(12, '2021-06-30 05:33:59', '2021-06-30 05:33:59', 1, NULL, 'LibraryRegistration', 0, 0, 'Library Registration Information', 'Dear {{first_name}}, Congratulation! You are successfully registered in our library.', 1),
(13, '2021-06-30 05:33:59', '2021-06-30 05:33:59', 1, NULL, 'LibraryReturnPeriodOver', 0, 0, 'Library Clearance Reminder', 'Dear {{first_name}}, We would like to inform you have some books return time period is over. So, please return as soon as possible.', 1),
(14, '2021-06-30 05:33:59', '2021-06-30 05:33:59', 1, NULL, 'HostelRegistration', 0, 0, 'Hostel Registration Information', 'Dear {{first_name}}, Congratulation! You are successfully registered in our hostel.', 1),
(15, '2021-06-30 05:33:59', '2021-06-30 05:33:59', 1, NULL, 'HostelShift', 0, 0, 'Hostel Shift Information', 'Dear {{first_name}}, Congratulation! You are successfully shifted in {{new_hostel}}.', 1),
(16, '2021-06-30 05:33:59', '2021-06-30 05:33:59', 1, NULL, 'HostelLeave', 0, 0, 'Hostel Leave Information', 'Dear {{first_name}}, You are successfully leaving from our hostel. Thank you.', 1),
(17, '2021-06-30 05:33:59', '2021-06-30 05:33:59', 1, NULL, 'HostelActive', 0, 0, 'Hostel Active Again Information', 'Dear {{first_name}}, You are successfully re-Activated for our hostel service in {{new_hostel}}.', 1),
(18, '2021-06-30 05:33:59', '2021-06-30 05:33:59', 1, NULL, 'TransportRegistration', 0, 0, 'Transport Service Registration Information', 'Dear {{first_name}}, You are successfully registered for our transport service in {{transport}}.', 1),
(19, '2021-06-30 05:33:59', '2021-06-30 05:33:59', 1, NULL, 'TransportShift', 0, 0, 'Transport Shift Information', 'Dear {{first_name}}, Congratulation! You are successfully shifted in {{transport}}.', 1),
(20, '2021-06-30 05:33:59', '2021-06-30 05:33:59', 1, NULL, 'TransportLeave', 0, 0, 'Transport Leave Information', 'Dear {{first_name}}, You are successfully deactivated for transport service. Thank you.', 1),
(21, '2021-06-30 05:33:59', '2021-06-30 05:33:59', 1, NULL, 'TransportActive', 0, 0, 'Transport Active Again Information', 'Dear {{first_name}}, You are successfully re-Activated for our transport service in {{transport}}.', 1),
(22, '2021-06-30 05:33:59', '2021-06-30 05:33:59', 1, NULL, 'CustomerRegistration', 0, 0, 'Customer Registration Information', 'Dear {name}, you are successfully registered in our CRM with RegNo.{reg_no}.', 1),
(23, '2021-06-30 05:33:59', '2021-06-30 05:33:59', 1, NULL, 'VendorRegistration', 0, 0, 'Vendor Registration Information', 'Dear {name}, you are successfully registered in our CRM with RegNo.{reg_no}.', 1),
(24, '2021-06-30 05:33:59', '2021-06-30 05:33:59', 1, NULL, 'MeetingScheduleInvitation', 0, 0, 'Meeting Scheduled Invitation', 'Dear {{first_name}}, {{semester}}/{{subject}}/{{topic}} Meeting Scheduled @{{start_time}}. Please Present on Time And Connect. Thank you', 1),
(25, '2021-06-30 05:33:59', '2021-06-30 05:33:59', 1, NULL, 'MeetingStart', 0, 0, 'Meeting Start Join Request', 'Dear {{first_name}}, {{semester}}/{{subject}}/{{topic}} Meeting Started, Please Connect to Attend Class. Thank you', 1),
(26, '2021-06-30 05:33:59', '2021-06-30 05:33:59', 1, NULL, 'Web Registration', 0, 0, 'Registration', 'Dear {{name}}, your application successfully registered with Reg. No.{{reg_no}}. Thank You.', 1),
(27, '2021-06-30 05:33:59', '2021-06-30 05:33:59', 1, NULL, 'Web Registration Approve', 0, 0, 'Registration Approve', 'Dear {{name}}, your Reg. No.{{reg_no}} application successfully approved. Thank You.', 1),
(28, '2021-06-30 05:33:59', '2021-06-30 05:33:59', 1, NULL, 'Web Registration Reject', 0, 0, 'Registration Reject', 'Dear {{name}}, your Reg. No.{{reg_no}} application rejected. Thank You.', 1);

-- --------------------------------------------------------

--
-- Table structure for table `assets`
--

CREATE TABLE `assets` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `created_by` int(10) UNSIGNED NOT NULL,
  `last_updated_by` int(10) UNSIGNED DEFAULT NULL,
  `title` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `quantity` int(11) NOT NULL DEFAULT '0',
  `rate` int(11) NOT NULL DEFAULT '0',
  `status` tinyint(1) NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `assignments`
--

CREATE TABLE `assignments` (
  `id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `created_by` int(10) UNSIGNED NOT NULL,
  `last_updated_by` int(10) UNSIGNED DEFAULT NULL,
  `years_id` int(10) UNSIGNED NOT NULL,
  `semesters_id` int(10) UNSIGNED NOT NULL,
  `subjects_id` int(10) UNSIGNED NOT NULL,
  `publish_date` datetime NOT NULL,
  `end_date` datetime NOT NULL,
  `title` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `file` text COLLATE utf8mb4_unicode_ci,
  `status` tinyint(1) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `assignment_answers`
--

CREATE TABLE `assignment_answers` (
  `id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `created_by` int(10) UNSIGNED NOT NULL,
  `last_updated_by` int(10) UNSIGNED DEFAULT NULL,
  `assignments_id` int(10) UNSIGNED NOT NULL,
  `students_id` int(10) UNSIGNED NOT NULL,
  `answer_text` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `file` text COLLATE utf8mb4_unicode_ci,
  `approve_status` tinyint(1) DEFAULT NULL,
  `status` tinyint(1) NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `attendances`
--

CREATE TABLE `attendances` (
  `id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `created_by` int(10) UNSIGNED NOT NULL,
  `last_updated_by` int(10) UNSIGNED DEFAULT NULL,
  `attendees_type` int(11) NOT NULL,
  `link_id` int(10) UNSIGNED NOT NULL,
  `years_id` int(10) UNSIGNED NOT NULL,
  `months_id` int(10) UNSIGNED NOT NULL,
  `day_1` int(11) NOT NULL DEFAULT '0',
  `day_2` int(11) NOT NULL DEFAULT '0',
  `day_3` int(11) NOT NULL DEFAULT '0',
  `day_4` int(11) NOT NULL DEFAULT '0',
  `day_5` int(11) NOT NULL DEFAULT '0',
  `day_6` int(11) NOT NULL DEFAULT '0',
  `day_7` int(11) NOT NULL DEFAULT '0',
  `day_8` int(11) NOT NULL DEFAULT '0',
  `day_9` int(11) NOT NULL DEFAULT '0',
  `day_10` int(11) NOT NULL DEFAULT '0',
  `day_11` int(11) NOT NULL DEFAULT '0',
  `day_12` int(11) NOT NULL DEFAULT '0',
  `day_13` int(11) NOT NULL DEFAULT '0',
  `day_14` int(11) NOT NULL DEFAULT '0',
  `day_15` int(11) NOT NULL DEFAULT '0',
  `day_16` int(11) NOT NULL DEFAULT '0',
  `day_17` int(11) NOT NULL DEFAULT '0',
  `day_18` int(11) NOT NULL DEFAULT '0',
  `day_19` int(11) NOT NULL DEFAULT '0',
  `day_20` int(11) NOT NULL DEFAULT '0',
  `day_21` int(11) NOT NULL DEFAULT '0',
  `day_22` int(11) NOT NULL DEFAULT '0',
  `day_23` int(11) NOT NULL DEFAULT '0',
  `day_24` int(11) NOT NULL DEFAULT '0',
  `day_25` int(11) NOT NULL DEFAULT '0',
  `day_26` int(11) NOT NULL DEFAULT '0',
  `day_27` int(11) NOT NULL DEFAULT '0',
  `day_28` int(11) NOT NULL DEFAULT '0',
  `day_29` int(11) NOT NULL DEFAULT '0',
  `day_30` int(11) NOT NULL DEFAULT '0',
  `day_31` int(11) NOT NULL DEFAULT '0',
  `day_32` int(11) NOT NULL DEFAULT '0',
  `status` tinyint(1) NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `attendances`
--

INSERT INTO `attendances` (`id`, `created_at`, `updated_at`, `created_by`, `last_updated_by`, `attendees_type`, `link_id`, `years_id`, `months_id`, `day_1`, `day_2`, `day_3`, `day_4`, `day_5`, `day_6`, `day_7`, `day_8`, `day_9`, `day_10`, `day_11`, `day_12`, `day_13`, `day_14`, `day_15`, `day_16`, `day_17`, `day_18`, `day_19`, `day_20`, `day_21`, `day_22`, `day_23`, `day_24`, `day_25`, `day_26`, `day_27`, `day_28`, `day_29`, `day_30`, `day_31`, `day_32`, `status`) VALUES
(1, '2021-12-12 11:27:01', '2021-12-12 11:31:55', 1, 1, 2, 1, 4, 12, 1, 0, 3, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1);

-- --------------------------------------------------------

--
-- Table structure for table `attendance_certificates`
--

CREATE TABLE `attendance_certificates` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `created_by` int(10) UNSIGNED NOT NULL,
  `last_updated_by` int(10) UNSIGNED DEFAULT NULL,
  `students_id` int(10) UNSIGNED NOT NULL,
  `date_of_issue` date NOT NULL,
  `year_of_study` varchar(9) COLLATE utf8mb4_unicode_ci NOT NULL,
  `percentage_of_attendance` varchar(3) COLLATE utf8mb4_unicode_ci NOT NULL,
  `ref_text` text COLLATE utf8mb4_unicode_ci,
  `status` tinyint(1) NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `attendance_masters`
--

CREATE TABLE `attendance_masters` (
  `id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `created_by` int(10) UNSIGNED NOT NULL,
  `last_updated_by` int(10) UNSIGNED DEFAULT NULL,
  `year` int(10) UNSIGNED NOT NULL,
  `month` int(10) UNSIGNED NOT NULL,
  `day_in_month` int(11) NOT NULL,
  `holiday` int(11) NOT NULL,
  `open` int(11) NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `attendance_statuses`
--

CREATE TABLE `attendance_statuses` (
  `id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `created_by` int(10) UNSIGNED NOT NULL,
  `last_updated_by` int(10) UNSIGNED DEFAULT NULL,
  `title` varchar(25) COLLATE utf8mb4_unicode_ci NOT NULL,
  `display_class` varchar(15) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` tinyint(1) NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `attendance_statuses`
--

INSERT INTO `attendance_statuses` (`id`, `created_at`, `updated_at`, `created_by`, `last_updated_by`, `title`, `display_class`, `status`) VALUES
(1, '2021-06-30 05:33:51', '2021-06-30 05:33:51', 1, NULL, 'PRESENT', 'btn-primary', 1),
(2, '2021-06-30 05:33:51', '2021-06-30 05:33:51', 1, NULL, 'ABSENT', 'btn-danger', 1),
(3, '2021-06-30 05:33:51', '2021-06-30 05:33:51', 1, NULL, 'LATE', 'btn-warning', 1),
(4, '2021-06-30 05:33:51', '2021-06-30 05:33:51', 1, NULL, 'LEAVE', 'btn-success', 1),
(5, '2021-06-30 05:33:51', '2021-06-30 05:33:51', 1, NULL, 'HOLIDAY', 'btn-info', 1);

-- --------------------------------------------------------

--
-- Table structure for table `audits`
--

CREATE TABLE `audits` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_type` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `event` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `auditable_type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `auditable_id` bigint(20) UNSIGNED NOT NULL,
  `old_values` text COLLATE utf8mb4_unicode_ci,
  `new_values` text COLLATE utf8mb4_unicode_ci,
  `url` text COLLATE utf8mb4_unicode_ci,
  `ip_address` varchar(45) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_agent` text COLLATE utf8mb4_unicode_ci,
  `tags` text COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `audits`
--

INSERT INTO `audits` (`id`, `user_type`, `user_id`, `event`, `auditable_type`, `auditable_id`, `old_values`, `new_values`, `url`, `ip_address`, `user_agent`, `tags`, `created_at`, `updated_at`) VALUES
(1, 'App\\User', 1, 'updated', 'App\\User', 1, '{\"last_login_at\":null,\"last_login_ip\":null}', '{\"last_login_at\":\"2021-12-12 04:28:23\",\"last_login_ip\":\"103.47.57.86\"}', 'https://advocatespedia.com/101/attendence/EduFirm/public/login', '103.47.57.86', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/96.0.4664.93 Safari/537.36', NULL, '2021-12-12 11:28:23', '2021-12-12 11:28:23'),
(2, 'App\\User', 1, 'updated', 'App\\User', 1, '{\"password\":\"$2y$10$SkDZiWj6BBfI1aepvAsjm.JCV5mZGLuryGf\\/pLi5WKHOr3D7RrPqG\"}', '{\"password\":\"$2y$10$b8UkrWoCXAVr4OpGEffiHeZQBkRR5p6Z7ZmeAWFoKrkO5c3eBCBK2\"}', 'https://advocatespedia.com/101/attendence/EduFirm/public/login', '103.47.57.86', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/96.0.4664.93 Safari/537.36', NULL, '2021-12-12 11:28:23', '2021-12-12 11:28:23'),
(3, 'App\\User', 1, 'updated', 'App\\User', 1, '{\"last_login_at\":\"2021-12-12 04:28:23\"}', '{\"last_login_at\":\"2021-12-12 04:19:04\"}', 'https://advocatespedia.com/101/attendence/d/d/EduFirmIMS-May-2020/public/login', '103.47.57.86', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/96.0.4664.93 Safari/537.36', NULL, '2021-12-12 11:19:04', '2021-12-12 11:19:04'),
(4, 'App\\User', 1, 'created', 'App\\Models\\StudentBatch', 1, '[]', '{\"title\":\"2021\",\"created_by\":1,\"id\":1}', 'https://advocatespedia.com/101/attendence/d/d/EduFirmIMS-May-2020/public/student-batch/store', '103.47.57.86', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/96.0.4664.93 Safari/537.36', NULL, '2021-12-12 11:21:15', '2021-12-12 11:21:15'),
(5, 'App\\User', 1, 'created', 'App\\Models\\StaffDesignation', 1, '[]', '{\"title\":\"Teacher\",\"created_by\":1,\"id\":1}', 'https://advocatespedia.com/101/attendence/d/d/EduFirmIMS-May-2020/public/staff/designation/store', '103.47.57.86', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/96.0.4664.93 Safari/537.36', NULL, '2021-12-12 11:22:57', '2021-12-12 11:22:57'),
(6, 'App\\User', 1, 'created', 'App\\Models\\Staff', 1, '[]', '{\"reg_no\":\"2312313\",\"join_date\":\"2021-12-01\",\"designation\":\"1\",\"first_name\":\"MOHD\",\"middle_name\":\"ASHAFAK\",\"last_name\":\"ALI\",\"father_name\":\"ASKA\",\"mother_name\":\"RANI\",\"date_of_birth\":\"1988-12-26\",\"gender\":\"MALE\",\"blood_group\":\"A+\",\"nationality\":\"INDIAN\",\"mother_tongue\":\"HINDI\",\"email\":\"mohd.faraz93@gmail.com\",\"home_phone\":\"+918368710594\",\"mobile_1\":\"+918368710594\",\"mobile_2\":null,\"address\":\"C 169 SECTOR 23\",\"state\":\"UTTAR PRADESH\",\"country\":\"INDIA\",\"temp_address\":\"C 169 SECTOR 23\",\"temp_state\":\"UTTAR PRADESH\",\"temp_country\":\"INDIA\",\"qualification\":\"LLM\",\"experience\":\"5\",\"experience_info\":null,\"other_info\":null,\"created_by\":1,\"staff_image\":\"\",\"id\":1}', 'https://advocatespedia.com/101/attendence/d/d/EduFirmIMS-May-2020/public/staff/store', '103.47.57.86', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/96.0.4664.93 Safari/537.36', NULL, '2021-12-12 11:25:34', '2021-12-12 11:25:34'),
(7, 'App\\User', 1, 'created', 'App\\Models\\TransactionHead', 4, '[]', '{\"created_by\":1,\"tr_head\":\"MOHD ASHAFAK ALI  [2312313]\",\"ref_id\":1,\"acc_id\":76,\"id\":4}', 'https://advocatespedia.com/101/attendence/d/d/EduFirmIMS-May-2020/public/staff/store', '103.47.57.86', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/96.0.4664.93 Safari/537.36', NULL, '2021-12-12 11:25:34', '2021-12-12 11:25:34'),
(8, 'App\\User', 1, 'created', 'App\\Models\\LibraryMember', 1, '[]', '{\"user_type\":\"2\",\"status\":1,\"member_id\":1,\"created_by\":1,\"id\":1}', 'https://advocatespedia.com/101/attendence/d/d/EduFirmIMS-May-2020/public/library/member/quick-membership?reg_no=2312313&status=active&user_type=2', '103.47.57.86', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/96.0.4664.93 Safari/537.36', NULL, '2021-12-12 11:25:53', '2021-12-12 11:25:53'),
(9, 'App\\User', 1, 'created', 'App\\Models\\Attendance', 1, '[]', '{\"attendees_type\":2,\"link_id\":\"1\",\"years_id\":4,\"months_id\":12,\"day_1\":\"1\",\"created_by\":1,\"id\":1}', 'https://advocatespedia.com/101/attendence/d/d/EduFirmIMS-May-2020/public/attendance/staff/store', '103.47.57.86', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/96.0.4664.93 Safari/537.36', NULL, '2021-12-12 11:27:01', '2021-12-12 11:27:01'),
(10, 'App\\User', 1, 'updated', 'App\\Models\\Attendance', 1, '{\"day_3\":0,\"last_updated_by\":null}', '{\"day_3\":\"3\",\"last_updated_by\":1}', 'https://advocatespedia.com/101/attendence/d/d/EduFirmIMS-May-2020/public/attendance/staff/store', '103.47.57.86', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/96.0.4664.93 Safari/537.36', NULL, '2021-12-12 11:31:16', '2021-12-12 11:31:16'),
(11, 'App\\User', 1, 'updated', 'App\\Models\\Attendance', 1, '{\"last_updated_by\":null}', '{\"last_updated_by\":1}', 'https://advocatespedia.com/101/attendence/d/d/EduFirmIMS-May-2020/public/attendance/staff/store', '103.47.57.86', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/96.0.4664.93 Safari/537.36', NULL, '2021-12-12 11:31:55', '2021-12-12 11:31:55'),
(12, 'App\\User', 1, 'updated', 'App\\User', 1, '{\"last_login_at\":\"2021-12-12 04:19:04\"}', '{\"last_login_at\":\"2021-12-12 13:32:09\"}', 'https://advocatespedia.com/101/attendence/EduFirm/public/login', '103.47.57.86', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/96.0.4664.93 Safari/537.36', NULL, '2021-12-12 20:32:09', '2021-12-12 20:32:09'),
(13, 'App\\User', 1, 'updated', 'App\\User', 1, '{\"password\":\"$2y$10$b8UkrWoCXAVr4OpGEffiHeZQBkRR5p6Z7ZmeAWFoKrkO5c3eBCBK2\"}', '{\"password\":\"$2y$10$tSkth7IXul9hG1DPhvfOVeakNIezqRyZouDUsGEJo\\/NlPasg5MrbK\"}', 'https://advocatespedia.com/101/attendence/EduFirm/public/login', '103.47.57.86', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/96.0.4664.93 Safari/537.36', NULL, '2021-12-12 20:32:09', '2021-12-12 20:32:09'),
(14, 'App\\User', 1, 'updated', 'App\\User', 1, '{\"last_login_at\":\"2021-12-12 13:32:09\"}', '{\"last_login_at\":\"2021-12-12 13:18:07\"}', 'https://advocatespedia.com/101/attendence/d/d/EduFirmIMS-May-2020/public/login', '103.47.57.86', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/96.0.4664.93 Safari/537.36', NULL, '2021-12-12 20:18:07', '2021-12-12 20:18:07');

-- --------------------------------------------------------

--
-- Table structure for table `banks`
--

CREATE TABLE `banks` (
  `id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `created_by` int(10) UNSIGNED NOT NULL,
  `last_updated_by` int(10) UNSIGNED DEFAULT NULL,
  `bank_name` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `ac_name` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `ac_number` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `branch` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `bank_transactions`
--

CREATE TABLE `bank_transactions` (
  `id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `created_by` int(10) UNSIGNED NOT NULL,
  `last_updated_by` int(10) UNSIGNED DEFAULT NULL,
  `banks_id` int(10) UNSIGNED NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci,
  `deposit_id` varchar(15) COLLATE utf8mb4_unicode_ci NOT NULL,
  `date` datetime NOT NULL,
  `dr_amt` int(11) NOT NULL DEFAULT '0',
  `cr_amt` int(11) NOT NULL DEFAULT '0',
  `amount` int(11) NOT NULL DEFAULT '0',
  `status` tinyint(1) NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `beds`
--

CREATE TABLE `beds` (
  `id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `created_by` int(10) UNSIGNED NOT NULL,
  `last_updated_by` int(10) UNSIGNED DEFAULT NULL,
  `hostels_id` int(10) UNSIGNED NOT NULL,
  `rooms_id` int(10) UNSIGNED NOT NULL,
  `bed_number` int(11) NOT NULL,
  `bed_status` int(10) UNSIGNED NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `bed_statuses`
--

CREATE TABLE `bed_statuses` (
  `id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `created_by` int(10) UNSIGNED NOT NULL,
  `last_updated_by` int(10) UNSIGNED DEFAULT NULL,
  `title` varchar(25) COLLATE utf8mb4_unicode_ci NOT NULL,
  `display_class` varchar(15) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` tinyint(1) NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `bed_statuses`
--

INSERT INTO `bed_statuses` (`id`, `created_at`, `updated_at`, `created_by`, `last_updated_by`, `title`, `display_class`, `status`) VALUES
(1, '2021-06-30 05:33:58', '2021-06-30 05:33:58', 1, NULL, 'Available', 'btn-success', 1),
(2, '2021-06-30 05:33:58', '2021-06-30 05:33:58', 1, NULL, 'Occupied', 'btn-primary', 1),
(3, '2021-06-30 05:33:58', '2021-06-30 05:33:58', 1, NULL, 'Damage', 'btn-danger', 1),
(4, '2021-06-30 05:33:58', '2021-06-30 05:33:58', 1, NULL, 'UnderConstruction', 'btn-default', 1),
(5, '2021-06-30 05:33:58', '2021-06-30 05:33:58', 1, NULL, 'UnderMaintinance', 'btn-default', 1),
(6, '2021-06-30 05:33:58', '2021-06-30 05:33:58', 1, NULL, 'NeedMaintinance', 'btn-default', 1);

-- --------------------------------------------------------

--
-- Table structure for table `bonafide_certificates`
--

CREATE TABLE `bonafide_certificates` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `created_by` int(10) UNSIGNED NOT NULL,
  `last_updated_by` int(10) UNSIGNED DEFAULT NULL,
  `students_id` int(10) UNSIGNED NOT NULL,
  `date_of_issue` date NOT NULL,
  `course` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `period` varchar(9) COLLATE utf8mb4_unicode_ci NOT NULL,
  `character` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `ref_text` text COLLATE utf8mb4_unicode_ci,
  `status` tinyint(1) NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `books`
--

CREATE TABLE `books` (
  `id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `created_by` int(10) UNSIGNED NOT NULL,
  `last_updated_by` int(10) UNSIGNED DEFAULT NULL,
  `book_masters_id` int(10) UNSIGNED NOT NULL,
  `book_code` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `book_status` int(10) UNSIGNED NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `book_categories`
--

CREATE TABLE `book_categories` (
  `id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `created_by` int(10) UNSIGNED NOT NULL,
  `last_updated_by` int(10) UNSIGNED DEFAULT NULL,
  `title` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `book_issues`
--

CREATE TABLE `book_issues` (
  `id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `created_by` int(10) UNSIGNED NOT NULL,
  `last_updated_by` int(10) UNSIGNED DEFAULT NULL,
  `member_id` int(10) UNSIGNED NOT NULL,
  `book_id` int(10) UNSIGNED NOT NULL,
  `issued_on` datetime NOT NULL,
  `due_date` datetime NOT NULL,
  `return_date` datetime DEFAULT NULL,
  `status` tinyint(1) NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `book_masters`
--

CREATE TABLE `book_masters` (
  `id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `created_by` int(10) UNSIGNED NOT NULL,
  `last_updated_by` int(10) UNSIGNED DEFAULT NULL,
  `categories` int(10) UNSIGNED DEFAULT NULL,
  `isbn_number` varchar(25) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `code` varchar(15) COLLATE utf8mb4_unicode_ci NOT NULL,
  `title` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `sub_title` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image` text COLLATE utf8mb4_unicode_ci,
  `language` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `editor` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `edition` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `edition_year` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `publisher` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `publish_year` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `series` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `author` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `rack_location` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `price` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `total_pages` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `source` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `notes` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` tinyint(1) NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `book_requests`
--

CREATE TABLE `book_requests` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `created_by` int(10) UNSIGNED NOT NULL,
  `last_updated_by` int(10) UNSIGNED DEFAULT NULL,
  `book_masters_id` int(10) UNSIGNED NOT NULL,
  `member_id` int(10) UNSIGNED NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `book_statuses`
--

CREATE TABLE `book_statuses` (
  `id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `created_by` int(10) UNSIGNED NOT NULL,
  `last_updated_by` int(10) UNSIGNED DEFAULT NULL,
  `title` varchar(25) COLLATE utf8mb4_unicode_ci NOT NULL,
  `display_class` varchar(15) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` tinyint(1) NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `book_statuses`
--

INSERT INTO `book_statuses` (`id`, `created_at`, `updated_at`, `created_by`, `last_updated_by`, `title`, `display_class`, `status`) VALUES
(1, '2021-06-30 05:33:52', '2021-06-30 05:33:52', 1, NULL, 'Available', 'btn-success', 1),
(2, '2021-06-30 05:33:52', '2021-06-30 05:33:52', 1, NULL, 'Issued', 'btn-primary', 1),
(3, '2021-06-30 05:33:52', '2021-06-30 05:33:52', 1, NULL, 'Damage', 'btn-danger', 1),
(4, '2021-06-30 05:33:52', '2021-06-30 05:33:52', 1, NULL, 'Lost', 'btn-default', 1);

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `created_by` int(10) UNSIGNED NOT NULL,
  `last_updated_by` int(10) UNSIGNED DEFAULT NULL,
  `title` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `certificate_histories`
--

CREATE TABLE `certificate_histories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `created_by` int(10) UNSIGNED NOT NULL,
  `last_updated_by` int(10) UNSIGNED DEFAULT NULL,
  `students_id` int(10) UNSIGNED NOT NULL,
  `certificate` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `certificate_id` int(10) UNSIGNED NOT NULL,
  `history_type` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `ref_text` text COLLATE utf8mb4_unicode_ci,
  `status` tinyint(1) NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `certificate_templates`
--

CREATE TABLE `certificate_templates` (
  `id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `created_by` int(10) UNSIGNED NOT NULL,
  `last_updated_by` int(10) UNSIGNED DEFAULT NULL,
  `certificate` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `template` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `background_image` text COLLATE utf8mb4_unicode_ci,
  `custom_css` text COLLATE utf8mb4_unicode_ci,
  `student_photo` tinyint(1) NOT NULL DEFAULT '1',
  `background_status` tinyint(1) NOT NULL DEFAULT '0',
  `status` tinyint(1) NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `certificate_templates`
--

INSERT INTO `certificate_templates` (`id`, `created_at`, `updated_at`, `created_by`, `last_updated_by`, `certificate`, `template`, `background_image`, `custom_css`, `student_photo`, `background_status`, `status`) VALUES
(1, '2021-06-30 05:36:20', '2021-06-30 05:36:20', 1, NULL, 'ATTENDANCE', '<table class=\"table table-bordered\"> <tbody> <tr> <td>01.</td> <td style=\"text-align: right; \">Name of Student :&nbsp;</td> <td width=\"50%\" style=\"text-align: left;\"><b>{{student_name}}</b><br></td> </tr> <tr> <td>02.</td> <td style=\"text-align: right; \">Reg. No.&nbsp;:&nbsp;</td> <td width=\"50%\" style=\"text-align: left;\"><span style=\"font-weight: 700;\">{{reg_no}}</span><br></td> </tr> <tr> <td>03.</td> <td style=\"text-align: right; \">University Reg. No.&nbsp;:&nbsp;</td> <td width=\"50%\" style=\"text-align: left;\"><span style=\"font-weight: 700;\">{{university_reg}}</span><br></td> </tr> <tr> <td>04.</td> <td style=\"text-align: right; \">Faculty/Level&nbsp;:&nbsp;</td> <td width=\"50%\" style=\"text-align: left;\"><span style=\"font-weight: 700;\">{{faculty}}</span><br></td> </tr><tr><td>05.</td><td style=\"text-align: right; \">Batch :&nbsp;<br></td><td width=\"50%\" style=\"text-align: left;\"><span style=\"font-weight: 700;\">{{batch}}</span><br></td></tr> <tr> <td>06.</td> <td style=\"text-align: right; \">Year of Study&nbsp;:&nbsp;</td> <td width=\"50%\" style=\"text-align: left;\"><span style=\"font-weight: 700;\">{{year_of_study}}</span><br></td> </tr> <tr> <td>07.</td> <td style=\"text-align: right; \">Percentage of Attendance Secured&nbsp;:&nbsp;</td> <td width=\"50%\" style=\"text-align: left;\"><b>{{percentage_of_attendance}}%</b><br></td> </tr> </tbody></table>', NULL, '.subpage{padding: 100px;}', 0, 0, 1),
(2, '2021-06-30 05:36:20', '2021-06-30 05:36:20', 1, NULL, 'TRANSFER_1', '<table class=\"table table-bordered\"> <tbody> <tr> <td style=\"text-align: right;\"><span style=\"text-align: right;\">TC No. :&nbsp;</span><br></td> <td style=\"text-align: left;\"><span style=\"font-weight: 700;\">{{tc_num}}</span><br></td> <td rowspan=\"5\">{{student_image}}</td> </tr> <tr> <td style=\"text-align: right; \"><span style=\"text-align: right;\">Faculty/Level :&nbsp;</span><br></td> <td style=\"text-align: left;\"><span style=\"font-weight: 700;\">{{faculty}}</span><br></td> </tr> <tr> <td style=\"text-align: right; \"><span style=\"text-align: right;\">Admission No./Reg.No. :</span><br></td> <td style=\"text-align: left;\"><span style=\"font-weight: 700;\">{{reg_no}}</span><br></td> </tr> <tr> <td style=\"text-align: right;\"><span style=\"text-align: right;\">University Reg. No. :</span><br></td> <td style=\"text-align: left;\"><b>{{university_reg}}</b><br></td> </tr><tr><td style=\"text-align: right;\">Batch. :<br></td><td style=\"text-align: left;\"><span style=\"font-weight: 700;\">{{batch}}</span><br></td></tr> </tbody></table><table class=\"table table-bordered\"> <tbody> <tr> <td>01.</td> <td style=\"text-align: right; \">Name of Student :&nbsp;</td> <td width=\"50%\" style=\"text-align: left;\"><b>{{student_name}}</b><br></td> </tr> <tr> <td>02.</td> <td style=\"text-align: right; \">Name of Father.&nbsp;:&nbsp;</td> <td width=\"50%\" style=\"text-align: left;\"><b>{{parents_name}}</b><br></td> </tr> <tr> <td>03.</td> <td style=\"text-align: right; \">Date of Birth :&nbsp;</td> <td width=\"50%\" style=\"text-align: left;\"><span style=\"font-weight: 700;\">{{date_of_birth}}</span><br></td> </tr> <tr> <td>04.</td> <td style=\"text-align: right; \">Gender :&nbsp;</td> <td width=\"50%\" style=\"text-align: left;\"><span style=\"font-weight: 700;\">{{gender}}</span><br></td> </tr> <tr> <td>05.</td> <td style=\"text-align: right; \">Nationality :&nbsp;</td> <td width=\"50%\" style=\"text-align: left;\"><span style=\"font-weight: 700;\">{{nationality}}</span><br></td> </tr> <tr> <td>06.</td> <td style=\"text-align: right; \">Religion :&nbsp;</td> <td width=\"50%\" style=\"text-align: left;\"><b>{{religion}}</b><br></td> </tr> <tr> <td>07.</td> <td style=\"text-align: right; \">Community &amp; Caste :&nbsp;</td> <td width=\"50%\" style=\"text-align: left;\"><span style=\"font-weight: 700;\">{{caste}}</span><br></td> </tr> <tr> <td>08.</td> <td style=\"text-align: right; \">Date of Admission :&nbsp;</td> <td width=\"50%\" style=\"text-align: left;\"><span style=\"font-weight: 700;\">{{reg_date}}</span><br></td> </tr> <tr> <td>09.</td> <td style=\"text-align: right; \">Date of Leaving :&nbsp;</td> <td width=\"50%\" style=\"text-align: left;\"><b>{{date_of_leaving}}</b><br></td> </tr> <tr> <td>10.</td> <td style=\"text-align: right;\">Class studied at the time of leaving :&nbsp;</td> <td width=\"50%\" style=\"text-align: left;\"><b>{{leaving_time_class}}</b><br></td> </tr> <tr> <td>11.</td> <td style=\"text-align: right; \">Whether qualified for promotion to higher class :&nbsp;</td> <td width=\"50%\" style=\"text-align: left;\"><b>{{qualified_to_promote}}</b><br></td> </tr> <tr> <td>12.</td> <td style=\"text-align: right; \">Whether the student has paid all Balance fees to the college :&nbsp;</td> <td width=\"50%\" style=\"text-align: left;\"><b>{{paid_fee_status}}</b><br></td> </tr> <tr> <td>13.</td> <td style=\"text-align: right; \">Conduct and Character :&nbsp;</td> <td width=\"50%\" style=\"text-align: left;\"><span style=\"font-weight: 700;\">{{character}}</span><br></td> </tr> </tbody></table>', NULL, '.subpage{padding: 10px;}', 0, 0, 1),
(3, '2021-06-30 05:36:20', '2021-06-30 05:36:20', 1, NULL, 'TRANSFER_2', '<p></p><table class=\"table table-bordered\"><tbody><tr><td><span style=\"text-align: right;\">TC No. :&nbsp;</span><b>{{tc_num}}</b><br></td><td><span style=\"text-align: right;\">बिद्यालय सं. / School No :&nbsp;</span><span style=\"font-weight: 700;\">{{reg_no}}</span><br></td><td>Affiliation No. :&nbsp;<span style=\"font-weight: 700;\">{{university_reg}}</span><br></td><td><span style=\"text-align: right;\">Renewed upto. :&nbsp;</span><br></td><td><span style=\"text-align: right;\">प्रवेश सं./Admission No. :&nbsp;</span><br></td></tr></tbody></table><table class=\"table table-bordered\"> <tbody> <tr> <td>01.</td> <td style=\"text-align: left;\">विद्यार्थीका नाम / Name of Student :&nbsp;</td> <td width=\"50%\" style=\"text-align: left;\"><b>{{student_name}}</b><br></td> </tr> <tr> <td>02.</td> <td style=\"text-align: left; \" class=\"field_title\">माताका नाम / Mother\'s Name :&nbsp;</td> <td width=\"50%\" style=\"text-align: left;\"><b>{{mother_name}}</b><br></td> </tr><tr><td>03.</td><td style=\"text-align: left; \" class=\"field_title\">पिताका नाम /Name of Father\'s / Guardian\'s Name :&nbsp;<br></td><td width=\"50%\" style=\"text-align: left;\"><span style=\"font-weight: 700;\">{{father_name}}</span><br></td></tr> <tr><td>04.</td><td style=\"text-align: left; \" class=\"field_title\">Date of birth(in Christain Era) according to Admission &amp; Withdrawal Register :<br></td><td width=\"50%\" style=\"text-align: left;\"><p><span style=\"background-color: transparent;\">In figures:&nbsp;</span><span style=\"font-weight: 700;\">{{date_of_birth}}</span></p><p><span style=\"background-color: transparent;\">In words:</span></p><p><span style=\"font-weight: 700;\">{{date_of_birth_in_word}}</span></p></td></tr><tr><td>05.</td><td style=\"text-align: left; \" class=\"field_title\">&nbsp;Proof for Date of Birth submitted at the time of admission :</td><td width=\"50%\" style=\"text-align: left;\"><b>{{dob_certificate}}</b></td></tr><tr><td>06.</td><td style=\"text-align: left; \" class=\"field_title\">राष्ट्रियता / Nationality :&nbsp;<br></td><td width=\"50%\" style=\"text-align: left;\"><span style=\"font-weight: 700;\">{{nationality}}</span><br></td></tr><tr><td>07.</td><td style=\"text-align: left; \" class=\"field_title\"><p>क्या अनु.जाति/ज.जा./पिछडा वर्गसे सम्बन्धित है</p><p>Whether the candidate belongs to Scheduled Caste or Schedule Tribe, or OBC:</p></td><td width=\"50%\" style=\"text-align: left;\"><span style=\"font-weight: 700;\">{{caste}}</span><br></td></tr><tr><td>08.</td><td style=\"text-align: left; \" class=\"field_title\">Date of the first admission in the School with the class :<br></td><td width=\"50%\" style=\"text-align: left;\"><span style=\"font-weight: 700;\">{{reg_date}}&nbsp; &nbsp; &nbsp;</span>Class Joined :<span style=\"font-weight: 700;\">&nbsp;&nbsp;</span><span style=\"font-weight: 700;\">{{join_time_class}}</span><br></td></tr><tr><td>09.</td><td style=\"text-align: left; \" class=\"field_title\"><p>पिछली कक्षा जिसमे विद्यार्थी अध्ययनरत था (अंकों में)</p><p>Class in which the pupil last studied (in words):</p></td><td width=\"50%\" style=\"text-align: left;\"><span style=\"font-weight: 700;\">{{leaving_time_class}}</span><br></td></tr><tr><td>10.</td><td style=\"text-align: left; \" class=\"field_title\"><p><span style=\"background-color: transparent;\">पिछले विद्यालय / वोर्ड परीक्षा एवं परिमाण / School/Board Annual Examination last taken with the result:&nbsp;</span><br></p></td><td width=\"50%\" style=\"text-align: left;\"><span style=\"font-weight: 700;\">{{last_taken_exam_with_result}}</span><br></td></tr><tr><td>11.</td><td style=\"text-align: left; \" class=\"field_title\">क्या विद्यार्थीका परीक्षा परिणाम अनुत्तीर्ण है ? / Whether failed, if so once/twice in the same class :</td><td width=\"50%\" style=\"text-align: left;\"><b>{{exam_fail_status}}</b></td></tr><tr><td>12.</td><td style=\"text-align: left; \" class=\"field_title\">प्रस्तावित विषय / Subjects Studied:&nbsp;<br></td><td width=\"50%\" style=\"text-align: left;\"><span style=\"font-weight: 700;\">{{subject_studies}}</span><br></td></tr><tr><td>13.</td><td style=\"text-align: left; \" class=\"field_title\"><p>क्या उच्च कक्षा में पदोन्‍नतका अधिकारी है / Whether qualified for promotion to the next higher class :</p><p>If so, to which class:</p></td><td width=\"50%\" style=\"text-align: left;\"><p><span style=\"font-weight: 700;\">{{qualified_to_promote}}</span></p><p><b>{{promoted_class}}</b><br></p></td></tr><tr><td>14.</td><td style=\"text-align: left; \" class=\"field_title\">विद्यालय दिवसों की कुल संख्या / Total No. of working days in the academic session :</td><td width=\"50%\" style=\"text-align: left;\"><p><span style=\"font-weight: 700;\">{{school_college_open_total}}</span><br></p></td></tr><tr><td>15.</td><td style=\"text-align: left; \" class=\"field_title\">अन्तिम तिथि तक उपस्थितियों की कुल संख्या / Total No. of presence in the academic session :&nbsp;<br></td><td width=\"50%\" style=\"text-align: left;\"><span style=\"font-weight: 700;\">{{total_attendance}}</span><br></td></tr><tr><td>16.</td><td style=\"text-align: left; \" class=\"field_title\"><p>क्या विद्यार्थी ने विद्यालय की सभी देय राशि का भुगतान कर दिया है /&nbsp;&nbsp;<span style=\"background-color: transparent;\">Month up to which the people has paid school dues :</span></p></td><td width=\"50%\" style=\"text-align: left;\"><span style=\"font-weight: 700;\">{{paid_fee_status}}</span><br></td></tr><tr><td>17.</td><td style=\"text-align: left; \" class=\"field_title\">क्या विद्यार्थी को कोई शुल्क रियायत प्रदान की गई थी, यदि हाँऽ तो उसकी प्रकृतीः / Any Fee concession availed of, if so, the nature of such concession :<br></td><td width=\"50%\" style=\"text-align: left;\"><span style=\"font-weight: 700;\">{{fee_concession_detail}}</span><br></td></tr><tr><td>18.</td><td style=\"text-align: left; \" class=\"field_title\">क्या विद्यार्थी&nbsp; एन.सी.सी. कैडेट/ स्काउट है? विवरण देः / Whether the pupil is NCC cadet / Boy scout / Girl Guide (give details):<br></td><td width=\"50%\" style=\"text-align: left;\"><span style=\"font-weight: 700;\">{{cadet_detail}}</span><br></td></tr><tr><td>19.</td><td style=\"text-align: left; \" class=\"field_title\"><p>Whether the school is under Govt/Minority/Independent Category :<br></p></td><td width=\"50%\" style=\"text-align: left;\"><b>{{school_category}}</b></td></tr><tr><td>20.</td><td style=\"text-align: left; \" class=\"field_title\">Games Played on extracurricular activities in which the pupil usually took part (mention achievement level therein)<br></td><td width=\"50%\" style=\"text-align: left;\"><b>{{extra_activity_detail}}</b></td></tr><tr><td>21.</td><td style=\"text-align: left; \" class=\"field_title\"><p>Date of application for certificate :</p></td><td width=\"50%\" style=\"text-align: left;\"><b>{{application_date}}</b><br></td></tr><tr><td>22.</td><td style=\"text-align: left; \" class=\"field_title\">विद्यालय विद्यार्थीके नाम काटनेकी तिथि / Date on which pupils name was struck off the rolls of the Vidyalaya :<br></td><td width=\"50%\" style=\"text-align: left;\"><span style=\"font-weight: 700;\">{{date_of_leaving}}</span><br></td></tr><tr><td>23.</td><td style=\"text-align: left; \" class=\"field_title\">प्रमाण-पत्र जारी करने की तिथी / Date of issue of certificate :&nbsp;<br></td><td width=\"50%\" style=\"text-align: left;\"><span style=\"font-weight: 700;\">{{date_of_issue}}</span><br></td></tr><tr><td>24.</td><td style=\"text-align: left; \" class=\"field_title\">कोइ अन्य टिप्पणी / Any other remarks :<br></td><td width=\"50%\" style=\"text-align: left;\"><span style=\"font-weight: 700;\">{{any_other_remark}}</span><br></td></tr>    </tbody></table><br><table class=\"table table-bordered\" style=\"text-align: center; \"><tbody><tr><td><p><br></p><p>_______________________</p><p><b>तैयारकर्ता / Prepared By</b></p></td><td><p><br></p><p>_______________________<br></p><p><b>जाँचकर्ता / Checked By</b></p></td><td><p><br></p><p><span style=\"background-color: transparent;\">_______________________</span><br></p><p><b>ह. प्रधानाचार्य / कार्यालय मोहर</b></p><p><b>Sign of Principal with Official Seal</b></p></td></tr></tbody></table><p style=\"text-align: center; \"><br></p>', NULL, '.subpage{padding: 0px;}.field_title{width:65%;}p{margin: 0 0 0px;}tr{font-size: 10px;}', 0, 0, 1),
(4, '2021-06-30 05:36:20', '2021-06-30 05:36:20', 1, NULL, 'TRANSFER_3', '<table class=\"table table-bordered\" style=\"text-align: right;\"> <tbody> <tr> <td><span style=\"text-align: right;\">TC No. :</span><br></td> <td style=\"text-align: left;\"><span style=\"text-align: right;\">&nbsp;</span><span style=\"font-weight: 700;\">{{tc_num}}</span><br></td> <td><span style=\"text-align: right;\">Admission No./Reg.No. :&nbsp;</span><br></td> <td style=\"text-align: left;\"><span style=\"font-weight: 700;\">{{reg_no}}</span><br></td> </tr> <tr> <td>&nbsp;{{national_id_type}}<span style=\"background-color: transparent;\">&nbsp;:</span><br></td> <td style=\"text-align: left;\"><span style=\"font-weight: 700; background-color: transparent;\">{{national_id_number}}</span><br></td> <td>&nbsp;{{extra_id_card_type}}<span style=\"background-color: transparent; text-align: right;\">&nbsp;:</span><br></td> <td style=\"text-align: left;\"> <span style=\"background-color: transparent; text-align: right;\">&nbsp;</span><span style=\"font-weight: 700;\"><span style=\"background-color: transparent;\">{{extra_id_card_number}}</span><br> </span></td> </tr> </tbody></table><table class=\"table table-bordered\" style=\"text-align: right;\"> <tbody> <tr> <td>01.</td> <td style=\"text-align: left;\">Name of Pupil :&nbsp;</td> <td width=\"50%\" style=\"text-align: left;\"><b>{{student_name}}</b><br></td> </tr> <tr> <td>02.</td> <td style=\"text-align: left;\" class=\"field_title\">Father\'s / Guardian\'s Name :&nbsp;</td> <td width=\"50%\" style=\"text-align: left;\"><b>{{guardian_name}}</b><br></td> </tr> <tr> <td>03.</td> <td style=\"text-align: left;\" class=\"field_title\">Mother\'s Name :<br></td> <td width=\"50%\" style=\"text-align: left;\"><b>{{father_name}}</b><br></td> </tr> <tr> <td>04.</td> <td style=\"text-align: left;\" class=\"field_title\">Place of Birth :</td> <td width=\"50%\" style=\"text-align: left;\"><b>{{birth_place}}</b><br></td> </tr> <tr> <td>05.</td> <td style=\"text-align: left;\" class=\"field_title\">Nationality :&nbsp;<br></td> <td width=\"50%\" style=\"text-align: left;\"><span style=\"font-weight: 700;\">{{nationality}}</span><br></td> </tr> <tr> <td>06.</td> <td style=\"text-align: left;\" class=\"field_title\">Caste / Category</td> <td width=\"50%\" style=\"text-align: left;\"><span style=\"font-weight: 700;\">{{caste}}</span><br></td> </tr> <tr> <td>07.</td> <td style=\"text-align: left;\" class=\"field_title\"><p>Date of the first admission in the School with the class</p></td> <td width=\"50%\" style=\"text-align: left;\"><span style=\"font-weight: 700;\">{{reg_date}}</span><br></td> </tr> <tr> <td>08.</td> <td style=\"text-align: left;\" class=\"field_title\"><p>Date of birth(in Christain Era) according to Admission Register:</p></td> <td width=\"50%\" style=\"text-align: left;\"> <p><span style=\"background-color: transparent;\">In figures:&nbsp;</span><span style=\"font-weight: 700;\">{{date_of_birth}}</span></p> <p><span style=\"background-color: transparent;\">In words:</span></p> <p><b>{{date_of_birth_in_word}}</b><br></p> </td> </tr> <tr> <td>09.</td> <td style=\"text-align: left;\" class=\"field_title\">Class in which the pupil last studied/studying:</td> <td width=\"50%\" style=\"text-align: left;\"><b>{{leaving_time_class}}</b><br></td> </tr> <tr> <td>10.</td> <td style=\"text-align: left;\" class=\"field_title\">School/Board Annual Examination last taken with the result:&nbsp;<br></td> <td width=\"50%\" style=\"text-align: left;\"><span style=\"font-weight: 700;\">{{last_taken_exam_with_result}}</span><br></td> </tr> <tr> <td>11.</td> <td style=\"text-align: left;\" class=\"field_title\">Promoted Class :&nbsp;</td> <td width=\"50%\" style=\"text-align: left;\"><span style=\"font-weight: 700;\">{{promoted_class}}</span><br></td> </tr> <tr> <td>12.</td> <td style=\"text-align: left;\" class=\"field_title\">General Conduct :&nbsp;</td> <td width=\"50%\" style=\"text-align: left;\"><span style=\"font-weight: 700;\">{{character}}</span><br></td> </tr> <tr> <td>13.</td> <td style=\"text-align: left;\" class=\"field_title\"><p>Date of application for Transfer certificate :</p></td> <td width=\"50%\" style=\"text-align: left;\"><span style=\"font-weight: 700;\">{{date_of_issue}}</span><br></td> </tr> <tr> <td>14.</td> <td style=\"text-align: left;\" class=\"field_title\">Date of issue of Transfer certificate :</td> <td width=\"50%\" style=\"text-align: left;\"><span style=\"font-weight: 700;\">{{date_of_issue}}</span><br></td> </tr> <tr> <td>15.</td> <td style=\"text-align: left;\" class=\"field_title\"><p>Reason for leaving the school:</p></td> <td width=\"50%\" style=\"text-align: left;\"><b>{{qualified_to_promote}}</b><br></td> </tr> <tr> <td>16.</td> <td style=\"text-align: left;\" class=\"field_title\">Any other remarks:&nbsp;</td> <td width=\"50%\" style=\"text-align: left;\"><b>{{any_other_remark}}</b><br></td> </tr> </tbody></table><p></p><p></p><p style=\"text-align: right;\"><br></p><table class=\"table table-bordered\" style=\"text-align: right;\"> <tbody> <tr> <td> <p><br></p> <p style=\"text-align: center; \"><br></p> <p style=\"text-align: center; \">_______________________</p> <p style=\"text-align: center; \"><b>&nbsp;Prepared By</b></p> </td> <td> <p><br></p> <p style=\"text-align: center; \"><br></p> <p style=\"text-align: center; \">_______________________<br></p> <p style=\"text-align: center; \"><b>Checked By</b></p> </td> <td> <p><br></p> <p><br></p> <p style=\"text-align: center; \">_______________________<br></p> <p style=\"text-align: center; \"><b style=\"background-color: transparent;\">Sign of Principal with Official Seal</b><br></p> </td> </tr> </tbody></table><p style=\"text-align: right;\"><br></p>', NULL, '.subpage{padding: 0px;}.field_title{width:60%;}p{margin: 0 0 0px;}', 0, 0, 1),
(5, '2021-06-30 05:36:20', '2021-06-30 05:36:20', 1, NULL, 'NIRGAMUTARA_1', '<table class=\"table table-bordered\"> <tbody> <tr> <td style=\"text-align: left;\">01.</td><td style=\"text-align: left;\"> Admission No </td> <td style=\"text-align: left;\"><span style=\"color: rgb(57, 57, 57);\"><b>{{reg_no}}</b></span><br></td> </tr> <tr> <td style=\"text-align: left;\">02.</td><td style=\"text-align: left;\"> Student Full Name </td> <td style=\"text-align: left;\"><span style=\"color: rgb(57, 57, 57);\"><b>{{student_name}}</b>&nbsp;</span><br></td> </tr> <tr> <td style=\"text-align: left;\">03.</td><td style=\"text-align: left;\"> Parent Full Name </td> <td style=\"text-align: left;\"><span style=\"color: rgb(57, 57, 57);\"><b>{{parents_name}}</b></span><br></td> </tr> <tr> <td style=\"text-align: left;\">04.</td><td style=\"text-align: left;\"> Cast </td> <td style=\"text-align: left;\"><b>{{caste}}</b></td> </tr> <tr> <td style=\"text-align: left;\">05.</td><td style=\"text-align: left;\"> Parent Bussiness </td> <td style=\"text-align: left;\"><b><span style=\"color: rgb(57, 57, 57);\">{{father_occupation}} /&nbsp;</span>{{mother_occupation}}</b><br></td> </tr> <tr> <td style=\"text-align: left;\">06.</td><td style=\"text-align: left;\"> Mother Tongue </td> <td style=\"text-align: left;\"><span style=\"color: rgb(57, 57, 57);\"><b>{{mother_tongue}}</b></span><br></td> </tr> <tr> <td style=\"text-align: left;\">07.</td><td style=\"text-align: left;\"> Admission Date </td> <td style=\"text-align: left;\"><span style=\"color: rgb(57, 57, 57);\"><b>{{reg_date}}</b></span><br></td> </tr> <tr> <td style=\"text-align: left;\">08.</td><td style=\"text-align: left;\"> Birth Date in number </td> <td style=\"text-align: left;\"><b>{{date_of_birth}}</b><br></td> </tr> <tr> <td style=\"text-align: left;\">09.</td><td style=\"text-align: left;\"> Birth Date in word </td> <td style=\"text-align: left;\"><b>{{date_of_birth_in_word}}</b><br></td> </tr> <tr> <td style=\"text-align: left;\">10.</td><td style=\"text-align: left;\"> Class while admission </td> <td style=\"text-align: left;\"><b>{{join_time_class}}</b></td> </tr><tr><td style=\"text-align: left;\">11.</td><td style=\"text-align: left;\">Previous School Name</td><td style=\"text-align: left;\"><b>{{previous_school_name}}</b></td></tr><tr><td style=\"text-align: left;\">12.</td><td style=\"text-align: left;\">Standard</td><td style=\"text-align: left;\"><br></td></tr><tr><td style=\"text-align: left;\">13.</td><td style=\"text-align: left;\">Sign of Authority</td><td style=\"text-align: left;\"><br></td></tr><tr><td style=\"text-align: left;\">14.</td><td style=\"text-align: left;\">The class while leaving school</td><td style=\"text-align: left;\"><b>{{leaving_time_class}}</b><br></td></tr><tr><td style=\"text-align: left;\">15.</td><td style=\"text-align: left;\">Leaving Date</td><td style=\"text-align: left;\"><b>{{date_of_leaving}}</b></td></tr><tr><td style=\"text-align: left;\">16.</td><td style=\"text-align: left;\">Reason for leaving School</td><td style=\"text-align: left;\"><b>{{reason_to_leave}}</b></td></tr><tr><td style=\"text-align: left;\">17</td><td style=\"text-align: left;\">Mention 2 Body Mark</td><td style=\"text-align: left;\"><b>{{mention_body_mark}}</b></td></tr><tr><td style=\"text-align: left;\">18.</td><td style=\"text-align: left;\">Sign of Authority while leaving school</td><td style=\"text-align: left;\"><br></td></tr><tr><td style=\"text-align: left;\">19.</td><td style=\"text-align: left;\">Head Master\'s Sign</td><td style=\"text-align: left;\"><br></td></tr><tr><td style=\"text-align: left;\">20.</td><td style=\"text-align: left;\">Description</td><td style=\"text-align: left;\"><b>{{any_other_remark}}</b></td></tr> </tbody></table><p><br></p><table class=\"table table-bordered\"><tbody><tr><td><p>Date:</p></td><td>Place:<br></td><td style=\"text-align: center; \"><p><br></p><p><br></p><p>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;</p><p>______________________</p><p>Seal</p></td><td style=\"text-align: center; \"><p><br></p><p><br></p><p>______________________</p><p>Headmaster\'s Sign</p></td></tr></tbody></table><p><br></p><p><br></p>', NULL, '.subpage{padding: 0px;}', 0, 0, 1),
(6, '2021-06-30 05:36:20', '2021-06-30 05:36:20', 1, NULL, 'NIRGAMUTARA_2', '<table class=\"table table-bordered\"><tbody><tr><td>शालेचे नांवः</td><td><br></td><td>रजिस्टर नं.</td><td><br></td></tr></tbody></table><p><br></p><table class=\"table table-bordered\"><tbody><tr><td style=\"text-align: left;\">१</td><td style=\"text-align: left;\">प्रवेश अनुक्रमांक&nbsp;&nbsp;</td><td style=\"text-align: left;\"><span style=\"font-weight: 700; color: rgb(57, 57, 57);\">{{reg_no}}</span><br></td></tr><tr><td style=\"text-align: left;\">२</td><td style=\"text-align: left;\">विद्यार्थ्याचे संपूर्ण नांव अडनांवासह</td><td style=\"text-align: left;\"><span style=\"font-weight: 700;\">{{student_name}}</span><br></td></tr><tr><td style=\"text-align: left;\">३</td><td style=\"text-align: left;\">आई / वडिलांचे नांव / वडील ह्यात नसल्यास पालकाये नांव</td><td style=\"text-align: left;\"><span style=\"font-weight: 700; color: rgb(57, 57, 57);\">{{parents_name}}</span><br></td></tr><tr><td style=\"text-align: left;\">४</td><td style=\"text-align: left;\">जात</td><td style=\"text-align: left;\"><span style=\"font-weight: 700;\">{{caste}}</span><br></td></tr><tr><td style=\"text-align: left;\">५</td><td style=\"text-align: left;\">वडिल पालकाचा व्यवसाय</td><td style=\"text-align: left;\"><span style=\"font-weight: 700;\"><span style=\"color: rgb(57, 57, 57);\">{{father_occupation}} /&nbsp;</span>{{mother_occupation}}</span><br></td></tr><tr><td style=\"text-align: left;\">६</td><td style=\"text-align: left;\">मातृभाषा</td><td style=\"text-align: left;\"><span style=\"font-weight: 700; color: rgb(57, 57, 57);\">{{mother_tongue}}</span><br></td></tr><tr><td style=\"text-align: left;\">७</td><td style=\"text-align: left;\">प्रवेश दिनांक</td><td style=\"text-align: left;\"><span style=\"font-weight: 700; color: rgb(57, 57, 57);\">{{reg_date}}</span><br></td></tr><tr><td style=\"text-align: left;\">८</td><td style=\"text-align: left;\">जन्म दिनांक</td><td><p style=\"text-align: left;\">अंकातः&nbsp;<span style=\"font-weight: 700; background-color: transparent;\">{{date_of_birth}}</span></p><p style=\"text-align: left;\">अक्षरातः&nbsp;<span style=\"font-weight: 700; background-color: transparent;\">{{date_of_birth_in_word}}</span></p></td></tr><tr><td style=\"text-align: left;\">९</td><td style=\"text-align: left;\">प्रवेश समयीचा वर्ग</td><td style=\"text-align: left;\"><span style=\"font-weight: 700;\">{{join_time_class}}</span><br></td></tr><tr><td style=\"text-align: left;\">१०</td><td style=\"text-align: left;\">पुर्वीध्या शालेचे नांव</td><td style=\"text-align: left;\"><span style=\"font-weight: 700;\">{{previous_school_name}}</span><br></td></tr><tr><td style=\"text-align: left;\">११</td><td style=\"text-align: left;\">इयत्ता</td><td style=\"text-align: left;\"><br></td></tr><tr><td style=\"text-align: left;\">१२</td><td style=\"text-align: left;\">प्रवेश देणार्‍या अधिकार्‍यांची सही</td><td style=\"text-align: left;\"><br></td></tr><tr><td style=\"text-align: left;\">१३</td><td style=\"text-align: left;\">निर्गम समयी वर्ग</td><td style=\"text-align: left;\"><span style=\"font-weight: 700;\">{{leaving_time_class}}</span><br></td></tr><tr><td style=\"text-align: left;\">१४</td><td style=\"text-align: left;\">निर्गम दिनांक</td><td style=\"text-align: left;\"><span style=\"font-weight: 700;\">{{date_of_leaving}}</span><br></td></tr><tr><td style=\"text-align: left;\">१५</td><td style=\"text-align: left;\">शाला सोडण्याचे कारण</td><td style=\"text-align: left;\"><span style=\"font-weight: 700;\">{{reason_to_leave}}</span><br></td></tr><tr><td style=\"text-align: left;\">१६</td><td style=\"text-align: left;\">परिचय चिन्‍ह विद्यार्थ्याचे थोडक्यात दोन चिन्ह नाँदवावे</td><td style=\"text-align: left;\"><span style=\"font-weight: 700;\">{{mention_body_mark}}</span><br></td></tr><tr><td style=\"text-align: left;\">१७</td><td style=\"text-align: left;\">निर्गम समयी निर्गमाची नोंद घेणार्‍या अधिकारर्‍याची सही</td><td style=\"text-align: left;\"><br></td></tr><tr><td style=\"text-align: left;\">१८</td><td style=\"text-align: left;\">मुख्‍याध्यापकाची स्वाक्षरी</td><td style=\"text-align: left;\"><br></td></tr><tr><td style=\"text-align: left;\">१९</td><td style=\"text-align: left;\">विवरण</td><td style=\"text-align: left;\"><span style=\"font-weight: 700;\">{{any_other_remark}}</span><br></td></tr></tbody></table><p><br></p><p><br></p><table class=\"table table-bordered\"><tbody><tr><td style=\"text-align: left;\"><p>दिनांकः</p><p>स्थलः&nbsp;</p></td><td style=\"text-align: center; \">शालेचा शिका</td><td style=\"text-align: center; \">मुख्‍याध्यापकाची स्वाक्षरी</td></tr></tbody></table><p><br></p><p><br></p><p><br></p>', NULL, '.subpage{padding: 0px;}', 0, 0, 1),
(7, '2021-06-30 05:36:20', '2021-06-30 05:36:20', 1, NULL, 'CHARACTER', '<p>This is to certify that&nbsp;<span style=\"color: rgb(57, 57, 57);\"><b>{{student_name}}</b></span>&nbsp;Son of&nbsp;<span style=\"color: rgb(57, 57, 57);\"><b>{{father_name}}</b> </span>&amp;&nbsp;<span style=\"color: rgb(57, 57, 57);\"><b>{{mother_name}}</b></span>, Permanent Address<b>&nbsp;<span style=\"color: rgb(57, 57, 57);\">{{address}}</span></b>, is known to me for about&nbsp;<span style=\"color: rgb(57, 57, 57);\"><b>{{year}}</b></span>&nbsp;years. He is a citizen of&nbsp;<span style=\"color: rgb(57, 57, 57);\"><b>{{country}}</b>&nbsp;</span>by birth.</p><p><br></p><p>To the best of my knowledge, he bears a <b>{{character}}</b> character and is not involved in such activities which are against the state freedom and peace. I wish all success and prosperity in his life.</p>', NULL, '.subpage{padding: 100px;}', 0, 0, 1),
(8, '2021-06-30 05:36:20', '2021-06-30 05:36:20', 1, NULL, 'BONAFIDE', 'This is to certify that <b>{{student_name}} </b>Reg No. <b>{{reg_no}}</b>   Son of <b>{{parents_name}}</b> is a bonafide student of this College in the <b>{{course}}</b> course during the period <b>{{period}}</b>. His/Her Date of Birth as per our School/College record is <b>{{date_of_birth}}</b>.His/Her Conduct and Character are <b>{{character}}</b>.', NULL, '.subpage{padding: 100px;}', 0, 0, 1),
(9, '2021-06-30 05:36:20', '2021-06-30 05:36:20', 1, NULL, 'COURSE COMPLETION', '<p>This is to certify that <b>{{student_name}}</b> Reg No. <b>{{reg_no}}</b>&nbsp; Son of <b>{{parents_name}} </b>has studied <b>{{course}}</b> in our college during the <b>{{period}}</b>. His/Her Date of Birth as per our School/College record is <b>{{date_of_birth}}</b>.His/Her Conduct and Character are <b>{{character}}</b> during the tenure of his studies.<br></p>', NULL, '.subpage{padding: 100px;}', 0, 0, 1),
(10, '2021-06-30 05:36:20', '2021-06-30 05:36:20', 1, NULL, 'GENERAL TEMPLATE', '<p style=\"text-align: center; \">REG.NO.:<b>{{reg_no}}</b>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;REG.DATE: <b>{{reg_date}}</b></p><p style=\"text-align: center; \"><b><br></b></p><p style=\"text-align: center; \">This is to certify that <b>{{student_name}}</b> son/daughter of <b>{{parents_name}}</b> Residing at <b>{{address}}</b> is bonafide Student of our school.</p><p style=\"text-align: center; \"><br></p><p style=\"text-align: center; \">He/She is /was very obedient, sincere and hardworking.</p><p style=\"text-align: center; \"><br></p><p style=\"text-align: center; \">He/She bears a good moral character. His/Her Date of Birth is <b>{{date_of_birth}}</b> and Place of Birth is <b>{{address}}</b>.<br></p>', NULL, '.subpage{padding: 100px;}', 1, 0, 1),
(11, '2021-06-30 05:36:20', '2021-06-30 05:36:20', 1, NULL, 'IDENTITY CARD', '<h5 style=\"text-align: center;\"><b>{{student_name}}</b></h5><h6 style=\"text-align: center; \"><b>{{faculty}}-</b><b>{{semester}}</b></h6><p></p><p><b>PARENT : {{parents_name}}</b></p><p></p><p><b>ADDRESS : {{address}}</b></p><p><b>CONTACT : {{guardian_mobile_1}}</b></p><p><b>VALID DATE : JAN 2019-  FEB 2020</b></p><p></p>', NULL, '.subpage{padding:83px 5px 5px;color:#000!important}.page-content{padding:8px 20px 24px}h5{font-size:14px;margin:2px auto}h6{font-size:12px;margin:2px auto}.student_image{border-radius:0;width:100px;height:auto;border:2px #438eb9 solid}p{margin:1px 0 0;font-size:10px;text-align:left!important}', 1, 0, 1);

-- --------------------------------------------------------

--
-- Table structure for table `character_certificates`
--

CREATE TABLE `character_certificates` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `created_by` int(10) UNSIGNED NOT NULL,
  `last_updated_by` int(10) UNSIGNED DEFAULT NULL,
  `students_id` int(10) UNSIGNED NOT NULL,
  `date_of_issue` date NOT NULL,
  `cc_num` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `year` varchar(4) COLLATE utf8mb4_unicode_ci NOT NULL,
  `character` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `ref_text` text COLLATE utf8mb4_unicode_ci,
  `status` tinyint(1) NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `contact_directory_details`
--

CREATE TABLE `contact_directory_details` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `created_by` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `last_updated_by` int(10) UNSIGNED DEFAULT NULL,
  `contact_directory_groups_id` int(10) UNSIGNED NOT NULL,
  `name` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `sex` varchar(10) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `date_of_birth` date DEFAULT NULL,
  `religion` varchar(25) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `caste` varchar(25) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `nationality` varchar(25) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `mother_tongue` varchar(25) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `blood_group` varchar(5) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `address` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `tel` varchar(15) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `cell_1` varchar(15) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `cell_2` varchar(15) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `mailing_address` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `mailing_tel` varchar(15) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `mailing_cell_1` varchar(15) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `mailing_cell_2` varchar(15) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `mailing_email` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image` text COLLATE utf8mb4_unicode_ci,
  `status` tinyint(1) NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `contact_directory_groups`
--

CREATE TABLE `contact_directory_groups` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `created_by` int(10) UNSIGNED NOT NULL,
  `last_updated_by` int(10) UNSIGNED DEFAULT NULL,
  `title` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `contact_mesages`
--

CREATE TABLE `contact_mesages` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `first_name` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `last_name` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `address` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `phone` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `message` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `view_status` tinyint(1) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `course_completion_certificates`
--

CREATE TABLE `course_completion_certificates` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `created_by` int(10) UNSIGNED NOT NULL,
  `last_updated_by` int(10) UNSIGNED DEFAULT NULL,
  `students_id` int(10) UNSIGNED NOT NULL,
  `date_of_issue` date NOT NULL,
  `course` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `period` varchar(9) COLLATE utf8mb4_unicode_ci NOT NULL,
  `character` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `ref_text` text COLLATE utf8mb4_unicode_ci,
  `status` tinyint(1) NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `customers`
--

CREATE TABLE `customers` (
  `id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `created_by` int(10) UNSIGNED NOT NULL,
  `last_updated_by` int(10) UNSIGNED DEFAULT NULL,
  `reg_no` varchar(15) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `name` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `address` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `tel` varchar(15) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `mobile_1` varchar(10) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `mobile_2` varchar(10) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `extra_info` text COLLATE utf8mb4_unicode_ci,
  `customer_image` text COLLATE utf8mb4_unicode_ci,
  `customer_status` int(10) UNSIGNED DEFAULT NULL,
  `status` tinyint(1) NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `customer_statuses`
--

CREATE TABLE `customer_statuses` (
  `id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `created_by` int(10) UNSIGNED NOT NULL,
  `last_updated_by` int(10) UNSIGNED DEFAULT NULL,
  `title` varchar(25) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `customer_statuses`
--

INSERT INTO `customer_statuses` (`id`, `created_at`, `updated_at`, `created_by`, `last_updated_by`, `title`, `status`) VALUES
(1, '2021-06-30 05:36:20', '2021-06-30 05:36:20', 1, 1, 'New Customer', 1),
(2, '2021-06-30 05:36:20', '2021-06-30 05:36:20', 1, 1, 'Annual Contract', 1),
(3, '2021-06-30 05:36:20', '2021-06-30 05:36:20', 1, 1, 'Office Contract', 1),
(4, '2021-06-30 05:36:20', '2021-06-30 05:36:20', 1, 1, 'Individual', 1),
(5, '2021-06-30 05:36:20', '2021-06-30 05:36:20', 1, 1, 'inquiry/Lead', 1);

-- --------------------------------------------------------

--
-- Table structure for table `days`
--

CREATE TABLE `days` (
  `id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `created_by` int(10) UNSIGNED NOT NULL,
  `last_updated_by` int(10) UNSIGNED DEFAULT NULL,
  `title` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `days`
--

INSERT INTO `days` (`id`, `created_at`, `updated_at`, `created_by`, `last_updated_by`, `title`, `status`) VALUES
(1, '2021-06-30 05:33:58', '2021-06-30 05:33:58', 1, NULL, 'Sunday', 1),
(2, '2021-06-30 05:33:58', '2021-06-30 05:33:58', 1, NULL, 'Monday', 1),
(3, '2021-06-30 05:33:58', '2021-06-30 05:33:58', 1, NULL, 'Tuesday', 1),
(4, '2021-06-30 05:33:58', '2021-06-30 05:33:58', 1, NULL, 'Wednesday', 1),
(5, '2021-06-30 05:33:58', '2021-06-30 05:33:58', 1, NULL, 'Thursday', 1),
(6, '2021-06-30 05:33:58', '2021-06-30 05:33:58', 1, NULL, 'Friday', 1),
(7, '2021-06-30 05:33:58', '2021-06-30 05:33:58', 1, NULL, 'Saturday', 1);

-- --------------------------------------------------------

--
-- Table structure for table `documents`
--

CREATE TABLE `documents` (
  `id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `created_by` int(10) UNSIGNED NOT NULL,
  `last_updated_by` int(10) UNSIGNED DEFAULT NULL,
  `member_type` varchar(8) COLLATE utf8mb4_unicode_ci NOT NULL,
  `member_id` int(10) UNSIGNED NOT NULL,
  `title` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `file` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci,
  `status` tinyint(1) NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `downloads`
--

CREATE TABLE `downloads` (
  `id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `created_by` int(10) UNSIGNED NOT NULL,
  `last_updated_by` int(10) UNSIGNED DEFAULT NULL,
  `semesters_id` int(10) UNSIGNED DEFAULT NULL,
  `subjects_id` int(10) UNSIGNED DEFAULT NULL,
  `title` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci,
  `file` text COLLATE utf8mb4_unicode_ci,
  `status` tinyint(1) NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `eating_times`
--

CREATE TABLE `eating_times` (
  `id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `created_by` int(10) UNSIGNED NOT NULL,
  `last_updated_by` int(10) UNSIGNED DEFAULT NULL,
  `title` varchar(25) COLLATE utf8mb4_unicode_ci NOT NULL,
  `time` time DEFAULT NULL,
  `status` tinyint(1) NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `email_settings`
--

CREATE TABLE `email_settings` (
  `id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `created_by` int(10) UNSIGNED NOT NULL,
  `last_updated_by` int(10) UNSIGNED DEFAULT NULL,
  `driver` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `host` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `port` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_name` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `encryption` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `exams`
--

CREATE TABLE `exams` (
  `id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `created_by` int(10) UNSIGNED NOT NULL,
  `last_updated_by` int(10) UNSIGNED DEFAULT NULL,
  `title` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `exam_mark_ledgers`
--

CREATE TABLE `exam_mark_ledgers` (
  `id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `created_by` int(10) UNSIGNED NOT NULL,
  `last_updated_by` int(10) UNSIGNED DEFAULT NULL,
  `exam_schedule_id` int(10) UNSIGNED NOT NULL,
  `students_id` int(10) UNSIGNED NOT NULL,
  `obtain_mark_theory` int(11) NOT NULL DEFAULT '0',
  `absent_theory` tinyint(1) NOT NULL DEFAULT '0',
  `obtain_mark_practical` int(11) NOT NULL DEFAULT '0',
  `absent_practical` tinyint(1) NOT NULL DEFAULT '0',
  `sorting_order` int(10) UNSIGNED NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `exam_schedules`
--

CREATE TABLE `exam_schedules` (
  `id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `created_by` int(10) UNSIGNED NOT NULL,
  `last_updated_by` int(10) UNSIGNED DEFAULT NULL,
  `years_id` int(10) UNSIGNED NOT NULL,
  `months_id` int(10) UNSIGNED NOT NULL,
  `exams_id` int(10) UNSIGNED NOT NULL,
  `faculty_id` int(10) UNSIGNED NOT NULL,
  `semesters_id` int(10) UNSIGNED NOT NULL,
  `subjects_id` int(10) UNSIGNED NOT NULL,
  `date` datetime NOT NULL,
  `start_time` time NOT NULL,
  `end_time` time NOT NULL,
  `full_mark_theory` int(11) NOT NULL DEFAULT '0',
  `pass_mark_theory` int(11) NOT NULL DEFAULT '0',
  `full_mark_practical` int(11) NOT NULL DEFAULT '0',
  `pass_mark_practical` int(11) NOT NULL DEFAULT '0',
  `sorting_order` int(10) UNSIGNED NOT NULL,
  `publish_status` tinyint(1) NOT NULL DEFAULT '0',
  `status` tinyint(1) NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `faculties`
--

CREATE TABLE `faculties` (
  `id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `created_by` int(10) UNSIGNED NOT NULL,
  `last_updated_by` int(10) UNSIGNED DEFAULT NULL,
  `faculty` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `faculty_code` varchar(15) COLLATE utf8mb4_unicode_ci NOT NULL,
  `sorting` smallint(6) NOT NULL DEFAULT '0',
  `status` tinyint(1) NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `faculty_semester`
--

CREATE TABLE `faculty_semester` (
  `id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `faculty_id` int(10) UNSIGNED NOT NULL,
  `semester_id` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `fee_collections`
--

CREATE TABLE `fee_collections` (
  `id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `created_by` int(10) UNSIGNED NOT NULL,
  `last_updated_by` int(10) UNSIGNED DEFAULT NULL,
  `students_id` int(10) UNSIGNED NOT NULL,
  `fee_masters_id` int(10) UNSIGNED NOT NULL,
  `date` datetime NOT NULL,
  `paid_amount` int(11) NOT NULL,
  `discount` int(11) DEFAULT NULL,
  `fine` int(11) DEFAULT NULL,
  `payment_mode` varchar(15) COLLATE utf8mb4_unicode_ci NOT NULL,
  `note` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `response` text COLLATE utf8mb4_unicode_ci,
  `status` tinyint(1) NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `fee_heads`
--

CREATE TABLE `fee_heads` (
  `id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `created_by` int(10) UNSIGNED NOT NULL,
  `last_updated_by` int(10) UNSIGNED DEFAULT NULL,
  `fee_head_title` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `fee_head_amount` int(11) DEFAULT NULL,
  `status` tinyint(1) NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `fee_masters`
--

CREATE TABLE `fee_masters` (
  `id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `created_by` int(10) UNSIGNED NOT NULL,
  `last_updated_by` int(10) UNSIGNED DEFAULT NULL,
  `students_id` int(10) UNSIGNED NOT NULL,
  `semester` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `fee_head` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `fee_due_date` datetime NOT NULL,
  `fee_amount` int(11) NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `food_categories`
--

CREATE TABLE `food_categories` (
  `id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `created_by` int(10) UNSIGNED NOT NULL,
  `last_updated_by` int(10) UNSIGNED DEFAULT NULL,
  `title` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `food_items`
--

CREATE TABLE `food_items` (
  `id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `created_by` int(10) UNSIGNED NOT NULL,
  `last_updated_by` int(10) UNSIGNED DEFAULT NULL,
  `foodCategories_id` int(10) UNSIGNED NOT NULL,
  `title` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `price` int(11) DEFAULT NULL,
  `image` text COLLATE utf8mb4_unicode_ci,
  `description` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` tinyint(1) NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `food_item_food_schedule`
--

CREATE TABLE `food_item_food_schedule` (
  `id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `food_schedule_id` int(10) UNSIGNED NOT NULL,
  `food_item_id` int(10) UNSIGNED NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `food_schedules`
--

CREATE TABLE `food_schedules` (
  `id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `created_by` int(10) UNSIGNED NOT NULL,
  `last_updated_by` int(10) UNSIGNED DEFAULT NULL,
  `hostels_id` int(10) UNSIGNED NOT NULL,
  `days_id` int(10) UNSIGNED NOT NULL,
  `eating_times_id` int(10) UNSIGNED NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `general_settings`
--

CREATE TABLE `general_settings` (
  `id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `created_by` int(10) UNSIGNED NOT NULL,
  `last_updated_by` int(10) UNSIGNED DEFAULT NULL,
  `institute` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `salogan` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `copyright` text COLLATE utf8mb4_unicode_ci,
  `address` text COLLATE utf8mb4_unicode_ci,
  `phone` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `website` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `favicon` text COLLATE utf8mb4_unicode_ci,
  `logo` text COLLATE utf8mb4_unicode_ci,
  `tracking_code` text COLLATE utf8mb4_unicode_ci,
  `print_header` text COLLATE utf8mb4_unicode_ci,
  `print_footer` text COLLATE utf8mb4_unicode_ci,
  `facebook` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `twitter` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `linkedIn` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `youtube` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `googlePlus` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `instagram` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `whatsApp` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `skype` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `pinterest` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `wordpress` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `time_zones_id` int(10) UNSIGNED DEFAULT NULL,
  `quick_menu` tinyint(1) NOT NULL DEFAULT '0',
  `public_registration` tinyint(1) NOT NULL DEFAULT '0',
  `web_cms` tinyint(1) NOT NULL DEFAULT '1',
  `front_desk` tinyint(1) NOT NULL DEFAULT '1',
  `student_staff` tinyint(1) NOT NULL DEFAULT '1',
  `account` tinyint(1) NOT NULL DEFAULT '1',
  `inventory` tinyint(1) NOT NULL DEFAULT '1',
  `library` tinyint(1) NOT NULL DEFAULT '1',
  `attendance` tinyint(1) NOT NULL DEFAULT '1',
  `exam` tinyint(1) NOT NULL DEFAULT '1',
  `certificate` tinyint(1) NOT NULL DEFAULT '1',
  `hostel` tinyint(1) NOT NULL DEFAULT '1',
  `transport` tinyint(1) NOT NULL DEFAULT '1',
  `assignment` tinyint(1) NOT NULL DEFAULT '1',
  `upload_download` tinyint(1) NOT NULL DEFAULT '1',
  `meeting` tinyint(1) NOT NULL DEFAULT '1',
  `alert` tinyint(1) NOT NULL DEFAULT '1',
  `academic` tinyint(1) NOT NULL DEFAULT '1',
  `help` tinyint(1) NOT NULL DEFAULT '0',
  `status` tinyint(1) NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `general_settings`
--

INSERT INTO `general_settings` (`id`, `created_at`, `updated_at`, `created_by`, `last_updated_by`, `institute`, `salogan`, `copyright`, `address`, `phone`, `email`, `website`, `favicon`, `logo`, `tracking_code`, `print_header`, `print_footer`, `facebook`, `twitter`, `linkedIn`, `youtube`, `googlePlus`, `instagram`, `whatsApp`, `skype`, `pinterest`, `wordpress`, `time_zones_id`, `quick_menu`, `public_registration`, `web_cms`, `front_desk`, `student_staff`, `account`, `inventory`, `library`, `attendance`, `exam`, `certificate`, `hostel`, `transport`, `assignment`, `upload_download`, `meeting`, `alert`, `academic`, `help`, `status`) VALUES
(1, '2021-06-30 05:33:48', '2021-06-30 05:33:48', 1, 1, 'Unlimited EduFirm', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 0, 1);

-- --------------------------------------------------------

--
-- Table structure for table `grading_scales`
--

CREATE TABLE `grading_scales` (
  `id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `created_by` int(10) UNSIGNED NOT NULL,
  `last_updated_by` int(10) UNSIGNED DEFAULT NULL,
  `gradingType_id` int(10) UNSIGNED NOT NULL,
  `name` varchar(2) COLLATE utf8mb4_unicode_ci NOT NULL,
  `percentage_from` decimal(5,2) NOT NULL,
  `percentage_to` decimal(5,2) NOT NULL,
  `grade_point` int(11) DEFAULT NULL,
  `description` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` tinyint(1) NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `grading_types`
--

CREATE TABLE `grading_types` (
  `id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `created_by` int(10) UNSIGNED NOT NULL,
  `last_updated_by` int(10) UNSIGNED DEFAULT NULL,
  `title` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `guardian_details`
--

CREATE TABLE `guardian_details` (
  `id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `created_by` int(10) UNSIGNED NOT NULL,
  `last_updated_by` int(10) UNSIGNED DEFAULT NULL,
  `guardian_first_name` varchar(15) COLLATE utf8mb4_unicode_ci NOT NULL,
  `guardian_middle_name` varchar(15) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `guardian_last_name` varchar(15) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `guardian_eligibility` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `guardian_occupation` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `guardian_office` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `guardian_office_number` varchar(15) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `guardian_residence_number` varchar(15) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `guardian_mobile_1` varchar(15) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `guardian_mobile_2` varchar(15) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `guardian_email` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `guardian_relation` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `guardian_address` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `guardian_image` text COLLATE utf8mb4_unicode_ci,
  `status` tinyint(1) NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `hostels`
--

CREATE TABLE `hostels` (
  `id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `created_by` int(10) UNSIGNED NOT NULL,
  `last_updated_by` int(10) UNSIGNED DEFAULT NULL,
  `name` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `type` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL,
  `address` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `contact_detail` text COLLATE utf8mb4_unicode_ci,
  `warden` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `warden_contact` varchar(15) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` text COLLATE utf8mb4_unicode_ci,
  `status` tinyint(1) NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `hostel_meals`
--

CREATE TABLE `hostel_meals` (
  `id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `created_by` int(10) UNSIGNED NOT NULL,
  `last_updated_by` int(10) UNSIGNED DEFAULT NULL,
  `hostels_id` int(10) UNSIGNED NOT NULL,
  `days_id` int(10) UNSIGNED NOT NULL,
  `foods_id` int(10) UNSIGNED NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `institutions`
--

CREATE TABLE `institutions` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `jobs`
--

CREATE TABLE `jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `queue` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `attempts` tinyint(3) UNSIGNED NOT NULL,
  `reserved_at` int(10) UNSIGNED DEFAULT NULL,
  `available_at` int(10) UNSIGNED NOT NULL,
  `created_at` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `library_circulations`
--

CREATE TABLE `library_circulations` (
  `id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `created_by` int(10) UNSIGNED NOT NULL,
  `last_updated_by` int(10) UNSIGNED DEFAULT NULL,
  `user_type` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `code_prefix` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `issue_limit_days` int(10) UNSIGNED DEFAULT NULL,
  `issue_limit_books` int(10) UNSIGNED DEFAULT NULL,
  `fine_per_day` int(10) UNSIGNED DEFAULT NULL,
  `status` tinyint(1) NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `library_circulations`
--

INSERT INTO `library_circulations` (`id`, `created_at`, `updated_at`, `created_by`, `last_updated_by`, `user_type`, `slug`, `code_prefix`, `issue_limit_days`, `issue_limit_books`, `fine_per_day`, `status`) VALUES
(1, '2021-06-30 05:33:54', '2021-06-30 05:33:54', 1, NULL, 'Student', 'student', 'STUDLIB', 7, 5, 5, 1),
(2, '2021-06-30 05:33:54', '2021-06-30 05:33:54', 1, NULL, 'Staff', 'staff', 'STALIB', 15, 5, 0, 1);

-- --------------------------------------------------------

--
-- Table structure for table `library_members`
--

CREATE TABLE `library_members` (
  `id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `created_by` int(10) UNSIGNED NOT NULL,
  `last_updated_by` int(10) UNSIGNED DEFAULT NULL,
  `user_type` int(10) UNSIGNED NOT NULL,
  `member_id` int(10) UNSIGNED NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `library_members`
--

INSERT INTO `library_members` (`id`, `created_at`, `updated_at`, `created_by`, `last_updated_by`, `user_type`, `member_id`, `status`) VALUES
(1, '2021-12-12 11:25:53', '2021-12-12 11:25:53', 1, NULL, 2, 1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `mcq_answer_sheets`
--

CREATE TABLE `mcq_answer_sheets` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `mcq_exam_participants_id` int(10) UNSIGNED NOT NULL,
  `answer` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `mcq_exams`
--

CREATE TABLE `mcq_exams` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `created_by` int(10) UNSIGNED NOT NULL,
  `last_updated_by` int(10) UNSIGNED DEFAULT NULL,
  `title` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci,
  `faculty` int(10) UNSIGNED DEFAULT NULL,
  `semester` int(10) UNSIGNED DEFAULT NULL,
  `subjects_id` int(10) UNSIGNED NOT NULL,
  `mcq_instructions_id` int(10) UNSIGNED NOT NULL,
  `question_type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'dynamic',
  `no_of_question` int(11) DEFAULT NULL,
  `pass_mark` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `exam_type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'date_duration',
  `duration` int(11) NOT NULL,
  `start_date` date DEFAULT NULL,
  `end_date` date DEFAULT NULL,
  `start_date_time` datetime DEFAULT NULL,
  `end_date_time` datetime DEFAULT NULL,
  `exam_status` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'one',
  `mark_type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'percent',
  `result_status` tinyint(1) NOT NULL DEFAULT '0',
  `status` tinyint(1) NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `mcq_exam_participants`
--

CREATE TABLE `mcq_exam_participants` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `mcq_exams_id` int(10) UNSIGNED NOT NULL,
  `students_id` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `mcq_exam_questions`
--

CREATE TABLE `mcq_exam_questions` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `mcq_instructions`
--

CREATE TABLE `mcq_instructions` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `created_by` int(10) UNSIGNED NOT NULL,
  `last_updated_by` int(10) UNSIGNED DEFAULT NULL,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci,
  `status` tinyint(1) NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `mcq_questions`
--

CREATE TABLE `mcq_questions` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `created_by` int(10) UNSIGNED NOT NULL,
  `last_updated_by` int(10) UNSIGNED DEFAULT NULL,
  `subjects_id` int(10) UNSIGNED NOT NULL,
  `mcq_question_groups_id` int(10) UNSIGNED NOT NULL,
  `mcq_question_levels_id` int(10) UNSIGNED NOT NULL,
  `question` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `explanation` text COLLATE utf8mb4_unicode_ci,
  `image` text COLLATE utf8mb4_unicode_ci,
  `hints` text COLLATE utf8mb4_unicode_ci,
  `mark` double(8,2) NOT NULL,
  `type` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'Single',
  `status` tinyint(1) NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `mcq_question_groups`
--

CREATE TABLE `mcq_question_groups` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `created_by` int(10) UNSIGNED NOT NULL,
  `last_updated_by` int(10) UNSIGNED DEFAULT NULL,
  `title` varchar(25) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `mcq_question_levels`
--

CREATE TABLE `mcq_question_levels` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `created_by` int(10) UNSIGNED NOT NULL,
  `last_updated_by` int(10) UNSIGNED DEFAULT NULL,
  `title` varchar(25) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `mcq_question_options`
--

CREATE TABLE `mcq_question_options` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `created_by` int(10) UNSIGNED NOT NULL,
  `last_updated_by` int(10) UNSIGNED DEFAULT NULL,
  `mcq_questions_id` int(10) UNSIGNED NOT NULL,
  `option` text COLLATE utf8mb4_unicode_ci,
  `image` text COLLATE utf8mb4_unicode_ci,
  `answer_status` tinyint(1) NOT NULL DEFAULT '0',
  `status` tinyint(1) NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `meetings`
--

CREATE TABLE `meetings` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `created_by` int(10) UNSIGNED NOT NULL,
  `last_updated_by` int(10) UNSIGNED DEFAULT NULL,
  `semesters_id` int(10) UNSIGNED NOT NULL,
  `subjects_id` int(10) UNSIGNED NOT NULL,
  `meeting_id` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `topic` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `start_time` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `duration` int(11) NOT NULL,
  `timezone` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `start_url` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `join_url` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `history_type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `ref_text` text COLLATE utf8mb4_unicode_ci,
  `status` tinyint(1) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `meeting_settings`
--

CREATE TABLE `meeting_settings` (
  `id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `identity` varchar(15) COLLATE utf8mb4_unicode_ci NOT NULL,
  `logo` varchar(15) COLLATE utf8mb4_unicode_ci NOT NULL,
  `link` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `config` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `meeting_settings`
--

INSERT INTO `meeting_settings` (`id`, `created_at`, `updated_at`, `identity`, `logo`, `link`, `config`, `status`) VALUES
(1, NULL, NULL, 'Zoom', 'zoom', 'https://zoom.us', '{\"Key\":\"\",\"Secret\":\"\",\"Email\":\"\"}', 1);

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2017_10_04_100236_create_staff_designations_table', 1),
(4, '2017_10_05_003733_create_grading_types_table', 1),
(5, '2017_10_05_003849_create_grading_scales_table', 1),
(6, '2017_10_05_072329_create_staff_table', 1),
(7, '2017_10_06_085150_create_faculties_table', 1),
(8, '2017_10_06_085202_create_semesters_table', 1),
(9, '2017_10_09_094821_create_attendance_statuses_table', 1),
(10, '2017_10_10_083645_create_time_zones_table', 1),
(11, '2017_10_21_012144_create_bed_statuses_table', 1),
(12, '2017_10_27_010354_create_student_statuses_table', 1),
(13, '2017_10_28_060832_create_book_statuses_table', 1),
(14, '2017_10_29_074155_create_student_batches_table', 1),
(15, '2017_11_06_084909_create_customers_table', 1),
(16, '2017_11_06_084909_create_students_table', 1),
(17, '2017_11_06_085106_create_parent_details_table', 1),
(18, '2017_11_06_085135_create_guardian_details_table', 1),
(19, '2017_11_07_091332_create_faculty_semester_table', 1),
(20, '2017_11_11_120928_create_addressinfos_table', 1),
(21, '2017_11_17_011606_create_documents_table', 1),
(22, '2017_11_18_005300_create_notes_table', 1),
(23, '2017_11_19_055352_create_fee_heads_table', 1),
(24, '2017_11_20_012242_create_fee_masters_table', 1),
(25, '2017_11_21_035458_create_fee_collections_table', 1),
(26, '2017_11_26_014317_create_book_categories_table', 1),
(27, '2017_11_27_010354_create_customer_statuses_table', 1),
(28, '2017_11_27_094949_create_book_masters_table', 1),
(29, '2017_11_27_095001_create_books_table', 1),
(30, '2017_11_29_084116_create_library_circulations_table', 1),
(31, '2017_11_30_015025_create_library_members_table', 1),
(32, '2017_12_02_010529_create_book_issues_table', 1),
(33, '2017_12_06_005401_create_transaction_heads_table', 1),
(34, '2017_12_06_012542_create_transactions_table', 1),
(35, '2017_12_08_084025_create_payroll_heads_table', 1),
(36, '2017_12_08_090233_create_payroll_masters_table', 1),
(37, '2017_12_08_090813_create_salary_pays_table', 1),
(38, '2017_12_13_084859_create_years_table', 1),
(39, '2017_12_13_084925_create_months_table', 1),
(40, '2017_12_14_062342_create_attendance_masters_table', 1),
(41, '2017_12_14_063449_create_attendances_table', 1),
(42, '2018_02_15_104206_create_settings_table', 1),
(43, '2018_02_18_061426_create_sms_emails_table', 1),
(44, '2018_02_18_061538_create_notices_table', 1),
(45, '2018_03_02_003733_create_categories_table', 1),
(46, '2018_03_02_003849_create_sub_categories_table', 1),
(47, '2018_03_02_173947_create_subjects_table', 1),
(48, '2018_03_02_180148_create_semester_subject_table', 1),
(49, '2018_03_03_140508_create_exams_table', 1),
(50, '2018_03_03_140529_create_exam_schedules_table', 1),
(51, '2018_03_03_140543_create_exam_mark_ledgers_table', 1),
(52, '2018_03_09_155741_create_hostels_table', 1),
(53, '2018_03_10_002019_create_room_types_table', 1),
(54, '2018_03_18_233110_create_rooms_table', 1),
(55, '2018_03_20_175730_create_beds_table', 1),
(56, '2018_03_21_181903_create_residents_table', 1),
(57, '2018_03_21_190050_create_resident_histories_table', 1),
(58, '2018_03_26_233817_create_days_table', 1),
(59, '2018_03_27_045931_create_food_categories_table', 1),
(60, '2018_03_27_050051_create_food_items_table', 1),
(61, '2018_03_27_050835_create_hostel_meals_table', 1),
(62, '2018_03_27_223813_create_eating_times_table', 1),
(63, '2018_03_27_225950_create_food_schedules_table', 1),
(64, '2018_03_30_001832_create_food_item_food_schedule_table', 1),
(65, '2018_03_30_234754_create_routes_table', 1),
(66, '2018_03_30_234825_create_vehicles_table', 1),
(67, '2018_03_30_234840_create_route_vehicles_table', 1),
(68, '2018_03_31_000843_create_vehicle_staffs_table', 1),
(69, '2018_04_02_062605_create_general_settings_table', 1),
(70, '2018_04_03_054649_create_email_settings_table', 1),
(71, '2018_04_03_054651_create_meeting_settings_table', 1),
(72, '2018_04_03_054708_create_sms_settings_table', 1),
(73, '2018_04_03_055400_create_alert_settings_table', 1),
(74, '2018_04_29_234215_create_academic_infos_table', 1),
(75, '2018_05_22_001204_entrust_setup_tables', 1),
(76, '2018_05_28_101725_create_student_guardians_table', 1),
(77, '2018_05_30_141644_create_payment_settings_table', 1),
(78, '2018_06_04_091509_create_transport_users_table', 1),
(79, '2018_06_04_092336_create_transport_histories_table', 1),
(80, '2018_06_06_055405_create_assignments_table', 1),
(81, '2018_06_06_055442_create_assignment_answers_table', 1),
(82, '2018_06_06_055503_create_download_table', 1),
(83, '2019_01_18_065901_create_products_table', 1),
(84, '2019_01_29_032038_create_vendors_table', 1),
(85, '2019_01_29_042314_create_stocks_table', 1),
(86, '2019_01_29_042738_create_product_prices_table', 1),
(87, '2019_04_06_021557_create_payment_methods_table', 1),
(88, '2019_04_06_031653_create_banks_table', 1),
(89, '2019_04_06_031713_create_bank_transactions_table', 1),
(90, '2019_04_08_063125_create_account_categories_table', 1),
(91, '2019_04_11_090124_create_jobs_table', 1),
(92, '2019_05_04_152142_create_certificate_templates_table', 1),
(93, '2019_05_10_192213_create_subject_attendances_table', 1),
(94, '2019_07_08_064020_create_audits_table', 1),
(95, '2019_08_10_065318_create_attendance_certificates_table', 1),
(96, '2019_08_10_205022_create_certificate_histories_table', 1),
(97, '2019_08_12_081920_create_transfer_certificates_table', 1),
(98, '2019_08_14_070841_create_bonafide_certificates_table', 1),
(99, '2019_08_14_203420_create_course_completion_certificates_table', 1),
(100, '2019_10_08_205822_create_book_requests_table', 1),
(101, '2019_11_24_184741_create_assets_table', 1),
(102, '2019_11_24_184850_create_semester_assets_table', 1),
(103, '2020_01_16_223708_create_purchases_table', 1),
(104, '2020_01_16_223806_create_purchase_details_table', 1),
(105, '2020_01_16_223831_create_purchase_returns_table', 1),
(106, '2020_01_16_223855_create_sales_table', 1),
(107, '2020_01_16_223910_create_sales_details_table', 1),
(108, '2020_01_16_223928_create_sales_returns_table', 1),
(109, '2020_02_18_004730_create_postal_exchange_types_table', 1),
(110, '2020_02_19_011008_create_postal_exchanges_table', 1),
(111, '2020_02_20_073315_create_visitor_purposes_table', 1),
(112, '2020_02_20_073316_create_visitor_logs_table', 1),
(113, '2020_02_25_192332_create_online_payments_table', 1),
(114, '2020_04_12_165239_create_meetings_table', 1),
(115, '2020_04_21_115723_create_character_certificates_table', 1),
(116, '2020_04_27_084132_create_institutions_table', 1),
(117, '2020_06_02_052634_create_contact_mesages_table', 1),
(118, '2020_06_02_084527_create_web_general_settings_table', 1),
(119, '2020_06_02_084552_create_web_home_settings_table', 1),
(120, '2020_06_02_084614_create_web_contact_us_settings_table', 1),
(121, '2020_06_02_084631_create_web_about_us_settings_table', 1),
(122, '2020_06_02_084708_create_web_menus_table', 1),
(123, '2020_06_02_084730_create_web_pages_table', 1),
(124, '2020_06_02_084748_create_web_menu_pages_table', 1),
(125, '2020_06_02_084801_create_web_sliders_table', 1),
(126, '2020_06_02_084836_create_web_blog_categories_table', 1),
(127, '2020_06_02_084847_create_web_blogs_table', 1),
(128, '2020_06_02_084934_create_web_notices_table', 1),
(129, '2020_06_02_084951_create_web_events_table', 1),
(130, '2020_06_02_085003_create_web_services_table', 1),
(131, '2020_06_02_085025_create_web_galleries_table', 1),
(132, '2020_06_02_085043_create_web_gallery_images_table', 1),
(133, '2020_06_02_085333_create_web_downloads_table', 1),
(134, '2020_06_02_085346_create_web_faqs_table', 1),
(135, '2020_06_02_085407_create_web_counters_table', 1),
(136, '2020_06_02_085439_create_web_client_awards_table', 1),
(137, '2020_06_02_085513_create_web_testimonials_table', 1),
(138, '2020_06_02_085612_create_web_pricings_table', 1),
(139, '2020_06_02_085659_create_web_subscribers_table', 1),
(140, '2020_06_03_070919_create_web_contact_lists_table', 1),
(141, '2020_06_03_141541_create_web_registrations_table', 1),
(142, '2020_06_03_141927_create_web_registration_academic_qualifications_table', 1),
(143, '2020_06_03_142036_create_web_registration_programmes_table', 1),
(144, '2020_06_03_142129_create_web_registration_work_experiences_table', 1),
(145, '2020_06_03_142204_create_web_registration_settings_table', 1),
(146, '2020_06_03_144224_create_contact_directory_groups_table', 1),
(147, '2020_06_03_144309_create_contact_directory_details_table', 1),
(148, '2020_06_04_122625_create_web_staff_table', 1),
(149, '2020_06_06_165013_create_online_registration_settings_table', 1),
(150, '2020_06_06_200541_create_online_registration_programs_table', 1),
(151, '2020_06_11_060457_create_mcq_instructions_table', 1),
(152, '2020_06_11_060724_create_mcq_question_levels_table', 1),
(153, '2020_06_11_060826_create_mcq_question_groups_table', 1),
(154, '2020_06_11_060924_create_mcq_questions_table', 1),
(155, '2020_06_11_061052_create_mcq_exams_table', 1),
(156, '2020_06_11_061455_create_mcq_question_options_table', 1),
(157, '2020_06_11_061557_create_mcq_answer_sheets_table', 1),
(158, '2020_06_11_090611_create_mcq_exam_participants_table', 1),
(159, '2020_06_11_091053_create_mcq_exam_questions_table', 1),
(160, '2021_04_21_062308_create_nirgam_utara_certificates_table', 1);

-- --------------------------------------------------------

--
-- Table structure for table `months`
--

CREATE TABLE `months` (
  `id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `created_by` int(10) UNSIGNED NOT NULL,
  `last_updated_by` int(10) UNSIGNED DEFAULT NULL,
  `title` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `months`
--

INSERT INTO `months` (`id`, `created_at`, `updated_at`, `created_by`, `last_updated_by`, `title`, `status`) VALUES
(1, '2021-06-30 05:33:57', '2021-06-30 05:33:57', 1, NULL, 'January', 1),
(2, '2021-06-30 05:33:57', '2021-06-30 05:33:57', 1, NULL, 'February', 1),
(3, '2021-06-30 05:33:57', '2021-06-30 05:33:57', 1, NULL, 'March', 1),
(4, '2021-06-30 05:33:57', '2021-06-30 05:33:57', 1, NULL, 'April', 1),
(5, '2021-06-30 05:33:57', '2021-06-30 05:33:57', 1, NULL, 'May', 1),
(6, '2021-06-30 05:33:57', '2021-06-30 05:33:57', 1, NULL, 'June', 1),
(7, '2021-06-30 05:33:57', '2021-06-30 05:33:57', 1, NULL, 'July', 1),
(8, '2021-06-30 05:33:57', '2021-06-30 05:33:57', 1, NULL, 'August', 1),
(9, '2021-06-30 05:33:57', '2021-06-30 05:33:57', 1, NULL, 'September', 1),
(10, '2021-06-30 05:33:57', '2021-06-30 05:33:57', 1, NULL, 'October', 1),
(11, '2021-06-30 05:33:57', '2021-06-30 05:33:57', 1, NULL, 'November', 1),
(12, '2021-06-30 05:33:57', '2021-06-30 05:33:57', 1, NULL, 'December', 1);

-- --------------------------------------------------------

--
-- Table structure for table `nirgam_utara_certificates`
--

CREATE TABLE `nirgam_utara_certificates` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `created_by` int(10) UNSIGNED NOT NULL,
  `last_updated_by` int(10) UNSIGNED DEFAULT NULL,
  `students_id` int(10) UNSIGNED NOT NULL,
  `date_of_issue` date NOT NULL,
  `nu_num` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `date_of_leaving` date NOT NULL,
  `leaving_time_class` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `join_time_class` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `previous_school_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `reason_to_leave` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `mention_body_mark` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `any_other_remark` text COLLATE utf8mb4_unicode_ci,
  `ref_text` text COLLATE utf8mb4_unicode_ci,
  `status` tinyint(1) NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `notes`
--

CREATE TABLE `notes` (
  `id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `created_by` int(10) UNSIGNED NOT NULL,
  `last_updated_by` int(10) UNSIGNED DEFAULT NULL,
  `member_type` varchar(8) COLLATE utf8mb4_unicode_ci NOT NULL,
  `member_id` int(10) UNSIGNED NOT NULL,
  `subject` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `note` text COLLATE utf8mb4_unicode_ci,
  `status` tinyint(1) NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `notices`
--

CREATE TABLE `notices` (
  `id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `created_by` int(10) UNSIGNED NOT NULL,
  `last_updated_by` int(10) UNSIGNED DEFAULT NULL,
  `title` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `message` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `publish_date` datetime NOT NULL,
  `end_date` datetime NOT NULL,
  `display_group` text COLLATE utf8mb4_unicode_ci,
  `status` tinyint(1) NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `online_payments`
--

CREATE TABLE `online_payments` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `created_by` int(10) UNSIGNED NOT NULL,
  `last_updated_by` int(10) UNSIGNED DEFAULT NULL,
  `students_id` int(10) UNSIGNED NOT NULL,
  `date` datetime NOT NULL,
  `amount` int(11) NOT NULL,
  `payment_gateway` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `ref_no` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `ref_text` text COLLATE utf8mb4_unicode_ci,
  `note` text COLLATE utf8mb4_unicode_ci,
  `status` tinyint(1) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `online_registration_programs`
--

CREATE TABLE `online_registration_programs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `created_by` int(10) UNSIGNED NOT NULL,
  `last_updated_by` int(10) UNSIGNED DEFAULT NULL,
  `faculties_id` int(10) UNSIGNED NOT NULL,
  `start_date` date DEFAULT NULL,
  `end_date` date DEFAULT NULL,
  `status` tinyint(1) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `online_registration_settings`
--

CREATE TABLE `online_registration_settings` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `created_by` int(10) UNSIGNED NOT NULL,
  `last_updated_by` int(10) UNSIGNED DEFAULT NULL,
  `status` tinyint(1) NOT NULL DEFAULT '0',
  `title` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'Online Application for Admission',
  `logo` text COLLATE utf8mb4_unicode_ci,
  `start_date` date DEFAULT NULL,
  `end_date` date DEFAULT NULL,
  `rules_status` tinyint(1) NOT NULL DEFAULT '0',
  `rules` longtext COLLATE utf8mb4_unicode_ci,
  `agreement_status` tinyint(1) NOT NULL DEFAULT '0',
  `agreement` longtext COLLATE utf8mb4_unicode_ci,
  `registration_guidelines` longtext COLLATE utf8mb4_unicode_ci,
  `registration_close_message` longtext COLLATE utf8mb4_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `parent_details`
--

CREATE TABLE `parent_details` (
  `id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `created_by` int(10) UNSIGNED NOT NULL,
  `last_updated_by` int(10) UNSIGNED DEFAULT NULL,
  `students_id` int(10) UNSIGNED NOT NULL,
  `grandfather_first_name` varchar(15) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `grandfather_middle_name` varchar(15) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `grandfather_last_name` varchar(15) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `father_first_name` varchar(15) COLLATE utf8mb4_unicode_ci NOT NULL,
  `father_middle_name` varchar(15) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `father_last_name` varchar(15) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `father_eligibility` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `father_occupation` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `father_office` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `father_office_number` varchar(15) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `father_residence_number` varchar(15) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `father_mobile_1` varchar(15) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `father_mobile_2` varchar(15) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `father_email` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `mother_first_name` varchar(15) COLLATE utf8mb4_unicode_ci NOT NULL,
  `mother_middle_name` varchar(15) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `mother_last_name` varchar(15) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `mother_eligibility` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `mother_occupation` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `mother_office` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `mother_office_number` varchar(15) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `mother_residence_number` varchar(15) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `mother_mobile_1` varchar(15) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `mother_mobile_2` varchar(15) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `mother_email` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `father_image` text COLLATE utf8mb4_unicode_ci,
  `mother_image` text COLLATE utf8mb4_unicode_ci,
  `status` tinyint(1) NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `password_resets`
--

INSERT INTO `password_resets` (`email`, `token`, `created_at`) VALUES
('fkhalid42@gmail.com', '$2y$10$6n8/hczCoB0biU3Xw62EQub6c.1oom7ZlYonwTWv8xX4Dt2NDQnqi', '2021-12-12 11:25:45');

-- --------------------------------------------------------

--
-- Table structure for table `payment_methods`
--

CREATE TABLE `payment_methods` (
  `id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `created_by` int(10) UNSIGNED NOT NULL,
  `last_updated_by` int(10) UNSIGNED DEFAULT NULL,
  `title` varchar(25) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `payment_methods`
--

INSERT INTO `payment_methods` (`id`, `created_at`, `updated_at`, `created_by`, `last_updated_by`, `title`, `status`) VALUES
(1, '2021-06-30 05:34:12', '2021-06-30 05:34:12', 1, 1, 'Cash', 1),
(2, '2021-06-30 05:34:12', '2021-06-30 05:34:12', 1, 1, 'Bank', 1),
(3, '2021-06-30 05:34:12', '2021-06-30 05:34:12', 1, 1, 'Online Payment', 1);

-- --------------------------------------------------------

--
-- Table structure for table `payment_settings`
--

CREATE TABLE `payment_settings` (
  `id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `identity` varchar(15) COLLATE utf8mb4_unicode_ci NOT NULL,
  `logo` varchar(15) COLLATE utf8mb4_unicode_ci NOT NULL,
  `link` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `config` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `payment_settings`
--

INSERT INTO `payment_settings` (`id`, `created_at`, `updated_at`, `identity`, `logo`, `link`, `config`, `status`) VALUES
(1, NULL, NULL, 'Stripe', 'stripe', 'https://stripe.com', '{\"Publishable_Key\":\"\",\"Secret_Key\":\"\"}', 0),
(2, NULL, NULL, 'Instamojo', 'instamojo', 'https://www.instamojo.com', '{\"API_KEY\":\"\",\"AUTH_TOKEN\":\"\"}', 0),
(3, NULL, NULL, 'PayUMoney', 'payumoney', 'https://www.payumoney.com', '{\"Merchant_Key\":\"\",\"Merchant_Salt\":\"\",\"Auth_Header\":\"\"}', 0),
(4, NULL, NULL, 'RozorPay', 'rozorpay', 'https://razorpay.com', '{\"Key\":\"\",\"Secret\":\"\"}', 0),
(5, NULL, NULL, 'PayStack', 'paystack', 'https://paystack.co', '{\"publicKey\":\"\",\"secretKey\":\"\",\"merchantEmail\":\"\"}', 0);

-- --------------------------------------------------------

--
-- Table structure for table `payroll_heads`
--

CREATE TABLE `payroll_heads` (
  `id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `created_by` int(10) UNSIGNED NOT NULL,
  `last_updated_by` int(10) UNSIGNED DEFAULT NULL,
  `title` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `payroll_masters`
--

CREATE TABLE `payroll_masters` (
  `id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `created_by` int(10) UNSIGNED NOT NULL,
  `last_updated_by` int(10) UNSIGNED DEFAULT NULL,
  `staff_id` int(10) UNSIGNED NOT NULL,
  `tag_line` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `payroll_head` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `due_date` datetime NOT NULL,
  `amount` int(11) NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `permissions`
--

CREATE TABLE `permissions` (
  `id` int(10) UNSIGNED NOT NULL,
  `group` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `display_name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `group_head` tinyint(1) NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `permissions`
--

INSERT INTO `permissions` (`id`, `group`, `name`, `display_name`, `description`, `group_head`, `created_at`, `updated_at`) VALUES
(1, 'Super Admin Setup Permission', 'super-admin-index', 'Super Admin Setup Permission', 'Super Admin Setup Permission', 1, '2021-06-30 05:29:08', '2021-06-30 05:29:08'),
(2, 'Menu', 'expand-action-menu', 'Expand Nav Menu', 'Expand Nav Menu', 0, '2021-06-30 05:29:09', '2021-06-30 05:29:09'),
(3, 'Menu', 'admin-control', 'Admin Control', 'Admin Control Menu', 0, '2021-06-30 05:29:09', '2021-06-30 05:29:09'),
(4, 'Menu', 'dashboard', 'Dashboard', 'Dashboard Menu', 0, '2021-06-30 05:29:09', '2021-06-30 05:29:09'),
(5, 'Menu', 'web-cms', 'Web CMS', 'Web CMS Menu', 0, '2021-06-30 05:29:10', '2021-06-30 05:29:10'),
(6, 'Menu', 'front-office', 'Front Office', 'Front Office Menu', 0, '2021-06-30 05:29:10', '2021-06-30 05:29:10'),
(7, 'Menu', 'student-staff', 'Student-Staff', 'Student-Staff Menu', 0, '2021-06-30 05:29:10', '2021-06-30 05:29:10'),
(8, 'Menu', 'account', 'Account', 'Account Menu', 0, '2021-06-30 05:29:10', '2021-06-30 05:29:10'),
(9, 'Menu', 'inventory', 'Inventory', 'Inventory Menu', 0, '2021-06-30 05:29:10', '2021-06-30 05:29:10'),
(10, 'Menu', 'library', 'Library', 'Libaray Menu', 0, '2021-06-30 05:29:10', '2021-06-30 05:29:10'),
(11, 'Menu', 'attendance', 'Attendance', 'Attendance Menu', 0, '2021-06-30 05:29:10', '2021-06-30 05:29:10'),
(12, 'Menu', 'examination', 'Examination', 'Examination Menu', 0, '2021-06-30 05:29:11', '2021-06-30 05:29:11'),
(13, 'Menu', 'certificate', 'Certificate', 'Certificate Menu', 0, '2021-06-30 05:29:11', '2021-06-30 05:29:11'),
(14, 'Menu', 'hostel', 'Hostel', 'Hostel Menu', 0, '2021-06-30 05:29:11', '2021-06-30 05:29:11'),
(15, 'Menu', 'transport', 'Transport', 'Transport Menu', 0, '2021-06-30 05:29:11', '2021-06-30 05:29:11'),
(16, 'Menu', 'assignment', 'Assignment', 'Assignment Menu', 0, '2021-06-30 05:29:11', '2021-06-30 05:29:11'),
(17, 'Menu', 'download', 'Download', 'Download Menu', 0, '2021-06-30 05:29:11', '2021-06-30 05:29:11'),
(18, 'Menu', 'meeting', 'Meeting', 'Meeting Menu', 0, '2021-06-30 05:29:11', '2021-06-30 05:29:11'),
(19, 'Menu', 'report', 'Report', 'Report Menu', 0, '2021-06-30 05:29:11', '2021-06-30 05:29:11'),
(20, 'Menu', 'alert-center', 'Alert Center', 'Alert Center Menu', 0, '2021-06-30 05:29:11', '2021-06-30 05:29:11'),
(21, 'Menu', 'academic', 'Academic Setup', 'Academic Setup Menu', 0, '2021-06-30 05:29:11', '2021-06-30 05:29:11'),
(22, 'Menu', 'help', 'Help', 'Help Menu', 0, '2021-06-30 05:29:11', '2021-06-30 05:29:11'),
(23, 'Student Menu', 'student-dashboard', 'Dashboard', 'Dashboard Student Menu', 0, '2021-06-30 05:29:11', '2021-06-30 05:29:11'),
(24, 'Student Menu', 'student-profile', 'Profile', 'Profile Student Menu', 0, '2021-06-30 05:29:12', '2021-06-30 05:29:12'),
(25, 'Student Menu', 'student-profile-edit', 'Profile Edit', 'Profile Edit Student Menu', 0, '2021-06-30 05:29:12', '2021-06-30 05:29:12'),
(26, 'Student Menu', 'student-fees', 'Fees', 'Fees Student Menu', 0, '2021-06-30 05:29:12', '2021-06-30 05:29:12'),
(27, 'Student Menu', 'student-library', 'Library', 'Library Student Menu', 0, '2021-06-30 05:29:12', '2021-06-30 05:29:12'),
(28, 'Student Menu', 'student-attendance', 'Attendance', 'Attendance Student Menu', 0, '2021-06-30 05:29:12', '2021-06-30 05:29:12'),
(29, 'Student Menu', 'student-exam', 'Exam', 'Exam Student Menu', 0, '2021-06-30 05:29:12', '2021-06-30 05:29:12'),
(30, 'Student Menu', 'student-hostel', 'Hostel', 'Hostel Student Menu', 0, '2021-06-30 05:29:12', '2021-06-30 05:29:12'),
(31, 'Student Menu', 'student-transport', 'Transport', 'Transport Student Menu', 0, '2021-06-30 05:29:12', '2021-06-30 05:29:12'),
(32, 'Student Menu', 'student-course', 'Course', 'Course Student Menu', 0, '2021-06-30 05:29:12', '2021-06-30 05:29:12'),
(33, 'Student Menu', 'student-notice', 'Notice', 'Notice Student Menu', 0, '2021-06-30 05:29:12', '2021-06-30 05:29:12'),
(34, 'Student Menu', 'student-download', 'Download', 'Download Student Menu', 0, '2021-06-30 05:29:12', '2021-06-30 05:29:12'),
(35, 'Student Menu', 'student-assignment', 'Assignment', 'Assignment Student Menu', 0, '2021-06-30 05:29:12', '2021-06-30 05:29:12'),
(36, 'Student Menu', 'student-meeting', 'Meeting', 'Meeting Student Menu', 0, '2021-06-30 05:29:12', '2021-06-30 05:29:12'),
(37, 'Guardian Menu', 'guardian-dashboard', 'Dashboard', 'Dashboard Guardian Menu', 0, '2021-06-30 05:29:12', '2021-06-30 05:29:12'),
(38, 'Guardian Menu', 'guardian-profile-edit', 'Profile Edit', 'Profile Edit Guardian Menu', 0, '2021-06-30 05:29:13', '2021-06-30 05:29:13'),
(39, 'Guardian Menu', 'guardian-notice', 'Notice', 'Notice Guardian Menu', 0, '2021-06-30 05:29:13', '2021-06-30 05:29:13'),
(40, 'Guardian Menu', 'guardian-student-list', 'Student List', 'Student List Guardian Menu', 0, '2021-06-30 05:29:13', '2021-06-30 05:29:13'),
(41, 'Guardian Menu', 'guardian-student-profile', 'Student Profile', 'Student Profile Guardian Menu', 0, '2021-06-30 05:29:13', '2021-06-30 05:29:13'),
(42, 'Guardian Menu', 'guardian-student-fees', 'Fees', 'Fees Guardian Menu', 0, '2021-06-30 05:29:13', '2021-06-30 05:29:13'),
(43, 'Guardian Menu', 'guardian-student-library', 'Library', 'Library Guardian Menu', 0, '2021-06-30 05:29:13', '2021-06-30 05:29:13'),
(44, 'Guardian Menu', 'guardian-student-attendance', 'Attendance', 'Attendance Guardian Menu', 0, '2021-06-30 05:29:14', '2021-06-30 05:29:14'),
(45, 'Guardian Menu', 'guardian-student-hostel', 'Hostel', 'Hostel Guardian Menu', 0, '2021-06-30 05:29:14', '2021-06-30 05:29:14'),
(46, 'Guardian Menu', 'guardian-student-transport', 'Transport', 'Transport Guardian Menu', 0, '2021-06-30 05:29:14', '2021-06-30 05:29:14'),
(47, 'Guardian Menu', 'guardian-student-course', 'Course', 'Course Guardian Menu', 0, '2021-06-30 05:29:14', '2021-06-30 05:29:14'),
(48, 'Guardian Menu', 'guardian-student-download', 'Download', 'Download Guardian Menu', 0, '2021-06-30 05:29:14', '2021-06-30 05:29:14'),
(49, 'Guardian Menu', 'guardian-student-exam', 'Exam', 'Exam Guardian Menu', 0, '2021-06-30 05:29:14', '2021-06-30 05:29:14'),
(50, 'Guardian Menu', 'guardian-student-assignment', 'Assignment', 'Assignment Guardian Menu', 0, '2021-06-30 05:29:14', '2021-06-30 05:29:14'),
(51, 'Super Suit', 'super-suit', 'Super Suit', 'Super Suit', 0, '2021-06-30 05:29:14', '2021-06-30 05:29:14'),
(52, 'User Activity', 'user-activity-index', 'Index', 'User Activity Index', 0, '2021-06-30 05:29:14', '2021-06-30 05:29:14'),
(53, 'User Activity', 'user-activity-delete', 'Delete', 'Delete User Activity', 0, '2021-06-30 05:29:14', '2021-06-30 05:29:14'),
(54, 'User Activity', 'user-activity-bulk-action', 'Bulk(Active,InActive,Delete)', 'User Activity Bulk Action', 0, '2021-06-30 05:29:14', '2021-06-30 05:29:14'),
(55, 'Role', 'role-index', 'Index', 'Role Index', 0, '2021-06-30 05:29:14', '2021-06-30 05:29:14'),
(56, 'Role', 'role-add', 'Add', 'Role Add', 0, '2021-06-30 05:29:15', '2021-06-30 05:29:15'),
(57, 'Role', 'role-view', 'View', 'View Role', 0, '2021-06-30 05:29:15', '2021-06-30 05:29:15'),
(58, 'Role', 'role-edit', 'Edit', 'Edit Role', 0, '2021-06-30 05:29:15', '2021-06-30 05:29:15'),
(59, 'Role', 'role-delete', 'Delete', 'Delete Role', 0, '2021-06-30 05:29:15', '2021-06-30 05:29:15'),
(60, 'User', 'user-index', 'Index', 'User Index', 0, '2021-06-30 05:29:15', '2021-06-30 05:29:15'),
(61, 'User', 'user-add', 'Add', 'User Add', 0, '2021-06-30 05:29:15', '2021-06-30 05:29:15'),
(62, 'User', 'user-edit', 'Edit', 'Edit User', 0, '2021-06-30 05:29:15', '2021-06-30 05:29:15'),
(63, 'User', 'user-delete', 'Delete', 'Delete User', 0, '2021-06-30 05:29:15', '2021-06-30 05:29:15'),
(64, 'User', 'user-active', 'Active', 'Active User', 0, '2021-06-30 05:29:15', '2021-06-30 05:29:15'),
(65, 'User', 'user-in-active', 'In-Active', 'In-Active User', 0, '2021-06-30 05:29:15', '2021-06-30 05:29:15'),
(66, 'User', 'user-bulk-action', 'Bulk(Active,InActive,Delete)', 'User Bulk Action', 0, '2021-06-30 05:29:15', '2021-06-30 05:29:15'),
(67, 'General Setting', 'general-setting-index', 'Index', 'General Setting Index', 0, '2021-06-30 05:29:16', '2021-06-30 05:29:16'),
(68, 'General Setting', 'general-setting-add', 'Add', 'General Setting Add', 0, '2021-06-30 05:29:16', '2021-06-30 05:29:16'),
(69, 'General Setting', 'general-setting-edit', 'Edit', 'Edit General Setting', 0, '2021-06-30 05:29:16', '2021-06-30 05:29:16'),
(70, 'Alert Setting', 'alert-setting-index', 'Index', 'Alert Setting Index', 0, '2021-06-30 05:29:16', '2021-06-30 05:29:16'),
(71, 'Alert Setting', 'alert-setting-add', 'Add', 'Alert Setting Add', 0, '2021-06-30 05:29:16', '2021-06-30 05:29:16'),
(72, 'Alert Setting', 'alert-setting-edit', 'Edit', 'Edit Alert Setting', 0, '2021-06-30 05:29:16', '2021-06-30 05:29:16'),
(73, 'SMS Setting', 'sms-setting-index', 'Index', 'SMS Setting Index', 0, '2021-06-30 05:29:16', '2021-06-30 05:29:16'),
(74, 'SMS Setting', 'sms-setting-add', 'Add', 'SMS Setting Add', 0, '2021-06-30 05:29:16', '2021-06-30 05:29:16'),
(75, 'SMS Setting', 'sms-setting-edit', 'Edit', 'Edit SMS Setting', 0, '2021-06-30 05:29:17', '2021-06-30 05:29:17'),
(76, 'SMS Setting', 'sms-setting-active', 'Active', 'Active SMS', 0, '2021-06-30 05:29:17', '2021-06-30 05:29:17'),
(77, 'SMS Setting', 'sms-setting-in-active', 'In-Active', 'In-Active SMS', 0, '2021-06-30 05:29:17', '2021-06-30 05:29:17'),
(78, 'Email Setting', 'email-setting-index', 'Index', 'Email Setting Index', 0, '2021-06-30 05:29:17', '2021-06-30 05:29:17'),
(79, 'Email Setting', 'email-setting-add', 'Add', 'Email Setting Add', 0, '2021-06-30 05:29:17', '2021-06-30 05:29:17'),
(80, 'Email Setting', 'email-setting-edit', 'Edit', 'Edit Email Setting', 0, '2021-06-30 05:29:17', '2021-06-30 05:29:17'),
(81, 'Email Setting', 'email-setting-status-change', 'Status', 'Change Status', 0, '2021-06-30 05:29:17', '2021-06-30 05:29:17'),
(82, 'Payment Gateway Setting', 'payment-gateway-setting-index', 'Index', 'Payment Gateway Setting Index', 0, '2021-06-30 05:29:17', '2021-06-30 05:29:17'),
(83, 'Payment Gateway Setting', 'payment-gateway-setting-add', 'Add', 'Payment Gateway Setting Add', 0, '2021-06-30 05:29:17', '2021-06-30 05:29:17'),
(84, 'Payment Gateway Setting', 'payment-gateway-setting-edit', 'Edit', 'Edit Payment Gateway Setting', 0, '2021-06-30 05:29:18', '2021-06-30 05:29:18'),
(85, 'Payment Gateway Setting', 'payment-gateway-active', 'Active', 'Active Payment Gateway', 0, '2021-06-30 05:29:18', '2021-06-30 05:29:18'),
(86, 'Payment Gateway Setting', 'payment-gateway-in-active', 'In-Active', 'In-Active Payment Gateway', 0, '2021-06-30 05:29:18', '2021-06-30 05:29:18'),
(87, 'Payment Method Setting', 'payment-method-index', 'Index', 'Payment Method Setting Index', 0, '2021-06-30 05:29:18', '2021-06-30 05:29:18'),
(88, 'Payment Method Setting', 'payment-method-add', 'Add', 'Payment Method Setting Add', 0, '2021-06-30 05:29:18', '2021-06-30 05:29:18'),
(89, 'Payment Method Setting', 'payment-method-edit', 'Edit', 'Edit Payment Method Setting', 0, '2021-06-30 05:29:18', '2021-06-30 05:29:18'),
(90, 'Payment Method Setting', 'payment-method-delete', 'Delete', 'Delete Payment Method', 0, '2021-06-30 05:29:18', '2021-06-30 05:29:18'),
(91, 'Payment Method Setting', 'payment-method-active', 'Active', 'Active Payment Method', 0, '2021-06-30 05:29:18', '2021-06-30 05:29:18'),
(92, 'Payment Method Setting', 'payment-method-in-active', 'In-Active', 'In-Active Payment Method', 0, '2021-06-30 05:29:18', '2021-06-30 05:29:18'),
(93, 'Payment Method Setting', 'payment-method-bulk-action', 'Bulk(Active,In-Active,Delete)', 'Bulk Action', 0, '2021-06-30 05:29:19', '2021-06-30 05:29:19'),
(94, 'Meeting Setting', 'meeting-setting-index', 'Index', 'Meeting Setting Index', 0, '2021-06-30 05:29:19', '2021-06-30 05:29:19'),
(95, 'Meeting Setting', 'meeting-setting-add', 'Add', 'Meeting Setting Add', 0, '2021-06-30 05:29:19', '2021-06-30 05:29:19'),
(96, 'Meeting Setting', 'meeting-setting-edit', 'Edit', 'Edit Meeting Setting', 0, '2021-06-30 05:29:19', '2021-06-30 05:29:19'),
(97, 'Meeting Setting', 'meeting-setting-active', 'Active', 'Active SMS', 0, '2021-06-30 05:29:19', '2021-06-30 05:29:19'),
(98, 'Meeting Setting', 'meeting-setting-in-active', 'In-Active', 'In-Active SMS', 0, '2021-06-30 05:29:19', '2021-06-30 05:29:19'),
(99, 'Academic Management Permission', 'academic-index', 'Academic Permission', 'Academic Permission', 1, '2021-06-30 05:29:19', '2021-06-30 05:29:19'),
(100, 'Faculty', 'faculty-index', 'Index', 'Faculty Index', 0, '2021-06-30 05:29:19', '2021-06-30 05:29:19'),
(101, 'Faculty', 'faculty-add', 'Add', 'Faculty Add', 0, '2021-06-30 05:29:19', '2021-06-30 05:29:19'),
(102, 'Faculty', 'faculty-edit', 'Edit', 'Edit Faculty', 0, '2021-06-30 05:29:19', '2021-06-30 05:29:19'),
(103, 'Faculty', 'faculty-delete', 'Delete', 'Delete Faculty', 0, '2021-06-30 05:29:20', '2021-06-30 05:29:20'),
(104, 'Faculty', 'faculty-active', 'Active', 'Active Faculty', 0, '2021-06-30 05:29:20', '2021-06-30 05:29:20'),
(105, 'Faculty', 'faculty-in-active', 'In-Active', 'In-Active Faculty', 0, '2021-06-30 05:29:20', '2021-06-30 05:29:20'),
(106, 'Faculty', 'faculty-bulk-action', 'Bulk(Active,InActive,Delete)', 'Faculty Bulk Action', 0, '2021-06-30 05:29:20', '2021-06-30 05:29:20'),
(107, 'Semester', 'semester-index', 'Index', 'Semester Index', 0, '2021-06-30 05:29:20', '2021-06-30 05:29:20'),
(108, 'Semester', 'semester-add', 'Add', 'Semester Add', 0, '2021-06-30 05:29:20', '2021-06-30 05:29:20'),
(109, 'Semester', 'semester-edit', 'Edit', 'Edit Semester', 0, '2021-06-30 05:29:20', '2021-06-30 05:29:20'),
(110, 'Semester', 'semester-delete', 'Delete', 'Delete Semester', 0, '2021-06-30 05:29:20', '2021-06-30 05:29:20'),
(111, 'Semester', 'semester-active', 'Active', 'Active Semester', 0, '2021-06-30 05:29:20', '2021-06-30 05:29:20'),
(112, 'Semester', 'semester-in-active', 'In-Active', 'In-Active Semester', 0, '2021-06-30 05:29:20', '2021-06-30 05:29:20'),
(113, 'Semester', 'semester-bulk-action', 'Bulk(Active,InActive,Delete)', 'Semester Bulk Action', 0, '2021-06-30 05:29:20', '2021-06-30 05:29:20'),
(114, 'Student Batch', 'student-batch-index', 'Index', 'Student Batch Index', 0, '2021-06-30 05:29:21', '2021-06-30 05:29:21'),
(115, 'Student Batch', 'student-batch-add', 'Add', 'Student Batch Add', 0, '2021-06-30 05:29:21', '2021-06-30 05:29:21'),
(116, 'Student Batch', 'student-batch-edit', 'Edit', 'Edit Student Batch', 0, '2021-06-30 05:29:21', '2021-06-30 05:29:21'),
(117, 'Student Batch', 'student-batch-delete', 'Delete', 'Delete Student Batch', 0, '2021-06-30 05:29:21', '2021-06-30 05:29:21'),
(118, 'Student Batch', 'student-batch-active', 'Active', 'Active Student Batch', 0, '2021-06-30 05:29:21', '2021-06-30 05:29:21'),
(119, 'Student Batch', 'student-batch-in-active', 'In-Active', 'In-Active Student Batch', 0, '2021-06-30 05:29:21', '2021-06-30 05:29:21'),
(120, 'Student Batch', 'student-batch-bulk-action', 'Bulk(Active,InActive,Delete)', 'Student Status Bulk Action', 0, '2021-06-30 05:29:22', '2021-06-30 05:29:22'),
(121, 'Grading', 'grading-index', 'Index', 'Grading Index', 0, '2021-06-30 05:29:22', '2021-06-30 05:29:22'),
(122, 'Grading', 'grading-add', 'Add', 'Grading Add', 0, '2021-06-30 05:29:22', '2021-06-30 05:29:22'),
(123, 'Grading', 'grading-edit', 'Edit', 'Edit Grading', 0, '2021-06-30 05:29:22', '2021-06-30 05:29:22'),
(124, 'Grading', 'grading-delete', 'Delete', 'Delete Grading', 0, '2021-06-30 05:29:22', '2021-06-30 05:29:22'),
(125, 'Grading', 'grading-active', 'Active', 'Active Grading', 0, '2021-06-30 05:29:22', '2021-06-30 05:29:22'),
(126, 'Grading', 'grading-in-active', 'In-Active', 'In-Active Grading', 0, '2021-06-30 05:29:22', '2021-06-30 05:29:22'),
(127, 'Grading', 'grading-bulk-action', 'Bulk(Active,InActive,Delete)', 'Grading Bulk Action', 0, '2021-06-30 05:29:22', '2021-06-30 05:29:22'),
(128, 'Subject / Course', 'subject-index', 'Index', 'Subject / Course Index', 0, '2021-06-30 05:29:22', '2021-06-30 05:29:22'),
(129, 'Subject / Course', 'subject-add', 'Add', 'Subject / Course Add', 0, '2021-06-30 05:29:22', '2021-06-30 05:29:22'),
(130, 'Subject / Course', 'subject-edit', 'Edit', 'Edit Subject / Course', 0, '2021-06-30 05:29:22', '2021-06-30 05:29:22'),
(131, 'Subject / Course', 'subject-delete', 'Delete', 'Delete Subject / Course', 0, '2021-06-30 05:29:22', '2021-06-30 05:29:22'),
(132, 'Subject / Course', 'subject-active', 'Active', 'Active Subject / Course', 0, '2021-06-30 05:29:22', '2021-06-30 05:29:22'),
(133, 'Subject / Course', 'subject-in-active', 'In-Active', 'In-Active Subject / Course', 0, '2021-06-30 05:29:23', '2021-06-30 05:29:23'),
(134, 'Subject / Course', 'subject-bulk-action', 'Bulk(Active,InActive,Delete)', 'Subject / Course Bulk Action', 0, '2021-06-30 05:29:23', '2021-06-30 05:29:23'),
(135, 'Student Status', 'student-status-index', 'Index', 'Student Status Index', 0, '2021-06-30 05:29:23', '2021-06-30 05:29:23'),
(136, 'Student Status', 'student-status-add', 'Add', 'Student Status Add', 0, '2021-06-30 05:29:23', '2021-06-30 05:29:23'),
(137, 'Student Status', 'student-status-edit', 'Edit', 'Edit Student Status', 0, '2021-06-30 05:29:23', '2021-06-30 05:29:23'),
(138, 'Student Status', 'student-status-delete', 'Delete', 'Delete Student Status', 0, '2021-06-30 05:29:23', '2021-06-30 05:29:23'),
(139, 'Student Status', 'student-status-active', 'Active', 'Active Student Status', 0, '2021-06-30 05:29:23', '2021-06-30 05:29:23'),
(140, 'Student Status', 'student-status-in-active', 'In-Active', 'In-Active Student Status', 0, '2021-06-30 05:29:23', '2021-06-30 05:29:23'),
(141, 'Student Status', 'student-status-bulk-action', 'Bulk(Active,InActive,Delete)', 'Student Status Bulk Action', 0, '2021-06-30 05:29:24', '2021-06-30 05:29:24'),
(142, 'Book Status', 'book-status-index', 'Index', 'Book Status Index', 0, '2021-06-30 05:29:24', '2021-06-30 05:29:24'),
(143, 'Book Status', 'book-status-add', 'Add', 'Book Status Add', 0, '2021-06-30 05:29:24', '2021-06-30 05:29:24'),
(144, 'Book Status', 'book-status-edit', 'Edit', 'Edit Book Status', 0, '2021-06-30 05:29:24', '2021-06-30 05:29:24'),
(145, 'Book Status', 'book-status-delete', 'Delete', 'Delete Book Status', 0, '2021-06-30 05:29:24', '2021-06-30 05:29:24'),
(146, 'Book Status', 'book-status-active', 'Active', 'Active Book Status', 0, '2021-06-30 05:29:24', '2021-06-30 05:29:24'),
(147, 'Book Status', 'book-status-in-active', 'In-Active', 'In-Active Book Status', 0, '2021-06-30 05:29:24', '2021-06-30 05:29:24'),
(148, 'Book Status', 'book-status-bulk-action', 'Bulk(Active,InActive,Delete)', 'Book Status Bulk Action', 0, '2021-06-30 05:29:24', '2021-06-30 05:29:24'),
(149, 'Bed Status', 'bed-status-index', 'Index', 'Bed Status Index', 0, '2021-06-30 05:29:24', '2021-06-30 05:29:24'),
(150, 'Bed Status', 'bed-status-add', 'Add', 'Bed Status Add', 0, '2021-06-30 05:29:24', '2021-06-30 05:29:24'),
(151, 'Bed Status', 'bed-status-edit', 'Edit', 'Edit Bed Status', 0, '2021-06-30 05:29:24', '2021-06-30 05:29:24'),
(152, 'Bed Status', 'bed-status-delete', 'Delete', 'Delete Bed Status', 0, '2021-06-30 05:29:25', '2021-06-30 05:29:25'),
(153, 'Bed Status', 'bed-status-active', 'Active', 'Active Bed Status', 0, '2021-06-30 05:29:25', '2021-06-30 05:29:25'),
(154, 'Bed Status', 'bed-status-in-active', 'In-Active', 'In-Active Bed Status', 0, '2021-06-30 05:29:25', '2021-06-30 05:29:25'),
(155, 'Bed Status', 'bed-status-bulk-action', 'Bulk(Active,InActive,Delete)', 'Bed Status Bulk Action', 0, '2021-06-30 05:29:25', '2021-06-30 05:29:25'),
(156, 'Year', 'year-index', 'Index', 'Year Index', 0, '2021-06-30 05:29:25', '2021-06-30 05:29:25'),
(157, 'Year', 'year-add', 'Add', 'Year Add', 0, '2021-06-30 05:29:25', '2021-06-30 05:29:25'),
(158, 'Year', 'year-edit', 'Edit', 'Edit Year', 0, '2021-06-30 05:29:25', '2021-06-30 05:29:25'),
(159, 'Year', 'year-delete', 'Delete', 'Delete Year', 0, '2021-06-30 05:29:25', '2021-06-30 05:29:25'),
(160, 'Year', 'year-active', 'Active', 'Active Year', 0, '2021-06-30 05:29:25', '2021-06-30 05:29:25'),
(161, 'Year', 'year-in-active', 'In-Active', 'In-Active Year', 0, '2021-06-30 05:29:25', '2021-06-30 05:29:25'),
(162, 'Year', 'year-bulk-action', 'Bulk(Active,InActive,Delete)', 'Year Bulk Action', 0, '2021-06-30 05:29:25', '2021-06-30 05:29:25'),
(163, 'Year', 'year-active-status', 'Make Active', 'Year Make Active', 0, '2021-06-30 05:29:25', '2021-06-30 05:29:25'),
(164, 'Month', 'month-index', 'Index', 'Month Index', 0, '2021-06-30 05:29:25', '2021-06-30 05:29:25'),
(165, 'Month', 'month-add', 'Add', 'Month Add', 0, '2021-06-30 05:29:26', '2021-06-30 05:29:26'),
(166, 'Month', 'month-edit', 'Edit', 'Edit Month', 0, '2021-06-30 05:29:26', '2021-06-30 05:29:26'),
(167, 'Month', 'month-delete', 'Delete', 'Delete Month', 0, '2021-06-30 05:29:26', '2021-06-30 05:29:26'),
(168, 'Month', 'month-active', 'Active', 'Active Month', 0, '2021-06-30 05:29:26', '2021-06-30 05:29:26'),
(169, 'Month', 'month-in-active', 'In-Active', 'In-Active Month', 0, '2021-06-30 05:29:26', '2021-06-30 05:29:26'),
(170, 'Month', 'month-bulk-action', 'Bulk(Active,InActive,Delete)', 'Month Bulk Action', 0, '2021-06-30 05:29:26', '2021-06-30 05:29:26'),
(171, 'Day', 'day-index', 'Index', 'Day Index', 0, '2021-06-30 05:29:27', '2021-06-30 05:29:27'),
(172, 'Day', 'day-add', 'Add', 'Day Add', 0, '2021-06-30 05:29:27', '2021-06-30 05:29:27'),
(173, 'Day', 'day-edit', 'Edit', 'Edit Day', 0, '2021-06-30 05:29:27', '2021-06-30 05:29:27'),
(174, 'Day', 'day-delete', 'Delete', 'Delete Day', 0, '2021-06-30 05:29:27', '2021-06-30 05:29:27'),
(175, 'Day', 'day-active', 'Active', 'Active Day', 0, '2021-06-30 05:29:27', '2021-06-30 05:29:27'),
(176, 'Day', 'day-in-active', 'In-Active', 'In-Active Day', 0, '2021-06-30 05:29:27', '2021-06-30 05:29:27'),
(177, 'Day', 'day-bulk-action', 'Bulk(Active,InActive,Delete)', 'Day Bulk Action', 0, '2021-06-30 05:29:27', '2021-06-30 05:29:27'),
(178, 'Front Office Permission', 'front-office-index', 'Front Office Management', 'Front Office Management', 1, '2021-06-30 05:29:27', '2021-06-30 05:29:27'),
(179, 'Postal Exchange', 'postal-exchange-index', 'Index', 'Postal Exchange Index', 0, '2021-06-30 05:29:27', '2021-06-30 05:29:27'),
(180, 'Postal Exchange', 'postal-exchange-add', 'Add', 'Postal Exchange Add', 0, '2021-06-30 05:29:27', '2021-06-30 05:29:27'),
(181, 'Postal Exchange', 'postal-exchange-edit', 'Edit', 'Edit Postal Exchange', 0, '2021-06-30 05:29:27', '2021-06-30 05:29:27'),
(182, 'Postal Exchange', 'postal-exchange-delete', 'Delete', 'Delete Postal Exchange', 0, '2021-06-30 05:29:28', '2021-06-30 05:29:28'),
(183, 'Postal Exchange', 'postal-exchange-bulk-action', 'Bulk(Active,InActive,Delete)', 'Postal Exchange Bulk Action', 0, '2021-06-30 05:29:28', '2021-06-30 05:29:28'),
(184, 'Exchange Type', 'postal-exchange-type-index', 'Index', 'Exchange Type Index', 0, '2021-06-30 05:29:28', '2021-06-30 05:29:28'),
(185, 'Exchange Type', 'postal-exchange-type-add', 'Add', 'Exchange Type Add', 0, '2021-06-30 05:29:28', '2021-06-30 05:29:28'),
(186, 'Exchange Type', 'postal-exchange-type-edit', 'Edit', 'Edit Exchange Type', 0, '2021-06-30 05:29:28', '2021-06-30 05:29:28'),
(187, 'Exchange Type', 'postal-exchange-type-active', 'Active', 'Active Exchange Type', 0, '2021-06-30 05:29:28', '2021-06-30 05:29:28'),
(188, 'Exchange Type', 'postal-exchange-type-in-active', 'In-Active', 'In-Active Exchange Type', 0, '2021-06-30 05:29:28', '2021-06-30 05:29:28'),
(189, 'Exchange Type', 'postal-exchange-type-delete', 'Delete', 'Delete Exchange Type', 0, '2021-06-30 05:29:28', '2021-06-30 05:29:28'),
(190, 'Exchange Type', 'postal-exchange-type-bulk-action', 'Bulk(Active,InActive,Delete)', 'Exchange Type Bulk Action', 0, '2021-06-30 05:29:28', '2021-06-30 05:29:28'),
(191, 'Visitor Log', 'visitor-index', 'Index', 'Visitor Log Index', 0, '2021-06-30 05:29:29', '2021-06-30 05:29:29'),
(192, 'Visitor Log', 'visitor-add', 'Add', 'Visitor Log Add', 0, '2021-06-30 05:29:29', '2021-06-30 05:29:29'),
(193, 'Visitor Log', 'visitor-edit', 'Edit', 'Edit Visitor Log', 0, '2021-06-30 05:29:29', '2021-06-30 05:29:29'),
(194, 'Visitor Log', 'visitor-active', 'Active', 'Active Visitor Log', 0, '2021-06-30 05:29:29', '2021-06-30 05:29:29'),
(195, 'Visitor Log', 'visitor-in-active', 'In-Active', 'In-Active Visitor Log', 0, '2021-06-30 05:29:29', '2021-06-30 05:29:29'),
(196, 'Visitor Log', 'visitor-delete', 'Delete', 'Delete Visitor Log', 0, '2021-06-30 05:29:29', '2021-06-30 05:29:29'),
(197, 'Visitor Log', 'visitor-bulk-action', 'Bulk(Active,InActive,Delete)', 'Visitor Log Bulk Action', 0, '2021-06-30 05:29:29', '2021-06-30 05:29:29'),
(198, 'Visit Purpose', 'visitor-purpose-index', 'Index', 'Visit Purpose Index', 0, '2021-06-30 05:29:29', '2021-06-30 05:29:29'),
(199, 'Visit Purpose', 'visitor-purpose-add', 'Add', 'Visit Purpose Add', 0, '2021-06-30 05:29:29', '2021-06-30 05:29:29'),
(200, 'Visit Purpose', 'visitor-purpose-edit', 'Edit', 'Edit Visit Purpose', 0, '2021-06-30 05:29:29', '2021-06-30 05:29:29'),
(201, 'Visit Purpose', 'visitor-purpose-active', 'Active', 'Active Visit Purpose', 0, '2021-06-30 05:29:29', '2021-06-30 05:29:29'),
(202, 'Visit Purpose', 'visitor-purpose-in-active', 'In-Active', 'In-Active Visit Purpose', 0, '2021-06-30 05:29:30', '2021-06-30 05:29:30'),
(203, 'Visit Purpose', 'visitor-purpose-delete', 'Delete', 'Delete Visit Purpose', 0, '2021-06-30 05:29:30', '2021-06-30 05:29:30'),
(204, 'Visit Purpose', 'visitor-purpose-bulk-action', 'Bulk(Active,InActive,Delete)', 'Visit Purpose Bulk Action', 0, '2021-06-30 05:29:30', '2021-06-30 05:29:30'),
(205, 'Student Management Permission', 'student-management-index', 'Student Management', 'Student Management', 1, '2021-06-30 05:29:30', '2021-06-30 05:29:30'),
(206, 'Student', 'student-index', 'Index', 'Student Index', 0, '2021-06-30 05:29:30', '2021-06-30 05:29:30'),
(207, 'Student', 'student-registration', 'Registration', 'Student Registration', 0, '2021-06-30 05:29:30', '2021-06-30 05:29:30'),
(208, 'Student', 'student-view', 'View', 'View Student', 0, '2021-06-30 05:29:30', '2021-06-30 05:29:30'),
(209, 'Student', 'student-edit', 'Edit', 'Edit Student', 0, '2021-06-30 05:29:30', '2021-06-30 05:29:30'),
(210, 'Student', 'student-delete', 'Delete', 'Delete Student', 0, '2021-06-30 05:29:30', '2021-06-30 05:29:30'),
(211, 'Student', 'student-active', 'Active', 'Active Student', 0, '2021-06-30 05:29:30', '2021-06-30 05:29:30'),
(212, 'Student', 'student-in-active', 'In-Active', 'In-Active Student', 0, '2021-06-30 05:29:30', '2021-06-30 05:29:30'),
(213, 'Student', 'student-bulk-action', 'Bulk(Active,InActive,Delete)', 'Student Bulk Action', 0, '2021-06-30 05:29:30', '2021-06-30 05:29:30'),
(214, 'Student', 'student-delete-academic-info', 'Delete Academic Info', 'Student Delete Academic Info', 0, '2021-06-30 05:29:30', '2021-06-30 05:29:30'),
(215, 'Student', 'student-transfer', 'Transfer', 'Transfer Student', 0, '2021-06-30 05:29:30', '2021-06-30 05:29:30'),
(216, 'Student Document', 'student-document-index', 'Index', 'Student Document Index', 0, '2021-06-30 05:29:30', '2021-06-30 05:29:30'),
(217, 'Student Document', 'student-document-add', 'Add', 'Student Document Add', 0, '2021-06-30 05:29:30', '2021-06-30 05:29:30'),
(218, 'Student Document', 'student-document-edit', 'Edit', 'Edit Student Document', 0, '2021-06-30 05:29:30', '2021-06-30 05:29:30'),
(219, 'Student Document', 'student-document-delete', 'Delete', 'Delete Student Document', 0, '2021-06-30 05:29:31', '2021-06-30 05:29:31'),
(220, 'Student Document', 'student-document-active', 'Active', 'Active Student Document', 0, '2021-06-30 05:29:31', '2021-06-30 05:29:31'),
(221, 'Student Document', 'student-document-in-active', 'In-Active', 'In-Active Student Document', 0, '2021-06-30 05:29:31', '2021-06-30 05:29:31'),
(222, 'Student Document', 'student-document-bulk-action', 'Bulk(Active,InActive,Delete)', 'Student Document Bulk Action', 0, '2021-06-30 05:29:31', '2021-06-30 05:29:31'),
(223, 'Student Note', 'student-note-index', 'Index', 'Student Note Index', 0, '2021-06-30 05:29:31', '2021-06-30 05:29:31'),
(224, 'Student Note', 'student-note-add', 'Add', 'Student Note Add', 0, '2021-06-30 05:29:31', '2021-06-30 05:29:31'),
(225, 'Student Note', 'student-note-edit', 'Edit', 'Edit Student Note', 0, '2021-06-30 05:29:31', '2021-06-30 05:29:31'),
(226, 'Student Note', 'student-note-delete', 'Delete', 'Delete Student Note', 0, '2021-06-30 05:29:31', '2021-06-30 05:29:31'),
(227, 'Student Note', 'student-note-active', 'Active', 'Active Student Note', 0, '2021-06-30 05:29:31', '2021-06-30 05:29:31'),
(228, 'Student Note', 'student-note-in-active', 'In-Active', 'In-Active Student Note', 0, '2021-06-30 05:29:31', '2021-06-30 05:29:31'),
(229, 'Student Note', 'student-note-bulk-action', 'Bulk(Active,InActive,Delete)', 'Student Note Bulk Action', 0, '2021-06-30 05:29:31', '2021-06-30 05:29:31'),
(230, 'Report', 'student-report', 'Student', 'Student Report', 0, '2021-06-30 05:29:31', '2021-06-30 05:29:31'),
(231, 'Guardian Management Permission', 'guardian-management-index', 'Guardian Management', 'Guardian Management', 1, '2021-06-30 05:29:32', '2021-06-30 05:29:32'),
(232, 'Guardian', 'guardian-index', 'Index', 'Guardian Index', 0, '2021-06-30 05:29:32', '2021-06-30 05:29:32'),
(233, 'Guardian', 'guardian-registration', 'Registration', 'Guardian Registration', 0, '2021-06-30 05:29:32', '2021-06-30 05:29:32'),
(234, 'Guardian', 'guardian-view', 'View', 'View Guardian', 0, '2021-06-30 05:29:32', '2021-06-30 05:29:32'),
(235, 'Guardian', 'guardian-edit', 'Edit', 'Edit Guardian', 0, '2021-06-30 05:29:32', '2021-06-30 05:29:32'),
(236, 'Guardian', 'guardian-delete', 'Delete', 'Delete Guardian', 0, '2021-06-30 05:29:32', '2021-06-30 05:29:32'),
(237, 'Guardian', 'guardian-active', 'Active', 'Active Guardian', 0, '2021-06-30 05:29:32', '2021-06-30 05:29:32'),
(238, 'Guardian', 'guardian-in-active', 'In-Active', 'In-Active Guardian', 0, '2021-06-30 05:29:32', '2021-06-30 05:29:32'),
(239, 'Guardian', 'guardian-bulk-action', 'Bulk(Active,InActive,Delete)', 'Guardian Bulk Action', 0, '2021-06-30 05:29:32', '2021-06-30 05:29:32'),
(240, 'Guardian', 'guardian-link', 'Link Student', 'Guardian Link Student', 0, '2021-06-30 05:29:33', '2021-06-30 05:29:33'),
(241, 'Guardian', 'guardian-unlink', 'UnLink Student', 'Guardian UnLink Student', 0, '2021-06-30 05:29:33', '2021-06-30 05:29:33'),
(242, 'Staff Management Permission', 'staff-management-index', 'Staff Management', 'Staff Management', 1, '2021-06-30 05:29:33', '2021-06-30 05:29:33'),
(243, 'Staff', 'staff-index', 'Index', 'Staff Index', 0, '2021-06-30 05:29:33', '2021-06-30 05:29:33'),
(244, 'Staff', 'staff-add', 'Add', 'Staff Registration', 0, '2021-06-30 05:29:33', '2021-06-30 05:29:33'),
(245, 'Staff', 'staff-view', 'View', 'View Staff', 0, '2021-06-30 05:29:33', '2021-06-30 05:29:33'),
(246, 'Staff', 'staff-edit', 'Edit', 'Edit Staff', 0, '2021-06-30 05:29:33', '2021-06-30 05:29:33'),
(247, 'Staff', 'staff-delete', 'Delete', 'Delete Staff', 0, '2021-06-30 05:29:33', '2021-06-30 05:29:33'),
(248, 'Staff', 'staff-active', 'Active', 'Active Staff', 0, '2021-06-30 05:29:33', '2021-06-30 05:29:33'),
(249, 'Staff', 'staff-in-active', 'In-Active', 'In-Active Staff', 0, '2021-06-30 05:29:33', '2021-06-30 05:29:33'),
(250, 'Staff', 'staff-bulk-action', 'Bulk(Active,InActive,Delete)', 'Staff Bulk Action', 0, '2021-06-30 05:29:33', '2021-06-30 05:29:33'),
(251, 'Staff Document', 'staff-document-index', 'Index', 'Staff Document Index', 0, '2021-06-30 05:29:33', '2021-06-30 05:29:33'),
(252, 'Staff Document', 'staff-document-add', 'Add', 'Staff Document Add', 0, '2021-06-30 05:29:33', '2021-06-30 05:29:33'),
(253, 'Staff Document', 'staff-document-edit', 'Edit', 'Edit Staff Document', 0, '2021-06-30 05:29:33', '2021-06-30 05:29:33'),
(254, 'Staff Document', 'staff-document-delete', 'Delete', 'Delete Staff Document', 0, '2021-06-30 05:29:33', '2021-06-30 05:29:33'),
(255, 'Staff Document', 'staff-document-active', 'Active', 'Active Staff Document', 0, '2021-06-30 05:29:34', '2021-06-30 05:29:34'),
(256, 'Staff Document', 'staff-document-in-active', 'In-Active', 'In-Active Staff Document', 0, '2021-06-30 05:29:34', '2021-06-30 05:29:34'),
(257, 'Staff Document', 'staff-document-bulk-action', 'Bulk(Active,InActive,Delete)', 'Staff Document Bulk Action', 0, '2021-06-30 05:29:34', '2021-06-30 05:29:34'),
(258, 'Staff Note', 'staff-note-index', 'Index', 'Staff Note Index', 0, '2021-06-30 05:29:34', '2021-06-30 05:29:34'),
(259, 'Staff Note', 'staff-note-add', 'Add', 'Staff Note Add', 0, '2021-06-30 05:29:34', '2021-06-30 05:29:34'),
(260, 'Staff Note', 'staff-note-edit', 'Edit', 'Edit Staff Note', 0, '2021-06-30 05:29:34', '2021-06-30 05:29:34'),
(261, 'Staff Note', 'staff-note-delete', 'Delete', 'Delete Staff Note', 0, '2021-06-30 05:29:34', '2021-06-30 05:29:34'),
(262, 'Staff Note', 'staff-note-active', 'Active', 'Active Staff Note', 0, '2021-06-30 05:29:34', '2021-06-30 05:29:34'),
(263, 'Staff Note', 'staff-note-in-active', 'In-Active', 'In-Active Staff Note', 0, '2021-06-30 05:29:34', '2021-06-30 05:29:34'),
(264, 'Staff Note', 'staff-note-bulk-action', 'Bulk(Active,InActive,Delete)', 'Staff Note Bulk Action', 0, '2021-06-30 05:29:34', '2021-06-30 05:29:34'),
(265, 'Staff Designation', 'staff-designation-index', 'Index', 'Staff Designation Index', 0, '2021-06-30 05:29:34', '2021-06-30 05:29:34'),
(266, 'Staff Designation', 'staff-designation-add', 'Add', 'Staff Designation Add', 0, '2021-06-30 05:29:35', '2021-06-30 05:29:35'),
(267, 'Staff Designation', 'staff-designation-edit', 'Edit', 'Edit Staff Designation', 0, '2021-06-30 05:29:35', '2021-06-30 05:29:35'),
(268, 'Staff Designation', 'staff-designation-delete', 'Delete', 'Delete Staff Designation', 0, '2021-06-30 05:29:36', '2021-06-30 05:29:36'),
(269, 'Staff Designation', 'staff-designation-active', 'Active', 'Active Staff Designation', 0, '2021-06-30 05:29:36', '2021-06-30 05:29:36'),
(270, 'Staff Designation', 'staff-designation-in-active', 'In-Active', 'In-Active Staff Designation', 0, '2021-06-30 05:29:36', '2021-06-30 05:29:36'),
(271, 'Staff Designation', 'staff-designation-bulk-action', 'Bulk(Active,InActive,Delete)', 'Staff Designation Bulk Action', 0, '2021-06-30 05:29:36', '2021-06-30 05:29:36'),
(272, 'Report', 'staff-report', 'Staff', 'Staff Report', 0, '2021-06-30 05:29:36', '2021-06-30 05:29:36'),
(273, 'Account Management Permission', 'account-management-index', 'Account Management', 'Account Management', 1, '2021-06-30 05:29:36', '2021-06-30 05:29:36'),
(274, 'Fees', 'fees-index', 'Index', 'Student Fees Index', 0, '2021-06-30 05:29:36', '2021-06-30 05:29:36'),
(275, 'Fees', 'fees-balance', 'Balance', 'Fees Balance', 0, '2021-06-30 05:29:37', '2021-06-30 05:29:37'),
(276, 'Fees Head', 'fees-head-index', 'Index', 'Fees Head Index', 0, '2021-06-30 05:29:37', '2021-06-30 05:29:37'),
(277, 'Fees Head', 'fees-head-add', 'Add', 'Fees Head Add', 0, '2021-06-30 05:29:37', '2021-06-30 05:29:37'),
(278, 'Fees Head', 'fees-head-edit', 'Edit', 'Edit Fees Head', 0, '2021-06-30 05:29:37', '2021-06-30 05:29:37'),
(279, 'Fees Head', 'fees-head-delete', 'Delete', 'Delete Fees Head', 0, '2021-06-30 05:29:37', '2021-06-30 05:29:37'),
(280, 'Fees Head', 'fees-head-active', 'Active', 'Active Fees Head', 0, '2021-06-30 05:29:38', '2021-06-30 05:29:38'),
(281, 'Fees Head', 'fees-head-in-active', 'In-Active', 'In-Active Fees Head', 0, '2021-06-30 05:29:38', '2021-06-30 05:29:38'),
(282, 'Fees Head', 'fees-head-bulk-action', 'Bulk(Active,InActive,Delete)', 'Fees Head Bulk Action', 0, '2021-06-30 05:29:38', '2021-06-30 05:29:38'),
(283, 'Fees Master', 'fees-master-index', 'Index', 'Fees Master Index', 0, '2021-06-30 05:29:38', '2021-06-30 05:29:38'),
(284, 'Fees Master', 'fees-master-add', 'Add', 'Fees Master Add', 0, '2021-06-30 05:29:38', '2021-06-30 05:29:38'),
(285, 'Fees Master', 'fees-master-edit', 'Edit', 'Edit Fees Master', 0, '2021-06-30 05:29:38', '2021-06-30 05:29:38'),
(286, 'Fees Master', 'fees-master-delete', 'Delete', 'Delete Fees Master', 0, '2021-06-30 05:29:38', '2021-06-30 05:29:38'),
(287, 'Fees Master', 'fees-master-active', 'Active', 'Active Fees Master', 0, '2021-06-30 05:29:38', '2021-06-30 05:29:38'),
(288, 'Fees Master', 'fees-master-in-active', 'In-Active', 'In-Active Fees Master', 0, '2021-06-30 05:29:38', '2021-06-30 05:29:38'),
(289, 'Fees Master', 'fees-master-bulk-action', 'Bulk(Active,InActive,Delete)', 'Fees Master Bulk Action', 0, '2021-06-30 05:29:38', '2021-06-30 05:29:38'),
(290, 'Quick Fee Receive', 'fees-quick-receive-add', 'Collect', 'Quick Fee Receive Index', 0, '2021-06-30 05:29:38', '2021-06-30 05:29:38'),
(291, 'Fees Collection', 'fees-collection-index', 'Index', 'Fees Collection Index', 0, '2021-06-30 05:29:38', '2021-06-30 05:29:38'),
(292, 'Fees Collection', 'fees-collection-add', 'Add', 'Fees Collection Add', 0, '2021-06-30 05:29:39', '2021-06-30 05:29:39'),
(293, 'Fees Collection', 'fees-collection-view', 'View', 'View Fees Collection', 0, '2021-06-30 05:29:39', '2021-06-30 05:29:39'),
(294, 'Fees Collection', 'fees-collection-delete', 'Delete', 'Delete Fees Collection', 0, '2021-06-30 05:29:39', '2021-06-30 05:29:39'),
(295, 'Online Fee Payment', 'fees-online-payment-pay', 'Pay', 'Pay Online Fee', 0, '2021-06-30 05:29:39', '2021-06-30 05:29:39'),
(296, 'Online Fee Payment', 'fees-online-payment-index', 'Index', 'Index Online Fee Payment', 0, '2021-06-30 05:29:39', '2021-06-30 05:29:39'),
(297, 'Online Fee Payment', 'fees-online-payment-view', 'View', 'View Online Fee Payment', 0, '2021-06-30 05:29:39', '2021-06-30 05:29:39'),
(298, 'Online Fee Payment', 'fees-online-payment-verify', 'Verify', 'Verify Online Fee Payment', 0, '2021-06-30 05:29:39', '2021-06-30 05:29:39'),
(299, 'Payroll', 'payroll-index', 'Index', 'Staff Payroll Index', 0, '2021-06-30 05:29:40', '2021-06-30 05:29:40'),
(300, 'Payroll', 'payroll-balance', 'Balance', 'Payroll Balance', 0, '2021-06-30 05:29:40', '2021-06-30 05:29:40'),
(301, 'Payroll Head', 'payroll-head-index', 'Index', 'Payroll Head Index', 0, '2021-06-30 05:29:40', '2021-06-30 05:29:40'),
(302, 'Payroll Head', 'payroll-head-add', 'Add', 'Payroll Head Add', 0, '2021-06-30 05:29:40', '2021-06-30 05:29:40'),
(303, 'Payroll Head', 'payroll-head-edit', 'Edit', 'Edit Payroll Head', 0, '2021-06-30 05:29:40', '2021-06-30 05:29:40'),
(304, 'Payroll Head', 'payroll-head-delete', 'Delete', 'Delete Payroll Head', 0, '2021-06-30 05:29:40', '2021-06-30 05:29:40'),
(305, 'Payroll Head', 'payroll-head-active', 'Active', 'Active Payroll Head', 0, '2021-06-30 05:29:40', '2021-06-30 05:29:40'),
(306, 'Payroll Head', 'payroll-head-in-active', 'In-Active', 'In-Active Payroll Head', 0, '2021-06-30 05:29:40', '2021-06-30 05:29:40'),
(307, 'Payroll Head', 'payroll-head-bulk-action', 'Bulk(Active,InActive,Delete)', 'Payroll Head Bulk Action', 0, '2021-06-30 05:29:40', '2021-06-30 05:29:40'),
(308, 'Payroll Master', 'payroll-master-index', 'Index', 'Payroll Master Index', 0, '2021-06-30 05:29:41', '2021-06-30 05:29:41'),
(309, 'Payroll Master', 'payroll-master-add', 'Add', 'Payroll Master Add', 0, '2021-06-30 05:29:41', '2021-06-30 05:29:41'),
(310, 'Payroll Master', 'payroll-master-edit', 'Edit', 'Edit Payroll Master', 0, '2021-06-30 05:29:41', '2021-06-30 05:29:41'),
(311, 'Payroll Master', 'payroll-master-delete', 'Delete', 'Delete Payroll Master', 0, '2021-06-30 05:29:41', '2021-06-30 05:29:41'),
(312, 'Payroll Master', 'payroll-master-active', 'Active', 'Active Payroll Master', 0, '2021-06-30 05:29:41', '2021-06-30 05:29:41'),
(313, 'Payroll Master', 'payroll-master-in-active', 'In-Active', 'In-Active Payroll Master', 0, '2021-06-30 05:29:42', '2021-06-30 05:29:42'),
(314, 'Payroll Master', 'payroll-master-bulk-action', 'Bulk(Active,InActive,Delete)', 'Payroll Master Bulk Action', 0, '2021-06-30 05:29:42', '2021-06-30 05:29:42'),
(315, 'Salary Pay', 'salary-payment-index', 'Index', 'Salary Pay Index', 0, '2021-06-30 05:29:42', '2021-06-30 05:29:42'),
(316, 'Salary Pay', 'salary-payment-add', 'Add', 'Salary Pay Add', 0, '2021-06-30 05:29:42', '2021-06-30 05:29:42'),
(317, 'Salary Pay', 'salary-payment-view', 'View', 'View Salary Pay', 0, '2021-06-30 05:29:42', '2021-06-30 05:29:42'),
(318, 'Salary Pay', 'salary-payment-delete', 'Delete', 'Delete Salary Pay', 0, '2021-06-30 05:29:42', '2021-06-30 05:29:42'),
(319, 'Account Group', 'account-group-index', 'Index', 'Account Group Index', 0, '2021-06-30 05:29:43', '2021-06-30 05:29:43'),
(320, 'Account Group', 'account-group-add', 'Add', 'Account Group Add', 0, '2021-06-30 05:29:43', '2021-06-30 05:29:43'),
(321, 'Account Group', 'account-group-edit', 'Edit', 'Edit Account Group', 0, '2021-06-30 05:29:43', '2021-06-30 05:29:43'),
(322, 'Account Group', 'account-group-delete', 'Delete', 'Delete Account Group', 0, '2021-06-30 05:29:43', '2021-06-30 05:29:43'),
(323, 'Account Group', 'account-group-active', 'Active', 'Active Account Group', 0, '2021-06-30 05:29:43', '2021-06-30 05:29:43'),
(324, 'Account Group', 'account-group-in-active', 'In-Active', 'In-Active Account Group', 0, '2021-06-30 05:29:43', '2021-06-30 05:29:43'),
(325, 'Account Group', 'account-group-bulk-action', 'Bulk(Active,InActive,Delete)', 'Account Group Bulk Action', 0, '2021-06-30 05:29:43', '2021-06-30 05:29:43'),
(326, 'Account Group', 'account-group-chart-of-account', 'Chart of Account', 'Account Group Chart of Account', 0, '2021-06-30 05:29:43', '2021-06-30 05:29:43'),
(327, 'Transaction Head', 'transaction-head-index', 'Index', 'Transaction Head Index', 0, '2021-06-30 05:29:43', '2021-06-30 05:29:43'),
(328, 'Transaction Head', 'transaction-head-add', 'Add', 'Transaction Head Add', 0, '2021-06-30 05:29:43', '2021-06-30 05:29:43'),
(329, 'Transaction Head', 'transaction-head-edit', 'Edit', 'Edit Transaction Head', 0, '2021-06-30 05:29:43', '2021-06-30 05:29:43'),
(330, 'Transaction Head', 'transaction-head-delete', 'Delete', 'Delete Transaction Head', 0, '2021-06-30 05:29:44', '2021-06-30 05:29:44'),
(331, 'Transaction Head', 'transaction-head-active', 'Active', 'Active Transaction Head', 0, '2021-06-30 05:29:44', '2021-06-30 05:29:44'),
(332, 'Transaction Head', 'transaction-head-in-active', 'In-Active', 'In-Active Transaction Head', 0, '2021-06-30 05:29:44', '2021-06-30 05:29:44'),
(333, 'Transaction Head', 'transaction-head-bulk-action', 'Bulk(Active,InActive,Delete)', 'Payroll Head Bulk Action', 0, '2021-06-30 05:29:44', '2021-06-30 05:29:44'),
(334, 'Transaction', 'transaction-index', 'Index', 'Transaction Index', 0, '2021-06-30 05:29:44', '2021-06-30 05:29:44'),
(335, 'Transaction', 'transaction-add', 'Add', 'Transaction Add', 0, '2021-06-30 05:29:44', '2021-06-30 05:29:44'),
(336, 'Transaction', 'transaction-edit', 'Edit', 'Edit Transaction', 0, '2021-06-30 05:29:44', '2021-06-30 05:29:44'),
(337, 'Transaction', 'transaction-delete', 'Delete', 'Delete Transaction', 0, '2021-06-30 05:29:45', '2021-06-30 05:29:45'),
(338, 'Transaction', 'transaction-active', 'Active', 'Active Transaction', 0, '2021-06-30 05:29:45', '2021-06-30 05:29:45'),
(339, 'Transaction', 'transaction-in-active', 'In-Active', 'In-Active Transaction', 0, '2021-06-30 05:29:45', '2021-06-30 05:29:45'),
(340, 'Transaction', 'transaction-bulk-action', 'Bulk(Active,InActive,Delete)', 'Transaction Bulk Action', 0, '2021-06-30 05:29:45', '2021-06-30 05:29:45'),
(341, 'Bank', 'bank-index', 'Index', 'Bank Index', 0, '2021-06-30 05:29:45', '2021-06-30 05:29:45'),
(342, 'Bank', 'bank-add', 'Add', 'Bank Add', 0, '2021-06-30 05:29:45', '2021-06-30 05:29:45'),
(343, 'Bank', 'bank-edit', 'Edit', 'Edit Bank', 0, '2021-06-30 05:29:45', '2021-06-30 05:29:45'),
(344, 'Bank', 'bank-view', 'View', 'View Bank', 0, '2021-06-30 05:29:45', '2021-06-30 05:29:45'),
(345, 'Bank', 'bank-delete', 'Delete', 'Delete Bank', 0, '2021-06-30 05:29:45', '2021-06-30 05:29:45'),
(346, 'Bank', 'bank-active', 'Active', 'Active Bank', 0, '2021-06-30 05:29:46', '2021-06-30 05:29:46'),
(347, 'Bank', 'bank-in-active', 'In-Active', 'In-Active Bank', 0, '2021-06-30 05:29:46', '2021-06-30 05:29:46'),
(348, 'Bank', 'bank-bulk-action', 'Bulk(Active,InActive,Delete)', 'Bank Bulk Action', 0, '2021-06-30 05:29:46', '2021-06-30 05:29:46'),
(349, 'Bank Transaction', 'bank-transaction-index', 'Index', 'Bank Transaction Index', 0, '2021-06-30 05:29:46', '2021-06-30 05:29:46'),
(350, 'Bank Transaction', 'bank-transaction-add', 'Add', 'Bank Transaction Add', 0, '2021-06-30 05:29:46', '2021-06-30 05:29:46'),
(351, 'Bank Transaction', 'bank-transaction-delete', 'Delete', 'Delete Bank Transaction', 0, '2021-06-30 05:29:46', '2021-06-30 05:29:46'),
(352, 'Bank Transaction', 'bank-transaction-bulk-action', 'Bulk(Active,InActive,Delete)', 'Bank Transaction Bulk Action', 0, '2021-06-30 05:29:46', '2021-06-30 05:29:46'),
(353, 'Account Print', 'fee-print-master', 'Master Slip', 'Fee Master Slip', 0, '2021-06-30 05:29:46', '2021-06-30 05:29:46'),
(354, 'Account Print', 'fee-print-collection', 'Collection', 'Print Fee Collection', 0, '2021-06-30 05:29:46', '2021-06-30 05:29:46'),
(355, 'Account Print', 'fee-print-today-receipt', 'Today Short Receipt', 'Print Today Short Receipt', 0, '2021-06-30 05:29:46', '2021-06-30 05:29:46'),
(356, 'Account Print', 'fee-print-today-detail-receipt', 'Today Detail Receipt', 'Print Today Detail Receip', 0, '2021-06-30 05:29:46', '2021-06-30 05:29:46'),
(357, 'Account Print', 'fee-print-student-ledger', 'Student Ledger', 'Print Student Ledger', 0, '2021-06-30 05:29:46', '2021-06-30 05:29:46'),
(358, 'Account Print', 'fee-print-student-due', 'Due Short Slip', 'Print Due Short Slip', 0, '2021-06-30 05:29:46', '2021-06-30 05:29:46'),
(359, 'Account Print', 'fee-print-student-due-detail', 'Due Detail Slip', 'Print Due Detail Slip', 0, '2021-06-30 05:29:46', '2021-06-30 05:29:46'),
(360, 'Account Print', 'fee-print-bulk-due-slip', 'Bulk Due Short Slip', 'Print Bulk Due Short Slip', 0, '2021-06-30 05:29:46', '2021-06-30 05:29:46'),
(361, 'Account Print', 'fee-print-bulk-due-detail-slip', 'Bulk Due Detail SLip', 'Print Bulk Due Detail SLip', 0, '2021-06-30 05:29:46', '2021-06-30 05:29:46'),
(362, 'Account Report', 'report-cash-book', 'Cashbook', 'Cashbook Detail', 0, '2021-06-30 05:29:47', '2021-06-30 05:29:47'),
(363, 'Account Report', 'report-fee-collection', 'Fee Collection', 'Fee Collection Detail', 0, '2021-06-30 05:29:47', '2021-06-30 05:29:47'),
(364, 'Account Report', 'report-fee-collection-head', 'Fee Collection Head', 'Fee Collection Head Detail', 0, '2021-06-30 05:29:47', '2021-06-30 05:29:47'),
(365, 'Account Report', 'report-fee-online-payment', 'Online Payment', 'Fee Online Payment', 0, '2021-06-30 05:29:47', '2021-06-30 05:29:47'),
(366, 'Account Report', 'report-balance-fee', 'Fee Balance Statement', 'Fee Balance Statement', 0, '2021-06-30 05:29:47', '2021-06-30 05:29:47'),
(367, 'Account Report', 'transaction-head-view', 'Statement of Ledger', 'View Transaction Head', 0, '2021-06-30 05:29:47', '2021-06-30 05:29:47'),
(368, 'Account Report', 'transaction-head-balance-statement', 'Ledger Balance Statement', 'View Transaction Head', 0, '2021-06-30 05:29:47', '2021-06-30 05:29:47'),
(369, 'Inventory Management Permission', 'inventory-index', 'Inventory Management', 'Inventory Management', 1, '2021-06-30 05:29:47', '2021-06-30 05:29:47'),
(370, 'Assets', 'assets-index', 'Index', 'Assets Index', 0, '2021-06-30 05:29:47', '2021-06-30 05:29:47'),
(371, 'Assets', 'assets-add', 'Add', 'Assets Add', 0, '2021-06-30 05:29:47', '2021-06-30 05:29:47'),
(372, 'Assets', 'assets-edit', 'Edit', 'Edit Assets', 0, '2021-06-30 05:29:47', '2021-06-30 05:29:47'),
(373, 'Assets', 'assets-view', 'View', 'View Assets', 0, '2021-06-30 05:29:47', '2021-06-30 05:29:47'),
(374, 'Assets', 'assets-delete', 'Delete', 'Delete Assets', 0, '2021-06-30 05:29:47', '2021-06-30 05:29:47'),
(375, 'Assets', 'assets-active', 'Active', 'Active Assets', 0, '2021-06-30 05:29:47', '2021-06-30 05:29:47'),
(376, 'Assets', 'assets-in-active', 'In-Active', 'In-Active Assets', 0, '2021-06-30 05:29:47', '2021-06-30 05:29:47'),
(377, 'Assets', 'assets-bulk-action', 'Bulk(Active,InActive,Delete)', 'Bank Bulk Action', 0, '2021-06-30 05:29:48', '2021-06-30 05:29:48'),
(378, 'SemesterAssets', 'sem-assets-index', 'Index', 'SemesterAssets Index', 0, '2021-06-30 05:29:48', '2021-06-30 05:29:48'),
(379, 'SemesterAssets', 'sem-assets-add', 'Add', 'SemesterAssets Add', 0, '2021-06-30 05:29:48', '2021-06-30 05:29:48'),
(380, 'SemesterAssets', 'sem-assets-delete', 'Delete', 'Delete SemesterAssets', 0, '2021-06-30 05:29:48', '2021-06-30 05:29:48'),
(381, 'Product', 'product-index', 'Index', 'Product Index', 0, '2021-06-30 05:29:48', '2021-06-30 05:29:48'),
(382, 'Product', 'product-add', 'Add', 'Product Add', 0, '2021-06-30 05:29:48', '2021-06-30 05:29:48'),
(383, 'Product', 'product-view', 'View', 'Product View', 0, '2021-06-30 05:29:48', '2021-06-30 05:29:48'),
(384, 'Product', 'product-edit', 'Edit', 'Edit Product', 0, '2021-06-30 05:29:48', '2021-06-30 05:29:48'),
(385, 'Product', 'product-delete', 'Delete', 'Delete Product', 0, '2021-06-30 05:29:48', '2021-06-30 05:29:48'),
(386, 'Product', 'product-active', 'Active', 'Active Product', 0, '2021-06-30 05:29:48', '2021-06-30 05:29:48'),
(387, 'Product', 'product-in-active', 'In-Active', 'In-Active Product', 0, '2021-06-30 05:29:49', '2021-06-30 05:29:49'),
(388, 'Product', 'product-bulk-action', 'Bulk(Active,InActive,Delete)', 'Product Bulk Action', 0, '2021-06-30 05:29:49', '2021-06-30 05:29:49'),
(389, 'Product Category', 'product-category-index', 'Index', 'Product Category Index', 0, '2021-06-30 05:29:49', '2021-06-30 05:29:49'),
(390, 'Product Category', 'product-category-add', 'Add', 'Product Category Add', 0, '2021-06-30 05:29:49', '2021-06-30 05:29:49'),
(391, 'Product Category', 'product-category-edit', 'Edit', 'Edit Product Category', 0, '2021-06-30 05:29:49', '2021-06-30 05:29:49'),
(392, 'Product Category', 'product-category-delete', 'Delete', 'Delete Product Category', 0, '2021-06-30 05:29:49', '2021-06-30 05:29:49'),
(393, 'Product Category', 'product-category-active', 'Active', 'Active Product Category', 0, '2021-06-30 05:29:49', '2021-06-30 05:29:49'),
(394, 'Product Category', 'product-category-in-active', 'In-Active', 'In-Active Product Category', 0, '2021-06-30 05:29:49', '2021-06-30 05:29:49'),
(395, 'Product Category', 'product-category-bulk-action', 'Bulk(Active,InActive,Delete)', 'Product Category Bulk Action', 0, '2021-06-30 05:29:49', '2021-06-30 05:29:49'),
(396, 'Customer', 'customer-index', 'Index', 'Customer Index', 0, '2021-06-30 05:29:50', '2021-06-30 05:29:50'),
(397, 'Customer', 'customer-registration', 'Registration', 'Customer Registration', 0, '2021-06-30 05:29:50', '2021-06-30 05:29:50');
INSERT INTO `permissions` (`id`, `group`, `name`, `display_name`, `description`, `group_head`, `created_at`, `updated_at`) VALUES
(398, 'Customer', 'customer-view', 'View', 'View Customer', 0, '2021-06-30 05:29:50', '2021-06-30 05:29:50'),
(399, 'Customer', 'customer-edit', 'Edit', 'Edit Customer', 0, '2021-06-30 05:29:50', '2021-06-30 05:29:50'),
(400, 'Customer', 'customer-delete', 'Delete', 'Delete Customer', 0, '2021-06-30 05:29:50', '2021-06-30 05:29:50'),
(401, 'Customer', 'customer-active', 'Active', 'Active Customer', 0, '2021-06-30 05:29:50', '2021-06-30 05:29:50'),
(402, 'Customer', 'customer-in-active', 'In-Active', 'In-Active Customer', 0, '2021-06-30 05:29:50', '2021-06-30 05:29:50'),
(403, 'Customer', 'customer-bulk-action', 'Bulk(Active,InActive,Delete)', 'Customer Bulk Action', 0, '2021-06-30 05:29:50', '2021-06-30 05:29:50'),
(404, 'Customer', 'customer-bulk-registration', 'Bulk Registration', 'Bulk Registration', 0, '2021-06-30 05:29:50', '2021-06-30 05:29:50'),
(405, 'Customer Document', 'customer-document-index', 'Index', 'Customer Document Index', 0, '2021-06-30 05:29:50', '2021-06-30 05:29:50'),
(406, 'Customer Document', 'customer-document-add', 'Add', 'Customer Document Add', 0, '2021-06-30 05:29:50', '2021-06-30 05:29:50'),
(407, 'Customer Document', 'customer-document-edit', 'Edit', 'Edit Customer Document', 0, '2021-06-30 05:29:50', '2021-06-30 05:29:50'),
(408, 'Customer Document', 'customer-document-delete', 'Delete', 'Delete Customer Document', 0, '2021-06-30 05:29:50', '2021-06-30 05:29:50'),
(409, 'Customer Document', 'customer-document-active', 'Active', 'Active Customer Document', 0, '2021-06-30 05:29:50', '2021-06-30 05:29:50'),
(410, 'Customer Document', 'customer-document-in-active', 'In-Active', 'In-Active Customer Document', 0, '2021-06-30 05:29:50', '2021-06-30 05:29:50'),
(411, 'Customer Document', 'customer-document-bulk-action', 'Bulk(Active,InActive,Delete)', 'Customer Document Bulk Action', 0, '2021-06-30 05:29:51', '2021-06-30 05:29:51'),
(412, 'Customer Note', 'customer-note-index', 'Index', 'Customer Note Index', 0, '2021-06-30 05:29:51', '2021-06-30 05:29:51'),
(413, 'Customer Note', 'customer-note-add', 'Add', 'Customer Note Add', 0, '2021-06-30 05:29:51', '2021-06-30 05:29:51'),
(414, 'Customer Note', 'customer-note-edit', 'Edit', 'Edit Customer Note', 0, '2021-06-30 05:29:51', '2021-06-30 05:29:51'),
(415, 'Customer Note', 'customer-note-delete', 'Delete', 'Delete Customer Note', 0, '2021-06-30 05:29:51', '2021-06-30 05:29:51'),
(416, 'Customer Note', 'customer-note-active', 'Active', 'Active Customer Note', 0, '2021-06-30 05:29:51', '2021-06-30 05:29:51'),
(417, 'Customer Note', 'customer-note-in-active', 'In-Active', 'In-Active Customer Note', 0, '2021-06-30 05:29:51', '2021-06-30 05:29:51'),
(418, 'Customer Note', 'customer-note-bulk-action', 'Bulk(Active,InActive,Delete)', 'Customer Note Bulk Action', 0, '2021-06-30 05:29:51', '2021-06-30 05:29:51'),
(419, 'Customer Status', 'customer-status-index', 'Index', 'Customer Status Index', 0, '2021-06-30 05:29:51', '2021-06-30 05:29:51'),
(420, 'Customer Status', 'customer-status-add', 'Add', 'Customer Status Add', 0, '2021-06-30 05:29:51', '2021-06-30 05:29:51'),
(421, 'Customer Status', 'customer-status-edit', 'Edit', 'Edit Customer Status', 0, '2021-06-30 05:29:51', '2021-06-30 05:29:51'),
(422, 'Customer Status', 'customer-status-delete', 'Delete', 'Delete Customer Status', 0, '2021-06-30 05:29:51', '2021-06-30 05:29:51'),
(423, 'Customer Status', 'customer-status-active', 'Active', 'Active Customer Status', 0, '2021-06-30 05:29:51', '2021-06-30 05:29:51'),
(424, 'Customer Status', 'customer-status-in-active', 'In-Active', 'In-Active Customer Status', 0, '2021-06-30 05:29:51', '2021-06-30 05:29:51'),
(425, 'Customer Status', 'customer-status-bulk-action', 'Bulk(Active,InActive,Delete)', 'Customer Status Bulk Action', 0, '2021-06-30 05:29:52', '2021-06-30 05:29:52'),
(426, 'Vendor', 'vendor-index', 'Index', 'Vendor Index', 0, '2021-06-30 05:29:52', '2021-06-30 05:29:52'),
(427, 'Vendor', 'vendor-registration', 'Registration', 'Vendor Registration', 0, '2021-06-30 05:29:52', '2021-06-30 05:29:52'),
(428, 'Vendor', 'vendor-view', 'View', 'View Vendor', 0, '2021-06-30 05:29:52', '2021-06-30 05:29:52'),
(429, 'Vendor', 'vendor-edit', 'Edit', 'Edit Vendor', 0, '2021-06-30 05:29:52', '2021-06-30 05:29:52'),
(430, 'Vendor', 'vendor-delete', 'Delete', 'Delete Vendor', 0, '2021-06-30 05:29:52', '2021-06-30 05:29:52'),
(431, 'Vendor', 'vendor-active', 'Active', 'Active Vendor', 0, '2021-06-30 05:29:52', '2021-06-30 05:29:52'),
(432, 'Vendor', 'vendor-in-active', 'In-Active', 'In-Active Vendor', 0, '2021-06-30 05:29:52', '2021-06-30 05:29:52'),
(433, 'Vendor', 'vendor-bulk-action', 'Bulk(Active,InActive,Delete)', 'Vendor Bulk Action', 0, '2021-06-30 05:29:52', '2021-06-30 05:29:52'),
(434, 'Vendor', 'vendor-bulk-registration', 'Bulk Registration', 'Bulk Registration', 0, '2021-06-30 05:29:52', '2021-06-30 05:29:52'),
(435, 'Vendor Document', 'vendor-document-index', 'Index', 'Vendor Document Index', 0, '2021-06-30 05:29:52', '2021-06-30 05:29:52'),
(436, 'Vendor Document', 'vendor-document-add', 'Add', 'Vendor Document Add', 0, '2021-06-30 05:29:52', '2021-06-30 05:29:52'),
(437, 'Vendor Document', 'vendor-document-edit', 'Edit', 'Edit Vendor Document', 0, '2021-06-30 05:29:52', '2021-06-30 05:29:52'),
(438, 'Vendor Document', 'vendor-document-delete', 'Delete', 'Delete Vendor Document', 0, '2021-06-30 05:29:53', '2021-06-30 05:29:53'),
(439, 'Vendor Document', 'vendor-document-active', 'Active', 'Active Vendor Document', 0, '2021-06-30 05:29:53', '2021-06-30 05:29:53'),
(440, 'Vendor Document', 'vendor-document-in-active', 'In-Active', 'In-Active Vendor Document', 0, '2021-06-30 05:29:53', '2021-06-30 05:29:53'),
(441, 'Vendor Document', 'vendor-document-bulk-action', 'Bulk(Active,InActive,Delete)', 'Vendor Document Bulk Action', 0, '2021-06-30 05:29:53', '2021-06-30 05:29:53'),
(442, 'Vendor Note', 'vendor-note-index', 'Index', 'Vendor Note Index', 0, '2021-06-30 05:29:53', '2021-06-30 05:29:53'),
(443, 'Vendor Note', 'vendor-note-add', 'Add', 'Vendor Note Add', 0, '2021-06-30 05:29:53', '2021-06-30 05:29:53'),
(444, 'Vendor Note', 'vendor-note-edit', 'Edit', 'Edit Vendor Note', 0, '2021-06-30 05:29:53', '2021-06-30 05:29:53'),
(445, 'Vendor Note', 'vendor-note-delete', 'Delete', 'Delete Vendor Note', 0, '2021-06-30 05:29:53', '2021-06-30 05:29:53'),
(446, 'Vendor Note', 'vendor-note-active', 'Active', 'Active Vendor Note', 0, '2021-06-30 05:29:53', '2021-06-30 05:29:53'),
(447, 'Vendor Note', 'vendor-note-in-active', 'In-Active', 'In-Active Vendor Note', 0, '2021-06-30 05:29:53', '2021-06-30 05:29:53'),
(448, 'Vendor Note', 'vendor-note-bulk-action', 'Bulk(Active,InActive,Delete)', 'Vendor Note Bulk Action', 0, '2021-06-30 05:29:54', '2021-06-30 05:29:54'),
(449, 'Library Management Permission', 'library-management-index', 'Library Management', 'Library Management', 1, '2021-06-30 05:29:54', '2021-06-30 05:29:54'),
(450, 'Library', 'library-index', 'Index', 'Library Index', 0, '2021-06-30 05:29:54', '2021-06-30 05:29:54'),
(451, 'Library', 'library-book-issue', 'Book Issue', 'Book Issue', 0, '2021-06-30 05:29:54', '2021-06-30 05:29:54'),
(452, 'Library', 'library-book-return', 'Book Return', 'Return Book', 0, '2021-06-30 05:29:54', '2021-06-30 05:29:54'),
(453, 'Library', 'library-return-over', 'Return Period Over', 'Return Period Over', 0, '2021-06-30 05:29:54', '2021-06-30 05:29:54'),
(454, 'Library', 'library-staff-request-index', 'Staff Request', 'Staff Request', 0, '2021-06-30 05:29:54', '2021-06-30 05:29:54'),
(455, 'Library', 'library-student-request-index', 'Student Request', 'Student Request', 0, '2021-06-30 05:29:55', '2021-06-30 05:29:55'),
(456, 'Library', 'library-issue-history', 'History', 'Issue History', 0, '2021-06-30 05:29:55', '2021-06-30 05:29:55'),
(457, 'Book', 'book-index', 'Index', 'Book Index', 0, '2021-06-30 05:29:55', '2021-06-30 05:29:55'),
(458, 'Book', 'book-add', 'Add', 'Book Add', 0, '2021-06-30 05:29:55', '2021-06-30 05:29:55'),
(459, 'Book', 'book-edit', 'Edit', 'Edit Book', 0, '2021-06-30 05:29:55', '2021-06-30 05:29:55'),
(460, 'Book', 'book-view', 'View', 'View Book', 0, '2021-06-30 05:29:55', '2021-06-30 05:29:55'),
(461, 'Book', 'book-delete', 'Delete', 'Delete Book', 0, '2021-06-30 05:29:55', '2021-06-30 05:29:55'),
(462, 'Book', 'book-active', 'Active', 'Active Book', 0, '2021-06-30 05:29:55', '2021-06-30 05:29:55'),
(463, 'Book', 'book-in-active', 'In-Active', 'In-Active Book', 0, '2021-06-30 05:29:55', '2021-06-30 05:29:55'),
(464, 'Book', 'book-bulk-action', 'Bulk(Active,InActive,Delete)', 'Book Bulk Action', 0, '2021-06-30 05:29:55', '2021-06-30 05:29:55'),
(465, 'Book', 'book-add-copies', 'Add Book Copies', 'Add Book Copies', 0, '2021-06-30 05:29:55', '2021-06-30 05:29:55'),
(466, 'Book', 'book-status', 'Status', 'Book Status', 0, '2021-06-30 05:29:56', '2021-06-30 05:29:56'),
(467, 'Book', 'book-bulk-copies-delete', 'Delete Bulk Copies', 'Delete Bulk Copes', 0, '2021-06-30 05:29:56', '2021-06-30 05:29:56'),
(468, 'Book Category', 'book-category-index', 'Index', 'Book Category Index', 0, '2021-06-30 05:29:56', '2021-06-30 05:29:56'),
(469, 'Book Category', 'book-category-add', 'Add', 'Book Category Add', 0, '2021-06-30 05:29:56', '2021-06-30 05:29:56'),
(470, 'Book Category', 'book-category-edit', 'Edit', 'Edit Book Category', 0, '2021-06-30 05:29:56', '2021-06-30 05:29:56'),
(471, 'Book Category', 'book-category-delete', 'Delete', 'Delete Book Category', 0, '2021-06-30 05:29:56', '2021-06-30 05:29:56'),
(472, 'Book Category', 'book-category-active', 'Active', 'Active Book Category', 0, '2021-06-30 05:29:56', '2021-06-30 05:29:56'),
(473, 'Book Category', 'book-category-in-active', 'In-Active', 'In-Active Book Category', 0, '2021-06-30 05:29:56', '2021-06-30 05:29:56'),
(474, 'Book Category', 'book-category-bulk-action', 'Bulk(Active,InActive,Delete)', 'Book Category Bulk Action', 0, '2021-06-30 05:29:56', '2021-06-30 05:29:56'),
(475, 'Library Circulation', 'library-circulation-index', 'Index', 'Library Circulation Index', 0, '2021-06-30 05:29:56', '2021-06-30 05:29:56'),
(476, 'Library Circulation', 'library-circulation-add', 'Add', 'Library Circulation Add', 0, '2021-06-30 05:29:56', '2021-06-30 05:29:56'),
(477, 'Library Circulation', 'library-circulation-edit', 'Edit', 'Edit Library Circulation', 0, '2021-06-30 05:29:56', '2021-06-30 05:29:56'),
(478, 'Library Circulation', 'library-circulation-delete', 'Delete', 'Delete Library Circulation', 0, '2021-06-30 05:29:56', '2021-06-30 05:29:56'),
(479, 'Library Circulation', 'library-circulation-active', 'Active', 'Active Library Circulation', 0, '2021-06-30 05:29:57', '2021-06-30 05:29:57'),
(480, 'Library Circulation', 'library-circulation-in-active', 'In-Active', 'In-Active Library Circulation', 0, '2021-06-30 05:29:57', '2021-06-30 05:29:57'),
(481, 'Library Circulation', 'library-circulation-bulk-action', 'Bulk(Active,InActive,Delete)', 'Library Circulation Bulk Action', 0, '2021-06-30 05:29:57', '2021-06-30 05:29:57'),
(482, 'Library Member', 'library-member-index', 'Index', 'Library Member Index', 0, '2021-06-30 05:29:57', '2021-06-30 05:29:57'),
(483, 'Library Member', 'library-member-add', 'Add', 'Library Member Add', 0, '2021-06-30 05:29:57', '2021-06-30 05:29:57'),
(484, 'Library Member', 'library-member-edit', 'Edit', 'Edit Library Member', 0, '2021-06-30 05:29:57', '2021-06-30 05:29:57'),
(485, 'Library Member', 'library-member-delete', 'Delete', 'Delete Library Member', 0, '2021-06-30 05:29:57', '2021-06-30 05:29:57'),
(486, 'Library Member', 'library-member-active', 'Active', 'Active Library Member', 0, '2021-06-30 05:29:57', '2021-06-30 05:29:57'),
(487, 'Library Member', 'library-member-in-active', 'In-Active', 'In-Active Library Member', 0, '2021-06-30 05:29:57', '2021-06-30 05:29:57'),
(488, 'Library Member', 'library-member-bulk-action', 'Bulk(Active,InActive,Delete)', 'Library Member Bulk Action', 0, '2021-06-30 05:29:57', '2021-06-30 05:29:57'),
(489, 'Library Member', 'library-member-staff', 'Staff Index', 'Library Member Staff', 0, '2021-06-30 05:29:58', '2021-06-30 05:29:58'),
(490, 'Library Member', 'library-member-staff-view', 'Staff View', 'Library Member Staff', 0, '2021-06-30 05:29:58', '2021-06-30 05:29:58'),
(491, 'Library Member', 'library-member-student', 'Student Index', 'Library Member Student', 0, '2021-06-30 05:29:58', '2021-06-30 05:29:58'),
(492, 'Library Member', 'library-member-student-view', 'Student View', 'Library Member Student', 0, '2021-06-30 05:29:58', '2021-06-30 05:29:58'),
(493, 'Attendance Management Permission', 'attendance-management-index', 'Attendance Management', 'Attendance Management', 1, '2021-06-30 05:29:58', '2021-06-30 05:29:58'),
(494, 'Attendance Master', 'attendance-master-index', 'Index', 'Attendance Master Index', 0, '2021-06-30 05:29:58', '2021-06-30 05:29:58'),
(495, 'Attendance Master', 'attendance-master-add', 'Add', 'Attendance Master Add', 0, '2021-06-30 05:29:58', '2021-06-30 05:29:58'),
(496, 'Attendance Master', 'attendance-master-edit', 'Edit', 'Edit Attendance Master', 0, '2021-06-30 05:29:58', '2021-06-30 05:29:58'),
(497, 'Attendance Master', 'attendance-master-delete', 'Delete', 'Delete Attendance Master', 0, '2021-06-30 05:29:59', '2021-06-30 05:29:59'),
(498, 'Attendance Master', 'attendance-master-active', 'Active', 'Active Attendance Master', 0, '2021-06-30 05:29:59', '2021-06-30 05:29:59'),
(499, 'Attendance Master', 'attendance-master-in-active', 'In-Active', 'In-Active Attendance Master', 0, '2021-06-30 05:29:59', '2021-06-30 05:29:59'),
(500, 'Attendance Master', 'attendance-master-bulk-action', 'Bulk(Active,InActive,Delete)', 'Attendance Master Bulk Action', 0, '2021-06-30 05:29:59', '2021-06-30 05:29:59'),
(501, 'Student Regular Attendance', 'student-attendance-index', 'Index', 'Student Regular Attendance Index', 0, '2021-06-30 05:29:59', '2021-06-30 05:29:59'),
(502, 'Student Regular Attendance', 'student-attendance-add', 'Add', 'Student Regular Attendance Add', 0, '2021-06-30 05:29:59', '2021-06-30 05:29:59'),
(503, 'Student Regular Attendance', 'student-attendance-delete', 'Delete', 'Delete Student Regular Attendance', 0, '2021-06-30 05:29:59', '2021-06-30 05:29:59'),
(504, 'Student Regular Attendance', 'student-attendance-bulk-action', 'Bulk(Active,InActive,Delete)', 'Student Regular Attendance Bulk Action', 0, '2021-06-30 05:29:59', '2021-06-30 05:29:59'),
(505, 'Student SubjectWise Attendance', 'subject-attendance-index', 'Index', 'Student SubjectWise Attendance Index', 0, '2021-06-30 05:29:59', '2021-06-30 05:29:59'),
(506, 'Student SubjectWise Attendance', 'subject-attendance-add', 'Add', 'Student SubjectWise Attendance Add', 0, '2021-06-30 05:30:00', '2021-06-30 05:30:00'),
(507, 'Student SubjectWise Attendance', 'subject-attendance-delete', 'Delete', 'Delete Student SubjectWise Attendance', 0, '2021-06-30 05:30:00', '2021-06-30 05:30:00'),
(508, 'Student SubjectWise Attendance', 'subject-attendance-bulk-action', 'Bulk(Active,InActive,Delete)', 'Student SubjectWise Attendance Bulk Action', 0, '2021-06-30 05:30:00', '2021-06-30 05:30:00'),
(509, 'Student SubjectWise Attendance', 'subject-attendance-alert', 'Alert', 'Student SubjectWise Attendance Alert', 0, '2021-06-30 05:30:00', '2021-06-30 05:30:00'),
(510, 'Staff Attendance', 'staff-attendance-index', 'Index', 'Staff Attendance Index', 0, '2021-06-30 05:30:00', '2021-06-30 05:30:00'),
(511, 'Staff Attendance', 'staff-attendance-add', 'Add', 'Staff Attendance Add', 0, '2021-06-30 05:30:00', '2021-06-30 05:30:00'),
(512, 'Staff Attendance', 'staff-attendance-delete', 'Delete', 'Delete Staff Attendance', 0, '2021-06-30 05:30:00', '2021-06-30 05:30:00'),
(513, 'Staff Attendance', 'staff-attendance-bulk-action', 'Bulk(Active,InActive,Delete)', 'Staff Attendance Bulk Action', 0, '2021-06-30 05:30:00', '2021-06-30 05:30:00'),
(514, 'Exam Management Permission', 'exam-management-index', 'Exam Management', 'Exam Management', 1, '2021-06-30 05:30:01', '2021-06-30 05:30:01'),
(515, 'Exam', 'exam-index', 'Index', 'Exam Index', 0, '2021-06-30 05:30:01', '2021-06-30 05:30:01'),
(516, 'Exam', 'exam-add', 'Add', 'Exam Add', 0, '2021-06-30 05:30:01', '2021-06-30 05:30:01'),
(517, 'Exam', 'exam-edit', 'Edit', 'Edit Exam', 0, '2021-06-30 05:30:01', '2021-06-30 05:30:01'),
(518, 'Exam', 'exam-delete', 'Delete', 'Delete Exam', 0, '2021-06-30 05:30:01', '2021-06-30 05:30:01'),
(519, 'Exam', 'exam-active', 'Active', 'Active Exam', 0, '2021-06-30 05:30:01', '2021-06-30 05:30:01'),
(520, 'Exam', 'exam-in-active', 'In-Active', 'In-Active Exam', 0, '2021-06-30 05:30:01', '2021-06-30 05:30:01'),
(521, 'Exam', 'exam-bulk-action', 'Bulk(Active,InActive,Delete)', 'Exam Bulk Action', 0, '2021-06-30 05:30:01', '2021-06-30 05:30:01'),
(522, 'Exam', 'exam-admit-card', 'Admit Card', 'Exam Admit Card', 0, '2021-06-30 05:30:01', '2021-06-30 05:30:01'),
(523, 'Exam', 'exam-exam-routine', 'Routin/Schedule', 'Exam Routine/Schedule', 0, '2021-06-30 05:30:02', '2021-06-30 05:30:02'),
(524, 'Exam', 'exam-mark-ledger', 'MarkLedger', 'Exam Mark Ledger', 0, '2021-06-30 05:30:02', '2021-06-30 05:30:02'),
(525, 'Exam', 'exam-result-publish', 'Result Publish', 'Exam Result Publish', 0, '2021-06-30 05:30:02', '2021-06-30 05:30:02'),
(526, 'Exam', 'exam-result-un-publish', 'Result UnPublish', 'Exam Result UnPublish', 0, '2021-06-30 05:30:02', '2021-06-30 05:30:02'),
(527, 'Exam Schedule', 'exam-schedule-index', 'Index', 'Exam Schedule Index', 0, '2021-06-30 05:30:02', '2021-06-30 05:30:02'),
(528, 'Exam Schedule', 'exam-schedule-add', 'Add', 'Exam Schedule Add', 0, '2021-06-30 05:30:02', '2021-06-30 05:30:02'),
(529, 'Exam Schedule', 'exam-schedule-edit', 'Edit', 'Edit Exam Schedule', 0, '2021-06-30 05:30:02', '2021-06-30 05:30:02'),
(530, 'Exam Schedule', 'exam-schedule-delete', 'Delete', 'Delete Exam Schedule', 0, '2021-06-30 05:30:02', '2021-06-30 05:30:02'),
(531, 'Exam Schedule', 'exam-schedule-active', 'Active', 'Active Exam Schedule', 0, '2021-06-30 05:30:03', '2021-06-30 05:30:03'),
(532, 'Exam Schedule', 'exam-schedule-in-active', 'In-Active', 'In-Active Exam Schedule', 0, '2021-06-30 05:30:03', '2021-06-30 05:30:03'),
(533, 'Exam Mark Ledger', 'exam-mark-ledger-index', 'Index', 'Exam Mark Ledger Index', 0, '2021-06-30 05:30:03', '2021-06-30 05:30:03'),
(534, 'Exam Mark Ledger', 'exam-mark-ledger-add', 'Add', 'Exam Mark Ledger Add', 0, '2021-06-30 05:30:03', '2021-06-30 05:30:03'),
(535, 'Exam Mark Ledger', 'exam-mark-ledger-edit', 'Edit', 'Edit Exam Mark Ledger', 0, '2021-06-30 05:30:03', '2021-06-30 05:30:03'),
(536, 'Exam Mark Ledger', 'exam-mark-ledger-delete', 'Delete', 'Delete Exam Mark Ledger', 0, '2021-06-30 05:30:03', '2021-06-30 05:30:03'),
(537, 'Exam Mark Ledger', 'exam-mark-ledger-active', 'Active', 'Active Exam Mark Ledger', 0, '2021-06-30 05:30:03', '2021-06-30 05:30:03'),
(538, 'Exam Mark Ledger', 'exam-mark-ledger-in-active', 'In-Active', 'In-Active Exam Mark Ledger', 0, '2021-06-30 05:30:03', '2021-06-30 05:30:03'),
(539, 'Exam Print', 'exam-print-admitcard', 'Admit Card', 'Exam Admit Card', 0, '2021-06-30 05:30:03', '2021-06-30 05:30:03'),
(540, 'Exam Print', 'exam-print-routine', 'Routine/Schedule', 'Exam Routine/Schedule', 0, '2021-06-30 05:30:03', '2021-06-30 05:30:03'),
(541, 'Exam Print', 'exam-print-mark-sheet', 'Mark/Grade Sheet', 'Exam Mark/Grade Sheet', 0, '2021-06-30 05:30:04', '2021-06-30 05:30:04'),
(542, 'Exam Print', 'exam-print-mark-ledger', 'Mark Ledger', 'Exam Mark Ledger Sheet', 0, '2021-06-30 05:30:04', '2021-06-30 05:30:04'),
(543, 'Certificate Management Permission', 'certificate-management-index', 'Certificate Management', 'Certificate Management', 1, '2021-06-30 05:30:04', '2021-06-30 05:30:04'),
(544, 'Certificate', 'issue-certificate', 'Certificate Issue', 'Certificate Issue', 0, '2021-06-30 05:30:04', '2021-06-30 05:30:04'),
(545, 'Certificate', 'certificate-history', 'Certificate History', 'Certificate History', 0, '2021-06-30 05:30:04', '2021-06-30 05:30:04'),
(546, 'General Certificate', 'certificate-generate', 'General Certificate Generate', 'General Certificate Generate', 0, '2021-06-30 05:30:04', '2021-06-30 05:30:04'),
(547, 'General Certificate', 'general-certificate-print', 'General Certificate Print', 'General Certificate Print', 0, '2021-06-30 05:30:04', '2021-06-30 05:30:04'),
(548, 'Certificate Template', 'certificate-template-index', 'Index', 'Certificate Template Index', 0, '2021-06-30 05:30:04', '2021-06-30 05:30:04'),
(549, 'Certificate Template', 'certificate-template-add', 'Add', 'Certificate Template Add', 0, '2021-06-30 05:30:04', '2021-06-30 05:30:04'),
(550, 'Certificate Template', 'certificate-template-edit', 'Edit', 'Edit Certificate Template', 0, '2021-06-30 05:30:04', '2021-06-30 05:30:04'),
(551, 'Certificate Template', 'certificate-template-view', 'View', 'View Certificate Template', 0, '2021-06-30 05:30:05', '2021-06-30 05:30:05'),
(552, 'Certificate Template', 'certificate-template-delete', 'Delete', 'Delete Certificate Template', 0, '2021-06-30 05:30:05', '2021-06-30 05:30:05'),
(553, 'Certificate Template', 'certificate-template-active', 'Active', 'Active Certificate Template', 0, '2021-06-30 05:30:05', '2021-06-30 05:30:05'),
(554, 'Certificate Template', 'certificate-template-in-active', 'In-Active', 'In-Active Certificate Template', 0, '2021-06-30 05:30:05', '2021-06-30 05:30:05'),
(555, 'Certificate Template', 'certificate-template-bulk-action', 'Bulk(Active,InActive,Delete', 'Bulk Certificate Template', 0, '2021-06-30 05:30:05', '2021-06-30 05:30:05'),
(556, 'Attendance Certificate', 'attendance-certificate-index', 'Index', 'Attendance Certificate Index', 0, '2021-06-30 05:30:05', '2021-06-30 05:30:05'),
(557, 'Attendance Certificate', 'attendance-certificate-add', 'Add', 'Attendance Certificate Add', 0, '2021-06-30 05:30:05', '2021-06-30 05:30:05'),
(558, 'Attendance Certificate', 'attendance-certificate-edit', 'Edit', 'Edit Attendance Certificate', 0, '2021-06-30 05:30:05', '2021-06-30 05:30:05'),
(559, 'Attendance Certificate', 'attendance-certificate-view', 'View', 'View Attendance Certificate', 0, '2021-06-30 05:30:05', '2021-06-30 05:30:05'),
(560, 'Attendance Certificate', 'attendance-certificate-delete', 'Delete', 'Delete Attendance Certificate', 0, '2021-06-30 05:30:05', '2021-06-30 05:30:05'),
(561, 'Attendance Certificate', 'attendance-certificate-bulk-action', 'Bulk(Active,InActive,Delete', 'Bulk Attendance Certificate', 0, '2021-06-30 05:30:06', '2021-06-30 05:30:06'),
(562, 'Attendance Certificate', 'attendance-certificate-print', 'Print', 'Print Attendance Certificate', 0, '2021-06-30 05:30:06', '2021-06-30 05:30:06'),
(563, 'Attendance Certificate', 'attendance-certificate-bulk-print', 'Bulk Print', 'Bulk Print Attendance Certificate', 0, '2021-06-30 05:30:06', '2021-06-30 05:30:06'),
(564, 'Transfer Certificate', 'transfer-certificate-index', 'Index', 'Transfer Certificate Index', 0, '2021-06-30 05:30:06', '2021-06-30 05:30:06'),
(565, 'Transfer Certificate', 'transfer-certificate-add', 'Add', 'Transfer Certificate Add', 0, '2021-06-30 05:30:06', '2021-06-30 05:30:06'),
(566, 'Transfer Certificate', 'transfer-certificate-edit', 'Edit', 'Edit Transfer Certificate', 0, '2021-06-30 05:30:06', '2021-06-30 05:30:06'),
(567, 'Transfer Certificate', 'transfer-certificate-view', 'View', 'View Transfer Certificate', 0, '2021-06-30 05:30:06', '2021-06-30 05:30:06'),
(568, 'Transfer Certificate', 'transfer-certificate-delete', 'Delete', 'Delete Transfer Certificate', 0, '2021-06-30 05:30:06', '2021-06-30 05:30:06'),
(569, 'Transfer Certificate', 'transfer-certificate-bulk-action', 'Bulk(Active,InActive,Delete', 'Bulk Transfer Certificate', 0, '2021-06-30 05:30:06', '2021-06-30 05:30:06'),
(570, 'Transfer Certificate', 'transfer-certificate-print', 'Print', 'Print Transfer Certificate', 0, '2021-06-30 05:30:06', '2021-06-30 05:30:06'),
(571, 'Transfer Certificate', 'transfer-certificate-bulk-print', 'Bulk Print', 'Bulk Print Transfer Certificate', 0, '2021-06-30 05:30:06', '2021-06-30 05:30:06'),
(572, 'Bonafide Certificate', 'bonafide-certificate-index', 'Index', 'Bonafide Certificate Index', 0, '2021-06-30 05:30:06', '2021-06-30 05:30:06'),
(573, 'Bonafide Certificate', 'bonafide-certificate-add', 'Add', 'Bonafide Certificate Add', 0, '2021-06-30 05:30:06', '2021-06-30 05:30:06'),
(574, 'Bonafide Certificate', 'bonafide-certificate-edit', 'Edit', 'Edit Bonafide Certificate', 0, '2021-06-30 05:30:06', '2021-06-30 05:30:06'),
(575, 'Bonafide Certificate', 'bonafide-certificate-view', 'View', 'View Bonafide Certificate', 0, '2021-06-30 05:30:06', '2021-06-30 05:30:06'),
(576, 'Bonafide Certificate', 'bonafide-certificate-delete', 'Delete', 'Delete Bonafide Certificate', 0, '2021-06-30 05:30:06', '2021-06-30 05:30:06'),
(577, 'Bonafide Certificate', 'bonafide-certificate-bulk-action', 'Bulk(Active,InActive,Delete', 'Bulk Bonafide Certificate', 0, '2021-06-30 05:30:06', '2021-06-30 05:30:06'),
(578, 'Bonafide Certificate', 'bonafide-certificate-print', 'Print', 'Print Bonafide Certificate', 0, '2021-06-30 05:30:07', '2021-06-30 05:30:07'),
(579, 'Bonafide Certificate', 'bonafide-certificate-bulk-print', 'Bulk Print', 'Bulk Print Bonafide Certificate', 0, '2021-06-30 05:30:07', '2021-06-30 05:30:07'),
(580, 'Course Completion Certificate', 'course-completion-certificate-index', 'Index', 'Course Completion Certificate Index', 0, '2021-06-30 05:30:07', '2021-06-30 05:30:07'),
(581, 'Course Completion Certificate', 'course-completion-certificate-add', 'Add', 'Course Completion Certificate Add', 0, '2021-06-30 05:30:07', '2021-06-30 05:30:07'),
(582, 'Course Completion Certificate', 'course-completion-certificate-edit', 'Edit', 'Edit Course Completion Certificate', 0, '2021-06-30 05:30:07', '2021-06-30 05:30:07'),
(583, 'Course Completion Certificate', 'course-completion-certificate-view', 'View', 'View Course Completion Certificate', 0, '2021-06-30 05:30:07', '2021-06-30 05:30:07'),
(584, 'Course Completion Certificate', 'course-completion-certificate-delete', 'Delete', 'Delete Course Completion Certificate', 0, '2021-06-30 05:30:07', '2021-06-30 05:30:07'),
(585, 'Course Completion Certificate', 'course-completion-certificate-bulk-action', 'Bulk(Active,InActive,Delete', 'Bulk Course Completion Certificate', 0, '2021-06-30 05:30:07', '2021-06-30 05:30:07'),
(586, 'Course Completion Certificate', 'course-completion-certificate-print', 'Print', 'Print Course Completion Certificate', 0, '2021-06-30 05:30:07', '2021-06-30 05:30:07'),
(587, 'Course Completion Certificate', 'course-completion-certificate-bulk-print', 'Bulk Print', 'Bulk Print Course Completion Certificate', 0, '2021-06-30 05:30:07', '2021-06-30 05:30:07'),
(588, 'Hostel Management Permission', 'hostel-management-index', 'Hostel Management', 'Hostel Management', 1, '2021-06-30 05:30:07', '2021-06-30 05:30:07'),
(589, 'Hostel', 'hostel-index', 'Index', 'Hostel Index', 0, '2021-06-30 05:30:07', '2021-06-30 05:30:07'),
(590, 'Hostel', 'hostel-add', 'Add', 'Hostel Add', 0, '2021-06-30 05:30:08', '2021-06-30 05:30:08'),
(591, 'Hostel', 'hostel-view', 'view', 'Hostel View', 0, '2021-06-30 05:30:08', '2021-06-30 05:30:08'),
(592, 'Hostel', 'hostel-edit', 'Edit', 'Edit Hostel', 0, '2021-06-30 05:30:08', '2021-06-30 05:30:08'),
(593, 'Hostel', 'hostel-delete', 'Delete', 'Delete Hostel', 0, '2021-06-30 05:30:08', '2021-06-30 05:30:08'),
(594, 'Hostel', 'hostel-active', 'Active', 'Active Hostel', 0, '2021-06-30 05:30:08', '2021-06-30 05:30:08'),
(595, 'Hostel', 'hostel-in-active', 'In-Active', 'In-Active Hostel', 0, '2021-06-30 05:30:08', '2021-06-30 05:30:08'),
(596, 'Hostel', 'hostel-bulk-action', 'Bulk(Active,InActive,Delete)', 'Hostel Bulk Action', 0, '2021-06-30 05:30:08', '2021-06-30 05:30:08'),
(597, 'Room', 'room-add', 'Add', 'Room Add', 0, '2021-06-30 05:30:08', '2021-06-30 05:30:08'),
(598, 'Room', 'room-view', 'View', 'Room View', 0, '2021-06-30 05:30:08', '2021-06-30 05:30:08'),
(599, 'Room', 'room-edit', 'Edit', 'Edit Room', 0, '2021-06-30 05:30:08', '2021-06-30 05:30:08'),
(600, 'Room', 'room-delete', 'Delete', 'Delete Room', 0, '2021-06-30 05:30:08', '2021-06-30 05:30:08'),
(601, 'Room', 'room-active', 'Active', 'Active Room', 0, '2021-06-30 05:30:08', '2021-06-30 05:30:08'),
(602, 'Room', 'room-in-active', 'In-Active', 'In-Active Room', 0, '2021-06-30 05:30:08', '2021-06-30 05:30:08'),
(603, 'Room', 'room-bulk-action', 'Bulk(Active,InActive,Delete)', 'Room Bulk Action', 0, '2021-06-30 05:30:09', '2021-06-30 05:30:09'),
(604, 'Bed', 'bed-add', 'Add', 'Bed Add', 0, '2021-06-30 05:30:09', '2021-06-30 05:30:09'),
(605, 'Bed', 'bed-status', 'Status', 'Bed Status', 0, '2021-06-30 05:30:09', '2021-06-30 05:30:09'),
(606, 'Bed', 'bed-delete', 'Delete', 'Delete Bed', 0, '2021-06-30 05:30:09', '2021-06-30 05:30:09'),
(607, 'Bed', 'bed-active', 'Active', 'Active Bed', 0, '2021-06-30 05:30:09', '2021-06-30 05:30:09'),
(608, 'Bed', 'bed-in-active', 'In-Active', 'In-Active Bed', 0, '2021-06-30 05:30:09', '2021-06-30 05:30:09'),
(609, 'Bed', 'bed-bulk-action', 'Bulk(Active,InActive,Delete)', 'Bed Bulk Action', 0, '2021-06-30 05:30:09', '2021-06-30 05:30:09'),
(610, 'Room Type', 'room-type-index', 'Index', 'Room Type Index', 0, '2021-06-30 05:30:10', '2021-06-30 05:30:10'),
(611, 'Room Type', 'room-type-add', 'Add', 'Room Type Add', 0, '2021-06-30 05:30:10', '2021-06-30 05:30:10'),
(612, 'Room Type', 'room-type-edit', 'Edit', 'Edit Room Type', 0, '2021-06-30 05:30:10', '2021-06-30 05:30:10'),
(613, 'Room Type', 'room-type-delete', 'Delete', 'Delete Room Type', 0, '2021-06-30 05:30:10', '2021-06-30 05:30:10'),
(614, 'Room Type', 'room-type-active', 'Active', 'Active Room Type', 0, '2021-06-30 05:30:11', '2021-06-30 05:30:11'),
(615, 'Room Type', 'room-type-in-active', 'In-Active', 'In-Active Room Type', 0, '2021-06-30 05:30:11', '2021-06-30 05:30:11'),
(616, 'Room Type', 'room-type-bulk-action', 'Bulk(Active,InActive,Delete)', 'Room Type Bulk Action', 0, '2021-06-30 05:30:11', '2021-06-30 05:30:11'),
(617, 'Resident', 'resident-index', 'Index', 'Resident Index', 0, '2021-06-30 05:30:11', '2021-06-30 05:30:11'),
(618, 'Resident', 'resident-add', 'Add', 'Resident Add', 0, '2021-06-30 05:30:11', '2021-06-30 05:30:11'),
(619, 'Resident', 'resident-edit', 'Edit', 'Edit Resident', 0, '2021-06-30 05:30:11', '2021-06-30 05:30:11'),
(620, 'Resident', 'resident-delete', 'Delete', 'Delete Resident', 0, '2021-06-30 05:30:11', '2021-06-30 05:30:11'),
(621, 'Resident', 'resident-bulk-action', 'Bulk(Active,InActive,Delete)', 'Resident Bulk Action', 0, '2021-06-30 05:30:12', '2021-06-30 05:30:12'),
(622, 'Resident', 'resident-renew', 'Renew', 'Renew Resident', 0, '2021-06-30 05:30:12', '2021-06-30 05:30:12'),
(623, 'Resident', 'resident-leave', 'Leave', 'Leave Resident', 0, '2021-06-30 05:30:12', '2021-06-30 05:30:12'),
(624, 'Resident', 'resident-shift', 'Shift', 'Shift Resident', 0, '2021-06-30 05:30:13', '2021-06-30 05:30:13'),
(625, 'Resident', 'resident-history', 'History', 'Resident History', 0, '2021-06-30 05:30:15', '2021-06-30 05:30:15'),
(626, 'Food', 'food-index', 'Index', 'Food Index', 0, '2021-06-30 05:30:15', '2021-06-30 05:30:15'),
(627, 'Food', 'food-add', 'Add', 'Food Add', 0, '2021-06-30 05:30:16', '2021-06-30 05:30:16'),
(628, 'Food', 'food-edit', 'Edit', 'Edit Food', 0, '2021-06-30 05:30:16', '2021-06-30 05:30:16'),
(629, 'Food', 'food-delete', 'Delete', 'Delete Food', 0, '2021-06-30 05:30:16', '2021-06-30 05:30:16'),
(630, 'Food', 'food-active', 'Active', 'Active Food', 0, '2021-06-30 05:30:17', '2021-06-30 05:30:17'),
(631, 'Food', 'food-in-active', 'In-Active', 'In-Active Food', 0, '2021-06-30 05:30:17', '2021-06-30 05:30:17'),
(632, 'Food', 'food-bulk-action', 'Bulk(Active,InActive,Delete)', 'Food Bulk Action', 0, '2021-06-30 05:30:18', '2021-06-30 05:30:18'),
(633, 'Food Category', 'food-category-index', 'Index', 'Food Category Index', 0, '2021-06-30 05:30:18', '2021-06-30 05:30:18'),
(634, 'Food Category', 'food-category-add', 'Add', 'Food Category Add', 0, '2021-06-30 05:30:19', '2021-06-30 05:30:19'),
(635, 'Food Category', 'food-category-edit', 'Edit', 'Edit Food Category', 0, '2021-06-30 05:30:19', '2021-06-30 05:30:19'),
(636, 'Food Category', 'food-category-delete', 'Delete', 'Delete Food Category', 0, '2021-06-30 05:30:19', '2021-06-30 05:30:19'),
(637, 'Food Category', 'food-category-active', 'Active', 'Active Food Category', 0, '2021-06-30 05:30:20', '2021-06-30 05:30:20'),
(638, 'Food Category', 'food-category-in-active', 'In-Active', 'In-Active Food Category', 0, '2021-06-30 05:30:20', '2021-06-30 05:30:20'),
(639, 'Food Category', 'food-category-bulk-action', 'Bulk(Active,InActive,Delete)', 'Food Category Bulk Action', 0, '2021-06-30 05:30:20', '2021-06-30 05:30:20'),
(640, 'Food Item', 'food-item-index', 'Index', 'Food Item Index', 0, '2021-06-30 05:30:20', '2021-06-30 05:30:20'),
(641, 'Food Item', 'food-item-add', 'Add', 'Food Item Add', 0, '2021-06-30 05:30:21', '2021-06-30 05:30:21'),
(642, 'Food Item', 'food-item-edit', 'Edit', 'Edit Food Item', 0, '2021-06-30 05:30:21', '2021-06-30 05:30:21'),
(643, 'Food Item', 'food-item-delete', 'Delete', 'Delete Food Item', 0, '2021-06-30 05:30:21', '2021-06-30 05:30:21'),
(644, 'Food Item', 'food-item-active', 'Active', 'Active Food Item', 0, '2021-06-30 05:30:21', '2021-06-30 05:30:21'),
(645, 'Food Item', 'food-item-in-active', 'In-Active', 'In-Active Food Item', 0, '2021-06-30 05:30:22', '2021-06-30 05:30:22'),
(646, 'Food Item', 'food-item-bulk-action', 'Bulk(Active,InActive,Delete)', 'Food Item Bulk Action', 0, '2021-06-30 05:30:22', '2021-06-30 05:30:22'),
(647, 'Eating Time', 'eating-time-index', 'Index', 'Eating Time Index', 0, '2021-06-30 05:30:23', '2021-06-30 05:30:23'),
(648, 'Eating Time', 'eating-time-add', 'Add', 'Eating Time Add', 0, '2021-06-30 05:30:23', '2021-06-30 05:30:23'),
(649, 'Eating Time', 'eating-time-edit', 'Edit', 'Edit Eating Time', 0, '2021-06-30 05:30:23', '2021-06-30 05:30:23'),
(650, 'Eating Time', 'eating-time-delete', 'Delete', 'Delete Eating Time', 0, '2021-06-30 05:30:23', '2021-06-30 05:30:23'),
(651, 'Eating Time', 'eating-time-active', 'Active', 'Active Eating Time', 0, '2021-06-30 05:30:23', '2021-06-30 05:30:23'),
(652, 'Eating Time', 'eating-time-in-active', 'In-Active', 'In-Active Eating Time', 0, '2021-06-30 05:30:23', '2021-06-30 05:30:23'),
(653, 'Eating Time', 'eating-time-bulk-action', 'Bulk(Active,InActive,Delete)', 'Eating Time Bulk Action', 0, '2021-06-30 05:30:24', '2021-06-30 05:30:24'),
(654, 'Transport Management Permission', 'transport-management-index', 'Transport Management', 'Transport Management', 1, '2021-06-30 05:30:24', '2021-06-30 05:30:24'),
(655, 'Transport Route', 'transport-route-index', 'Index', 'Transport Route Index', 0, '2021-06-30 05:30:24', '2021-06-30 05:30:24'),
(656, 'Transport Route', 'transport-route-add', 'Add', 'Transport Route Add', 0, '2021-06-30 05:30:24', '2021-06-30 05:30:24'),
(657, 'Transport Route', 'transport-route-edit', 'Edit', 'Edit Transport Route', 0, '2021-06-30 05:30:24', '2021-06-30 05:30:24'),
(658, 'Transport Route', 'transport-route-delete', 'Delete', 'Delete Transport Route', 0, '2021-06-30 05:30:24', '2021-06-30 05:30:24'),
(659, 'Transport Route', 'transport-route-active', 'Active', 'Active Transport Route', 0, '2021-06-30 05:30:24', '2021-06-30 05:30:24'),
(660, 'Transport Route', 'transport-route-in-active', 'In-Active', 'In-Active Transport Route', 0, '2021-06-30 05:30:24', '2021-06-30 05:30:24'),
(661, 'Transport Route', 'transport-route-bulk-action', 'Bulk(Active,InActive,Delete)', 'Transport Route Bulk Action', 0, '2021-06-30 05:30:24', '2021-06-30 05:30:24'),
(662, 'Vehicle', 'vehicle-index', 'Index', 'Vehicle Index', 0, '2021-06-30 05:30:24', '2021-06-30 05:30:24'),
(663, 'Vehicle', 'vehicle-add', 'Add', 'Vehicle Add', 0, '2021-06-30 05:30:24', '2021-06-30 05:30:24'),
(664, 'Vehicle', 'vehicle-edit', 'Edit', 'Edit Vehicle', 0, '2021-06-30 05:30:24', '2021-06-30 05:30:24'),
(665, 'Vehicle', 'vehicle-delete', 'Delete', 'Delete Vehicle', 0, '2021-06-30 05:30:25', '2021-06-30 05:30:25'),
(666, 'Vehicle', 'vehicle-active', 'Active', 'Active Vehicle', 0, '2021-06-30 05:30:25', '2021-06-30 05:30:25'),
(667, 'Vehicle', 'vehicle-in-active', 'In-Active', 'In-Active Vehicle', 0, '2021-06-30 05:30:25', '2021-06-30 05:30:25'),
(668, 'Vehicle', 'vehicle-bulk-action', 'Bulk(Active,InActive,Delete)', 'Vehicle Bulk Action', 0, '2021-06-30 05:30:25', '2021-06-30 05:30:25'),
(669, 'Transport User/Traveller', 'transport-user-index', 'Index', 'Transport User/Traveller Index', 0, '2021-06-30 05:30:25', '2021-06-30 05:30:25'),
(670, 'Transport User/Traveller', 'transport-user-add', 'Add', 'Transport User/Traveller Add', 0, '2021-06-30 05:30:25', '2021-06-30 05:30:25'),
(671, 'Transport User/Traveller', 'transport-user-edit', 'Edit', 'Edit Transport User/Traveller', 0, '2021-06-30 05:30:25', '2021-06-30 05:30:25'),
(672, 'Transport User/Traveller', 'transport-user-delete', 'Delete', 'Delete Transport User/Traveller', 0, '2021-06-30 05:30:25', '2021-06-30 05:30:25'),
(673, 'Transport User/Traveller', 'transport-user-bulk-action', 'Bulk(Active,InActive,Delete)', 'Transport User/Traveller Bulk Action', 0, '2021-06-30 05:30:25', '2021-06-30 05:30:25'),
(674, 'Transport User/Traveller', 'transport-user-renew', 'Renew', 'Renew Transport User/Traveller', 0, '2021-06-30 05:30:25', '2021-06-30 05:30:25'),
(675, 'Transport User/Traveller', 'transport-user-leave', 'Leave', 'Leave Transport User/Traveller', 0, '2021-06-30 05:30:25', '2021-06-30 05:30:25'),
(676, 'Transport User/Traveller', 'transport-user-shift', 'Shift', 'Shift Transport User/Traveller', 0, '2021-06-30 05:30:25', '2021-06-30 05:30:25'),
(677, 'Transport User/Traveller', 'transport-user-history', 'History', 'Resident History', 0, '2021-06-30 05:30:26', '2021-06-30 05:30:26'),
(678, 'Notice & Alert Management Permission', 'notice-group-index', 'Notice & Alert Permission', 'Notice & Alert Permission', 1, '2021-06-30 05:30:26', '2021-06-30 05:30:26'),
(679, 'Notice', 'notice-index', 'Index', 'Notice Index', 0, '2021-06-30 05:30:26', '2021-06-30 05:30:26'),
(680, 'Notice', 'notice-add', 'Add', 'Notice Add', 0, '2021-06-30 05:30:26', '2021-06-30 05:30:26'),
(681, 'Notice', 'notice-edit', 'Edit', 'Edit Notice', 0, '2021-06-30 05:30:26', '2021-06-30 05:30:26'),
(682, 'Notice', 'notice-delete', 'Delete', 'Delete Notice', 0, '2021-06-30 05:30:26', '2021-06-30 05:30:26'),
(683, 'SMS/E-Mail', 'sms-email-index', 'Index', 'SMS/E-Mail Index', 0, '2021-06-30 05:30:26', '2021-06-30 05:30:26'),
(684, 'SMS/E-Mail', 'sms-email-delete', 'Delete', 'SMS/E-Mail Delete', 0, '2021-06-30 05:30:26', '2021-06-30 05:30:26'),
(685, 'SMS/E-Mail', 'sms-email-bulk-action', 'Bulk(Active,InActive,Delete)', 'Bulk SMS/E-Mail', 0, '2021-06-30 05:30:26', '2021-06-30 05:30:26'),
(686, 'SMS/E-Mail', 'sms-email-create', 'Create', 'Create SMS/E-Mail', 0, '2021-06-30 05:30:26', '2021-06-30 05:30:26'),
(687, 'SMS/E-Mail', 'sms-email-send', 'Send', 'Send SMS/E-Mail', 0, '2021-06-30 05:30:26', '2021-06-30 05:30:26'),
(688, 'SMS/E-Mail', 'sms-email-student-guardian-send', 'Student & Guardian', 'Student & Guardian SMS/E-Mail', 0, '2021-06-30 05:30:26', '2021-06-30 05:30:26'),
(689, 'SMS/E-Mail', 'sms-email-staff-send', 'Staff', 'Staff SMS/E-Mail', 0, '2021-06-30 05:30:26', '2021-06-30 05:30:26'),
(690, 'SMS/E-Mail', 'sms-email-individual-send', 'Individual', 'Individual SMS/E-Mail', 0, '2021-06-30 05:30:27', '2021-06-30 05:30:27'),
(691, 'SMS/E-Mail', 'sms-email-fee-receipt', 'Fee Receipt', 'Fee ReceiptSMS/E-Mail', 0, '2021-06-30 05:30:27', '2021-06-30 05:30:27'),
(692, 'SMS/E-Mail', 'sms-email-due-reminder', 'Due Reminder', 'Due Reminder SMS/E-Mail', 0, '2021-06-30 05:30:27', '2021-06-30 05:30:27'),
(693, 'SMS/E-Mail', 'sms-email-book-return-reminder', 'Book Return Reminder', 'Book Return Reminder', 0, '2021-06-30 05:30:27', '2021-06-30 05:30:27'),
(694, 'More(Assignment & Download) Management Permission', 'more-index', 'More(Assignment & Download) Permission', 'More(Assignment & Download) Permission', 1, '2021-06-30 05:30:27', '2021-06-30 05:30:27'),
(695, 'Assignment', 'assignment-index', 'Index', 'Assignment Index', 0, '2021-06-30 05:30:27', '2021-06-30 05:30:27'),
(696, 'Assignment', 'assignment-add', 'Add', 'Assignment Add', 0, '2021-06-30 05:30:28', '2021-06-30 05:30:28'),
(697, 'Assignment', 'assignment-edit', 'Edit', 'Edit Assignment', 0, '2021-06-30 05:30:28', '2021-06-30 05:30:28'),
(698, 'Assignment', 'assignment-view', 'View', 'View Assignment', 0, '2021-06-30 05:30:28', '2021-06-30 05:30:28'),
(699, 'Assignment', 'assignment-delete', 'Delete', 'Delete Assignment', 0, '2021-06-30 05:30:28', '2021-06-30 05:30:28'),
(700, 'Assignment', 'assignment-active', 'Active', 'Active Assignment', 0, '2021-06-30 05:30:28', '2021-06-30 05:30:28'),
(701, 'Assignment', 'assignment-in-active', 'In-Active', 'In-Active Assignment', 0, '2021-06-30 05:30:28', '2021-06-30 05:30:28'),
(702, 'Assignment', 'assignment-bulk-action', 'Bulk(Active,InActive,Delete)', 'Assignment Bulk Action', 0, '2021-06-30 05:30:28', '2021-06-30 05:30:28'),
(703, 'Assignment Answer', 'assignment-answer-view', 'View', 'Assignment Answer View', 0, '2021-06-30 05:30:28', '2021-06-30 05:30:28'),
(704, 'Assignment Answer', 'assignment-answer-approve', 'Approve', 'Approve Assignment Answer', 0, '2021-06-30 05:30:28', '2021-06-30 05:30:28'),
(705, 'Assignment Answer', 'assignment-answer-reject', 'Reject', 'Reject Assignment Answer', 0, '2021-06-30 05:30:29', '2021-06-30 05:30:29'),
(706, 'Assignment Answer', 'assignment-answer-delete', 'Delete', 'Delete Assignment Answer', 0, '2021-06-30 05:30:29', '2021-06-30 05:30:29'),
(707, 'Assignment Answer', 'assignment-answer-bulk-action', 'Bulk(Approve, Reject,Delete)', 'Assignment Answer Bulk Action', 0, '2021-06-30 05:30:29', '2021-06-30 05:30:29'),
(708, 'Download', 'download-index', 'Index', 'Download Index', 0, '2021-06-30 05:30:29', '2021-06-30 05:30:29'),
(709, 'Download', 'download-add', 'Add', 'Download Add', 0, '2021-06-30 05:30:29', '2021-06-30 05:30:29'),
(710, 'Download', 'download-edit', 'Edit', 'Edit Download', 0, '2021-06-30 05:30:29', '2021-06-30 05:30:29'),
(711, 'Download', 'download-delete', 'Delete', 'Delete Download', 0, '2021-06-30 05:30:29', '2021-06-30 05:30:29'),
(712, 'Download', 'download-active', 'Active', 'Active Download', 0, '2021-06-30 05:30:29', '2021-06-30 05:30:29'),
(713, 'Download', 'download-in-active', 'In-Active', 'In-Active Download', 0, '2021-06-30 05:30:29', '2021-06-30 05:30:29'),
(714, 'Download', 'download-bulk-action', 'Bulk(Active,InActive,Delete)', 'Download Bulk Action', 0, '2021-06-30 05:30:29', '2021-06-30 05:30:29'),
(715, 'Meeting', 'meeting-index', 'Index', 'Meeting Index', 0, '2021-06-30 05:30:29', '2021-06-30 05:30:29'),
(716, 'Meeting', 'meeting-add', 'Add', 'Meeting Add', 0, '2021-06-30 05:30:29', '2021-06-30 05:30:29'),
(717, 'Meeting', 'meeting-delete', 'Delete', 'Delete Meeting', 0, '2021-06-30 05:30:29', '2021-06-30 05:30:29'),
(718, 'Meeting', 'meeting-complete', 'Complete', 'Complete Meeting', 0, '2021-06-30 05:30:30', '2021-06-30 05:30:30'),
(719, 'Meeting', 'meeting-start', 'Start', 'Start Meeting', 0, '2021-06-30 05:30:30', '2021-06-30 05:30:30'),
(720, 'Meeting', 'meeting-pending', 'Pending', 'Pending Meeting', 0, '2021-06-30 05:30:30', '2021-06-30 05:30:30'),
(721, 'Meeting', 'meeting-bulk-action', 'Bulk(Active,InActive,Delete)', 'Meeting Bulk Action', 0, '2021-06-30 05:30:30', '2021-06-30 05:30:30'),
(722, 'Meeting', 'meeting-zoom-index', 'Zoom Server Index', 'Meeting Index', 0, '2021-06-30 05:30:30', '2021-06-30 05:30:30'),
(723, 'Meeting', 'sms-email-meeting', 'Send Meeting Alert', 'Meeting Alert Sending', 0, '2021-06-30 05:30:30', '2021-06-30 05:30:30'),
(724, 'Web Portal Content Management Permission', 'web-cms-index', 'Web CMS Permission', 'Web CMS Permission', 1, '2021-06-30 05:30:30', '2021-06-30 05:30:30'),
(725, 'Module', 'web-menu-dashboard', 'Dashboard', 'Dashboard', 0, '2021-06-30 05:30:30', '2021-06-30 05:30:30'),
(726, 'Module', 'web-menu-analytics', 'Analytics', 'Analytics', 0, '2021-06-30 05:30:31', '2021-06-30 05:30:31'),
(727, 'Module', 'web-menu-setting', 'Settings', 'Settings', 0, '2021-06-30 05:30:31', '2021-06-30 05:30:31'),
(728, 'Module', 'web-menu-menu-page', 'Menu & Pages', 'Menu & Pages', 0, '2021-06-30 05:30:31', '2021-06-30 05:30:31'),
(729, 'Module', 'web-menu-slider', 'Slider', 'Slider', 0, '2021-06-30 05:30:31', '2021-06-30 05:30:31'),
(730, 'Module', 'web-menu-notice', 'Notice', 'Notice', 0, '2021-06-30 05:30:31', '2021-06-30 05:30:31'),
(731, 'Module', 'web-menu-blog', 'Blog', 'Blog', 0, '2021-06-30 05:30:31', '2021-06-30 05:30:31'),
(732, 'Module', 'web-menu-event', 'Event', 'Event', 0, '2021-06-30 05:30:31', '2021-06-30 05:30:31'),
(733, 'Module', 'web-menu-services', 'Services', 'Services', 0, '2021-06-30 05:30:31', '2021-06-30 05:30:31'),
(734, 'Module', 'web-menu-gallery', 'Gallery', 'Gallery', 0, '2021-06-30 05:30:31', '2021-06-30 05:30:31'),
(735, 'Module', 'web-menu-download', 'Download', 'Download', 0, '2021-06-30 05:30:32', '2021-06-30 05:30:32'),
(736, 'Module', 'web-menu-faq', 'FAQ', 'FAQ', 0, '2021-06-30 05:30:32', '2021-06-30 05:30:32'),
(737, 'Module', 'web-menu-counter', 'Counter', 'Counter', 0, '2021-06-30 05:30:32', '2021-06-30 05:30:32'),
(738, 'Module', 'web-menu-client', 'Client', 'Client', 0, '2021-06-30 05:30:32', '2021-06-30 05:30:32'),
(739, 'Module', 'web-menu-testimonial', 'Testimonial', 'Testimonial', 0, '2021-06-30 05:30:32', '2021-06-30 05:30:32'),
(740, 'Module', 'web-menu-staff', 'Staff', 'Staff', 0, '2021-06-30 05:30:32', '2021-06-30 05:30:32'),
(741, 'Module', 'web-menu-pricing', 'Pricing', 'Pricing', 0, '2021-06-30 05:30:32', '2021-06-30 05:30:32'),
(742, 'Module', 'web-menu-registration', 'Online Registration', 'Online Registration', 0, '2021-06-30 05:30:32', '2021-06-30 05:30:32'),
(743, 'Module', 'web-menu-contact', 'Contact Detail Manager', 'Contact Detail Manager', 0, '2021-06-30 05:30:32', '2021-06-30 05:30:32'),
(744, 'Module', 'web-menu-alert', 'Alert/Notification Manager', 'Alert/Notification Manager', 0, '2021-06-30 05:30:32', '2021-06-30 05:30:32'),
(745, 'Module', 'web-menu-user-role', 'User & Role', 'User & Role', 0, '2021-06-30 05:30:33', '2021-06-30 05:30:33'),
(746, 'General Setting', 'web-settings-general-index', 'Index', 'General Setting Index', 0, '2021-06-30 05:30:33', '2021-06-30 05:30:33'),
(747, 'General Setting', 'web-settings-general-add', 'Add', 'General Setting Add', 0, '2021-06-30 05:30:33', '2021-06-30 05:30:33'),
(748, 'General Setting', 'web-settings-general-edit', 'Edit', 'Edit General Setting', 0, '2021-06-30 05:30:33', '2021-06-30 05:30:33'),
(749, 'HomePage Setting', 'web-settings-home-index', 'Index', 'HomePage Setting Index', 0, '2021-06-30 05:30:33', '2021-06-30 05:30:33'),
(750, 'HomePage Setting', 'web-settings-home-add', 'Add', 'HomePage Setting Add', 0, '2021-06-30 05:30:33', '2021-06-30 05:30:33'),
(751, 'HomePage Setting', 'web-settings-home-edit', 'Edit', 'Edit HomePage Setting', 0, '2021-06-30 05:30:33', '2021-06-30 05:30:33'),
(752, 'AboutUs Setting', 'web-settings-about-us-index', 'Index', 'AboutUs Setting Index', 0, '2021-06-30 05:30:34', '2021-06-30 05:30:34'),
(753, 'AboutUs Setting', 'web-settings-about-us-add', 'Add', 'AboutUs Setting Add', 0, '2021-06-30 05:30:34', '2021-06-30 05:30:34'),
(754, 'AboutUs Setting', 'web-settings-about-us-edit', 'Edit', 'Edit AboutUs Setting', 0, '2021-06-30 05:30:34', '2021-06-30 05:30:34'),
(755, 'ContactUs Setting', 'web-settings-contact-us-index', 'Index', 'ContactUs Setting Index', 0, '2021-06-30 05:30:34', '2021-06-30 05:30:34'),
(756, 'ContactUs Setting', 'web-settings-contact-us-add', 'Add', 'ContactUs Setting Add', 0, '2021-06-30 05:30:34', '2021-06-30 05:30:34'),
(757, 'ContactUs Setting', 'web-settings-contact-us-edit', 'Edit', 'Edit ContactUs Setting', 0, '2021-06-30 05:30:34', '2021-06-30 05:30:34'),
(758, 'Online Registration Setting', 'web-setting-registration-index', 'Index', 'Online Registration Setting Index', 0, '2021-06-30 05:30:34', '2021-06-30 05:30:34'),
(759, 'Online Registration Setting', 'web-setting-registration-add', 'Add', 'Online Registration Setting Add', 0, '2021-06-30 05:30:34', '2021-06-30 05:30:34'),
(760, 'Online Registration Setting', 'web-setting-registration-edit', 'Edit', 'Edit Online Registration Setting', 0, '2021-06-30 05:30:34', '2021-06-30 05:30:34'),
(761, 'Dashboard', 'web-dashboard-index', 'Index', 'Dashboard Index', 0, '2021-06-30 05:30:34', '2021-06-30 05:30:34'),
(762, 'Analytics', 'web-view-analytics', 'View', 'Analytics View', 0, '2021-06-30 05:30:34', '2021-06-30 05:30:34'),
(763, 'Menu', 'web-menu-index', 'Index', 'Menu Index', 0, '2021-06-30 05:30:35', '2021-06-30 05:30:35'),
(764, 'Menu', 'web-menu-edit', 'Edit', 'Edit Menu', 0, '2021-06-30 05:30:35', '2021-06-30 05:30:35'),
(765, 'Page', 'web-page-index', 'Index', 'Page Index', 0, '2021-06-30 05:30:35', '2021-06-30 05:30:35'),
(766, 'Page', 'web-page-add', 'Add', 'Page Add', 0, '2021-06-30 05:30:35', '2021-06-30 05:30:35'),
(767, 'Page', 'web-page-edit', 'Edit', 'Edit Page', 0, '2021-06-30 05:30:35', '2021-06-30 05:30:35'),
(768, 'Page', 'web-page-view', 'View', 'View Page', 0, '2021-06-30 05:30:35', '2021-06-30 05:30:35'),
(769, 'Page', 'web-page-delete', 'Delete', 'Delete Page', 0, '2021-06-30 05:30:35', '2021-06-30 05:30:35'),
(770, 'Page', 'web-page-active', 'Active', 'Active Page', 0, '2021-06-30 05:30:35', '2021-06-30 05:30:35'),
(771, 'Page', 'web-page-in-active', 'In-Active', 'In-Active Page', 0, '2021-06-30 05:30:35', '2021-06-30 05:30:35'),
(772, 'Page', 'web-page-bulk-action', 'Bulk(Active,InActive,Delete)', 'Page Bulk Action', 0, '2021-06-30 05:30:36', '2021-06-30 05:30:36'),
(773, 'Slider', 'web-slider-index', 'Index', 'Slider Index', 0, '2021-06-30 05:30:36', '2021-06-30 05:30:36'),
(774, 'Slider', 'web-slider-add', 'Add', 'Slider Add', 0, '2021-06-30 05:30:36', '2021-06-30 05:30:36'),
(775, 'Slider', 'web-slider-view', 'View', 'Slider View', 0, '2021-06-30 05:30:36', '2021-06-30 05:30:36'),
(776, 'Slider', 'web-slider-edit', 'Edit', 'Edit Slider', 0, '2021-06-30 05:30:36', '2021-06-30 05:30:36'),
(777, 'Slider', 'web-slider-delete', 'Delete', 'Delete Slider', 0, '2021-06-30 05:30:36', '2021-06-30 05:30:36'),
(778, 'Slider', 'web-slider-active', 'Active', 'Active Slider', 0, '2021-06-30 05:30:36', '2021-06-30 05:30:36'),
(779, 'Slider', 'web-slider-in-active', 'In-Active', 'In-Active Slider', 0, '2021-06-30 05:30:36', '2021-06-30 05:30:36');
INSERT INTO `permissions` (`id`, `group`, `name`, `display_name`, `description`, `group_head`, `created_at`, `updated_at`) VALUES
(780, 'Slider', 'web-slider-bulk-action', 'Bulk(Active,InActive,Delete)', 'Slider Bulk Action', 0, '2021-06-30 05:30:36', '2021-06-30 05:30:36'),
(781, 'Notice', 'web-notice-index', 'Index', 'Notice Index', 0, '2021-06-30 05:30:37', '2021-06-30 05:30:37'),
(782, 'Notice', 'web-notice-add', 'Add', 'Notice Add', 0, '2021-06-30 05:30:37', '2021-06-30 05:30:37'),
(783, 'Notice', 'web-notice-view', 'View', 'Notice View', 0, '2021-06-30 05:30:37', '2021-06-30 05:30:37'),
(784, 'Notice', 'web-notice-edit', 'Edit', 'Edit Notice', 0, '2021-06-30 05:30:37', '2021-06-30 05:30:37'),
(785, 'Notice', 'web-notice-delete', 'Delete', 'Delete Notice', 0, '2021-06-30 05:30:37', '2021-06-30 05:30:37'),
(786, 'Notice', 'web-notice-active', 'Active', 'Active Notice', 0, '2021-06-30 05:30:37', '2021-06-30 05:30:37'),
(787, 'Notice', 'web-notice-in-active', 'In-Active', 'In-Active Notice', 0, '2021-06-30 05:30:38', '2021-06-30 05:30:38'),
(788, 'Notice', 'web-notice-bulk-action', 'Bulk(Active,InActive,Delete)', 'Notice Bulk Action', 0, '2021-06-30 05:30:38', '2021-06-30 05:30:38'),
(789, 'Category', 'web-category-index', 'Index', 'Category Index', 0, '2021-06-30 05:30:38', '2021-06-30 05:30:38'),
(790, 'Category', 'web-category-add', 'Add', 'Category Add', 0, '2021-06-30 05:30:38', '2021-06-30 05:30:38'),
(791, 'Category', 'web-category-view', 'View', 'Category View', 0, '2021-06-30 05:30:38', '2021-06-30 05:30:38'),
(792, 'Category', 'web-category-edit', 'Edit', 'Edit Category', 0, '2021-06-30 05:30:38', '2021-06-30 05:30:38'),
(793, 'Category', 'web-category-delete', 'Delete', 'Delete Category', 0, '2021-06-30 05:30:38', '2021-06-30 05:30:38'),
(794, 'Category', 'web-category-active', 'Active', 'Active Category', 0, '2021-06-30 05:30:38', '2021-06-30 05:30:38'),
(795, 'Category', 'web-category-in-active', 'In-Active', 'In-Active Category', 0, '2021-06-30 05:30:38', '2021-06-30 05:30:38'),
(796, 'Category', 'web-category-bulk-action', 'Bulk(Active,InActive,Delete)', 'Category Bulk Action', 0, '2021-06-30 05:30:38', '2021-06-30 05:30:38'),
(797, 'Blog', 'web-blog-index', 'Index', 'Blog Index', 0, '2021-06-30 05:30:38', '2021-06-30 05:30:38'),
(798, 'Blog', 'web-blog-add', 'Add', 'Blog Add', 0, '2021-06-30 05:30:39', '2021-06-30 05:30:39'),
(799, 'Blog', 'web-blog-view', 'View', 'Blog View', 0, '2021-06-30 05:30:39', '2021-06-30 05:30:39'),
(800, 'Blog', 'web-blog-edit', 'Edit', 'Edit Blog', 0, '2021-06-30 05:30:39', '2021-06-30 05:30:39'),
(801, 'Blog', 'web-blog-delete', 'Delete', 'Delete Blog', 0, '2021-06-30 05:30:39', '2021-06-30 05:30:39'),
(802, 'Blog', 'web-blog-active', 'Active', 'Active Blog', 0, '2021-06-30 05:30:39', '2021-06-30 05:30:39'),
(803, 'Blog', 'web-blog-in-active', 'In-Active', 'In-Active Blog', 0, '2021-06-30 05:30:39', '2021-06-30 05:30:39'),
(804, 'Blog', 'web-blog-bulk-action', 'Bulk(Active,InActive,Delete)', 'Blog Bulk Action', 0, '2021-06-30 05:30:39', '2021-06-30 05:30:39'),
(805, 'Events', 'web-events-index', 'Index', 'Events Index', 0, '2021-06-30 05:30:39', '2021-06-30 05:30:39'),
(806, 'Events', 'web-events-add', 'Add', 'Events Add', 0, '2021-06-30 05:30:39', '2021-06-30 05:30:39'),
(807, 'Events', 'web-events-view', 'View', 'Events View', 0, '2021-06-30 05:30:39', '2021-06-30 05:30:39'),
(808, 'Events', 'web-events-edit', 'Edit', 'Edit Events', 0, '2021-06-30 05:30:40', '2021-06-30 05:30:40'),
(809, 'Events', 'web-events-delete', 'Delete', 'Delete Events', 0, '2021-06-30 05:30:40', '2021-06-30 05:30:40'),
(810, 'Events', 'web-events-active', 'Active', 'Active Events', 0, '2021-06-30 05:30:40', '2021-06-30 05:30:40'),
(811, 'Events', 'web-events-in-active', 'In-Active', 'In-Active Events', 0, '2021-06-30 05:30:40', '2021-06-30 05:30:40'),
(812, 'Events', 'web-events-bulk-action', 'Bulk(Active,InActive,Delete)', 'Events Bulk Action', 0, '2021-06-30 05:30:40', '2021-06-30 05:30:40'),
(813, 'Services', 'web-services-index', 'Index', 'Services Index', 0, '2021-06-30 05:30:40', '2021-06-30 05:30:40'),
(814, 'Services', 'web-services-add', 'Add', 'Services Add', 0, '2021-06-30 05:30:40', '2021-06-30 05:30:40'),
(815, 'Services', 'web-services-view', 'View', 'Services View', 0, '2021-06-30 05:30:40', '2021-06-30 05:30:40'),
(816, 'Services', 'web-services-edit', 'Edit', 'Edit Services', 0, '2021-06-30 05:30:40', '2021-06-30 05:30:40'),
(817, 'Services', 'web-services-delete', 'Delete', 'Delete Services', 0, '2021-06-30 05:30:40', '2021-06-30 05:30:40'),
(818, 'Services', 'web-services-active', 'Active', 'Active Services', 0, '2021-06-30 05:30:40', '2021-06-30 05:30:40'),
(819, 'Services', 'web-services-in-active', 'In-Active', 'In-Active Services', 0, '2021-06-30 05:30:41', '2021-06-30 05:30:41'),
(820, 'Services', 'web-services-bulk-action', 'Bulk(Active,InActive,Delete)', 'Services Bulk Action', 0, '2021-06-30 05:30:41', '2021-06-30 05:30:41'),
(821, 'Gallery', 'web-gallery-index', 'Index', 'Gallery Index', 0, '2021-06-30 05:30:41', '2021-06-30 05:30:41'),
(822, 'Gallery', 'web-gallery-add', 'Add', 'Gallery Add', 0, '2021-06-30 05:30:41', '2021-06-30 05:30:41'),
(823, 'Gallery', 'web-gallery-view', 'View', 'Gallery View', 0, '2021-06-30 05:30:41', '2021-06-30 05:30:41'),
(824, 'Gallery', 'web-gallery-edit', 'Edit', 'Edit Gallery', 0, '2021-06-30 05:30:41', '2021-06-30 05:30:41'),
(825, 'Gallery', 'web-gallery-delete', 'Delete', 'Delete Gallery', 0, '2021-06-30 05:30:41', '2021-06-30 05:30:41'),
(826, 'Gallery', 'web-gallery-active', 'Active', 'Active Gallery', 0, '2021-06-30 05:30:41', '2021-06-30 05:30:41'),
(827, 'Gallery', 'web-gallery-in-active', 'In-Active', 'In-Active Gallery', 0, '2021-06-30 05:30:41', '2021-06-30 05:30:41'),
(828, 'Gallery', 'web-gallery-bulk-action', 'Bulk(Active,InActive,Delete)', 'Notice Bulk Action', 0, '2021-06-30 05:30:41', '2021-06-30 05:30:41'),
(829, 'Download', 'web-download-index', 'Index', 'Download Index', 0, '2021-06-30 05:30:41', '2021-06-30 05:30:41'),
(830, 'Download', 'web-download-add', 'Add', 'Download Add', 0, '2021-06-30 05:30:41', '2021-06-30 05:30:41'),
(831, 'Download', 'web-download-view', 'View', 'Download View', 0, '2021-06-30 05:30:41', '2021-06-30 05:30:41'),
(832, 'Download', 'web-download-edit', 'Edit', 'Edit Download', 0, '2021-06-30 05:30:41', '2021-06-30 05:30:41'),
(833, 'Download', 'web-download-delete', 'Delete', 'Delete Download', 0, '2021-06-30 05:30:42', '2021-06-30 05:30:42'),
(834, 'Download', 'web-download-active', 'Active', 'Active Download', 0, '2021-06-30 05:30:42', '2021-06-30 05:30:42'),
(835, 'Download', 'web-download-in-active', 'In-Active', 'In-Active Download', 0, '2021-06-30 05:30:42', '2021-06-30 05:30:42'),
(836, 'Download', 'web-download-bulk-action', 'Bulk(Active,InActive,Delete)', 'Download Bulk Action', 0, '2021-06-30 05:30:42', '2021-06-30 05:30:42'),
(837, 'Staff', 'web-staff-index', 'Index', 'Staff Index', 0, '2021-06-30 05:30:42', '2021-06-30 05:30:42'),
(838, 'Staff', 'web-staff-add', 'Add', 'Staff Add', 0, '2021-06-30 05:30:42', '2021-06-30 05:30:42'),
(839, 'Staff', 'web-staff-view', 'View', 'Staff View', 0, '2021-06-30 05:30:42', '2021-06-30 05:30:42'),
(840, 'Staff', 'web-staff-edit', 'Edit', 'Edit Staff', 0, '2021-06-30 05:30:42', '2021-06-30 05:30:42'),
(841, 'Staff', 'web-staff-delete', 'Delete', 'Delete Staff', 0, '2021-06-30 05:30:42', '2021-06-30 05:30:42'),
(842, 'Staff', 'web-staff-active', 'Active', 'Active Staff', 0, '2021-06-30 05:30:42', '2021-06-30 05:30:42'),
(843, 'Staff', 'web-staff-in-active', 'In-Active', 'In-Active Staff', 0, '2021-06-30 05:30:43', '2021-06-30 05:30:43'),
(844, 'Staff', 'web-staff-bulk-action', 'Bulk(Active,InActive,Delete)', 'Staff Bulk Action', 0, '2021-06-30 05:30:43', '2021-06-30 05:30:43'),
(845, 'Testimonial', 'web-testimonial-index', 'Index', 'Testimonial Index', 0, '2021-06-30 05:30:43', '2021-06-30 05:30:43'),
(846, 'Testimonial', 'web-testimonial-add', 'Add', 'Testimonial Add', 0, '2021-06-30 05:30:43', '2021-06-30 05:30:43'),
(847, 'Testimonial', 'web-testimonial-view', 'View', 'Testimonial View', 0, '2021-06-30 05:30:43', '2021-06-30 05:30:43'),
(848, 'Testimonial', 'web-testimonial-edit', 'Edit', 'Edit Testimonial', 0, '2021-06-30 05:30:43', '2021-06-30 05:30:43'),
(849, 'Testimonial', 'web-testimonial-delete', 'Delete', 'Delete Testimonial', 0, '2021-06-30 05:30:43', '2021-06-30 05:30:43'),
(850, 'Testimonial', 'web-testimonial-active', 'Active', 'Active Testimonial', 0, '2021-06-30 05:30:43', '2021-06-30 05:30:43'),
(851, 'Testimonial', 'web-testimonial-in-active', 'In-Active', 'In-Active Testimonial', 0, '2021-06-30 05:30:43', '2021-06-30 05:30:43'),
(852, 'Testimonial', 'web-testimonial-bulk-action', 'Bulk(Active,InActive,Delete)', 'Testimonial Bulk Action', 0, '2021-06-30 05:30:44', '2021-06-30 05:30:44'),
(853, 'FAQ', 'web-faq-index', 'Index', 'FAQ Index', 0, '2021-06-30 05:30:44', '2021-06-30 05:30:44'),
(854, 'FAQ', 'web-faq-add', 'Add', 'FAQ Add', 0, '2021-06-30 05:30:44', '2021-06-30 05:30:44'),
(855, 'FAQ', 'web-faq-view', 'View', 'FAQ View', 0, '2021-06-30 05:30:44', '2021-06-30 05:30:44'),
(856, 'FAQ', 'web-faq-edit', 'Edit', 'Edit FAQ', 0, '2021-06-30 05:30:44', '2021-06-30 05:30:44'),
(857, 'FAQ', 'web-faq-delete', 'Delete', 'Delete FAQ', 0, '2021-06-30 05:30:44', '2021-06-30 05:30:44'),
(858, 'FAQ', 'web-faq-active', 'Active', 'Active FAQ', 0, '2021-06-30 05:30:44', '2021-06-30 05:30:44'),
(859, 'FAQ', 'web-faq-in-active', 'In-Active', 'In-Active FAQ', 0, '2021-06-30 05:30:44', '2021-06-30 05:30:44'),
(860, 'FAQ', 'web-faq-bulk-action', 'Bulk(Active,InActive,Delete)', 'FAQ Bulk Action', 0, '2021-06-30 05:30:44', '2021-06-30 05:30:44'),
(861, 'Counter', 'web-counter-index', 'Index', 'Counter Index', 0, '2021-06-30 05:30:44', '2021-06-30 05:30:44'),
(862, 'Counter', 'web-counter-add', 'Add', 'Counter Add', 0, '2021-06-30 05:30:44', '2021-06-30 05:30:44'),
(863, 'Counter', 'web-counter-view', 'View', 'Counter View', 0, '2021-06-30 05:30:44', '2021-06-30 05:30:44'),
(864, 'Counter', 'web-counter-edit', 'Edit', 'Edit Counter', 0, '2021-06-30 05:30:44', '2021-06-30 05:30:44'),
(865, 'Counter', 'web-counter-delete', 'Delete', 'Delete Counter', 0, '2021-06-30 05:30:45', '2021-06-30 05:30:45'),
(866, 'Counter', 'web-counter-active', 'Active', 'Active Counter', 0, '2021-06-30 05:30:45', '2021-06-30 05:30:45'),
(867, 'Counter', 'web-counter-in-active', 'In-Active', 'In-Active Counter', 0, '2021-06-30 05:30:45', '2021-06-30 05:30:45'),
(868, 'Counter', 'web-counter-bulk-action', 'Bulk(Active,InActive,Delete)', 'Counter Bulk Action', 0, '2021-06-30 05:30:45', '2021-06-30 05:30:45'),
(869, 'Clint', 'web-clint-index', 'Index', 'Clint Index', 0, '2021-06-30 05:30:45', '2021-06-30 05:30:45'),
(870, 'Clint', 'web-clint-add', 'Add', 'Clint Add', 0, '2021-06-30 05:30:45', '2021-06-30 05:30:45'),
(871, 'Clint', 'web-clint-view', 'View', 'Clint View', 0, '2021-06-30 05:30:45', '2021-06-30 05:30:45'),
(872, 'Clint', 'web-clint-edit', 'Edit', 'Edit Clint', 0, '2021-06-30 05:30:45', '2021-06-30 05:30:45'),
(873, 'Clint', 'web-clint-delete', 'Delete', 'Delete Clint', 0, '2021-06-30 05:30:45', '2021-06-30 05:30:45'),
(874, 'Clint', 'web-clint-active', 'Active', 'Active Clint', 0, '2021-06-30 05:30:45', '2021-06-30 05:30:45'),
(875, 'Clint', 'web-clint-in-active', 'In-Active', 'In-Active Clint', 0, '2021-06-30 05:30:45', '2021-06-30 05:30:45'),
(876, 'Clint', 'web-clint-bulk-action', 'Bulk(Active,InActive,Delete)', 'Clint Bulk Action', 0, '2021-06-30 05:30:45', '2021-06-30 05:30:45'),
(877, 'Pricing', 'web-pricing-index', 'Index', 'Pricing Index', 0, '2021-06-30 05:30:45', '2021-06-30 05:30:45'),
(878, 'Pricing', 'web-pricing-add', 'Add', 'Pricing Add', 0, '2021-06-30 05:30:45', '2021-06-30 05:30:45'),
(879, 'Pricing', 'web-pricing-view', 'View', 'Pricing View', 0, '2021-06-30 05:30:45', '2021-06-30 05:30:45'),
(880, 'Pricing', 'web-pricing-edit', 'Edit', 'Edit Pricing', 0, '2021-06-30 05:30:45', '2021-06-30 05:30:45'),
(881, 'Pricing', 'web-pricing-delete', 'Delete', 'Delete Pricing', 0, '2021-06-30 05:30:46', '2021-06-30 05:30:46'),
(882, 'Pricing', 'web-pricing-active', 'Active', 'Active Pricing', 0, '2021-06-30 05:30:46', '2021-06-30 05:30:46'),
(883, 'Pricing', 'web-pricing-in-active', 'In-Active', 'In-Active Pricing', 0, '2021-06-30 05:30:46', '2021-06-30 05:30:46'),
(884, 'Pricing', 'web-pricing-bulk-action', 'Bulk(Active,InActive,Delete)', 'Pricing Bulk Action', 0, '2021-06-30 05:30:46', '2021-06-30 05:30:46'),
(885, 'Online Registration', 'web-registration-index', 'Index', 'Online Registration Index', 0, '2021-06-30 05:30:46', '2021-06-30 05:30:46'),
(886, 'Online Registration', 'web-registration-add', 'Add', 'Online Registration Add', 0, '2021-06-30 05:30:46', '2021-06-30 05:30:46'),
(887, 'Online Registration', 'web-registration-view', 'View', 'Online Registration View', 0, '2021-06-30 05:30:47', '2021-06-30 05:30:47'),
(888, 'Online Registration', 'web-registration-edit', 'Edit', 'Edit Online Registration', 0, '2021-06-30 05:30:47', '2021-06-30 05:30:47'),
(889, 'Online Registration', 'web-registration-delete', 'Delete', 'Delete Online Registration', 0, '2021-06-30 05:30:47', '2021-06-30 05:30:47'),
(890, 'Online Registration', 'web-registration-active', 'Active', 'Active Online Registration', 0, '2021-06-30 05:30:47', '2021-06-30 05:30:47'),
(891, 'Online Registration', 'web-registration-in-active', 'In-Active', 'In-Active Online Registration', 0, '2021-06-30 05:30:47', '2021-06-30 05:30:47'),
(892, 'Online Registration', 'web-registration-bulk-action', 'Bulk(Active,InActive,Delete)', 'Online Registration Bulk Action', 0, '2021-06-30 05:30:47', '2021-06-30 05:30:47'),
(893, 'Online Registration', 'web-registration-delete-academic-info', 'Delete Academic Qualification', 'Delete Academic Qualification', 0, '2021-06-30 05:30:47', '2021-06-30 05:30:47'),
(894, 'Online Registration', 'web-registration-delete-work-experience', 'Delete Work Experience', 'Delete Work Experience', 0, '2021-06-30 05:30:48', '2021-06-30 05:30:48'),
(895, 'Registration Programme', 'web-programme-index', 'Index', 'Registration  ProgrammeIndex', 0, '2021-06-30 05:30:48', '2021-06-30 05:30:48'),
(896, 'Registration Programme', 'web-programme-add', 'Add', 'Registration  ProgrammeAdd', 0, '2021-06-30 05:30:49', '2021-06-30 05:30:49'),
(897, 'Registration Programme', 'web-programme-view', 'View', 'Registration  ProgrammeView', 0, '2021-06-30 05:30:49', '2021-06-30 05:30:49'),
(898, 'Registration Programme', 'web-programme-edit', 'Edit', 'Edit Registration Programme', 0, '2021-06-30 05:30:50', '2021-06-30 05:30:50'),
(899, 'Registration Programme', 'web-programme-delete', 'Delete', 'Delete Registration Programme', 0, '2021-06-30 05:30:51', '2021-06-30 05:30:51'),
(900, 'Registration Programme', 'web-programme-active', 'Active', 'Active Registration Programme', 0, '2021-06-30 05:30:51', '2021-06-30 05:30:51'),
(901, 'Registration Programme', 'web-programme-in-active', 'In-Active', 'In-Active Registration Programme', 0, '2021-06-30 05:30:51', '2021-06-30 05:30:51'),
(902, 'Registration Programme', 'web-programme-bulk-action', 'Bulk(Active,InActive,Delete)', 'Registration  ProgrammeBulk Action', 0, '2021-06-30 05:30:51', '2021-06-30 05:30:51'),
(903, 'Contact Detail Manager', 'web-contact-index', 'Index', 'Contact Detail Manager Index', 0, '2021-06-30 05:30:51', '2021-06-30 05:30:51'),
(904, 'Contact Detail Manager', 'web-contact-add', 'Add', 'Contact Detail Manager Add', 0, '2021-06-30 05:30:51', '2021-06-30 05:30:51'),
(905, 'Contact Detail Manager', 'web-contact-view', 'View', 'Contact Detail Manager View', 0, '2021-06-30 05:30:52', '2021-06-30 05:30:52'),
(906, 'Contact Detail Manager', 'web-contact-edit', 'Edit', 'Edit Contact Detail Manager', 0, '2021-06-30 05:30:52', '2021-06-30 05:30:52'),
(907, 'Contact Detail Manager', 'web-contact-delete', 'Delete', 'Delete Contact Detail Manager', 0, '2021-06-30 05:30:52', '2021-06-30 05:30:52'),
(908, 'Contact Detail Manager', 'web-contact-active', 'Active', 'Active Contact Detail Manager', 0, '2021-06-30 05:30:52', '2021-06-30 05:30:52'),
(909, 'Contact Detail Manager', 'web-contact-in-active', 'In-Active', 'In-Active Contact Detail Manager', 0, '2021-06-30 05:30:52', '2021-06-30 05:30:52'),
(910, 'Contact Detail Manager', 'web-contact-bulk-action', 'Bulk(Active,InActive,Delete)', 'Contact Detail Manager Bulk Action', 0, '2021-06-30 05:30:52', '2021-06-30 05:30:52'),
(911, 'Contact Detail Manager', 'web-contact-import', 'Import Contact', 'Import Contact', 0, '2021-06-30 05:30:52', '2021-06-30 05:30:52'),
(912, 'Contact Group', 'web-contact-group-index', 'Index', 'Contact Detail Index', 0, '2021-06-30 05:30:52', '2021-06-30 05:30:52'),
(913, 'Contact Group', 'web-contact-group-add', 'Add', 'Contact Detail Add', 0, '2021-06-30 05:30:52', '2021-06-30 05:30:52'),
(914, 'Contact Group', 'web-contact-group-view', 'View', 'Contact Detail View', 0, '2021-06-30 05:30:52', '2021-06-30 05:30:52'),
(915, 'Contact Group', 'web-contact-group-edit', 'Edit', 'Edit Contact Group', 0, '2021-06-30 05:30:53', '2021-06-30 05:30:53'),
(916, 'Contact Group', 'web-contact-group-delete', 'Delete', 'Delete Contact Group', 0, '2021-06-30 05:30:53', '2021-06-30 05:30:53'),
(917, 'Contact Group', 'web-contact-group-active', 'Active', 'Active Contact Group', 0, '2021-06-30 05:30:53', '2021-06-30 05:30:53'),
(918, 'Contact Group', 'web-contact-group-in-active', 'In-Active', 'In-Active Contact Group', 0, '2021-06-30 05:30:53', '2021-06-30 05:30:53'),
(919, 'Contact Group', 'web-contact-group-bulk-action', 'Bulk(Active,InActive,Delete)', 'Contact Detail Bulk Action', 0, '2021-06-30 05:30:53', '2021-06-30 05:30:53'),
(920, 'Subscribers', 'web-subscribers-index', 'Index', 'Subscribers Index', 0, '2021-06-30 05:30:53', '2021-06-30 05:30:53'),
(921, 'Subscribers', 'web-subscribers-active', 'Active', 'Active Subscribers', 0, '2021-06-30 05:30:53', '2021-06-30 05:30:53'),
(922, 'Subscribers', 'web-subscribers-in-active', 'InActive', 'InActive Subscribers', 0, '2021-06-30 05:30:53', '2021-06-30 05:30:53'),
(923, 'Subscribers', 'web-subscribers-delete', 'Delete', 'Delete Subscribers', 0, '2021-06-30 05:30:54', '2021-06-30 05:30:54'),
(924, 'Subscribers', 'web-subscribers-import', 'Import', 'Import Subscribers', 0, '2021-06-30 05:30:54', '2021-06-30 05:30:54'),
(925, 'Subscribers', 'web-subscribers-bulk-action', 'Bulk(Active,InActive,Delete)', 'Bul kAction Subscribers', 0, '2021-06-30 05:30:54', '2021-06-30 05:30:54'),
(926, 'ContactMessage', 'web-contact-us-index', 'Index', 'ContactMessage Index', 0, '2021-06-30 05:30:54', '2021-06-30 05:30:54'),
(927, 'ContactMessage', 'web-contact-us-view', 'View', 'ContactMessage Add', 0, '2021-06-30 05:30:54', '2021-06-30 05:30:54'),
(928, 'ContactMessage', 'web-contact-us-delete', 'Delete', 'Delete Message', 0, '2021-06-30 05:30:54', '2021-06-30 05:30:54'),
(929, 'User Notice', 'web-user-notice-index', 'Index', 'User Notice Index', 0, '2021-06-30 05:30:54', '2021-06-30 05:30:54'),
(930, 'User Notice', 'web-user-notice-add', 'Add', 'User Notice Add', 0, '2021-06-30 05:30:54', '2021-06-30 05:30:54'),
(931, 'User Notice', 'web-user-notice-edit', 'Edit', 'User Notice Edit', 0, '2021-06-30 05:30:55', '2021-06-30 05:30:55'),
(932, 'User Notice', 'web-user-notice-delete', 'Delete', 'User Notice Delete', 0, '2021-06-30 05:30:55', '2021-06-30 05:30:55'),
(933, 'SMS & Email', 'web-sms-email-index', 'Index', 'SMS & Email Index', 0, '2021-06-30 05:30:55', '2021-06-30 05:30:55'),
(934, 'SMS & Email', 'web-sms-email-create', 'Create', 'SMS & Email Create', 0, '2021-06-30 05:30:55', '2021-06-30 05:30:55'),
(935, 'SMS & Email', 'web-sms-email-send', 'Send', 'SMS & Email Send', 0, '2021-06-30 05:30:55', '2021-06-30 05:30:55'),
(936, 'SMS & Email', 'web-sms-email-delete', 'Delete', 'SMS & Email Delete', 0, '2021-06-30 05:30:55', '2021-06-30 05:30:55'),
(937, 'SMS & Email', 'web-sms-email-bulk-action', 'Bulk Action', 'SMS & Email Delete', 0, '2021-06-30 05:30:55', '2021-06-30 05:30:55'),
(938, 'SMS & Email', 'web-sms-email-subscriber', 'Mail Subscribers', 'Mail Subscribers', 0, '2021-06-30 05:30:55', '2021-06-30 05:30:55');

-- --------------------------------------------------------

--
-- Table structure for table `permission_role`
--

CREATE TABLE `permission_role` (
  `permission_id` int(10) UNSIGNED NOT NULL,
  `role_id` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `permission_role`
--

INSERT INTO `permission_role` (`permission_id`, `role_id`) VALUES
(1, 1),
(2, 1),
(3, 1),
(4, 1),
(5, 1),
(6, 1),
(7, 1),
(8, 1),
(9, 1),
(10, 1),
(11, 1),
(12, 1),
(13, 1),
(14, 1),
(15, 1),
(16, 1),
(17, 1),
(18, 1),
(19, 1),
(20, 1),
(21, 1),
(22, 1),
(23, 1),
(24, 1),
(25, 1),
(26, 1),
(27, 1),
(28, 1),
(29, 1),
(30, 1),
(31, 1),
(32, 1),
(33, 1),
(34, 1),
(35, 1),
(36, 1),
(37, 1),
(38, 1),
(39, 1),
(40, 1),
(41, 1),
(42, 1),
(43, 1),
(44, 1),
(45, 1),
(46, 1),
(47, 1),
(48, 1),
(49, 1),
(50, 1),
(51, 1),
(52, 1),
(53, 1),
(54, 1),
(55, 1),
(56, 1),
(57, 1),
(58, 1),
(59, 1),
(60, 1),
(61, 1),
(62, 1),
(63, 1),
(64, 1),
(65, 1),
(66, 1),
(67, 1),
(68, 1),
(69, 1),
(70, 1),
(71, 1),
(72, 1),
(73, 1),
(74, 1),
(75, 1),
(76, 1),
(77, 1),
(78, 1),
(79, 1),
(80, 1),
(81, 1),
(82, 1),
(83, 1),
(84, 1),
(85, 1),
(86, 1),
(87, 1),
(88, 1),
(89, 1),
(90, 1),
(91, 1),
(92, 1),
(93, 1),
(94, 1),
(95, 1),
(96, 1),
(97, 1),
(98, 1),
(99, 1),
(100, 1),
(101, 1),
(102, 1),
(103, 1),
(104, 1),
(105, 1),
(106, 1),
(107, 1),
(108, 1),
(109, 1),
(110, 1),
(111, 1),
(112, 1),
(113, 1),
(114, 1),
(115, 1),
(116, 1),
(117, 1),
(118, 1),
(119, 1),
(120, 1),
(121, 1),
(122, 1),
(123, 1),
(124, 1),
(125, 1),
(126, 1),
(127, 1),
(128, 1),
(129, 1),
(130, 1),
(131, 1),
(132, 1),
(133, 1),
(134, 1),
(135, 1),
(136, 1),
(137, 1),
(138, 1),
(139, 1),
(140, 1),
(141, 1),
(142, 1),
(143, 1),
(144, 1),
(145, 1),
(146, 1),
(147, 1),
(148, 1),
(149, 1),
(150, 1),
(151, 1),
(152, 1),
(153, 1),
(154, 1),
(155, 1),
(156, 1),
(157, 1),
(158, 1),
(159, 1),
(160, 1),
(161, 1),
(162, 1),
(163, 1),
(164, 1),
(165, 1),
(166, 1),
(167, 1),
(168, 1),
(169, 1),
(170, 1),
(171, 1),
(172, 1),
(173, 1),
(174, 1),
(175, 1),
(176, 1),
(177, 1),
(178, 1),
(179, 1),
(180, 1),
(181, 1),
(182, 1),
(183, 1),
(184, 1),
(185, 1),
(186, 1),
(187, 1),
(188, 1),
(189, 1),
(190, 1),
(191, 1),
(192, 1),
(193, 1),
(194, 1),
(195, 1),
(196, 1),
(197, 1),
(198, 1),
(199, 1),
(200, 1),
(201, 1),
(202, 1),
(203, 1),
(204, 1),
(205, 1),
(206, 1),
(207, 1),
(208, 1),
(209, 1),
(210, 1),
(211, 1),
(212, 1),
(213, 1),
(214, 1),
(215, 1),
(216, 1),
(217, 1),
(218, 1),
(219, 1),
(220, 1),
(221, 1),
(222, 1),
(223, 1),
(224, 1),
(225, 1),
(226, 1),
(227, 1),
(228, 1),
(229, 1),
(230, 1),
(231, 1),
(232, 1),
(233, 1),
(234, 1),
(235, 1),
(236, 1),
(237, 1),
(238, 1),
(239, 1),
(240, 1),
(241, 1),
(242, 1),
(243, 1),
(244, 1),
(245, 1),
(246, 1),
(247, 1),
(248, 1),
(249, 1),
(250, 1),
(251, 1),
(252, 1),
(253, 1),
(254, 1),
(255, 1),
(256, 1),
(257, 1),
(258, 1),
(259, 1),
(260, 1),
(261, 1),
(262, 1),
(263, 1),
(264, 1),
(265, 1),
(266, 1),
(267, 1),
(268, 1),
(269, 1),
(270, 1),
(271, 1),
(272, 1),
(273, 1),
(274, 1),
(275, 1),
(276, 1),
(277, 1),
(278, 1),
(279, 1),
(280, 1),
(281, 1),
(282, 1),
(283, 1),
(284, 1),
(285, 1),
(286, 1),
(287, 1),
(288, 1),
(289, 1),
(290, 1),
(291, 1),
(292, 1),
(293, 1),
(294, 1),
(295, 1),
(296, 1),
(297, 1),
(298, 1),
(299, 1),
(300, 1),
(301, 1),
(302, 1),
(303, 1),
(304, 1),
(305, 1),
(306, 1),
(307, 1),
(308, 1),
(309, 1),
(310, 1),
(311, 1),
(312, 1),
(313, 1),
(314, 1),
(315, 1),
(316, 1),
(317, 1),
(318, 1),
(319, 1),
(320, 1),
(321, 1),
(322, 1),
(323, 1),
(324, 1),
(325, 1),
(326, 1),
(327, 1),
(328, 1),
(329, 1),
(330, 1),
(331, 1),
(332, 1),
(333, 1),
(334, 1),
(335, 1),
(336, 1),
(337, 1),
(338, 1),
(339, 1),
(340, 1),
(341, 1),
(342, 1),
(343, 1),
(344, 1),
(345, 1),
(346, 1),
(347, 1),
(348, 1),
(349, 1),
(350, 1),
(351, 1),
(352, 1),
(353, 1),
(354, 1),
(355, 1),
(356, 1),
(357, 1),
(358, 1),
(359, 1),
(360, 1),
(361, 1),
(362, 1),
(363, 1),
(364, 1),
(365, 1),
(366, 1),
(367, 1),
(368, 1),
(369, 1),
(370, 1),
(371, 1),
(372, 1),
(373, 1),
(374, 1),
(375, 1),
(376, 1),
(377, 1),
(378, 1),
(379, 1),
(380, 1),
(381, 1),
(382, 1),
(383, 1),
(384, 1),
(385, 1),
(386, 1),
(387, 1),
(388, 1),
(389, 1),
(390, 1),
(391, 1),
(392, 1),
(393, 1),
(394, 1),
(395, 1),
(396, 1),
(397, 1),
(398, 1),
(399, 1),
(400, 1),
(401, 1),
(402, 1),
(403, 1),
(404, 1),
(405, 1),
(406, 1),
(407, 1),
(408, 1),
(409, 1),
(410, 1),
(411, 1),
(412, 1),
(413, 1),
(414, 1),
(415, 1),
(416, 1),
(417, 1),
(418, 1),
(419, 1),
(420, 1),
(421, 1),
(422, 1),
(423, 1),
(424, 1),
(425, 1),
(426, 1),
(427, 1),
(428, 1),
(429, 1),
(430, 1),
(431, 1),
(432, 1),
(433, 1),
(434, 1),
(435, 1),
(436, 1),
(437, 1),
(438, 1),
(439, 1),
(440, 1),
(441, 1),
(442, 1),
(443, 1),
(444, 1),
(445, 1),
(446, 1),
(447, 1),
(448, 1),
(449, 1),
(450, 1),
(451, 1),
(452, 1),
(453, 1),
(454, 1),
(455, 1),
(456, 1),
(457, 1),
(458, 1),
(459, 1),
(460, 1),
(461, 1),
(462, 1),
(463, 1),
(464, 1),
(465, 1),
(466, 1),
(467, 1),
(468, 1),
(469, 1),
(470, 1),
(471, 1),
(472, 1),
(473, 1),
(474, 1),
(475, 1),
(476, 1),
(477, 1),
(478, 1),
(479, 1),
(480, 1),
(481, 1),
(482, 1),
(483, 1),
(484, 1),
(485, 1),
(486, 1),
(487, 1),
(488, 1),
(489, 1),
(490, 1),
(491, 1),
(492, 1),
(493, 1),
(494, 1),
(495, 1),
(496, 1),
(497, 1),
(498, 1),
(499, 1),
(500, 1),
(501, 1),
(502, 1),
(503, 1),
(504, 1),
(505, 1),
(506, 1),
(507, 1),
(508, 1),
(509, 1),
(510, 1),
(511, 1),
(512, 1),
(513, 1),
(514, 1),
(515, 1),
(516, 1),
(517, 1),
(518, 1),
(519, 1),
(520, 1),
(521, 1),
(522, 1),
(523, 1),
(524, 1),
(525, 1),
(526, 1),
(527, 1),
(528, 1),
(529, 1),
(530, 1),
(531, 1);

-- --------------------------------------------------------

--
-- Table structure for table `postal_exchanges`
--

CREATE TABLE `postal_exchanges` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `created_by` int(10) UNSIGNED NOT NULL,
  `last_updated_by` int(10) UNSIGNED DEFAULT NULL,
  `type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `date` datetime NOT NULL,
  `ref_no` varchar(25) COLLATE utf8mb4_unicode_ci NOT NULL,
  `subject` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `to` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `from` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `note` text COLLATE utf8mb4_unicode_ci,
  `attachment` text COLLATE utf8mb4_unicode_ci,
  `status` tinyint(1) NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `postal_exchange_types`
--

CREATE TABLE `postal_exchange_types` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `created_by` int(10) UNSIGNED NOT NULL,
  `last_updated_by` int(10) UNSIGNED DEFAULT NULL,
  `title` varchar(25) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `postal_exchange_types`
--

INSERT INTO `postal_exchange_types` (`id`, `created_at`, `updated_at`, `created_by`, `last_updated_by`, `title`, `status`) VALUES
(1, '2021-06-30 05:33:49', '2021-06-30 05:33:49', 1, NULL, 'LETTER DISPATCH', 1),
(2, '2021-06-30 05:33:49', '2021-06-30 05:33:49', 1, NULL, 'LETTER RECEIVE', 1),
(3, '2021-06-30 05:33:49', '2021-06-30 05:33:49', 1, NULL, 'COURIER RECEIVE', 1);

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `created_by` int(10) UNSIGNED NOT NULL,
  `last_updated_by` int(10) UNSIGNED DEFAULT NULL,
  `code` varchar(15) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `name` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `category_id` int(10) UNSIGNED DEFAULT '0',
  `sub_category_id` int(10) UNSIGNED DEFAULT '0',
  `warranty` varchar(15) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `product_image` text COLLATE utf8mb4_unicode_ci,
  `description` text COLLATE utf8mb4_unicode_ci,
  `status` tinyint(1) NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `product_prices`
--

CREATE TABLE `product_prices` (
  `id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `created_by` int(10) UNSIGNED NOT NULL,
  `last_updated_by` int(10) UNSIGNED DEFAULT NULL,
  `products_id` int(10) UNSIGNED NOT NULL,
  `cost_price` double(10,2) DEFAULT '0.00',
  `sale_price` double(10,2) DEFAULT '0.00',
  `status` tinyint(1) NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `purchases`
--

CREATE TABLE `purchases` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `created_by` int(10) UNSIGNED NOT NULL,
  `last_updated_by` int(10) UNSIGNED DEFAULT NULL,
  `invoice_no` varchar(15) COLLATE utf8mb4_unicode_ci NOT NULL,
  `vendors_id` int(10) UNSIGNED NOT NULL,
  `purchase_date` datetime NOT NULL,
  `grand_total_amount` int(11) NOT NULL,
  `total_discount` int(11) NOT NULL,
  `purchase_details` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `purchase_details`
--

CREATE TABLE `purchase_details` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `created_by` int(10) UNSIGNED NOT NULL,
  `last_updated_by` int(10) UNSIGNED DEFAULT NULL,
  `purchase_id` int(10) UNSIGNED NOT NULL,
  `products_id` int(10) UNSIGNED NOT NULL,
  `quantity` int(11) NOT NULL,
  `rate` int(11) NOT NULL,
  `total_amount` int(11) NOT NULL,
  `discount` int(11) NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `purchase_returns`
--

CREATE TABLE `purchase_returns` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `created_by` int(10) UNSIGNED NOT NULL,
  `last_updated_by` int(10) UNSIGNED DEFAULT NULL,
  `purchase_date` datetime NOT NULL,
  `invoice_no` varchar(15) COLLATE utf8mb4_unicode_ci NOT NULL,
  `purchase_id` int(10) UNSIGNED NOT NULL,
  `vendors_id` int(10) UNSIGNED NOT NULL,
  `purchase_detail_id` int(10) UNSIGNED NOT NULL,
  `products_id` int(10) UNSIGNED NOT NULL,
  `qty` int(11) NOT NULL,
  `rate` int(11) NOT NULL,
  `total_amount` int(11) NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `residents`
--

CREATE TABLE `residents` (
  `id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `created_by` int(10) UNSIGNED NOT NULL,
  `last_updated_by` int(10) UNSIGNED DEFAULT NULL,
  `hostels_id` int(10) UNSIGNED NOT NULL,
  `rooms_id` int(10) UNSIGNED DEFAULT NULL,
  `beds_id` int(10) UNSIGNED DEFAULT NULL,
  `user_type` int(10) UNSIGNED NOT NULL,
  `member_id` int(10) UNSIGNED NOT NULL,
  `register_date` datetime NOT NULL,
  `leave_date` datetime DEFAULT NULL,
  `status` tinyint(1) NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `resident_histories`
--

CREATE TABLE `resident_histories` (
  `id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `created_by` int(10) UNSIGNED NOT NULL,
  `last_updated_by` int(10) UNSIGNED DEFAULT NULL,
  `years_id` int(10) UNSIGNED NOT NULL,
  `hostels_id` int(10) UNSIGNED NOT NULL,
  `rooms_id` int(10) UNSIGNED DEFAULT NULL,
  `beds_id` int(10) UNSIGNED DEFAULT NULL,
  `residents_id` int(10) UNSIGNED NOT NULL,
  `history_type` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `roles`
--

CREATE TABLE `roles` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `display_name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `roles`
--

INSERT INTO `roles` (`id`, `name`, `display_name`, `description`, `created_at`, `updated_at`) VALUES
(1, 'super-admin', 'Super Admin', 'Super Admin', '2021-06-30 05:29:07', '2021-06-30 05:29:07'),
(2, 'admin', 'Administrator', 'Administrator', '2021-06-30 05:29:07', '2021-06-30 05:29:07'),
(3, 'account', 'Accountant', 'Accountant', '2021-06-30 05:29:07', '2021-06-30 05:29:07'),
(4, 'library', 'Librarian', 'Librarian', '2021-06-30 05:29:07', '2021-06-30 05:29:07'),
(5, 'staff', 'Staff/Teacher', 'Staff', '2021-06-30 05:29:07', '2021-06-30 05:29:07'),
(6, 'student', 'Student', 'Student', '2021-06-30 05:29:07', '2021-06-30 05:29:07'),
(7, 'guardian', 'Guardian', 'Guardian', '2021-06-30 05:29:07', '2021-06-30 05:29:07'),
(8, 'web-admin', 'Web Admin', 'Web Admin', '2021-06-30 05:29:07', '2021-06-30 05:29:07');

-- --------------------------------------------------------

--
-- Table structure for table `role_user`
--

CREATE TABLE `role_user` (
  `user_id` int(10) UNSIGNED NOT NULL,
  `role_id` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `role_user`
--

INSERT INTO `role_user` (`user_id`, `role_id`) VALUES
(1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `rooms`
--

CREATE TABLE `rooms` (
  `id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `created_by` int(10) UNSIGNED NOT NULL,
  `last_updated_by` int(10) UNSIGNED DEFAULT NULL,
  `hostels_id` int(10) UNSIGNED NOT NULL,
  `room_type` int(10) UNSIGNED NOT NULL,
  `room_number` int(11) NOT NULL,
  `rate_perbed` int(11) NOT NULL DEFAULT '0',
  `description` text COLLATE utf8mb4_unicode_ci,
  `status` tinyint(1) NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `room_types`
--

CREATE TABLE `room_types` (
  `id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `created_by` int(10) UNSIGNED NOT NULL,
  `last_updated_by` int(10) UNSIGNED DEFAULT NULL,
  `title` varchar(25) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `routes`
--

CREATE TABLE `routes` (
  `id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `created_by` int(10) UNSIGNED NOT NULL,
  `last_updated_by` int(10) UNSIGNED DEFAULT NULL,
  `title` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `rent` int(11) NOT NULL DEFAULT '0',
  `description` text COLLATE utf8mb4_unicode_ci,
  `status` tinyint(1) NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `route_vehicles`
--

CREATE TABLE `route_vehicles` (
  `id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `routes_id` int(10) UNSIGNED NOT NULL,
  `vehicles_id` int(10) UNSIGNED NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `salary_pays`
--

CREATE TABLE `salary_pays` (
  `id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `created_by` int(10) UNSIGNED NOT NULL,
  `last_updated_by` int(10) UNSIGNED DEFAULT NULL,
  `staff_id` int(10) UNSIGNED NOT NULL,
  `salary_masters_id` int(10) UNSIGNED NOT NULL,
  `date` datetime NOT NULL,
  `paid_amount` int(11) NOT NULL,
  `allowance` int(11) DEFAULT NULL,
  `fine` int(11) DEFAULT NULL,
  `payment_mode` varchar(15) COLLATE utf8mb4_unicode_ci NOT NULL,
  `note` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` tinyint(1) NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `sales`
--

CREATE TABLE `sales` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `sales_details`
--

CREATE TABLE `sales_details` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `sales_returns`
--

CREATE TABLE `sales_returns` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `semesters`
--

CREATE TABLE `semesters` (
  `id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `created_by` int(10) UNSIGNED NOT NULL,
  `last_updated_by` int(10) UNSIGNED DEFAULT NULL,
  `semester` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `staff_id` int(10) UNSIGNED DEFAULT NULL,
  `gradingType_id` int(10) UNSIGNED DEFAULT NULL,
  `status` tinyint(1) NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `semester_assets`
--

CREATE TABLE `semester_assets` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `created_by` int(10) UNSIGNED NOT NULL,
  `last_updated_by` int(10) UNSIGNED DEFAULT NULL,
  `semesters_id` int(10) UNSIGNED NOT NULL,
  `assets_id` int(10) UNSIGNED NOT NULL,
  `quantity` int(11) NOT NULL DEFAULT '0',
  `status` tinyint(1) NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `semester_subject`
--

CREATE TABLE `semester_subject` (
  `id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `created_by` int(10) UNSIGNED NOT NULL,
  `last_updated_by` int(10) UNSIGNED DEFAULT NULL,
  `semester_id` int(10) UNSIGNED NOT NULL,
  `subject_id` int(10) UNSIGNED NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `settings`
--

CREATE TABLE `settings` (
  `id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `sms_emails`
--

CREATE TABLE `sms_emails` (
  `id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `created_by` int(10) UNSIGNED NOT NULL,
  `last_updated_by` int(10) UNSIGNED DEFAULT NULL,
  `subject` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `message` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `sms` tinyint(1) NOT NULL DEFAULT '0',
  `email` tinyint(1) NOT NULL DEFAULT '0',
  `group` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `ref` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `sms_settings`
--

CREATE TABLE `sms_settings` (
  `id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `identity` varchar(15) COLLATE utf8mb4_unicode_ci NOT NULL,
  `logo` varchar(15) COLLATE utf8mb4_unicode_ci NOT NULL,
  `link` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `config` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `sms_settings`
--

INSERT INTO `sms_settings` (`id`, `created_at`, `updated_at`, `identity`, `logo`, `link`, `config`, `status`) VALUES
(1, NULL, NULL, 'Msg91', 'msg91', 'https://msg91.com', '{\"Authkey\":\"\",\"Sender\":\"\",\"Route\":\"\",\"Country\":\"\"}', 0),
(2, NULL, NULL, 'Msg94', 'msg94', 'http://www.msg94.com', '{\"Authkey\":\"\",\"Sender\":\"\",\"Route\":\"\",\"Country\":\"\"}', 0),
(3, NULL, NULL, 'KeswaTech', 'keswasms', 'http://ktsms.keswatech.com', '{\"Sender\":\"\",\"apiKey\":\"\"}', 0),
(4, NULL, NULL, 'Twilio', 'twilio', 'https://www.twilio.com', '{\"SID\":\"\",\"Token\":\"\",\"FromNumber\":\"\"}', 0),
(5, NULL, NULL, 'MessageBird', 'messagebird', 'https://www.messagebird.com', '{\"Originator\":\"\",\"AcccessKey\":\"\"}', 0),
(6, NULL, NULL, 'Clickatell', 'clickatell', 'http://clickatell.com', '{\"API_ID\":\"\",\"User\":\"\",\"Password\":\"\",\"Unicode\":\"0\"}', 0),
(7, NULL, NULL, 'BudgetSmsNet', 'budgetsms', 'https://www.budgetsms.net', '{\"Username\":\"\",\"UserID\":\"\",\"Handle\":\"\",\"From\":\"\"}', 0),
(8, NULL, NULL, 'Nexmo', 'nexmo', 'https://www.nexmo.com', '{\"From\":\"\",\"API_KEY\":\"\",\"API_SECRET\":\"\"}', 0),
(9, NULL, NULL, 'smsCountry', 'smscountry', 'https://www.smscountry.com', '{\"UserName\":\"\",\"Password\":\"\",\"SenderId\":\"\",\"Token\":\"\"}', 0),
(10, NULL, NULL, 'MsgClub', 'msgclub', 'http://msg.msgclub.net', '{\"AUTH_KEY\":\"\",\"senderId\":\"\",\"routeId\":\"\"}', 0),
(11, NULL, NULL, 'Digimiles', 'digimiles', 'http://www.digimiles.in', '{\"UserName\":\"\",\"Password\":\"\",\"Type\":0,\"Sender_ID\":\"\"}', 0),
(12, NULL, NULL, 'Textlocal', 'textlocal', 'https://www.textlocal.in', '{\"apiKey\":\"\",\"sender\":\"\"}', 0),
(13, NULL, NULL, 'SmartSMS', 'smartsms', 'https://smartsmssolutions.com/', '{\"ACCESS_TOKEN\":\"\",\"Sender\":\"\",\"Routing\":\"2\",\"Type\":\"0\"}', 0),
(14, NULL, NULL, 'Sparrow', 'sparrow', 'http://sparrowsms.com', '{\"From\":\"\",\"Token\":\"\"}', 0),
(15, NULL, NULL, 'InitiativeNepal', 'aayosms', 'https://www.ininepal.com', '{\"Sender\":\"\",\"UserName\":\"\",\"Password\":\"\"}', 0),
(16, NULL, NULL, 'SendPK', 'sendpk', 'https://sendpk.com/api.php', '{\"UserName\":\"\",\"Password\":\"\",\"Sender\":\"\",\"Type\":\"\"}', 0),
(17, NULL, NULL, 'LifetimeSMS', 'lifetimesms', 'http://lifetimesms.com', '{\"ApiToken\":\"\",\"ApiSecret\":\"\",\"From\":\"\"}', 0),
(18, NULL, NULL, 'SmsCluster', 'smscluster', 'http://www.smscluster.com', '{\"AUTH_KEY\":\"\",\"senderId\":\"\",\"routeId\":\"\",\"smsContentType\":\"English\"}', 0),
(19, NULL, NULL, 'marketsmsPK', 'marketsms', 'http://www.marketsms.pk', '{\"UserName\":\"\",\"Password\":\"\",\"From\":\"\"}', 0),
(20, NULL, NULL, 'springEdge', 'springedge', 'http://springedge.com', '{\"API_KEY\":\"\",\"SenderID\":\"\"}', 0),
(21, NULL, NULL, 'africastalking', 'africastalking', 'https://africastalking.com', '{\"API_KEY\":\"\",\"UserName\":\"\"}', 0),
(22, NULL, NULL, 'TheSMSCentral', 'thesmscentral', 'https://thesmscentral.com', '{\"ApiToken\":\"\",\"Sender\":\"\"}', 0),
(23, NULL, NULL, 'AakashNepal', 'aakashsms', 'https://aakashsms.com', '{\"AuthToken\":\"\"}', 0),
(24, NULL, NULL, 'FullTimeBulk', 'fulltimesms', 'http://www.sms.fulltimesms.com', '{\"ApiToken\":\"\",\"ApiSecret\":\"\",\"From\":\"\"}', 0),
(25, NULL, NULL, 'AmetechSolution', 'ametechsolution', 'https://ametechsolution.in', '{\"User\":\"\",\"Auth\":\"\",\"Sender\":\"\"}', 0);

-- --------------------------------------------------------

--
-- Table structure for table `staff`
--

CREATE TABLE `staff` (
  `id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `created_by` int(10) UNSIGNED NOT NULL,
  `last_updated_by` int(10) UNSIGNED DEFAULT NULL,
  `reg_no` varchar(15) COLLATE utf8mb4_unicode_ci NOT NULL,
  `join_date` datetime NOT NULL,
  `designation` int(10) UNSIGNED NOT NULL,
  `first_name` varchar(15) COLLATE utf8mb4_unicode_ci NOT NULL,
  `middle_name` varchar(15) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `last_name` varchar(15) COLLATE utf8mb4_unicode_ci NOT NULL,
  `father_name` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `mother_name` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `date_of_birth` datetime NOT NULL,
  `gender` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL,
  `blood_group` varchar(10) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `nationality` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `address` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `state` varchar(25) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `country` varchar(25) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `temp_address` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `temp_state` varchar(25) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `temp_country` varchar(25) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `home_phone` varchar(15) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `mobile_1` varchar(15) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `mobile_2` varchar(15) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `mother_tongue` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `qualification` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `experience` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `experience_info` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `other_info` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `staff_image` text COLLATE utf8mb4_unicode_ci,
  `status` tinyint(1) NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `staff`
--

INSERT INTO `staff` (`id`, `created_at`, `updated_at`, `created_by`, `last_updated_by`, `reg_no`, `join_date`, `designation`, `first_name`, `middle_name`, `last_name`, `father_name`, `mother_name`, `date_of_birth`, `gender`, `blood_group`, `nationality`, `address`, `state`, `country`, `temp_address`, `temp_state`, `temp_country`, `home_phone`, `mobile_1`, `mobile_2`, `mother_tongue`, `email`, `qualification`, `experience`, `experience_info`, `other_info`, `staff_image`, `status`) VALUES
(1, '2021-12-12 11:25:34', '2021-12-12 11:25:34', 1, NULL, '2312313', '2021-12-01 00:00:00', 1, 'MOHD', 'ASHAFAK', 'ALI', 'ASKA', 'RANI', '1988-12-26 00:00:00', 'MALE', 'A+', 'INDIAN', 'C 169 SECTOR 23', 'UTTAR PRADESH', 'INDIA', 'C 169 SECTOR 23', 'UTTAR PRADESH', 'INDIA', '+918368710594', '+918368710594', NULL, 'HINDI', 'mohd.faraz93@gmail.com', 'LLM', '5', NULL, NULL, '', 1);

-- --------------------------------------------------------

--
-- Table structure for table `staff_designations`
--

CREATE TABLE `staff_designations` (
  `id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `created_by` int(10) UNSIGNED NOT NULL,
  `last_updated_by` int(10) UNSIGNED DEFAULT NULL,
  `title` varchar(25) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `staff_designations`
--

INSERT INTO `staff_designations` (`id`, `created_at`, `updated_at`, `created_by`, `last_updated_by`, `title`, `status`) VALUES
(1, '2021-12-12 11:22:57', '2021-12-12 11:22:57', 1, NULL, 'Teacher', 1);

-- --------------------------------------------------------

--
-- Table structure for table `stocks`
--

CREATE TABLE `stocks` (
  `id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `created_by` int(10) UNSIGNED NOT NULL,
  `last_updated_by` int(10) UNSIGNED DEFAULT NULL,
  `products_id` int(10) UNSIGNED NOT NULL,
  `transaction_type` varchar(25) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `date` datetime NOT NULL,
  `qty_in` int(11) DEFAULT '0',
  `qty_out` int(11) DEFAULT '0',
  `status` tinyint(1) NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `students`
--

CREATE TABLE `students` (
  `id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `created_by` int(10) UNSIGNED NOT NULL,
  `last_updated_by` int(10) UNSIGNED DEFAULT NULL,
  `reg_no` varchar(25) COLLATE utf8mb4_unicode_ci NOT NULL,
  `reg_date` datetime NOT NULL,
  `university_reg` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `faculty` int(10) UNSIGNED DEFAULT NULL,
  `semester` int(10) UNSIGNED DEFAULT NULL,
  `academic_status` int(10) UNSIGNED DEFAULT NULL,
  `batch` int(10) UNSIGNED DEFAULT NULL,
  `first_name` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `middle_name` varchar(25) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `last_name` varchar(25) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `date_of_birth` datetime NOT NULL,
  `gender` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL,
  `blood_group` varchar(10) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `religion` varchar(25) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `caste` varchar(25) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `nationality` varchar(25) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `national_id_type` varchar(25) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `national_id_number` varchar(25) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `extra_id_card_type` varchar(25) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `extra_id_card_number` varchar(25) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `mother_tongue` varchar(25) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `extra_info` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `student_image` text COLLATE utf8mb4_unicode_ci,
  `student_signature` text COLLATE utf8mb4_unicode_ci,
  `status` tinyint(1) NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `student_batches`
--

CREATE TABLE `student_batches` (
  `id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `created_by` int(10) UNSIGNED NOT NULL,
  `last_updated_by` int(10) UNSIGNED DEFAULT NULL,
  `title` varchar(25) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `student_batches`
--

INSERT INTO `student_batches` (`id`, `created_at`, `updated_at`, `created_by`, `last_updated_by`, `title`, `status`) VALUES
(1, '2021-12-12 11:21:15', '2021-12-12 11:21:15', 1, NULL, '2021', 1);

-- --------------------------------------------------------

--
-- Table structure for table `student_guardians`
--

CREATE TABLE `student_guardians` (
  `id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `students_id` int(10) UNSIGNED NOT NULL,
  `guardians_id` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `student_statuses`
--

CREATE TABLE `student_statuses` (
  `id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `created_by` int(10) UNSIGNED NOT NULL,
  `last_updated_by` int(10) UNSIGNED DEFAULT NULL,
  `title` varchar(25) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `student_statuses`
--

INSERT INTO `student_statuses` (`id`, `created_at`, `updated_at`, `created_by`, `last_updated_by`, `title`, `status`) VALUES
(1, '2021-06-30 05:33:50', '2021-06-30 05:33:50', 1, 1, 'New Admission', 1),
(2, '2021-06-30 05:33:50', '2021-06-30 05:33:50', 1, 1, 'Continue', 1),
(3, '2021-06-30 05:33:50', '2021-06-30 05:33:50', 1, 1, 'Pass Out', 1),
(4, '2021-06-30 05:33:50', '2021-06-30 05:33:50', 1, 1, 'Back Continue', 1),
(5, '2021-06-30 05:33:50', '2021-06-30 05:33:50', 1, 1, 'Drop Out', 1),
(6, '2021-06-30 05:33:50', '2021-06-30 05:33:50', 1, 1, 'Transfer in', 1),
(7, '2021-06-30 05:33:50', '2021-06-30 05:33:50', 1, 1, 'Transfer Out', 1),
(8, '2021-06-30 05:33:50', '2021-06-30 05:33:50', 1, 1, 'Online Registration', 1);

-- --------------------------------------------------------

--
-- Table structure for table `subjects`
--

CREATE TABLE `subjects` (
  `id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `created_by` int(10) UNSIGNED NOT NULL,
  `last_updated_by` int(10) UNSIGNED DEFAULT NULL,
  `title` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `code` varchar(15) COLLATE utf8mb4_unicode_ci NOT NULL,
  `full_mark_theory` int(11) DEFAULT NULL,
  `pass_mark_theory` int(11) DEFAULT NULL,
  `full_mark_practical` int(11) DEFAULT NULL,
  `pass_mark_practical` int(11) DEFAULT NULL,
  `credit_hour` int(11) DEFAULT NULL,
  `sub_type` varchar(15) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `class_type` varchar(15) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `staff_id` int(10) UNSIGNED DEFAULT NULL,
  `description` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` tinyint(1) NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `subject_attendances`
--

CREATE TABLE `subject_attendances` (
  `id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `created_by` int(10) UNSIGNED NOT NULL,
  `last_updated_by` int(10) UNSIGNED DEFAULT NULL,
  `link_id` int(10) UNSIGNED NOT NULL,
  `subjects_id` int(10) UNSIGNED NOT NULL,
  `attendance_type` int(11) NOT NULL,
  `years_id` int(10) UNSIGNED NOT NULL,
  `months_id` int(10) UNSIGNED NOT NULL,
  `day_1` int(11) NOT NULL DEFAULT '0',
  `day_2` int(11) NOT NULL DEFAULT '0',
  `day_3` int(11) NOT NULL DEFAULT '0',
  `day_4` int(11) NOT NULL DEFAULT '0',
  `day_5` int(11) NOT NULL DEFAULT '0',
  `day_6` int(11) NOT NULL DEFAULT '0',
  `day_7` int(11) NOT NULL DEFAULT '0',
  `day_8` int(11) NOT NULL DEFAULT '0',
  `day_9` int(11) NOT NULL DEFAULT '0',
  `day_10` int(11) NOT NULL DEFAULT '0',
  `day_11` int(11) NOT NULL DEFAULT '0',
  `day_12` int(11) NOT NULL DEFAULT '0',
  `day_13` int(11) NOT NULL DEFAULT '0',
  `day_14` int(11) NOT NULL DEFAULT '0',
  `day_15` int(11) NOT NULL DEFAULT '0',
  `day_16` int(11) NOT NULL DEFAULT '0',
  `day_17` int(11) NOT NULL DEFAULT '0',
  `day_18` int(11) NOT NULL DEFAULT '0',
  `day_19` int(11) NOT NULL DEFAULT '0',
  `day_20` int(11) NOT NULL DEFAULT '0',
  `day_21` int(11) NOT NULL DEFAULT '0',
  `day_22` int(11) NOT NULL DEFAULT '0',
  `day_23` int(11) NOT NULL DEFAULT '0',
  `day_24` int(11) NOT NULL DEFAULT '0',
  `day_25` int(11) NOT NULL DEFAULT '0',
  `day_26` int(11) NOT NULL DEFAULT '0',
  `day_27` int(11) NOT NULL DEFAULT '0',
  `day_28` int(11) NOT NULL DEFAULT '0',
  `day_29` int(11) NOT NULL DEFAULT '0',
  `day_30` int(11) NOT NULL DEFAULT '0',
  `day_31` int(11) NOT NULL DEFAULT '0',
  `day_32` int(11) NOT NULL DEFAULT '0',
  `status` tinyint(1) NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `sub_categories`
--

CREATE TABLE `sub_categories` (
  `id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `created_by` int(10) UNSIGNED NOT NULL,
  `last_updated_by` int(10) UNSIGNED DEFAULT NULL,
  `category_id` int(10) UNSIGNED NOT NULL,
  `title` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `time_zones`
--

CREATE TABLE `time_zones` (
  `id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `timezone` varchar(35) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `time_zones`
--

INSERT INTO `time_zones` (`id`, `created_at`, `updated_at`, `timezone`, `status`) VALUES
(1, NULL, NULL, 'Africa/Abidjan', 0),
(2, NULL, NULL, 'Africa/Accra', 0),
(3, NULL, NULL, 'Africa/Addis_Ababa', 0),
(4, NULL, NULL, 'Africa/Algiers', 0),
(5, NULL, NULL, 'Africa/Asmara', 0),
(6, NULL, NULL, 'Africa/Asmera', 0),
(7, NULL, NULL, 'Africa/Bamako', 0),
(8, NULL, NULL, 'Africa/Bangui', 0),
(9, NULL, NULL, 'Africa/Banjul', 0),
(10, NULL, NULL, 'Africa/Bissau', 0),
(11, NULL, NULL, 'Africa/Blantyre', 0),
(12, NULL, NULL, 'Africa/Brazzaville', 0),
(13, NULL, NULL, 'Africa/Bujumbura', 0),
(14, NULL, NULL, 'Africa/Cairo', 0),
(15, NULL, NULL, 'Africa/Casablanca', 0),
(16, NULL, NULL, 'Africa/Ceuta', 0),
(17, NULL, NULL, 'Africa/Conakry', 0),
(18, NULL, NULL, 'Africa/Dakar', 0),
(19, NULL, NULL, 'Africa/Dar_es_Salaam', 0),
(20, NULL, NULL, 'Africa/Djibouti', 0),
(21, NULL, NULL, 'Africa/Douala', 0),
(22, NULL, NULL, 'Africa/El_Aaiun', 0),
(23, NULL, NULL, 'Africa/Freetown', 0),
(24, NULL, NULL, 'Africa/Gaborone', 0),
(25, NULL, NULL, 'Africa/Harare', 0),
(26, NULL, NULL, 'Africa/Johannesburg', 0),
(27, NULL, NULL, 'Africa/Juba', 0),
(28, NULL, NULL, 'Africa/Kampala', 0),
(29, NULL, NULL, 'Africa/Khartoum', 0),
(30, NULL, NULL, 'Africa/Kigali', 0),
(31, NULL, NULL, 'Africa/Kinshasa', 0),
(32, NULL, NULL, 'Africa/Lagos', 0),
(33, NULL, NULL, 'Africa/Libreville', 0),
(34, NULL, NULL, 'Africa/Lome', 0),
(35, NULL, NULL, 'Africa/Luanda', 0),
(36, NULL, NULL, 'Africa/Lubumbashi', 0),
(37, NULL, NULL, 'Africa/Lusaka', 0),
(38, NULL, NULL, 'Africa/Malabo', 0),
(39, NULL, NULL, 'Africa/Maputo', 0),
(40, NULL, NULL, 'Africa/Maseru', 0),
(41, NULL, NULL, 'Africa/Mbabane', 0),
(42, NULL, NULL, 'Africa/Mogadishu', 0),
(43, NULL, NULL, 'Africa/Monrovia', 0),
(44, NULL, NULL, 'Africa/Nairobi', 0),
(45, NULL, NULL, 'Africa/Ndjamena', 0),
(46, NULL, NULL, 'Africa/Niamey', 0),
(47, NULL, NULL, 'Africa/Nouakchott', 0),
(48, NULL, NULL, 'Africa/Ouagadougou', 0),
(49, NULL, NULL, 'Africa/Porto-Novo', 0),
(50, NULL, NULL, 'Africa/Sao_Tome', 0),
(51, NULL, NULL, 'Africa/Timbuktu', 0),
(52, NULL, NULL, 'Africa/Tripoli', 0),
(53, NULL, NULL, 'Africa/Tunis', 0),
(54, NULL, NULL, 'Africa/Windhoek', 0),
(55, NULL, NULL, 'America/Adak', 0),
(56, NULL, NULL, 'America/Anchorage', 0),
(57, NULL, NULL, 'America/Anguilla', 0),
(58, NULL, NULL, 'America/Antigua', 0),
(59, NULL, NULL, 'America/Araguaina', 0),
(60, NULL, NULL, 'America/Argentina/Buenos_Aires', 0),
(61, NULL, NULL, 'America/Argentina/Catamarca', 0),
(62, NULL, NULL, 'America/Argentina/ComodRivadavia', 0),
(63, NULL, NULL, 'America/Argentina/Cordoba', 0),
(64, NULL, NULL, 'America/Argentina/Jujuy', 0),
(65, NULL, NULL, 'America/Argentina/La_Rioja', 0),
(66, NULL, NULL, 'America/Argentina/Mendoza', 0),
(67, NULL, NULL, 'America/Argentina/Rio_Gallegos', 0),
(68, NULL, NULL, 'America/Argentina/Salta', 0),
(69, NULL, NULL, 'America/Argentina/San_Juan', 0),
(70, NULL, NULL, 'America/Argentina/San_Luis', 0),
(71, NULL, NULL, 'America/Argentina/Tucuman', 0),
(72, NULL, NULL, 'America/Argentina/Ushuaia', 0),
(73, NULL, NULL, 'America/Aruba', 0),
(74, NULL, NULL, 'America/Asuncion', 0),
(75, NULL, NULL, 'America/Atikokan', 0),
(76, NULL, NULL, 'America/Atka', 0),
(77, NULL, NULL, 'America/Bahia', 0),
(78, NULL, NULL, 'America/Bahia_Banderas', 0),
(79, NULL, NULL, 'America/Barbados', 0),
(80, NULL, NULL, 'America/Belem', 0),
(81, NULL, NULL, 'America/Belize', 0),
(82, NULL, NULL, 'America/Blanc-Sablon', 0),
(83, NULL, NULL, 'America/Boa_Vista', 0),
(84, NULL, NULL, 'America/Bogota', 0),
(85, NULL, NULL, 'America/Boise', 0),
(86, NULL, NULL, 'America/Buenos_Aires', 0),
(87, NULL, NULL, 'America/Cambridge_Bay', 0),
(88, NULL, NULL, 'America/Campo_Grande', 0),
(89, NULL, NULL, 'America/Cancun', 0),
(90, NULL, NULL, 'America/Caracas', 0),
(91, NULL, NULL, 'America/Catamarca', 0),
(92, NULL, NULL, 'America/Cayenne', 0),
(93, NULL, NULL, 'America/Cayman', 0),
(94, NULL, NULL, 'America/Chicago', 0),
(95, NULL, NULL, 'America/Chihuahua', 0),
(96, NULL, NULL, 'America/Coral_Harbour', 0),
(97, NULL, NULL, 'America/Cordoba', 0),
(98, NULL, NULL, 'America/Costa_Rica', 0),
(99, NULL, NULL, 'America/Creston', 0),
(100, NULL, NULL, 'America/Cuiaba', 0),
(101, NULL, NULL, 'America/Curacao', 0),
(102, NULL, NULL, 'America/Danmarkshavn', 0),
(103, NULL, NULL, 'America/Dawson', 0),
(104, NULL, NULL, 'America/Dawson_Creek', 0),
(105, NULL, NULL, 'America/Denver', 0),
(106, NULL, NULL, 'America/Detroit', 0),
(107, NULL, NULL, 'America/Dominica', 0),
(108, NULL, NULL, 'America/Edmonton', 0),
(109, NULL, NULL, 'America/Eirunepe', 0),
(110, NULL, NULL, 'America/El_Salvador', 0),
(111, NULL, NULL, 'America/Ensenada', 0),
(112, NULL, NULL, 'America/Fort_Wayne', 0),
(113, NULL, NULL, 'America/Fortaleza', 0),
(114, NULL, NULL, 'America/Glace_Bay', 0),
(115, NULL, NULL, 'America/Godthab', 0),
(116, NULL, NULL, 'America/Goose_Bay', 0),
(117, NULL, NULL, 'America/Grand_Turk', 0),
(118, NULL, NULL, 'America/Grenada', 0),
(119, NULL, NULL, 'America/Guadeloupe', 0),
(120, NULL, NULL, 'America/Guatemala', 0),
(121, NULL, NULL, 'America/Guayaquil', 0),
(122, NULL, NULL, 'America/Guyana', 0),
(123, NULL, NULL, 'America/Halifax', 0),
(124, NULL, NULL, 'America/Havana', 0),
(125, NULL, NULL, 'America/Hermosillo', 0),
(126, NULL, NULL, 'America/Indiana/Indianapolis', 0),
(127, NULL, NULL, 'America/Indiana/Knox', 0),
(128, NULL, NULL, 'America/Indiana/Marengo', 0),
(129, NULL, NULL, 'America/Indiana/Petersburg', 0),
(130, NULL, NULL, 'America/Indiana/Tell_City', 0),
(131, NULL, NULL, 'America/Indiana/Vevay', 0),
(132, NULL, NULL, 'America/Indiana/Vincennes', 0),
(133, NULL, NULL, 'America/Indiana/Winamac', 0),
(134, NULL, NULL, 'America/Indianapolis', 0),
(135, NULL, NULL, 'America/Inuvik', 0),
(136, NULL, NULL, 'America/Iqaluit', 0),
(137, NULL, NULL, 'America/Jamaica', 0),
(138, NULL, NULL, 'America/Jujuy', 0),
(139, NULL, NULL, 'America/Juneau', 0),
(140, NULL, NULL, 'America/Kentucky/Louisville', 0),
(141, NULL, NULL, 'America/Kentucky/Monticello', 0),
(142, NULL, NULL, 'America/Knox_IN', 0),
(143, NULL, NULL, 'America/Kralendijk', 0),
(144, NULL, NULL, 'America/La_Paz', 0),
(145, NULL, NULL, 'America/Lima', 0),
(146, NULL, NULL, 'America/Los_Angeles', 0),
(147, NULL, NULL, 'America/Louisville', 0),
(148, NULL, NULL, 'America/Lower_Princes', 0),
(149, NULL, NULL, 'America/Maceio', 0),
(150, NULL, NULL, 'America/Managua', 0),
(151, NULL, NULL, 'America/Manaus', 0),
(152, NULL, NULL, 'America/Marigot', 0),
(153, NULL, NULL, 'America/Martinique', 0),
(154, NULL, NULL, 'America/Matamoros', 0),
(155, NULL, NULL, 'America/Mazatlan', 0),
(156, NULL, NULL, 'America/Mendoza', 0),
(157, NULL, NULL, 'America/Menominee', 0),
(158, NULL, NULL, 'America/Merida', 0),
(159, NULL, NULL, 'America/Metlakatla', 0),
(160, NULL, NULL, 'America/Mexico_City', 0),
(161, NULL, NULL, 'America/Miquelon', 0),
(162, NULL, NULL, 'America/Moncton', 0),
(163, NULL, NULL, 'America/Monterrey', 0),
(164, NULL, NULL, 'America/Montevideo', 0),
(165, NULL, NULL, 'America/Montreal', 0),
(166, NULL, NULL, 'America/Montserrat', 0),
(167, NULL, NULL, 'America/Nassau', 0),
(168, NULL, NULL, 'America/New_York', 0),
(169, NULL, NULL, 'America/Nipigon', 0),
(170, NULL, NULL, 'America/Nome', 0),
(171, NULL, NULL, 'America/Noronha', 0),
(172, NULL, NULL, 'America/North_Dakota/Beulah', 0),
(173, NULL, NULL, 'America/North_Dakota/Center', 0),
(174, NULL, NULL, 'America/North_Dakota/New_Salem', 0),
(175, NULL, NULL, 'America/Ojinaga', 0),
(176, NULL, NULL, 'America/Panama', 0),
(177, NULL, NULL, 'America/Pangnirtung', 0),
(178, NULL, NULL, 'America/Paramaribo', 0),
(179, NULL, NULL, 'America/Phoenix', 0),
(180, NULL, NULL, 'America/Port-au-Prince', 0),
(181, NULL, NULL, 'America/Port_of_Spain', 0),
(182, NULL, NULL, 'America/Porto_Acre', 0),
(183, NULL, NULL, 'America/Porto_Velho', 0),
(184, NULL, NULL, 'America/Puerto_Rico', 0),
(185, NULL, NULL, 'America/Rainy_River', 0),
(186, NULL, NULL, 'America/Rankin_Inlet', 0),
(187, NULL, NULL, 'America/Recife', 0),
(188, NULL, NULL, 'America/Regina', 0),
(189, NULL, NULL, 'America/Resolute', 0),
(190, NULL, NULL, 'America/Rio_Branco', 0),
(191, NULL, NULL, 'America/Rosario', 0),
(192, NULL, NULL, 'America/Santa_Isabel', 0),
(193, NULL, NULL, 'America/Santarem', 0),
(194, NULL, NULL, 'America/Santiago', 0),
(195, NULL, NULL, 'America/Santo_Domingo', 0),
(196, NULL, NULL, 'America/Sao_Paulo', 0),
(197, NULL, NULL, 'America/Scoresbysund', 0),
(198, NULL, NULL, 'America/Shiprock', 0),
(199, NULL, NULL, 'America/Sitka', 0),
(200, NULL, NULL, 'America/St_Barthelemy', 0),
(201, NULL, NULL, 'America/St_Johns', 0),
(202, NULL, NULL, 'America/St_Kitts', 0),
(203, NULL, NULL, 'America/St_Lucia', 0),
(204, NULL, NULL, 'America/St_Thomas', 0),
(205, NULL, NULL, 'America/St_Vincent', 0),
(206, NULL, NULL, 'America/Swift_Current', 0),
(207, NULL, NULL, 'America/Tegucigalpa', 0),
(208, NULL, NULL, 'America/Thule', 0),
(209, NULL, NULL, 'America/Thunder_Bay', 0),
(210, NULL, NULL, 'America/Tijuana', 0),
(211, NULL, NULL, 'America/Toronto', 0),
(212, NULL, NULL, 'America/Tortola', 0),
(213, NULL, NULL, 'America/Vancouver', 0),
(214, NULL, NULL, 'America/Virgin', 0),
(215, NULL, NULL, 'America/Whitehorse', 0),
(216, NULL, NULL, 'America/Winnipeg', 0),
(217, NULL, NULL, 'America/Yakutat', 0),
(218, NULL, NULL, 'America/Yellowknife', 0),
(219, NULL, NULL, 'Antarctica/Casey', 0),
(220, NULL, NULL, 'Antarctica/Davis', 0),
(221, NULL, NULL, 'Antarctica/DumontDUrville', 0),
(222, NULL, NULL, 'Antarctica/Macquarie', 0),
(223, NULL, NULL, 'Antarctica/Mawson', 0),
(224, NULL, NULL, 'Antarctica/McMurdo', 0),
(225, NULL, NULL, 'Antarctica/Palmer', 0),
(226, NULL, NULL, 'Antarctica/Rothera', 0),
(227, NULL, NULL, 'Antarctica/South_Pole', 0),
(228, NULL, NULL, 'Antarctica/Syowa', 0),
(229, NULL, NULL, 'Antarctica/Vostok', 0),
(230, NULL, NULL, 'Arctic/Longyearbyen', 0),
(231, NULL, NULL, 'Asia/Aden', 0),
(232, NULL, NULL, 'Asia/Almaty', 0),
(233, NULL, NULL, 'Asia/Amman', 0),
(234, NULL, NULL, 'Asia/Anadyr', 0),
(235, NULL, NULL, 'Asia/Aqtau', 0),
(236, NULL, NULL, 'Asia/Aqtobe', 0),
(237, NULL, NULL, 'Asia/Ashgabat', 0),
(238, NULL, NULL, 'Asia/Ashkhabad', 0),
(239, NULL, NULL, 'Asia/Baghdad', 0),
(240, NULL, NULL, 'Asia/Bahrain', 0),
(241, NULL, NULL, 'Asia/Baku', 0),
(242, NULL, NULL, 'Asia/Bangkok', 0),
(243, NULL, NULL, 'Asia/Beirut', 0),
(244, NULL, NULL, 'Asia/Bishkek', 0),
(245, NULL, NULL, 'Asia/Brunei', 0),
(246, NULL, NULL, 'Asia/Calcutta', 0),
(247, NULL, NULL, 'Asia/Choibalsan', 0),
(248, NULL, NULL, 'Asia/Chongqing', 0),
(249, NULL, NULL, 'Asia/Chungking', 0),
(250, NULL, NULL, 'Asia/Colombo', 0),
(251, NULL, NULL, 'Asia/Dacca', 0),
(252, NULL, NULL, 'Asia/Damascus', 0),
(253, NULL, NULL, 'Asia/Dhaka', 0),
(254, NULL, NULL, 'Asia/Dili', 0),
(255, NULL, NULL, 'Asia/Dubai', 0),
(256, NULL, NULL, 'Asia/Dushanbe', 0),
(257, NULL, NULL, 'Asia/Gaza', 0),
(258, NULL, NULL, 'Asia/Harbin', 0),
(259, NULL, NULL, 'Asia/Hebron', 0),
(260, NULL, NULL, 'Asia/Ho_Chi_Minh', 0),
(261, NULL, NULL, 'Asia/Hong_Kong', 0),
(262, NULL, NULL, 'Asia/Hovd', 0),
(263, NULL, NULL, 'Asia/Irkutsk', 0),
(264, NULL, NULL, 'Asia/Istanbul', 0),
(265, NULL, NULL, 'Asia/Jakarta', 0),
(266, NULL, NULL, 'Asia/Jayapura', 0),
(267, NULL, NULL, 'Asia/Jerusalem', 0),
(268, NULL, NULL, 'Asia/Kabul', 0),
(269, NULL, NULL, 'Asia/Kamchatka', 0),
(270, NULL, NULL, 'Asia/Karachi', 0),
(271, NULL, NULL, 'Asia/Kashgar', 0),
(272, NULL, NULL, 'Asia/Kathmandu', 0),
(273, NULL, NULL, 'Asia/Khandyga', 0),
(274, NULL, NULL, 'Asia/Kolkata', 0),
(275, NULL, NULL, 'Asia/Krasnoyarsk', 0),
(276, NULL, NULL, 'Asia/Kuala_Lumpur', 0),
(277, NULL, NULL, 'Asia/Kuching', 0),
(278, NULL, NULL, 'Asia/Kuwait', 0),
(279, NULL, NULL, 'Asia/Macao', 0),
(280, NULL, NULL, 'Asia/Macau', 0),
(281, NULL, NULL, 'Asia/Magadan', 0),
(282, NULL, NULL, 'Asia/Makassar', 0),
(283, NULL, NULL, 'Asia/Manila', 0),
(284, NULL, NULL, 'Asia/Muscat', 0),
(285, NULL, NULL, 'Asia/Nicosia', 0),
(286, NULL, NULL, 'Asia/Novokuznetsk', 0),
(287, NULL, NULL, 'Asia/Novosibirsk', 0),
(288, NULL, NULL, 'Asia/Omsk', 0),
(289, NULL, NULL, 'Asia/Oral', 0),
(290, NULL, NULL, 'Asia/Phnom_Penh', 0),
(291, NULL, NULL, 'Asia/Pontianak', 0),
(292, NULL, NULL, 'Asia/Pyongyang', 0),
(293, NULL, NULL, 'Asia/Qatar', 0),
(294, NULL, NULL, 'Asia/Qyzylorda', 0),
(295, NULL, NULL, 'Asia/Rangoon', 0),
(296, NULL, NULL, 'Asia/Riyadh', 0),
(297, NULL, NULL, 'Asia/Saigon', 0),
(298, NULL, NULL, 'Asia/Sakhalin', 0),
(299, NULL, NULL, 'Asia/Samarkand', 0),
(300, NULL, NULL, 'Asia/Seoul', 0),
(301, NULL, NULL, 'Asia/Shanghai', 0),
(302, NULL, NULL, 'Asia/Singapore', 0),
(303, NULL, NULL, 'Asia/Taipei', 0),
(304, NULL, NULL, 'Asia/Tashkent', 0),
(305, NULL, NULL, 'Asia/Tbilisi', 0),
(306, NULL, NULL, 'Asia/Tehran', 0),
(307, NULL, NULL, 'Asia/Tel_Aviv', 0),
(308, NULL, NULL, 'Asia/Thimbu', 0),
(309, NULL, NULL, 'Asia/Thimphu', 0),
(310, NULL, NULL, 'Asia/Tokyo', 0),
(311, NULL, NULL, 'Asia/Ujung_Pandang', 0),
(312, NULL, NULL, 'Asia/Ulaanbaatar', 0),
(313, NULL, NULL, 'Asia/Ulan_Bator', 0),
(314, NULL, NULL, 'Asia/Urumqi', 0),
(315, NULL, NULL, 'Asia/Ust-Nera', 0),
(316, NULL, NULL, 'Asia/Vientiane', 0),
(317, NULL, NULL, 'Asia/Vladivostok', 0),
(318, NULL, NULL, 'Asia/Yakutsk', 0),
(319, NULL, NULL, 'Asia/Yekaterinburg', 0),
(320, NULL, NULL, 'Asia/Yerevan', 0),
(321, NULL, NULL, 'Atlantic/Azores', 0),
(322, NULL, NULL, 'Atlantic/Bermuda', 0),
(323, NULL, NULL, 'Atlantic/Canary', 0),
(324, NULL, NULL, 'Atlantic/Cape_Verde', 0),
(325, NULL, NULL, 'Atlantic/Faeroe', 0),
(326, NULL, NULL, 'Atlantic/Faroe', 0),
(327, NULL, NULL, 'Atlantic/Jan_Mayen', 0),
(328, NULL, NULL, 'Atlantic/Madeira', 0),
(329, NULL, NULL, 'Atlantic/Reykjavik', 0),
(330, NULL, NULL, 'Atlantic/South_Georgia', 0),
(331, NULL, NULL, 'Atlantic/St_Helena', 0),
(332, NULL, NULL, 'Atlantic/Stanley', 0),
(333, NULL, NULL, 'Australia/ACT', 0),
(334, NULL, NULL, 'Australia/Adelaide', 0),
(335, NULL, NULL, 'Australia/Brisbane', 0),
(336, NULL, NULL, 'Australia/Broken_Hill', 0),
(337, NULL, NULL, 'Australia/Canberra', 0),
(338, NULL, NULL, 'Australia/Currie', 0),
(339, NULL, NULL, 'Australia/Darwin', 0),
(340, NULL, NULL, 'Australia/Eucla', 0),
(341, NULL, NULL, 'Australia/Hobart', 0),
(342, NULL, NULL, 'Australia/LHI', 0),
(343, NULL, NULL, 'Australia/Lindeman', 0),
(344, NULL, NULL, 'Australia/Lord_Howe', 0),
(345, NULL, NULL, 'Australia/Melbourne', 0),
(346, NULL, NULL, 'Australia/North', 0),
(347, NULL, NULL, 'Australia/NSW', 0),
(348, NULL, NULL, 'Australia/Perth', 0),
(349, NULL, NULL, 'Australia/Queensland', 0),
(350, NULL, NULL, 'Australia/South', 0),
(351, NULL, NULL, 'Australia/Sydney', 0),
(352, NULL, NULL, 'Australia/Tasmania', 0),
(353, NULL, NULL, 'Australia/Victoria', 0),
(354, NULL, NULL, 'Australia/West', 0),
(355, NULL, NULL, 'Australia/Yancowinna', 0),
(356, NULL, NULL, 'Europe/Amsterdam', 0),
(357, NULL, NULL, 'Europe/Andorra', 0),
(358, NULL, NULL, 'Europe/Athens', 0),
(359, NULL, NULL, 'Europe/Belfast', 0),
(360, NULL, NULL, 'Europe/Belgrade', 0),
(361, NULL, NULL, 'Europe/Berlin', 0),
(362, NULL, NULL, 'Europe/Bratislava', 0),
(363, NULL, NULL, 'Europe/Brussels', 0),
(364, NULL, NULL, 'Europe/Bucharest', 0),
(365, NULL, NULL, 'Europe/Budapest', 0),
(366, NULL, NULL, 'Europe/Busingen', 0),
(367, NULL, NULL, 'Europe/Chisinau', 0),
(368, NULL, NULL, 'Europe/Copenhagen', 0),
(369, NULL, NULL, 'Europe/Dublin', 0),
(370, NULL, NULL, 'Europe/Gibraltar', 0),
(371, NULL, NULL, 'Europe/Guernsey', 0),
(372, NULL, NULL, 'Europe/Helsinki', 0),
(373, NULL, NULL, 'Europe/Isle_of_Man', 0),
(374, NULL, NULL, 'Europe/Istanbul', 0),
(375, NULL, NULL, 'Europe/Jersey', 0),
(376, NULL, NULL, 'Europe/Kaliningrad', 0),
(377, NULL, NULL, 'Europe/Kiev', 0),
(378, NULL, NULL, 'Europe/Lisbon', 0),
(379, NULL, NULL, 'Europe/Ljubljana', 0),
(380, NULL, NULL, 'Europe/London', 0),
(381, NULL, NULL, 'Europe/Luxembourg', 0),
(382, NULL, NULL, 'Europe/Madrid', 0),
(383, NULL, NULL, 'Europe/Malta', 0),
(384, NULL, NULL, 'Europe/Mariehamn', 0),
(385, NULL, NULL, 'Europe/Minsk', 0),
(386, NULL, NULL, 'Europe/Monaco', 0),
(387, NULL, NULL, 'Europe/Moscow', 0),
(388, NULL, NULL, 'Europe/Nicosia', 0),
(389, NULL, NULL, 'Europe/Oslo', 0),
(390, NULL, NULL, 'Europe/Paris', 0),
(391, NULL, NULL, 'Europe/Podgorica', 0),
(392, NULL, NULL, 'Europe/Prague', 0),
(393, NULL, NULL, 'Europe/Riga', 0),
(394, NULL, NULL, 'Europe/Rome', 0),
(395, NULL, NULL, 'Europe/Samara', 0),
(396, NULL, NULL, 'Europe/San_Marino', 0),
(397, NULL, NULL, 'Europe/Sarajevo', 0),
(398, NULL, NULL, 'Europe/Simferopol', 0),
(399, NULL, NULL, 'Europe/Skopje', 0),
(400, NULL, NULL, 'Europe/Sofia', 0),
(401, NULL, NULL, 'Europe/Stockholm', 0),
(402, NULL, NULL, 'Europe/Tallinn', 0),
(403, NULL, NULL, 'Europe/Tirane', 0),
(404, NULL, NULL, 'Europe/Tiraspol', 0),
(405, NULL, NULL, 'Europe/Uzhgorod', 0),
(406, NULL, NULL, 'Europe/Vaduz', 0),
(407, NULL, NULL, 'Europe/Vatican', 0),
(408, NULL, NULL, 'Europe/Vienna', 0),
(409, NULL, NULL, 'Europe/Vilnius', 0),
(410, NULL, NULL, 'Europe/Volgograd', 0),
(411, NULL, NULL, 'Europe/Warsaw', 0),
(412, NULL, NULL, 'Europe/Zagreb', 0),
(413, NULL, NULL, 'Europe/Zaporozhye', 0),
(414, NULL, NULL, 'Europe/Zurich', 0),
(415, NULL, NULL, 'Indian/Antananarivo', 0),
(416, NULL, NULL, 'Indian/Chagos', 0),
(417, NULL, NULL, 'Indian/Christmas', 0),
(418, NULL, NULL, 'Indian/Cocos', 0),
(419, NULL, NULL, 'Indian/Comoro', 0),
(420, NULL, NULL, 'Indian/Kerguelen', 0),
(421, NULL, NULL, 'Indian/Mahe', 0),
(422, NULL, NULL, 'Indian/Maldives', 0),
(423, NULL, NULL, 'Indian/Mauritius', 0),
(424, NULL, NULL, 'Indian/Mayotte', 0),
(425, NULL, NULL, 'Indian/Reunion', 0),
(426, NULL, NULL, 'Pacific/Apia', 0),
(427, NULL, NULL, 'Pacific/Auckland', 0),
(428, NULL, NULL, 'Pacific/Chatham', 0),
(429, NULL, NULL, 'Pacific/Chuuk', 0),
(430, NULL, NULL, 'Pacific/Easter', 0),
(431, NULL, NULL, 'Pacific/Efate', 0),
(432, NULL, NULL, 'Pacific/Enderbury', 0),
(433, NULL, NULL, 'Pacific/Fakaofo', 0),
(434, NULL, NULL, 'Pacific/Fiji', 0),
(435, NULL, NULL, 'Pacific/Funafuti', 0),
(436, NULL, NULL, 'Pacific/Galapagos', 0),
(437, NULL, NULL, 'Pacific/Gambier', 0),
(438, NULL, NULL, 'Pacific/Guadalcanal', 0),
(439, NULL, NULL, 'Pacific/Guam', 0),
(440, NULL, NULL, 'Pacific/Honolulu', 0),
(441, NULL, NULL, 'Pacific/Johnston', 0),
(442, NULL, NULL, 'Pacific/Kiritimati', 0),
(443, NULL, NULL, 'Pacific/Kosrae', 0),
(444, NULL, NULL, 'Pacific/Kwajalein', 0),
(445, NULL, NULL, 'Pacific/Majuro', 0),
(446, NULL, NULL, 'Pacific/Marquesas', 0),
(447, NULL, NULL, 'Pacific/Midway', 0),
(448, NULL, NULL, 'Pacific/Nauru', 0),
(449, NULL, NULL, 'Pacific/Niue', 0),
(450, NULL, NULL, 'Pacific/Norfolk', 0),
(451, NULL, NULL, 'Pacific/Noumea', 0),
(452, NULL, NULL, 'Pacific/Pago_Pago', 0),
(453, NULL, NULL, 'Pacific/Palau', 0),
(454, NULL, NULL, 'Pacific/Pitcairn', 0),
(455, NULL, NULL, 'Pacific/Pohnpei', 0),
(456, NULL, NULL, 'Pacific/Ponape', 0),
(457, NULL, NULL, 'Pacific/Port_Moresby', 0),
(458, NULL, NULL, 'Pacific/Rarotonga', 0),
(459, NULL, NULL, 'Pacific/Saipan', 0),
(460, NULL, NULL, 'Pacific/Samoa', 0),
(461, NULL, NULL, 'Pacific/Tahiti', 0),
(462, NULL, NULL, 'Pacific/Tarawa', 0),
(463, NULL, NULL, 'Pacific/Tongatapu', 0),
(464, NULL, NULL, 'Pacific/Truk', 0),
(465, NULL, NULL, 'Pacific/Wake', 0),
(466, NULL, NULL, 'Pacific/Wallis', 0),
(467, NULL, NULL, 'Pacific/Yap', 0);

-- --------------------------------------------------------

--
-- Table structure for table `transactions`
--

CREATE TABLE `transactions` (
  `id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `created_by` int(10) UNSIGNED NOT NULL,
  `last_updated_by` int(10) UNSIGNED DEFAULT NULL,
  `tr_head_id` int(10) UNSIGNED NOT NULL,
  `date` datetime NOT NULL,
  `dr_amount` int(11) DEFAULT NULL,
  `cr_amount` int(11) DEFAULT NULL,
  `description` text COLLATE utf8mb4_unicode_ci,
  `status` tinyint(1) NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `transaction_heads`
--

CREATE TABLE `transaction_heads` (
  `id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `created_by` int(10) UNSIGNED NOT NULL,
  `last_updated_by` int(10) UNSIGNED DEFAULT NULL,
  `tr_head` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `ref_id` int(10) UNSIGNED DEFAULT NULL,
  `acc_id` int(10) UNSIGNED NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `transaction_heads`
--

INSERT INTO `transaction_heads` (`id`, `created_at`, `updated_at`, `created_by`, `last_updated_by`, `tr_head`, `ref_id`, `acc_id`, `status`) VALUES
(1, '2021-06-30 05:36:19', '2021-06-30 05:36:19', 1, NULL, 'Cash A/C', NULL, 13, 1),
(2, '2021-06-30 05:36:20', '2021-06-30 05:36:20', 1, NULL, 'Purchase A/C', NULL, 68, 1),
(3, '2021-06-30 05:36:20', '2021-06-30 05:36:20', 1, NULL, 'Sales A/C', NULL, 77, 1),
(4, '2021-12-12 11:25:34', '2021-12-12 11:25:34', 1, NULL, 'MOHD ASHAFAK ALI  [2312313]', 1, 76, 1);

-- --------------------------------------------------------

--
-- Table structure for table `transfer_certificates`
--

CREATE TABLE `transfer_certificates` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `created_by` int(10) UNSIGNED NOT NULL,
  `last_updated_by` int(10) UNSIGNED DEFAULT NULL,
  `students_id` int(10) UNSIGNED NOT NULL,
  `application_date` date NOT NULL,
  `date_of_issue` date NOT NULL,
  `date_of_leaving` date NOT NULL,
  `tc_num` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `leaving_time_class` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `qualified_to_promote` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `paid_fee_status` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `character` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `join_time_class` text COLLATE utf8mb4_unicode_ci,
  `birth_place` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `dob_certificate` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `school_category` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `promoted_class` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `fee_concession_detail` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `exam_fail_status` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `subject_studies` text COLLATE utf8mb4_unicode_ci,
  `last_taken_exam_with_result` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `cadet_detail` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `reason_to_leave` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `total_attendance` int(11) DEFAULT NULL,
  `school_college_open_total` int(11) DEFAULT NULL,
  `extra_activity_detail` text COLLATE utf8mb4_unicode_ci,
  `any_other_remark` text COLLATE utf8mb4_unicode_ci,
  `ref_text` text COLLATE utf8mb4_unicode_ci,
  `status` tinyint(1) NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `transport_histories`
--

CREATE TABLE `transport_histories` (
  `id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `created_by` int(10) UNSIGNED NOT NULL,
  `last_updated_by` int(10) UNSIGNED DEFAULT NULL,
  `years_id` int(10) UNSIGNED NOT NULL,
  `routes_id` int(10) UNSIGNED DEFAULT NULL,
  `vehicles_id` int(10) UNSIGNED DEFAULT NULL,
  `travellers_id` int(10) UNSIGNED NOT NULL,
  `history_type` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `transport_users`
--

CREATE TABLE `transport_users` (
  `id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `created_by` int(10) UNSIGNED NOT NULL,
  `last_updated_by` int(10) UNSIGNED DEFAULT NULL,
  `routes_id` int(10) UNSIGNED DEFAULT NULL,
  `vehicles_id` int(10) UNSIGNED DEFAULT NULL,
  `user_type` int(10) UNSIGNED NOT NULL,
  `member_id` int(10) UNSIGNED NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `last_login_at` timestamp NULL DEFAULT NULL,
  `last_login_ip` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `contact_number` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `address` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `profile_image` text COLLATE utf8mb4_unicode_ci,
  `role_id` int(10) UNSIGNED DEFAULT NULL,
  `hook_id` int(10) UNSIGNED DEFAULT NULL,
  `status` tinyint(1) NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `password`, `remember_token`, `last_login_at`, `last_login_ip`, `created_at`, `updated_at`, `contact_number`, `address`, `profile_image`, `role_id`, `hook_id`, `status`) VALUES
(1, 'Super Admin', 'fkhalid42@gmail.com', '$2y$10$tSkth7IXul9hG1DPhvfOVeakNIezqRyZouDUsGEJo/NlPasg5MrbK', NULL, '2021-12-12 20:18:07', '103.47.57.86', NULL, '2021-12-12 20:18:07', NULL, NULL, NULL, NULL, NULL, 1);

-- --------------------------------------------------------

--
-- Table structure for table `vehicles`
--

CREATE TABLE `vehicles` (
  `id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `created_by` int(10) UNSIGNED NOT NULL,
  `last_updated_by` int(10) UNSIGNED DEFAULT NULL,
  `number` varchar(25) COLLATE utf8mb4_unicode_ci NOT NULL,
  `type` varchar(25) COLLATE utf8mb4_unicode_ci NOT NULL,
  `model` varchar(25) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci,
  `status` tinyint(1) NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `vehicle_staffs`
--

CREATE TABLE `vehicle_staffs` (
  `id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `vehicles_id` int(10) UNSIGNED NOT NULL,
  `staffs_id` int(10) UNSIGNED NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `vendors`
--

CREATE TABLE `vendors` (
  `id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `created_by` int(10) UNSIGNED NOT NULL,
  `last_updated_by` int(10) UNSIGNED DEFAULT NULL,
  `reg_no` varchar(15) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `name` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `address` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `tel` varchar(15) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `mobile_1` varchar(10) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `mobile_2` varchar(10) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `extra_info` text COLLATE utf8mb4_unicode_ci,
  `vendor_image` text COLLATE utf8mb4_unicode_ci,
  `status` tinyint(1) NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `visitor_logs`
--

CREATE TABLE `visitor_logs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `created_by` int(10) UNSIGNED NOT NULL,
  `last_updated_by` int(10) UNSIGNED DEFAULT NULL,
  `date` datetime NOT NULL,
  `purpose` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `id_doc` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `id_num` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `in_time` time NOT NULL,
  `out_time` time DEFAULT NULL,
  `token` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `note` text COLLATE utf8mb4_unicode_ci,
  `attachment` text COLLATE utf8mb4_unicode_ci,
  `status` tinyint(1) NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `visitor_purposes`
--

CREATE TABLE `visitor_purposes` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `created_by` int(10) UNSIGNED NOT NULL,
  `last_updated_by` int(10) UNSIGNED DEFAULT NULL,
  `title` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `web_about_us_settings`
--

CREATE TABLE `web_about_us_settings` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `created_by` int(10) UNSIGNED NOT NULL,
  `last_updated_by` int(10) UNSIGNED DEFAULT NULL,
  `title` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slogan` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` longtext COLLATE utf8mb4_unicode_ci,
  `image` text COLLATE utf8mb4_unicode_ci,
  `staffs_status` tinyint(1) NOT NULL DEFAULT '0',
  `staffs_title` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `counter_status` tinyint(1) NOT NULL DEFAULT '0',
  `counter_title` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` tinyint(1) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `web_blogs`
--

CREATE TABLE `web_blogs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `created_by` int(10) UNSIGNED NOT NULL,
  `last_updated_by` int(10) UNSIGNED DEFAULT NULL,
  `category_id` int(10) UNSIGNED NOT NULL,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `short_desc` text COLLATE utf8mb4_unicode_ci,
  `detail_desc` text COLLATE utf8mb4_unicode_ci,
  `publish_date` datetime DEFAULT NULL,
  `image` text COLLATE utf8mb4_unicode_ci,
  `seo_title` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `seo_keywords` text COLLATE utf8mb4_unicode_ci,
  `seo_description` text COLLATE utf8mb4_unicode_ci,
  `view_count` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `status` tinyint(1) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `web_blog_categories`
--

CREATE TABLE `web_blog_categories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `created_by` int(10) UNSIGNED NOT NULL,
  `last_updated_by` int(10) UNSIGNED DEFAULT NULL,
  `parent_id` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `title` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci,
  `image` text COLLATE utf8mb4_unicode_ci,
  `status` tinyint(1) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `web_client_awards`
--

CREATE TABLE `web_client_awards` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `created_by` int(10) UNSIGNED NOT NULL,
  `last_updated_by` int(10) UNSIGNED DEFAULT NULL,
  `title` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `image_name` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `link` text COLLATE utf8mb4_unicode_ci,
  `rank` smallint(6) NOT NULL DEFAULT '0',
  `status` tinyint(1) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `web_contact_lists`
--

CREATE TABLE `web_contact_lists` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `first_name` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `last_name` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `address` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `phone` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `message` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `view_status` tinyint(1) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `web_contact_us_settings`
--

CREATE TABLE `web_contact_us_settings` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `created_by` int(10) UNSIGNED NOT NULL,
  `last_updated_by` int(10) UNSIGNED DEFAULT NULL,
  `contact_title` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `company` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `address` text COLLATE utf8mb4_unicode_ci,
  `phone` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `fax` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `webURL` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `google_map` text COLLATE utf8mb4_unicode_ci,
  `latitude` text COLLATE utf8mb4_unicode_ci,
  `longitude` text COLLATE utf8mb4_unicode_ci,
  `facebook_link` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `twitter_link` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `googlePlus_link` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `linkedIn_link` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `instagram_link` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `whatsApp_link` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `skype_link` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `pinterest_link` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `web_counters`
--

CREATE TABLE `web_counters` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `created_by` int(10) UNSIGNED NOT NULL,
  `last_updated_by` int(10) UNSIGNED DEFAULT NULL,
  `title` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `icon` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `counter` smallint(6) NOT NULL DEFAULT '0',
  `type` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `rank` smallint(6) NOT NULL DEFAULT '0',
  `status` tinyint(1) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `web_downloads`
--

CREATE TABLE `web_downloads` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `created_by` int(10) UNSIGNED NOT NULL,
  `last_updated_by` int(10) UNSIGNED DEFAULT NULL,
  `title` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci,
  `file` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `web_events`
--

CREATE TABLE `web_events` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `created_by` int(10) UNSIGNED NOT NULL,
  `last_updated_by` int(10) UNSIGNED DEFAULT NULL,
  `title` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci,
  `image` text COLLATE utf8mb4_unicode_ci,
  `event_date` datetime DEFAULT NULL,
  `event_time` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `event_place` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `seo_title` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `seo_keywords` text COLLATE utf8mb4_unicode_ci,
  `seo_description` text COLLATE utf8mb4_unicode_ci,
  `view_count` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `status` tinyint(1) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `web_faqs`
--

CREATE TABLE `web_faqs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `created_by` int(10) UNSIGNED NOT NULL,
  `last_updated_by` int(10) UNSIGNED DEFAULT NULL,
  `question` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `answer` text COLLATE utf8mb4_unicode_ci,
  `rank` smallint(6) NOT NULL DEFAULT '0',
  `status` tinyint(1) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `web_galleries`
--

CREATE TABLE `web_galleries` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `created_by` int(10) UNSIGNED NOT NULL,
  `last_updated_by` int(10) UNSIGNED DEFAULT NULL,
  `title` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci,
  `image_name` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `rank` smallint(6) NOT NULL DEFAULT '0',
  `view_count` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `status` tinyint(1) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `web_gallery_images`
--

CREATE TABLE `web_gallery_images` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `created_by` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `gallery_id` int(10) UNSIGNED NOT NULL,
  `caption` text COLLATE utf8mb4_unicode_ci,
  `alt_text` text COLLATE utf8mb4_unicode_ci,
  `image` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `rank` tinyint(4) NOT NULL DEFAULT '0',
  `status` tinyint(1) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `web_general_settings`
--

CREATE TABLE `web_general_settings` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `created_by` int(10) UNSIGNED NOT NULL,
  `last_updated_by` int(10) UNSIGNED DEFAULT NULL,
  `site_title` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `site_slogan` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `site_desc` longtext COLLATE utf8mb4_unicode_ci,
  `site_keyword` longtext COLLATE utf8mb4_unicode_ci,
  `favicon` text COLLATE utf8mb4_unicode_ci,
  `site_logo` text COLLATE utf8mb4_unicode_ci,
  `page_banner` text COLLATE utf8mb4_unicode_ci,
  `top_nav_status` tinyint(1) NOT NULL DEFAULT '0',
  `top_nav_text` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `top_nav_text_link` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `main_nav_status` tinyint(1) NOT NULL DEFAULT '0',
  `main_nav_button_status` tinyint(1) NOT NULL DEFAULT '0',
  `main_nav_button_button_text` varchar(15) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `main_nav_button_link` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `sticky_nav_status` tinyint(1) NOT NULL DEFAULT '0',
  `footer_status` tinyint(1) NOT NULL DEFAULT '0',
  `quick_nav_status` tinyint(1) NOT NULL DEFAULT '0',
  `footer_nav_status` tinyint(1) NOT NULL DEFAULT '0',
  `header_codes` text COLLATE utf8mb4_unicode_ci,
  `footer_codes` text COLLATE utf8mb4_unicode_ci,
  `post_detail_foot` text COLLATE utf8mb4_unicode_ci,
  `custom_css` text COLLATE utf8mb4_unicode_ci,
  `analytics_view_id` text COLLATE utf8mb4_unicode_ci,
  `analytics_json_file` text COLLATE utf8mb4_unicode_ci,
  `recaptcha_site_key` text COLLATE utf8mb4_unicode_ci,
  `recaptcha_secret_key` text COLLATE utf8mb4_unicode_ci,
  `facebook_widget` text COLLATE utf8mb4_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `web_home_settings`
--

CREATE TABLE `web_home_settings` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `created_by` int(10) UNSIGNED NOT NULL,
  `last_updated_by` int(10) UNSIGNED DEFAULT NULL,
  `slider_status` tinyint(1) NOT NULL DEFAULT '0',
  `slider_caption_status` tinyint(1) NOT NULL DEFAULT '0',
  `slider_call_to_action_status` tinyint(1) NOT NULL DEFAULT '0',
  `slider_call_to_action_title` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `slider_call_to_action_link` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `notice_status` tinyint(1) NOT NULL DEFAULT '0',
  `notice_title` varchar(15) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `blog_status` tinyint(1) NOT NULL DEFAULT '0',
  `blog_title` varchar(15) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `event_status` tinyint(1) NOT NULL DEFAULT '0',
  `event_title` varchar(15) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `welcome_status` tinyint(1) NOT NULL DEFAULT '0',
  `welcome_title` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `welcome_sub_title` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `welcome_description` text COLLATE utf8mb4_unicode_ci,
  `welcome_image` text COLLATE utf8mb4_unicode_ci,
  `welcome_button_text` varchar(15) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `welcome_link` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `introduction_status` tinyint(1) NOT NULL DEFAULT '0',
  `introduction_title` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `introduction_description` text COLLATE utf8mb4_unicode_ci,
  `introduction_button_text` varchar(15) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `introduction_link` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `services_status` tinyint(1) NOT NULL DEFAULT '0',
  `services_title` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `counter_title` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `counter_status` tinyint(1) NOT NULL DEFAULT '0',
  `staff_title` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `staff_status` tinyint(1) NOT NULL DEFAULT '0',
  `testimonial_title` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `testimonial_status` tinyint(1) NOT NULL DEFAULT '0',
  `client_title` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `client_status` tinyint(1) NOT NULL DEFAULT '0',
  `email_call_to_action_status` tinyint(1) NOT NULL DEFAULT '0',
  `email_call_to_action_title` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email_call_to_action_button_text` varchar(15) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email_call_to_action_link` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `web_menus`
--

CREATE TABLE `web_menus` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `created_by` int(10) UNSIGNED NOT NULL,
  `last_updated_by` int(10) UNSIGNED DEFAULT NULL,
  `title` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `rank` tinyint(4) NOT NULL DEFAULT '0',
  `status` tinyint(1) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `web_menus`
--

INSERT INTO `web_menus` (`id`, `created_at`, `updated_at`, `created_by`, `last_updated_by`, `title`, `slug`, `rank`, `status`) VALUES
(1, '2021-06-30 05:36:21', '2021-06-30 05:36:21', 1, NULL, 'WELCOME PAGE', 'welcome_menu', 1, 1),
(2, '2021-06-30 05:36:21', '2021-06-30 05:36:21', 1, NULL, 'TOP NAV', 'top_menu', 10, 1),
(3, '2021-06-30 05:36:21', '2021-06-30 05:36:21', 1, NULL, 'MAIN NAVIGATION', 'main_navigation_menu', 20, 1),
(4, '2021-06-30 05:36:21', '2021-06-30 05:36:21', 1, NULL, 'STICKY NAVIGATION', 'sticky_navigation_menu', 30, 1),
(5, '2021-06-30 05:36:21', '2021-06-30 05:36:21', 1, NULL, 'USEFUL LINKS', 'useful_links', 40, 1),
(6, '2021-06-30 05:36:22', '2021-06-30 05:36:22', 1, NULL, 'FOOTER', 'footer_menu', 50, 1);

-- --------------------------------------------------------

--
-- Table structure for table `web_menu_web_page`
--

CREATE TABLE `web_menu_web_page` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `web_menu_id` int(10) UNSIGNED NOT NULL,
  `web_page_id` int(10) UNSIGNED NOT NULL,
  `rank` tinyint(4) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `web_notices`
--

CREATE TABLE `web_notices` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `created_by` int(10) UNSIGNED NOT NULL,
  `last_updated_by` int(10) UNSIGNED DEFAULT NULL,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci,
  `publish_date` datetime DEFAULT NULL,
  `image` text COLLATE utf8mb4_unicode_ci,
  `file` text COLLATE utf8mb4_unicode_ci,
  `seo_title` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `seo_keywords` text COLLATE utf8mb4_unicode_ci,
  `seo_description` text COLLATE utf8mb4_unicode_ci,
  `view_count` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `status` tinyint(1) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `web_pages`
--

CREATE TABLE `web_pages` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `created_by` int(10) UNSIGNED NOT NULL,
  `last_updated_by` int(10) UNSIGNED DEFAULT NULL,
  `parent_id` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `title` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `page_type` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `link` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image` text COLLATE utf8mb4_unicode_ci,
  `short_desc` text COLLATE utf8mb4_unicode_ci,
  `detail_desc` longtext COLLATE utf8mb4_unicode_ci,
  `seo_title` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `seo_keywords` text COLLATE utf8mb4_unicode_ci,
  `seo_description` text COLLATE utf8mb4_unicode_ci,
  `view_count` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `status` tinyint(1) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `web_pages`
--

INSERT INTO `web_pages` (`id`, `created_at`, `updated_at`, `created_by`, `last_updated_by`, `parent_id`, `title`, `slug`, `page_type`, `link`, `image`, `short_desc`, `detail_desc`, `seo_title`, `seo_keywords`, `seo_description`, `view_count`, `status`) VALUES
(1, '2021-06-30 05:36:22', '2021-06-30 05:36:22', 1, NULL, 0, 'About Us', 'about-us', 'predefine-link', 'about-us', NULL, NULL, NULL, NULL, NULL, NULL, 0, 1),
(2, '2021-06-30 05:36:23', '2021-06-30 05:36:23', 1, NULL, 0, 'Blog', 'blog', 'predefine-link', 'blog', NULL, NULL, NULL, NULL, NULL, NULL, 0, 1),
(3, '2021-06-30 05:36:24', '2021-06-30 05:36:24', 1, NULL, 0, 'Category', 'category', 'predefine-link', 'category', NULL, NULL, NULL, NULL, NULL, NULL, 0, 1),
(4, '2021-06-30 05:36:24', '2021-06-30 05:36:24', 1, NULL, 0, 'Contact Us', 'contact-us', 'predefine-link', 'contact-us', NULL, NULL, NULL, NULL, NULL, NULL, 0, 1),
(5, '2021-06-30 05:36:25', '2021-06-30 05:36:25', 1, NULL, 0, 'Download', 'downloads', 'predefine-link', 'download', NULL, NULL, NULL, NULL, NULL, NULL, 0, 1),
(6, '2021-06-30 05:36:25', '2021-06-30 05:36:25', 1, NULL, 0, 'Events', 'events', 'predefine-link', 'events', NULL, NULL, NULL, NULL, NULL, NULL, 0, 1),
(7, '2021-06-30 05:36:25', '2021-06-30 05:36:25', 1, NULL, 0, 'Services', 'services', 'predefine-link', 'services', NULL, NULL, NULL, NULL, NULL, NULL, 0, 1),
(8, '2021-06-30 05:36:26', '2021-06-30 05:36:26', 1, NULL, 0, 'FAQ', 'faqs', 'predefine-link', 'faqs', NULL, NULL, NULL, NULL, NULL, NULL, 0, 1),
(9, '2021-06-30 05:36:26', '2021-06-30 05:36:26', 1, NULL, 0, 'Gallery', 'gallery', 'predefine-link', 'gallery', NULL, NULL, NULL, NULL, NULL, NULL, 0, 1),
(10, '2021-06-30 05:36:26', '2021-06-30 05:36:26', 1, NULL, 0, 'Home', '', 'predefine-link', '', NULL, NULL, NULL, NULL, NULL, NULL, 0, 1),
(11, '2021-06-30 05:36:27', '2021-06-30 05:36:27', 1, NULL, 0, 'Notice', 'public-notice', 'predefine-link', 'notice', NULL, NULL, NULL, NULL, NULL, NULL, 0, 1),
(12, '2021-06-30 05:36:27', '2021-06-30 05:36:27', 1, NULL, 0, 'Online Registration', 'online-registration', 'predefine-link', 'online-registration', NULL, NULL, NULL, NULL, NULL, NULL, 0, 1),
(13, '2021-06-30 05:36:27', '2021-06-30 05:36:27', 1, NULL, 0, 'Pricing', 'pricing', 'predefine-link', 'pricing', NULL, NULL, NULL, NULL, NULL, NULL, 0, 1),
(14, '2021-06-30 05:36:28', '2021-06-30 05:36:28', 1, NULL, 0, 'Staff', 'staffs', 'predefine-link', 'staff', NULL, NULL, NULL, NULL, NULL, NULL, 0, 1),
(15, '2021-06-30 05:36:28', '2021-06-30 05:36:28', 1, NULL, 0, 'Certificate Verification', 'certificate-verification', 'predefine-link', 'certificate-verification', NULL, NULL, NULL, NULL, NULL, NULL, 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `web_pricings`
--

CREATE TABLE `web_pricings` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `created_by` int(10) UNSIGNED NOT NULL,
  `last_updated_by` int(10) UNSIGNED DEFAULT NULL,
  `title` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `old_price` double(10,2) DEFAULT NULL,
  `new_price` double(10,2) DEFAULT NULL,
  `per_term` varchar(25) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` text COLLATE utf8mb4_unicode_ci,
  `image` text COLLATE utf8mb4_unicode_ci,
  `tag` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `tag_color` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `button_text` text COLLATE utf8mb4_unicode_ci,
  `link` text COLLATE utf8mb4_unicode_ci,
  `open_in` varchar(25) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `rank` smallint(6) NOT NULL DEFAULT '0',
  `status` tinyint(1) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `web_registrations`
--

CREATE TABLE `web_registrations` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `created_by` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `last_updated_by` int(10) UNSIGNED DEFAULT NULL,
  `web_registration_programmes_id` int(10) UNSIGNED NOT NULL,
  `reg_no` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `reg_date` date NOT NULL,
  `name` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `sex` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL,
  `date_of_birth` date NOT NULL,
  `religion` varchar(25) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `caste` varchar(25) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `nationality` varchar(25) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `state` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `mother_tongue` varchar(25) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `blood_group` varchar(5) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `medicine_info` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `disease_info` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `guardian_name` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `guardian_relation` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `guardian_occupation` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `guardian_annual_income` int(11) DEFAULT NULL,
  `address` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `tel` varchar(15) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `cell_1` varchar(15) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `cell_2` varchar(15) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `mailing_address` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `mailing_tel` varchar(15) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `mailing_cell_1` varchar(15) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `mailing_cell_2` varchar(15) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `mailing_email` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `student_image` text COLLATE utf8mb4_unicode_ci,
  `student_signature` text COLLATE utf8mb4_unicode_ci,
  `guardian_signature` text COLLATE utf8mb4_unicode_ci,
  `status` tinyint(1) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `web_registration_academic_qualifications`
--

CREATE TABLE `web_registration_academic_qualifications` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `web_registrations_id` int(10) UNSIGNED NOT NULL,
  `examination` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `institution` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `board_university` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `year_of_pass` varchar(4) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `percentage_grade` varchar(25) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` tinyint(1) NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `web_registration_programmes`
--

CREATE TABLE `web_registration_programmes` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `created_by` int(10) UNSIGNED NOT NULL,
  `last_updated_by` int(10) UNSIGNED DEFAULT NULL,
  `title` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `web_registration_settings`
--

CREATE TABLE `web_registration_settings` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `created_by` int(10) UNSIGNED NOT NULL,
  `last_updated_by` int(10) UNSIGNED DEFAULT NULL,
  `status` tinyint(1) NOT NULL DEFAULT '0',
  `start_date` date DEFAULT NULL,
  `end_date` date DEFAULT NULL,
  `title` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `sub_title` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `logo` text COLLATE utf8mb4_unicode_ci,
  `medical_info_status` tinyint(1) NOT NULL DEFAULT '0',
  `guardian_detail_status` tinyint(1) NOT NULL DEFAULT '0',
  `permanent_address_status` tinyint(1) NOT NULL DEFAULT '0',
  `mailing_address_status` tinyint(1) NOT NULL DEFAULT '0',
  `photo_status` tinyint(1) NOT NULL DEFAULT '0',
  `applicant_photo_status` tinyint(1) NOT NULL DEFAULT '0',
  `applicant_signature_status` tinyint(1) NOT NULL DEFAULT '0',
  `guardian_photo_status` tinyint(1) NOT NULL DEFAULT '0',
  `qualification` tinyint(1) NOT NULL DEFAULT '0',
  `experience` tinyint(1) NOT NULL DEFAULT '0',
  `rules_status` tinyint(1) NOT NULL DEFAULT '0',
  `rules` longtext COLLATE utf8mb4_unicode_ci,
  `agreement_status` tinyint(1) NOT NULL DEFAULT '0',
  `agreement` longtext COLLATE utf8mb4_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `web_registration_work_experiences`
--

CREATE TABLE `web_registration_work_experiences` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `web_registrations_id` int(10) UNSIGNED NOT NULL,
  `experience_info` text COLLATE utf8mb4_unicode_ci,
  `status` tinyint(1) NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `web_services`
--

CREATE TABLE `web_services` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `created_by` int(10) UNSIGNED NOT NULL,
  `last_updated_by` int(10) UNSIGNED DEFAULT NULL,
  `title` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `sub_title` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci,
  `image` text COLLATE utf8mb4_unicode_ci,
  `video` text COLLATE utf8mb4_unicode_ci,
  `button_text` text COLLATE utf8mb4_unicode_ci,
  `link` text COLLATE utf8mb4_unicode_ci,
  `open_in` varchar(25) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `rank` smallint(6) NOT NULL DEFAULT '0',
  `status` tinyint(1) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `web_sliders`
--

CREATE TABLE `web_sliders` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `created_by` int(10) UNSIGNED NOT NULL,
  `last_updated_by` int(10) UNSIGNED DEFAULT NULL,
  `title` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci,
  `image_name` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `button_text` text COLLATE utf8mb4_unicode_ci,
  `link` text COLLATE utf8mb4_unicode_ci,
  `open_in` varchar(25) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `rank` smallint(6) NOT NULL DEFAULT '0',
  `status` tinyint(1) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `web_staff`
--

CREATE TABLE `web_staff` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `created_by` int(10) UNSIGNED NOT NULL,
  `last_updated_by` int(10) UNSIGNED DEFAULT NULL,
  `slug` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'name of the staff',
  `position` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `address` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `tel` varchar(15) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `cell_1` varchar(15) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `cell_2` varchar(15) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` text COLLATE utf8mb4_unicode_ci,
  `profile_image` text COLLATE utf8mb4_unicode_ci,
  `twitter_url` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `linkedIn_url` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `facebook_url` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `instagram_url` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `whatsapp_url` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `skype_url` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `pinterest_url` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `rank` smallint(6) NOT NULL DEFAULT '0',
  `status` tinyint(1) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `web_subscribers`
--

CREATE TABLE `web_subscribers` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `name` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `status` tinyint(1) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `web_testimonials`
--

CREATE TABLE `web_testimonials` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `created_by` int(10) UNSIGNED NOT NULL,
  `last_updated_by` int(10) UNSIGNED DEFAULT NULL,
  `name` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'name of the testimonial giver',
  `comment` text COLLATE utf8mb4_unicode_ci,
  `address` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `profile_image` text COLLATE utf8mb4_unicode_ci,
  `office` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `position` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `link` text COLLATE utf8mb4_unicode_ci,
  `email` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` tinyint(1) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `years`
--

CREATE TABLE `years` (
  `id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `created_by` int(10) UNSIGNED NOT NULL,
  `last_updated_by` int(10) UNSIGNED DEFAULT NULL,
  `title` varchar(4) COLLATE utf8mb4_unicode_ci NOT NULL,
  `active_status` tinyint(1) NOT NULL DEFAULT '0',
  `status` tinyint(1) NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `years`
--

INSERT INTO `years` (`id`, `created_at`, `updated_at`, `created_by`, `last_updated_by`, `title`, `active_status`, `status`) VALUES
(1, '2021-06-30 05:33:55', '2021-06-30 05:33:55', 1, NULL, '2018', 0, 0),
(2, '2021-06-30 05:33:55', '2021-06-30 05:33:55', 1, NULL, '2019', 0, 0),
(3, '2021-06-30 05:33:55', '2021-06-30 05:33:55', 1, NULL, '2020', 0, 0),
(4, '2021-06-30 05:33:55', '2021-06-30 05:33:55', 1, NULL, '2021', 1, 1);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `academic_infos`
--
ALTER TABLE `academic_infos`
  ADD PRIMARY KEY (`id`),
  ADD KEY `academic_infos_students_id_foreign` (`students_id`);

--
-- Indexes for table `account_categories`
--
ALTER TABLE `account_categories`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `account_categories_ac_name_unique` (`ac_name`);

--
-- Indexes for table `addressinfos`
--
ALTER TABLE `addressinfos`
  ADD PRIMARY KEY (`id`),
  ADD KEY `addressinfos_students_id_foreign` (`students_id`);

--
-- Indexes for table `alert_settings`
--
ALTER TABLE `alert_settings`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `assets`
--
ALTER TABLE `assets`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `assets_title_unique` (`title`);

--
-- Indexes for table `assignments`
--
ALTER TABLE `assignments`
  ADD PRIMARY KEY (`id`),
  ADD KEY `assignments_years_id_foreign` (`years_id`),
  ADD KEY `assignments_semesters_id_foreign` (`semesters_id`),
  ADD KEY `assignments_subjects_id_foreign` (`subjects_id`);

--
-- Indexes for table `assignment_answers`
--
ALTER TABLE `assignment_answers`
  ADD PRIMARY KEY (`id`),
  ADD KEY `assignment_answers_assignments_id_foreign` (`assignments_id`),
  ADD KEY `assignment_answers_students_id_foreign` (`students_id`);

--
-- Indexes for table `attendances`
--
ALTER TABLE `attendances`
  ADD PRIMARY KEY (`id`),
  ADD KEY `attendances_years_id_foreign` (`years_id`),
  ADD KEY `attendances_months_id_foreign` (`months_id`);

--
-- Indexes for table `attendance_certificates`
--
ALTER TABLE `attendance_certificates`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `attendance_certificates_students_id_unique` (`students_id`);

--
-- Indexes for table `attendance_masters`
--
ALTER TABLE `attendance_masters`
  ADD PRIMARY KEY (`id`),
  ADD KEY `attendance_masters_year_foreign` (`year`),
  ADD KEY `attendance_masters_month_foreign` (`month`);

--
-- Indexes for table `attendance_statuses`
--
ALTER TABLE `attendance_statuses`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `attendance_statuses_title_unique` (`title`);

--
-- Indexes for table `audits`
--
ALTER TABLE `audits`
  ADD PRIMARY KEY (`id`),
  ADD KEY `audits_auditable_type_auditable_id_index` (`auditable_type`,`auditable_id`),
  ADD KEY `audits_user_id_user_type_index` (`user_id`,`user_type`);

--
-- Indexes for table `banks`
--
ALTER TABLE `banks`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `bank_transactions`
--
ALTER TABLE `bank_transactions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `bank_transactions_banks_id_foreign` (`banks_id`);

--
-- Indexes for table `beds`
--
ALTER TABLE `beds`
  ADD PRIMARY KEY (`id`),
  ADD KEY `beds_hostels_id_foreign` (`hostels_id`),
  ADD KEY `beds_rooms_id_foreign` (`rooms_id`),
  ADD KEY `beds_bed_status_foreign` (`bed_status`);

--
-- Indexes for table `bed_statuses`
--
ALTER TABLE `bed_statuses`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `bed_statuses_title_unique` (`title`);

--
-- Indexes for table `bonafide_certificates`
--
ALTER TABLE `bonafide_certificates`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `bonafide_certificates_students_id_unique` (`students_id`);

--
-- Indexes for table `books`
--
ALTER TABLE `books`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `books_book_code_unique` (`book_code`),
  ADD KEY `books_book_masters_id_foreign` (`book_masters_id`),
  ADD KEY `books_book_status_foreign` (`book_status`);

--
-- Indexes for table `book_categories`
--
ALTER TABLE `book_categories`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `book_categories_title_unique` (`title`),
  ADD UNIQUE KEY `book_categories_slug_unique` (`slug`);

--
-- Indexes for table `book_issues`
--
ALTER TABLE `book_issues`
  ADD PRIMARY KEY (`id`),
  ADD KEY `book_issues_book_id_foreign` (`book_id`);

--
-- Indexes for table `book_masters`
--
ALTER TABLE `book_masters`
  ADD PRIMARY KEY (`id`),
  ADD KEY `book_masters_categories_foreign` (`categories`);

--
-- Indexes for table `book_requests`
--
ALTER TABLE `book_requests`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `book_statuses`
--
ALTER TABLE `book_statuses`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `book_statuses_title_unique` (`title`);

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `categories_title_unique` (`title`);

--
-- Indexes for table `certificate_histories`
--
ALTER TABLE `certificate_histories`
  ADD PRIMARY KEY (`id`),
  ADD KEY `certificate_histories_students_id_foreign` (`students_id`);

--
-- Indexes for table `certificate_templates`
--
ALTER TABLE `certificate_templates`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `character_certificates`
--
ALTER TABLE `character_certificates`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `character_certificates_students_id_unique` (`students_id`),
  ADD UNIQUE KEY `character_certificates_cc_num_unique` (`cc_num`);

--
-- Indexes for table `contact_directory_details`
--
ALTER TABLE `contact_directory_details`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `contact_directory_groups`
--
ALTER TABLE `contact_directory_groups`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `contact_mesages`
--
ALTER TABLE `contact_mesages`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `course_completion_certificates`
--
ALTER TABLE `course_completion_certificates`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `course_completion_certificates_students_id_unique` (`students_id`);

--
-- Indexes for table `customers`
--
ALTER TABLE `customers`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `customers_reg_no_unique` (`reg_no`);

--
-- Indexes for table `customer_statuses`
--
ALTER TABLE `customer_statuses`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `customer_statuses_title_unique` (`title`);

--
-- Indexes for table `days`
--
ALTER TABLE `days`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `days_title_unique` (`title`);

--
-- Indexes for table `documents`
--
ALTER TABLE `documents`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `downloads`
--
ALTER TABLE `downloads`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `eating_times`
--
ALTER TABLE `eating_times`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `eating_times_title_unique` (`title`);

--
-- Indexes for table `email_settings`
--
ALTER TABLE `email_settings`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `exams`
--
ALTER TABLE `exams`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `exams_title_unique` (`title`);

--
-- Indexes for table `exam_mark_ledgers`
--
ALTER TABLE `exam_mark_ledgers`
  ADD PRIMARY KEY (`id`),
  ADD KEY `exam_mark_ledgers_students_id_foreign` (`students_id`);

--
-- Indexes for table `exam_schedules`
--
ALTER TABLE `exam_schedules`
  ADD PRIMARY KEY (`id`),
  ADD KEY `exam_schedules_years_id_foreign` (`years_id`),
  ADD KEY `exam_schedules_months_id_foreign` (`months_id`),
  ADD KEY `exam_schedules_exams_id_foreign` (`exams_id`),
  ADD KEY `exam_schedules_faculty_id_foreign` (`faculty_id`),
  ADD KEY `exam_schedules_semesters_id_foreign` (`semesters_id`),
  ADD KEY `exam_schedules_subjects_id_foreign` (`subjects_id`);

--
-- Indexes for table `faculties`
--
ALTER TABLE `faculties`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `faculties_faculty_unique` (`faculty`),
  ADD UNIQUE KEY `faculties_faculty_code_unique` (`faculty_code`);

--
-- Indexes for table `faculty_semester`
--
ALTER TABLE `faculty_semester`
  ADD PRIMARY KEY (`id`),
  ADD KEY `faculty_semester_faculty_id_foreign` (`faculty_id`),
  ADD KEY `faculty_semester_semester_id_foreign` (`semester_id`);

--
-- Indexes for table `fee_collections`
--
ALTER TABLE `fee_collections`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fee_collections_students_id_foreign` (`students_id`),
  ADD KEY `fee_collections_fee_masters_id_foreign` (`fee_masters_id`);

--
-- Indexes for table `fee_heads`
--
ALTER TABLE `fee_heads`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `fee_heads_fee_head_title_unique` (`fee_head_title`);

--
-- Indexes for table `fee_masters`
--
ALTER TABLE `fee_masters`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fee_masters_students_id_foreign` (`students_id`);

--
-- Indexes for table `food_categories`
--
ALTER TABLE `food_categories`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `food_categories_title_unique` (`title`);

--
-- Indexes for table `food_items`
--
ALTER TABLE `food_items`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `food_items_title_unique` (`title`);

--
-- Indexes for table `food_item_food_schedule`
--
ALTER TABLE `food_item_food_schedule`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `food_schedules`
--
ALTER TABLE `food_schedules`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `general_settings`
--
ALTER TABLE `general_settings`
  ADD PRIMARY KEY (`id`),
  ADD KEY `general_settings_time_zones_id_foreign` (`time_zones_id`);

--
-- Indexes for table `grading_scales`
--
ALTER TABLE `grading_scales`
  ADD PRIMARY KEY (`id`),
  ADD KEY `grading_scales_gradingtype_id_foreign` (`gradingType_id`);

--
-- Indexes for table `grading_types`
--
ALTER TABLE `grading_types`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `grading_types_title_unique` (`title`),
  ADD UNIQUE KEY `grading_types_slug_unique` (`slug`);

--
-- Indexes for table `guardian_details`
--
ALTER TABLE `guardian_details`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `hostels`
--
ALTER TABLE `hostels`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `hostels_name_unique` (`name`);

--
-- Indexes for table `hostel_meals`
--
ALTER TABLE `hostel_meals`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `institutions`
--
ALTER TABLE `institutions`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `jobs`
--
ALTER TABLE `jobs`
  ADD PRIMARY KEY (`id`),
  ADD KEY `jobs_queue_index` (`queue`);

--
-- Indexes for table `library_circulations`
--
ALTER TABLE `library_circulations`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `library_circulations_user_type_unique` (`user_type`),
  ADD UNIQUE KEY `library_circulations_slug_unique` (`slug`),
  ADD UNIQUE KEY `library_circulations_code_prefix_unique` (`code_prefix`);

--
-- Indexes for table `library_members`
--
ALTER TABLE `library_members`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `mcq_answer_sheets`
--
ALTER TABLE `mcq_answer_sheets`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `mcq_exams`
--
ALTER TABLE `mcq_exams`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `mcq_exam_participants`
--
ALTER TABLE `mcq_exam_participants`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `mcq_exam_questions`
--
ALTER TABLE `mcq_exam_questions`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `mcq_instructions`
--
ALTER TABLE `mcq_instructions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `mcq_instructions_title_unique` (`title`);

--
-- Indexes for table `mcq_questions`
--
ALTER TABLE `mcq_questions`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `mcq_question_groups`
--
ALTER TABLE `mcq_question_groups`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `mcq_question_groups_title_unique` (`title`);

--
-- Indexes for table `mcq_question_levels`
--
ALTER TABLE `mcq_question_levels`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `mcq_question_levels_title_unique` (`title`);

--
-- Indexes for table `mcq_question_options`
--
ALTER TABLE `mcq_question_options`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `meetings`
--
ALTER TABLE `meetings`
  ADD PRIMARY KEY (`id`),
  ADD KEY `meetings_semesters_id_foreign` (`semesters_id`),
  ADD KEY `meetings_subjects_id_foreign` (`subjects_id`);

--
-- Indexes for table `meeting_settings`
--
ALTER TABLE `meeting_settings`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `months`
--
ALTER TABLE `months`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `months_title_unique` (`title`);

--
-- Indexes for table `nirgam_utara_certificates`
--
ALTER TABLE `nirgam_utara_certificates`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `nirgam_utara_certificates_students_id_unique` (`students_id`),
  ADD UNIQUE KEY `nirgam_utara_certificates_nu_num_unique` (`nu_num`);

--
-- Indexes for table `notes`
--
ALTER TABLE `notes`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `notices`
--
ALTER TABLE `notices`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `online_payments`
--
ALTER TABLE `online_payments`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `online_registration_programs`
--
ALTER TABLE `online_registration_programs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `online_registration_programs_faculties_id_unique` (`faculties_id`);

--
-- Indexes for table `online_registration_settings`
--
ALTER TABLE `online_registration_settings`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `parent_details`
--
ALTER TABLE `parent_details`
  ADD PRIMARY KEY (`id`),
  ADD KEY `parent_details_students_id_foreign` (`students_id`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indexes for table `payment_methods`
--
ALTER TABLE `payment_methods`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `payment_methods_title_unique` (`title`);

--
-- Indexes for table `payment_settings`
--
ALTER TABLE `payment_settings`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `payroll_heads`
--
ALTER TABLE `payroll_heads`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `payroll_heads_title_unique` (`title`),
  ADD UNIQUE KEY `payroll_heads_slug_unique` (`slug`);

--
-- Indexes for table `payroll_masters`
--
ALTER TABLE `payroll_masters`
  ADD PRIMARY KEY (`id`),
  ADD KEY `payroll_masters_staff_id_foreign` (`staff_id`);

--
-- Indexes for table `permissions`
--
ALTER TABLE `permissions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `permissions_name_unique` (`name`);

--
-- Indexes for table `permission_role`
--
ALTER TABLE `permission_role`
  ADD PRIMARY KEY (`permission_id`,`role_id`),
  ADD KEY `permission_role_role_id_foreign` (`role_id`);

--
-- Indexes for table `postal_exchanges`
--
ALTER TABLE `postal_exchanges`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `postal_exchanges_ref_no_unique` (`ref_no`);

--
-- Indexes for table `postal_exchange_types`
--
ALTER TABLE `postal_exchange_types`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `postal_exchange_types_title_unique` (`title`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `products_code_unique` (`code`);

--
-- Indexes for table `product_prices`
--
ALTER TABLE `product_prices`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `product_prices_products_id_unique` (`products_id`);

--
-- Indexes for table `purchases`
--
ALTER TABLE `purchases`
  ADD PRIMARY KEY (`id`),
  ADD KEY `purchases_vendors_id_foreign` (`vendors_id`);

--
-- Indexes for table `purchase_details`
--
ALTER TABLE `purchase_details`
  ADD PRIMARY KEY (`id`),
  ADD KEY `purchase_details_products_id_foreign` (`products_id`);

--
-- Indexes for table `purchase_returns`
--
ALTER TABLE `purchase_returns`
  ADD PRIMARY KEY (`id`),
  ADD KEY `purchase_returns_vendors_id_foreign` (`vendors_id`),
  ADD KEY `purchase_returns_products_id_foreign` (`products_id`);

--
-- Indexes for table `residents`
--
ALTER TABLE `residents`
  ADD PRIMARY KEY (`id`),
  ADD KEY `residents_hostels_id_foreign` (`hostels_id`),
  ADD KEY `residents_rooms_id_foreign` (`rooms_id`),
  ADD KEY `residents_beds_id_foreign` (`beds_id`);

--
-- Indexes for table `resident_histories`
--
ALTER TABLE `resident_histories`
  ADD PRIMARY KEY (`id`),
  ADD KEY `resident_histories_years_id_foreign` (`years_id`),
  ADD KEY `resident_histories_hostels_id_foreign` (`hostels_id`),
  ADD KEY `resident_histories_rooms_id_foreign` (`rooms_id`),
  ADD KEY `resident_histories_beds_id_foreign` (`beds_id`),
  ADD KEY `resident_histories_residents_id_foreign` (`residents_id`);

--
-- Indexes for table `roles`
--
ALTER TABLE `roles`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `roles_name_unique` (`name`);

--
-- Indexes for table `role_user`
--
ALTER TABLE `role_user`
  ADD PRIMARY KEY (`user_id`,`role_id`),
  ADD KEY `role_user_role_id_foreign` (`role_id`);

--
-- Indexes for table `rooms`
--
ALTER TABLE `rooms`
  ADD PRIMARY KEY (`id`),
  ADD KEY `rooms_hostels_id_foreign` (`hostels_id`),
  ADD KEY `rooms_room_type_foreign` (`room_type`);

--
-- Indexes for table `room_types`
--
ALTER TABLE `room_types`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `room_types_title_unique` (`title`);

--
-- Indexes for table `routes`
--
ALTER TABLE `routes`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `routes_title_unique` (`title`);

--
-- Indexes for table `route_vehicles`
--
ALTER TABLE `route_vehicles`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `salary_pays`
--
ALTER TABLE `salary_pays`
  ADD PRIMARY KEY (`id`),
  ADD KEY `salary_pays_staff_id_foreign` (`staff_id`),
  ADD KEY `salary_pays_salary_masters_id_foreign` (`salary_masters_id`);

--
-- Indexes for table `sales`
--
ALTER TABLE `sales`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sales_details`
--
ALTER TABLE `sales_details`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sales_returns`
--
ALTER TABLE `sales_returns`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `semesters`
--
ALTER TABLE `semesters`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `semesters_semester_unique` (`semester`),
  ADD UNIQUE KEY `semesters_slug_unique` (`slug`);

--
-- Indexes for table `semester_assets`
--
ALTER TABLE `semester_assets`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `semester_subject`
--
ALTER TABLE `semester_subject`
  ADD PRIMARY KEY (`id`),
  ADD KEY `semester_subject_semester_id_foreign` (`semester_id`),
  ADD KEY `semester_subject_subject_id_foreign` (`subject_id`);

--
-- Indexes for table `settings`
--
ALTER TABLE `settings`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sms_emails`
--
ALTER TABLE `sms_emails`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sms_settings`
--
ALTER TABLE `sms_settings`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `staff`
--
ALTER TABLE `staff`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `staff_reg_no_unique` (`reg_no`),
  ADD KEY `staff_designation_foreign` (`designation`);

--
-- Indexes for table `staff_designations`
--
ALTER TABLE `staff_designations`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `staff_designations_title_unique` (`title`);

--
-- Indexes for table `stocks`
--
ALTER TABLE `stocks`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `students`
--
ALTER TABLE `students`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `students_reg_no_unique` (`reg_no`),
  ADD KEY `students_faculty_foreign` (`faculty`),
  ADD KEY `students_semester_foreign` (`semester`),
  ADD KEY `students_academic_status_foreign` (`academic_status`),
  ADD KEY `students_batch_foreign` (`batch`);

--
-- Indexes for table `student_batches`
--
ALTER TABLE `student_batches`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `student_batches_title_unique` (`title`);

--
-- Indexes for table `student_guardians`
--
ALTER TABLE `student_guardians`
  ADD PRIMARY KEY (`id`),
  ADD KEY `student_guardians_students_id_foreign` (`students_id`),
  ADD KEY `student_guardians_guardians_id_foreign` (`guardians_id`);

--
-- Indexes for table `student_statuses`
--
ALTER TABLE `student_statuses`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `student_statuses_title_unique` (`title`);

--
-- Indexes for table `subjects`
--
ALTER TABLE `subjects`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `subject_attendances`
--
ALTER TABLE `subject_attendances`
  ADD PRIMARY KEY (`id`),
  ADD KEY `subject_attendances_years_id_foreign` (`years_id`),
  ADD KEY `subject_attendances_months_id_foreign` (`months_id`),
  ADD KEY `subject_attendances_subjects_id_foreign` (`subjects_id`);

--
-- Indexes for table `sub_categories`
--
ALTER TABLE `sub_categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `time_zones`
--
ALTER TABLE `time_zones`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `transactions`
--
ALTER TABLE `transactions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `transactions_tr_head_id_foreign` (`tr_head_id`);

--
-- Indexes for table `transaction_heads`
--
ALTER TABLE `transaction_heads`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `transfer_certificates`
--
ALTER TABLE `transfer_certificates`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `transfer_certificates_students_id_unique` (`students_id`),
  ADD UNIQUE KEY `transfer_certificates_tc_num_unique` (`tc_num`);

--
-- Indexes for table `transport_histories`
--
ALTER TABLE `transport_histories`
  ADD PRIMARY KEY (`id`),
  ADD KEY `transport_histories_travellers_id_foreign` (`travellers_id`);

--
-- Indexes for table `transport_users`
--
ALTER TABLE `transport_users`
  ADD PRIMARY KEY (`id`),
  ADD KEY `transport_users_routes_id_foreign` (`routes_id`),
  ADD KEY `transport_users_vehicles_id_foreign` (`vehicles_id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- Indexes for table `vehicles`
--
ALTER TABLE `vehicles`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `vehicles_number_unique` (`number`);

--
-- Indexes for table `vehicle_staffs`
--
ALTER TABLE `vehicle_staffs`
  ADD PRIMARY KEY (`id`),
  ADD KEY `vehicle_staffs_staffs_id_foreign` (`staffs_id`),
  ADD KEY `vehicle_staffs_vehicles_id_foreign` (`vehicles_id`);

--
-- Indexes for table `vendors`
--
ALTER TABLE `vendors`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `vendors_reg_no_unique` (`reg_no`);

--
-- Indexes for table `visitor_logs`
--
ALTER TABLE `visitor_logs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `visitor_purposes`
--
ALTER TABLE `visitor_purposes`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `visitor_purposes_title_unique` (`title`);

--
-- Indexes for table `web_about_us_settings`
--
ALTER TABLE `web_about_us_settings`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `web_blogs`
--
ALTER TABLE `web_blogs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `web_blogs_slug_unique` (`slug`);

--
-- Indexes for table `web_blog_categories`
--
ALTER TABLE `web_blog_categories`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `web_blog_categories_slug_unique` (`slug`);

--
-- Indexes for table `web_client_awards`
--
ALTER TABLE `web_client_awards`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `web_contact_lists`
--
ALTER TABLE `web_contact_lists`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `web_contact_us_settings`
--
ALTER TABLE `web_contact_us_settings`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `web_counters`
--
ALTER TABLE `web_counters`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `web_downloads`
--
ALTER TABLE `web_downloads`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `web_downloads_slug_unique` (`slug`);

--
-- Indexes for table `web_events`
--
ALTER TABLE `web_events`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `web_events_slug_unique` (`slug`);

--
-- Indexes for table `web_faqs`
--
ALTER TABLE `web_faqs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `web_galleries`
--
ALTER TABLE `web_galleries`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `web_galleries_slug_unique` (`slug`);

--
-- Indexes for table `web_gallery_images`
--
ALTER TABLE `web_gallery_images`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `web_general_settings`
--
ALTER TABLE `web_general_settings`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `web_home_settings`
--
ALTER TABLE `web_home_settings`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `web_menus`
--
ALTER TABLE `web_menus`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `web_menus_slug_unique` (`slug`);

--
-- Indexes for table `web_menu_web_page`
--
ALTER TABLE `web_menu_web_page`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `web_notices`
--
ALTER TABLE `web_notices`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `web_notices_slug_unique` (`slug`);

--
-- Indexes for table `web_pages`
--
ALTER TABLE `web_pages`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `web_pages_slug_unique` (`slug`);

--
-- Indexes for table `web_pricings`
--
ALTER TABLE `web_pricings`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `web_pricings_title_unique` (`title`);

--
-- Indexes for table `web_registrations`
--
ALTER TABLE `web_registrations`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `web_registrations_reg_no_unique` (`reg_no`);

--
-- Indexes for table `web_registration_academic_qualifications`
--
ALTER TABLE `web_registration_academic_qualifications`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `web_registration_programmes`
--
ALTER TABLE `web_registration_programmes`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `web_registration_settings`
--
ALTER TABLE `web_registration_settings`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `web_registration_work_experiences`
--
ALTER TABLE `web_registration_work_experiences`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `web_services`
--
ALTER TABLE `web_services`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `web_sliders`
--
ALTER TABLE `web_sliders`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `web_staff`
--
ALTER TABLE `web_staff`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `web_staff_slug_unique` (`slug`);

--
-- Indexes for table `web_subscribers`
--
ALTER TABLE `web_subscribers`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `web_testimonials`
--
ALTER TABLE `web_testimonials`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `years`
--
ALTER TABLE `years`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `years_title_unique` (`title`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `academic_infos`
--
ALTER TABLE `academic_infos`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `account_categories`
--
ALTER TABLE `account_categories`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=100;

--
-- AUTO_INCREMENT for table `addressinfos`
--
ALTER TABLE `addressinfos`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `alert_settings`
--
ALTER TABLE `alert_settings`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=29;

--
-- AUTO_INCREMENT for table `assets`
--
ALTER TABLE `assets`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `assignments`
--
ALTER TABLE `assignments`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `assignment_answers`
--
ALTER TABLE `assignment_answers`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `attendances`
--
ALTER TABLE `attendances`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `attendance_certificates`
--
ALTER TABLE `attendance_certificates`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `attendance_masters`
--
ALTER TABLE `attendance_masters`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `attendance_statuses`
--
ALTER TABLE `attendance_statuses`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `audits`
--
ALTER TABLE `audits`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `banks`
--
ALTER TABLE `banks`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `bank_transactions`
--
ALTER TABLE `bank_transactions`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `beds`
--
ALTER TABLE `beds`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `bed_statuses`
--
ALTER TABLE `bed_statuses`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `bonafide_certificates`
--
ALTER TABLE `bonafide_certificates`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `books`
--
ALTER TABLE `books`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `book_categories`
--
ALTER TABLE `book_categories`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `book_issues`
--
ALTER TABLE `book_issues`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `book_masters`
--
ALTER TABLE `book_masters`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `book_requests`
--
ALTER TABLE `book_requests`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `book_statuses`
--
ALTER TABLE `book_statuses`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `certificate_histories`
--
ALTER TABLE `certificate_histories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `certificate_templates`
--
ALTER TABLE `certificate_templates`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `character_certificates`
--
ALTER TABLE `character_certificates`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `contact_directory_details`
--
ALTER TABLE `contact_directory_details`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `contact_directory_groups`
--
ALTER TABLE `contact_directory_groups`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `contact_mesages`
--
ALTER TABLE `contact_mesages`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `course_completion_certificates`
--
ALTER TABLE `course_completion_certificates`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `customers`
--
ALTER TABLE `customers`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `customer_statuses`
--
ALTER TABLE `customer_statuses`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `days`
--
ALTER TABLE `days`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `documents`
--
ALTER TABLE `documents`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `downloads`
--
ALTER TABLE `downloads`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `eating_times`
--
ALTER TABLE `eating_times`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `email_settings`
--
ALTER TABLE `email_settings`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `exams`
--
ALTER TABLE `exams`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `exam_mark_ledgers`
--
ALTER TABLE `exam_mark_ledgers`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `exam_schedules`
--
ALTER TABLE `exam_schedules`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `faculties`
--
ALTER TABLE `faculties`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `faculty_semester`
--
ALTER TABLE `faculty_semester`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `fee_collections`
--
ALTER TABLE `fee_collections`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `fee_heads`
--
ALTER TABLE `fee_heads`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `fee_masters`
--
ALTER TABLE `fee_masters`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `food_categories`
--
ALTER TABLE `food_categories`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `food_items`
--
ALTER TABLE `food_items`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `food_item_food_schedule`
--
ALTER TABLE `food_item_food_schedule`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `food_schedules`
--
ALTER TABLE `food_schedules`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `general_settings`
--
ALTER TABLE `general_settings`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `grading_scales`
--
ALTER TABLE `grading_scales`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `grading_types`
--
ALTER TABLE `grading_types`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `guardian_details`
--
ALTER TABLE `guardian_details`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `hostels`
--
ALTER TABLE `hostels`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `hostel_meals`
--
ALTER TABLE `hostel_meals`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `institutions`
--
ALTER TABLE `institutions`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `jobs`
--
ALTER TABLE `jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `library_circulations`
--
ALTER TABLE `library_circulations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `library_members`
--
ALTER TABLE `library_members`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `mcq_answer_sheets`
--
ALTER TABLE `mcq_answer_sheets`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `mcq_exams`
--
ALTER TABLE `mcq_exams`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `mcq_exam_participants`
--
ALTER TABLE `mcq_exam_participants`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `mcq_exam_questions`
--
ALTER TABLE `mcq_exam_questions`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `mcq_instructions`
--
ALTER TABLE `mcq_instructions`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `mcq_questions`
--
ALTER TABLE `mcq_questions`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `mcq_question_groups`
--
ALTER TABLE `mcq_question_groups`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `mcq_question_levels`
--
ALTER TABLE `mcq_question_levels`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `mcq_question_options`
--
ALTER TABLE `mcq_question_options`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `meetings`
--
ALTER TABLE `meetings`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `meeting_settings`
--
ALTER TABLE `meeting_settings`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=161;

--
-- AUTO_INCREMENT for table `months`
--
ALTER TABLE `months`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `nirgam_utara_certificates`
--
ALTER TABLE `nirgam_utara_certificates`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `notes`
--
ALTER TABLE `notes`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `notices`
--
ALTER TABLE `notices`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `online_payments`
--
ALTER TABLE `online_payments`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `online_registration_programs`
--
ALTER TABLE `online_registration_programs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `online_registration_settings`
--
ALTER TABLE `online_registration_settings`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `parent_details`
--
ALTER TABLE `parent_details`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `payment_methods`
--
ALTER TABLE `payment_methods`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `payment_settings`
--
ALTER TABLE `payment_settings`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `payroll_heads`
--
ALTER TABLE `payroll_heads`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `payroll_masters`
--
ALTER TABLE `payroll_masters`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `permissions`
--
ALTER TABLE `permissions`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=939;

--
-- AUTO_INCREMENT for table `postal_exchanges`
--
ALTER TABLE `postal_exchanges`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `postal_exchange_types`
--
ALTER TABLE `postal_exchange_types`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `product_prices`
--
ALTER TABLE `product_prices`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `purchases`
--
ALTER TABLE `purchases`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `purchase_details`
--
ALTER TABLE `purchase_details`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `purchase_returns`
--
ALTER TABLE `purchase_returns`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `residents`
--
ALTER TABLE `residents`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `resident_histories`
--
ALTER TABLE `resident_histories`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `roles`
--
ALTER TABLE `roles`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `rooms`
--
ALTER TABLE `rooms`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `room_types`
--
ALTER TABLE `room_types`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `routes`
--
ALTER TABLE `routes`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `route_vehicles`
--
ALTER TABLE `route_vehicles`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `salary_pays`
--
ALTER TABLE `salary_pays`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `sales`
--
ALTER TABLE `sales`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `sales_details`
--
ALTER TABLE `sales_details`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `sales_returns`
--
ALTER TABLE `sales_returns`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `semesters`
--
ALTER TABLE `semesters`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `semester_assets`
--
ALTER TABLE `semester_assets`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `semester_subject`
--
ALTER TABLE `semester_subject`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `settings`
--
ALTER TABLE `settings`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `sms_emails`
--
ALTER TABLE `sms_emails`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `sms_settings`
--
ALTER TABLE `sms_settings`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

--
-- AUTO_INCREMENT for table `staff`
--
ALTER TABLE `staff`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `staff_designations`
--
ALTER TABLE `staff_designations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `stocks`
--
ALTER TABLE `stocks`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `students`
--
ALTER TABLE `students`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `student_batches`
--
ALTER TABLE `student_batches`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `student_guardians`
--
ALTER TABLE `student_guardians`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `student_statuses`
--
ALTER TABLE `student_statuses`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `subjects`
--
ALTER TABLE `subjects`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `subject_attendances`
--
ALTER TABLE `subject_attendances`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `sub_categories`
--
ALTER TABLE `sub_categories`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `time_zones`
--
ALTER TABLE `time_zones`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=468;

--
-- AUTO_INCREMENT for table `transactions`
--
ALTER TABLE `transactions`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `transaction_heads`
--
ALTER TABLE `transaction_heads`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `transfer_certificates`
--
ALTER TABLE `transfer_certificates`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `transport_histories`
--
ALTER TABLE `transport_histories`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `transport_users`
--
ALTER TABLE `transport_users`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `vehicles`
--
ALTER TABLE `vehicles`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `vehicle_staffs`
--
ALTER TABLE `vehicle_staffs`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `vendors`
--
ALTER TABLE `vendors`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `visitor_logs`
--
ALTER TABLE `visitor_logs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `visitor_purposes`
--
ALTER TABLE `visitor_purposes`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `web_about_us_settings`
--
ALTER TABLE `web_about_us_settings`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `web_blogs`
--
ALTER TABLE `web_blogs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `web_blog_categories`
--
ALTER TABLE `web_blog_categories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `web_client_awards`
--
ALTER TABLE `web_client_awards`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `web_contact_lists`
--
ALTER TABLE `web_contact_lists`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `web_contact_us_settings`
--
ALTER TABLE `web_contact_us_settings`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `web_counters`
--
ALTER TABLE `web_counters`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `web_downloads`
--
ALTER TABLE `web_downloads`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `web_events`
--
ALTER TABLE `web_events`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `web_faqs`
--
ALTER TABLE `web_faqs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `web_galleries`
--
ALTER TABLE `web_galleries`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `web_gallery_images`
--
ALTER TABLE `web_gallery_images`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `web_general_settings`
--
ALTER TABLE `web_general_settings`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `web_home_settings`
--
ALTER TABLE `web_home_settings`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `web_menus`
--
ALTER TABLE `web_menus`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `web_menu_web_page`
--
ALTER TABLE `web_menu_web_page`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `web_notices`
--
ALTER TABLE `web_notices`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `web_pages`
--
ALTER TABLE `web_pages`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `web_pricings`
--
ALTER TABLE `web_pricings`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `web_registrations`
--
ALTER TABLE `web_registrations`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `web_registration_academic_qualifications`
--
ALTER TABLE `web_registration_academic_qualifications`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `web_registration_programmes`
--
ALTER TABLE `web_registration_programmes`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `web_registration_settings`
--
ALTER TABLE `web_registration_settings`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `web_registration_work_experiences`
--
ALTER TABLE `web_registration_work_experiences`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `web_services`
--
ALTER TABLE `web_services`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `web_sliders`
--
ALTER TABLE `web_sliders`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `web_staff`
--
ALTER TABLE `web_staff`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `web_subscribers`
--
ALTER TABLE `web_subscribers`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `web_testimonials`
--
ALTER TABLE `web_testimonials`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `years`
--
ALTER TABLE `years`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `academic_infos`
--
ALTER TABLE `academic_infos`
  ADD CONSTRAINT `academic_infos_students_id_foreign` FOREIGN KEY (`students_id`) REFERENCES `students` (`id`);

--
-- Constraints for table `addressinfos`
--
ALTER TABLE `addressinfos`
  ADD CONSTRAINT `addressinfos_students_id_foreign` FOREIGN KEY (`students_id`) REFERENCES `students` (`id`);

--
-- Constraints for table `assignments`
--
ALTER TABLE `assignments`
  ADD CONSTRAINT `assignments_semesters_id_foreign` FOREIGN KEY (`semesters_id`) REFERENCES `semesters` (`id`),
  ADD CONSTRAINT `assignments_subjects_id_foreign` FOREIGN KEY (`subjects_id`) REFERENCES `subjects` (`id`),
  ADD CONSTRAINT `assignments_years_id_foreign` FOREIGN KEY (`years_id`) REFERENCES `years` (`id`);

--
-- Constraints for table `assignment_answers`
--
ALTER TABLE `assignment_answers`
  ADD CONSTRAINT `assignment_answers_assignments_id_foreign` FOREIGN KEY (`assignments_id`) REFERENCES `assignments` (`id`),
  ADD CONSTRAINT `assignment_answers_students_id_foreign` FOREIGN KEY (`students_id`) REFERENCES `students` (`id`);

--
-- Constraints for table `attendances`
--
ALTER TABLE `attendances`
  ADD CONSTRAINT `attendances_months_id_foreign` FOREIGN KEY (`months_id`) REFERENCES `months` (`id`),
  ADD CONSTRAINT `attendances_years_id_foreign` FOREIGN KEY (`years_id`) REFERENCES `years` (`id`);

--
-- Constraints for table `attendance_certificates`
--
ALTER TABLE `attendance_certificates`
  ADD CONSTRAINT `attendance_certificates_students_id_foreign` FOREIGN KEY (`students_id`) REFERENCES `students` (`id`);

--
-- Constraints for table `attendance_masters`
--
ALTER TABLE `attendance_masters`
  ADD CONSTRAINT `attendance_masters_month_foreign` FOREIGN KEY (`month`) REFERENCES `months` (`id`),
  ADD CONSTRAINT `attendance_masters_year_foreign` FOREIGN KEY (`year`) REFERENCES `years` (`id`);

--
-- Constraints for table `bank_transactions`
--
ALTER TABLE `bank_transactions`
  ADD CONSTRAINT `bank_transactions_banks_id_foreign` FOREIGN KEY (`banks_id`) REFERENCES `banks` (`id`);

--
-- Constraints for table `beds`
--
ALTER TABLE `beds`
  ADD CONSTRAINT `beds_bed_status_foreign` FOREIGN KEY (`bed_status`) REFERENCES `bed_statuses` (`id`),
  ADD CONSTRAINT `beds_hostels_id_foreign` FOREIGN KEY (`hostels_id`) REFERENCES `hostels` (`id`),
  ADD CONSTRAINT `beds_rooms_id_foreign` FOREIGN KEY (`rooms_id`) REFERENCES `rooms` (`id`);

--
-- Constraints for table `bonafide_certificates`
--
ALTER TABLE `bonafide_certificates`
  ADD CONSTRAINT `bonafide_certificates_students_id_foreign` FOREIGN KEY (`students_id`) REFERENCES `students` (`id`);

--
-- Constraints for table `books`
--
ALTER TABLE `books`
  ADD CONSTRAINT `books_book_masters_id_foreign` FOREIGN KEY (`book_masters_id`) REFERENCES `book_masters` (`id`),
  ADD CONSTRAINT `books_book_status_foreign` FOREIGN KEY (`book_status`) REFERENCES `book_statuses` (`id`);

--
-- Constraints for table `book_issues`
--
ALTER TABLE `book_issues`
  ADD CONSTRAINT `book_issues_book_id_foreign` FOREIGN KEY (`book_id`) REFERENCES `books` (`id`);

--
-- Constraints for table `book_masters`
--
ALTER TABLE `book_masters`
  ADD CONSTRAINT `book_masters_categories_foreign` FOREIGN KEY (`categories`) REFERENCES `book_categories` (`id`);

--
-- Constraints for table `certificate_histories`
--
ALTER TABLE `certificate_histories`
  ADD CONSTRAINT `certificate_histories_students_id_foreign` FOREIGN KEY (`students_id`) REFERENCES `students` (`id`);

--
-- Constraints for table `character_certificates`
--
ALTER TABLE `character_certificates`
  ADD CONSTRAINT `character_certificates_students_id_foreign` FOREIGN KEY (`students_id`) REFERENCES `students` (`id`);

--
-- Constraints for table `course_completion_certificates`
--
ALTER TABLE `course_completion_certificates`
  ADD CONSTRAINT `course_completion_certificates_students_id_foreign` FOREIGN KEY (`students_id`) REFERENCES `students` (`id`);

--
-- Constraints for table `exam_mark_ledgers`
--
ALTER TABLE `exam_mark_ledgers`
  ADD CONSTRAINT `exam_mark_ledgers_students_id_foreign` FOREIGN KEY (`students_id`) REFERENCES `students` (`id`);

--
-- Constraints for table `exam_schedules`
--
ALTER TABLE `exam_schedules`
  ADD CONSTRAINT `exam_schedules_exams_id_foreign` FOREIGN KEY (`exams_id`) REFERENCES `exams` (`id`),
  ADD CONSTRAINT `exam_schedules_faculty_id_foreign` FOREIGN KEY (`faculty_id`) REFERENCES `faculties` (`id`),
  ADD CONSTRAINT `exam_schedules_months_id_foreign` FOREIGN KEY (`months_id`) REFERENCES `months` (`id`),
  ADD CONSTRAINT `exam_schedules_semesters_id_foreign` FOREIGN KEY (`semesters_id`) REFERENCES `semesters` (`id`),
  ADD CONSTRAINT `exam_schedules_subjects_id_foreign` FOREIGN KEY (`subjects_id`) REFERENCES `subjects` (`id`),
  ADD CONSTRAINT `exam_schedules_years_id_foreign` FOREIGN KEY (`years_id`) REFERENCES `years` (`id`);

--
-- Constraints for table `faculty_semester`
--
ALTER TABLE `faculty_semester`
  ADD CONSTRAINT `faculty_semester_faculty_id_foreign` FOREIGN KEY (`faculty_id`) REFERENCES `faculties` (`id`),
  ADD CONSTRAINT `faculty_semester_semester_id_foreign` FOREIGN KEY (`semester_id`) REFERENCES `semesters` (`id`);

--
-- Constraints for table `fee_collections`
--
ALTER TABLE `fee_collections`
  ADD CONSTRAINT `fee_collections_fee_masters_id_foreign` FOREIGN KEY (`fee_masters_id`) REFERENCES `fee_masters` (`id`),
  ADD CONSTRAINT `fee_collections_students_id_foreign` FOREIGN KEY (`students_id`) REFERENCES `students` (`id`);

--
-- Constraints for table `fee_masters`
--
ALTER TABLE `fee_masters`
  ADD CONSTRAINT `fee_masters_students_id_foreign` FOREIGN KEY (`students_id`) REFERENCES `students` (`id`);

--
-- Constraints for table `general_settings`
--
ALTER TABLE `general_settings`
  ADD CONSTRAINT `general_settings_time_zones_id_foreign` FOREIGN KEY (`time_zones_id`) REFERENCES `time_zones` (`id`);

--
-- Constraints for table `grading_scales`
--
ALTER TABLE `grading_scales`
  ADD CONSTRAINT `grading_scales_gradingtype_id_foreign` FOREIGN KEY (`gradingType_id`) REFERENCES `grading_types` (`id`);

--
-- Constraints for table `meetings`
--
ALTER TABLE `meetings`
  ADD CONSTRAINT `meetings_semesters_id_foreign` FOREIGN KEY (`semesters_id`) REFERENCES `semesters` (`id`),
  ADD CONSTRAINT `meetings_subjects_id_foreign` FOREIGN KEY (`subjects_id`) REFERENCES `subjects` (`id`);

--
-- Constraints for table `nirgam_utara_certificates`
--
ALTER TABLE `nirgam_utara_certificates`
  ADD CONSTRAINT `nirgam_utara_certificates_students_id_foreign` FOREIGN KEY (`students_id`) REFERENCES `students` (`id`);

--
-- Constraints for table `parent_details`
--
ALTER TABLE `parent_details`
  ADD CONSTRAINT `parent_details_students_id_foreign` FOREIGN KEY (`students_id`) REFERENCES `students` (`id`);

--
-- Constraints for table `payroll_masters`
--
ALTER TABLE `payroll_masters`
  ADD CONSTRAINT `payroll_masters_staff_id_foreign` FOREIGN KEY (`staff_id`) REFERENCES `staff` (`id`);

--
-- Constraints for table `permission_role`
--
ALTER TABLE `permission_role`
  ADD CONSTRAINT `permission_role_permission_id_foreign` FOREIGN KEY (`permission_id`) REFERENCES `permissions` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `permission_role_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `purchases`
--
ALTER TABLE `purchases`
  ADD CONSTRAINT `purchases_vendors_id_foreign` FOREIGN KEY (`vendors_id`) REFERENCES `vendors` (`id`);

--
-- Constraints for table `purchase_details`
--
ALTER TABLE `purchase_details`
  ADD CONSTRAINT `purchase_details_products_id_foreign` FOREIGN KEY (`products_id`) REFERENCES `products` (`id`);

--
-- Constraints for table `purchase_returns`
--
ALTER TABLE `purchase_returns`
  ADD CONSTRAINT `purchase_returns_products_id_foreign` FOREIGN KEY (`products_id`) REFERENCES `products` (`id`),
  ADD CONSTRAINT `purchase_returns_vendors_id_foreign` FOREIGN KEY (`vendors_id`) REFERENCES `vendors` (`id`);

--
-- Constraints for table `residents`
--
ALTER TABLE `residents`
  ADD CONSTRAINT `residents_beds_id_foreign` FOREIGN KEY (`beds_id`) REFERENCES `beds` (`id`),
  ADD CONSTRAINT `residents_hostels_id_foreign` FOREIGN KEY (`hostels_id`) REFERENCES `hostels` (`id`),
  ADD CONSTRAINT `residents_rooms_id_foreign` FOREIGN KEY (`rooms_id`) REFERENCES `rooms` (`id`);

--
-- Constraints for table `resident_histories`
--
ALTER TABLE `resident_histories`
  ADD CONSTRAINT `resident_histories_beds_id_foreign` FOREIGN KEY (`beds_id`) REFERENCES `beds` (`id`),
  ADD CONSTRAINT `resident_histories_hostels_id_foreign` FOREIGN KEY (`hostels_id`) REFERENCES `hostels` (`id`),
  ADD CONSTRAINT `resident_histories_residents_id_foreign` FOREIGN KEY (`residents_id`) REFERENCES `residents` (`id`),
  ADD CONSTRAINT `resident_histories_rooms_id_foreign` FOREIGN KEY (`rooms_id`) REFERENCES `rooms` (`id`),
  ADD CONSTRAINT `resident_histories_years_id_foreign` FOREIGN KEY (`years_id`) REFERENCES `years` (`id`);

--
-- Constraints for table `role_user`
--
ALTER TABLE `role_user`
  ADD CONSTRAINT `role_user_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `role_user_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `rooms`
--
ALTER TABLE `rooms`
  ADD CONSTRAINT `rooms_hostels_id_foreign` FOREIGN KEY (`hostels_id`) REFERENCES `hostels` (`id`),
  ADD CONSTRAINT `rooms_room_type_foreign` FOREIGN KEY (`room_type`) REFERENCES `room_types` (`id`);

--
-- Constraints for table `salary_pays`
--
ALTER TABLE `salary_pays`
  ADD CONSTRAINT `salary_pays_salary_masters_id_foreign` FOREIGN KEY (`salary_masters_id`) REFERENCES `payroll_masters` (`id`),
  ADD CONSTRAINT `salary_pays_staff_id_foreign` FOREIGN KEY (`staff_id`) REFERENCES `staff` (`id`);

--
-- Constraints for table `semester_subject`
--
ALTER TABLE `semester_subject`
  ADD CONSTRAINT `semester_subject_semester_id_foreign` FOREIGN KEY (`semester_id`) REFERENCES `semesters` (`id`),
  ADD CONSTRAINT `semester_subject_subject_id_foreign` FOREIGN KEY (`subject_id`) REFERENCES `subjects` (`id`);

--
-- Constraints for table `staff`
--
ALTER TABLE `staff`
  ADD CONSTRAINT `staff_designation_foreign` FOREIGN KEY (`designation`) REFERENCES `staff_designations` (`id`);

--
-- Constraints for table `students`
--
ALTER TABLE `students`
  ADD CONSTRAINT `students_academic_status_foreign` FOREIGN KEY (`academic_status`) REFERENCES `student_statuses` (`id`),
  ADD CONSTRAINT `students_batch_foreign` FOREIGN KEY (`batch`) REFERENCES `student_batches` (`id`),
  ADD CONSTRAINT `students_faculty_foreign` FOREIGN KEY (`faculty`) REFERENCES `faculties` (`id`),
  ADD CONSTRAINT `students_semester_foreign` FOREIGN KEY (`semester`) REFERENCES `semesters` (`id`);

--
-- Constraints for table `student_guardians`
--
ALTER TABLE `student_guardians`
  ADD CONSTRAINT `student_guardians_guardians_id_foreign` FOREIGN KEY (`guardians_id`) REFERENCES `guardian_details` (`id`),
  ADD CONSTRAINT `student_guardians_students_id_foreign` FOREIGN KEY (`students_id`) REFERENCES `students` (`id`);

--
-- Constraints for table `subject_attendances`
--
ALTER TABLE `subject_attendances`
  ADD CONSTRAINT `subject_attendances_months_id_foreign` FOREIGN KEY (`months_id`) REFERENCES `months` (`id`),
  ADD CONSTRAINT `subject_attendances_subjects_id_foreign` FOREIGN KEY (`subjects_id`) REFERENCES `subjects` (`id`),
  ADD CONSTRAINT `subject_attendances_years_id_foreign` FOREIGN KEY (`years_id`) REFERENCES `years` (`id`);

--
-- Constraints for table `transactions`
--
ALTER TABLE `transactions`
  ADD CONSTRAINT `transactions_tr_head_id_foreign` FOREIGN KEY (`tr_head_id`) REFERENCES `transaction_heads` (`id`);

--
-- Constraints for table `transfer_certificates`
--
ALTER TABLE `transfer_certificates`
  ADD CONSTRAINT `transfer_certificates_students_id_foreign` FOREIGN KEY (`students_id`) REFERENCES `students` (`id`);

--
-- Constraints for table `transport_histories`
--
ALTER TABLE `transport_histories`
  ADD CONSTRAINT `transport_histories_travellers_id_foreign` FOREIGN KEY (`travellers_id`) REFERENCES `transport_users` (`id`);

--
-- Constraints for table `transport_users`
--
ALTER TABLE `transport_users`
  ADD CONSTRAINT `transport_users_routes_id_foreign` FOREIGN KEY (`routes_id`) REFERENCES `routes` (`id`),
  ADD CONSTRAINT `transport_users_vehicles_id_foreign` FOREIGN KEY (`vehicles_id`) REFERENCES `vehicles` (`id`);

--
-- Constraints for table `vehicle_staffs`
--
ALTER TABLE `vehicle_staffs`
  ADD CONSTRAINT `vehicle_staffs_staffs_id_foreign` FOREIGN KEY (`staffs_id`) REFERENCES `staff` (`id`),
  ADD CONSTRAINT `vehicle_staffs_vehicles_id_foreign` FOREIGN KEY (`vehicles_id`) REFERENCES `vehicles` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
