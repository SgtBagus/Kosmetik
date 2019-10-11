-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Sep 26, 2019 at 11:35 AM
-- Server version: 10.1.39-MariaDB
-- PHP Version: 7.3.5

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `project_nm`
--

-- --------------------------------------------------------

--
-- Table structure for table `access`
--

CREATE TABLE `access` (
  `id` int(11) NOT NULL,
  `access_control_id` int(11) DEFAULT NULL,
  `role_id` int(11) DEFAULT NULL,
  `status` varchar(255) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `access`
--

INSERT INTO `access` (`id`, `access_control_id`, `role_id`, `status`) VALUES
(2, 94, 17, 'active');

-- --------------------------------------------------------

--
-- Table structure for table `access_control`
--

CREATE TABLE `access_control` (
  `id` int(11) NOT NULL,
  `folder` varchar(255) DEFAULT NULL,
  `class` varchar(255) DEFAULT NULL,
  `method` varchar(255) DEFAULT NULL,
  `val` varchar(255) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `access_control`
--

INSERT INTO `access_control` (`id`, `folder`, `class`, `method`, `val`) VALUES
(1, '', 'Access', '__construct', 'access/__construct'),
(2, '', 'Access', 'index', 'access/index'),
(3, '', 'Access', 'json', 'access/json'),
(4, '', 'Access', 'control', 'access/control'),
(5, '', 'Access', 'store', 'access/store'),
(6, '', 'Access', 'konfig', 'access/konfig'),
(7, '', 'Access', 'upload_file', 'access/upload_file'),
(8, '', 'Access', 'get_uri', 'access/get_uri'),
(9, '', 'Access', 'log_activity', 'access/log_activity'),
(10, '', 'Access', 'get_instance', 'access/get_instance'),
(11, '', 'Crud', '__construct', 'crud/__construct'),
(12, '', 'Crud', 'index', 'crud/index'),
(13, '', 'Crud', 'viewcode', 'crud/viewcode'),
(14, '', 'Crud', 'generate', 'crud/generate'),
(15, '', 'Crud', 'get_kolom', 'crud/get_kolom'),
(16, '', 'Crud', 'save_generate', 'crud/save_generate'),
(17, '', 'Crud', 'api', 'crud/api'),
(18, '', 'Crud', 'api_generate', 'crud/api_generate'),
(19, '', 'Crud', 'services', 'crud/services'),
(20, '', 'Crud', 'konfig', 'crud/konfig'),
(21, '', 'Crud', 'upload_file', 'crud/upload_file'),
(22, '', 'Crud', 'get_uri', 'crud/get_uri'),
(23, '', 'Crud', 'log_activity', 'crud/log_activity'),
(24, '', 'Crud', 'get_instance', 'crud/get_instance'),
(25, '', 'Crud_ajax', '__construct', 'crud_ajax/__construct'),
(26, '', 'Crud_ajax', 'index', 'crud_ajax/index'),
(27, '', 'Crud_ajax', 'ajaxGetTableCustomer', 'crud_ajax/ajaxgettablecustomer'),
(28, '', 'Crud_ajax', 'validate', 'crud_ajax/validate'),
(29, '', 'Crud_ajax', 'tambah', 'crud_ajax/tambah'),
(30, '', 'Crud_ajax', 'hapus', 'crud_ajax/hapus'),
(31, '', 'Crud_ajax', 'ajaxGetModalCustomer', 'crud_ajax/ajaxgetmodalcustomer'),
(32, '', 'Crud_ajax', 'edit', 'crud_ajax/edit'),
(33, '', 'Crud_ajax', 'konfig', 'crud_ajax/konfig'),
(34, '', 'Crud_ajax', 'upload_file', 'crud_ajax/upload_file'),
(35, '', 'Crud_ajax', 'get_uri', 'crud_ajax/get_uri'),
(36, '', 'Crud_ajax', 'log_activity', 'crud_ajax/log_activity'),
(37, '', 'Crud_ajax', 'get_instance', 'crud_ajax/get_instance'),
(38, '', 'Debug', '__construct', 'debug/__construct'),
(39, '', 'Debug', 'index', 'debug/index'),
(40, '', 'Debug', 'exportexcell', 'debug/exportexcell'),
(41, '', 'Debug', 'ecryprdecrypt', 'debug/ecryprdecrypt'),
(42, '', 'Debug', 'validation_form', 'debug/validation_form'),
(43, '', 'Debug', 'konfig', 'debug/konfig'),
(44, '', 'Debug', 'upload_file', 'debug/upload_file'),
(45, '', 'Debug', 'get_uri', 'debug/get_uri'),
(46, '', 'Debug', 'log_activity', 'debug/log_activity'),
(47, '', 'Debug', 'get_instance', 'debug/get_instance'),
(48, '', 'Dropdown', '__construct', 'dropdown/__construct'),
(49, '', 'Dropdown', 'index', 'dropdown/index'),
(50, '', 'Dropdown', 'generate', 'dropdown/generate'),
(51, '', 'Dropdown', 'konfig', 'dropdown/konfig'),
(52, '', 'Dropdown', 'upload_file', 'dropdown/upload_file'),
(53, '', 'Dropdown', 'get_uri', 'dropdown/get_uri'),
(54, '', 'Dropdown', 'log_activity', 'dropdown/log_activity'),
(55, '', 'Dropdown', 'get_instance', 'dropdown/get_instance'),
(56, '', 'Fitur', '__construct', 'fitur/__construct'),
(57, '', 'Fitur', 'ekspor', 'fitur/ekspor'),
(58, '', 'Fitur', 'impor', 'fitur/impor'),
(59, '', 'Fitur', 'importdata', 'fitur/importdata'),
(60, '', 'Fitur', 'access', 'fitur/access'),
(61, '', 'Fitur', 'exportreport', 'fitur/exportreport'),
(62, '', 'Fitur', 'toPdf', 'fitur/topdf'),
(63, '', 'Fitur', 'konfig', 'fitur/konfig'),
(64, '', 'Fitur', 'upload_file', 'fitur/upload_file'),
(65, '', 'Fitur', 'get_uri', 'fitur/get_uri'),
(66, '', 'Fitur', 'log_activity', 'fitur/log_activity'),
(67, '', 'Fitur', 'get_instance', 'fitur/get_instance'),
(68, '', 'Form_input', '__construct', 'form_input/__construct'),
(69, '', 'Form_input', 'index', 'form_input/index'),
(70, '', 'Form_input', 'ajaxGetAutocompleteCustomer', 'form_input/ajaxgetautocompletecustomer'),
(71, '', 'Form_input', 'ajaxGetSelectCustomer', 'form_input/ajaxgetselectcustomer'),
(72, '', 'Form_input', 'ajaxTambahCustomer', 'form_input/ajaxtambahcustomer'),
(73, '', 'Form_input', 'konfig', 'form_input/konfig'),
(74, '', 'Form_input', 'upload_file', 'form_input/upload_file'),
(75, '', 'Form_input', 'get_uri', 'form_input/get_uri'),
(76, '', 'Form_input', 'log_activity', 'form_input/log_activity'),
(77, '', 'Form_input', 'get_instance', 'form_input/get_instance'),
(78, '', 'Home', '__construct', 'home/__construct'),
(79, '', 'Home', 'index', 'home/index'),
(80, '', 'Home', 'chart', 'home/chart'),
(81, '', 'Home', 'get_autocomplete', 'home/get_autocomplete'),
(82, '', 'Home', 'konfig', 'home/konfig'),
(83, '', 'Home', 'upload_file', 'home/upload_file'),
(84, '', 'Home', 'get_uri', 'home/get_uri'),
(85, '', 'Home', 'log_activity', 'home/log_activity'),
(86, '', 'Home', 'get_instance', 'home/get_instance'),
(87, '', 'Login', '__construct', 'login/__construct'),
(88, '', 'Login', 'index', 'login/index'),
(89, '', 'Login', 'logout', 'login/logout'),
(90, '', 'Login', 'act_login', 'login/act_login'),
(91, '', 'Login', 'lockscreen', 'login/lockscreen'),
(92, '', 'Login', 'konfig', 'login/konfig'),
(93, '', 'Login', 'upload_file', 'login/upload_file'),
(94, '', 'Login', 'get_uri', 'login/get_uri'),
(95, '', 'Login', 'log_activity', 'login/log_activity'),
(96, '', 'Login', 'get_instance', 'login/get_instance'),
(97, '', 'Page', '__construct', 'page/__construct'),
(98, '', 'Page', 'portrait', 'page/portrait'),
(99, '', 'Page', 'landscape', 'page/landscape'),
(100, '', 'Page', 'konfig', 'page/konfig'),
(101, '', 'Page', 'upload_file', 'page/upload_file'),
(102, '', 'Page', 'get_uri', 'page/get_uri'),
(103, '', 'Page', 'log_activity', 'page/log_activity'),
(104, '', 'Page', 'get_instance', 'page/get_instance'),
(105, '', 'Rest_server', 'index', 'rest_server/index'),
(106, '', 'Rest_server', '__construct', 'rest_server/__construct'),
(107, '', 'Rest_server', 'get_instance', 'rest_server/get_instance'),
(108, '', 'Tablednd', '__construct', 'tablednd/__construct'),
(109, '', 'Tablednd', 'index', 'tablednd/index'),
(110, '', 'Tablednd', 'simpan', 'tablednd/simpan'),
(111, '', 'Tablednd', 'konfig', 'tablednd/konfig'),
(112, '', 'Tablednd', 'upload_file', 'tablednd/upload_file'),
(113, '', 'Tablednd', 'get_uri', 'tablednd/get_uri'),
(114, '', 'Tablednd', 'log_activity', 'tablednd/log_activity'),
(115, '', 'Tablednd', 'get_instance', 'tablednd/get_instance'),
(116, '', 'Tinymce', '__construct', 'tinymce/__construct'),
(117, '', 'Tinymce', 'index', 'tinymce/index'),
(118, '', 'Tinymce', 'konfig', 'tinymce/konfig'),
(119, '', 'Tinymce', 'upload_file', 'tinymce/upload_file'),
(120, '', 'Tinymce', 'get_uri', 'tinymce/get_uri'),
(121, '', 'Tinymce', 'log_activity', 'tinymce/log_activity'),
(122, '', 'Tinymce', 'get_instance', 'tinymce/get_instance'),
(123, '', 'UploadImage', '__construct', 'uploadimage/__construct'),
(124, '', 'UploadImage', 'index', 'uploadimage/index'),
(125, '', 'UploadImage', 'uploadAjax', 'uploadimage/uploadajax'),
(126, '', 'UploadImage', 'ajaxImageUnlink', 'uploadimage/ajaximageunlink'),
(127, '', 'UploadImage', 'konfig', 'uploadimage/konfig'),
(128, '', 'UploadImage', 'upload_file', 'uploadimage/upload_file'),
(129, '', 'UploadImage', 'get_uri', 'uploadimage/get_uri'),
(130, '', 'UploadImage', 'log_activity', 'uploadimage/log_activity'),
(131, '', 'UploadImage', 'get_instance', 'uploadimage/get_instance'),
(132, 'master', 'Activity', '__construct', 'master/activity/__construct'),
(133, 'master', 'Activity', 'index', 'master/activity/index'),
(134, 'master', 'Activity', 'create', 'master/activity/create'),
(135, 'master', 'Activity', 'validate', 'master/activity/validate'),
(136, 'master', 'Activity', 'store', 'master/activity/store'),
(137, 'master', 'Activity', 'json', 'master/activity/json'),
(138, 'master', 'Activity', 'edit', 'master/activity/edit'),
(139, 'master', 'Activity', 'update', 'master/activity/update'),
(140, 'master', 'Activity', 'delete', 'master/activity/delete'),
(141, 'master', 'Activity', 'status', 'master/activity/status'),
(142, 'master', 'Activity', 'konfig', 'master/activity/konfig'),
(143, 'master', 'Activity', 'upload_file', 'master/activity/upload_file'),
(144, 'master', 'Activity', 'get_uri', 'master/activity/get_uri'),
(145, 'master', 'Activity', 'log_activity', 'master/activity/log_activity'),
(146, 'master', 'Activity', 'get_instance', 'master/activity/get_instance'),
(147, 'master', 'Bahan_baku', '__construct', 'master/bahan_baku/__construct'),
(148, 'master', 'Bahan_baku', 'index', 'master/bahan_baku/index'),
(149, 'master', 'Bahan_baku', 'create', 'master/bahan_baku/create'),
(150, 'master', 'Bahan_baku', 'validate', 'master/bahan_baku/validate'),
(151, 'master', 'Bahan_baku', 'store', 'master/bahan_baku/store'),
(152, 'master', 'Bahan_baku', 'json', 'master/bahan_baku/json'),
(153, 'master', 'Bahan_baku', 'edit', 'master/bahan_baku/edit'),
(154, 'master', 'Bahan_baku', 'update', 'master/bahan_baku/update'),
(155, 'master', 'Bahan_baku', 'delete', 'master/bahan_baku/delete'),
(156, 'master', 'Bahan_baku', 'status', 'master/bahan_baku/status'),
(157, 'master', 'Bahan_baku', 'konfig', 'master/bahan_baku/konfig'),
(158, 'master', 'Bahan_baku', 'upload_file', 'master/bahan_baku/upload_file'),
(159, 'master', 'Bahan_baku', 'get_uri', 'master/bahan_baku/get_uri'),
(160, 'master', 'Bahan_baku', 'log_activity', 'master/bahan_baku/log_activity'),
(161, 'master', 'Bahan_baku', 'get_instance', 'master/bahan_baku/get_instance'),
(162, 'master', 'Bahan_baku_timeline', '__construct', 'master/bahan_baku_timeline/__construct'),
(163, 'master', 'Bahan_baku_timeline', 'index', 'master/bahan_baku_timeline/index'),
(164, 'master', 'Bahan_baku_timeline', 'create', 'master/bahan_baku_timeline/create'),
(165, 'master', 'Bahan_baku_timeline', 'validate', 'master/bahan_baku_timeline/validate'),
(166, 'master', 'Bahan_baku_timeline', 'store', 'master/bahan_baku_timeline/store'),
(167, 'master', 'Bahan_baku_timeline', 'json', 'master/bahan_baku_timeline/json'),
(168, 'master', 'Bahan_baku_timeline', 'edit', 'master/bahan_baku_timeline/edit'),
(169, 'master', 'Bahan_baku_timeline', 'update', 'master/bahan_baku_timeline/update'),
(170, 'master', 'Bahan_baku_timeline', 'delete', 'master/bahan_baku_timeline/delete'),
(171, 'master', 'Bahan_baku_timeline', 'status', 'master/bahan_baku_timeline/status'),
(172, 'master', 'Bahan_baku_timeline', 'konfig', 'master/bahan_baku_timeline/konfig'),
(173, 'master', 'Bahan_baku_timeline', 'upload_file', 'master/bahan_baku_timeline/upload_file'),
(174, 'master', 'Bahan_baku_timeline', 'get_uri', 'master/bahan_baku_timeline/get_uri'),
(175, 'master', 'Bahan_baku_timeline', 'log_activity', 'master/bahan_baku_timeline/log_activity'),
(176, 'master', 'Bahan_baku_timeline', 'get_instance', 'master/bahan_baku_timeline/get_instance'),
(177, 'master', 'Barang_jadi', '__construct', 'master/barang_jadi/__construct'),
(178, 'master', 'Barang_jadi', 'index', 'master/barang_jadi/index'),
(179, 'master', 'Barang_jadi', 'create', 'master/barang_jadi/create'),
(180, 'master', 'Barang_jadi', 'validate', 'master/barang_jadi/validate'),
(181, 'master', 'Barang_jadi', 'store', 'master/barang_jadi/store'),
(182, 'master', 'Barang_jadi', 'json', 'master/barang_jadi/json'),
(183, 'master', 'Barang_jadi', 'edit', 'master/barang_jadi/edit'),
(184, 'master', 'Barang_jadi', 'update', 'master/barang_jadi/update'),
(185, 'master', 'Barang_jadi', 'delete', 'master/barang_jadi/delete'),
(186, 'master', 'Barang_jadi', 'status', 'master/barang_jadi/status'),
(187, 'master', 'Barang_jadi', 'konfig', 'master/barang_jadi/konfig'),
(188, 'master', 'Barang_jadi', 'upload_file', 'master/barang_jadi/upload_file'),
(189, 'master', 'Barang_jadi', 'get_uri', 'master/barang_jadi/get_uri'),
(190, 'master', 'Barang_jadi', 'log_activity', 'master/barang_jadi/log_activity'),
(191, 'master', 'Barang_jadi', 'get_instance', 'master/barang_jadi/get_instance'),
(192, 'master', 'Bss', 'index', 'master/bss/index'),
(193, 'master', 'Bss', '__construct', 'master/bss/__construct'),
(194, 'master', 'Bss', 'konfig', 'master/bss/konfig'),
(195, 'master', 'Bss', 'upload_file', 'master/bss/upload_file'),
(196, 'master', 'Bss', 'get_uri', 'master/bss/get_uri'),
(197, 'master', 'Bss', 'log_activity', 'master/bss/log_activity'),
(198, 'master', 'Bss', 'get_instance', 'master/bss/get_instance'),
(199, 'master', 'Condition', '__construct', 'master/condition/__construct'),
(200, 'master', 'Condition', 'index', 'master/condition/index'),
(201, 'master', 'Condition', 'create', 'master/condition/create'),
(202, 'master', 'Condition', 'validate', 'master/condition/validate'),
(203, 'master', 'Condition', 'store', 'master/condition/store'),
(204, 'master', 'Condition', 'json', 'master/condition/json'),
(205, 'master', 'Condition', 'edit', 'master/condition/edit'),
(206, 'master', 'Condition', 'update', 'master/condition/update'),
(207, 'master', 'Condition', 'delete', 'master/condition/delete'),
(208, 'master', 'Condition', 'status', 'master/condition/status'),
(209, 'master', 'Condition', 'konfig', 'master/condition/konfig'),
(210, 'master', 'Condition', 'upload_file', 'master/condition/upload_file'),
(211, 'master', 'Condition', 'get_uri', 'master/condition/get_uri'),
(212, 'master', 'Condition', 'log_activity', 'master/condition/log_activity'),
(213, 'master', 'Condition', 'get_instance', 'master/condition/get_instance'),
(214, 'master', 'Currency', '__construct', 'master/currency/__construct'),
(215, 'master', 'Currency', 'index', 'master/currency/index'),
(216, 'master', 'Currency', 'create', 'master/currency/create'),
(217, 'master', 'Currency', 'validate', 'master/currency/validate'),
(218, 'master', 'Currency', 'store', 'master/currency/store'),
(219, 'master', 'Currency', 'json', 'master/currency/json'),
(220, 'master', 'Currency', 'edit', 'master/currency/edit'),
(221, 'master', 'Currency', 'update', 'master/currency/update'),
(222, 'master', 'Currency', 'delete', 'master/currency/delete'),
(223, 'master', 'Currency', 'status', 'master/currency/status'),
(224, 'master', 'Currency', 'konfig', 'master/currency/konfig'),
(225, 'master', 'Currency', 'upload_file', 'master/currency/upload_file'),
(226, 'master', 'Currency', 'get_uri', 'master/currency/get_uri'),
(227, 'master', 'Currency', 'log_activity', 'master/currency/log_activity'),
(228, 'master', 'Currency', 'get_instance', 'master/currency/get_instance'),
(229, 'master', 'Customer', '__construct', 'master/customer/__construct'),
(230, 'master', 'Customer', 'index', 'master/customer/index'),
(231, 'master', 'Customer', 'create', 'master/customer/create'),
(232, 'master', 'Customer', 'validate', 'master/customer/validate'),
(233, 'master', 'Customer', 'store', 'master/customer/store'),
(234, 'master', 'Customer', 'json', 'master/customer/json'),
(235, 'master', 'Customer', 'edit', 'master/customer/edit'),
(236, 'master', 'Customer', 'update', 'master/customer/update'),
(237, 'master', 'Customer', 'delete', 'master/customer/delete'),
(238, 'master', 'Customer', 'status', 'master/customer/status'),
(239, 'master', 'Customer', 'konfig', 'master/customer/konfig'),
(240, 'master', 'Customer', 'upload_file', 'master/customer/upload_file'),
(241, 'master', 'Customer', 'get_uri', 'master/customer/get_uri'),
(242, 'master', 'Customer', 'log_activity', 'master/customer/log_activity'),
(243, 'master', 'Customer', 'get_instance', 'master/customer/get_instance'),
(244, 'master', 'Grafik', '__construct', 'master/grafik/__construct'),
(245, 'master', 'Grafik', 'index', 'master/grafik/index'),
(246, 'master', 'Grafik', 'create', 'master/grafik/create'),
(247, 'master', 'Grafik', 'validate', 'master/grafik/validate'),
(248, 'master', 'Grafik', 'store', 'master/grafik/store'),
(249, 'master', 'Grafik', 'json', 'master/grafik/json'),
(250, 'master', 'Grafik', 'edit', 'master/grafik/edit'),
(251, 'master', 'Grafik', 'update', 'master/grafik/update'),
(252, 'master', 'Grafik', 'delete', 'master/grafik/delete'),
(253, 'master', 'Grafik', 'status', 'master/grafik/status'),
(254, 'master', 'Grafik', 'konfig', 'master/grafik/konfig'),
(255, 'master', 'Grafik', 'upload_file', 'master/grafik/upload_file'),
(256, 'master', 'Grafik', 'get_uri', 'master/grafik/get_uri'),
(257, 'master', 'Grafik', 'log_activity', 'master/grafik/log_activity'),
(258, 'master', 'Grafik', 'get_instance', 'master/grafik/get_instance'),
(259, 'master', 'Image', '__construct', 'master/image/__construct'),
(260, 'master', 'Image', 'index', 'master/image/index'),
(261, 'master', 'Image', 'create', 'master/image/create'),
(262, 'master', 'Image', 'validate', 'master/image/validate'),
(263, 'master', 'Image', 'store', 'master/image/store'),
(264, 'master', 'Image', 'json', 'master/image/json'),
(265, 'master', 'Image', 'edit', 'master/image/edit'),
(266, 'master', 'Image', 'update', 'master/image/update'),
(267, 'master', 'Image', 'delete', 'master/image/delete'),
(268, 'master', 'Image', 'status', 'master/image/status'),
(269, 'master', 'Image', 'konfig', 'master/image/konfig'),
(270, 'master', 'Image', 'upload_file', 'master/image/upload_file'),
(271, 'master', 'Image', 'get_uri', 'master/image/get_uri'),
(272, 'master', 'Image', 'log_activity', 'master/image/log_activity'),
(273, 'master', 'Image', 'get_instance', 'master/image/get_instance'),
(274, 'master', 'Jadwal', '__construct', 'master/jadwal/__construct'),
(275, 'master', 'Jadwal', 'index', 'master/jadwal/index'),
(276, 'master', 'Jadwal', 'create', 'master/jadwal/create'),
(277, 'master', 'Jadwal', 'validate', 'master/jadwal/validate'),
(278, 'master', 'Jadwal', 'store', 'master/jadwal/store'),
(279, 'master', 'Jadwal', 'json', 'master/jadwal/json'),
(280, 'master', 'Jadwal', 'edit', 'master/jadwal/edit'),
(281, 'master', 'Jadwal', 'update', 'master/jadwal/update'),
(282, 'master', 'Jadwal', 'delete', 'master/jadwal/delete'),
(283, 'master', 'Jadwal', 'status', 'master/jadwal/status'),
(284, 'master', 'Jadwal', 'konfig', 'master/jadwal/konfig'),
(285, 'master', 'Jadwal', 'upload_file', 'master/jadwal/upload_file'),
(286, 'master', 'Jadwal', 'get_uri', 'master/jadwal/get_uri'),
(287, 'master', 'Jadwal', 'log_activity', 'master/jadwal/log_activity'),
(288, 'master', 'Jadwal', 'get_instance', 'master/jadwal/get_instance'),
(289, 'master', 'Jenis_pekerjaan', '__construct', 'master/jenis_pekerjaan/__construct'),
(290, 'master', 'Jenis_pekerjaan', 'index', 'master/jenis_pekerjaan/index'),
(291, 'master', 'Jenis_pekerjaan', 'create', 'master/jenis_pekerjaan/create'),
(292, 'master', 'Jenis_pekerjaan', 'validate', 'master/jenis_pekerjaan/validate'),
(293, 'master', 'Jenis_pekerjaan', 'store', 'master/jenis_pekerjaan/store'),
(294, 'master', 'Jenis_pekerjaan', 'json', 'master/jenis_pekerjaan/json'),
(295, 'master', 'Jenis_pekerjaan', 'edit', 'master/jenis_pekerjaan/edit'),
(296, 'master', 'Jenis_pekerjaan', 'update', 'master/jenis_pekerjaan/update'),
(297, 'master', 'Jenis_pekerjaan', 'delete', 'master/jenis_pekerjaan/delete'),
(298, 'master', 'Jenis_pekerjaan', 'status', 'master/jenis_pekerjaan/status'),
(299, 'master', 'Jenis_pekerjaan', 'konfig', 'master/jenis_pekerjaan/konfig'),
(300, 'master', 'Jenis_pekerjaan', 'upload_file', 'master/jenis_pekerjaan/upload_file'),
(301, 'master', 'Jenis_pekerjaan', 'get_uri', 'master/jenis_pekerjaan/get_uri'),
(302, 'master', 'Jenis_pekerjaan', 'log_activity', 'master/jenis_pekerjaan/log_activity'),
(303, 'master', 'Jenis_pekerjaan', 'get_instance', 'master/jenis_pekerjaan/get_instance'),
(304, 'master', 'Keys', '__construct', 'master/keys/__construct'),
(305, 'master', 'Keys', 'index', 'master/keys/index'),
(306, 'master', 'Keys', 'create', 'master/keys/create'),
(307, 'master', 'Keys', 'validate', 'master/keys/validate'),
(308, 'master', 'Keys', 'store', 'master/keys/store'),
(309, 'master', 'Keys', 'json', 'master/keys/json'),
(310, 'master', 'Keys', 'edit', 'master/keys/edit'),
(311, 'master', 'Keys', 'update', 'master/keys/update'),
(312, 'master', 'Keys', 'delete', 'master/keys/delete'),
(313, 'master', 'Keys', 'status', 'master/keys/status'),
(314, 'master', 'Keys', 'konfig', 'master/keys/konfig'),
(315, 'master', 'Keys', 'upload_file', 'master/keys/upload_file'),
(316, 'master', 'Keys', 'get_uri', 'master/keys/get_uri'),
(317, 'master', 'Keys', 'log_activity', 'master/keys/log_activity'),
(318, 'master', 'Keys', 'get_instance', 'master/keys/get_instance'),
(319, 'master', 'Konfig', '__construct', 'master/konfig/__construct'),
(320, 'master', 'Konfig', 'index', 'master/konfig/index'),
(321, 'master', 'Konfig', 'create', 'master/konfig/create'),
(322, 'master', 'Konfig', 'validate', 'master/konfig/validate'),
(323, 'master', 'Konfig', 'store', 'master/konfig/store'),
(324, 'master', 'Konfig', 'json', 'master/konfig/json'),
(325, 'master', 'Konfig', 'edit', 'master/konfig/edit'),
(326, 'master', 'Konfig', 'update', 'master/konfig/update'),
(327, 'master', 'Konfig', 'delete', 'master/konfig/delete'),
(328, 'master', 'Konfig', 'status', 'master/konfig/status'),
(329, 'master', 'Konfig', 'konfig', 'master/konfig/konfig'),
(330, 'master', 'Konfig', 'upload_file', 'master/konfig/upload_file'),
(331, 'master', 'Konfig', 'get_uri', 'master/konfig/get_uri'),
(332, 'master', 'Konfig', 'log_activity', 'master/konfig/log_activity'),
(333, 'master', 'Konfig', 'get_instance', 'master/konfig/get_instance'),
(334, 'master', 'Master_sub_izin_usaha', '__construct', 'master/master_sub_izin_usaha/__construct'),
(335, 'master', 'Master_sub_izin_usaha', 'index', 'master/master_sub_izin_usaha/index'),
(336, 'master', 'Master_sub_izin_usaha', 'create', 'master/master_sub_izin_usaha/create'),
(337, 'master', 'Master_sub_izin_usaha', 'validate', 'master/master_sub_izin_usaha/validate'),
(338, 'master', 'Master_sub_izin_usaha', 'store', 'master/master_sub_izin_usaha/store'),
(339, 'master', 'Master_sub_izin_usaha', 'json', 'master/master_sub_izin_usaha/json'),
(340, 'master', 'Master_sub_izin_usaha', 'edit', 'master/master_sub_izin_usaha/edit'),
(341, 'master', 'Master_sub_izin_usaha', 'update', 'master/master_sub_izin_usaha/update'),
(342, 'master', 'Master_sub_izin_usaha', 'delete', 'master/master_sub_izin_usaha/delete'),
(343, 'master', 'Master_sub_izin_usaha', 'status', 'master/master_sub_izin_usaha/status'),
(344, 'master', 'Master_sub_izin_usaha', 'konfig', 'master/master_sub_izin_usaha/konfig'),
(345, 'master', 'Master_sub_izin_usaha', 'upload_file', 'master/master_sub_izin_usaha/upload_file'),
(346, 'master', 'Master_sub_izin_usaha', 'get_uri', 'master/master_sub_izin_usaha/get_uri'),
(347, 'master', 'Master_sub_izin_usaha', 'log_activity', 'master/master_sub_izin_usaha/log_activity'),
(348, 'master', 'Master_sub_izin_usaha', 'get_instance', 'master/master_sub_izin_usaha/get_instance'),
(349, 'master', 'Menu_master', '__construct', 'master/menu_master/__construct'),
(350, 'master', 'Menu_master', 'index', 'master/menu_master/index'),
(351, 'master', 'Menu_master', 'create', 'master/menu_master/create'),
(352, 'master', 'Menu_master', 'validate', 'master/menu_master/validate'),
(353, 'master', 'Menu_master', 'store', 'master/menu_master/store'),
(354, 'master', 'Menu_master', 'json', 'master/menu_master/json'),
(355, 'master', 'Menu_master', 'edit', 'master/menu_master/edit'),
(356, 'master', 'Menu_master', 'update', 'master/menu_master/update'),
(357, 'master', 'Menu_master', 'delete', 'master/menu_master/delete'),
(358, 'master', 'Menu_master', 'status', 'master/menu_master/status'),
(359, 'master', 'Menu_master', 'konfig', 'master/menu_master/konfig'),
(360, 'master', 'Menu_master', 'upload_file', 'master/menu_master/upload_file'),
(361, 'master', 'Menu_master', 'get_uri', 'master/menu_master/get_uri'),
(362, 'master', 'Menu_master', 'log_activity', 'master/menu_master/log_activity'),
(363, 'master', 'Menu_master', 'get_instance', 'master/menu_master/get_instance'),
(364, 'master', 'Produk', '__construct', 'master/produk/__construct'),
(365, 'master', 'Produk', 'index', 'master/produk/index'),
(366, 'master', 'Produk', 'create', 'master/produk/create'),
(367, 'master', 'Produk', 'validate', 'master/produk/validate'),
(368, 'master', 'Produk', 'store', 'master/produk/store'),
(369, 'master', 'Produk', 'json', 'master/produk/json'),
(370, 'master', 'Produk', 'edit', 'master/produk/edit'),
(371, 'master', 'Produk', 'update', 'master/produk/update'),
(372, 'master', 'Produk', 'delete', 'master/produk/delete'),
(373, 'master', 'Produk', 'status', 'master/produk/status'),
(374, 'master', 'Produk', 'konfig', 'master/produk/konfig'),
(375, 'master', 'Produk', 'upload_file', 'master/produk/upload_file'),
(376, 'master', 'Produk', 'get_uri', 'master/produk/get_uri'),
(377, 'master', 'Produk', 'log_activity', 'master/produk/log_activity'),
(378, 'master', 'Produk', 'get_instance', 'master/produk/get_instance'),
(379, 'master', 'Report', '__construct', 'master/report/__construct'),
(380, 'master', 'Report', 'index', 'master/report/index'),
(381, 'master', 'Report', 'create', 'master/report/create'),
(382, 'master', 'Report', 'validate', 'master/report/validate'),
(383, 'master', 'Report', 'store', 'master/report/store'),
(384, 'master', 'Report', 'json', 'master/report/json'),
(385, 'master', 'Report', 'edit', 'master/report/edit'),
(386, 'master', 'Report', 'update', 'master/report/update'),
(387, 'master', 'Report', 'delete', 'master/report/delete'),
(388, 'master', 'Report', 'status', 'master/report/status'),
(389, 'master', 'Report', 'generate', 'master/report/generate'),
(390, 'master', 'Report', 'konfig', 'master/report/konfig'),
(391, 'master', 'Report', 'upload_file', 'master/report/upload_file'),
(392, 'master', 'Report', 'get_uri', 'master/report/get_uri'),
(393, 'master', 'Report', 'log_activity', 'master/report/log_activity'),
(394, 'master', 'Report', 'get_instance', 'master/report/get_instance'),
(395, 'master', 'Role', '__construct', 'master/role/__construct'),
(396, 'master', 'Role', 'index', 'master/role/index'),
(397, 'master', 'Role', 'create', 'master/role/create'),
(398, 'master', 'Role', 'validate', 'master/role/validate'),
(399, 'master', 'Role', 'store', 'master/role/store'),
(400, 'master', 'Role', 'json', 'master/role/json'),
(401, 'master', 'Role', 'edit', 'master/role/edit'),
(402, 'master', 'Role', 'update', 'master/role/update'),
(403, 'master', 'Role', 'delete', 'master/role/delete'),
(404, 'master', 'Role', 'status', 'master/role/status'),
(405, 'master', 'Role', 'konfig', 'master/role/konfig'),
(406, 'master', 'Role', 'upload_file', 'master/role/upload_file'),
(407, 'master', 'Role', 'get_uri', 'master/role/get_uri'),
(408, 'master', 'Role', 'log_activity', 'master/role/log_activity'),
(409, 'master', 'Role', 'get_instance', 'master/role/get_instance'),
(410, 'master', 'Service', '__construct', 'master/service/__construct'),
(411, 'master', 'Service', 'index', 'master/service/index'),
(412, 'master', 'Service', 'create', 'master/service/create'),
(413, 'master', 'Service', 'validate', 'master/service/validate'),
(414, 'master', 'Service', 'store', 'master/service/store'),
(415, 'master', 'Service', 'json', 'master/service/json'),
(416, 'master', 'Service', 'edit', 'master/service/edit'),
(417, 'master', 'Service', 'update', 'master/service/update'),
(418, 'master', 'Service', 'delete', 'master/service/delete'),
(419, 'master', 'Service', 'status', 'master/service/status'),
(420, 'master', 'Service', 'konfig', 'master/service/konfig'),
(421, 'master', 'Service', 'upload_file', 'master/service/upload_file'),
(422, 'master', 'Service', 'get_uri', 'master/service/get_uri'),
(423, 'master', 'Service', 'log_activity', 'master/service/log_activity'),
(424, 'master', 'Service', 'get_instance', 'master/service/get_instance'),
(425, 'master', 'Site', '__construct', 'master/site/__construct'),
(426, 'master', 'Site', 'index', 'master/site/index'),
(427, 'master', 'Site', 'site_json', 'master/site/site_json'),
(428, 'master', 'Site', 'site_default', 'master/site/site_default'),
(429, 'master', 'Site', 'site_custom', 'master/site/site_custom'),
(430, 'master', 'Site', 'site_data', 'master/site/site_data'),
(431, 'master', 'Site', 'site_store', 'master/site/site_store'),
(432, 'master', 'Site', 'site_edit', 'master/site/site_edit'),
(433, 'master', 'Site', 'site_update', 'master/site/site_update'),
(434, 'master', 'Site', 'site_hidden', 'master/site/site_hidden'),
(435, 'master', 'Site', 'konfig', 'master/site/konfig'),
(436, 'master', 'Site', 'upload_file', 'master/site/upload_file'),
(437, 'master', 'Site', 'get_uri', 'master/site/get_uri'),
(438, 'master', 'Site', 'log_activity', 'master/site/log_activity'),
(439, 'master', 'Site', 'get_instance', 'master/site/get_instance'),
(440, 'master', 'Titleku', '__construct', 'master/titleku/__construct'),
(441, 'master', 'Titleku', 'index', 'master/titleku/index'),
(442, 'master', 'Titleku', 'create', 'master/titleku/create'),
(443, 'master', 'Titleku', 'validate', 'master/titleku/validate'),
(444, 'master', 'Titleku', 'store', 'master/titleku/store'),
(445, 'master', 'Titleku', 'json', 'master/titleku/json'),
(446, 'master', 'Titleku', 'edit', 'master/titleku/edit'),
(447, 'master', 'Titleku', 'update', 'master/titleku/update'),
(448, 'master', 'Titleku', 'delete', 'master/titleku/delete'),
(449, 'master', 'Titleku', 'status', 'master/titleku/status'),
(450, 'master', 'Titleku', 'konfig', 'master/titleku/konfig'),
(451, 'master', 'Titleku', 'upload_file', 'master/titleku/upload_file'),
(452, 'master', 'Titleku', 'get_uri', 'master/titleku/get_uri'),
(453, 'master', 'Titleku', 'log_activity', 'master/titleku/log_activity'),
(454, 'master', 'Titleku', 'get_instance', 'master/titleku/get_instance'),
(455, 'master', 'User', 'index', 'master/user/index'),
(456, 'master', 'User', 'json', 'master/user/json'),
(457, 'master', 'User', 'json_activity', 'master/user/json_activity'),
(458, 'master', 'User', 'store', 'master/user/store'),
(459, 'master', 'User', 'edit', 'master/user/edit'),
(460, 'master', 'User', 'editUser', 'master/user/edituser'),
(461, 'master', 'User', 'updateUser', 'master/user/updateuser'),
(462, 'master', 'User', 'update', 'master/user/update'),
(463, 'master', 'User', 'delete', 'master/user/delete'),
(464, 'master', 'User', 'password_check', 'master/user/password_check'),
(465, 'master', 'User', 'editUser_redirect', 'master/user/edituser_redirect'),
(466, 'master', 'User', '__construct', 'master/user/__construct'),
(467, 'master', 'User', 'konfig', 'master/user/konfig'),
(468, 'master', 'User', 'upload_file', 'master/user/upload_file'),
(469, 'master', 'User', 'get_uri', 'master/user/get_uri'),
(470, 'master', 'User', 'log_activity', 'master/user/log_activity'),
(471, 'master', 'User', 'get_instance', 'master/user/get_instance'),
(472, 'master', 'Usulan', '__construct', 'master/usulan/__construct'),
(473, 'master', 'Usulan', 'index', 'master/usulan/index'),
(474, 'master', 'Usulan', 'create', 'master/usulan/create'),
(475, 'master', 'Usulan', 'validate', 'master/usulan/validate'),
(476, 'master', 'Usulan', 'store', 'master/usulan/store'),
(477, 'master', 'Usulan', 'json', 'master/usulan/json'),
(478, 'master', 'Usulan', 'edit', 'master/usulan/edit'),
(479, 'master', 'Usulan', 'update', 'master/usulan/update'),
(480, 'master', 'Usulan', 'delete', 'master/usulan/delete'),
(481, 'master', 'Usulan', 'status', 'master/usulan/status'),
(482, 'master', 'Usulan', 'konfig', 'master/usulan/konfig'),
(483, 'master', 'Usulan', 'upload_file', 'master/usulan/upload_file'),
(484, 'master', 'Usulan', 'get_uri', 'master/usulan/get_uri'),
(485, 'master', 'Usulan', 'log_activity', 'master/usulan/log_activity'),
(486, 'master', 'Usulan', 'get_instance', 'master/usulan/get_instance'),
(487, 'master', 'Usulan_detail', '__construct', 'master/usulan_detail/__construct'),
(488, 'master', 'Usulan_detail', 'index', 'master/usulan_detail/index'),
(489, 'master', 'Usulan_detail', 'create', 'master/usulan_detail/create'),
(490, 'master', 'Usulan_detail', 'validate', 'master/usulan_detail/validate'),
(491, 'master', 'Usulan_detail', 'store', 'master/usulan_detail/store'),
(492, 'master', 'Usulan_detail', 'json', 'master/usulan_detail/json'),
(493, 'master', 'Usulan_detail', 'edit', 'master/usulan_detail/edit'),
(494, 'master', 'Usulan_detail', 'update', 'master/usulan_detail/update'),
(495, 'master', 'Usulan_detail', 'delete', 'master/usulan_detail/delete'),
(496, 'master', 'Usulan_detail', 'status', 'master/usulan_detail/status'),
(497, 'master', 'Usulan_detail', 'konfig', 'master/usulan_detail/konfig'),
(498, 'master', 'Usulan_detail', 'upload_file', 'master/usulan_detail/upload_file'),
(499, 'master', 'Usulan_detail', 'get_uri', 'master/usulan_detail/get_uri'),
(500, 'master', 'Usulan_detail', 'log_activity', 'master/usulan_detail/log_activity'),
(501, 'master', 'Usulan_detail', 'get_instance', 'master/usulan_detail/get_instance');

-- --------------------------------------------------------

--
-- Table structure for table `activity`
--

CREATE TABLE `activity` (
  `ip` varchar(255) DEFAULT NULL,
  `link` varchar(255) DEFAULT NULL,
  `get` longtext,
  `post` longtext,
  `user_id` int(11) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `activity`
--

INSERT INTO `activity` (`ip`, `link`, `get`, `post`, `user_id`, `created_at`) VALUES
('118.136.148.201', 'http://gatoko1.com/sop/master/user/editUser/6XmR9kAQpXD-j2AwEhMiO54SOxC8fXgNJVwrdGbiesI~', '[]', '[]', 1, '2019-02-19 10:59:26'),
('182.0.231.50', 'http://gatoko1.com/sop/', '[]', '[]', 1, '2019-03-25 11:32:10'),
('182.0.231.50', 'http://gatoko1.com/sop/report/users', '[]', '[]', 1, '2019-03-25 11:32:12'),
('182.0.231.50', 'http://gatoko1.com/sop/report/Users/ajaxall/', '[]', '{\"draw\":\"1\",\"columns\":[{\"data\":\"0\",\"name\":\"\",\"searchable\":\"true\",\"orderable\":\"true\",\"search\":{\"value\":\"\",\"regex\":\"false\"}},{\"data\":\"1\",\"name\":\"\",\"searchable\":\"true\",\"orderable\":\"true\",\"search\":{\"value\":\"\",\"regex\":\"false\"}},{\"data\":\"2\",\"name\":\"\",\"searchable\":\"true\",\"orderable\":\"true\",\"search\":{\"value\":\"\",\"regex\":\"false\"}},{\"data\":\"3\",\"name\":\"\",\"searchable\":\"true\",\"orderable\":\"true\",\"search\":{\"value\":\"\",\"regex\":\"false\"}},{\"data\":\"4\",\"name\":\"\",\"searchable\":\"true\",\"orderable\":\"true\",\"search\":{\"value\":\"\",\"regex\":\"false\"}},{\"data\":\"5\",\"name\":\"\",\"searchable\":\"true\",\"orderable\":\"true\",\"search\":{\"value\":\"\",\"regex\":\"false\"}},{\"data\":\"6\",\"name\":\"\",\"searchable\":\"true\",\"orderable\":\"true\",\"search\":{\"value\":\"\",\"regex\":\"false\"}},{\"data\":\"7\",\"name\":\"\",\"searchable\":\"true\",\"orderable\":\"true\",\"search\":{\"value\":\"\",\"regex\":\"false\"}},{\"data\":\"8\",\"name\":\"\",\"searchable\":\"true\",\"orderable\":\"true\",\"search\":{\"value\":\"\",\"regex\":\"false\"}},{\"data\":\"9\",\"name\":\"\",\"searchable\":\"true\",\"orderable\":\"true\",\"search\":{\"value\":\"\",\"regex\":\"false\"}},{\"data\":\"10\",\"name\":\"\",\"searchable\":\"true\",\"orderable\":\"true\",\"search\":{\"value\":\"\",\"regex\":\"false\"}}],\"start\":\"0\",\"length\":\"10\",\"search\":{\"value\":\"\",\"regex\":\"false\"}}', 1, '2019-03-25 11:32:13'),
('182.0.231.50', 'http://gatoko1.com/sop/index.php/master/user/editUser/rRntbEh0leW4k9gNhEWWCbHwo2zGf472OKDemzWpDYM~', '[]', '[]', 1, '2019-03-25 11:31:57'),
('182.0.231.50', 'http://gatoko1.com/sop/master/user/json_activity/9', '[]', '{\"draw\":\"1\",\"columns\":[{\"data\":\"ip\",\"name\":\"\",\"searchable\":\"true\",\"orderable\":\"false\",\"search\":{\"value\":\"\",\"regex\":\"false\"}},{\"data\":\"created_at\",\"name\":\"\",\"searchable\":\"true\",\"orderable\":\"true\",\"search\":{\"value\":\"\",\"regex\":\"false\"}},{\"data\":\"ip\",\"name\":\"\",\"searchable\":\"true\",\"orderable\":\"true\",\"search\":{\"value\":\"\",\"regex\":\"false\"}},{\"data\":\"link\",\"name\":\"\",\"searchable\":\"true\",\"orderable\":\"true\",\"search\":{\"value\":\"\",\"regex\":\"false\"}},{\"data\":\"post\",\"name\":\"\",\"searchable\":\"true\",\"orderable\":\"true\",\"search\":{\"value\":\"\",\"regex\":\"false\"}},{\"data\":\"get\",\"name\":\"\",\"searchable\":\"true\",\"orderable\":\"true\",\"search\":{\"value\":\"\",\"regex\":\"false\"}}],\"order\":[{\"column\":\"1\",\"dir\":\"asc\"}],\"start\":\"0\",\"length\":\"10\",\"search\":{\"value\":\"\",\"regex\":\"false\"}}', 1, '2019-03-25 11:31:57'),
('182.0.231.50', 'http://gatoko1.com/sop/index.php/master/user/editUser/rRntbEh0leW4k9gNhEWWCbHwo2zGf472OKDemzWpDYM~', '[]', '[]', 1, '2019-03-25 11:31:58'),
('182.0.231.50', 'http://gatoko1.com/sop/master/user/json_activity/9', '[]', '{\"draw\":\"1\",\"columns\":[{\"data\":\"ip\",\"name\":\"\",\"searchable\":\"true\",\"orderable\":\"false\",\"search\":{\"value\":\"\",\"regex\":\"false\"}},{\"data\":\"created_at\",\"name\":\"\",\"searchable\":\"true\",\"orderable\":\"true\",\"search\":{\"value\":\"\",\"regex\":\"false\"}},{\"data\":\"ip\",\"name\":\"\",\"searchable\":\"true\",\"orderable\":\"true\",\"search\":{\"value\":\"\",\"regex\":\"false\"}},{\"data\":\"link\",\"name\":\"\",\"searchable\":\"true\",\"orderable\":\"true\",\"search\":{\"value\":\"\",\"regex\":\"false\"}},{\"data\":\"post\",\"name\":\"\",\"searchable\":\"true\",\"orderable\":\"true\",\"search\":{\"value\":\"\",\"regex\":\"false\"}},{\"data\":\"get\",\"name\":\"\",\"searchable\":\"true\",\"orderable\":\"true\",\"search\":{\"value\":\"\",\"regex\":\"false\"}}],\"order\":[{\"column\":\"1\",\"dir\":\"asc\"}],\"start\":\"0\",\"length\":\"10\",\"search\":{\"value\":\"\",\"regex\":\"false\"}}', 1, '2019-03-25 11:31:59'),
('118.136.148.201', 'http://gatoko1.com/sop/master/user/editUser/6XmR9kAQpXD-j2AwEhMiO54SOxC8fXgNJVwrdGbiesI~', '[]', '[]', 1, '2019-02-19 11:03:04'),
('118.136.148.201', 'http://gatoko1.com/sop/master/user/updateUser', '[]', '{\"ids\":\"1\",\"name\":\"Smartsoft Studio\",\"email\":\"smartsoftstudio1@mail.com\",\"desc\":\"asda\"}', 1, '2019-02-19 11:02:53'),
('182.0.231.50', 'http://gatoko1.com/sop/index.php/master/user/editUser/rRntbEh0leW4k9gNhEWWCbHwo2zGf472OKDemzWpDYM~', '[]', '[]', 1, '2019-03-25 11:32:00'),
('182.0.231.50', 'http://gatoko1.com/sop/master/user/json_activity/9', '[]', '{\"draw\":\"1\",\"columns\":[{\"data\":\"ip\",\"name\":\"\",\"searchable\":\"true\",\"orderable\":\"false\",\"search\":{\"value\":\"\",\"regex\":\"false\"}},{\"data\":\"created_at\",\"name\":\"\",\"searchable\":\"true\",\"orderable\":\"true\",\"search\":{\"value\":\"\",\"regex\":\"false\"}},{\"data\":\"ip\",\"name\":\"\",\"searchable\":\"true\",\"orderable\":\"true\",\"search\":{\"value\":\"\",\"regex\":\"false\"}},{\"data\":\"link\",\"name\":\"\",\"searchable\":\"true\",\"orderable\":\"true\",\"search\":{\"value\":\"\",\"regex\":\"false\"}},{\"data\":\"post\",\"name\":\"\",\"searchable\":\"true\",\"orderable\":\"true\",\"search\":{\"value\":\"\",\"regex\":\"false\"}},{\"data\":\"get\",\"name\":\"\",\"searchable\":\"true\",\"orderable\":\"true\",\"search\":{\"value\":\"\",\"regex\":\"false\"}}],\"order\":[{\"column\":\"1\",\"dir\":\"asc\"}],\"start\":\"0\",\"length\":\"10\",\"search\":{\"value\":\"\",\"regex\":\"false\"}}', 1, '2019-03-25 11:32:01'),
('182.0.231.173', 'http://gatoko1.com/sop/index.php/home/get_autocomplete?term=ke', '{\"term\":\"ke\"}', '[]', 1, '2019-03-25 11:32:21'),
('182.0.231.173', 'http://gatoko1.com/sop/index.php/home/get_autocomplete?term=kementr', '{\"term\":\"kementr\"}', '[]', 1, '2019-03-25 11:32:22'),
('182.0.231.173', 'http://gatoko1.com/sop/index.php/home/get_autocomplete?term=kementr', '{\"term\":\"kementr\"}', '[]', 1, '2019-03-25 11:32:23'),
('182.0.197.180', 'http://gatoko1.com/sop/index.php/home/get_autocomplete?term=kementr', '{\"term\":\"kementr\"}', '[]', 1, '2019-03-25 11:32:24'),
('182.0.197.180', 'http://gatoko1.com/sop/login/logout', '[]', '[]', 1, '2019-03-25 11:32:31'),
('182.0.197.180', 'http://gatoko1.com/sop/index.php/login', '[]', '[]', NULL, '2019-03-25 11:32:31'),
('182.0.231.125', 'http://gatoko1.com/sop/login/lockscreen?user=smartsoft', '{\"user\":\"smartsoft\"}', '[]', NULL, '2019-03-25 11:32:38'),
('182.0.231.125', 'http://gatoko1.com/sop/login/act_login', '[]', '{\"username\":\"smartsoft\",\"password\":\"admin\"}', NULL, '2019-03-25 11:32:41'),
('182.0.231.125', 'http://gatoko1.com/sop/', '[]', '[]', 1, '2019-03-25 11:32:41'),
('182.0.231.125', 'http://gatoko1.com/sop/master/user/editUser/6XmR9kAQpXD-j2AwEhMiO54SOxC8fXgNJVwrdGbiesI~', '[]', '[]', 1, '2019-03-25 11:32:45'),
('182.0.231.125', 'http://gatoko1.com/sop/master/user/json_activity/1', '[]', '{\"draw\":\"1\",\"columns\":[{\"data\":\"ip\",\"name\":\"\",\"searchable\":\"true\",\"orderable\":\"false\",\"search\":{\"value\":\"\",\"regex\":\"false\"}},{\"data\":\"created_at\",\"name\":\"\",\"searchable\":\"true\",\"orderable\":\"true\",\"search\":{\"value\":\"\",\"regex\":\"false\"}},{\"data\":\"ip\",\"name\":\"\",\"searchable\":\"true\",\"orderable\":\"true\",\"search\":{\"value\":\"\",\"regex\":\"false\"}},{\"data\":\"link\",\"name\":\"\",\"searchable\":\"true\",\"orderable\":\"true\",\"search\":{\"value\":\"\",\"regex\":\"false\"}},{\"data\":\"post\",\"name\":\"\",\"searchable\":\"true\",\"orderable\":\"true\",\"search\":{\"value\":\"\",\"regex\":\"false\"}},{\"data\":\"get\",\"name\":\"\",\"searchable\":\"true\",\"orderable\":\"true\",\"search\":{\"value\":\"\",\"regex\":\"false\"}}],\"order\":[{\"column\":\"1\",\"dir\":\"asc\"}],\"start\":\"0\",\"length\":\"10\",\"search\":{\"value\":\"\",\"regex\":\"false\"}}', 1, '2019-03-25 11:32:46'),
('118.136.148.201', 'http://gatoko1.com/sop/master/user/editUser/6XmR9kAQpXD-j2AwEhMiO54SOxC8fXgNJVwrdGbiesI~', '[]', '[]', 1, '2019-02-19 10:59:26'),
('118.136.148.201', 'http://gatoko1.com/sop/master/user/editUser/6XmR9kAQpXD-j2AwEhMiO54SOxC8fXgNJVwrdGbiesI~', '[]', '[]', 1, '2019-02-19 11:03:04'),
('118.136.148.201', 'http://gatoko1.com/sop/master/user/updateUser', '[]', '{\"ids\":\"1\",\"name\":\"Smartsoft Studio\",\"email\":\"smartsoftstudio1@mail.com\",\"desc\":\"asda\"}', 1, '2019-02-19 11:02:53');

-- --------------------------------------------------------

--
-- Table structure for table `file`
--

CREATE TABLE `file` (
  `id` int(11) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `mime` varchar(255) DEFAULT NULL,
  `dir` varchar(255) DEFAULT NULL,
  `table` varchar(255) DEFAULT NULL,
  `table_id` int(11) DEFAULT NULL,
  `status` varchar(255) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `file`
--

INSERT INTO `file` (`id`, `name`, `mime`, `dir`, `table`, `table_id`, `status`, `created_at`, `updated_at`) VALUES
(180, '6950c16c9bcc6995f376b297f163175910001.png', 'image/png', 'webfile/users/6950c16c9bcc6995f376b297f163175910001.png', 'user', 13, 'ENABLE', '2019-09-04 15:08:01', '2019-09-09 15:40:14'),
(184, '6950c16c9bcc6995f376b297f163175929730.png', 'image/png', 'webfile/users/6950c16c9bcc6995f376b297f163175929730.png', 'user', 14, 'ENABLE', '2019-09-05 12:56:42', NULL),
(185, '6950c16c9bcc6995f376b297f163175952937.jpeg', 'image/jpeg', 'webfile/users/6950c16c9bcc6995f376b297f163175952937.jpeg', 'user', 15, 'ENABLE', '2019-09-05 12:57:38', NULL),
(207, '6950c16c9bcc6995f376b297f163175935337.jpg', 'image/png', 'webfile/project/project-ke-1/6950c16c9bcc6995f376b297f163175935337.jpg', 'tbl_project', 1, 'ENABLE', '2019-09-08 13:00:54', NULL),
(208, '6950c16c9bcc6995f376b297f163175935337.PNG', 'image/png', 'webfile/project/project-ke-1/6950c16c9bcc6995f376b297f163175935337.PNG', 'tbl_project_gambar', 1, 'ENABLE', '2019-09-08 13:00:54', NULL),
(209, '6950c16c9bcc6995f376b297f16317594340.jpeg', 'image/png', 'webfile/project/project-ke-2-dengan-mutli-imput-baru/6950c16c9bcc6995f376b297f16317594340.jpeg', 'tbl_project', 2, 'ENABLE', '2019-09-09 09:26:03', NULL),
(218, '6950c16c9bcc6995f376b297f163175926824.png', 'image/png', 'webfile/project/project-ke-2-dengan-mutli-imput-baru/6950c16c9bcc6995f376b297f163175926824.png', 'tbl_project_gambar', 2, 'ENABLE', '2019-09-09 16:01:43', NULL),
(219, '6950c16c9bcc6995f376b297f163175980996.png', 'image/png', 'webfile/project/project-ke-2-dengan-mutli-imput-baru/6950c16c9bcc6995f376b297f163175980996.png', 'tbl_project_gambar', 2, 'ENABLE', '2019-09-09 16:02:29', NULL),
(220, '6950c16c9bcc6995f376b297f163175982881.jpeg', 'image/jpeg', 'webfile/project/project-ke-2-dengan-mutli-imput-baru/6950c16c9bcc6995f376b297f163175982881.jpeg', 'tbl_project_gambar', 2, 'ENABLE', '2019-09-09 16:03:47', NULL),
(222, '6950c16c9bcc6995f376b297f1631759281091.jpg', 'image/jpeg', 'webfile/project/proyek-dengan-input-return-baru/6950c16c9bcc6995f376b297f1631759281091.jpg', 'tbl_project_gambar', 3, 'ENABLE', '2019-09-10 09:34:24', NULL),
(223, '6950c16c9bcc6995f376b297f1631759281092.jpg', 'image/jpeg', 'webfile/project/proyek-dengan-input-return-baru/6950c16c9bcc6995f376b297f1631759281092.jpg', 'tbl_project_gambar', 3, 'ENABLE', '2019-09-10 09:34:24', NULL),
(224, '6950c16c9bcc6995f376b297f1631759281093.jpg', 'image/jpeg', 'webfile/project/proyek-dengan-input-return-baru/6950c16c9bcc6995f376b297f1631759281093.jpg', 'tbl_project_gambar', 3, 'ENABLE', '2019-09-10 09:34:24', NULL),
(229, '6950c16c9bcc6995f376b297f163175964524.PNG', 'image/png', 'webfile/project/proyek-dengan-input-return-baru/6950c16c9bcc6995f376b297f163175964524.PNG', 'tbl_project', 3, 'ENABLE', '2019-09-10 11:47:16', NULL),
(230, '6950c16c9bcc6995f376b297f163175933005.jpg', 'image/jpeg', 'webfile/project/project-milik-mitra-2/6950c16c9bcc6995f376b297f163175933005.jpg', 'tbl_project', 4, 'ENABLE', '2019-09-10 15:13:08', NULL),
(231, '6950c16c9bcc6995f376b297f1631759330051.jpg', 'image/jpeg', 'webfile/project/project-milik-mitra-2/6950c16c9bcc6995f376b297f1631759330051.jpg', 'tbl_project_gambar', 4, 'ENABLE', '2019-09-10 15:13:08', NULL),
(232, '6950c16c9bcc6995f376b297f1631759330052.jpg', 'image/jpeg', 'webfile/project/project-milik-mitra-2/6950c16c9bcc6995f376b297f1631759330052.jpg', 'tbl_project_gambar', 4, 'ENABLE', '2019-09-10 15:13:08', NULL),
(233, '6950c16c9bcc6995f376b297f163175966348.png', 'image/png', 'webfile/investor/6950c16c9bcc6995f376b297f163175966348.png', 'tbl_investor', 1, 'ENABLE', '2019-09-11 18:38:43', '2019-09-12 09:02:36'),
(234, '6950c16c9bcc6995f376b297f163175993576.png', 'image/png', 'webfile/blog/6950c16c9bcc6995f376b297f163175993576.png', 'user', 3, 'ENABLE', '2019-09-12 00:00:00', '2019-09-20 10:47:49'),
(235, '6950c16c9bcc6995f376b297f16317599653.jpeg', 'image/jpeg', 'webfile/blog/6950c16c9bcc6995f376b297f16317599653.jpeg', 'tbl_blog', 4, 'ENABLE', '2019-09-12 00:00:00', NULL),
(236, '6950c16c9bcc6995f376b297f163175973684.png', 'image/png', 'webfile/blog/6950c16c9bcc6995f376b297f163175973684.png', 'tbl_blog', 5, 'ENABLE', '2019-09-12 00:00:00', '2019-09-12 00:00:00'),
(237, 'default.png', 'image/png', 'webfile/investor/default.png', 'tbl_investor', 2, 'ENABLE', '2019-09-12 08:24:06', '2019-09-12 08:24:06'),
(241, '6950c16c9bcc6995f376b297f163175969710.png', 'image/png', 'webfile/investor/doc/6950c16c9bcc6995f376b297f163175969710.png', 'tbl_investor_ktp', 1, 'ENABLE', '2019-09-12 14:34:04', NULL),
(242, '6950c16c9bcc6995f376b297f1631759697101.png', 'image/png', 'webfile/investor/doc/6950c16c9bcc6995f376b297f1631759697101.png', 'tbl_investor_npwp', 1, 'ENABLE', '2019-09-12 14:34:04', NULL),
(243, '6950c16c9bcc6995f376b297f163175952771.png', 'image/png', 'webfile/project/testing-nbaru-multi-image/6950c16c9bcc6995f376b297f163175952771.png', 'tbl_project', 5, 'ENABLE', '2019-09-12 18:58:30', NULL),
(244, '6950c16c9bcc6995f376b297f1631759527711.png', 'image/png', 'webfile/project/testing-nbaru-multi-image/6950c16c9bcc6995f376b297f1631759527711.png', 'tbl_project_gambar', 5, 'ENABLE', '2019-09-12 18:58:30', NULL),
(245, '6950c16c9bcc6995f376b297f163175952771.jpg', 'image/jpeg', 'webfile/project/testing-nbaru-multi-image/6950c16c9bcc6995f376b297f163175952771.jpg', 'tbl_project_gambar', 5, 'ENABLE', '2019-09-12 18:58:31', NULL),
(246, '6950c16c9bcc6995f376b297f1631759527712.png', 'image/png', 'webfile/project/testing-nbaru-multi-image/6950c16c9bcc6995f376b297f1631759527712.png', 'tbl_project_gambar', 5, 'ENABLE', '2019-09-12 18:58:31', NULL),
(247, 'default.png', 'image/png', 'webfile/investor/default.png', 'tbl_investor', 3, 'ENABLE', '2019-09-13 10:03:27', NULL),
(248, '6950c16c9bcc6995f376b297f163175957342.png', 'image/png', 'webfile/project/pengembalian-modal-kesatu/6950c16c9bcc6995f376b297f163175957342.png', 'tbl_project', 6, 'ENABLE', '2019-09-17 09:48:23', NULL),
(249, '6950c16c9bcc6995f376b297f1631759573421.png', 'image/png', 'webfile/project/pengembalian-modal-kesatu/6950c16c9bcc6995f376b297f1631759573421.png', 'tbl_project_gambar', 6, 'ENABLE', '2019-09-17 09:48:23', NULL),
(250, '6950c16c9bcc6995f376b297f1631759573422.png', 'image/png', 'webfile/project/pengembalian-modal-kesatu/6950c16c9bcc6995f376b297f1631759573422.png', 'tbl_project_gambar', 6, 'ENABLE', '2019-09-17 09:48:23', NULL),
(251, '6950c16c9bcc6995f376b297f1631759573423.png', 'image/png', 'webfile/project/pengembalian-modal-kesatu/6950c16c9bcc6995f376b297f1631759573423.png', 'tbl_project_gambar', 6, 'ENABLE', '2019-09-17 09:48:23', NULL),
(252, '6950c16c9bcc6995f376b297f1631759573424.png', 'image/png', 'webfile/project/pengembalian-modal-kesatu/6950c16c9bcc6995f376b297f1631759573424.png', 'tbl_project_gambar', 6, 'ENABLE', '2019-09-17 09:48:23', NULL),
(253, '6950c16c9bcc6995f376b297f1631759573425.png', 'image/png', 'webfile/project/pengembalian-modal-kesatu/6950c16c9bcc6995f376b297f1631759573425.png', 'tbl_project_gambar', 6, 'ENABLE', '2019-09-17 09:48:23', NULL),
(254, 'default.png', 'image/png', 'webfile/investor/default.png', 'tbl_investor', 4, 'ENABLE', '2019-09-17 15:01:51', NULL),
(255, '6950c16c9bcc6995f376b297f163175998103.jpg', 'image/jpeg', 'webfile/blog/6950c16c9bcc6995f376b297f163175998103.jpg', 'tbl_blog', 3, 'ENABLE', '2019-09-20 00:00:00', '2019-09-20 10:52:11'),
(256, '6950c16c9bcc6995f376b297f163175955499.png', 'image/png', 'webfile/users/6950c16c9bcc6995f376b297f163175955499.png', 'user', 16, 'ENABLE', '2019-09-20 11:38:46', NULL),
(257, '6950c16c9bcc6995f376b297f163175926546.png', 'image/png', 'webfile/project/project-milik-mitra-ke-2/6950c16c9bcc6995f376b297f163175926546.png', 'tbl_project', 7, 'ENABLE', '2019-09-20 11:40:05', NULL),
(258, '6950c16c9bcc6995f376b297f1631759265461.png', 'image/png', 'webfile/project/project-milik-mitra-ke-2/6950c16c9bcc6995f376b297f1631759265461.png', 'tbl_project_gambar', 7, 'ENABLE', '2019-09-20 11:40:05', NULL),
(259, '6950c16c9bcc6995f376b297f163175926546.jpeg', 'image/jpeg', 'webfile/project/project-milik-mitra-ke-2/6950c16c9bcc6995f376b297f163175926546.jpeg', 'tbl_project_gambar', 7, 'ENABLE', '2019-09-20 11:40:05', NULL),
(260, '6950c16c9bcc6995f376b297f1631759265462.png', 'image/png', 'webfile/project/project-milik-mitra-ke-2/6950c16c9bcc6995f376b297f1631759265462.png', 'tbl_project_gambar', 7, 'ENABLE', '2019-09-20 11:40:05', NULL),
(261, '6950c16c9bcc6995f376b297f163175926546.jpg', 'image/jpeg', 'webfile/project/project-milik-mitra-ke-2/6950c16c9bcc6995f376b297f163175926546.jpg', 'tbl_project_gambar', 7, 'ENABLE', '2019-09-20 11:40:05', NULL),
(262, '6950c16c9bcc6995f376b297f163175913778.png', 'image/png', 'webfile/invest/6950c16c9bcc6995f376b297f163175913778.png', 'tbl_project_invest', 9, 'ENABLE', '2019-09-24 10:34:10', '2019-09-24 10:34:10'),
(263, 'default.png', 'image/png', 'webfile/investor/default.png', 'tbl_investor', 5, 'ENABLE', '2019-09-26 10:05:21', NULL),
(269, 'default.png', 'image/png', 'webfile/investor/default.png', 'tbl_investor', 12, 'ENABLE', '2019-09-26 10:34:52', NULL),
(270, 'default.png', 'image/png', 'webfile/investor/default.png', 'tbl_investor', 13, 'ENABLE', '2019-09-26 10:42:26', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `grafik`
--

CREATE TABLE `grafik` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `value` varchar(255) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `grafik`
--

INSERT INTO `grafik` (`id`, `name`, `value`) VALUES
(1, 'Testing', '-30'),
(2, 'Testing 2', '20'),
(3, 'Testing 2', '30'),
(4, 'testing2', '40'),
(5, 'testing 2', '50'),
(6, 'testing 2', '20'),
(7, 'testing 2', '10'),
(8, 'testing 2', '15'),
(9, 'testing 2', '20'),
(10, 'testing 2', '25'),
(11, 'testing 2', '35'),
(12, 'testing 2', '45');

-- --------------------------------------------------------

--
-- Table structure for table `keys`
--

CREATE TABLE `keys` (
  `id` int(11) NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `key` varchar(255) DEFAULT NULL,
  `level` varchar(255) DEFAULT NULL,
  `ignore_limits` varchar(255) DEFAULT NULL,
  `is_private_key` varchar(255) DEFAULT NULL,
  `ip_addresses` varchar(255) DEFAULT NULL,
  `date_created` datetime DEFAULT NULL,
  `status` enum('ENABLE','DISABLE') DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `keys`
--

INSERT INTO `keys` (`id`, `user_id`, `key`, `level`, `ignore_limits`, `is_private_key`, `ip_addresses`, `date_created`, `status`, `created_at`, `updated_at`) VALUES
(1, 0, '35d3d08c3d7b7f445ceb8e726a87b26c', '0', '0', '0', '123', '2017-10-12 13:34:33', 'ENABLE', NULL, '2019-02-18 17:04:00');

-- --------------------------------------------------------

--
-- Table structure for table `konfig`
--

CREATE TABLE `konfig` (
  `id` int(11) NOT NULL,
  `slug` varchar(255) DEFAULT NULL,
  `value` text,
  `status` enum('ENABLE','DISABLE') DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `konfig`
--

INSERT INTO `konfig` (`id`, `slug`, `value`, `status`, `created_at`, `updated_at`) VALUES
(6, 'APPLICATION', 'AGNOV', 'ENABLE', '2019-02-18 15:28:44', '2019-06-26 13:56:36'),
(7, 'LOGO', 'https://agnov.id/assets/icon.png', 'ENABLE', '2019-02-18 15:29:32', '2019-04-29 10:56:09'),
(8, 'LOGIN_BACKGROUND', 'background-image: url(\'https://coloredbrain.com/wp-content/uploads/2016/07/login-background.jpg\');background-size: cover;background-position: center;', 'ENABLE', '2019-02-18 15:29:52', '2019-04-29 10:57:19'),
(9, 'COLOR_HEADER', 'background: linear-gradient(to right,#0052D4,#65C7F7);', 'DISABLE', '2019-02-18 15:30:24', '2019-02-18 15:31:08'),
(10, 'VERSION', '1.0.0', 'ENABLE', '2019-02-18 15:30:39', NULL),
(11, 'COPYRIGHT', '© 2019 <a href=\"http://smartsoftstudio.com/\" target=\"_blank\">SmartSoft Studio</a>.</strong> All rights     reserved.', 'ENABLE', '2019-02-18 15:32:01', '2019-02-19 10:27:32'),
(12, 'SKIN', 'skin-purple-light', 'ENABLE', '2019-02-18 15:34:01', '2019-09-05 13:03:19'),
(13, 'TITLE_APPLICATION', 'AGNOV | Admin', 'ENABLE', '2019-02-18 15:39:54', NULL),
(14, 'APPLICATION_SMALL', 'AN', 'ENABLE', '2019-02-18 15:42:41', '2019-02-18 15:43:24'),
(15, 'LOGIN_BOX', 'background : #fff !important ; ', 'ENABLE', '2019-02-18 15:45:53', '2019-02-18 15:58:53'),
(16, 'TITLE_LOGIN_APPLICATION', 'Smartsoft | Login', 'ENABLE', '2019-02-18 15:47:41', NULL),
(17, 'LOGIN_TITLE', 'LOGIN ADMIN', 'ENABLE', '2019-02-18 15:48:55', NULL),
(24, 'LOGIN', '1', 'ENABLE', '2019-02-21 14:12:14', '2019-02-21 16:33:07'),
(25, 'email-template', '<!DOCTYPE html PUBLIC \"-//W3C//DTD XHTML 1.0 Strict//EN\" \"http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd\">\r\n<html xmlns=\"http://www.w3.org/1999/xhtml\">\r\n\r\n<head>\r\n    <meta http-equiv=\"Content-Type\" content=\"text/html; charset=utf-8\" />\r\n    <meta name=\"viewport\" content=\"width=device-width\" />\r\n\r\n\r\n    <style type=\"text/css\">\r\n        /* Your custom styles go here */\r\n        * {\r\n            margin: 0;\r\n            padding: 0;\r\n            font-size: 100%;\r\n            font-family: \'Avenir Next\', \"Helvetica Neue\", \"Helvetica\", Helvetica, Arial, sans-serif;\r\n            line-height: 1.65;\r\n        }\r\n\r\n        img {\r\n            max-width: 100%;\r\n            margin: 0 auto;\r\n            display: block;\r\n        }\r\n\r\n        body,\r\n        .body-wrap {\r\n            width: 100% !important;\r\n            height: 100%;\r\n            background: #f8f8f8;\r\n        }\r\n\r\n        a {\r\n            color: #71bc37;\r\n            text-decoration: none;\r\n        }\r\n\r\n        a:hover {\r\n            text-decoration: underline;\r\n        }\r\n\r\n        .text-center {\r\n            text-align: center;\r\n        }\r\n\r\n        .text-right {\r\n            text-align: right;\r\n        }\r\n\r\n        .text-left {\r\n            text-align: left;\r\n        }\r\n\r\n        .button {\r\n            display: inline-block;\r\n            color: white;\r\n            background: #71bc37;\r\n            border: solid #71bc37;\r\n            border-width: 10px 20px 8px;\r\n            font-weight: bold;\r\n            border-radius: 4px;\r\n        }\r\n\r\n        .button:hover {\r\n            text-decoration: none;\r\n        }\r\n\r\n        h1,\r\n        h2,\r\n        h3,\r\n        h4,\r\n        h5,\r\n        h6 {\r\n            margin-bottom: 20px;\r\n            line-height: 1.25;\r\n        }\r\n\r\n        h1 {\r\n            font-size: 32px;\r\n        }\r\n\r\n        h2 {\r\n            font-size: 28px;\r\n        }\r\n\r\n        h3 {\r\n            font-size: 24px;\r\n        }\r\n\r\n        h4 {\r\n            font-size: 20px;\r\n        }\r\n\r\n        h5 {\r\n            font-size: 16px;\r\n        }\r\n\r\n        p,\r\n        ul,\r\n        ol {\r\n            font-size: 16px;\r\n            font-weight: normal;\r\n            margin-bottom: 20px;\r\n        }\r\n\r\n        .container {\r\n            display: block !important;\r\n            clear: both !important;\r\n            margin: 0 auto !important;\r\n            max-width: 580px !important;\r\n        }\r\n\r\n        .container table {\r\n            width: 100% !important;\r\n            border-collapse: collapse;\r\n        }\r\n\r\n        .container .masthead {\r\n            padding: 80px 0;\r\n            background: #71bc37;\r\n            color: white;\r\n        }\r\n\r\n        .container .masthead h1 {\r\n            margin: 0 auto !important;\r\n            max-width: 90%;\r\n            text-transform: uppercase;\r\n        }\r\n\r\n        .container .content {\r\n            background: white;\r\n            padding: 30px 35px;\r\n        }\r\n\r\n        .container .content.footer {\r\n            background: none;\r\n        }\r\n\r\n        .container .content.footer p {\r\n            margin-bottom: 0;\r\n            color: #888;\r\n            text-align: center;\r\n            font-size: 14px;\r\n        }\r\n\r\n        .container .content.footer a {\r\n            color: #888;\r\n            text-decoration: none;\r\n            font-weight: bold;\r\n        }\r\n\r\n        .container .content.footer a:hover {\r\n            text-decoration: underline;\r\n        }\r\n\r\n    </style>\r\n</head>\r\n\r\n<body>\r\n    <table class=\"body-wrap\">\r\n        <tr>\r\n            <td class=\"container\">\r\n\r\n                <!-- Message start -->\r\n                <table>\r\n                    <tr>\r\n                        <td align=\"center\" class=\"masthead\">\r\n\r\n                            <h1>Something Big...</h1>\r\n\r\n                        </td>\r\n                    </tr>\r\n                    <tr>\r\n                        <td class=\"content\">\r\n\r\n                            <h2>Hi Stranger,</h2>\r\n\r\n                            <p>Kielbasa venison ball tip shankle. Boudin prosciutto landjaeger, pancetta jowl turkey tri-tip porchetta beef pork loin drumstick. Frankfurter short ribs kevin pig ribeye drumstick bacon kielbasa. Pork loin brisket biltong, pork belly filet mignon ribeye pig ground round porchetta turducken turkey. Pork belly beef ribs sausage ham hock, ham doner frankfurter pork chop tail meatball beef pig meatloaf short ribs shoulder. Filet mignon ham hock kielbasa beef ribs shank. Venison swine beef ribs sausage pastrami shoulder.</p>\r\n\r\n                            <table>\r\n                                <tr>\r\n                                    <td align=\"center\">\r\n                                        <p>\r\n                                            <a href=\"#\" class=\"button\">Share the Awesomeness</a>\r\n                                        </p>\r\n                                    </td>\r\n                                </tr>\r\n                            </table>\r\n\r\n                            <p>By the way, if you\'re wondering where you can find more of this fine meaty filler, visit <a href=\"http://baconipsum.com\">Bacon Ipsum</a>.</p>\r\n\r\n                            <p><em>– Mr. Pen</em></p>\r\n\r\n                        </td>\r\n                    </tr>\r\n                </table>\r\n\r\n            </td>\r\n        </tr>\r\n        <tr>\r\n            <td class=\"container\">\r\n\r\n                <!-- Message start -->\r\n                <table>\r\n                    <tr>\r\n                        <td class=\"content footer\" align=\"center\">\r\n                            <p>Sent by <a href=\"#\">Company Name</a>, 1234 Yellow Brick Road, OZ, 99999</p>\r\n                            <p><a href=\"mailto:\">hello@company.com</a> | <a href=\"#\">Unsubscribe</a></p>\r\n                        </td>\r\n                    </tr>\r\n                </table>\r\n\r\n            </td>\r\n        </tr>\r\n    </table>\r\n</body>\r\n\r\n</html>\r\n', 'ENABLE', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `logs`
--

CREATE TABLE `logs` (
  `id` int(11) NOT NULL,
  `uri` varchar(255) NOT NULL,
  `method` varchar(6) NOT NULL,
  `params` text,
  `api_key` varchar(40) NOT NULL,
  `ip_address` varchar(45) NOT NULL,
  `time` int(11) NOT NULL,
  `rtime` float DEFAULT NULL,
  `authorized` varchar(1) NOT NULL,
  `response_code` smallint(3) DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `menu_master`
--

CREATE TABLE `menu_master` (
  `id` int(11) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `icon` varchar(255) DEFAULT NULL,
  `link` varchar(255) DEFAULT NULL,
  `urutan` varchar(255) DEFAULT NULL,
  `parent` varchar(255) DEFAULT NULL,
  `notif` varchar(255) DEFAULT NULL,
  `status` enum('ENABLE','DISABLE') DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `menu_master`
--

INSERT INTO `menu_master` (`id`, `name`, `icon`, `link`, `urutan`, `parent`, `notif`, `status`, `created_at`, `updated_at`) VALUES
(1, 'Dashboard', 'fa fa-dashboard', '/admin', '0', '0', '', 'ENABLE', '2019-01-17 14:33:33', '2019-09-05 09:24:25'),
(20, 'Investor', 'fa fa-users', 'admin/investor', '4', '0', '', 'ENABLE', '2019-09-04 21:58:18', '2019-09-10 14:34:00'),
(21, 'Master', 'fa fa-database', '#', '6', '0', '', 'ENABLE', '2019-09-05 08:50:16', '2019-09-11 10:51:11'),
(22, 'User', 'fa fa-user', 'admin/user', '5', '0', '', 'ENABLE', '2019-09-05 08:51:03', '2019-09-11 10:50:57'),
(23, 'Project', 'fa fa-archive', 'admin/project', '2', '0', '', 'ENABLE', '2019-09-05 12:59:18', '2019-09-10 14:33:46'),
(24, 'Blog', 'fa fa-newspaper-o', 'admin/blog', '3', '0', '', 'ENABLE', '2019-09-05 13:01:21', '2019-09-10 14:33:54'),
(25, 'Pengaturan', 'fa fa-cog', '#', '7', '0', '', 'ENABLE', '2019-09-05 13:06:20', '2019-09-11 10:51:18'),
(26, 'Webpage', 'fa fa-link', 'admin/webpage', '0', '25', '', 'ENABLE', '2019-09-05 13:07:23', '2019-09-11 22:22:03'),
(27, 'Cara Kerja', 'fa fa-gear', 'admin/howswork', '1', '25', '', 'ENABLE', '2019-09-05 14:09:47', NULL),
(28, 'Investasi', 'fa fa-bar-chart', 'admin/investasi/', '1', '0', '', 'ENABLE', '2019-09-10 14:32:35', '2019-09-10 14:33:31'),
(29, 'Agama', 'fa fa-circle-thin', 'admin/master/agama', '0', '21', '', 'ENABLE', '2019-09-11 10:49:28', '2019-09-11 10:49:58'),
(30, 'Pendidikan', 'fa fa-book', 'admin/master/pendidikan', '1', '21', '', 'ENABLE', '2019-09-11 10:52:57', NULL),
(31, 'Provinsi', 'fa fa-map-marker', 'admin/master/provinsi', '2', '21', '', 'ENABLE', '2019-09-11 10:54:15', '2019-09-11 10:57:14'),
(32, 'Kota', 'fa fa-map-signs', 'admin/master/kota', '3', '21', '', 'ENABLE', '2019-09-11 10:56:55', NULL),
(33, 'Sumber Dana', 'fa fa-money', 'admin/master/sumberdana', '4', '21', '', 'ENABLE', '2019-09-11 10:58:53', NULL),
(34, 'Pekerjaan', 'fa fa-cloud', 'admin/master/pekerjaan', '5', '21', '', 'ENABLE', '2019-09-11 11:01:00', NULL),
(35, 'Gaji', 'fa fa-money', 'admin/master/gaji', '6', '21', '', 'ENABLE', '2019-09-11 11:01:26', '2019-09-11 12:08:42'),
(36, 'Bank', 'fa fa-bank', 'admin/master/bank', '7', '21', '', 'ENABLE', '2019-09-11 11:02:24', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `report`
--

CREATE TABLE `report` (
  `id` int(11) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `query` longtext,
  `header` varchar(255) DEFAULT NULL,
  `status` enum('ENABLE','DISABLE') DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `role`
--

CREATE TABLE `role` (
  `id` int(11) NOT NULL,
  `role` varchar(255) DEFAULT NULL,
  `status` enum('DISABLE','ENABLE') DEFAULT NULL,
  `menu` text,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `role`
--

INSERT INTO `role` (`id`, `role`, `status`, `menu`, `created_at`, `updated_at`) VALUES
(17, 'Super Admin', 'ENABLE', '[\"1\",\"28\",\"23\",\"24\",\"20\",\"22\",\"21\",\"29\",\"30\",\"31\",\"32\",\"33\",\"34\",\"35\",\"36\",\"25\",\"26\",\"27\"]', '2018-10-12 17:03:59', '2019-09-11 11:02:40'),
(18, 'Mitra', 'ENABLE', '[\"1\",\"28\",\"23\"]', '2019-09-05 12:28:50', '2019-09-12 09:30:35');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_agama`
--

CREATE TABLE `tbl_agama` (
  `id` int(11) NOT NULL,
  `value` varchar(225) DEFAULT NULL,
  `status` enum('ENABLE','DISABLE') DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_agama`
--

INSERT INTO `tbl_agama` (`id`, `value`, `status`, `created_at`, `updated_at`) VALUES
(1, 'Islam', 'ENABLE', '2019-09-11 21:11:38', NULL),
(2, 'Kristen Protestan', 'ENABLE', '2019-09-11 21:13:29', NULL),
(3, 'Katolik', 'ENABLE', '2019-09-11 21:13:35', NULL),
(4, 'Hindu', 'ENABLE', '2019-09-11 21:13:40', NULL),
(5, 'Buddha', 'ENABLE', '2019-09-11 21:13:45', NULL),
(6, 'Kong Hu Cu', 'ENABLE', '2019-09-11 21:13:50', NULL),
(7, 'Lain - Lain', 'ENABLE', '2019-09-11 21:13:57', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_bank`
--

CREATE TABLE `tbl_bank` (
  `id` int(11) NOT NULL,
  `value` varchar(225) DEFAULT NULL,
  `status` enum('ENABLE','DISABLE') DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_bank`
--

INSERT INTO `tbl_bank` (`id`, `value`, `status`, `created_at`, `updated_at`) VALUES
(1, 'BANK BRI', 'ENABLE', '2019-09-11 21:43:47', NULL),
(2, 'BANK EKSPOR INDONESIA', 'ENABLE', '2019-09-11 21:43:58', NULL),
(3, 'BANK BRI SYARIAH', 'ENABLE', '2019-09-11 21:44:10', NULL),
(4, 'BANK MANDIRI', 'ENABLE', '2019-09-11 21:44:18', NULL),
(5, 'BANK BNI', 'ENABLE', '2019-09-11 21:44:24', NULL),
(6, 'BANK BNI SYARIAH', 'ENABLE', '2019-09-11 21:44:32', NULL),
(7, 'BANK DANAMON', 'ENABLE', '2019-09-11 21:44:37', NULL),
(8, 'BANK SINARMAS', 'ENABLE', '2019-09-11 21:44:44', NULL),
(9, 'PERMATA BANK', 'ENABLE', '2019-09-11 21:44:50', NULL),
(10, 'BANK BCA', 'ENABLE', '2019-09-11 21:44:59', NULL),
(11, 'BANK BCA SYARIAH', 'ENABLE', '2019-09-11 21:45:08', NULL),
(12, 'BANK BII', 'ENABLE', '2019-09-11 21:45:14', NULL),
(13, 'BANK PANIN', 'ENABLE', '2019-09-11 21:45:23', NULL),
(14, 'BANK ARTA NIAGA KENCANA', 'ENABLE', '2019-09-11 21:45:36', NULL),
(15, 'BANK CIMB NIAGA', 'ENABLE', '2019-09-11 21:45:46', NULL),
(16, 'BANK BUANA IND', 'ENABLE', '2019-09-11 21:45:57', NULL),
(17, 'BANK LIPPO', 'ENABLE', '2019-09-11 21:46:06', NULL),
(18, 'BANK NISP', 'ENABLE', '2019-09-11 21:46:12', NULL),
(19, 'AMERICAN EXPRESS BANK LTD', 'ENABLE', '2019-09-11 21:46:28', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_blog`
--

CREATE TABLE `tbl_blog` (
  `id` int(11) NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `title` varchar(225) DEFAULT NULL,
  `slug` varchar(225) DEFAULT NULL,
  `deskripsi` text,
  `view` int(11) DEFAULT NULL,
  `public` enum('ENABLE','DISABLE') DEFAULT NULL,
  `status` enum('ENABLE','DISABLE') DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_blog`
--

INSERT INTO `tbl_blog` (`id`, `user_id`, `title`, `slug`, `deskripsi`, `view`, `public`, `status`, `created_at`, `updated_at`) VALUES
(3, 13, 'Blog Pertama dan ke 1', 'blog-pertama-dan-ke-1', '<p>Ini Isi nya dengan HTML format untuk <b>Blog</b> Pertama ke 1</p>', 13, 'ENABLE', 'ENABLE', '2019-09-11 14:50:28', '2019-09-20 10:52:11'),
(4, 13, 'Blog Milik User Mitra', 'blog-milik-user-mitra', '<p>Lorem ipsum dolor sit amet, <b>consectetur</b> adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse <u>cillum</u> dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non <i>proident</i>, sunt in culpa qui officia deserunt <b>mollit</b> anim id est laborum.</p>', 10, 'ENABLE', 'ENABLE', '2019-09-11 15:24:27', '2019-09-11 15:28:34'),
(5, 13, 'Keuntungan Investasi Jeruk Gerga', 'keuntungan-investasi-jeruk-gerga', '<p>desc...</p>', 1, 'ENABLE', 'ENABLE', '2019-09-11 15:43:57', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_gaji`
--

CREATE TABLE `tbl_gaji` (
  `id` int(11) NOT NULL,
  `value` varchar(225) DEFAULT NULL,
  `status` enum('ENABLE','DISABLE') DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_gaji`
--

INSERT INTO `tbl_gaji` (`id`, `value`, `status`, `created_at`, `updated_at`) VALUES
(1, 'Penghasilan bulanan dibawah IDR 3 Juta', 'ENABLE', '2019-09-11 21:40:12', NULL),
(2, 'Penghasilan bulanan antara IDR 3 Juta sampai 5 juta', 'ENABLE', '2019-09-11 21:40:32', NULL),
(3, 'Penghasilan bulanan antara IDR 5 Juta sampai 10 juta', 'ENABLE', '2019-09-11 21:40:42', NULL),
(4, 'Penghasilan bulanan antara IDR 10 Juta sampai 20 juta', 'ENABLE', '2019-09-11 21:40:49', NULL),
(5, 'Penghasilan bulanan antara IDR 20 Juta sampai 50 juta', 'ENABLE', '2019-09-11 21:40:57', NULL),
(6, 'Penghasilan bulanan antara IDR 50 Juta sampai 100 juta', 'ENABLE', '2019-09-11 21:41:06', NULL),
(7, 'Penghasilan bulanan antara IDR 100 Juta sampai 500 juta', 'ENABLE', '2019-09-11 21:41:17', NULL),
(8, 'Penghasilan bulanan lebih dari IDR 500 juta', 'ENABLE', '2019-09-11 21:41:33', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_hows_work`
--

CREATE TABLE `tbl_hows_work` (
  `id` int(11) NOT NULL,
  `title` varchar(225) DEFAULT NULL,
  `value` text,
  `status` enum('ENABLE','DISABLE') DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_hows_work`
--

INSERT INTO `tbl_hows_work` (`id`, `title`, `value`, `status`, `created_at`, `updated_at`) VALUES
(1, 'Cara Pertama', '<p><b></b>Lorem Ipsum dan <b>Kawan Kawan</b><b></b><br></p>', 'ENABLE', '2019-09-05 14:38:35', '2019-09-11 22:10:09'),
(2, 'Cara Kedua', '<p>Loremp Ipsum Ke 2</p>', 'ENABLE', '2019-09-11 22:09:44', NULL),
(3, 'Cara Ketiga', '<p>Disini cara ketiga</p>', 'ENABLE', '2019-09-11 22:10:00', NULL),
(4, 'Cara Keempat', '<p>Disini isi untuk Cara Ke empat</p>', 'ENABLE', '2019-09-11 22:10:32', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_investor`
--

CREATE TABLE `tbl_investor` (
  `id` int(11) NOT NULL,
  `name` varchar(225) DEFAULT NULL,
  `tpt_lahir` varchar(225) DEFAULT NULL,
  `tgl_lahir` date DEFAULT NULL,
  `jk` enum('L','P') DEFAULT NULL,
  `wrg_negara` enum('WNI','WNA') DEFAULT NULL,
  `status_kawin` enum('NO','YES') DEFAULT NULL,
  `agama_id` int(11) DEFAULT NULL,
  `pendidikan_id` int(11) DEFAULT NULL,
  `email` varchar(225) DEFAULT NULL,
  `password` varchar(225) DEFAULT NULL,
  `phone` varchar(225) DEFAULT NULL,
  `alamat` text,
  `kelurahan` varchar(225) DEFAULT NULL,
  `kecamatan` varchar(225) DEFAULT NULL,
  `provinsi_id` int(11) DEFAULT NULL,
  `kota_id` varchar(225) DEFAULT NULL,
  `kode_pos` int(11) DEFAULT NULL,
  `sumberdana_id` int(11) DEFAULT NULL,
  `pekerjaan_id` int(11) DEFAULT NULL,
  `gaji_id` int(11) DEFAULT NULL,
  `bank_id` int(11) DEFAULT NULL,
  `bank_cabang` varchar(225) DEFAULT NULL,
  `no_rek` varchar(225) DEFAULT NULL,
  `atas_nama` varchar(225) DEFAULT NULL,
  `no_ktp` varchar(225) DEFAULT NULL,
  `no_npwp` varchar(225) DEFAULT NULL,
  `status` enum('ENABLE','DISABLE') DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_investor`
--

INSERT INTO `tbl_investor` (`id`, `name`, `tpt_lahir`, `tgl_lahir`, `jk`, `wrg_negara`, `status_kawin`, `agama_id`, `pendidikan_id`, `email`, `password`, `phone`, `alamat`, `kelurahan`, `kecamatan`, `provinsi_id`, `kota_id`, `kode_pos`, `sumberdana_id`, `pekerjaan_id`, `gaji_id`, `bank_id`, `bank_cabang`, `no_rek`, `atas_nama`, `no_ktp`, `no_npwp`, `status`, `created_at`, `updated_at`) VALUES
(1, 'Bagus Andika (MadChan)', 'Malang', '2000-02-27', 'L', 'WNI', 'NO', 1, 3, 'procw57@gmail.com', 'b3c9323ca84c0f3e6ea210cd31c9ea7a', '0821234634512', 'Disini', 'Dau', 'Dau', 1, '4', 65034, 1, 4, 1, 10, 'Malang', '0829367231', 'Bagus', '23421', '23241232', 'ENABLE', '2019-09-11 00:00:00', '2019-09-18 09:37:44'),
(2, 'Arvin', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'arvin@gmail.com', 'notset-1_NULL', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'ENABLE', '2019-09-12 08:24:06', NULL),
(3, 'User Mendaftar', 'Disini', '2019-09-12', 'L', 'WNA', NULL, NULL, NULL, 'daftar@gmail.com', 'notset-2_NULL', NULL, 'Disini', NULL, NULL, NULL, NULL, 2312541, 1, NULL, 2, 1, NULL, '231541232', NULL, NULL, NULL, 'ENABLE', '2019-09-13 10:03:27', NULL),
(4, 'userke2', 'Malang', '2019-09-13', 'L', 'WNI', NULL, NULL, NULL, 'userke2@gmail.com', 'notset-3_NULL', NULL, 'aa', NULL, NULL, NULL, NULL, 23123, 1, 2, 2, 1, NULL, '2312323', NULL, NULL, NULL, 'ENABLE', '2019-09-17 15:01:51', '2019-09-17 15:49:19'),
(12, 'daftar2', NULL, NULL, NULL, 'WNI', NULL, NULL, NULL, 'daftar2@gmail.com', '7815696ecbf1c96e6894b779456d330e', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, 1, 1, NULL, '1231232', NULL, NULL, NULL, 'ENABLE', '2019-09-26 10:34:52', NULL),
(13, 'asd', NULL, NULL, NULL, 'WNI', NULL, NULL, NULL, 'asd@gmail.com', '7815696ecbf1c96e6894b779456d330e', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, 1, 1, NULL, '123123', NULL, NULL, NULL, 'ENABLE', '2019-09-26 10:42:26', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_kota`
--

CREATE TABLE `tbl_kota` (
  `id` int(11) NOT NULL,
  `provinsi_id` int(11) DEFAULT NULL,
  `value` varchar(225) DEFAULT NULL,
  `status` enum('ENABLE','DISABLE') DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_kota`
--

INSERT INTO `tbl_kota` (`id`, `provinsi_id`, `value`, `status`, `created_at`, `updated_at`) VALUES
(1, 1, 'Malang', 'ENABLE', '2019-09-11 21:26:30', NULL),
(2, 2, 'Solo', 'ENABLE', '2019-09-11 21:26:37', NULL),
(3, 3, 'Bandung', 'ENABLE', '2019-09-11 21:26:45', NULL),
(4, 1, 'Surabaya', 'ENABLE', '2019-09-11 21:32:49', '2019-09-11 21:33:03');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_pekerjaan`
--

CREATE TABLE `tbl_pekerjaan` (
  `id` int(11) NOT NULL,
  `value` varchar(225) DEFAULT NULL,
  `status` enum('ENABLE','DISABLE') DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_pekerjaan`
--

INSERT INTO `tbl_pekerjaan` (`id`, `value`, `status`, `created_at`, `updated_at`) VALUES
(1, 'PNS', 'ENABLE', '2019-09-11 21:37:08', NULL),
(2, 'TNI/POLRI', 'ENABLE', '2019-09-11 21:37:17', NULL),
(3, 'Karyawan BUMN', 'ENABLE', '2019-09-11 21:37:28', NULL),
(4, 'Karyawan Swasta', 'ENABLE', '2019-09-11 21:37:37', NULL),
(5, 'Wiraswasta', 'ENABLE', '2019-09-11 21:37:48', NULL),
(6, 'Pelajar/Mahasiswa', 'ENABLE', '2019-09-11 21:37:57', NULL),
(7, 'Lain-Lain', 'ENABLE', '2019-09-11 21:38:07', NULL),
(8, 'Tidak Bekerja/Bukan Pelajar', 'ENABLE', '2019-09-11 21:38:22', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_pendidikan`
--

CREATE TABLE `tbl_pendidikan` (
  `id` int(11) NOT NULL,
  `value` varchar(225) DEFAULT NULL,
  `status` enum('ENABLE','DISABLE') DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_pendidikan`
--

INSERT INTO `tbl_pendidikan` (`id`, `value`, `status`, `created_at`, `updated_at`) VALUES
(1, 'SD', 'ENABLE', '2019-09-11 21:15:57', NULL),
(2, 'SMP', 'ENABLE', '2019-09-11 21:16:03', NULL),
(3, 'SMA / Sederajat', 'ENABLE', '2019-09-11 21:16:18', NULL),
(4, 'Akademi / Diploma', 'ENABLE', '2019-09-11 21:16:40', NULL),
(5, 'S1', 'ENABLE', '2019-09-11 21:16:47', NULL),
(6, 'S2', 'ENABLE', '2019-09-11 21:16:50', NULL),
(7, 'S3', 'ENABLE', '2019-09-11 21:16:55', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_project`
--

CREATE TABLE `tbl_project` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `title` varchar(225) DEFAULT NULL,
  `slug` varchar(225) NOT NULL,
  `harga` int(225) DEFAULT NULL,
  `unit` int(225) DEFAULT NULL,
  `total_harga` int(225) DEFAULT NULL,
  `modal_back` int(11) DEFAULT NULL,
  `periode` int(225) DEFAULT NULL,
  `bagi_hasil` int(225) DEFAULT NULL,
  `deskripsi` text,
  `latitude` float NOT NULL,
  `longitude` float NOT NULL,
  `public` enum('ENABLE','DISABLE') NOT NULL,
  `status` enum('ENABLE','DISABLE') DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_project`
--

INSERT INTO `tbl_project` (`id`, `user_id`, `title`, `slug`, `harga`, `unit`, `total_harga`, `modal_back`, `periode`, `bagi_hasil`, `deskripsi`, `latitude`, `longitude`, `public`, `status`, `created_at`, `updated_at`) VALUES
(1, 15, 'Project Ke 1', 'project-ke-1', 2000000, 400, 800000000, 1000000, 5, 1, '<p>Mencoba Membuat <b>Project </b>Baru</p>', -8.17331, 113.701, 'ENABLE', 'ENABLE', '2019-09-07 17:06:31', '2019-09-17 09:44:57'),
(2, 15, 'Project Ke 2 dengan mutli imput baru', 'project-ke-2-dengan-mutli-imput-baru', 2000000, 200, 400000000, 2000000, 3, 1, '<p>Multi <b>input</b> Baru</p>', -7.25747, 112.752, 'ENABLE', 'ENABLE', '2019-09-09 09:26:03', '2019-09-18 08:46:19'),
(3, 15, 'Proyek dengan input return baru', 'proyek-dengan-input-return-baru', 1000000, 150, 150000000, 0, 2, 1, '<p>Return Baru</p>', 0, 0, 'ENABLE', 'ENABLE', '2019-09-10 09:34:24', '2019-09-10 11:51:37'),
(4, 15, 'Project Milik mitra 2', 'project-milik-mitra-2', 2000000, 200, 400000000, 0, 1, 1, '<p>Ini Milik Mitra</p>', 0, 0, 'ENABLE', 'ENABLE', '2019-09-10 15:13:08', NULL),
(5, 15, 'Testing nbaru multi image', 'testing-nbaru-multi-image', 2000000, 400, 800000000, 2000000, 3, 1, '<p>Ini <b>Deskripsi</b></p>', 0, 0, 'ENABLE', 'ENABLE', '2019-09-12 18:58:30', NULL),
(6, 15, 'Pengembalian Modal Kesatu', 'pengembalian-modal-kesatu', 1000000, 500, 500000000, 1000000, 2, 1, '<p>Testing Pengembalian Modal</p>', 0, 0, 'ENABLE', 'ENABLE', '2019-09-17 09:48:23', NULL),
(7, 16, 'Project Milik Mitra Ke 2', 'project-milik-mitra-ke-2', 2000000, 100, 200000000, 1000000, 3, 1, '<p>Testing</p>', -7.91299, 112.582, 'ENABLE', 'ENABLE', '2019-09-20 11:40:04', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_project_invest`
--

CREATE TABLE `tbl_project_invest` (
  `id` int(11) NOT NULL,
  `code` varchar(225) DEFAULT NULL,
  `project_id` int(11) DEFAULT NULL,
  `investor_id` int(11) DEFAULT NULL,
  `unit` varchar(225) DEFAULT NULL,
  `harga` varchar(225) DEFAULT NULL,
  `total_harga` varchar(225) DEFAULT NULL,
  `status_pembayaran` enum('WAITING','APPROVE','REJECT') DEFAULT NULL,
  `tgl_konfirmasi` datetime DEFAULT NULL,
  `tgl_kadarluasa` datetime DEFAULT NULL,
  `tgl_pembayaran` datetime DEFAULT NULL,
  `metode_pembayaran` varchar(225) DEFAULT NULL,
  `url_pembayaran` text,
  `idTransaksiMidtrans` text,
  `status` enum('ENABLE','DISABLE') DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_project_invest`
--

INSERT INTO `tbl_project_invest` (`id`, `code`, `project_id`, `investor_id`, `unit`, `harga`, `total_harga`, `status_pembayaran`, `tgl_konfirmasi`, `tgl_kadarluasa`, `tgl_pembayaran`, `metode_pembayaran`, `url_pembayaran`, `idTransaksiMidtrans`, `status`, `created_at`, `updated_at`) VALUES
(9, 'AN-LNNMLV1WA3', 1, 1, '2', '2000000', '4000000', 'APPROVE', '2019-09-24 10:33:56', '2019-09-13 09:16:38', '2019-09-24 10:33:57', NULL, NULL, NULL, 'ENABLE', '2019-09-12 09:16:38', '2019-09-24 10:33:56'),
(11, 'AN-50G8PHAEH3', 4, 1, '2', '2000000', '4000000', 'WAITING', '2019-09-12 10:49:40', '2019-09-13 10:46:34', '2019-09-12 00:00:00', 'Payment Backing', NULL, NULL, 'ENABLE', '2019-09-12 10:46:34', '2019-09-12 10:49:40'),
(12, 'AN-1WNHBH3OJT', 4, 2, '15', '2000000', '30000000', 'APPROVE', '2019-09-24 10:24:39', '2019-09-13 18:33:05', '2019-09-12 00:00:00', NULL, NULL, NULL, 'ENABLE', '2019-09-12 18:33:05', '2019-09-24 10:24:39'),
(13, 'AN-G5PL6Q0YU8', 1, 1, '395', '2000000', '10000000', 'APPROVE', '2019-09-24 10:24:28', '2019-09-18 09:11:18', '2019-09-17 00:00:00', 'Payment Backing', NULL, NULL, 'ENABLE', '2019-09-17 09:11:18', '2019-09-24 10:24:28'),
(14, 'AN-33ZYY9I8PI', 3, 4, '5', '1000000', '5000000', 'APPROVE', '2019-09-24 10:23:26', '2019-09-18 15:50:45', '2019-09-24 10:23:26', NULL, NULL, NULL, 'ENABLE', '2019-09-17 15:50:45', '2019-09-24 10:23:26'),
(15, 'AN-S3I1ME1K6R', 3, 4, '3', '1000000', '3000000', 'APPROVE', '2019-09-24 10:22:24', '2019-09-18 15:53:04', '2019-09-24 10:22:24', NULL, NULL, NULL, 'ENABLE', '2019-09-17 15:53:04', '2019-09-24 10:22:24'),
(17, 'AN-9ZFCZTNZEN', 1, 1, '3', '2000000', '6000000', 'APPROVE', '2019-09-24 10:19:26', '2019-09-19 09:45:19', '2019-09-24 10:19:26', NULL, NULL, NULL, 'ENABLE', '2019-09-18 09:45:19', '2019-09-24 10:19:26');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_project_return`
--

CREATE TABLE `tbl_project_return` (
  `id` int(11) NOT NULL,
  `project_id` int(11) DEFAULT NULL,
  `tahun` int(11) NOT NULL,
  `return_tahun` int(11) DEFAULT NULL,
  `public` enum('ENABLE','DISABLE') NOT NULL,
  `status` enum('ENABLE','DISABLE') DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_project_return`
--

INSERT INTO `tbl_project_return` (`id`, `project_id`, `tahun`, `return_tahun`, `public`, `status`, `created_at`, `updated_at`) VALUES
(1, 1, 1, 10, 'ENABLE', 'ENABLE', '2019-09-10 00:00:00', '2019-09-10 10:58:42'),
(2, 1, 2, 14, 'DISABLE', 'ENABLE', '2019-09-10 00:00:00', '2019-09-10 00:00:00'),
(3, 1, 3, 12, 'DISABLE', 'ENABLE', '2019-09-10 00:00:00', '2019-09-10 00:00:00'),
(4, 1, 4, 15, 'DISABLE', 'ENABLE', '2019-09-10 10:23:53', NULL),
(8, 4, 1, 12, 'ENABLE', 'ENABLE', '2019-09-10 15:13:24', NULL),
(9, 5, 1, 5, 'ENABLE', 'ENABLE', '2019-09-12 18:59:06', NULL),
(10, 5, 2, 10, 'DISABLE', 'ENABLE', '2019-09-12 18:59:29', NULL),
(11, 5, 3, 8, 'DISABLE', 'ENABLE', '2019-09-12 18:59:39', NULL),
(12, 2, 1, 15, 'ENABLE', 'ENABLE', '2019-09-13 08:45:30', NULL),
(13, 6, 1, 13, 'ENABLE', 'ENABLE', '2019-09-17 10:02:51', NULL),
(14, 6, 2, 10, 'DISABLE', 'ENABLE', '2019-09-17 10:02:57', NULL),
(15, 2, 2, 10, 'DISABLE', 'ENABLE', '2019-09-18 08:46:45', NULL),
(16, 2, 3, 15, 'DISABLE', 'ENABLE', '2019-09-18 08:46:50', NULL),
(17, 1, 5, 10, 'DISABLE', 'ENABLE', '2019-09-20 11:18:14', NULL),
(18, 3, 1, 10, 'ENABLE', 'ENABLE', '2019-09-20 11:35:14', NULL),
(19, 3, 2, 15, 'DISABLE', 'ENABLE', '2019-09-20 11:35:19', NULL),
(20, 7, 1, 20, 'ENABLE', 'ENABLE', '2019-09-20 11:40:16', NULL),
(21, 7, 2, 10, 'DISABLE', 'ENABLE', '2019-09-20 11:40:21', NULL),
(22, 7, 3, 15, 'DISABLE', 'ENABLE', '2019-09-20 11:40:27', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_provinsi`
--

CREATE TABLE `tbl_provinsi` (
  `id` int(11) NOT NULL,
  `value` varchar(225) DEFAULT NULL,
  `status` enum('ENABLE','DISABLE') DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_provinsi`
--

INSERT INTO `tbl_provinsi` (`id`, `value`, `status`, `created_at`, `updated_at`) VALUES
(1, 'Jawa Timur', 'ENABLE', '2019-09-11 21:18:13', NULL),
(2, 'Jawa Tengah', 'ENABLE', '2019-09-11 21:18:20', NULL),
(3, 'Jawa Barat', 'ENABLE', '2019-09-11 21:18:27', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_sumberdana`
--

CREATE TABLE `tbl_sumberdana` (
  `id` int(11) NOT NULL,
  `value` varchar(225) DEFAULT NULL,
  `status` enum('ENABLE','DISABLE') DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_sumberdana`
--

INSERT INTO `tbl_sumberdana` (`id`, `value`, `status`, `created_at`, `updated_at`) VALUES
(1, 'Gaji', 'ENABLE', '2019-09-11 21:35:23', NULL),
(2, 'Hasil Usaha', 'ENABLE', '2019-09-11 21:35:30', NULL),
(3, 'Warisan', 'ENABLE', '2019-09-11 21:35:37', NULL),
(4, 'Tabungan', 'ENABLE', '2019-09-11 21:35:44', NULL),
(5, 'Lainnya', 'ENABLE', '2019-09-11 21:35:52', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `id` int(11) NOT NULL,
  `nip` varchar(255) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `email` varchar(255) NOT NULL,
  `password` varchar(255) DEFAULT NULL,
  `role_id` int(255) DEFAULT NULL,
  `desc` varchar(255) DEFAULT NULL,
  `status` varchar(255) DEFAULT '0',
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `telepon` varchar(25) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`id`, `nip`, `name`, `email`, `password`, `role_id`, `desc`, `status`, `created_at`, `updated_at`, `telepon`) VALUES
(13, 'bagus', 'Bagus', 'bagus@gmail.com', '17b38fc02fd7e92f3edeb6318e3066d8', 17, 'gkdshagdsj', '0', '2019-07-02 09:55:20', '2019-09-09 15:40:14', '085'),
(14, 'Admin', 'Super Admin', 'admin@gmail.com', '21232f297a57a5a743894a0e4a801fc3', 17, 'Super Admin', '0', '2019-09-05 12:56:42', NULL, ''),
(15, 'Mitra', 'Mitra', 'mitra@gmail.com', '92706ba4fd3022cede6d1610b17a0d2d', 18, 'Mitra', '0', '2019-09-05 12:57:38', '2019-09-05 13:11:56', ''),
(16, 'Mitra ke 2', 'Mitra 2', 'mitra2@gmail.com', 'b3c9323ca84c0f3e6ea210cd31c9ea7a', 18, 'asd', '0', '2019-09-20 11:38:46', NULL, '');

-- --------------------------------------------------------

--
-- Table structure for table `webpage`
--

CREATE TABLE `webpage` (
  `id` int(11) NOT NULL,
  `title` varchar(225) DEFAULT NULL,
  `slug` varchar(225) DEFAULT NULL,
  `content` text,
  `prioritas` varchar(225) DEFAULT NULL,
  `status` enum('ENABLE','DISABLE') DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `webpage`
--

INSERT INTO `webpage` (`id`, `title`, `slug`, `content`, `prioritas`, `status`, `created_at`, `updated_at`) VALUES
(1, 'Tentang Aplikasi', 'tentang-aplikasi', 'lorem Ipsum', '1', 'ENABLE', '2019-09-11 22:28:50', NULL),
(2, 'Kontak Kami', 'kontak-kami', 'Lorem Ipsum', '2', 'ENABLE', '2019-09-11 22:29:10', NULL),
(3, 'Tim Kami', 'tim-kami', '<div class=\"row\" align=\"center\">\r\n	<div class=\"col-md-3 col-sm-3 col-xs-6\" style=\"margin-bottom: 5px\">\r\n		<img src=\"https://adminlte.io/themes/AdminLTE/dist/img/user1-128x128.jpg\" width=\"100px\" height=\"100px\" alt=\"User Image\" style=\"border-radius: 50%\">\r\n		<br>\r\n		Alexander\r\n	</div>\r\n	<div class=\"col-md-3 col-sm-3 col-xs-6\" style=\"margin-bottom: 5px\">\r\n		<img src=\"https://adminlte.io/themes/AdminLTE/dist/img/user8-128x128.jpg\" width=\"100px\" height=\"100px\" alt=\"User Image\" style=\"border-radius: 50%\">\r\n		<br>\r\n		Norman\r\n	</div>\r\n	<div class=\"col-md-3 col-sm-3 col-xs-6\" style=\"margin-bottom: 5px\">\r\n		<img src=\"https://adminlte.io/themes/AdminLTE/dist/img/user7-128x128.jpg\" width=\"100px\" height=\"100px\" alt=\"User Image\" style=\"border-radius: 50%\">\r\n		<br>\r\n		Jane\r\n	</div>\r\n	<div class=\"col-md-3 col-sm-3 col-xs-6\" style=\"margin-bottom: 5px\">\r\n		<img src=\"https://adminlte.io/themes/AdminLTE/dist/img/user6-128x128.jpg\" width=\"100px\" height=\"100px\" alt=\"User Image\" style=\"border-radius: 50%\">\r\n		<br>\r\n		John\r\n	</div>\r\n	<div class=\"col-md-3 col-sm-3 col-xs-6\" style=\"margin-bottom: 5px\">\r\n		<img src=\"https://adminlte.io/themes/AdminLTE/dist/img/user2-160x160.jpg\" width=\"100px\" height=\"100px\" alt=\"User Image\" style=\"border-radius: 50%\">\r\n		<br>\r\n		Alexander\r\n	</div>\r\n	<div class=\"col-md-3 col-sm-3 col-xs-6\" style=\"margin-bottom: 5px\">\r\n		<img src=\"https://adminlte.io/themes/AdminLTE/dist/img/user5-128x128.jpg\" width=\"100px\" height=\"100px\" alt=\"User Image\" style=\"border-radius: 50%\">\r\n		<br>\r\n		Sarah\r\n	</div>\r\n	<div class=\"col-md-3 col-sm-3 col-xs-6\" style=\"margin-bottom: 5px\">\r\n		<img src=\"https://adminlte.io/themes/AdminLTE/dist/img/user4-128x128.jpg\" width=\"100px\" height=\"100px\" alt=\"User Image\" style=\"border-radius: 50%\">\r\n		<br>\r\n		Nora\r\n	</div>\r\n	<div class=\"col-md-3 col-sm-3 col-xs-6\" style=\"margin-bottom: 5px\">\r\n		<img src=\"https://adminlte.io/themes/AdminLTE/dist/img/user3-128x128.jpg\" width=\"100px\" height=\"100px\" alt=\"User Image\" style=\"border-radius: 50%\">\r\n		<br>\r\n		Nadia\r\n	</div>\r\n</div>', '3', 'ENABLE', '2019-09-26 00:00:00', NULL);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `access`
--
ALTER TABLE `access`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `access_control`
--
ALTER TABLE `access_control`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `file`
--
ALTER TABLE `file`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `grafik`
--
ALTER TABLE `grafik`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `keys`
--
ALTER TABLE `keys`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `konfig`
--
ALTER TABLE `konfig`
  ADD PRIMARY KEY (`id`) USING BTREE;

--
-- Indexes for table `logs`
--
ALTER TABLE `logs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `menu_master`
--
ALTER TABLE `menu_master`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `report`
--
ALTER TABLE `report`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `role`
--
ALTER TABLE `role`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_agama`
--
ALTER TABLE `tbl_agama`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_bank`
--
ALTER TABLE `tbl_bank`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_blog`
--
ALTER TABLE `tbl_blog`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_gaji`
--
ALTER TABLE `tbl_gaji`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_hows_work`
--
ALTER TABLE `tbl_hows_work`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_investor`
--
ALTER TABLE `tbl_investor`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_kota`
--
ALTER TABLE `tbl_kota`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_pekerjaan`
--
ALTER TABLE `tbl_pekerjaan`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_pendidikan`
--
ALTER TABLE `tbl_pendidikan`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_project`
--
ALTER TABLE `tbl_project`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_project_invest`
--
ALTER TABLE `tbl_project_invest`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_project_return`
--
ALTER TABLE `tbl_project_return`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_provinsi`
--
ALTER TABLE `tbl_provinsi`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_sumberdana`
--
ALTER TABLE `tbl_sumberdana`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `webpage`
--
ALTER TABLE `webpage`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `access`
--
ALTER TABLE `access`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `access_control`
--
ALTER TABLE `access_control`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=502;

--
-- AUTO_INCREMENT for table `file`
--
ALTER TABLE `file`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=271;

--
-- AUTO_INCREMENT for table `grafik`
--
ALTER TABLE `grafik`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `keys`
--
ALTER TABLE `keys`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `konfig`
--
ALTER TABLE `konfig`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

--
-- AUTO_INCREMENT for table `logs`
--
ALTER TABLE `logs`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `menu_master`
--
ALTER TABLE `menu_master`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=37;

--
-- AUTO_INCREMENT for table `report`
--
ALTER TABLE `report`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `role`
--
ALTER TABLE `role`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT for table `tbl_agama`
--
ALTER TABLE `tbl_agama`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `tbl_bank`
--
ALTER TABLE `tbl_bank`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT for table `tbl_blog`
--
ALTER TABLE `tbl_blog`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `tbl_gaji`
--
ALTER TABLE `tbl_gaji`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `tbl_hows_work`
--
ALTER TABLE `tbl_hows_work`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `tbl_investor`
--
ALTER TABLE `tbl_investor`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `tbl_kota`
--
ALTER TABLE `tbl_kota`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `tbl_pekerjaan`
--
ALTER TABLE `tbl_pekerjaan`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `tbl_pendidikan`
--
ALTER TABLE `tbl_pendidikan`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `tbl_project`
--
ALTER TABLE `tbl_project`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `tbl_project_invest`
--
ALTER TABLE `tbl_project_invest`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT for table `tbl_project_return`
--
ALTER TABLE `tbl_project_return`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT for table `tbl_provinsi`
--
ALTER TABLE `tbl_provinsi`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `tbl_sumberdana`
--
ALTER TABLE `tbl_sumberdana`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `webpage`
--
ALTER TABLE `webpage`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
