-- phpMyAdmin SQL Dump
-- version 4.9.0.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Oct 16, 2019 at 08:11 AM
-- Server version: 10.3.16-MariaDB
-- PHP Version: 7.3.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `kosmetik`
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
(25, '', 'Debug', '__construct', 'debug/__construct'),
(26, '', 'Debug', 'index', 'debug/index'),
(27, '', 'Debug', 'exportexcell', 'debug/exportexcell'),
(28, '', 'Debug', 'ecryprdecrypt', 'debug/ecryprdecrypt'),
(29, '', 'Debug', 'validation_form', 'debug/validation_form'),
(30, '', 'Debug', 'konfig', 'debug/konfig'),
(31, '', 'Debug', 'upload_file', 'debug/upload_file'),
(32, '', 'Debug', 'get_uri', 'debug/get_uri'),
(33, '', 'Debug', 'log_activity', 'debug/log_activity'),
(34, '', 'Debug', 'get_instance', 'debug/get_instance'),
(35, '', 'Fitur', '__construct', 'fitur/__construct'),
(36, '', 'Fitur', 'ekspor', 'fitur/ekspor'),
(37, '', 'Fitur', 'impor', 'fitur/impor'),
(38, '', 'Fitur', 'importdata', 'fitur/importdata'),
(39, '', 'Fitur', 'access', 'fitur/access'),
(40, '', 'Fitur', 'exportreport', 'fitur/exportreport'),
(41, '', 'Fitur', 'toPdf', 'fitur/topdf'),
(42, '', 'Fitur', 'konfig', 'fitur/konfig'),
(43, '', 'Fitur', 'upload_file', 'fitur/upload_file'),
(44, '', 'Fitur', 'get_uri', 'fitur/get_uri'),
(45, '', 'Fitur', 'log_activity', 'fitur/log_activity'),
(46, '', 'Fitur', 'get_instance', 'fitur/get_instance'),
(47, '', 'Home', '__construct', 'home/__construct'),
(48, '', 'Home', 'index', 'home/index'),
(49, '', 'Home', 'chart', 'home/chart'),
(50, '', 'Home', 'get_autocomplete', 'home/get_autocomplete'),
(51, '', 'Home', 'konfig', 'home/konfig'),
(52, '', 'Home', 'upload_file', 'home/upload_file'),
(53, '', 'Home', 'get_uri', 'home/get_uri'),
(54, '', 'Home', 'log_activity', 'home/log_activity'),
(55, '', 'Home', 'get_instance', 'home/get_instance'),
(56, '', 'Login', '__construct', 'login/__construct'),
(57, '', 'Login', 'index', 'login/index'),
(58, '', 'Login', 'logout', 'login/logout'),
(59, '', 'Login', 'act_login', 'login/act_login'),
(60, '', 'Login', 'lockscreen', 'login/lockscreen'),
(61, '', 'Login', 'konfig', 'login/konfig'),
(62, '', 'Login', 'upload_file', 'login/upload_file'),
(63, '', 'Login', 'get_uri', 'login/get_uri'),
(64, '', 'Login', 'log_activity', 'login/log_activity'),
(65, '', 'Login', 'get_instance', 'login/get_instance'),
(66, '', 'Page', '__construct', 'page/__construct'),
(67, '', 'Page', 'portrait', 'page/portrait'),
(68, '', 'Page', 'landscape', 'page/landscape'),
(69, '', 'Page', 'konfig', 'page/konfig'),
(70, '', 'Page', 'upload_file', 'page/upload_file'),
(71, '', 'Page', 'get_uri', 'page/get_uri'),
(72, '', 'Page', 'log_activity', 'page/log_activity'),
(73, '', 'Page', 'get_instance', 'page/get_instance'),
(74, '', 'Rest_server', 'index', 'rest_server/index'),
(75, '', 'Rest_server', '__construct', 'rest_server/__construct'),
(76, '', 'Rest_server', 'get_instance', 'rest_server/get_instance'),
(77, '', 'Tinymce', '__construct', 'tinymce/__construct'),
(78, '', 'Tinymce', 'index', 'tinymce/index'),
(79, '', 'Tinymce', 'konfig', 'tinymce/konfig'),
(80, '', 'Tinymce', 'upload_file', 'tinymce/upload_file'),
(81, '', 'Tinymce', 'get_uri', 'tinymce/get_uri'),
(82, '', 'Tinymce', 'log_activity', 'tinymce/log_activity'),
(83, '', 'Tinymce', 'get_instance', 'tinymce/get_instance'),
(84, '', 'UploadImage', '__construct', 'uploadimage/__construct'),
(85, '', 'UploadImage', 'index', 'uploadimage/index'),
(86, '', 'UploadImage', 'uploadAjax', 'uploadimage/uploadajax'),
(87, '', 'UploadImage', 'ajaxImageUnlink', 'uploadimage/ajaximageunlink'),
(88, '', 'UploadImage', 'konfig', 'uploadimage/konfig'),
(89, '', 'UploadImage', 'upload_file', 'uploadimage/upload_file'),
(90, '', 'UploadImage', 'get_uri', 'uploadimage/get_uri'),
(91, '', 'UploadImage', 'log_activity', 'uploadimage/log_activity'),
(92, '', 'UploadImage', 'get_instance', 'uploadimage/get_instance'),
(93, 'master', 'Bss', 'index', 'master/bss/index'),
(94, 'master', 'Bss', '__construct', 'master/bss/__construct'),
(95, 'master', 'Bss', 'konfig', 'master/bss/konfig'),
(96, 'master', 'Bss', 'upload_file', 'master/bss/upload_file'),
(97, 'master', 'Bss', 'get_uri', 'master/bss/get_uri'),
(98, 'master', 'Bss', 'log_activity', 'master/bss/log_activity'),
(99, 'master', 'Bss', 'get_instance', 'master/bss/get_instance'),
(100, 'master', 'Customer', '__construct', 'master/customer/__construct'),
(101, 'master', 'Customer', 'index', 'master/customer/index'),
(102, 'master', 'Customer', 'create', 'master/customer/create'),
(103, 'master', 'Customer', 'validate', 'master/customer/validate'),
(104, 'master', 'Customer', 'store', 'master/customer/store'),
(105, 'master', 'Customer', 'json', 'master/customer/json'),
(106, 'master', 'Customer', 'edit', 'master/customer/edit'),
(107, 'master', 'Customer', 'update', 'master/customer/update'),
(108, 'master', 'Customer', 'delete', 'master/customer/delete'),
(109, 'master', 'Customer', 'status', 'master/customer/status'),
(110, 'master', 'Customer', 'konfig', 'master/customer/konfig'),
(111, 'master', 'Customer', 'upload_file', 'master/customer/upload_file'),
(112, 'master', 'Customer', 'get_uri', 'master/customer/get_uri'),
(113, 'master', 'Customer', 'log_activity', 'master/customer/log_activity'),
(114, 'master', 'Customer', 'get_instance', 'master/customer/get_instance'),
(115, 'master', 'Image', '__construct', 'master/image/__construct'),
(116, 'master', 'Image', 'index', 'master/image/index'),
(117, 'master', 'Image', 'create', 'master/image/create'),
(118, 'master', 'Image', 'validate', 'master/image/validate'),
(119, 'master', 'Image', 'store', 'master/image/store'),
(120, 'master', 'Image', 'json', 'master/image/json'),
(121, 'master', 'Image', 'edit', 'master/image/edit'),
(122, 'master', 'Image', 'update', 'master/image/update'),
(123, 'master', 'Image', 'delete', 'master/image/delete'),
(124, 'master', 'Image', 'status', 'master/image/status'),
(125, 'master', 'Image', 'konfig', 'master/image/konfig'),
(126, 'master', 'Image', 'upload_file', 'master/image/upload_file'),
(127, 'master', 'Image', 'get_uri', 'master/image/get_uri'),
(128, 'master', 'Image', 'log_activity', 'master/image/log_activity'),
(129, 'master', 'Image', 'get_instance', 'master/image/get_instance'),
(130, 'master', 'Jadwal', '__construct', 'master/jadwal/__construct'),
(131, 'master', 'Jadwal', 'index', 'master/jadwal/index'),
(132, 'master', 'Jadwal', 'create', 'master/jadwal/create'),
(133, 'master', 'Jadwal', 'validate', 'master/jadwal/validate'),
(134, 'master', 'Jadwal', 'store', 'master/jadwal/store'),
(135, 'master', 'Jadwal', 'json', 'master/jadwal/json'),
(136, 'master', 'Jadwal', 'edit', 'master/jadwal/edit'),
(137, 'master', 'Jadwal', 'update', 'master/jadwal/update'),
(138, 'master', 'Jadwal', 'delete', 'master/jadwal/delete'),
(139, 'master', 'Jadwal', 'status', 'master/jadwal/status'),
(140, 'master', 'Jadwal', 'konfig', 'master/jadwal/konfig'),
(141, 'master', 'Jadwal', 'upload_file', 'master/jadwal/upload_file'),
(142, 'master', 'Jadwal', 'get_uri', 'master/jadwal/get_uri'),
(143, 'master', 'Jadwal', 'log_activity', 'master/jadwal/log_activity'),
(144, 'master', 'Jadwal', 'get_instance', 'master/jadwal/get_instance'),
(145, 'master', 'Keys', '__construct', 'master/keys/__construct'),
(146, 'master', 'Keys', 'index', 'master/keys/index'),
(147, 'master', 'Keys', 'create', 'master/keys/create'),
(148, 'master', 'Keys', 'validate', 'master/keys/validate'),
(149, 'master', 'Keys', 'store', 'master/keys/store'),
(150, 'master', 'Keys', 'json', 'master/keys/json'),
(151, 'master', 'Keys', 'edit', 'master/keys/edit'),
(152, 'master', 'Keys', 'update', 'master/keys/update'),
(153, 'master', 'Keys', 'delete', 'master/keys/delete'),
(154, 'master', 'Keys', 'status', 'master/keys/status'),
(155, 'master', 'Keys', 'konfig', 'master/keys/konfig'),
(156, 'master', 'Keys', 'upload_file', 'master/keys/upload_file'),
(157, 'master', 'Keys', 'get_uri', 'master/keys/get_uri'),
(158, 'master', 'Keys', 'log_activity', 'master/keys/log_activity'),
(159, 'master', 'Keys', 'get_instance', 'master/keys/get_instance'),
(160, 'master', 'Konfig', '__construct', 'master/konfig/__construct'),
(161, 'master', 'Konfig', 'index', 'master/konfig/index'),
(162, 'master', 'Konfig', 'create', 'master/konfig/create'),
(163, 'master', 'Konfig', 'validate', 'master/konfig/validate'),
(164, 'master', 'Konfig', 'store', 'master/konfig/store'),
(165, 'master', 'Konfig', 'json', 'master/konfig/json'),
(166, 'master', 'Konfig', 'edit', 'master/konfig/edit'),
(167, 'master', 'Konfig', 'update', 'master/konfig/update'),
(168, 'master', 'Konfig', 'delete', 'master/konfig/delete'),
(169, 'master', 'Konfig', 'status', 'master/konfig/status'),
(170, 'master', 'Konfig', 'konfig', 'master/konfig/konfig'),
(171, 'master', 'Konfig', 'upload_file', 'master/konfig/upload_file'),
(172, 'master', 'Konfig', 'get_uri', 'master/konfig/get_uri'),
(173, 'master', 'Konfig', 'log_activity', 'master/konfig/log_activity'),
(174, 'master', 'Konfig', 'get_instance', 'master/konfig/get_instance'),
(175, 'master', 'Menu_master', '__construct', 'master/menu_master/__construct'),
(176, 'master', 'Menu_master', 'index', 'master/menu_master/index'),
(177, 'master', 'Menu_master', 'create', 'master/menu_master/create'),
(178, 'master', 'Menu_master', 'validate', 'master/menu_master/validate'),
(179, 'master', 'Menu_master', 'store', 'master/menu_master/store'),
(180, 'master', 'Menu_master', 'json', 'master/menu_master/json'),
(181, 'master', 'Menu_master', 'edit', 'master/menu_master/edit'),
(182, 'master', 'Menu_master', 'update', 'master/menu_master/update'),
(183, 'master', 'Menu_master', 'delete', 'master/menu_master/delete'),
(184, 'master', 'Menu_master', 'status', 'master/menu_master/status'),
(185, 'master', 'Menu_master', 'konfig', 'master/menu_master/konfig'),
(186, 'master', 'Menu_master', 'upload_file', 'master/menu_master/upload_file'),
(187, 'master', 'Menu_master', 'get_uri', 'master/menu_master/get_uri'),
(188, 'master', 'Menu_master', 'log_activity', 'master/menu_master/log_activity'),
(189, 'master', 'Menu_master', 'get_instance', 'master/menu_master/get_instance'),
(190, 'master', 'Report', '__construct', 'master/report/__construct'),
(191, 'master', 'Report', 'index', 'master/report/index'),
(192, 'master', 'Report', 'create', 'master/report/create'),
(193, 'master', 'Report', 'validate', 'master/report/validate'),
(194, 'master', 'Report', 'store', 'master/report/store'),
(195, 'master', 'Report', 'json', 'master/report/json'),
(196, 'master', 'Report', 'edit', 'master/report/edit'),
(197, 'master', 'Report', 'update', 'master/report/update'),
(198, 'master', 'Report', 'delete', 'master/report/delete'),
(199, 'master', 'Report', 'status', 'master/report/status'),
(200, 'master', 'Report', 'generate', 'master/report/generate'),
(201, 'master', 'Report', 'konfig', 'master/report/konfig'),
(202, 'master', 'Report', 'upload_file', 'master/report/upload_file'),
(203, 'master', 'Report', 'get_uri', 'master/report/get_uri'),
(204, 'master', 'Report', 'log_activity', 'master/report/log_activity'),
(205, 'master', 'Report', 'get_instance', 'master/report/get_instance'),
(206, 'master', 'Role', '__construct', 'master/role/__construct'),
(207, 'master', 'Role', 'index', 'master/role/index'),
(208, 'master', 'Role', 'create', 'master/role/create'),
(209, 'master', 'Role', 'validate', 'master/role/validate'),
(210, 'master', 'Role', 'store', 'master/role/store'),
(211, 'master', 'Role', 'json', 'master/role/json'),
(212, 'master', 'Role', 'edit', 'master/role/edit'),
(213, 'master', 'Role', 'update', 'master/role/update'),
(214, 'master', 'Role', 'delete', 'master/role/delete'),
(215, 'master', 'Role', 'status', 'master/role/status'),
(216, 'master', 'Role', 'konfig', 'master/role/konfig'),
(217, 'master', 'Role', 'upload_file', 'master/role/upload_file'),
(218, 'master', 'Role', 'get_uri', 'master/role/get_uri'),
(219, 'master', 'Role', 'log_activity', 'master/role/log_activity'),
(220, 'master', 'Role', 'get_instance', 'master/role/get_instance'),
(221, 'master', 'Service', '__construct', 'master/service/__construct'),
(222, 'master', 'Service', 'index', 'master/service/index'),
(223, 'master', 'Service', 'create', 'master/service/create'),
(224, 'master', 'Service', 'validate', 'master/service/validate'),
(225, 'master', 'Service', 'store', 'master/service/store'),
(226, 'master', 'Service', 'json', 'master/service/json'),
(227, 'master', 'Service', 'edit', 'master/service/edit'),
(228, 'master', 'Service', 'update', 'master/service/update'),
(229, 'master', 'Service', 'delete', 'master/service/delete'),
(230, 'master', 'Service', 'status', 'master/service/status'),
(231, 'master', 'Service', 'konfig', 'master/service/konfig'),
(232, 'master', 'Service', 'upload_file', 'master/service/upload_file'),
(233, 'master', 'Service', 'get_uri', 'master/service/get_uri'),
(234, 'master', 'Service', 'log_activity', 'master/service/log_activity'),
(235, 'master', 'Service', 'get_instance', 'master/service/get_instance'),
(236, 'master', 'Site', '__construct', 'master/site/__construct'),
(237, 'master', 'Site', 'index', 'master/site/index'),
(238, 'master', 'Site', 'site_json', 'master/site/site_json'),
(239, 'master', 'Site', 'site_default', 'master/site/site_default'),
(240, 'master', 'Site', 'site_custom', 'master/site/site_custom'),
(241, 'master', 'Site', 'site_data', 'master/site/site_data'),
(242, 'master', 'Site', 'site_store', 'master/site/site_store'),
(243, 'master', 'Site', 'site_edit', 'master/site/site_edit'),
(244, 'master', 'Site', 'site_update', 'master/site/site_update'),
(245, 'master', 'Site', 'site_hidden', 'master/site/site_hidden'),
(246, 'master', 'Site', 'konfig', 'master/site/konfig'),
(247, 'master', 'Site', 'upload_file', 'master/site/upload_file'),
(248, 'master', 'Site', 'get_uri', 'master/site/get_uri'),
(249, 'master', 'Site', 'log_activity', 'master/site/log_activity'),
(250, 'master', 'Site', 'get_instance', 'master/site/get_instance'),
(251, 'master', 'User', 'index', 'master/user/index'),
(252, 'master', 'User', 'json', 'master/user/json'),
(253, 'master', 'User', 'json_activity', 'master/user/json_activity'),
(254, 'master', 'User', 'store', 'master/user/store'),
(255, 'master', 'User', 'edit', 'master/user/edit'),
(256, 'master', 'User', 'editUser', 'master/user/edituser'),
(257, 'master', 'User', 'updateUser', 'master/user/updateuser'),
(258, 'master', 'User', 'update', 'master/user/update'),
(259, 'master', 'User', 'delete', 'master/user/delete'),
(260, 'master', 'User', 'password_check', 'master/user/password_check'),
(261, 'master', 'User', 'editUser_redirect', 'master/user/edituser_redirect'),
(262, 'master', 'User', '__construct', 'master/user/__construct'),
(263, 'master', 'User', 'konfig', 'master/user/konfig'),
(264, 'master', 'User', 'upload_file', 'master/user/upload_file'),
(265, 'master', 'User', 'get_uri', 'master/user/get_uri'),
(266, 'master', 'User', 'log_activity', 'master/user/log_activity'),
(267, 'master', 'User', 'get_instance', 'master/user/get_instance');

-- --------------------------------------------------------

--
-- Table structure for table `activity`
--

CREATE TABLE `activity` (
  `ip` varchar(255) DEFAULT NULL,
  `link` varchar(255) DEFAULT NULL,
  `get` longtext DEFAULT NULL,
  `post` longtext DEFAULT NULL,
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
('118.136.148.201', 'http://gatoko1.com/sop/master/user/updateUser', '[]', '{\"ids\":\"1\",\"name\":\"Smartsoft Studio\",\"email\":\"smartsoftstudio1@mail.com\",\"desc\":\"asda\"}', 1, '2019-02-19 11:02:53'),
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
  `url` text DEFAULT NULL,
  `table` varchar(255) DEFAULT NULL,
  `table_id` int(11) DEFAULT NULL,
  `status` varchar(255) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `file`
--

INSERT INTO `file` (`id`, `name`, `mime`, `dir`, `url`, `table`, `table_id`, `status`, `created_at`, `updated_at`) VALUES
(24, '6950c16c9bcc6995f376b297f163175929730.png', 'image/png', 'webfile/users/6950c16c9bcc6995f376b297f163175929730.png', 'http://192.168.1.13:8080/webfile/users/6950c16c9bcc6995f376b297f163175929730.png', 'user', 23, 'ENABLE', '2019-10-15 00:00:00', '2019-10-15 00:00:00'),
(25, '6950c16c9bcc6995f376b297f163175940871.jpg', 'image/jpeg', 'webfile/kategori/6950c16c9bcc6995f376b297f163175940871.jpg', 'http://192.168.1.13:8080/webfile/kategori/6950c16c9bcc6995f376b297f163175940871.jpg', 'm_kategori', 15, 'ENABLE', '2019-10-15 15:20:35', NULL),
(26, '6950c16c9bcc6995f376b297f163175960100.jpg', 'image/jpeg', 'webfile/kategori/6950c16c9bcc6995f376b297f163175960100.jpg', 'http://192.168.1.13:8080/webfile/kategori/6950c16c9bcc6995f376b297f163175960100.jpg', 'm_kategori', 16, 'ENABLE', '2019-10-15 15:21:43', NULL),
(27, '6950c16c9bcc6995f376b297f163175958213.jpg', 'image/jpeg', 'webfile/kategori/6950c16c9bcc6995f376b297f163175958213.jpg', 'http://192.168.1.13:8080/webfile/kategori/6950c16c9bcc6995f376b297f163175958213.jpg', 'm_kategori', 17, 'ENABLE', '2019-10-15 15:22:22', NULL),
(28, '6950c16c9bcc6995f376b297f16317596787.jpg', 'image/jpeg', 'webfile/kategori/6950c16c9bcc6995f376b297f16317596787.jpg', 'http://192.168.1.13:8080/webfile/kategori/6950c16c9bcc6995f376b297f16317596787.jpg', 'm_kategori', 18, 'ENABLE', '2019-10-15 15:22:44', NULL),
(29, '6950c16c9bcc6995f376b297f163175963830.png', 'image/png', 'webfile/kategori/6950c16c9bcc6995f376b297f163175963830.png', 'http://192.168.1.13:8080/webfile/kategori/6950c16c9bcc6995f376b297f163175963830.png', 'm_kategori', 19, 'ENABLE', '2019-10-15 15:23:04', NULL),
(30, '6950c16c9bcc6995f376b297f16317598736.jpg', 'image/jpeg', 'webfile/kategori/6950c16c9bcc6995f376b297f16317598736.jpg', 'http://192.168.1.13:8080/webfile/kategori/6950c16c9bcc6995f376b297f16317598736.jpg', 'm_kategori', 20, 'ENABLE', '2019-10-15 15:23:23', NULL),
(31, '6950c16c9bcc6995f376b297f163175978084.png', 'image/png', 'webfile/kategori/6950c16c9bcc6995f376b297f163175978084.png', 'http://192.168.1.13:8080/webfile/kategori/6950c16c9bcc6995f376b297f163175978084.png', 'm_kategori', 21, 'ENABLE', '2019-10-15 15:23:45', NULL),
(32, '6950c16c9bcc6995f376b297f163175956371.jpg', 'image/jpeg', 'webfile/kategori/6950c16c9bcc6995f376b297f163175956371.jpg', 'http://192.168.1.13:8080/webfile/kategori/6950c16c9bcc6995f376b297f163175956371.jpg', 'm_kategori', 22, 'ENABLE', '2019-10-15 15:24:09', NULL),
(33, '6950c16c9bcc6995f376b297f163175933626.jpg', 'image/jpeg', 'webfile/produk/6950c16c9bcc6995f376b297f163175933626.jpg', 'http://192.168.1.13:8080/webfile/produk/6950c16c9bcc6995f376b297f163175933626.jpg', 'm_produk', 4, 'ENABLE', '2019-10-15 15:25:34', NULL),
(34, '6950c16c9bcc6995f376b297f163175948216.jpg', 'image/jpeg', 'webfile/produk/6950c16c9bcc6995f376b297f163175948216.jpg', 'http://192.168.1.13:8080/webfile/produk/6950c16c9bcc6995f376b297f163175948216.jpg', 'm_produk', 5, 'ENABLE', '2019-10-15 15:26:28', NULL),
(35, '6950c16c9bcc6995f376b297f163175975949.jpg', 'image/jpeg', 'webfile/produk/6950c16c9bcc6995f376b297f163175975949.jpg', 'http://192.168.1.13:8080/webfile/produk/6950c16c9bcc6995f376b297f163175975949.jpg', 'm_produk', 6, 'ENABLE', '2019-10-15 15:26:55', NULL),
(37, 'default.png', 'image/png', 'webfile/user/default.png', 'http://192.168.1.13:8000/webfile/user/default.png', 'tbl_user', 2, 'ENABLE', '2019-10-16 09:31:42', NULL);

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
  `value` text DEFAULT NULL,
  `status` enum('ENABLE','DISABLE') DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `konfig`
--

INSERT INTO `konfig` (`id`, `slug`, `value`, `status`, `created_at`, `updated_at`) VALUES
(6, 'APPLICATION', 'Terapi', 'ENABLE', '2019-02-18 15:28:44', '2019-09-27 15:36:38'),
(7, 'LOGO', 'http://www.pertanian.go.id/img/logo.png', 'ENABLE', '2019-02-18 15:29:32', '2019-04-29 10:56:09'),
(8, 'LOGIN_BACKGROUND', 'background-image: url(\'https://coloredbrain.com/wp-content/uploads/2016/07/login-background.jpg\');background-size: cover;background-position: center;', 'ENABLE', '2019-02-18 15:29:52', '2019-04-29 10:57:19'),
(9, 'COLOR_HEADER', 'background: linear-gradient(to right,#0052D4,#65C7F7);', 'DISABLE', '2019-02-18 15:30:24', '2019-02-18 15:31:08'),
(10, 'VERSION', '1.0.0', 'ENABLE', '2019-02-18 15:30:39', NULL),
(11, 'COPYRIGHT', '© 2019 <a href=\"http://karyastudio.com/\" target=\"_blank\">Karya Studio</a>.</strong> All rights     reserved.', 'ENABLE', '2019-02-18 15:32:01', '2019-02-19 10:27:32'),
(12, 'SKIN', 'skin-blue', 'ENABLE', '2019-02-18 15:34:01', '2019-08-15 11:11:39'),
(13, 'TITLE_APPLICATION', 'Karya Studio | Standard Operation System', 'ENABLE', '2019-02-18 15:39:54', '2019-08-15 17:59:41'),
(14, 'APPLICATION_SMALL', 'KS', 'ENABLE', '2019-02-18 15:42:41', '2019-08-15 17:59:06'),
(15, 'LOGIN_BOX', 'background : #fff !important ; ', 'ENABLE', '2019-02-18 15:45:53', '2019-02-18 15:58:53'),
(16, 'TITLE_LOGIN_APPLICATION', 'Karya Studio | Login', 'ENABLE', '2019-02-18 15:47:41', '2019-08-15 17:59:53'),
(17, 'LOGIN_TITLE', 'LOGIN ADMIN', 'ENABLE', '2019-02-18 15:48:55', NULL),
(24, 'LOGIN', '1', 'ENABLE', '2019-02-21 14:12:14', '2019-08-15 17:59:17'),
(25, 'email-template', '<!DOCTYPE html PUBLIC \"-//W3C//DTD XHTML 1.0 Strict//EN\" \"http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd\">\r\n<html xmlns=\"http://www.w3.org/1999/xhtml\">\r\n\r\n<head>\r\n    <meta http-equiv=\"Content-Type\" content=\"text/html; charset=utf-8\" />\r\n    <meta name=\"viewport\" content=\"width=device-width\" />\r\n\r\n\r\n    <style type=\"text/css\">\r\n        /* Your custom styles go here */\r\n        * {\r\n            margin: 0;\r\n            padding: 0;\r\n            font-size: 100%;\r\n            font-family: \'Avenir Next\', \"Helvetica Neue\", \"Helvetica\", Helvetica, Arial, sans-serif;\r\n            line-height: 1.65;\r\n        }\r\n\r\n        img {\r\n            max-width: 100%;\r\n            margin: 0 auto;\r\n            display: block;\r\n        }\r\n\r\n        body,\r\n        .body-wrap {\r\n            width: 100% !important;\r\n            height: 100%;\r\n            background: #f8f8f8;\r\n        }\r\n\r\n        a {\r\n            color: #71bc37;\r\n            text-decoration: none;\r\n        }\r\n\r\n        a:hover {\r\n            text-decoration: underline;\r\n        }\r\n\r\n        .text-center {\r\n            text-align: center;\r\n        }\r\n\r\n        .text-right {\r\n            text-align: right;\r\n        }\r\n\r\n        .text-left {\r\n            text-align: left;\r\n        }\r\n\r\n        .button {\r\n            display: inline-block;\r\n            color: white;\r\n            background: #71bc37;\r\n            border: solid #71bc37;\r\n            border-width: 10px 20px 8px;\r\n            font-weight: bold;\r\n            border-radius: 4px;\r\n        }\r\n\r\n        .button:hover {\r\n            text-decoration: none;\r\n        }\r\n\r\n        h1,\r\n        h2,\r\n        h3,\r\n        h4,\r\n        h5,\r\n        h6 {\r\n            margin-bottom: 20px;\r\n            line-height: 1.25;\r\n        }\r\n\r\n        h1 {\r\n            font-size: 32px;\r\n        }\r\n\r\n        h2 {\r\n            font-size: 28px;\r\n        }\r\n\r\n        h3 {\r\n            font-size: 24px;\r\n        }\r\n\r\n        h4 {\r\n            font-size: 20px;\r\n        }\r\n\r\n        h5 {\r\n            font-size: 16px;\r\n        }\r\n\r\n        p,\r\n        ul,\r\n        ol {\r\n            font-size: 16px;\r\n            font-weight: normal;\r\n            margin-bottom: 20px;\r\n        }\r\n\r\n        .container {\r\n            display: block !important;\r\n            clear: both !important;\r\n            margin: 0 auto !important;\r\n            max-width: 580px !important;\r\n        }\r\n\r\n        .container table {\r\n            width: 100% !important;\r\n            border-collapse: collapse;\r\n        }\r\n\r\n        .container .masthead {\r\n            padding: 80px 0;\r\n            background: #71bc37;\r\n            color: white;\r\n        }\r\n\r\n        .container .masthead h1 {\r\n            margin: 0 auto !important;\r\n            max-width: 90%;\r\n            text-transform: uppercase;\r\n        }\r\n\r\n        .container .content {\r\n            background: white;\r\n            padding: 30px 35px;\r\n        }\r\n\r\n        .container .content.footer {\r\n            background: none;\r\n        }\r\n\r\n        .container .content.footer p {\r\n            margin-bottom: 0;\r\n            color: #888;\r\n            text-align: center;\r\n            font-size: 14px;\r\n        }\r\n\r\n        .container .content.footer a {\r\n            color: #888;\r\n            text-decoration: none;\r\n            font-weight: bold;\r\n        }\r\n\r\n        .container .content.footer a:hover {\r\n            text-decoration: underline;\r\n        }\r\n\r\n    </style>\r\n</head>\r\n\r\n<body>\r\n    <table class=\"body-wrap\">\r\n        <tr>\r\n            <td class=\"container\">\r\n\r\n                <!-- Message start -->\r\n                <table>\r\n                    <tr>\r\n                        <td align=\"center\" class=\"masthead\">\r\n\r\n                            <h1>Something Big...</h1>\r\n\r\n                        </td>\r\n                    </tr>\r\n                    <tr>\r\n                        <td class=\"content\">\r\n\r\n                            <h2>Hi Stranger,</h2>\r\n\r\n                            <p>Kielbasa venison ball tip shankle. Boudin prosciutto landjaeger, pancetta jowl turkey tri-tip porchetta beef pork loin drumstick. Frankfurter short ribs kevin pig ribeye drumstick bacon kielbasa. Pork loin brisket biltong, pork belly filet mignon ribeye pig ground round porchetta turducken turkey. Pork belly beef ribs sausage ham hock, ham doner frankfurter pork chop tail meatball beef pig meatloaf short ribs shoulder. Filet mignon ham hock kielbasa beef ribs shank. Venison swine beef ribs sausage pastrami shoulder.</p>\r\n\r\n                            <table>\r\n                                <tr>\r\n                                    <td align=\"center\">\r\n                                        <p>\r\n                                            <a href=\"#\" class=\"button\">Share the Awesomeness</a>\r\n                                        </p>\r\n                                    </td>\r\n                                </tr>\r\n                            </table>\r\n\r\n                            <p>By the way, if you\'re wondering where you can find more of this fine meaty filler, visit <a href=\"http://baconipsum.com\">Bacon Ipsum</a>.</p>\r\n\r\n                            <p><em>– Mr. Pen</em></p>\r\n\r\n                        </td>\r\n                    </tr>\r\n                </table>\r\n\r\n            </td>\r\n        </tr>\r\n        <tr>\r\n            <td class=\"container\">\r\n\r\n                <!-- Message start -->\r\n                <table>\r\n                    <tr>\r\n                        <td class=\"content footer\" align=\"center\">\r\n                            <p>Sent by <a href=\"#\">Company Name</a>, 1234 Yellow Brick Road, OZ, 99999</p>\r\n                            <p><a href=\"mailto:\">hello@company.com</a> | <a href=\"#\">Unsubscribe</a></p>\r\n                        </td>\r\n                    </tr>\r\n                </table>\r\n\r\n            </td>\r\n        </tr>\r\n    </table>\r\n</body>\r\n\r\n</html>\r\n', 'ENABLE', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `logs`
--

CREATE TABLE `logs` (
  `id` int(11) NOT NULL,
  `uri` varchar(255) NOT NULL,
  `method` varchar(6) NOT NULL,
  `params` text DEFAULT NULL,
  `api_key` varchar(40) NOT NULL,
  `ip_address` varchar(45) NOT NULL,
  `time` int(11) NOT NULL,
  `rtime` float DEFAULT NULL,
  `authorized` varchar(1) NOT NULL,
  `response_code` smallint(3) DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `logs`
--

INSERT INTO `logs` (`id`, `uri`, `method`, `params`, `api_key`, `ip_address`, `time`, `rtime`, `authorized`, `response_code`) VALUES
(12, 'api/example/users/1', 'get', 'a:13:{s:2:\"id\";s:1:\"1\";s:4:\"Host\";s:11:\"gatoko1.com\";s:10:\"Connection\";s:10:\"keep-alive\";s:13:\"Authorization\";s:38:\"Basic c200cnRzMGZ0Oj96d01BeEJuUzlqag==\";s:13:\"Cache-Control\";s:8:\"no-cache\";s:8:\"x-sm-key\";s:32:\"35d3d08c3d7b7f445ceb8e726a87b26c\";s:10:\"User-Agent\";s:114:\"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.98 Safari/537.36\";s:13:\"Postman-Token\";s:36:\"b95151e2-01cb-48b0-fc71-74788b971014\";s:6:\"Accept\";s:3:\"*/*\";s:15:\"Accept-Encoding\";s:13:\"gzip, deflate\";s:15:\"Accept-Language\";s:45:\"id-ID,id;q=0.9,en-US;q=0.8,en;q=0.7,fil;q=0.6\";s:6:\"Cookie\";s:43:\"ci_session=kp7ibnsa9pihb2thj3g5ejllg6gvs00e\";s:14:\"Content-Length\";s:1:\"0\";}', '35d3d08c3d7b7f445ceb8e726a87b26c', '118.136.236.122', 1549426798, 1549430000, '1', 400),
(13, 'api/example/users/1', 'get', 'a:13:{s:2:\"id\";s:1:\"1\";s:4:\"Host\";s:11:\"gatoko1.com\";s:10:\"Connection\";s:10:\"keep-alive\";s:13:\"Authorization\";s:38:\"Basic c200cnRzMGZ0Oj96d01BeEJuUzlqag==\";s:13:\"Cache-Control\";s:8:\"no-cache\";s:8:\"x-sm-key\";s:32:\"35d3d08c3d7b7f445ceb8e726a87b26c\";s:10:\"User-Agent\";s:114:\"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.98 Safari/537.36\";s:13:\"Postman-Token\";s:36:\"da6c7ebc-d468-82cd-b107-a43b223e3229\";s:6:\"Accept\";s:3:\"*/*\";s:15:\"Accept-Encoding\";s:13:\"gzip, deflate\";s:15:\"Accept-Language\";s:45:\"id-ID,id;q=0.9,en-US;q=0.8,en;q=0.7,fil;q=0.6\";s:6:\"Cookie\";s:43:\"ci_session=kp7ibnsa9pihb2thj3g5ejllg6gvs00e\";s:14:\"Content-Length\";s:1:\"0\";}', '35d3d08c3d7b7f445ceb8e726a87b26c', '118.136.236.122', 1549426847, 1549430000, '1', 400),
(14, 'api/example/users', 'get', 'a:12:{s:4:\"Host\";s:11:\"gatoko1.com\";s:10:\"Connection\";s:10:\"keep-alive\";s:13:\"Authorization\";s:38:\"Basic c200cnRzMGZ0Oj96d01BeEJuUzlqag==\";s:13:\"Cache-Control\";s:8:\"no-cache\";s:8:\"x-sm-key\";s:32:\"35d3d08c3d7b7f445ceb8e726a87b26c\";s:10:\"User-Agent\";s:114:\"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.98 Safari/537.36\";s:13:\"Postman-Token\";s:36:\"295384ee-de46-448a-ee33-5da93f0ee6d3\";s:6:\"Accept\";s:3:\"*/*\";s:15:\"Accept-Encoding\";s:13:\"gzip, deflate\";s:15:\"Accept-Language\";s:45:\"id-ID,id;q=0.9,en-US;q=0.8,en;q=0.7,fil;q=0.6\";s:6:\"Cookie\";s:43:\"ci_session=kp7ibnsa9pihb2thj3g5ejllg6gvs00e\";s:14:\"Content-Length\";s:1:\"0\";}', '35d3d08c3d7b7f445ceb8e726a87b26c', '118.136.236.122', 1549426895, 1549430000, '1', 200),
(15, 'api/example/users/24', 'get', 'a:13:{s:2:\"id\";s:2:\"24\";s:4:\"Host\";s:11:\"gatoko1.com\";s:10:\"Connection\";s:10:\"keep-alive\";s:13:\"Authorization\";s:38:\"Basic c200cnRzMGZ0Oj96d01BeEJuUzlqag==\";s:13:\"Cache-Control\";s:8:\"no-cache\";s:8:\"x-sm-key\";s:32:\"35d3d08c3d7b7f445ceb8e726a87b26c\";s:10:\"User-Agent\";s:114:\"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.98 Safari/537.36\";s:13:\"Postman-Token\";s:36:\"9463f032-7a0c-d92f-b412-4fe3b0e3283d\";s:6:\"Accept\";s:3:\"*/*\";s:15:\"Accept-Encoding\";s:13:\"gzip, deflate\";s:15:\"Accept-Language\";s:45:\"id-ID,id;q=0.9,en-US;q=0.8,en;q=0.7,fil;q=0.6\";s:6:\"Cookie\";s:43:\"ci_session=kp7ibnsa9pihb2thj3g5ejllg6gvs00e\";s:14:\"Content-Length\";s:1:\"0\";}', '35d3d08c3d7b7f445ceb8e726a87b26c', '118.136.236.122', 1549426900, 1549430000, '1', 400),
(16, 'api/example/users/24', 'get', 'a:13:{s:2:\"id\";s:2:\"24\";s:4:\"Host\";s:11:\"gatoko1.com\";s:10:\"Connection\";s:10:\"keep-alive\";s:13:\"Authorization\";s:38:\"Basic c200cnRzMGZ0Oj96d01BeEJuUzlqag==\";s:13:\"Cache-Control\";s:8:\"no-cache\";s:8:\"x-sm-key\";s:32:\"35d3d08c3d7b7f445ceb8e726a87b26c\";s:10:\"User-Agent\";s:114:\"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.98 Safari/537.36\";s:13:\"Postman-Token\";s:36:\"466fe8da-8fb3-03e6-9281-d0d53ff867b5\";s:6:\"Accept\";s:3:\"*/*\";s:15:\"Accept-Encoding\";s:13:\"gzip, deflate\";s:15:\"Accept-Language\";s:45:\"id-ID,id;q=0.9,en-US;q=0.8,en;q=0.7,fil;q=0.6\";s:6:\"Cookie\";s:43:\"ci_session=kp7ibnsa9pihb2thj3g5ejllg6gvs00e\";s:14:\"Content-Length\";s:1:\"0\";}', '35d3d08c3d7b7f445ceb8e726a87b26c', '118.136.236.122', 1549426910, 1549430000, '1', 400),
(17, 'api/example/users/24', 'get', 'a:13:{s:2:\"id\";s:2:\"24\";s:4:\"Host\";s:11:\"gatoko1.com\";s:10:\"Connection\";s:10:\"keep-alive\";s:13:\"Authorization\";s:38:\"Basic c200cnRzMGZ0Oj96d01BeEJuUzlqag==\";s:13:\"Cache-Control\";s:8:\"no-cache\";s:8:\"x-sm-key\";s:32:\"35d3d08c3d7b7f445ceb8e726a87b26c\";s:10:\"User-Agent\";s:114:\"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.98 Safari/537.36\";s:13:\"Postman-Token\";s:36:\"a4353c0f-ae54-9d99-82b9-3952449d6589\";s:6:\"Accept\";s:3:\"*/*\";s:15:\"Accept-Encoding\";s:13:\"gzip, deflate\";s:15:\"Accept-Language\";s:45:\"id-ID,id;q=0.9,en-US;q=0.8,en;q=0.7,fil;q=0.6\";s:6:\"Cookie\";s:43:\"ci_session=kp7ibnsa9pihb2thj3g5ejllg6gvs00e\";s:14:\"Content-Length\";s:1:\"0\";}', '35d3d08c3d7b7f445ceb8e726a87b26c', '118.136.236.122', 1549426923, 1549430000, '1', 400),
(18, 'api/example/users/24', 'get', 'a:13:{s:2:\"id\";s:2:\"24\";s:4:\"Host\";s:11:\"gatoko1.com\";s:10:\"Connection\";s:10:\"keep-alive\";s:13:\"Authorization\";s:38:\"Basic c200cnRzMGZ0Oj96d01BeEJuUzlqag==\";s:13:\"Cache-Control\";s:8:\"no-cache\";s:8:\"x-sm-key\";s:32:\"35d3d08c3d7b7f445ceb8e726a87b26c\";s:10:\"User-Agent\";s:114:\"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.98 Safari/537.36\";s:13:\"Postman-Token\";s:36:\"4b9ec719-7307-81d5-7700-cc52c1882174\";s:6:\"Accept\";s:3:\"*/*\";s:15:\"Accept-Encoding\";s:13:\"gzip, deflate\";s:15:\"Accept-Language\";s:45:\"id-ID,id;q=0.9,en-US;q=0.8,en;q=0.7,fil;q=0.6\";s:6:\"Cookie\";s:43:\"ci_session=kp7ibnsa9pihb2thj3g5ejllg6gvs00e\";s:14:\"Content-Length\";s:1:\"0\";}', '35d3d08c3d7b7f445ceb8e726a87b26c', '118.136.236.122', 1549426931, 1549430000, '1', 400),
(19, 'api/example/users/24', 'get', 'a:13:{s:2:\"id\";s:2:\"24\";s:4:\"Host\";s:11:\"gatoko1.com\";s:10:\"Connection\";s:10:\"keep-alive\";s:13:\"Authorization\";s:38:\"Basic c200cnRzMGZ0Oj96d01BeEJuUzlqag==\";s:13:\"Cache-Control\";s:8:\"no-cache\";s:8:\"x-sm-key\";s:32:\"35d3d08c3d7b7f445ceb8e726a87b26c\";s:10:\"User-Agent\";s:114:\"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.98 Safari/537.36\";s:13:\"Postman-Token\";s:36:\"1a9c3d5a-3eea-1ea0-192d-69d8b0d3bd7e\";s:6:\"Accept\";s:3:\"*/*\";s:15:\"Accept-Encoding\";s:13:\"gzip, deflate\";s:15:\"Accept-Language\";s:45:\"id-ID,id;q=0.9,en-US;q=0.8,en;q=0.7,fil;q=0.6\";s:6:\"Cookie\";s:43:\"ci_session=kp7ibnsa9pihb2thj3g5ejllg6gvs00e\";s:14:\"Content-Length\";s:1:\"0\";}', '35d3d08c3d7b7f445ceb8e726a87b26c', '118.136.236.122', 1549426934, 1549430000, '1', 400),
(20, 'api/example/users/24', 'get', 'a:13:{s:2:\"id\";s:2:\"24\";s:4:\"Host\";s:11:\"gatoko1.com\";s:10:\"Connection\";s:10:\"keep-alive\";s:13:\"Authorization\";s:38:\"Basic c200cnRzMGZ0Oj96d01BeEJuUzlqag==\";s:13:\"Cache-Control\";s:8:\"no-cache\";s:8:\"x-sm-key\";s:32:\"35d3d08c3d7b7f445ceb8e726a87b26c\";s:10:\"User-Agent\";s:114:\"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.98 Safari/537.36\";s:13:\"Postman-Token\";s:36:\"faf745f8-86a1-6571-45a1-1d5c705857e3\";s:6:\"Accept\";s:3:\"*/*\";s:15:\"Accept-Encoding\";s:13:\"gzip, deflate\";s:15:\"Accept-Language\";s:45:\"id-ID,id;q=0.9,en-US;q=0.8,en;q=0.7,fil;q=0.6\";s:6:\"Cookie\";s:43:\"ci_session=kp7ibnsa9pihb2thj3g5ejllg6gvs00e\";s:14:\"Content-Length\";s:1:\"0\";}', '35d3d08c3d7b7f445ceb8e726a87b26c', '118.136.236.122', 1549426935, 1549430000, '1', 400),
(21, 'api/example/users/24', 'get', 'a:13:{s:2:\"id\";s:2:\"24\";s:4:\"Host\";s:11:\"gatoko1.com\";s:10:\"Connection\";s:10:\"keep-alive\";s:13:\"Authorization\";s:38:\"Basic c200cnRzMGZ0Oj96d01BeEJuUzlqag==\";s:13:\"Cache-Control\";s:8:\"no-cache\";s:8:\"x-sm-key\";s:32:\"35d3d08c3d7b7f445ceb8e726a87b26c\";s:10:\"User-Agent\";s:114:\"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.98 Safari/537.36\";s:13:\"Postman-Token\";s:36:\"d66bf86e-f241-d6bc-59a8-53e219895de5\";s:6:\"Accept\";s:3:\"*/*\";s:15:\"Accept-Encoding\";s:13:\"gzip, deflate\";s:15:\"Accept-Language\";s:45:\"id-ID,id;q=0.9,en-US;q=0.8,en;q=0.7,fil;q=0.6\";s:6:\"Cookie\";s:43:\"ci_session=kp7ibnsa9pihb2thj3g5ejllg6gvs00e\";s:14:\"Content-Length\";s:1:\"0\";}', '35d3d08c3d7b7f445ceb8e726a87b26c', '118.136.236.122', 1549426936, 1549430000, '1', 400),
(22, 'api/example/users/24', 'get', 'a:13:{s:2:\"id\";s:2:\"24\";s:4:\"Host\";s:11:\"gatoko1.com\";s:10:\"Connection\";s:10:\"keep-alive\";s:13:\"Authorization\";s:38:\"Basic c200cnRzMGZ0Oj96d01BeEJuUzlqag==\";s:13:\"Cache-Control\";s:8:\"no-cache\";s:8:\"x-sm-key\";s:32:\"35d3d08c3d7b7f445ceb8e726a87b26c\";s:10:\"User-Agent\";s:114:\"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.98 Safari/537.36\";s:13:\"Postman-Token\";s:36:\"8d1e6190-f1ee-732f-0712-9b86f649431a\";s:6:\"Accept\";s:3:\"*/*\";s:15:\"Accept-Encoding\";s:13:\"gzip, deflate\";s:15:\"Accept-Language\";s:45:\"id-ID,id;q=0.9,en-US;q=0.8,en;q=0.7,fil;q=0.6\";s:6:\"Cookie\";s:43:\"ci_session=kp7ibnsa9pihb2thj3g5ejllg6gvs00e\";s:14:\"Content-Length\";s:1:\"0\";}', '35d3d08c3d7b7f445ceb8e726a87b26c', '118.136.236.122', 1549426958, 1549430000, '1', 400),
(23, 'api/example/users/24', 'get', 'a:13:{s:2:\"id\";s:2:\"24\";s:4:\"Host\";s:11:\"gatoko1.com\";s:10:\"Connection\";s:10:\"keep-alive\";s:13:\"Authorization\";s:38:\"Basic c200cnRzMGZ0Oj96d01BeEJuUzlqag==\";s:13:\"Cache-Control\";s:8:\"no-cache\";s:8:\"x-sm-key\";s:32:\"35d3d08c3d7b7f445ceb8e726a87b26c\";s:10:\"User-Agent\";s:114:\"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.98 Safari/537.36\";s:13:\"Postman-Token\";s:36:\"d947680b-21bb-f0d0-cb14-816ffd6557e6\";s:6:\"Accept\";s:3:\"*/*\";s:15:\"Accept-Encoding\";s:13:\"gzip, deflate\";s:15:\"Accept-Language\";s:45:\"id-ID,id;q=0.9,en-US;q=0.8,en;q=0.7,fil;q=0.6\";s:6:\"Cookie\";s:43:\"ci_session=kp7ibnsa9pihb2thj3g5ejllg6gvs00e\";s:14:\"Content-Length\";s:1:\"0\";}', '35d3d08c3d7b7f445ceb8e726a87b26c', '118.136.236.122', 1549426959, 1549430000, '1', 400),
(24, 'api/example/users/24', 'get', 'a:13:{s:2:\"id\";s:2:\"24\";s:4:\"Host\";s:11:\"gatoko1.com\";s:10:\"Connection\";s:10:\"keep-alive\";s:13:\"Authorization\";s:38:\"Basic c200cnRzMGZ0Oj96d01BeEJuUzlqag==\";s:13:\"Cache-Control\";s:8:\"no-cache\";s:8:\"x-sm-key\";s:32:\"35d3d08c3d7b7f445ceb8e726a87b26c\";s:10:\"User-Agent\";s:114:\"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.98 Safari/537.36\";s:13:\"Postman-Token\";s:36:\"196ad13d-5766-c800-4cc0-6521f1f0a5fa\";s:6:\"Accept\";s:3:\"*/*\";s:15:\"Accept-Encoding\";s:13:\"gzip, deflate\";s:15:\"Accept-Language\";s:45:\"id-ID,id;q=0.9,en-US;q=0.8,en;q=0.7,fil;q=0.6\";s:6:\"Cookie\";s:43:\"ci_session=kp7ibnsa9pihb2thj3g5ejllg6gvs00e\";s:14:\"Content-Length\";s:1:\"0\";}', '35d3d08c3d7b7f445ceb8e726a87b26c', '118.136.236.122', 1549426967, 1549430000, '1', 400),
(25, 'api/example/users/24', 'get', 'a:13:{s:2:\"id\";s:2:\"24\";s:4:\"Host\";s:11:\"gatoko1.com\";s:10:\"Connection\";s:10:\"keep-alive\";s:13:\"Authorization\";s:38:\"Basic c200cnRzMGZ0Oj96d01BeEJuUzlqag==\";s:13:\"Cache-Control\";s:8:\"no-cache\";s:8:\"x-sm-key\";s:32:\"35d3d08c3d7b7f445ceb8e726a87b26c\";s:10:\"User-Agent\";s:114:\"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.98 Safari/537.36\";s:13:\"Postman-Token\";s:36:\"aa627fb0-cd37-f6b7-1353-a00ab4db601f\";s:6:\"Accept\";s:3:\"*/*\";s:15:\"Accept-Encoding\";s:13:\"gzip, deflate\";s:15:\"Accept-Language\";s:45:\"id-ID,id;q=0.9,en-US;q=0.8,en;q=0.7,fil;q=0.6\";s:6:\"Cookie\";s:43:\"ci_session=kp7ibnsa9pihb2thj3g5ejllg6gvs00e\";s:14:\"Content-Length\";s:1:\"0\";}', '35d3d08c3d7b7f445ceb8e726a87b26c', '118.136.236.122', 1549426968, 1549430000, '1', 400),
(26, 'api/example/users/24', 'get', 'a:13:{s:2:\"id\";s:2:\"24\";s:4:\"Host\";s:11:\"gatoko1.com\";s:10:\"Connection\";s:10:\"keep-alive\";s:13:\"Authorization\";s:38:\"Basic c200cnRzMGZ0Oj96d01BeEJuUzlqag==\";s:13:\"Cache-Control\";s:8:\"no-cache\";s:8:\"x-sm-key\";s:32:\"35d3d08c3d7b7f445ceb8e726a87b26c\";s:10:\"User-Agent\";s:114:\"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.98 Safari/537.36\";s:13:\"Postman-Token\";s:36:\"5cd4e253-2ef5-0abe-87fd-1c70c0b74460\";s:6:\"Accept\";s:3:\"*/*\";s:15:\"Accept-Encoding\";s:13:\"gzip, deflate\";s:15:\"Accept-Language\";s:45:\"id-ID,id;q=0.9,en-US;q=0.8,en;q=0.7,fil;q=0.6\";s:6:\"Cookie\";s:43:\"ci_session=kp7ibnsa9pihb2thj3g5ejllg6gvs00e\";s:14:\"Content-Length\";s:1:\"0\";}', '35d3d08c3d7b7f445ceb8e726a87b26c', '118.136.236.122', 1549426978, 1549430000, '1', 400),
(27, 'api/example/users/24', 'get', 'a:13:{s:2:\"id\";s:2:\"24\";s:4:\"Host\";s:11:\"gatoko1.com\";s:10:\"Connection\";s:10:\"keep-alive\";s:13:\"Authorization\";s:38:\"Basic c200cnRzMGZ0Oj96d01BeEJuUzlqag==\";s:13:\"Cache-Control\";s:8:\"no-cache\";s:8:\"x-sm-key\";s:32:\"35d3d08c3d7b7f445ceb8e726a87b26c\";s:10:\"User-Agent\";s:114:\"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.98 Safari/537.36\";s:13:\"Postman-Token\";s:36:\"313f78a7-c82e-0686-8762-b874535cdcbf\";s:6:\"Accept\";s:3:\"*/*\";s:15:\"Accept-Encoding\";s:13:\"gzip, deflate\";s:15:\"Accept-Language\";s:45:\"id-ID,id;q=0.9,en-US;q=0.8,en;q=0.7,fil;q=0.6\";s:6:\"Cookie\";s:43:\"ci_session=kp7ibnsa9pihb2thj3g5ejllg6gvs00e\";s:14:\"Content-Length\";s:1:\"0\";}', '35d3d08c3d7b7f445ceb8e726a87b26c', '118.136.236.122', 1549427000, 1549430000, '1', 400),
(28, 'api/example/users/24', 'get', 'a:13:{s:2:\"id\";s:2:\"24\";s:4:\"Host\";s:11:\"gatoko1.com\";s:10:\"Connection\";s:10:\"keep-alive\";s:13:\"Authorization\";s:38:\"Basic c200cnRzMGZ0Oj96d01BeEJuUzlqag==\";s:13:\"Cache-Control\";s:8:\"no-cache\";s:8:\"x-sm-key\";s:32:\"35d3d08c3d7b7f445ceb8e726a87b26c\";s:10:\"User-Agent\";s:114:\"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.98 Safari/537.36\";s:13:\"Postman-Token\";s:36:\"465eac17-0ecf-a742-60c1-d1bb5aad672c\";s:6:\"Accept\";s:3:\"*/*\";s:15:\"Accept-Encoding\";s:13:\"gzip, deflate\";s:15:\"Accept-Language\";s:45:\"id-ID,id;q=0.9,en-US;q=0.8,en;q=0.7,fil;q=0.6\";s:6:\"Cookie\";s:43:\"ci_session=kp7ibnsa9pihb2thj3g5ejllg6gvs00e\";s:14:\"Content-Length\";s:1:\"0\";}', '35d3d08c3d7b7f445ceb8e726a87b26c', '118.136.236.122', 1549427018, 1549430000, '1', 400),
(29, 'api/example/users/24', 'get', 'a:13:{s:2:\"id\";s:2:\"24\";s:4:\"Host\";s:11:\"gatoko1.com\";s:10:\"Connection\";s:10:\"keep-alive\";s:13:\"Authorization\";s:38:\"Basic c200cnRzMGZ0Oj96d01BeEJuUzlqag==\";s:13:\"Cache-Control\";s:8:\"no-cache\";s:8:\"x-sm-key\";s:32:\"35d3d08c3d7b7f445ceb8e726a87b26c\";s:10:\"User-Agent\";s:114:\"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.98 Safari/537.36\";s:13:\"Postman-Token\";s:36:\"b1a5d762-4c11-9bf5-3a0f-c672375a4477\";s:6:\"Accept\";s:3:\"*/*\";s:15:\"Accept-Encoding\";s:13:\"gzip, deflate\";s:15:\"Accept-Language\";s:45:\"id-ID,id;q=0.9,en-US;q=0.8,en;q=0.7,fil;q=0.6\";s:6:\"Cookie\";s:43:\"ci_session=kp7ibnsa9pihb2thj3g5ejllg6gvs00e\";s:14:\"Content-Length\";s:1:\"0\";}', '35d3d08c3d7b7f445ceb8e726a87b26c', '118.136.236.122', 1549427058, 1549430000, '1', 200),
(30, 'api/example/users', 'get', 'a:12:{s:4:\"Host\";s:11:\"gatoko1.com\";s:10:\"Connection\";s:10:\"keep-alive\";s:13:\"Authorization\";s:38:\"Basic c200cnRzMGZ0Oj96d01BeEJuUzlqag==\";s:13:\"Cache-Control\";s:8:\"no-cache\";s:8:\"x-sm-key\";s:32:\"35d3d08c3d7b7f445ceb8e726a87b26c\";s:10:\"User-Agent\";s:114:\"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.98 Safari/537.36\";s:13:\"Postman-Token\";s:36:\"bc6fbf72-1adf-b4ba-a316-5b75ea6b1cb9\";s:6:\"Accept\";s:3:\"*/*\";s:15:\"Accept-Encoding\";s:13:\"gzip, deflate\";s:15:\"Accept-Language\";s:45:\"id-ID,id;q=0.9,en-US;q=0.8,en;q=0.7,fil;q=0.6\";s:6:\"Cookie\";s:43:\"ci_session=kp7ibnsa9pihb2thj3g5ejllg6gvs00e\";s:14:\"Content-Length\";s:1:\"0\";}', '35d3d08c3d7b7f445ceb8e726a87b26c', '118.136.236.122', 1549427061, 1549430000, '1', 200),
(31, 'api/example/users-detail/1', 'get', 'a:14:{i:0;N;s:4:\"Host\";s:11:\"gatoko1.com\";s:10:\"Connection\";s:10:\"keep-alive\";s:13:\"Authorization\";s:38:\"Basic c200cnRzMGZ0Oj96d01BeEJuUzlqag==\";s:13:\"Cache-Control\";s:8:\"no-cache\";s:8:\"x-sm-key\";s:32:\"35d3d08c3d7b7f445ceb8e726a87b26c\";s:10:\"User-Agent\";s:114:\"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.98 Safari/537.36\";s:13:\"Postman-Token\";s:36:\"541c15c3-9e59-a3ec-6a6c-65e6eee16eda\";s:6:\"Accept\";s:3:\"*/*\";s:15:\"Accept-Encoding\";s:13:\"gzip, deflate\";s:15:\"Accept-Language\";s:45:\"id-ID,id;q=0.9,en-US;q=0.8,en;q=0.7,fil;q=0.6\";s:6:\"Cookie\";s:43:\"ci_session=kp7ibnsa9pihb2thj3g5ejllg6gvs00e\";s:14:\"Content-Length\";s:1:\"0\";i:1;N;}', '35d3d08c3d7b7f445ceb8e726a87b26c', '118.136.236.122', 1549427100, 1549430000, '1', 200),
(32, 'api/example/users-detail/1', 'get', 'a:14:{i:0;N;s:4:\"Host\";s:11:\"gatoko1.com\";s:10:\"Connection\";s:10:\"keep-alive\";s:13:\"Authorization\";s:38:\"Basic c200cnRzMGZ0Oj96d01BeEJuUzlqag==\";s:13:\"Cache-Control\";s:8:\"no-cache\";s:8:\"x-sm-key\";s:32:\"35d3d08c3d7b7f445ceb8e726a87b26c\";s:10:\"User-Agent\";s:114:\"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.98 Safari/537.36\";s:13:\"Postman-Token\";s:36:\"4ea9e5cc-a4c2-710e-9f72-f921bcd470f7\";s:6:\"Accept\";s:3:\"*/*\";s:15:\"Accept-Encoding\";s:13:\"gzip, deflate\";s:15:\"Accept-Language\";s:45:\"id-ID,id;q=0.9,en-US;q=0.8,en;q=0.7,fil;q=0.6\";s:6:\"Cookie\";s:43:\"ci_session=8rtpkm1nfabdkg2pphk15kukku3536p8\";s:14:\"Content-Length\";s:1:\"0\";i:1;N;}', '35d3d08c3d7b7f445ceb8e726a87b26c', '118.136.236.122', 1549427157, 1549430000, '1', 200),
(33, 'api/example/users-detail/1', 'get', 'a:14:{i:0;N;s:4:\"Host\";s:11:\"gatoko1.com\";s:10:\"Connection\";s:10:\"keep-alive\";s:13:\"Authorization\";s:38:\"Basic c200cnRzMGZ0Oj96d01BeEJuUzlqag==\";s:13:\"Cache-Control\";s:8:\"no-cache\";s:8:\"x-sm-key\";s:32:\"35d3d08c3d7b7f445ceb8e726a87b26c\";s:10:\"User-Agent\";s:114:\"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.98 Safari/537.36\";s:13:\"Postman-Token\";s:36:\"c58bbf9d-48fe-4890-0e5a-87c7d21f1bcb\";s:6:\"Accept\";s:3:\"*/*\";s:15:\"Accept-Encoding\";s:13:\"gzip, deflate\";s:15:\"Accept-Language\";s:45:\"id-ID,id;q=0.9,en-US;q=0.8,en;q=0.7,fil;q=0.6\";s:6:\"Cookie\";s:43:\"ci_session=8rtpkm1nfabdkg2pphk15kukku3536p8\";s:14:\"Content-Length\";s:1:\"0\";i:1;N;}', '35d3d08c3d7b7f445ceb8e726a87b26c', '118.136.236.122', 1549427166, 1549430000, '1', 200),
(34, 'api/example/users-detail/1', 'get', 'a:14:{i:0;N;s:4:\"Host\";s:11:\"gatoko1.com\";s:10:\"Connection\";s:10:\"keep-alive\";s:13:\"Authorization\";s:38:\"Basic c200cnRzMGZ0Oj96d01BeEJuUzlqag==\";s:13:\"Cache-Control\";s:8:\"no-cache\";s:8:\"x-sm-key\";s:32:\"35d3d08c3d7b7f445ceb8e726a87b26c\";s:10:\"User-Agent\";s:114:\"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.98 Safari/537.36\";s:13:\"Postman-Token\";s:36:\"a864cc0c-2540-09b1-c9e4-15a3c7791f89\";s:6:\"Accept\";s:3:\"*/*\";s:15:\"Accept-Encoding\";s:13:\"gzip, deflate\";s:15:\"Accept-Language\";s:45:\"id-ID,id;q=0.9,en-US;q=0.8,en;q=0.7,fil;q=0.6\";s:6:\"Cookie\";s:43:\"ci_session=8rtpkm1nfabdkg2pphk15kukku3536p8\";s:14:\"Content-Length\";s:1:\"0\";i:1;N;}', '35d3d08c3d7b7f445ceb8e726a87b26c', '118.136.236.122', 1549427177, 1549430000, '1', 200),
(35, 'api/example/users', 'get', 'a:12:{s:4:\"Host\";s:11:\"gatoko1.com\";s:10:\"Connection\";s:10:\"keep-alive\";s:13:\"Authorization\";s:38:\"Basic c200cnRzMGZ0Oj96d01BeEJuUzlqag==\";s:13:\"Cache-Control\";s:8:\"no-cache\";s:8:\"x-sm-key\";s:32:\"35d3d08c3d7b7f445ceb8e726a87b26c\";s:10:\"User-Agent\";s:114:\"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.98 Safari/537.36\";s:13:\"Postman-Token\";s:36:\"97063f8c-c173-d733-e5b1-eb36b50c6717\";s:6:\"Accept\";s:3:\"*/*\";s:15:\"Accept-Encoding\";s:13:\"gzip, deflate\";s:15:\"Accept-Language\";s:45:\"id-ID,id;q=0.9,en-US;q=0.8,en;q=0.7,fil;q=0.6\";s:6:\"Cookie\";s:43:\"ci_session=8rtpkm1nfabdkg2pphk15kukku3536p8\";s:14:\"Content-Length\";s:1:\"0\";}', '35d3d08c3d7b7f445ceb8e726a87b26c', '118.136.236.122', 1549427200, 1549430000, '1', 200),
(36, 'api/example/services', 'get', 'a:12:{s:4:\"Host\";s:11:\"gatoko1.com\";s:10:\"Connection\";s:10:\"keep-alive\";s:13:\"Authorization\";s:38:\"Basic c200cnRzMGZ0Oj96d01BeEJuUzlqag==\";s:13:\"Cache-Control\";s:8:\"no-cache\";s:8:\"x-sm-key\";s:32:\"35d3d08c3d7b7f445ceb8e726a87b26c\";s:10:\"User-Agent\";s:114:\"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.98 Safari/537.36\";s:13:\"Postman-Token\";s:36:\"d74b25e0-c53c-1b24-ee1e-a456ca5e754a\";s:6:\"Accept\";s:3:\"*/*\";s:15:\"Accept-Encoding\";s:13:\"gzip, deflate\";s:15:\"Accept-Language\";s:45:\"id-ID,id;q=0.9,en-US;q=0.8,en;q=0.7,fil;q=0.6\";s:6:\"Cookie\";s:43:\"ci_session=8rtpkm1nfabdkg2pphk15kukku3536p8\";s:14:\"Content-Length\";s:1:\"0\";}', '35d3d08c3d7b7f445ceb8e726a87b26c', '118.136.236.122', 1549428325, 1549430000, '1', 0),
(37, 'api/example/services', 'get', 'a:12:{s:4:\"Host\";s:11:\"gatoko1.com\";s:10:\"Connection\";s:10:\"keep-alive\";s:13:\"Authorization\";s:38:\"Basic c200cnRzMGZ0Oj96d01BeEJuUzlqag==\";s:13:\"Cache-Control\";s:8:\"no-cache\";s:8:\"x-sm-key\";s:32:\"35d3d08c3d7b7f445ceb8e726a87b26c\";s:10:\"User-Agent\";s:114:\"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.98 Safari/537.36\";s:13:\"Postman-Token\";s:36:\"2dcb425a-4947-898b-1c78-91cda05e66a3\";s:6:\"Accept\";s:3:\"*/*\";s:15:\"Accept-Encoding\";s:13:\"gzip, deflate\";s:15:\"Accept-Language\";s:45:\"id-ID,id;q=0.9,en-US;q=0.8,en;q=0.7,fil;q=0.6\";s:6:\"Cookie\";s:43:\"ci_session=h6f32vnji308dtjd5sr71vei0ltn58lq\";s:14:\"Content-Length\";s:1:\"0\";}', '35d3d08c3d7b7f445ceb8e726a87b26c', '118.136.236.122', 1549428345, 1549430000, '1', 404),
(38, 'api/example/services', 'get', 'a:12:{s:4:\"Host\";s:11:\"gatoko1.com\";s:10:\"Connection\";s:10:\"keep-alive\";s:13:\"Authorization\";s:38:\"Basic c200cnRzMGZ0Oj96d01BeEJuUzlqag==\";s:13:\"Cache-Control\";s:8:\"no-cache\";s:8:\"x-sm-key\";s:32:\"35d3d08c3d7b7f445ceb8e726a87b26c\";s:10:\"User-Agent\";s:114:\"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.98 Safari/537.36\";s:13:\"Postman-Token\";s:36:\"ad64360f-e0c5-ec3c-3da3-c50b37fbef7f\";s:6:\"Accept\";s:3:\"*/*\";s:15:\"Accept-Encoding\";s:13:\"gzip, deflate\";s:15:\"Accept-Language\";s:45:\"id-ID,id;q=0.9,en-US;q=0.8,en;q=0.7,fil;q=0.6\";s:6:\"Cookie\";s:43:\"ci_session=h6f32vnji308dtjd5sr71vei0ltn58lq\";s:14:\"Content-Length\";s:1:\"0\";}', '35d3d08c3d7b7f445ceb8e726a87b26c', '118.136.236.122', 1549428370, 1549430000, '1', 404),
(39, 'api/example/services', 'get', 'a:12:{s:4:\"Host\";s:11:\"gatoko1.com\";s:10:\"Connection\";s:10:\"keep-alive\";s:13:\"Authorization\";s:38:\"Basic c200cnRzMGZ0Oj96d01BeEJuUzlqag==\";s:13:\"Cache-Control\";s:8:\"no-cache\";s:8:\"x-sm-key\";s:32:\"35d3d08c3d7b7f445ceb8e726a87b26c\";s:10:\"User-Agent\";s:114:\"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.98 Safari/537.36\";s:13:\"Postman-Token\";s:36:\"7c2b7aba-7f85-deed-d309-3d825769427e\";s:6:\"Accept\";s:3:\"*/*\";s:15:\"Accept-Encoding\";s:13:\"gzip, deflate\";s:15:\"Accept-Language\";s:45:\"id-ID,id;q=0.9,en-US;q=0.8,en;q=0.7,fil;q=0.6\";s:6:\"Cookie\";s:43:\"ci_session=h6f32vnji308dtjd5sr71vei0ltn58lq\";s:14:\"Content-Length\";s:1:\"0\";}', '35d3d08c3d7b7f445ceb8e726a87b26c', '118.136.236.122', 1549428382, 1549430000, '1', 404),
(40, 'api/example/services', 'post', 'a:17:{s:4:\"Host\";s:11:\"gatoko1.com\";s:10:\"Connection\";s:10:\"keep-alive\";s:14:\"Content-Length\";s:3:\"337\";s:13:\"Authorization\";s:38:\"Basic c200cnRzMGZ0Oj96d01BeEJuUzlqag==\";s:13:\"Postman-Token\";s:36:\"a927b74d-cc4b-7215-9fdd-f3592820fcb0\";s:13:\"Cache-Control\";s:8:\"no-cache\";s:6:\"Origin\";s:51:\"chrome-extension://fhbjgbiflinjbdggehcddcbncdddomop\";s:8:\"x-sm-key\";s:32:\"35d3d08c3d7b7f445ceb8e726a87b26c\";s:10:\"User-Agent\";s:114:\"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.98 Safari/537.36\";s:12:\"Content-Type\";s:68:\"multipart/form-data; boundary=----WebKitFormBoundarymV0NNVKnF6IL7z29\";s:6:\"Accept\";s:3:\"*/*\";s:15:\"Accept-Encoding\";s:13:\"gzip, deflate\";s:15:\"Accept-Language\";s:45:\"id-ID,id;q=0.9,en-US;q=0.8,en;q=0.7,fil;q=0.6\";s:6:\"Cookie\";s:43:\"ci_session=h6f32vnji308dtjd5sr71vei0ltn58lq\";s:5:\"title\";s:3:\"tes\";s:4:\"date\";s:10:\"2019-01-01\";s:7:\"content\";s:3:\"ini\";}', '35d3d08c3d7b7f445ceb8e726a87b26c', '118.136.236.122', 1549428413, 1549430000, '1', 200),
(41, 'api/example/services', 'put', 'a:18:{s:4:\"Host\";s:11:\"gatoko1.com\";s:10:\"Connection\";s:10:\"keep-alive\";s:14:\"Content-Length\";s:2:\"43\";s:10:\"User-Agent\";s:114:\"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.98 Safari/537.36\";s:13:\"Cache-Control\";s:8:\"no-cache\";s:6:\"Origin\";s:51:\"chrome-extension://fhbjgbiflinjbdggehcddcbncdddomop\";s:12:\"Content-Type\";s:33:\"application/x-www-form-urlencoded\";s:8:\"x-sm-key\";s:32:\"35d3d08c3d7b7f445ceb8e726a87b26c\";s:13:\"Authorization\";s:38:\"Basic c200cnRzMGZ0Oj96d01BeEJuUzlqag==\";s:13:\"Postman-Token\";s:36:\"612f28dc-dc61-b57a-c9c0-69a5a8262b98\";s:6:\"Accept\";s:3:\"*/*\";s:15:\"Accept-Encoding\";s:13:\"gzip, deflate\";s:15:\"Accept-Language\";s:45:\"id-ID,id;q=0.9,en-US;q=0.8,en;q=0.7,fil;q=0.6\";s:6:\"Cookie\";s:43:\"ci_session=h6f32vnji308dtjd5sr71vei0ltn58lq\";s:5:\"title\";s:4:\"tesa\";s:4:\"date\";s:10:\"2019-01-01\";s:7:\"content\";s:3:\"ini\";s:2:\"id\";s:1:\"1\";}', '35d3d08c3d7b7f445ceb8e726a87b26c', '118.136.236.122', 1549428448, 1549430000, '1', 200),
(42, 'api/example/services-enable', 'put', 'a:15:{s:4:\"Host\";s:11:\"gatoko1.com\";s:10:\"Connection\";s:10:\"keep-alive\";s:14:\"Content-Length\";s:1:\"4\";s:10:\"User-Agent\";s:114:\"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.98 Safari/537.36\";s:13:\"Cache-Control\";s:8:\"no-cache\";s:6:\"Origin\";s:51:\"chrome-extension://fhbjgbiflinjbdggehcddcbncdddomop\";s:12:\"Content-Type\";s:33:\"application/x-www-form-urlencoded\";s:8:\"x-sm-key\";s:32:\"35d3d08c3d7b7f445ceb8e726a87b26c\";s:13:\"Authorization\";s:38:\"Basic c200cnRzMGZ0Oj96d01BeEJuUzlqag==\";s:13:\"Postman-Token\";s:36:\"391bbf12-fd99-4e28-7fc5-6496dc491b0c\";s:6:\"Accept\";s:3:\"*/*\";s:15:\"Accept-Encoding\";s:13:\"gzip, deflate\";s:15:\"Accept-Language\";s:45:\"id-ID,id;q=0.9,en-US;q=0.8,en;q=0.7,fil;q=0.6\";s:6:\"Cookie\";s:43:\"ci_session=h6f32vnji308dtjd5sr71vei0ltn58lq\";s:2:\"id\";s:1:\"1\";}', '35d3d08c3d7b7f445ceb8e726a87b26c', '118.136.236.122', 1549428468, 1549430000, '1', 200),
(43, 'api/example/services-disable', 'put', 'a:15:{s:4:\"Host\";s:11:\"gatoko1.com\";s:10:\"Connection\";s:10:\"keep-alive\";s:14:\"Content-Length\";s:1:\"4\";s:10:\"User-Agent\";s:114:\"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.98 Safari/537.36\";s:13:\"Cache-Control\";s:8:\"no-cache\";s:6:\"Origin\";s:51:\"chrome-extension://fhbjgbiflinjbdggehcddcbncdddomop\";s:12:\"Content-Type\";s:33:\"application/x-www-form-urlencoded\";s:8:\"x-sm-key\";s:32:\"35d3d08c3d7b7f445ceb8e726a87b26c\";s:13:\"Authorization\";s:38:\"Basic c200cnRzMGZ0Oj96d01BeEJuUzlqag==\";s:13:\"Postman-Token\";s:36:\"d5cbf18b-d9b5-f44d-c232-f84cc4d11db2\";s:6:\"Accept\";s:3:\"*/*\";s:15:\"Accept-Encoding\";s:13:\"gzip, deflate\";s:15:\"Accept-Language\";s:45:\"id-ID,id;q=0.9,en-US;q=0.8,en;q=0.7,fil;q=0.6\";s:6:\"Cookie\";s:43:\"ci_session=h6f32vnji308dtjd5sr71vei0ltn58lq\";s:2:\"id\";s:1:\"1\";}', '35d3d08c3d7b7f445ceb8e726a87b26c', '118.136.236.122', 1549428472, 1549430000, '1', 200),
(44, 'api/example/services', 'get', 'a:13:{s:4:\"Host\";s:11:\"gatoko1.com\";s:10:\"Connection\";s:10:\"keep-alive\";s:10:\"User-Agent\";s:114:\"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.98 Safari/537.36\";s:13:\"Cache-Control\";s:8:\"no-cache\";s:12:\"Content-Type\";s:33:\"application/x-www-form-urlencoded\";s:8:\"x-sm-key\";s:32:\"35d3d08c3d7b7f445ceb8e726a87b26c\";s:13:\"Authorization\";s:38:\"Basic c200cnRzMGZ0Oj96d01BeEJuUzlqag==\";s:13:\"Postman-Token\";s:36:\"16344db9-d25f-e334-9651-333d7e88314e\";s:6:\"Accept\";s:3:\"*/*\";s:15:\"Accept-Encoding\";s:13:\"gzip, deflate\";s:15:\"Accept-Language\";s:45:\"id-ID,id;q=0.9,en-US;q=0.8,en;q=0.7,fil;q=0.6\";s:6:\"Cookie\";s:43:\"ci_session=h6f32vnji308dtjd5sr71vei0ltn58lq\";s:14:\"Content-Length\";s:1:\"0\";}', '35d3d08c3d7b7f445ceb8e726a87b26c', '118.136.236.122', 1549428480, 1549430000, '1', 200),
(45, 'api/example/services', 'get', 'a:13:{s:4:\"Host\";s:11:\"gatoko1.com\";s:10:\"Connection\";s:10:\"keep-alive\";s:10:\"User-Agent\";s:114:\"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.98 Safari/537.36\";s:13:\"Cache-Control\";s:8:\"no-cache\";s:12:\"Content-Type\";s:33:\"application/x-www-form-urlencoded\";s:8:\"x-sm-key\";s:32:\"35d3d08c3d7b7f445ceb8e726a87b26c\";s:13:\"Authorization\";s:38:\"Basic c200cnRzMGZ0Oj96d01BeEJuUzlqag==\";s:13:\"Postman-Token\";s:36:\"caef2b39-8710-18ca-6ce5-4fe6b70992a0\";s:6:\"Accept\";s:3:\"*/*\";s:15:\"Accept-Encoding\";s:13:\"gzip, deflate\";s:15:\"Accept-Language\";s:45:\"id-ID,id;q=0.9,en-US;q=0.8,en;q=0.7,fil;q=0.6\";s:6:\"Cookie\";s:43:\"ci_session=h6f32vnji308dtjd5sr71vei0ltn58lq\";s:14:\"Content-Length\";s:1:\"0\";}', '35d3d08c3d7b7f445ceb8e726a87b26c', '118.136.236.122', 1549428655, 1549430000, '1', 404),
(46, 'api/example/services/1', 'get', 'a:15:{i:0;N;s:4:\"Host\";s:11:\"gatoko1.com\";s:10:\"Connection\";s:10:\"keep-alive\";s:10:\"User-Agent\";s:114:\"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.98 Safari/537.36\";s:13:\"Cache-Control\";s:8:\"no-cache\";s:12:\"Content-Type\";s:33:\"application/x-www-form-urlencoded\";s:8:\"x-sm-key\";s:32:\"35d3d08c3d7b7f445ceb8e726a87b26c\";s:13:\"Authorization\";s:38:\"Basic c200cnRzMGZ0Oj96d01BeEJuUzlqag==\";s:13:\"Postman-Token\";s:36:\"5c1fc3d5-e1a0-32d4-5577-0da8790112ac\";s:6:\"Accept\";s:3:\"*/*\";s:15:\"Accept-Encoding\";s:13:\"gzip, deflate\";s:15:\"Accept-Language\";s:45:\"id-ID,id;q=0.9,en-US;q=0.8,en;q=0.7,fil;q=0.6\";s:6:\"Cookie\";s:43:\"ci_session=gfi1v6ub44v9airna31r4vql0d5mq2g2\";s:14:\"Content-Length\";s:1:\"0\";i:1;N;}', '35d3d08c3d7b7f445ceb8e726a87b26c', '118.136.236.122', 1549428659, 1549430000, '1', 404),
(47, 'api/example/services/0', 'get', 'a:15:{i:0;N;s:4:\"Host\";s:11:\"gatoko1.com\";s:10:\"Connection\";s:10:\"keep-alive\";s:10:\"User-Agent\";s:114:\"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.98 Safari/537.36\";s:13:\"Cache-Control\";s:8:\"no-cache\";s:12:\"Content-Type\";s:33:\"application/x-www-form-urlencoded\";s:8:\"x-sm-key\";s:32:\"35d3d08c3d7b7f445ceb8e726a87b26c\";s:13:\"Authorization\";s:38:\"Basic c200cnRzMGZ0Oj96d01BeEJuUzlqag==\";s:13:\"Postman-Token\";s:36:\"b65e8ad4-2781-d95d-de2c-4c8e8aa447fc\";s:6:\"Accept\";s:3:\"*/*\";s:15:\"Accept-Encoding\";s:13:\"gzip, deflate\";s:15:\"Accept-Language\";s:45:\"id-ID,id;q=0.9,en-US;q=0.8,en;q=0.7,fil;q=0.6\";s:6:\"Cookie\";s:43:\"ci_session=gfi1v6ub44v9airna31r4vql0d5mq2g2\";s:14:\"Content-Length\";s:1:\"0\";i:1;N;}', '35d3d08c3d7b7f445ceb8e726a87b26c', '118.136.236.122', 1549428662, 1549430000, '1', 404),
(48, 'api/example/services', 'get', 'a:13:{s:4:\"Host\";s:11:\"gatoko1.com\";s:10:\"Connection\";s:10:\"keep-alive\";s:10:\"User-Agent\";s:114:\"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.98 Safari/537.36\";s:13:\"Cache-Control\";s:8:\"no-cache\";s:12:\"Content-Type\";s:33:\"application/x-www-form-urlencoded\";s:8:\"x-sm-key\";s:32:\"35d3d08c3d7b7f445ceb8e726a87b26c\";s:13:\"Authorization\";s:38:\"Basic c200cnRzMGZ0Oj96d01BeEJuUzlqag==\";s:13:\"Postman-Token\";s:36:\"b6e9a137-e2d0-9180-a433-6216c066a468\";s:6:\"Accept\";s:3:\"*/*\";s:15:\"Accept-Encoding\";s:13:\"gzip, deflate\";s:15:\"Accept-Language\";s:45:\"id-ID,id;q=0.9,en-US;q=0.8,en;q=0.7,fil;q=0.6\";s:6:\"Cookie\";s:43:\"ci_session=gfi1v6ub44v9airna31r4vql0d5mq2g2\";s:14:\"Content-Length\";s:1:\"0\";}', '35d3d08c3d7b7f445ceb8e726a87b26c', '118.136.236.122', 1549428677, 1549430000, '1', 404),
(49, 'api/example/services/a', 'get', 'a:14:{s:1:\"a\";N;s:4:\"Host\";s:11:\"gatoko1.com\";s:10:\"Connection\";s:10:\"keep-alive\";s:10:\"User-Agent\";s:114:\"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.98 Safari/537.36\";s:13:\"Cache-Control\";s:8:\"no-cache\";s:12:\"Content-Type\";s:33:\"application/x-www-form-urlencoded\";s:8:\"x-sm-key\";s:32:\"35d3d08c3d7b7f445ceb8e726a87b26c\";s:13:\"Authorization\";s:38:\"Basic c200cnRzMGZ0Oj96d01BeEJuUzlqag==\";s:13:\"Postman-Token\";s:36:\"72518478-f719-4e92-cfe4-bf027a496092\";s:6:\"Accept\";s:3:\"*/*\";s:15:\"Accept-Encoding\";s:13:\"gzip, deflate\";s:15:\"Accept-Language\";s:45:\"id-ID,id;q=0.9,en-US;q=0.8,en;q=0.7,fil;q=0.6\";s:6:\"Cookie\";s:43:\"ci_session=gfi1v6ub44v9airna31r4vql0d5mq2g2\";s:14:\"Content-Length\";s:1:\"0\";}', '35d3d08c3d7b7f445ceb8e726a87b26c', '118.136.236.122', 1549428680, 1549430000, '1', 404),
(50, 'api/example/services/a', 'get', 'a:14:{s:1:\"a\";N;s:4:\"Host\";s:11:\"gatoko1.com\";s:10:\"Connection\";s:10:\"keep-alive\";s:10:\"User-Agent\";s:114:\"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.98 Safari/537.36\";s:13:\"Cache-Control\";s:8:\"no-cache\";s:12:\"Content-Type\";s:33:\"application/x-www-form-urlencoded\";s:8:\"x-sm-key\";s:32:\"35d3d08c3d7b7f445ceb8e726a87b26c\";s:13:\"Authorization\";s:38:\"Basic c200cnRzMGZ0Oj96d01BeEJuUzlqag==\";s:13:\"Postman-Token\";s:36:\"faff51a0-75b3-9d5f-3b80-ba00e099b484\";s:6:\"Accept\";s:3:\"*/*\";s:15:\"Accept-Encoding\";s:13:\"gzip, deflate\";s:15:\"Accept-Language\";s:45:\"id-ID,id;q=0.9,en-US;q=0.8,en;q=0.7,fil;q=0.6\";s:6:\"Cookie\";s:43:\"ci_session=gfi1v6ub44v9airna31r4vql0d5mq2g2\";s:14:\"Content-Length\";s:1:\"0\";}', '35d3d08c3d7b7f445ceb8e726a87b26c', '118.136.236.122', 1549428682, 1549430000, '1', 404),
(51, 'api/example/services/a', 'get', 'a:14:{s:1:\"a\";N;s:4:\"Host\";s:11:\"gatoko1.com\";s:10:\"Connection\";s:10:\"keep-alive\";s:10:\"User-Agent\";s:114:\"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.98 Safari/537.36\";s:13:\"Cache-Control\";s:8:\"no-cache\";s:12:\"Content-Type\";s:33:\"application/x-www-form-urlencoded\";s:8:\"x-sm-key\";s:32:\"35d3d08c3d7b7f445ceb8e726a87b26c\";s:13:\"Authorization\";s:38:\"Basic c200cnRzMGZ0Oj96d01BeEJuUzlqag==\";s:13:\"Postman-Token\";s:36:\"f20c8e54-9446-4d38-8a0f-219f1d5a561e\";s:6:\"Accept\";s:3:\"*/*\";s:15:\"Accept-Encoding\";s:13:\"gzip, deflate\";s:15:\"Accept-Language\";s:45:\"id-ID,id;q=0.9,en-US;q=0.8,en;q=0.7,fil;q=0.6\";s:6:\"Cookie\";s:43:\"ci_session=gfi1v6ub44v9airna31r4vql0d5mq2g2\";s:14:\"Content-Length\";s:1:\"0\";}', '35d3d08c3d7b7f445ceb8e726a87b26c', '118.136.236.122', 1549428715, 1549430000, '1', 404),
(52, 'api/example/services/a', 'get', 'a:14:{s:1:\"a\";N;s:4:\"Host\";s:11:\"gatoko1.com\";s:10:\"Connection\";s:10:\"keep-alive\";s:10:\"User-Agent\";s:114:\"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.98 Safari/537.36\";s:13:\"Cache-Control\";s:8:\"no-cache\";s:12:\"Content-Type\";s:33:\"application/x-www-form-urlencoded\";s:8:\"x-sm-key\";s:32:\"35d3d08c3d7b7f445ceb8e726a87b26c\";s:13:\"Authorization\";s:38:\"Basic c200cnRzMGZ0Oj96d01BeEJuUzlqag==\";s:13:\"Postman-Token\";s:36:\"5801b626-9ea3-b456-ae32-9af94267f20c\";s:6:\"Accept\";s:3:\"*/*\";s:15:\"Accept-Encoding\";s:13:\"gzip, deflate\";s:15:\"Accept-Language\";s:45:\"id-ID,id;q=0.9,en-US;q=0.8,en;q=0.7,fil;q=0.6\";s:6:\"Cookie\";s:43:\"ci_session=gfi1v6ub44v9airna31r4vql0d5mq2g2\";s:14:\"Content-Length\";s:1:\"0\";}', '35d3d08c3d7b7f445ceb8e726a87b26c', '118.136.236.122', 1549428717, 1549430000, '1', 404),
(53, 'api/example/services/a', 'get', 'a:14:{s:1:\"a\";N;s:4:\"Host\";s:11:\"gatoko1.com\";s:10:\"Connection\";s:10:\"keep-alive\";s:10:\"User-Agent\";s:114:\"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.98 Safari/537.36\";s:13:\"Cache-Control\";s:8:\"no-cache\";s:12:\"Content-Type\";s:33:\"application/x-www-form-urlencoded\";s:8:\"x-sm-key\";s:32:\"35d3d08c3d7b7f445ceb8e726a87b26c\";s:13:\"Authorization\";s:38:\"Basic c200cnRzMGZ0Oj96d01BeEJuUzlqag==\";s:13:\"Postman-Token\";s:36:\"43e761b9-d088-5745-33a6-e6e2c77f8e0a\";s:6:\"Accept\";s:3:\"*/*\";s:15:\"Accept-Encoding\";s:13:\"gzip, deflate\";s:15:\"Accept-Language\";s:45:\"id-ID,id;q=0.9,en-US;q=0.8,en;q=0.7,fil;q=0.6\";s:6:\"Cookie\";s:43:\"ci_session=gfi1v6ub44v9airna31r4vql0d5mq2g2\";s:14:\"Content-Length\";s:1:\"0\";}', '35d3d08c3d7b7f445ceb8e726a87b26c', '118.136.236.122', 1549428725, 1549430000, '1', 0),
(54, 'api/example/services/a', 'get', 'a:14:{s:1:\"a\";N;s:4:\"Host\";s:11:\"gatoko1.com\";s:10:\"Connection\";s:10:\"keep-alive\";s:10:\"User-Agent\";s:114:\"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.98 Safari/537.36\";s:13:\"Cache-Control\";s:8:\"no-cache\";s:12:\"Content-Type\";s:33:\"application/x-www-form-urlencoded\";s:8:\"x-sm-key\";s:32:\"35d3d08c3d7b7f445ceb8e726a87b26c\";s:13:\"Authorization\";s:38:\"Basic c200cnRzMGZ0Oj96d01BeEJuUzlqag==\";s:13:\"Postman-Token\";s:36:\"dda3a68d-329e-371a-e751-4fd11e3241e7\";s:6:\"Accept\";s:3:\"*/*\";s:15:\"Accept-Encoding\";s:13:\"gzip, deflate\";s:15:\"Accept-Language\";s:45:\"id-ID,id;q=0.9,en-US;q=0.8,en;q=0.7,fil;q=0.6\";s:6:\"Cookie\";s:43:\"ci_session=gfi1v6ub44v9airna31r4vql0d5mq2g2\";s:14:\"Content-Length\";s:1:\"0\";}', '35d3d08c3d7b7f445ceb8e726a87b26c', '118.136.236.122', 1549428727, 1549430000, '1', 0),
(55, 'api/example/services/aa', 'get', 'a:14:{s:2:\"aa\";N;s:4:\"Host\";s:11:\"gatoko1.com\";s:10:\"Connection\";s:10:\"keep-alive\";s:10:\"User-Agent\";s:114:\"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.98 Safari/537.36\";s:13:\"Cache-Control\";s:8:\"no-cache\";s:12:\"Content-Type\";s:33:\"application/x-www-form-urlencoded\";s:8:\"x-sm-key\";s:32:\"35d3d08c3d7b7f445ceb8e726a87b26c\";s:13:\"Authorization\";s:38:\"Basic c200cnRzMGZ0Oj96d01BeEJuUzlqag==\";s:13:\"Postman-Token\";s:36:\"c960faa4-1219-26de-d6fe-b7ddc07ec486\";s:6:\"Accept\";s:3:\"*/*\";s:15:\"Accept-Encoding\";s:13:\"gzip, deflate\";s:15:\"Accept-Language\";s:45:\"id-ID,id;q=0.9,en-US;q=0.8,en;q=0.7,fil;q=0.6\";s:6:\"Cookie\";s:43:\"ci_session=gfi1v6ub44v9airna31r4vql0d5mq2g2\";s:14:\"Content-Length\";s:1:\"0\";}', '35d3d08c3d7b7f445ceb8e726a87b26c', '118.136.236.122', 1549428729, 1549430000, '1', 0),
(56, 'api/example/services/aa', 'get', 'a:14:{s:2:\"aa\";N;s:4:\"Host\";s:11:\"gatoko1.com\";s:10:\"Connection\";s:10:\"keep-alive\";s:10:\"User-Agent\";s:114:\"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.98 Safari/537.36\";s:13:\"Cache-Control\";s:8:\"no-cache\";s:12:\"Content-Type\";s:33:\"application/x-www-form-urlencoded\";s:8:\"x-sm-key\";s:32:\"35d3d08c3d7b7f445ceb8e726a87b26c\";s:13:\"Authorization\";s:38:\"Basic c200cnRzMGZ0Oj96d01BeEJuUzlqag==\";s:13:\"Postman-Token\";s:36:\"ab82d302-2290-2edd-eb75-0771e0de4f73\";s:6:\"Accept\";s:3:\"*/*\";s:15:\"Accept-Encoding\";s:13:\"gzip, deflate\";s:15:\"Accept-Language\";s:45:\"id-ID,id;q=0.9,en-US;q=0.8,en;q=0.7,fil;q=0.6\";s:6:\"Cookie\";s:43:\"ci_session=gfi1v6ub44v9airna31r4vql0d5mq2g2\";s:14:\"Content-Length\";s:1:\"0\";}', '35d3d08c3d7b7f445ceb8e726a87b26c', '118.136.236.122', 1549428730, 1549430000, '1', 0),
(57, 'api/example/services', 'get', 'a:13:{s:4:\"Host\";s:11:\"gatoko1.com\";s:10:\"Connection\";s:10:\"keep-alive\";s:10:\"User-Agent\";s:114:\"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.98 Safari/537.36\";s:13:\"Cache-Control\";s:8:\"no-cache\";s:12:\"Content-Type\";s:33:\"application/x-www-form-urlencoded\";s:8:\"x-sm-key\";s:32:\"35d3d08c3d7b7f445ceb8e726a87b26c\";s:13:\"Authorization\";s:38:\"Basic c200cnRzMGZ0Oj96d01BeEJuUzlqag==\";s:13:\"Postman-Token\";s:36:\"b5495e5a-91ee-67ca-07fd-505c64ac0685\";s:6:\"Accept\";s:3:\"*/*\";s:15:\"Accept-Encoding\";s:13:\"gzip, deflate\";s:15:\"Accept-Language\";s:45:\"id-ID,id;q=0.9,en-US;q=0.8,en;q=0.7,fil;q=0.6\";s:6:\"Cookie\";s:43:\"ci_session=gfi1v6ub44v9airna31r4vql0d5mq2g2\";s:14:\"Content-Length\";s:1:\"0\";}', '35d3d08c3d7b7f445ceb8e726a87b26c', '118.136.236.122', 1549428734, 1549430000, '1', 0),
(58, 'api/example/services', 'get', 'a:13:{s:4:\"Host\";s:11:\"gatoko1.com\";s:10:\"Connection\";s:10:\"keep-alive\";s:10:\"User-Agent\";s:114:\"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.98 Safari/537.36\";s:13:\"Cache-Control\";s:8:\"no-cache\";s:12:\"Content-Type\";s:33:\"application/x-www-form-urlencoded\";s:8:\"x-sm-key\";s:32:\"35d3d08c3d7b7f445ceb8e726a87b26c\";s:13:\"Authorization\";s:38:\"Basic c200cnRzMGZ0Oj96d01BeEJuUzlqag==\";s:13:\"Postman-Token\";s:36:\"9923d27a-b199-e900-361a-1d6b440579a1\";s:6:\"Accept\";s:3:\"*/*\";s:15:\"Accept-Encoding\";s:13:\"gzip, deflate\";s:15:\"Accept-Language\";s:45:\"id-ID,id;q=0.9,en-US;q=0.8,en;q=0.7,fil;q=0.6\";s:6:\"Cookie\";s:43:\"ci_session=gfi1v6ub44v9airna31r4vql0d5mq2g2\";s:14:\"Content-Length\";s:1:\"0\";}', '35d3d08c3d7b7f445ceb8e726a87b26c', '118.136.236.122', 1549428741, 1549430000, '1', 404),
(59, 'api/example/services', 'get', 'a:13:{s:4:\"Host\";s:11:\"gatoko1.com\";s:10:\"Connection\";s:10:\"keep-alive\";s:10:\"User-Agent\";s:114:\"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.98 Safari/537.36\";s:13:\"Cache-Control\";s:8:\"no-cache\";s:12:\"Content-Type\";s:33:\"application/x-www-form-urlencoded\";s:8:\"x-sm-key\";s:32:\"35d3d08c3d7b7f445ceb8e726a87b26c\";s:13:\"Authorization\";s:38:\"Basic c200cnRzMGZ0Oj96d01BeEJuUzlqag==\";s:13:\"Postman-Token\";s:36:\"0e4e077d-2103-723e-61fb-c5ec2ee8d025\";s:6:\"Accept\";s:3:\"*/*\";s:15:\"Accept-Encoding\";s:13:\"gzip, deflate\";s:15:\"Accept-Language\";s:45:\"id-ID,id;q=0.9,en-US;q=0.8,en;q=0.7,fil;q=0.6\";s:6:\"Cookie\";s:43:\"ci_session=gfi1v6ub44v9airna31r4vql0d5mq2g2\";s:14:\"Content-Length\";s:1:\"0\";}', '35d3d08c3d7b7f445ceb8e726a87b26c', '118.136.236.122', 1549428742, 1549430000, '1', 404),
(60, 'api/example/services', 'get', 'a:13:{s:4:\"Host\";s:11:\"gatoko1.com\";s:10:\"Connection\";s:10:\"keep-alive\";s:10:\"User-Agent\";s:114:\"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.98 Safari/537.36\";s:13:\"Cache-Control\";s:8:\"no-cache\";s:12:\"Content-Type\";s:33:\"application/x-www-form-urlencoded\";s:8:\"x-sm-key\";s:32:\"35d3d08c3d7b7f445ceb8e726a87b26c\";s:13:\"Authorization\";s:38:\"Basic c200cnRzMGZ0Oj96d01BeEJuUzlqag==\";s:13:\"Postman-Token\";s:36:\"f47e693b-addb-43f8-7837-ab0c7793c087\";s:6:\"Accept\";s:3:\"*/*\";s:15:\"Accept-Encoding\";s:13:\"gzip, deflate\";s:15:\"Accept-Language\";s:45:\"id-ID,id;q=0.9,en-US;q=0.8,en;q=0.7,fil;q=0.6\";s:6:\"Cookie\";s:43:\"ci_session=gfi1v6ub44v9airna31r4vql0d5mq2g2\";s:14:\"Content-Length\";s:1:\"0\";}', '35d3d08c3d7b7f445ceb8e726a87b26c', '118.136.236.122', 1549428748, 1549430000, '1', 404),
(61, 'api/example/services', 'get', 'a:13:{s:4:\"Host\";s:11:\"gatoko1.com\";s:10:\"Connection\";s:10:\"keep-alive\";s:10:\"User-Agent\";s:114:\"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.98 Safari/537.36\";s:13:\"Cache-Control\";s:8:\"no-cache\";s:12:\"Content-Type\";s:33:\"application/x-www-form-urlencoded\";s:8:\"x-sm-key\";s:32:\"35d3d08c3d7b7f445ceb8e726a87b26c\";s:13:\"Authorization\";s:38:\"Basic c200cnRzMGZ0Oj96d01BeEJuUzlqag==\";s:13:\"Postman-Token\";s:36:\"cbbd6ccb-dc98-f683-b919-c56aa9c0e66d\";s:6:\"Accept\";s:3:\"*/*\";s:15:\"Accept-Encoding\";s:13:\"gzip, deflate\";s:15:\"Accept-Language\";s:45:\"id-ID,id;q=0.9,en-US;q=0.8,en;q=0.7,fil;q=0.6\";s:6:\"Cookie\";s:43:\"ci_session=gfi1v6ub44v9airna31r4vql0d5mq2g2\";s:14:\"Content-Length\";s:1:\"0\";}', '35d3d08c3d7b7f445ceb8e726a87b26c', '118.136.236.122', 1549428749, 1549430000, '1', 404),
(62, 'api/example/services', 'get', 'a:13:{s:4:\"Host\";s:11:\"gatoko1.com\";s:10:\"Connection\";s:10:\"keep-alive\";s:10:\"User-Agent\";s:114:\"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.98 Safari/537.36\";s:13:\"Cache-Control\";s:8:\"no-cache\";s:12:\"Content-Type\";s:33:\"application/x-www-form-urlencoded\";s:8:\"x-sm-key\";s:32:\"35d3d08c3d7b7f445ceb8e726a87b26c\";s:13:\"Authorization\";s:38:\"Basic c200cnRzMGZ0Oj96d01BeEJuUzlqag==\";s:13:\"Postman-Token\";s:36:\"d1976171-7268-0319-2e50-4851a2fd6c22\";s:6:\"Accept\";s:3:\"*/*\";s:15:\"Accept-Encoding\";s:13:\"gzip, deflate\";s:15:\"Accept-Language\";s:45:\"id-ID,id;q=0.9,en-US;q=0.8,en;q=0.7,fil;q=0.6\";s:6:\"Cookie\";s:43:\"ci_session=gfi1v6ub44v9airna31r4vql0d5mq2g2\";s:14:\"Content-Length\";s:1:\"0\";}', '35d3d08c3d7b7f445ceb8e726a87b26c', '118.136.236.122', 1549428786, 1549430000, '1', 200),
(63, 'api/example/services', 'get', 'a:13:{s:4:\"Host\";s:11:\"gatoko1.com\";s:10:\"Connection\";s:10:\"keep-alive\";s:10:\"User-Agent\";s:114:\"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.98 Safari/537.36\";s:13:\"Cache-Control\";s:8:\"no-cache\";s:12:\"Content-Type\";s:33:\"application/x-www-form-urlencoded\";s:8:\"x-sm-key\";s:32:\"35d3d08c3d7b7f445ceb8e726a87b26c\";s:13:\"Authorization\";s:38:\"Basic c200cnRzMGZ0Oj96d01BeEJuUzlqag==\";s:13:\"Postman-Token\";s:36:\"fabc78b4-cc98-1a61-3131-0c44475cbcdc\";s:6:\"Accept\";s:3:\"*/*\";s:15:\"Accept-Encoding\";s:13:\"gzip, deflate\";s:15:\"Accept-Language\";s:45:\"id-ID,id;q=0.9,en-US;q=0.8,en;q=0.7,fil;q=0.6\";s:6:\"Cookie\";s:43:\"ci_session=gfi1v6ub44v9airna31r4vql0d5mq2g2\";s:14:\"Content-Length\";s:1:\"0\";}', '35d3d08c3d7b7f445ceb8e726a87b26c', '118.136.236.122', 1549428800, 1549430000, '1', 404),
(64, 'api/example/services', 'get', 'a:13:{s:4:\"Host\";s:11:\"gatoko1.com\";s:10:\"Connection\";s:10:\"keep-alive\";s:10:\"User-Agent\";s:114:\"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.98 Safari/537.36\";s:13:\"Cache-Control\";s:8:\"no-cache\";s:12:\"Content-Type\";s:33:\"application/x-www-form-urlencoded\";s:8:\"x-sm-key\";s:32:\"35d3d08c3d7b7f445ceb8e726a87b26c\";s:13:\"Authorization\";s:38:\"Basic c200cnRzMGZ0Oj96d01BeEJuUzlqag==\";s:13:\"Postman-Token\";s:36:\"1ea384ac-8306-2f85-88da-49178e8a7f0e\";s:6:\"Accept\";s:3:\"*/*\";s:15:\"Accept-Encoding\";s:13:\"gzip, deflate\";s:15:\"Accept-Language\";s:45:\"id-ID,id;q=0.9,en-US;q=0.8,en;q=0.7,fil;q=0.6\";s:6:\"Cookie\";s:43:\"ci_session=gfi1v6ub44v9airna31r4vql0d5mq2g2\";s:14:\"Content-Length\";s:1:\"0\";}', '35d3d08c3d7b7f445ceb8e726a87b26c', '118.136.236.122', 1549428801, 1549430000, '1', 404),
(65, 'api/example/services/disable', 'get', 'a:14:{s:7:\"disable\";N;s:4:\"Host\";s:11:\"gatoko1.com\";s:10:\"Connection\";s:10:\"keep-alive\";s:10:\"User-Agent\";s:114:\"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.98 Safari/537.36\";s:13:\"Cache-Control\";s:8:\"no-cache\";s:12:\"Content-Type\";s:33:\"application/x-www-form-urlencoded\";s:8:\"x-sm-key\";s:32:\"35d3d08c3d7b7f445ceb8e726a87b26c\";s:13:\"Authorization\";s:38:\"Basic c200cnRzMGZ0Oj96d01BeEJuUzlqag==\";s:13:\"Postman-Token\";s:36:\"ab54ff73-1a8a-cb60-b1b0-870b35536d9d\";s:6:\"Accept\";s:3:\"*/*\";s:15:\"Accept-Encoding\";s:13:\"gzip, deflate\";s:15:\"Accept-Language\";s:45:\"id-ID,id;q=0.9,en-US;q=0.8,en;q=0.7,fil;q=0.6\";s:6:\"Cookie\";s:43:\"ci_session=gfi1v6ub44v9airna31r4vql0d5mq2g2\";s:14:\"Content-Length\";s:1:\"0\";}', '35d3d08c3d7b7f445ceb8e726a87b26c', '118.136.236.122', 1549428805, 1549430000, '1', 404),
(66, 'api/example/services/disable', 'get', 'a:14:{s:7:\"disable\";N;s:4:\"Host\";s:11:\"gatoko1.com\";s:10:\"Connection\";s:10:\"keep-alive\";s:10:\"User-Agent\";s:114:\"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.98 Safari/537.36\";s:13:\"Cache-Control\";s:8:\"no-cache\";s:12:\"Content-Type\";s:33:\"application/x-www-form-urlencoded\";s:8:\"x-sm-key\";s:32:\"35d3d08c3d7b7f445ceb8e726a87b26c\";s:13:\"Authorization\";s:38:\"Basic c200cnRzMGZ0Oj96d01BeEJuUzlqag==\";s:13:\"Postman-Token\";s:36:\"ea261273-b754-5389-5412-58e6beb47631\";s:6:\"Accept\";s:3:\"*/*\";s:15:\"Accept-Encoding\";s:13:\"gzip, deflate\";s:15:\"Accept-Language\";s:45:\"id-ID,id;q=0.9,en-US;q=0.8,en;q=0.7,fil;q=0.6\";s:6:\"Cookie\";s:43:\"ci_session=gfi1v6ub44v9airna31r4vql0d5mq2g2\";s:14:\"Content-Length\";s:1:\"0\";}', '35d3d08c3d7b7f445ceb8e726a87b26c', '118.136.236.122', 1549428807, 1549430000, '1', 404);
INSERT INTO `logs` (`id`, `uri`, `method`, `params`, `api_key`, `ip_address`, `time`, `rtime`, `authorized`, `response_code`) VALUES
(67, 'api/example/services/disable', 'get', 'a:14:{s:7:\"disable\";N;s:4:\"Host\";s:11:\"gatoko1.com\";s:10:\"Connection\";s:10:\"keep-alive\";s:10:\"User-Agent\";s:114:\"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.98 Safari/537.36\";s:13:\"Cache-Control\";s:8:\"no-cache\";s:12:\"Content-Type\";s:33:\"application/x-www-form-urlencoded\";s:8:\"x-sm-key\";s:32:\"35d3d08c3d7b7f445ceb8e726a87b26c\";s:13:\"Authorization\";s:38:\"Basic c200cnRzMGZ0Oj96d01BeEJuUzlqag==\";s:13:\"Postman-Token\";s:36:\"9e35cfeb-4c7c-699b-5643-8470aca0fbcb\";s:6:\"Accept\";s:3:\"*/*\";s:15:\"Accept-Encoding\";s:13:\"gzip, deflate\";s:15:\"Accept-Language\";s:45:\"id-ID,id;q=0.9,en-US;q=0.8,en;q=0.7,fil;q=0.6\";s:6:\"Cookie\";s:43:\"ci_session=gfi1v6ub44v9airna31r4vql0d5mq2g2\";s:14:\"Content-Length\";s:1:\"0\";}', '35d3d08c3d7b7f445ceb8e726a87b26c', '118.136.236.122', 1549428808, 1549430000, '1', 404),
(68, 'api/example/services/disable', 'get', 'a:14:{s:7:\"disable\";N;s:4:\"Host\";s:11:\"gatoko1.com\";s:10:\"Connection\";s:10:\"keep-alive\";s:10:\"User-Agent\";s:114:\"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.98 Safari/537.36\";s:13:\"Cache-Control\";s:8:\"no-cache\";s:12:\"Content-Type\";s:33:\"application/x-www-form-urlencoded\";s:8:\"x-sm-key\";s:32:\"35d3d08c3d7b7f445ceb8e726a87b26c\";s:13:\"Authorization\";s:38:\"Basic c200cnRzMGZ0Oj96d01BeEJuUzlqag==\";s:13:\"Postman-Token\";s:36:\"04edaf72-fcb9-e17b-2fc6-2986cbbbf741\";s:6:\"Accept\";s:3:\"*/*\";s:15:\"Accept-Encoding\";s:13:\"gzip, deflate\";s:15:\"Accept-Language\";s:45:\"id-ID,id;q=0.9,en-US;q=0.8,en;q=0.7,fil;q=0.6\";s:6:\"Cookie\";s:43:\"ci_session=gfi1v6ub44v9airna31r4vql0d5mq2g2\";s:14:\"Content-Length\";s:1:\"0\";}', '35d3d08c3d7b7f445ceb8e726a87b26c', '118.136.236.122', 1549428815, 1549430000, '1', 200),
(69, 'api/example/services/disable', 'get', 'a:14:{s:7:\"disable\";N;s:4:\"Host\";s:11:\"gatoko1.com\";s:10:\"Connection\";s:10:\"keep-alive\";s:10:\"User-Agent\";s:114:\"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.98 Safari/537.36\";s:13:\"Cache-Control\";s:8:\"no-cache\";s:12:\"Content-Type\";s:33:\"application/x-www-form-urlencoded\";s:8:\"x-sm-key\";s:32:\"35d3d08c3d7b7f445ceb8e726a87b26c\";s:13:\"Authorization\";s:38:\"Basic c200cnRzMGZ0Oj96d01BeEJuUzlqag==\";s:13:\"Postman-Token\";s:36:\"2514eb50-6c21-1356-dfa9-e4eac100bf8a\";s:6:\"Accept\";s:3:\"*/*\";s:15:\"Accept-Encoding\";s:13:\"gzip, deflate\";s:15:\"Accept-Language\";s:45:\"id-ID,id;q=0.9,en-US;q=0.8,en;q=0.7,fil;q=0.6\";s:6:\"Cookie\";s:43:\"ci_session=gfi1v6ub44v9airna31r4vql0d5mq2g2\";s:14:\"Content-Length\";s:1:\"0\";}', '35d3d08c3d7b7f445ceb8e726a87b26c', '118.136.236.122', 1549428816, 1549430000, '1', 200),
(70, 'api/example/services/disable', 'get', 'a:14:{s:7:\"disable\";N;s:4:\"Host\";s:11:\"gatoko1.com\";s:10:\"Connection\";s:10:\"keep-alive\";s:10:\"User-Agent\";s:114:\"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.98 Safari/537.36\";s:13:\"Cache-Control\";s:8:\"no-cache\";s:12:\"Content-Type\";s:33:\"application/x-www-form-urlencoded\";s:8:\"x-sm-key\";s:32:\"35d3d08c3d7b7f445ceb8e726a87b26c\";s:13:\"Authorization\";s:38:\"Basic c200cnRzMGZ0Oj96d01BeEJuUzlqag==\";s:13:\"Postman-Token\";s:36:\"be916c7e-09f8-5b25-2c50-d09787853210\";s:6:\"Accept\";s:3:\"*/*\";s:15:\"Accept-Encoding\";s:13:\"gzip, deflate\";s:15:\"Accept-Language\";s:45:\"id-ID,id;q=0.9,en-US;q=0.8,en;q=0.7,fil;q=0.6\";s:6:\"Cookie\";s:43:\"ci_session=gfi1v6ub44v9airna31r4vql0d5mq2g2\";s:14:\"Content-Length\";s:1:\"0\";}', '35d3d08c3d7b7f445ceb8e726a87b26c', '118.136.236.122', 1549428826, 1549430000, '1', 200),
(71, 'api/example/services/disable', 'get', 'a:14:{s:7:\"disable\";N;s:4:\"Host\";s:11:\"gatoko1.com\";s:10:\"Connection\";s:10:\"keep-alive\";s:10:\"User-Agent\";s:114:\"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.98 Safari/537.36\";s:13:\"Cache-Control\";s:8:\"no-cache\";s:12:\"Content-Type\";s:33:\"application/x-www-form-urlencoded\";s:8:\"x-sm-key\";s:32:\"35d3d08c3d7b7f445ceb8e726a87b26c\";s:13:\"Authorization\";s:38:\"Basic c200cnRzMGZ0Oj96d01BeEJuUzlqag==\";s:13:\"Postman-Token\";s:36:\"fddcff9d-7292-6c1e-ae51-0e74db0f397e\";s:6:\"Accept\";s:3:\"*/*\";s:15:\"Accept-Encoding\";s:13:\"gzip, deflate\";s:15:\"Accept-Language\";s:45:\"id-ID,id;q=0.9,en-US;q=0.8,en;q=0.7,fil;q=0.6\";s:6:\"Cookie\";s:43:\"ci_session=gfi1v6ub44v9airna31r4vql0d5mq2g2\";s:14:\"Content-Length\";s:1:\"0\";}', '35d3d08c3d7b7f445ceb8e726a87b26c', '118.136.236.122', 1549428841, 1549430000, '1', 200),
(72, 'api/services', 'get', 'a:13:{s:4:\"Host\";s:11:\"gatoko1.com\";s:10:\"Connection\";s:10:\"keep-alive\";s:10:\"User-Agent\";s:114:\"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.98 Safari/537.36\";s:13:\"Cache-Control\";s:8:\"no-cache\";s:12:\"Content-Type\";s:33:\"application/x-www-form-urlencoded\";s:8:\"x-sm-key\";s:32:\"35d3d08c3d7b7f445ceb8e726a87b26c\";s:13:\"Authorization\";s:38:\"Basic c200cnRzMGZ0Oj96d01BeEJuUzlqag==\";s:13:\"Postman-Token\";s:36:\"bb1329fc-8f5a-bd41-0f66-d7fe899375b6\";s:6:\"Accept\";s:3:\"*/*\";s:15:\"Accept-Encoding\";s:13:\"gzip, deflate\";s:15:\"Accept-Language\";s:45:\"id-ID,id;q=0.9,en-US;q=0.8,en;q=0.7,fil;q=0.6\";s:6:\"Cookie\";s:43:\"ci_session=gfi1v6ub44v9airna31r4vql0d5mq2g2\";s:14:\"Content-Length\";s:1:\"0\";}', '35d3d08c3d7b7f445ceb8e726a87b26c', '118.136.236.122', 1549434763, 1549430000, '1', 404),
(73, 'api/services/disable', 'get', 'a:13:{s:4:\"Host\";s:11:\"gatoko1.com\";s:10:\"Connection\";s:10:\"keep-alive\";s:10:\"User-Agent\";s:114:\"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.98 Safari/537.36\";s:13:\"Cache-Control\";s:8:\"no-cache\";s:12:\"Content-Type\";s:33:\"application/x-www-form-urlencoded\";s:8:\"x-sm-key\";s:32:\"35d3d08c3d7b7f445ceb8e726a87b26c\";s:13:\"Authorization\";s:38:\"Basic c200cnRzMGZ0Oj96d01BeEJuUzlqag==\";s:13:\"Postman-Token\";s:36:\"1e145c56-5906-ea88-a56e-a6c2bf9ae277\";s:6:\"Accept\";s:3:\"*/*\";s:15:\"Accept-Encoding\";s:13:\"gzip, deflate\";s:15:\"Accept-Language\";s:45:\"id-ID,id;q=0.9,en-US;q=0.8,en;q=0.7,fil;q=0.6\";s:6:\"Cookie\";s:43:\"ci_session=htg6ga22bj85pmfg8eurnju3pe5i262u\";s:14:\"Content-Length\";s:1:\"0\";}', '35d3d08c3d7b7f445ceb8e726a87b26c', '118.136.236.122', 1549434776, 1549430000, '1', 200),
(74, 'api/services', 'post', 'a:17:{s:4:\"Host\";s:11:\"gatoko1.com\";s:10:\"Connection\";s:10:\"keep-alive\";s:14:\"Content-Length\";s:3:\"340\";s:10:\"User-Agent\";s:114:\"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.98 Safari/537.36\";s:13:\"Cache-Control\";s:8:\"no-cache\";s:6:\"Origin\";s:51:\"chrome-extension://fhbjgbiflinjbdggehcddcbncdddomop\";s:12:\"Content-Type\";s:33:\"application/x-www-form-urlencoded\";s:8:\"x-sm-key\";s:32:\"35d3d08c3d7b7f445ceb8e726a87b26c\";s:13:\"Authorization\";s:38:\"Basic c200cnRzMGZ0Oj96d01BeEJuUzlqag==\";s:13:\"Postman-Token\";s:36:\"003e2e9a-9dda-4605-9c78-fedc0f0a57be\";s:6:\"Accept\";s:3:\"*/*\";s:15:\"Accept-Encoding\";s:13:\"gzip, deflate\";s:15:\"Accept-Language\";s:45:\"id-ID,id;q=0.9,en-US;q=0.8,en;q=0.7,fil;q=0.6\";s:6:\"Cookie\";s:43:\"ci_session=htg6ga22bj85pmfg8eurnju3pe5i262u\";s:78:\"------WebKitFormBoundarylrlQsIiHIrwCnJE3\r\nContent-Disposition:_form-data;_name\";s:261:\"\"title\"\r\n\r\ntes ah\r\n------WebKitFormBoundarylrlQsIiHIrwCnJE3\r\nContent-Disposition: form-data; name=\"date\"\r\n\r\n2019-01-01\r\n------WebKitFormBoundarylrlQsIiHIrwCnJE3\r\nContent-Disposition: form-data; name=\"content\"\r\n\r\nini\r\n------WebKitFormBoundarylrlQsIiHIrwCnJE3--\r\n\";i:0;s:261:\"\"title\"\r\n\r\ntes ah\r\n------WebKitFormBoundarylrlQsIiHIrwCnJE3\r\nContent-Disposition: form-data; name=\"date\"\r\n\r\n2019-01-01\r\n------WebKitFormBoundarylrlQsIiHIrwCnJE3\r\nContent-Disposition: form-data; name=\"content\"\r\n\r\nini\r\n------WebKitFormBoundarylrlQsIiHIrwCnJE3--\r\n\";i:1;s:261:\"\"title\"\r\n\r\ntes ah\r\n------WebKitFormBoundarylrlQsIiHIrwCnJE3\r\nContent-Disposition: form-data; name=\"date\"\r\n\r\n2019-01-01\r\n------WebKitFormBoundarylrlQsIiHIrwCnJE3\r\nContent-Disposition: form-data; name=\"content\"\r\n\r\nini\r\n------WebKitFormBoundarylrlQsIiHIrwCnJE3--\r\n\";}', '35d3d08c3d7b7f445ceb8e726a87b26c', '118.136.236.122', 1549434796, 1549430000, '1', 200),
(75, 'api/services', 'post', 'a:17:{s:4:\"Host\";s:11:\"gatoko1.com\";s:10:\"Connection\";s:10:\"keep-alive\";s:14:\"Content-Length\";s:3:\"340\";s:13:\"Authorization\";s:38:\"Basic c200cnRzMGZ0Oj96d01BeEJuUzlqag==\";s:13:\"Postman-Token\";s:36:\"21a992d3-2eab-652c-dd40-fdb1b27632f2\";s:13:\"Cache-Control\";s:8:\"no-cache\";s:6:\"Origin\";s:51:\"chrome-extension://fhbjgbiflinjbdggehcddcbncdddomop\";s:8:\"x-sm-key\";s:32:\"35d3d08c3d7b7f445ceb8e726a87b26c\";s:10:\"User-Agent\";s:114:\"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.98 Safari/537.36\";s:12:\"Content-Type\";s:68:\"multipart/form-data; boundary=----WebKitFormBoundaryT4EoJtBkCQ8K6lqn\";s:6:\"Accept\";s:3:\"*/*\";s:15:\"Accept-Encoding\";s:13:\"gzip, deflate\";s:15:\"Accept-Language\";s:45:\"id-ID,id;q=0.9,en-US;q=0.8,en;q=0.7,fil;q=0.6\";s:6:\"Cookie\";s:43:\"ci_session=htg6ga22bj85pmfg8eurnju3pe5i262u\";s:5:\"title\";s:6:\"tes ah\";s:4:\"date\";s:10:\"2019-01-01\";s:7:\"content\";s:3:\"ini\";}', '35d3d08c3d7b7f445ceb8e726a87b26c', '118.136.236.122', 1549434803, 1549430000, '1', 200),
(76, 'api/services/detail', 'get', 'a:12:{s:4:\"Host\";s:11:\"gatoko1.com\";s:10:\"Connection\";s:10:\"keep-alive\";s:13:\"Authorization\";s:38:\"Basic c200cnRzMGZ0Oj96d01BeEJuUzlqag==\";s:13:\"Cache-Control\";s:8:\"no-cache\";s:8:\"x-sm-key\";s:32:\"35d3d08c3d7b7f445ceb8e726a87b26c\";s:10:\"User-Agent\";s:114:\"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.98 Safari/537.36\";s:13:\"Postman-Token\";s:36:\"e91f5cdb-a803-5c82-de2d-af59bdf0072b\";s:6:\"Accept\";s:3:\"*/*\";s:15:\"Accept-Encoding\";s:13:\"gzip, deflate\";s:15:\"Accept-Language\";s:45:\"id-ID,id;q=0.9,en-US;q=0.8,en;q=0.7,fil;q=0.6\";s:6:\"Cookie\";s:43:\"ci_session=htg6ga22bj85pmfg8eurnju3pe5i262u\";s:14:\"Content-Length\";s:1:\"0\";}', '35d3d08c3d7b7f445ceb8e726a87b26c', '118.136.236.122', 1549434820, 1549430000, '1', 200),
(77, 'api/services/detail/1', 'get', 'a:14:{i:0;N;s:4:\"Host\";s:11:\"gatoko1.com\";s:10:\"Connection\";s:10:\"keep-alive\";s:13:\"Authorization\";s:38:\"Basic c200cnRzMGZ0Oj96d01BeEJuUzlqag==\";s:13:\"Cache-Control\";s:8:\"no-cache\";s:8:\"x-sm-key\";s:32:\"35d3d08c3d7b7f445ceb8e726a87b26c\";s:10:\"User-Agent\";s:114:\"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.98 Safari/537.36\";s:13:\"Postman-Token\";s:36:\"da4fade1-054f-e5bc-7b3d-7bdfd6dc0890\";s:6:\"Accept\";s:3:\"*/*\";s:15:\"Accept-Encoding\";s:13:\"gzip, deflate\";s:15:\"Accept-Language\";s:45:\"id-ID,id;q=0.9,en-US;q=0.8,en;q=0.7,fil;q=0.6\";s:6:\"Cookie\";s:43:\"ci_session=htg6ga22bj85pmfg8eurnju3pe5i262u\";s:14:\"Content-Length\";s:1:\"0\";i:1;N;}', '35d3d08c3d7b7f445ceb8e726a87b26c', '118.136.236.122', 1549434823, 1549430000, '1', 200),
(78, 'api/services/detail/2', 'get', 'a:14:{i:0;N;s:4:\"Host\";s:11:\"gatoko1.com\";s:10:\"Connection\";s:10:\"keep-alive\";s:13:\"Authorization\";s:38:\"Basic c200cnRzMGZ0Oj96d01BeEJuUzlqag==\";s:13:\"Cache-Control\";s:8:\"no-cache\";s:8:\"x-sm-key\";s:32:\"35d3d08c3d7b7f445ceb8e726a87b26c\";s:10:\"User-Agent\";s:114:\"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.98 Safari/537.36\";s:13:\"Postman-Token\";s:36:\"216ef3d2-4d51-94bb-4a48-6947f622e27f\";s:6:\"Accept\";s:3:\"*/*\";s:15:\"Accept-Encoding\";s:13:\"gzip, deflate\";s:15:\"Accept-Language\";s:45:\"id-ID,id;q=0.9,en-US;q=0.8,en;q=0.7,fil;q=0.6\";s:6:\"Cookie\";s:43:\"ci_session=htg6ga22bj85pmfg8eurnju3pe5i262u\";s:14:\"Content-Length\";s:1:\"0\";i:1;N;}', '35d3d08c3d7b7f445ceb8e726a87b26c', '118.136.236.122', 1549434825, 1549430000, '1', 200),
(79, 'api/services/detail/1', 'get', 'a:14:{i:0;N;s:4:\"Host\";s:11:\"gatoko1.com\";s:10:\"Connection\";s:10:\"keep-alive\";s:13:\"Authorization\";s:38:\"Basic c200cnRzMGZ0Oj96d01BeEJuUzlqag==\";s:13:\"Cache-Control\";s:8:\"no-cache\";s:8:\"x-sm-key\";s:32:\"35d3d08c3d7b7f445ceb8e726a87b26c\";s:10:\"User-Agent\";s:114:\"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.98 Safari/537.36\";s:13:\"Postman-Token\";s:36:\"537a295c-f413-84a0-cf08-67482a6c039d\";s:6:\"Accept\";s:3:\"*/*\";s:15:\"Accept-Encoding\";s:13:\"gzip, deflate\";s:15:\"Accept-Language\";s:45:\"id-ID,id;q=0.9,en-US;q=0.8,en;q=0.7,fil;q=0.6\";s:6:\"Cookie\";s:43:\"ci_session=htg6ga22bj85pmfg8eurnju3pe5i262u\";s:14:\"Content-Length\";s:1:\"0\";i:1;N;}', '35d3d08c3d7b7f445ceb8e726a87b26c', '118.136.236.122', 1549434830, 1549430000, '1', 200),
(80, 'api/services/detail', 'get', 'a:12:{s:4:\"Host\";s:11:\"gatoko1.com\";s:10:\"Connection\";s:10:\"keep-alive\";s:13:\"Authorization\";s:38:\"Basic c200cnRzMGZ0Oj96d01BeEJuUzlqag==\";s:13:\"Cache-Control\";s:8:\"no-cache\";s:8:\"x-sm-key\";s:32:\"35d3d08c3d7b7f445ceb8e726a87b26c\";s:10:\"User-Agent\";s:114:\"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.98 Safari/537.36\";s:13:\"Postman-Token\";s:36:\"4f91ad2b-5a8b-947f-efdd-412572cc6296\";s:6:\"Accept\";s:3:\"*/*\";s:15:\"Accept-Encoding\";s:13:\"gzip, deflate\";s:15:\"Accept-Language\";s:45:\"id-ID,id;q=0.9,en-US;q=0.8,en;q=0.7,fil;q=0.6\";s:6:\"Cookie\";s:43:\"ci_session=htg6ga22bj85pmfg8eurnju3pe5i262u\";s:14:\"Content-Length\";s:1:\"0\";}', '35d3d08c3d7b7f445ceb8e726a87b26c', '118.136.236.122', 1549434831, 1549430000, '1', 200),
(81, 'api/services/detail/1', 'get', 'a:14:{i:0;N;s:4:\"Host\";s:11:\"gatoko1.com\";s:10:\"Connection\";s:10:\"keep-alive\";s:13:\"Authorization\";s:38:\"Basic c200cnRzMGZ0Oj96d01BeEJuUzlqag==\";s:13:\"Cache-Control\";s:8:\"no-cache\";s:8:\"x-sm-key\";s:32:\"35d3d08c3d7b7f445ceb8e726a87b26c\";s:10:\"User-Agent\";s:114:\"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.98 Safari/537.36\";s:13:\"Postman-Token\";s:36:\"15127d88-080d-fb1b-d526-47437f9257d2\";s:6:\"Accept\";s:3:\"*/*\";s:15:\"Accept-Encoding\";s:13:\"gzip, deflate\";s:15:\"Accept-Language\";s:45:\"id-ID,id;q=0.9,en-US;q=0.8,en;q=0.7,fil;q=0.6\";s:6:\"Cookie\";s:43:\"ci_session=htg6ga22bj85pmfg8eurnju3pe5i262u\";s:14:\"Content-Length\";s:1:\"0\";i:1;N;}', '35d3d08c3d7b7f445ceb8e726a87b26c', '118.136.236.122', 1549434849, 1549430000, '1', 200),
(82, 'api/services/detail/2', 'get', 'a:14:{i:0;N;s:4:\"Host\";s:11:\"gatoko1.com\";s:10:\"Connection\";s:10:\"keep-alive\";s:13:\"Authorization\";s:38:\"Basic c200cnRzMGZ0Oj96d01BeEJuUzlqag==\";s:13:\"Cache-Control\";s:8:\"no-cache\";s:8:\"x-sm-key\";s:32:\"35d3d08c3d7b7f445ceb8e726a87b26c\";s:10:\"User-Agent\";s:114:\"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.98 Safari/537.36\";s:13:\"Postman-Token\";s:36:\"b2321b65-d3c7-71b6-c06c-bf8c11305996\";s:6:\"Accept\";s:3:\"*/*\";s:15:\"Accept-Encoding\";s:13:\"gzip, deflate\";s:15:\"Accept-Language\";s:45:\"id-ID,id;q=0.9,en-US;q=0.8,en;q=0.7,fil;q=0.6\";s:6:\"Cookie\";s:43:\"ci_session=htg6ga22bj85pmfg8eurnju3pe5i262u\";s:14:\"Content-Length\";s:1:\"0\";i:1;N;}', '35d3d08c3d7b7f445ceb8e726a87b26c', '118.136.236.122', 1549434851, 1549430000, '1', 200),
(83, 'api/services', 'put', 'a:18:{s:4:\"Host\";s:11:\"gatoko1.com\";s:10:\"Connection\";s:10:\"keep-alive\";s:14:\"Content-Length\";s:2:\"47\";s:10:\"User-Agent\";s:114:\"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.98 Safari/537.36\";s:13:\"Cache-Control\";s:8:\"no-cache\";s:6:\"Origin\";s:51:\"chrome-extension://fhbjgbiflinjbdggehcddcbncdddomop\";s:12:\"Content-Type\";s:33:\"application/x-www-form-urlencoded\";s:8:\"x-sm-key\";s:32:\"35d3d08c3d7b7f445ceb8e726a87b26c\";s:13:\"Authorization\";s:38:\"Basic c200cnRzMGZ0Oj96d01BeEJuUzlqag==\";s:13:\"Postman-Token\";s:36:\"d74656c0-5e25-a4c6-7237-23ef9a1ce210\";s:6:\"Accept\";s:3:\"*/*\";s:15:\"Accept-Encoding\";s:13:\"gzip, deflate\";s:15:\"Accept-Language\";s:45:\"id-ID,id;q=0.9,en-US;q=0.8,en;q=0.7,fil;q=0.6\";s:6:\"Cookie\";s:43:\"ci_session=htg6ga22bj85pmfg8eurnju3pe5i262u\";s:5:\"title\";s:8:\"tesah uh\";s:4:\"date\";s:10:\"2019-01-01\";s:7:\"content\";s:3:\"ini\";s:2:\"id\";s:1:\"2\";}', '35d3d08c3d7b7f445ceb8e726a87b26c', '118.136.236.122', 1549434871, 1549430000, '1', 200),
(84, 'api/services/enable/1', 'put', 'a:19:{i:0;N;s:4:\"Host\";s:11:\"gatoko1.com\";s:10:\"Connection\";s:10:\"keep-alive\";s:14:\"Content-Length\";s:2:\"47\";s:10:\"User-Agent\";s:114:\"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.98 Safari/537.36\";s:13:\"Cache-Control\";s:8:\"no-cache\";s:6:\"Origin\";s:51:\"chrome-extension://fhbjgbiflinjbdggehcddcbncdddomop\";s:12:\"Content-Type\";s:33:\"application/x-www-form-urlencoded\";s:8:\"x-sm-key\";s:32:\"35d3d08c3d7b7f445ceb8e726a87b26c\";s:13:\"Authorization\";s:38:\"Basic c200cnRzMGZ0Oj96d01BeEJuUzlqag==\";s:13:\"Postman-Token\";s:36:\"c2454b7a-dddb-d292-306e-ddc176572eb8\";s:6:\"Accept\";s:3:\"*/*\";s:15:\"Accept-Encoding\";s:13:\"gzip, deflate\";s:15:\"Accept-Language\";s:45:\"id-ID,id;q=0.9,en-US;q=0.8,en;q=0.7,fil;q=0.6\";s:6:\"Cookie\";s:43:\"ci_session=htg6ga22bj85pmfg8eurnju3pe5i262u\";s:5:\"title\";s:8:\"tesah uh\";s:4:\"date\";s:10:\"2019-01-01\";s:7:\"content\";s:3:\"ini\";s:2:\"id\";s:1:\"2\";}', '35d3d08c3d7b7f445ceb8e726a87b26c', '118.136.236.122', 1549434936, 1549430000, '1', 200),
(85, 'api/services/enable/1', 'put', 'a:16:{i:0;N;s:4:\"Host\";s:11:\"gatoko1.com\";s:10:\"Connection\";s:10:\"keep-alive\";s:14:\"Content-Length\";s:1:\"4\";s:10:\"User-Agent\";s:114:\"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.98 Safari/537.36\";s:13:\"Cache-Control\";s:8:\"no-cache\";s:6:\"Origin\";s:51:\"chrome-extension://fhbjgbiflinjbdggehcddcbncdddomop\";s:12:\"Content-Type\";s:33:\"application/x-www-form-urlencoded\";s:8:\"x-sm-key\";s:32:\"35d3d08c3d7b7f445ceb8e726a87b26c\";s:13:\"Authorization\";s:38:\"Basic c200cnRzMGZ0Oj96d01BeEJuUzlqag==\";s:13:\"Postman-Token\";s:36:\"35291873-7622-cfd6-23b5-c0c943dddcef\";s:6:\"Accept\";s:3:\"*/*\";s:15:\"Accept-Encoding\";s:13:\"gzip, deflate\";s:15:\"Accept-Language\";s:45:\"id-ID,id;q=0.9,en-US;q=0.8,en;q=0.7,fil;q=0.6\";s:6:\"Cookie\";s:43:\"ci_session=htg6ga22bj85pmfg8eurnju3pe5i262u\";s:2:\"id\";s:1:\"2\";}', '35d3d08c3d7b7f445ceb8e726a87b26c', '118.136.236.122', 1549434952, 1549440000, '1', 200),
(86, 'api/services/enable/1', 'put', 'a:16:{i:0;N;s:4:\"Host\";s:11:\"gatoko1.com\";s:10:\"Connection\";s:10:\"keep-alive\";s:14:\"Content-Length\";s:1:\"4\";s:10:\"User-Agent\";s:114:\"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.98 Safari/537.36\";s:13:\"Cache-Control\";s:8:\"no-cache\";s:6:\"Origin\";s:51:\"chrome-extension://fhbjgbiflinjbdggehcddcbncdddomop\";s:12:\"Content-Type\";s:33:\"application/x-www-form-urlencoded\";s:8:\"x-sm-key\";s:32:\"35d3d08c3d7b7f445ceb8e726a87b26c\";s:13:\"Authorization\";s:38:\"Basic c200cnRzMGZ0Oj96d01BeEJuUzlqag==\";s:13:\"Postman-Token\";s:36:\"043b2b1f-e7e5-18ca-e0de-b3efa3271808\";s:6:\"Accept\";s:3:\"*/*\";s:15:\"Accept-Encoding\";s:13:\"gzip, deflate\";s:15:\"Accept-Language\";s:45:\"id-ID,id;q=0.9,en-US;q=0.8,en;q=0.7,fil;q=0.6\";s:6:\"Cookie\";s:43:\"ci_session=htg6ga22bj85pmfg8eurnju3pe5i262u\";s:2:\"id\";s:1:\"2\";}', '35d3d08c3d7b7f445ceb8e726a87b26c', '118.136.236.122', 1549434970, 1549440000, '1', 200),
(87, 'api/services/enable/1', 'put', 'a:16:{i:0;N;s:4:\"Host\";s:11:\"gatoko1.com\";s:10:\"Connection\";s:10:\"keep-alive\";s:14:\"Content-Length\";s:1:\"4\";s:10:\"User-Agent\";s:114:\"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.98 Safari/537.36\";s:13:\"Cache-Control\";s:8:\"no-cache\";s:6:\"Origin\";s:51:\"chrome-extension://fhbjgbiflinjbdggehcddcbncdddomop\";s:12:\"Content-Type\";s:33:\"application/x-www-form-urlencoded\";s:8:\"x-sm-key\";s:32:\"35d3d08c3d7b7f445ceb8e726a87b26c\";s:13:\"Authorization\";s:38:\"Basic c200cnRzMGZ0Oj96d01BeEJuUzlqag==\";s:13:\"Postman-Token\";s:36:\"6b1ddca4-8512-a1b9-382e-ebc1a7796a91\";s:6:\"Accept\";s:3:\"*/*\";s:15:\"Accept-Encoding\";s:13:\"gzip, deflate\";s:15:\"Accept-Language\";s:45:\"id-ID,id;q=0.9,en-US;q=0.8,en;q=0.7,fil;q=0.6\";s:6:\"Cookie\";s:43:\"ci_session=htg6ga22bj85pmfg8eurnju3pe5i262u\";s:2:\"id\";s:1:\"2\";}', '35d3d08c3d7b7f445ceb8e726a87b26c', '118.136.236.122', 1549434971, 1549440000, '1', 200),
(88, 'api/services/enable', 'put', 'a:15:{s:4:\"Host\";s:11:\"gatoko1.com\";s:10:\"Connection\";s:10:\"keep-alive\";s:14:\"Content-Length\";s:1:\"4\";s:10:\"User-Agent\";s:114:\"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.98 Safari/537.36\";s:13:\"Cache-Control\";s:8:\"no-cache\";s:6:\"Origin\";s:51:\"chrome-extension://fhbjgbiflinjbdggehcddcbncdddomop\";s:12:\"Content-Type\";s:33:\"application/x-www-form-urlencoded\";s:8:\"x-sm-key\";s:32:\"35d3d08c3d7b7f445ceb8e726a87b26c\";s:13:\"Authorization\";s:38:\"Basic c200cnRzMGZ0Oj96d01BeEJuUzlqag==\";s:13:\"Postman-Token\";s:36:\"d41aed32-18b4-96a0-6158-0d008a068ca1\";s:6:\"Accept\";s:3:\"*/*\";s:15:\"Accept-Encoding\";s:13:\"gzip, deflate\";s:15:\"Accept-Language\";s:45:\"id-ID,id;q=0.9,en-US;q=0.8,en;q=0.7,fil;q=0.6\";s:6:\"Cookie\";s:43:\"ci_session=htg6ga22bj85pmfg8eurnju3pe5i262u\";s:2:\"id\";s:1:\"2\";}', '35d3d08c3d7b7f445ceb8e726a87b26c', '118.136.236.122', 1549434990, 1549440000, '1', 200),
(89, 'api/services/enable', 'put', 'a:15:{s:4:\"Host\";s:11:\"gatoko1.com\";s:10:\"Connection\";s:10:\"keep-alive\";s:14:\"Content-Length\";s:1:\"4\";s:10:\"User-Agent\";s:114:\"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.98 Safari/537.36\";s:13:\"Cache-Control\";s:8:\"no-cache\";s:6:\"Origin\";s:51:\"chrome-extension://fhbjgbiflinjbdggehcddcbncdddomop\";s:12:\"Content-Type\";s:33:\"application/x-www-form-urlencoded\";s:8:\"x-sm-key\";s:32:\"35d3d08c3d7b7f445ceb8e726a87b26c\";s:13:\"Authorization\";s:38:\"Basic c200cnRzMGZ0Oj96d01BeEJuUzlqag==\";s:13:\"Postman-Token\";s:36:\"bcfb6c42-5e8e-3733-2fe7-bede9320fbd0\";s:6:\"Accept\";s:3:\"*/*\";s:15:\"Accept-Encoding\";s:13:\"gzip, deflate\";s:15:\"Accept-Language\";s:45:\"id-ID,id;q=0.9,en-US;q=0.8,en;q=0.7,fil;q=0.6\";s:6:\"Cookie\";s:43:\"ci_session=htg6ga22bj85pmfg8eurnju3pe5i262u\";s:2:\"id\";s:1:\"2\";}', '35d3d08c3d7b7f445ceb8e726a87b26c', '118.136.236.122', 1549435032, 1549440000, '1', 200),
(90, 'api/services/disable', 'put', 'a:15:{s:4:\"Host\";s:11:\"gatoko1.com\";s:10:\"Connection\";s:10:\"keep-alive\";s:14:\"Content-Length\";s:1:\"4\";s:10:\"User-Agent\";s:114:\"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.98 Safari/537.36\";s:13:\"Cache-Control\";s:8:\"no-cache\";s:6:\"Origin\";s:51:\"chrome-extension://fhbjgbiflinjbdggehcddcbncdddomop\";s:12:\"Content-Type\";s:33:\"application/x-www-form-urlencoded\";s:8:\"x-sm-key\";s:32:\"35d3d08c3d7b7f445ceb8e726a87b26c\";s:13:\"Authorization\";s:38:\"Basic c200cnRzMGZ0Oj96d01BeEJuUzlqag==\";s:13:\"Postman-Token\";s:36:\"8ba1482d-f892-55a3-293d-faadb1ceb153\";s:6:\"Accept\";s:3:\"*/*\";s:15:\"Accept-Encoding\";s:13:\"gzip, deflate\";s:15:\"Accept-Language\";s:45:\"id-ID,id;q=0.9,en-US;q=0.8,en;q=0.7,fil;q=0.6\";s:6:\"Cookie\";s:43:\"ci_session=htg6ga22bj85pmfg8eurnju3pe5i262u\";s:2:\"id\";s:1:\"2\";}', '35d3d08c3d7b7f445ceb8e726a87b26c', '118.136.236.122', 1549435039, 1549440000, '1', 200),
(91, 'api/services/enable', 'put', 'a:15:{s:4:\"Host\";s:11:\"gatoko1.com\";s:10:\"Connection\";s:10:\"keep-alive\";s:14:\"Content-Length\";s:1:\"4\";s:10:\"User-Agent\";s:114:\"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.98 Safari/537.36\";s:13:\"Cache-Control\";s:8:\"no-cache\";s:6:\"Origin\";s:51:\"chrome-extension://fhbjgbiflinjbdggehcddcbncdddomop\";s:12:\"Content-Type\";s:33:\"application/x-www-form-urlencoded\";s:8:\"x-sm-key\";s:32:\"35d3d08c3d7b7f445ceb8e726a87b26c\";s:13:\"Authorization\";s:38:\"Basic c200cnRzMGZ0Oj96d01BeEJuUzlqag==\";s:13:\"Postman-Token\";s:36:\"7bd0b329-191e-52a9-d139-a2d7c158cd13\";s:6:\"Accept\";s:3:\"*/*\";s:15:\"Accept-Encoding\";s:13:\"gzip, deflate\";s:15:\"Accept-Language\";s:45:\"id-ID,id;q=0.9,en-US;q=0.8,en;q=0.7,fil;q=0.6\";s:6:\"Cookie\";s:43:\"ci_session=htg6ga22bj85pmfg8eurnju3pe5i262u\";s:2:\"id\";s:1:\"2\";}', '35d3d08c3d7b7f445ceb8e726a87b26c', '118.136.236.122', 1549435046, 1549440000, '1', 200),
(92, 'api/services/delete', 'put', 'a:15:{s:4:\"Host\";s:11:\"gatoko1.com\";s:10:\"Connection\";s:10:\"keep-alive\";s:14:\"Content-Length\";s:1:\"4\";s:10:\"User-Agent\";s:114:\"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.98 Safari/537.36\";s:13:\"Cache-Control\";s:8:\"no-cache\";s:6:\"Origin\";s:51:\"chrome-extension://fhbjgbiflinjbdggehcddcbncdddomop\";s:12:\"Content-Type\";s:33:\"application/x-www-form-urlencoded\";s:8:\"x-sm-key\";s:32:\"35d3d08c3d7b7f445ceb8e726a87b26c\";s:13:\"Authorization\";s:38:\"Basic c200cnRzMGZ0Oj96d01BeEJuUzlqag==\";s:13:\"Postman-Token\";s:36:\"643bb8b6-7edb-359a-7151-afb177dc0837\";s:6:\"Accept\";s:3:\"*/*\";s:15:\"Accept-Encoding\";s:13:\"gzip, deflate\";s:15:\"Accept-Language\";s:45:\"id-ID,id;q=0.9,en-US;q=0.8,en;q=0.7,fil;q=0.6\";s:6:\"Cookie\";s:43:\"ci_session=htg6ga22bj85pmfg8eurnju3pe5i262u\";s:2:\"id\";s:1:\"2\";}', '35d3d08c3d7b7f445ceb8e726a87b26c', '118.136.236.122', 1549435056, 1549440000, '1', 200),
(93, 'api/services', 'delete', 'a:15:{s:4:\"Host\";s:11:\"gatoko1.com\";s:10:\"Connection\";s:10:\"keep-alive\";s:14:\"Content-Length\";s:1:\"4\";s:10:\"User-Agent\";s:114:\"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.98 Safari/537.36\";s:13:\"Cache-Control\";s:8:\"no-cache\";s:6:\"Origin\";s:51:\"chrome-extension://fhbjgbiflinjbdggehcddcbncdddomop\";s:12:\"Content-Type\";s:33:\"application/x-www-form-urlencoded\";s:8:\"x-sm-key\";s:32:\"35d3d08c3d7b7f445ceb8e726a87b26c\";s:13:\"Authorization\";s:38:\"Basic c200cnRzMGZ0Oj96d01BeEJuUzlqag==\";s:13:\"Postman-Token\";s:36:\"041e4196-2eea-aa15-bad9-20df6c9acb1d\";s:6:\"Accept\";s:3:\"*/*\";s:15:\"Accept-Encoding\";s:13:\"gzip, deflate\";s:15:\"Accept-Language\";s:45:\"id-ID,id;q=0.9,en-US;q=0.8,en;q=0.7,fil;q=0.6\";s:6:\"Cookie\";s:43:\"ci_session=htg6ga22bj85pmfg8eurnju3pe5i262u\";s:2:\"id\";s:1:\"2\";}', '35d3d08c3d7b7f445ceb8e726a87b26c', '118.136.236.122', 1549435078, 1549440000, '1', 200),
(94, 'api/services', 'delete', 'a:15:{s:4:\"Host\";s:11:\"gatoko1.com\";s:10:\"Connection\";s:10:\"keep-alive\";s:14:\"Content-Length\";s:1:\"4\";s:10:\"User-Agent\";s:114:\"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.98 Safari/537.36\";s:13:\"Cache-Control\";s:8:\"no-cache\";s:6:\"Origin\";s:51:\"chrome-extension://fhbjgbiflinjbdggehcddcbncdddomop\";s:12:\"Content-Type\";s:33:\"application/x-www-form-urlencoded\";s:8:\"x-sm-key\";s:32:\"35d3d08c3d7b7f445ceb8e726a87b26c\";s:13:\"Authorization\";s:38:\"Basic c200cnRzMGZ0Oj96d01BeEJuUzlqag==\";s:13:\"Postman-Token\";s:36:\"1f715e2e-ea3b-d008-56b0-946c4f5f4d53\";s:6:\"Accept\";s:3:\"*/*\";s:15:\"Accept-Encoding\";s:13:\"gzip, deflate\";s:15:\"Accept-Language\";s:45:\"id-ID,id;q=0.9,en-US;q=0.8,en;q=0.7,fil;q=0.6\";s:6:\"Cookie\";s:43:\"ci_session=nkv3g7akvntgcd18ur7a4k02o5pm9rv6\";s:2:\"id\";s:1:\"2\";}', '35d3d08c3d7b7f445ceb8e726a87b26c', '118.136.236.122', 1549435084, 1549440000, '1', 200),
(95, 'api/services', 'get', 'a:9:{s:13:\"Cache-Control\";s:8:\"no-cache\";s:13:\"Postman-Token\";s:36:\"9eb3274b-e76d-48c9-8398-904cb2c09d56\";s:13:\"Authorization\";s:38:\"Basic c200cnRzMGZ0Oj96d01BeEJuUzlqag==\";s:10:\"User-Agent\";s:20:\"PostmanRuntime/7.6.0\";s:6:\"Accept\";s:3:\"*/*\";s:4:\"Host\";s:11:\"gatoko1.com\";s:15:\"Accept-Encoding\";s:13:\"gzip, deflate\";s:10:\"Connection\";s:10:\"keep-alive\";s:14:\"Content-Length\";s:1:\"0\";}', '', '118.136.148.201', 1550041680, 0.046937, '0', 403),
(96, 'api/services', 'get', 'a:11:{s:8:\"x-sm-key\";s:32:\"35d3d08c3d7b7f445ceb8e726a87b26c\";s:13:\"Cache-Control\";s:8:\"no-cache\";s:13:\"Postman-Token\";s:36:\"fac2440a-8f8a-430b-a974-b987f96839ca\";s:13:\"Authorization\";s:38:\"Basic c200cnRzMGZ0Oj96d01BeEJuUzlqag==\";s:10:\"User-Agent\";s:20:\"PostmanRuntime/7.6.0\";s:6:\"Accept\";s:3:\"*/*\";s:4:\"Host\";s:11:\"gatoko1.com\";s:6:\"Cookie\";s:43:\"ci_session=m7h04auf726kni0f1drtlu2i5gsto0lv\";s:15:\"Accept-Encoding\";s:13:\"gzip, deflate\";s:10:\"Connection\";s:10:\"keep-alive\";s:14:\"Content-Length\";s:1:\"0\";}', '35d3d08c3d7b7f445ceb8e726a87b26c', '118.136.148.201', 1550041746, 0.03969, '1', 0),
(97, 'api/customer', 'get', 'a:11:{s:8:\"x-sm-key\";s:32:\"35d3d08c3d7b7f445ceb8e726a87b26c\";s:13:\"Cache-Control\";s:8:\"no-cache\";s:13:\"Postman-Token\";s:36:\"d183c396-83d6-46f9-8625-9c7e996b1ee6\";s:13:\"Authorization\";s:38:\"Basic c200cnRzMGZ0Oj96d01BeEJuUzlqag==\";s:10:\"User-Agent\";s:20:\"PostmanRuntime/7.6.0\";s:6:\"Accept\";s:3:\"*/*\";s:4:\"Host\";s:11:\"gatoko1.com\";s:6:\"Cookie\";s:43:\"ci_session=m7h04auf726kni0f1drtlu2i5gsto0lv\";s:15:\"Accept-Encoding\";s:13:\"gzip, deflate\";s:10:\"Connection\";s:10:\"keep-alive\";s:14:\"Content-Length\";s:1:\"0\";}', '35d3d08c3d7b7f445ceb8e726a87b26c', '118.136.148.201', 1550041890, 0.0436552, '1', 404),
(98, 'api/customer', 'get', 'a:11:{s:8:\"x-sm-key\";s:32:\"35d3d08c3d7b7f445ceb8e726a87b26c\";s:13:\"Cache-Control\";s:8:\"no-cache\";s:13:\"Postman-Token\";s:36:\"58030595-56be-4fbe-888c-be60f7e5563c\";s:13:\"Authorization\";s:38:\"Basic c200cnRzMGZ0Oj96d01BeEJuUzlqag==\";s:10:\"User-Agent\";s:20:\"PostmanRuntime/7.6.0\";s:6:\"Accept\";s:3:\"*/*\";s:4:\"Host\";s:11:\"gatoko1.com\";s:6:\"Cookie\";s:43:\"ci_session=m7h04auf726kni0f1drtlu2i5gsto0lv\";s:15:\"Accept-Encoding\";s:13:\"gzip, deflate\";s:10:\"Connection\";s:10:\"keep-alive\";s:14:\"Content-Length\";s:1:\"0\";}', '35d3d08c3d7b7f445ceb8e726a87b26c', '118.136.148.201', 1550042033, 0.3466, '1', 200),
(99, 'api/customer/detail/1', 'get', 'a:13:{i:0;N;s:8:\"x-sm-key\";s:32:\"35d3d08c3d7b7f445ceb8e726a87b26c\";s:13:\"Cache-Control\";s:8:\"no-cache\";s:13:\"Postman-Token\";s:36:\"7fe9cef8-cbb0-4272-80d3-f9900f4a2297\";s:13:\"Authorization\";s:38:\"Basic c200cnRzMGZ0Oj96d01BeEJuUzlqag==\";s:10:\"User-Agent\";s:20:\"PostmanRuntime/7.6.0\";s:6:\"Accept\";s:3:\"*/*\";s:4:\"Host\";s:11:\"gatoko1.com\";s:6:\"Cookie\";s:43:\"ci_session=00p5toh62fbnfbrapstu4do5pd2m5k1g\";s:15:\"Accept-Encoding\";s:13:\"gzip, deflate\";s:10:\"Connection\";s:10:\"keep-alive\";s:14:\"Content-Length\";s:1:\"0\";i:1;N;}', '35d3d08c3d7b7f445ceb8e726a87b26c', '118.136.148.201', 1550043293, 0.038852, '1', 200),
(100, 'api/customer/detail/2', 'get', 'a:13:{i:0;N;s:8:\"x-sm-key\";s:32:\"35d3d08c3d7b7f445ceb8e726a87b26c\";s:13:\"Cache-Control\";s:8:\"no-cache\";s:13:\"Postman-Token\";s:36:\"08d7c7d9-094a-41ea-81ef-e36b64bc9014\";s:13:\"Authorization\";s:38:\"Basic c200cnRzMGZ0Oj96d01BeEJuUzlqag==\";s:10:\"User-Agent\";s:20:\"PostmanRuntime/7.6.0\";s:6:\"Accept\";s:3:\"*/*\";s:4:\"Host\";s:11:\"gatoko1.com\";s:6:\"Cookie\";s:43:\"ci_session=cebaammcrlfrmo22ob063uu9j99aj3or\";s:15:\"Accept-Encoding\";s:13:\"gzip, deflate\";s:10:\"Connection\";s:10:\"keep-alive\";s:14:\"Content-Length\";s:1:\"0\";i:1;N;}', '35d3d08c3d7b7f445ceb8e726a87b26c', '118.136.148.201', 1550043338, 0.038234, '1', 200),
(101, 'api/customer/detail/3', 'get', 'a:13:{i:0;N;s:8:\"x-sm-key\";s:32:\"35d3d08c3d7b7f445ceb8e726a87b26c\";s:13:\"Cache-Control\";s:8:\"no-cache\";s:13:\"Postman-Token\";s:36:\"7df16ff6-d61f-4187-9c17-c5ce6167b3df\";s:13:\"Authorization\";s:38:\"Basic c200cnRzMGZ0Oj96d01BeEJuUzlqag==\";s:10:\"User-Agent\";s:20:\"PostmanRuntime/7.6.0\";s:6:\"Accept\";s:3:\"*/*\";s:4:\"Host\";s:11:\"gatoko1.com\";s:6:\"Cookie\";s:43:\"ci_session=cebaammcrlfrmo22ob063uu9j99aj3or\";s:15:\"Accept-Encoding\";s:13:\"gzip, deflate\";s:10:\"Connection\";s:10:\"keep-alive\";s:14:\"Content-Length\";s:1:\"0\";i:1;N;}', '35d3d08c3d7b7f445ceb8e726a87b26c', '118.136.148.201', 1550043341, 0.0393689, '1', 200),
(102, 'api/customer/detail/2', 'get', 'a:13:{i:0;N;s:8:\"x-sm-key\";s:32:\"35d3d08c3d7b7f445ceb8e726a87b26c\";s:13:\"Cache-Control\";s:8:\"no-cache\";s:13:\"Postman-Token\";s:36:\"bd5e8835-e313-43fa-af33-d81fe9524a2b\";s:13:\"Authorization\";s:38:\"Basic c200cnRzMGZ0Oj96d01BeEJuUzlqag==\";s:10:\"User-Agent\";s:20:\"PostmanRuntime/7.6.0\";s:6:\"Accept\";s:3:\"*/*\";s:4:\"Host\";s:11:\"gatoko1.com\";s:6:\"Cookie\";s:43:\"ci_session=cebaammcrlfrmo22ob063uu9j99aj3or\";s:15:\"Accept-Encoding\";s:13:\"gzip, deflate\";s:10:\"Connection\";s:10:\"keep-alive\";s:14:\"Content-Length\";s:1:\"0\";i:1;N;}', '35d3d08c3d7b7f445ceb8e726a87b26c', '118.136.148.201', 1550043345, 0.0416031, '1', 200),
(103, 'api/customer/detail', 'get', 'a:11:{s:8:\"x-sm-key\";s:32:\"35d3d08c3d7b7f445ceb8e726a87b26c\";s:13:\"Cache-Control\";s:8:\"no-cache\";s:13:\"Postman-Token\";s:36:\"ad35228d-cc4d-49bc-a4bf-8cea06c5e871\";s:13:\"Authorization\";s:38:\"Basic c200cnRzMGZ0Oj96d01BeEJuUzlqag==\";s:10:\"User-Agent\";s:20:\"PostmanRuntime/7.6.0\";s:6:\"Accept\";s:3:\"*/*\";s:4:\"Host\";s:11:\"gatoko1.com\";s:6:\"Cookie\";s:43:\"ci_session=cebaammcrlfrmo22ob063uu9j99aj3or\";s:15:\"Accept-Encoding\";s:13:\"gzip, deflate\";s:10:\"Connection\";s:10:\"keep-alive\";s:14:\"Content-Length\";s:1:\"0\";}', '35d3d08c3d7b7f445ceb8e726a87b26c', '118.136.148.201', 1550043354, 0.041436, '1', 200),
(104, 'api/customer/detail/1', 'get', 'a:13:{i:0;N;s:8:\"x-sm-key\";s:32:\"35d3d08c3d7b7f445ceb8e726a87b26c\";s:13:\"Cache-Control\";s:8:\"no-cache\";s:13:\"Postman-Token\";s:36:\"e30dc5a1-111a-4df7-9f68-10b8a01b5d2f\";s:13:\"Authorization\";s:38:\"Basic c200cnRzMGZ0Oj96d01BeEJuUzlqag==\";s:10:\"User-Agent\";s:20:\"PostmanRuntime/7.6.0\";s:6:\"Accept\";s:3:\"*/*\";s:4:\"Host\";s:11:\"gatoko1.com\";s:6:\"Cookie\";s:43:\"ci_session=cebaammcrlfrmo22ob063uu9j99aj3or\";s:15:\"Accept-Encoding\";s:13:\"gzip, deflate\";s:10:\"Connection\";s:10:\"keep-alive\";s:14:\"Content-Length\";s:1:\"0\";i:1;N;}', '35d3d08c3d7b7f445ceb8e726a87b26c', '118.136.148.201', 1550043357, 0.0402689, '1', 200),
(105, 'api/customer/index_detail/1', 'get', 'a:13:{i:0;N;s:8:\"x-sm-key\";s:32:\"35d3d08c3d7b7f445ceb8e726a87b26c\";s:13:\"Cache-Control\";s:8:\"no-cache\";s:13:\"Postman-Token\";s:36:\"378b4b80-ba76-4700-a7f2-90843fe6d12c\";s:13:\"Authorization\";s:38:\"Basic c200cnRzMGZ0Oj96d01BeEJuUzlqag==\";s:10:\"User-Agent\";s:20:\"PostmanRuntime/7.6.0\";s:6:\"Accept\";s:3:\"*/*\";s:4:\"Host\";s:11:\"gatoko1.com\";s:6:\"Cookie\";s:43:\"ci_session=cebaammcrlfrmo22ob063uu9j99aj3or\";s:15:\"Accept-Encoding\";s:13:\"gzip, deflate\";s:10:\"Connection\";s:10:\"keep-alive\";s:14:\"Content-Length\";s:1:\"0\";i:1;N;}', '35d3d08c3d7b7f445ceb8e726a87b26c', '118.136.148.201', 1550043363, 0.0494442, '1', 200),
(106, 'api/customer/detail/1', 'get', 'a:13:{i:0;N;s:8:\"x-sm-key\";s:32:\"35d3d08c3d7b7f445ceb8e726a87b26c\";s:13:\"Cache-Control\";s:8:\"no-cache\";s:13:\"Postman-Token\";s:36:\"92d2bfcb-f7c6-4a74-b267-8f7ec2c94079\";s:13:\"Authorization\";s:38:\"Basic c200cnRzMGZ0Oj96d01BeEJuUzlqag==\";s:10:\"User-Agent\";s:20:\"PostmanRuntime/7.6.0\";s:6:\"Accept\";s:3:\"*/*\";s:4:\"Host\";s:11:\"gatoko1.com\";s:6:\"Cookie\";s:43:\"ci_session=cebaammcrlfrmo22ob063uu9j99aj3or\";s:15:\"Accept-Encoding\";s:13:\"gzip, deflate\";s:10:\"Connection\";s:10:\"keep-alive\";s:14:\"Content-Length\";s:1:\"0\";i:1;N;}', '35d3d08c3d7b7f445ceb8e726a87b26c', '118.136.148.201', 1550043379, 0.045403, '1', 200),
(107, 'api/customer/detail/1', 'get', 'a:13:{i:0;N;s:8:\"x-sm-key\";s:32:\"35d3d08c3d7b7f445ceb8e726a87b26c\";s:13:\"Cache-Control\";s:8:\"no-cache\";s:13:\"Postman-Token\";s:36:\"3319eaf6-e27f-4fc8-9127-e9f085acca16\";s:13:\"Authorization\";s:38:\"Basic c200cnRzMGZ0Oj96d01BeEJuUzlqag==\";s:10:\"User-Agent\";s:20:\"PostmanRuntime/7.6.0\";s:6:\"Accept\";s:3:\"*/*\";s:4:\"Host\";s:11:\"gatoko1.com\";s:6:\"Cookie\";s:43:\"ci_session=cebaammcrlfrmo22ob063uu9j99aj3or\";s:15:\"Accept-Encoding\";s:13:\"gzip, deflate\";s:10:\"Connection\";s:10:\"keep-alive\";s:14:\"Content-Length\";s:1:\"0\";i:1;N;}', '35d3d08c3d7b7f445ceb8e726a87b26c', '118.136.148.201', 1550043412, 0.040298, '1', 200),
(108, 'api/customer/detail/2', 'get', 'a:13:{i:0;N;s:8:\"x-sm-key\";s:32:\"35d3d08c3d7b7f445ceb8e726a87b26c\";s:13:\"Cache-Control\";s:8:\"no-cache\";s:13:\"Postman-Token\";s:36:\"e5354978-963c-47d5-9011-9df26f790075\";s:13:\"Authorization\";s:38:\"Basic c200cnRzMGZ0Oj96d01BeEJuUzlqag==\";s:10:\"User-Agent\";s:20:\"PostmanRuntime/7.6.0\";s:6:\"Accept\";s:3:\"*/*\";s:4:\"Host\";s:11:\"gatoko1.com\";s:6:\"Cookie\";s:43:\"ci_session=cebaammcrlfrmo22ob063uu9j99aj3or\";s:15:\"Accept-Encoding\";s:13:\"gzip, deflate\";s:10:\"Connection\";s:10:\"keep-alive\";s:14:\"Content-Length\";s:1:\"0\";i:1;N;}', '35d3d08c3d7b7f445ceb8e726a87b26c', '118.136.148.201', 1550043439, 0.0403781, '1', 404),
(109, 'api/customer/detail/2', 'post', 'a:17:{i:0;N;s:8:\"x-sm-key\";s:32:\"35d3d08c3d7b7f445ceb8e726a87b26c\";s:13:\"Cache-Control\";s:8:\"no-cache\";s:13:\"Postman-Token\";s:36:\"6f15e59e-9569-43bc-a36b-6e38d2614227\";s:13:\"Authorization\";s:38:\"Basic c200cnRzMGZ0Oj96d01BeEJuUzlqag==\";s:10:\"User-Agent\";s:20:\"PostmanRuntime/7.6.0\";s:6:\"Accept\";s:3:\"*/*\";s:4:\"Host\";s:11:\"gatoko1.com\";s:6:\"Cookie\";s:43:\"ci_session=cebaammcrlfrmo22ob063uu9j99aj3or\";s:15:\"Accept-Encoding\";s:13:\"gzip, deflate\";s:12:\"Content-Type\";s:80:\"multipart/form-data; boundary=--------------------------270277143471167715971007\";s:14:\"Content-Length\";s:3:\"583\";s:10:\"Connection\";s:10:\"keep-alive\";s:4:\"name\";s:18:\"Bayu Briyan El Roy\";s:5:\"email\";s:24:\"bayubriyanelroy@gmal.com\";s:5:\"phone\";s:12:\"081230008101\";s:7:\"address\";s:56:\"Jl Madasah Azziadah 24 Klender Duren Sawit Jakarta Timur\";}', '35d3d08c3d7b7f445ceb8e726a87b26c', '118.136.148.201', 1550043765, 0.0433841, '1', 200),
(110, 'api/customer/detail/2', 'post', 'a:17:{i:0;N;s:8:\"x-sm-key\";s:32:\"35d3d08c3d7b7f445ceb8e726a87b26c\";s:13:\"Cache-Control\";s:8:\"no-cache\";s:13:\"Postman-Token\";s:36:\"021b5b57-e343-4b71-8bd7-9eb0ee56608b\";s:13:\"Authorization\";s:38:\"Basic c200cnRzMGZ0Oj96d01BeEJuUzlqag==\";s:10:\"User-Agent\";s:20:\"PostmanRuntime/7.6.0\";s:6:\"Accept\";s:3:\"*/*\";s:4:\"Host\";s:11:\"gatoko1.com\";s:6:\"Cookie\";s:43:\"ci_session=ocfa57scutskl15se2kfcquut0c5qcf6\";s:15:\"Accept-Encoding\";s:13:\"gzip, deflate\";s:12:\"Content-Type\";s:80:\"multipart/form-data; boundary=--------------------------241408044604135091511042\";s:14:\"Content-Length\";s:3:\"473\";s:10:\"Connection\";s:10:\"keep-alive\";s:4:\"name\";s:0:\"\";s:5:\"email\";s:0:\"\";s:7:\"address\";s:0:\"\";s:5:\"phone\";s:0:\"\";}', '35d3d08c3d7b7f445ceb8e726a87b26c', '118.136.148.201', 1550043819, 0.074012, '1', 200),
(111, 'api/customer', 'put', 'a:17:{s:8:\"x-sm-key\";s:32:\"35d3d08c3d7b7f445ceb8e726a87b26c\";s:12:\"Content-Type\";s:33:\"application/x-www-form-urlencoded\";s:13:\"Cache-Control\";s:8:\"no-cache\";s:13:\"Postman-Token\";s:36:\"c7c07d35-658f-4bc5-91fe-808d684170b1\";s:13:\"Authorization\";s:38:\"Basic c200cnRzMGZ0Oj96d01BeEJuUzlqag==\";s:10:\"User-Agent\";s:20:\"PostmanRuntime/7.6.0\";s:6:\"Accept\";s:3:\"*/*\";s:4:\"Host\";s:11:\"gatoko1.com\";s:6:\"Cookie\";s:43:\"ci_session=ocfa57scutskl15se2kfcquut0c5qcf6\";s:15:\"Accept-Encoding\";s:13:\"gzip, deflate\";s:14:\"Content-Length\";s:3:\"167\";s:10:\"Connection\";s:10:\"keep-alive\";s:4:\"name\";s:18:\"Bayu Briyan El Roy\";s:5:\"email\";s:24:\"bayubriyanelroy@gmal.com\";s:7:\"address\";s:12:\"081230008101\";s:5:\"phone\";s:56:\"Jl Madasah Azziadah 24 Klender Duren Sawit Jakarta Timur\";s:2:\"id\";s:1:\"2\";}', '35d3d08c3d7b7f445ceb8e726a87b26c', '118.136.148.201', 1550048354, 0.0457339, '1', 200),
(112, 'api/customer', 'put', 'a:17:{s:8:\"x-sm-key\";s:32:\"35d3d08c3d7b7f445ceb8e726a87b26c\";s:12:\"Content-Type\";s:33:\"application/x-www-form-urlencoded\";s:13:\"Cache-Control\";s:8:\"no-cache\";s:13:\"Postman-Token\";s:36:\"891707bc-ee69-4f66-9f9a-d443df828569\";s:13:\"Authorization\";s:38:\"Basic c200cnRzMGZ0Oj96d01BeEJuUzlqag==\";s:10:\"User-Agent\";s:20:\"PostmanRuntime/7.6.0\";s:6:\"Accept\";s:3:\"*/*\";s:4:\"Host\";s:11:\"gatoko1.com\";s:6:\"Cookie\";s:43:\"ci_session=37s1q7gk3gn2aeg9ro5ob31up38apt58\";s:15:\"Accept-Encoding\";s:13:\"gzip, deflate\";s:14:\"Content-Length\";s:2:\"33\";s:10:\"Connection\";s:10:\"keep-alive\";s:7:\"address\";s:0:\"\";s:5:\"phone\";s:0:\"\";s:2:\"id\";s:1:\"2\";s:4:\"name\";s:0:\"\";s:5:\"email\";s:0:\"\";}', '35d3d08c3d7b7f445ceb8e726a87b26c', '118.136.148.201', 1550048393, 0.0788889, '1', 200),
(113, 'api/customer', 'delete', 'a:12:{s:8:\"x-sm-key\";s:32:\"35d3d08c3d7b7f445ceb8e726a87b26c\";s:12:\"Content-Type\";s:33:\"application/x-www-form-urlencoded\";s:13:\"Cache-Control\";s:8:\"no-cache\";s:13:\"Postman-Token\";s:36:\"20c22bab-e0ff-4ae7-93e9-1b31a76b80fe\";s:13:\"Authorization\";s:38:\"Basic c200cnRzMGZ0Oj96d01BeEJuUzlqag==\";s:10:\"User-Agent\";s:20:\"PostmanRuntime/7.6.0\";s:6:\"Accept\";s:3:\"*/*\";s:4:\"Host\";s:11:\"gatoko1.com\";s:6:\"Cookie\";s:43:\"ci_session=37s1q7gk3gn2aeg9ro5ob31up38apt58\";s:15:\"Accept-Encoding\";s:13:\"gzip, deflate\";s:14:\"Content-Length\";s:1:\"0\";s:10:\"Connection\";s:10:\"keep-alive\";}', '35d3d08c3d7b7f445ceb8e726a87b26c', '118.136.148.201', 1550048516, 0.04495, '1', 400),
(114, 'api/customer', 'delete', 'a:13:{s:8:\"x-sm-key\";s:32:\"35d3d08c3d7b7f445ceb8e726a87b26c\";s:12:\"Content-Type\";s:33:\"application/x-www-form-urlencoded\";s:13:\"Cache-Control\";s:8:\"no-cache\";s:13:\"Postman-Token\";s:36:\"c81411b7-5a9b-412d-bb50-45725d178c11\";s:13:\"Authorization\";s:38:\"Basic c200cnRzMGZ0Oj96d01BeEJuUzlqag==\";s:10:\"User-Agent\";s:20:\"PostmanRuntime/7.6.0\";s:6:\"Accept\";s:3:\"*/*\";s:4:\"Host\";s:11:\"gatoko1.com\";s:6:\"Cookie\";s:43:\"ci_session=37s1q7gk3gn2aeg9ro5ob31up38apt58\";s:15:\"Accept-Encoding\";s:13:\"gzip, deflate\";s:14:\"Content-Length\";s:1:\"4\";s:10:\"Connection\";s:10:\"keep-alive\";s:2:\"id\";s:1:\"3\";}', '35d3d08c3d7b7f445ceb8e726a87b26c', '118.136.148.201', 1550048560, 0.0388892, '1', 200),
(115, 'api/customer', 'delete', 'a:13:{s:8:\"x-sm-key\";s:32:\"35d3d08c3d7b7f445ceb8e726a87b26c\";s:12:\"Content-Type\";s:33:\"application/x-www-form-urlencoded\";s:13:\"Cache-Control\";s:8:\"no-cache\";s:13:\"Postman-Token\";s:36:\"26396c1a-8e8d-47f3-9602-dc03e8e12fc3\";s:13:\"Authorization\";s:38:\"Basic c200cnRzMGZ0Oj96d01BeEJuUzlqag==\";s:10:\"User-Agent\";s:20:\"PostmanRuntime/7.6.0\";s:6:\"Accept\";s:3:\"*/*\";s:4:\"Host\";s:11:\"gatoko1.com\";s:6:\"Cookie\";s:43:\"ci_session=37s1q7gk3gn2aeg9ro5ob31up38apt58\";s:15:\"Accept-Encoding\";s:13:\"gzip, deflate\";s:14:\"Content-Length\";s:1:\"4\";s:10:\"Connection\";s:10:\"keep-alive\";s:2:\"id\";s:1:\"3\";}', '35d3d08c3d7b7f445ceb8e726a87b26c', '118.136.148.201', 1550048595, 0.0394552, '1', 404),
(116, 'api/customer', 'delete', 'a:13:{s:8:\"x-sm-key\";s:32:\"35d3d08c3d7b7f445ceb8e726a87b26c\";s:12:\"Content-Type\";s:33:\"application/x-www-form-urlencoded\";s:13:\"Cache-Control\";s:8:\"no-cache\";s:13:\"Postman-Token\";s:36:\"ac36bcce-0e42-4a69-8308-4ede1e1f3561\";s:13:\"Authorization\";s:38:\"Basic c200cnRzMGZ0Oj96d01BeEJuUzlqag==\";s:10:\"User-Agent\";s:20:\"PostmanRuntime/7.6.0\";s:6:\"Accept\";s:3:\"*/*\";s:4:\"Host\";s:11:\"gatoko1.com\";s:6:\"Cookie\";s:43:\"ci_session=37s1q7gk3gn2aeg9ro5ob31up38apt58\";s:15:\"Accept-Encoding\";s:13:\"gzip, deflate\";s:14:\"Content-Length\";s:1:\"4\";s:10:\"Connection\";s:10:\"keep-alive\";s:2:\"id\";s:1:\"2\";}', '35d3d08c3d7b7f445ceb8e726a87b26c', '118.136.148.201', 1550048671, 0.0670228, '1', 200),
(117, 'api/customer', 'delete', 'a:13:{s:8:\"x-sm-key\";s:32:\"35d3d08c3d7b7f445ceb8e726a87b26c\";s:12:\"Content-Type\";s:33:\"application/x-www-form-urlencoded\";s:13:\"Cache-Control\";s:8:\"no-cache\";s:13:\"Postman-Token\";s:36:\"c407981f-055a-4663-96fd-2d9e281bdff5\";s:13:\"Authorization\";s:38:\"Basic c200cnRzMGZ0Oj96d01BeEJuUzlqag==\";s:10:\"User-Agent\";s:20:\"PostmanRuntime/7.6.0\";s:6:\"Accept\";s:3:\"*/*\";s:4:\"Host\";s:11:\"gatoko1.com\";s:6:\"Cookie\";s:43:\"ci_session=8i5f6u5b0nfn5tl1ivgjost2obatfvcv\";s:15:\"Accept-Encoding\";s:13:\"gzip, deflate\";s:14:\"Content-Length\";s:1:\"4\";s:10:\"Connection\";s:10:\"keep-alive\";s:2:\"id\";s:1:\"2\";}', '35d3d08c3d7b7f445ceb8e726a87b26c', '118.136.148.201', 1550048689, 0.04316, '1', 404),
(118, 'api/customer/enable', 'put', 'a:13:{s:8:\"x-sm-key\";s:32:\"35d3d08c3d7b7f445ceb8e726a87b26c\";s:12:\"Content-Type\";s:33:\"application/x-www-form-urlencoded\";s:13:\"Cache-Control\";s:8:\"no-cache\";s:13:\"Postman-Token\";s:36:\"55701b25-9c14-46aa-ba95-fde151a8281d\";s:13:\"Authorization\";s:38:\"Basic c200cnRzMGZ0Oj96d01BeEJuUzlqag==\";s:10:\"User-Agent\";s:20:\"PostmanRuntime/7.6.0\";s:6:\"Accept\";s:3:\"*/*\";s:4:\"Host\";s:11:\"gatoko1.com\";s:6:\"Cookie\";s:43:\"ci_session=8i5f6u5b0nfn5tl1ivgjost2obatfvcv\";s:15:\"Accept-Encoding\";s:13:\"gzip, deflate\";s:14:\"Content-Length\";s:1:\"4\";s:10:\"Connection\";s:10:\"keep-alive\";s:2:\"id\";s:1:\"1\";}', '35d3d08c3d7b7f445ceb8e726a87b26c', '118.136.148.201', 1550048728, 0.046968, '1', 200),
(119, 'api/customer/enable', 'put', 'a:12:{s:8:\"x-sm-key\";s:32:\"35d3d08c3d7b7f445ceb8e726a87b26c\";s:12:\"Content-Type\";s:33:\"application/x-www-form-urlencoded\";s:13:\"Cache-Control\";s:8:\"no-cache\";s:13:\"Postman-Token\";s:36:\"56c42994-6fd9-4291-a637-426d62fa3c6a\";s:13:\"Authorization\";s:38:\"Basic c200cnRzMGZ0Oj96d01BeEJuUzlqag==\";s:10:\"User-Agent\";s:20:\"PostmanRuntime/7.6.0\";s:6:\"Accept\";s:3:\"*/*\";s:4:\"Host\";s:11:\"gatoko1.com\";s:6:\"Cookie\";s:43:\"ci_session=8i5f6u5b0nfn5tl1ivgjost2obatfvcv\";s:15:\"Accept-Encoding\";s:13:\"gzip, deflate\";s:14:\"Content-Length\";s:1:\"0\";s:10:\"Connection\";s:10:\"keep-alive\";}', '35d3d08c3d7b7f445ceb8e726a87b26c', '118.136.148.201', 1550048810, 0.0421109, '1', 200),
(120, 'api/customer', 'get', 'a:10:{s:13:\"Cache-Control\";s:8:\"no-cache\";s:13:\"Postman-Token\";s:36:\"55658acd-5e8a-420b-ac48-52cd56478e31\";s:13:\"Authorization\";s:38:\"Basic c200cnRzMGZ0Oj96d01BeEJuUzlqag==\";s:10:\"User-Agent\";s:20:\"PostmanRuntime/7.6.1\";s:6:\"Accept\";s:3:\"*/*\";s:4:\"Host\";s:11:\"gatoko1.com\";s:6:\"Cookie\";s:43:\"ci_session=noffqtdft10n5hslgh4410qv6kk88j9l\";s:15:\"Accept-Encoding\";s:13:\"gzip, deflate\";s:10:\"Connection\";s:10:\"keep-alive\";s:14:\"Content-Length\";s:1:\"0\";}', '', '118.136.101.98', 1553486265, 0.043426, '0', 403),
(121, 'api/customer', 'get', 'a:11:{s:8:\"x-sm-key\";s:32:\"35d3d08c3d7b7f445ceb8e726a87b26c\";s:13:\"Cache-Control\";s:8:\"no-cache\";s:13:\"Postman-Token\";s:36:\"580bffef-90d3-49fb-b877-2c5a0b3768f6\";s:13:\"Authorization\";s:38:\"Basic c200cnRzMGZ0Oj96d01BeEJuUzlqag==\";s:10:\"User-Agent\";s:20:\"PostmanRuntime/7.6.1\";s:6:\"Accept\";s:3:\"*/*\";s:4:\"Host\";s:11:\"gatoko1.com\";s:6:\"Cookie\";s:43:\"ci_session=noffqtdft10n5hslgh4410qv6kk88j9l\";s:15:\"Accept-Encoding\";s:13:\"gzip, deflate\";s:10:\"Connection\";s:10:\"keep-alive\";s:14:\"Content-Length\";s:1:\"0\";}', '35d3d08c3d7b7f445ceb8e726a87b26c', '118.136.101.98', 1553486285, 0.0393262, '1', 200),
(122, 'api/customer', 'post', 'a:11:{s:8:\"x-sm-key\";s:32:\"35d3d08c3d7b7f445ceb8e726a87b26c\";s:13:\"Cache-Control\";s:8:\"no-cache\";s:13:\"Postman-Token\";s:36:\"74e8aac9-a514-4fd1-a378-7cb584845d45\";s:13:\"Authorization\";s:38:\"Basic c200cnRzMGZ0Oj96d01BeEJuUzlqag==\";s:10:\"User-Agent\";s:20:\"PostmanRuntime/7.6.1\";s:6:\"Accept\";s:3:\"*/*\";s:4:\"Host\";s:11:\"gatoko1.com\";s:6:\"Cookie\";s:43:\"ci_session=noffqtdft10n5hslgh4410qv6kk88j9l\";s:15:\"Accept-Encoding\";s:13:\"gzip, deflate\";s:14:\"Content-Length\";s:1:\"0\";s:10:\"Connection\";s:10:\"keep-alive\";}', '35d3d08c3d7b7f445ceb8e726a87b26c', '118.136.101.98', 1553486435, 0.0415149, '1', 200),
(123, 'api/customer', 'get', 'a:11:{s:8:\"x-sm-key\";s:32:\"35d3d08c3d7b7f445ceb8e726a87b26c\";s:13:\"Cache-Control\";s:8:\"no-cache\";s:13:\"Postman-Token\";s:36:\"61ad4f72-a273-4b0c-90d1-776651ee155d\";s:13:\"Authorization\";s:38:\"Basic c200cnRzMGZ0Oj96d01BeEJuUzlqag==\";s:10:\"User-Agent\";s:20:\"PostmanRuntime/7.6.1\";s:6:\"Accept\";s:3:\"*/*\";s:4:\"Host\";s:11:\"gatoko1.com\";s:6:\"Cookie\";s:43:\"ci_session=0ou9naa8qcf17lcnuuh5836h89j9jng2\";s:15:\"Accept-Encoding\";s:13:\"gzip, deflate\";s:10:\"Connection\";s:10:\"keep-alive\";s:14:\"Content-Length\";s:1:\"0\";}', '35d3d08c3d7b7f445ceb8e726a87b26c', '118.136.101.98', 1553486456, 0.0401361, '1', 200),
(124, 'api/customer/detail/1', 'get', 'a:13:{i:0;N;s:8:\"x-sm-key\";s:32:\"35d3d08c3d7b7f445ceb8e726a87b26c\";s:13:\"Cache-Control\";s:8:\"no-cache\";s:13:\"Postman-Token\";s:36:\"f48b46f5-ef2c-4ced-828d-d55dcf4741e4\";s:13:\"Authorization\";s:38:\"Basic c200cnRzMGZ0Oj96d01BeEJuUzlqag==\";s:10:\"User-Agent\";s:20:\"PostmanRuntime/7.6.1\";s:6:\"Accept\";s:3:\"*/*\";s:4:\"Host\";s:11:\"gatoko1.com\";s:6:\"Cookie\";s:43:\"ci_session=0ou9naa8qcf17lcnuuh5836h89j9jng2\";s:15:\"Accept-Encoding\";s:13:\"gzip, deflate\";s:10:\"Connection\";s:10:\"keep-alive\";s:14:\"Content-Length\";s:1:\"0\";i:1;N;}', '35d3d08c3d7b7f445ceb8e726a87b26c', '118.136.101.98', 1553486464, 0.0408051, '1', 200);
INSERT INTO `logs` (`id`, `uri`, `method`, `params`, `api_key`, `ip_address`, `time`, `rtime`, `authorized`, `response_code`) VALUES
(125, 'api/customer/detail/2', 'get', 'a:13:{i:0;N;s:8:\"x-sm-key\";s:32:\"35d3d08c3d7b7f445ceb8e726a87b26c\";s:13:\"Cache-Control\";s:8:\"no-cache\";s:13:\"Postman-Token\";s:36:\"25a837ed-9429-4b7b-adf2-f6a4c5a37024\";s:13:\"Authorization\";s:38:\"Basic c200cnRzMGZ0Oj96d01BeEJuUzlqag==\";s:10:\"User-Agent\";s:20:\"PostmanRuntime/7.6.1\";s:6:\"Accept\";s:3:\"*/*\";s:4:\"Host\";s:11:\"gatoko1.com\";s:6:\"Cookie\";s:43:\"ci_session=0ou9naa8qcf17lcnuuh5836h89j9jng2\";s:15:\"Accept-Encoding\";s:13:\"gzip, deflate\";s:10:\"Connection\";s:10:\"keep-alive\";s:14:\"Content-Length\";s:1:\"0\";i:1;N;}', '35d3d08c3d7b7f445ceb8e726a87b26c', '118.136.101.98', 1553486468, 0.0408051, '1', 404),
(126, 'api/customer/detail/1', 'get', 'a:13:{i:0;N;s:8:\"x-sm-key\";s:32:\"35d3d08c3d7b7f445ceb8e726a87b26c\";s:13:\"Cache-Control\";s:8:\"no-cache\";s:13:\"Postman-Token\";s:36:\"d35dbdaa-e37f-4b92-9b2b-12f285cb0b12\";s:13:\"Authorization\";s:38:\"Basic c200cnRzMGZ0Oj96d01BeEJuUzlqag==\";s:10:\"User-Agent\";s:20:\"PostmanRuntime/7.6.1\";s:6:\"Accept\";s:3:\"*/*\";s:4:\"Host\";s:11:\"gatoko1.com\";s:6:\"Cookie\";s:43:\"ci_session=0ou9naa8qcf17lcnuuh5836h89j9jng2\";s:15:\"Accept-Encoding\";s:13:\"gzip, deflate\";s:10:\"Connection\";s:10:\"keep-alive\";s:14:\"Content-Length\";s:1:\"0\";i:1;N;}', '35d3d08c3d7b7f445ceb8e726a87b26c', '118.136.101.98', 1553486471, 0.042562, '1', 200),
(127, 'api/customer/detail/1', 'post', 'a:12:{i:0;N;s:8:\"x-sm-key\";s:32:\"35d3d08c3d7b7f445ceb8e726a87b26c\";s:13:\"Cache-Control\";s:8:\"no-cache\";s:13:\"Postman-Token\";s:36:\"914bbbda-2ea7-46f7-b9a4-41e60cbcbfcf\";s:13:\"Authorization\";s:38:\"Basic c200cnRzMGZ0Oj96d01BeEJuUzlqag==\";s:10:\"User-Agent\";s:20:\"PostmanRuntime/7.6.1\";s:6:\"Accept\";s:3:\"*/*\";s:4:\"Host\";s:11:\"gatoko1.com\";s:6:\"Cookie\";s:43:\"ci_session=0ou9naa8qcf17lcnuuh5836h89j9jng2\";s:15:\"Accept-Encoding\";s:13:\"gzip, deflate\";s:14:\"Content-Length\";s:1:\"0\";s:10:\"Connection\";s:10:\"keep-alive\";}', '35d3d08c3d7b7f445ceb8e726a87b26c', '118.136.101.98', 1553486475, 0.041795, '1', 200),
(128, 'api/customer/detail/1', 'post', 'a:12:{i:0;N;s:8:\"x-sm-key\";s:32:\"35d3d08c3d7b7f445ceb8e726a87b26c\";s:13:\"Cache-Control\";s:8:\"no-cache\";s:13:\"Postman-Token\";s:36:\"b931dae0-efcf-4311-bad6-6b0281842cf9\";s:13:\"Authorization\";s:38:\"Basic c200cnRzMGZ0Oj96d01BeEJuUzlqag==\";s:10:\"User-Agent\";s:20:\"PostmanRuntime/7.6.1\";s:6:\"Accept\";s:3:\"*/*\";s:4:\"Host\";s:11:\"gatoko1.com\";s:6:\"Cookie\";s:43:\"ci_session=0ou9naa8qcf17lcnuuh5836h89j9jng2\";s:15:\"Accept-Encoding\";s:13:\"gzip, deflate\";s:14:\"Content-Length\";s:1:\"0\";s:10:\"Connection\";s:10:\"keep-alive\";}', '35d3d08c3d7b7f445ceb8e726a87b26c', '118.136.101.98', 1553486478, 0.0405412, '1', 200),
(129, 'api/customer', 'get', 'a:11:{s:8:\"x-sm-key\";s:32:\"35d3d08c3d7b7f445ceb8e726a87b26c\";s:13:\"Cache-Control\";s:8:\"no-cache\";s:13:\"Postman-Token\";s:36:\"776eb3f3-8102-4bd7-b787-1a5c4bcb4795\";s:13:\"Authorization\";s:38:\"Basic c200cnRzMGZ0Oj96d01BeEJuUzlqag==\";s:10:\"User-Agent\";s:20:\"PostmanRuntime/7.6.1\";s:6:\"Accept\";s:3:\"*/*\";s:4:\"Host\";s:11:\"gatoko1.com\";s:6:\"Cookie\";s:43:\"ci_session=0ou9naa8qcf17lcnuuh5836h89j9jng2\";s:15:\"Accept-Encoding\";s:13:\"gzip, deflate\";s:10:\"Connection\";s:10:\"keep-alive\";s:14:\"Content-Length\";s:1:\"0\";}', '35d3d08c3d7b7f445ceb8e726a87b26c', '118.136.101.98', 1553486548, 0.0437829, '1', 200),
(130, 'api/customer', 'put', 'a:11:{s:8:\"x-sm-key\";s:32:\"35d3d08c3d7b7f445ceb8e726a87b26c\";s:13:\"Cache-Control\";s:8:\"no-cache\";s:13:\"Postman-Token\";s:36:\"28873dba-1b14-4637-916e-8cdb5119f1eb\";s:13:\"Authorization\";s:38:\"Basic c200cnRzMGZ0Oj96d01BeEJuUzlqag==\";s:10:\"User-Agent\";s:20:\"PostmanRuntime/7.6.1\";s:6:\"Accept\";s:3:\"*/*\";s:4:\"Host\";s:11:\"gatoko1.com\";s:6:\"Cookie\";s:43:\"ci_session=0ou9naa8qcf17lcnuuh5836h89j9jng2\";s:15:\"Accept-Encoding\";s:13:\"gzip, deflate\";s:14:\"Content-Length\";s:1:\"0\";s:10:\"Connection\";s:10:\"keep-alive\";}', '35d3d08c3d7b7f445ceb8e726a87b26c', '118.136.101.98', 1553486610, 0.0680921, '1', 200),
(131, 'api/customer', 'put', 'a:13:{s:8:\"x-sm-key\";s:32:\"35d3d08c3d7b7f445ceb8e726a87b26c\";s:13:\"Cache-Control\";s:8:\"no-cache\";s:13:\"Postman-Token\";s:36:\"7e1eac1e-faf7-44dd-b734-af0e471a8dea\";s:13:\"Authorization\";s:38:\"Basic c200cnRzMGZ0Oj96d01BeEJuUzlqag==\";s:10:\"User-Agent\";s:20:\"PostmanRuntime/7.6.1\";s:6:\"Accept\";s:3:\"*/*\";s:4:\"Host\";s:11:\"gatoko1.com\";s:6:\"Cookie\";s:43:\"ci_session=0ou9naa8qcf17lcnuuh5836h89j9jng2\";s:15:\"Accept-Encoding\";s:13:\"gzip, deflate\";s:12:\"Content-Type\";s:80:\"multipart/form-data; boundary=--------------------------132173021837729928827018\";s:14:\"Content-Length\";s:3:\"601\";s:10:\"Connection\";s:10:\"keep-alive\";s:90:\"----------------------------132173021837729928827018\r\nContent-Disposition:_form-data;_name\";s:510:\"\"id\"\r\n\r\n1\r\n----------------------------132173021837729928827018\r\nContent-Disposition: form-data; name=\"name\"\r\n\r\nMarcell\r\n----------------------------132173021837729928827018\r\nContent-Disposition: form-data; name=\"email\"\r\n\r\nmarcell@gmail.com\r\n----------------------------132173021837729928827018\r\nContent-Disposition: form-data; name=\"phone\"\r\n\r\n0\r\n----------------------------132173021837729928827018\r\nContent-Disposition: form-data; name=\"address\"\r\n\r\n-\r\n----------------------------132173021837729928827018--\r\n\";}', '35d3d08c3d7b7f445ceb8e726a87b26c', '118.136.101.98', 1553486651, 0.0602229, '1', 200),
(132, 'api/customer/index', 'put', 'a:13:{s:8:\"x-sm-key\";s:32:\"35d3d08c3d7b7f445ceb8e726a87b26c\";s:13:\"Cache-Control\";s:8:\"no-cache\";s:13:\"Postman-Token\";s:36:\"bdc624da-d819-4d43-a638-2841595334cf\";s:13:\"Authorization\";s:38:\"Basic c200cnRzMGZ0Oj96d01BeEJuUzlqag==\";s:10:\"User-Agent\";s:20:\"PostmanRuntime/7.6.1\";s:6:\"Accept\";s:3:\"*/*\";s:4:\"Host\";s:11:\"gatoko1.com\";s:6:\"Cookie\";s:43:\"ci_session=0ou9naa8qcf17lcnuuh5836h89j9jng2\";s:15:\"Accept-Encoding\";s:13:\"gzip, deflate\";s:12:\"Content-Type\";s:80:\"multipart/form-data; boundary=--------------------------058076299379341907803355\";s:14:\"Content-Length\";s:3:\"601\";s:10:\"Connection\";s:10:\"keep-alive\";s:90:\"----------------------------058076299379341907803355\r\nContent-Disposition:_form-data;_name\";s:510:\"\"id\"\r\n\r\n1\r\n----------------------------058076299379341907803355\r\nContent-Disposition: form-data; name=\"name\"\r\n\r\nMarcell\r\n----------------------------058076299379341907803355\r\nContent-Disposition: form-data; name=\"email\"\r\n\r\nmarcell@gmail.com\r\n----------------------------058076299379341907803355\r\nContent-Disposition: form-data; name=\"phone\"\r\n\r\n0\r\n----------------------------058076299379341907803355\r\nContent-Disposition: form-data; name=\"address\"\r\n\r\n-\r\n----------------------------058076299379341907803355--\r\n\";}', '35d3d08c3d7b7f445ceb8e726a87b26c', '118.136.101.98', 1553486659, 0.0498202, '1', 200),
(133, 'api/customer', 'put', 'a:17:{s:8:\"x-sm-key\";s:32:\"35d3d08c3d7b7f445ceb8e726a87b26c\";s:12:\"Content-Type\";s:33:\"application/x-www-form-urlencoded\";s:13:\"Cache-Control\";s:8:\"no-cache\";s:13:\"Postman-Token\";s:36:\"7017eee3-7f68-470d-b48f-cda8a497db21\";s:13:\"Authorization\";s:38:\"Basic c200cnRzMGZ0Oj96d01BeEJuUzlqag==\";s:10:\"User-Agent\";s:20:\"PostmanRuntime/7.6.1\";s:6:\"Accept\";s:3:\"*/*\";s:4:\"Host\";s:11:\"gatoko1.com\";s:6:\"Cookie\";s:43:\"ci_session=0ou9naa8qcf17lcnuuh5836h89j9jng2\";s:15:\"Accept-Encoding\";s:13:\"gzip, deflate\";s:14:\"Content-Length\";s:2:\"61\";s:10:\"Connection\";s:10:\"keep-alive\";s:2:\"id\";s:1:\"1\";s:4:\"name\";s:7:\"Marcell\";s:5:\"email\";s:17:\"marcell@gmail.com\";s:5:\"phone\";s:1:\"0\";s:7:\"address\";s:1:\"-\";}', '35d3d08c3d7b7f445ceb8e726a87b26c', '118.136.101.98', 1553486677, 0.0547671, '1', 200),
(134, 'api/customer', 'put', 'a:17:{s:8:\"x-sm-key\";s:32:\"35d3d08c3d7b7f445ceb8e726a87b26c\";s:12:\"Content-Type\";s:33:\"application/x-www-form-urlencoded\";s:13:\"Cache-Control\";s:8:\"no-cache\";s:13:\"Postman-Token\";s:36:\"0919d15c-ab2d-4719-905a-294bab410871\";s:13:\"Authorization\";s:38:\"Basic c200cnRzMGZ0Oj96d01BeEJuUzlqag==\";s:10:\"User-Agent\";s:20:\"PostmanRuntime/7.6.1\";s:6:\"Accept\";s:3:\"*/*\";s:4:\"Host\";s:11:\"gatoko1.com\";s:6:\"Cookie\";s:43:\"ci_session=0ou9naa8qcf17lcnuuh5836h89j9jng2\";s:15:\"Accept-Encoding\";s:13:\"gzip, deflate\";s:14:\"Content-Length\";s:2:\"72\";s:10:\"Connection\";s:10:\"keep-alive\";s:2:\"id\";s:1:\"1\";s:4:\"name\";s:7:\"Marcell\";s:5:\"email\";s:17:\"marcell@gmail.com\";s:5:\"phone\";s:12:\"023489234234\";s:7:\"address\";s:1:\"-\";}', '35d3d08c3d7b7f445ceb8e726a87b26c', '118.136.101.98', 1553486705, 0.067431, '1', 200),
(135, 'api/customer', 'get', 'a:12:{s:8:\"x-sm-key\";s:32:\"35d3d08c3d7b7f445ceb8e726a87b26c\";s:12:\"Content-Type\";s:33:\"application/x-www-form-urlencoded\";s:13:\"Cache-Control\";s:8:\"no-cache\";s:13:\"Postman-Token\";s:36:\"22946704-6ecb-4ae0-818a-984fe1ebb128\";s:13:\"Authorization\";s:38:\"Basic c200cnRzMGZ0Oj96d01BeEJuUzlqag==\";s:10:\"User-Agent\";s:20:\"PostmanRuntime/7.6.1\";s:6:\"Accept\";s:3:\"*/*\";s:4:\"Host\";s:11:\"gatoko1.com\";s:6:\"Cookie\";s:43:\"ci_session=0ou9naa8qcf17lcnuuh5836h89j9jng2\";s:15:\"Accept-Encoding\";s:13:\"gzip, deflate\";s:14:\"Content-Length\";s:1:\"0\";s:10:\"Connection\";s:10:\"keep-alive\";}', '35d3d08c3d7b7f445ceb8e726a87b26c', '118.136.101.98', 1553486710, 0.0617602, '1', 200),
(136, 'api/service/1', 'get', 'a:12:{s:8:\"x-sm-key\";s:32:\"35d3d08c3d7b7f445ceb8e726a87b26c\";s:4:\"Host\";s:11:\"gatoko1.com\";s:10:\"Connection\";s:10:\"keep-alive\";s:13:\"Cache-Control\";s:9:\"max-age=0\";s:13:\"Authorization\";s:38:\"Basic c200cnRzMGZ0Oj96d01BeEJuUzlqag==\";s:25:\"Upgrade-Insecure-Requests\";s:1:\"1\";s:10:\"User-Agent\";s:104:\"Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/73.0.3683.75 Safari/537.36\";s:6:\"Accept\";s:118:\"text/html,application/xhtml+xml,application/xml;q=0.9,image/webp,image/apng,*/*;q=0.8,application/signed-exchange;v=b3\";s:15:\"Accept-Encoding\";s:13:\"gzip, deflate\";s:15:\"Accept-Language\";s:23:\"en-US,en;q=0.9,id;q=0.8\";s:6:\"Cookie\";s:162:\"__tawkuuid=e::gatoko1.com::OhUiMUccaj8WHrrU9umxSbLztAdgNdRTssI1QjdAzElG8peDYrIMeFEHEJGxhcsK::2; timezone=Asia/Jakarta; ci_session=ikkhl00q5hb0lmtih2p6drde5dd37s1v\";s:14:\"Content-Length\";s:1:\"0\";}', '35d3d08c3d7b7f445ceb8e726a87b26c', '118.136.101.98', 1553490057, 0.0625389, '1', 200),
(137, 'api/service/1', 'get', 'a:12:{s:8:\"x-sm-key\";s:32:\"35d3d08c3d7b7f445ceb8e726a87b26c\";s:4:\"Host\";s:11:\"gatoko1.com\";s:10:\"Connection\";s:10:\"keep-alive\";s:13:\"Cache-Control\";s:9:\"max-age=0\";s:13:\"Authorization\";s:38:\"Basic c200cnRzMGZ0Oj96d01BeEJuUzlqag==\";s:25:\"Upgrade-Insecure-Requests\";s:1:\"1\";s:10:\"User-Agent\";s:104:\"Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/73.0.3683.75 Safari/537.36\";s:6:\"Accept\";s:118:\"text/html,application/xhtml+xml,application/xml;q=0.9,image/webp,image/apng,*/*;q=0.8,application/signed-exchange;v=b3\";s:15:\"Accept-Encoding\";s:13:\"gzip, deflate\";s:15:\"Accept-Language\";s:23:\"en-US,en;q=0.9,id;q=0.8\";s:6:\"Cookie\";s:162:\"__tawkuuid=e::gatoko1.com::OhUiMUccaj8WHrrU9umxSbLztAdgNdRTssI1QjdAzElG8peDYrIMeFEHEJGxhcsK::2; timezone=Asia/Jakarta; ci_session=ng0su29jtcb11lv1ee30qq70g9o6j7fs\";s:14:\"Content-Length\";s:1:\"0\";}', '35d3d08c3d7b7f445ceb8e726a87b26c', '118.136.101.98', 1553493660, 0.158972, '1', 200),
(138, 'api/example/users', 'get', 'a:9:{s:13:\"Cache-Control\";s:8:\"no-cache\";s:13:\"Postman-Token\";s:36:\"0a4c05b5-5bda-4ae6-b446-a56b0f58dd10\";s:13:\"Authorization\";s:38:\"Basic c200cnRzMGZ0Oj96d01BeEJuUzlqag==\";s:10:\"User-Agent\";s:20:\"PostmanRuntime/7.6.1\";s:6:\"Accept\";s:3:\"*/*\";s:4:\"Host\";s:11:\"gatoko1.com\";s:15:\"Accept-Encoding\";s:13:\"gzip, deflate\";s:10:\"Connection\";s:10:\"keep-alive\";s:14:\"Content-Length\";s:1:\"0\";}', '', '118.136.101.98', 1554794034, 0.0983059, '0', 403),
(139, 'api/example/users', 'get', 'a:11:{s:8:\"x-sm-key\";s:32:\"35d3d08c3d7b7f445ceb8e726a87b26c\";s:13:\"Cache-Control\";s:8:\"no-cache\";s:13:\"Postman-Token\";s:36:\"10838701-cb4f-4a83-a991-0e05906965ca\";s:13:\"Authorization\";s:38:\"Basic c200cnRzMGZ0Oj96d01BeEJuUzlqag==\";s:10:\"User-Agent\";s:20:\"PostmanRuntime/7.6.1\";s:6:\"Accept\";s:3:\"*/*\";s:4:\"Host\";s:11:\"gatoko1.com\";s:6:\"Cookie\";s:43:\"ci_session=p051e6s1ql0263n5n3sddmlsk9u8rqs6\";s:15:\"Accept-Encoding\";s:13:\"gzip, deflate\";s:10:\"Connection\";s:10:\"keep-alive\";s:14:\"Content-Length\";s:1:\"0\";}', '35d3d08c3d7b7f445ceb8e726a87b26c', '118.136.101.98', 1554794302, 0.0760469, '1', 0),
(140, 'api/example/users', 'get', 'a:11:{s:8:\"x-sm-key\";s:32:\"35d3d08c3d7b7f445ceb8e726a87b26c\";s:13:\"Cache-Control\";s:8:\"no-cache\";s:13:\"Postman-Token\";s:36:\"3a770d89-3c5a-426c-8a88-ab7b2ff71a96\";s:13:\"Authorization\";s:38:\"Basic c200cnRzMGZ0Oj96d01BeEJuUzlqag==\";s:10:\"User-Agent\";s:20:\"PostmanRuntime/7.6.1\";s:6:\"Accept\";s:3:\"*/*\";s:4:\"Host\";s:11:\"gatoko1.com\";s:6:\"Cookie\";s:43:\"ci_session=cb1hqv00que8cpvs70e1d5895usqu7td\";s:15:\"Accept-Encoding\";s:13:\"gzip, deflate\";s:10:\"Connection\";s:10:\"keep-alive\";s:14:\"Content-Length\";s:1:\"0\";}', '35d3d08c3d7b7f445ceb8e726a87b26c', '118.136.101.98', 1554883642, 0.0705218, '1', 0),
(141, 'api/example', 'get', 'a:11:{s:8:\"x-sm-key\";s:32:\"35d3d08c3d7b7f445ceb8e726a87b26c\";s:13:\"Cache-Control\";s:8:\"no-cache\";s:13:\"Postman-Token\";s:36:\"48c7470c-04ff-47f0-9e30-e464283234f0\";s:13:\"Authorization\";s:38:\"Basic c200cnRzMGZ0Oj96d01BeEJuUzlqag==\";s:10:\"User-Agent\";s:20:\"PostmanRuntime/7.6.1\";s:6:\"Accept\";s:3:\"*/*\";s:4:\"Host\";s:11:\"gatoko1.com\";s:6:\"Cookie\";s:43:\"ci_session=94jbc6nbivmbtahbnm04qncc3pf2585j\";s:15:\"Accept-Encoding\";s:13:\"gzip, deflate\";s:10:\"Connection\";s:10:\"keep-alive\";s:14:\"Content-Length\";s:1:\"0\";}', '35d3d08c3d7b7f445ceb8e726a87b26c', '118.136.101.98', 1554883651, 0.055877, '1', 0),
(142, 'api/example', 'get', 'a:11:{s:8:\"x-sm-key\";s:32:\"35d3d08c3d7b7f445ceb8e726a87b26c\";s:13:\"Cache-Control\";s:8:\"no-cache\";s:13:\"Postman-Token\";s:36:\"f5001237-7200-4352-b3f3-4aef64823792\";s:13:\"Authorization\";s:38:\"Basic c200cnRzMGZ0Oj96d01BeEJuUzlqag==\";s:10:\"User-Agent\";s:20:\"PostmanRuntime/7.6.1\";s:6:\"Accept\";s:3:\"*/*\";s:4:\"Host\";s:11:\"gatoko1.com\";s:6:\"Cookie\";s:43:\"ci_session=94jbc6nbivmbtahbnm04qncc3pf2585j\";s:15:\"Accept-Encoding\";s:13:\"gzip, deflate\";s:10:\"Connection\";s:10:\"keep-alive\";s:14:\"Content-Length\";s:1:\"0\";}', '35d3d08c3d7b7f445ceb8e726a87b26c', '118.136.101.98', 1554883678, 0.0204818, '1', 0),
(143, 'api/example', 'get', 'a:11:{s:8:\"x-sm-key\";s:32:\"35d3d08c3d7b7f445ceb8e726a87b26c\";s:13:\"Cache-Control\";s:8:\"no-cache\";s:13:\"Postman-Token\";s:36:\"aba6da08-f4f7-4619-99b5-04c6ee8ffc87\";s:13:\"Authorization\";s:38:\"Basic c200cnRzMGZ0Oj96d01BeEJuUzlqag==\";s:10:\"User-Agent\";s:20:\"PostmanRuntime/7.6.1\";s:6:\"Accept\";s:3:\"*/*\";s:4:\"Host\";s:11:\"gatoko1.com\";s:6:\"Cookie\";s:43:\"ci_session=94jbc6nbivmbtahbnm04qncc3pf2585j\";s:15:\"Accept-Encoding\";s:13:\"gzip, deflate\";s:10:\"Connection\";s:10:\"keep-alive\";s:14:\"Content-Length\";s:1:\"0\";}', '35d3d08c3d7b7f445ceb8e726a87b26c', '118.136.101.98', 1554883745, 0.136361, '1', 200),
(144, 'api/example', 'get', 'a:9:{s:4:\"Host\";s:11:\"gatoko1.com\";s:6:\"Accept\";s:3:\"*/*\";s:15:\"Accept-Encoding\";s:13:\"deflate, gzip\";s:13:\"Authorization\";s:38:\"Basic c200cnRzMGZ0Oj96d01BeEJuUzlqag==\";s:13:\"Cache-Control\";s:8:\"no-cache\";s:13:\"postman-token\";s:36:\"a99bba16-ad49-13bc-4f20-f6991eb24681\";s:8:\"x-sm-key\";s:32:\"35d3d08c3d7b7f445ceb8e726a87b26c\";s:14:\"Content-Length\";s:1:\"0\";s:12:\"Content-Type\";s:33:\"application/x-www-form-urlencoded\";}', '35d3d08c3d7b7f445ceb8e726a87b26c', '103.233.102.8', 1554883924, 0.0799909, '1', 200);

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
(16, 'User', 'fa fa-users', 'user', '2', '0', '', 'ENABLE', '2019-07-28 08:40:37', '2019-08-06 12:44:56'),
(17, 'Dashboard', 'fa fa-dashboard', '/', '1', '0', '', 'ENABLE', '2019-08-02 13:07:26', '2019-08-02 13:09:12'),
(24, 'Report', 'fa fa-file', '#', '7', '0', '', 'ENABLE', '2019-08-06 14:31:50', NULL),
(27, 'Barang', 'fa fa-list', '#', '1', '0', '', 'ENABLE', '2019-08-16 10:55:53', '2019-09-27 15:32:28'),
(41, 'Kategori', 'fa fa-th', 'kategori', '2', '27', '', 'ENABLE', '2019-10-11 08:23:14', '2019-10-11 08:24:16'),
(39, 'Produk', 'fa fa-product-hunt', 'produk', '0', '27', '', 'ENABLE', '2019-10-11 08:20:08', NULL),
(40, 'Stock', 'fa fa-archive', 'stock', '1', '27', '', 'ENABLE', '2019-10-11 08:21:25', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `m_kategori`
--

CREATE TABLE `m_kategori` (
  `idKategori` int(11) NOT NULL,
  `namaKategori` varchar(255) NOT NULL,
  `status` enum('ENABLE','DISABLE') NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `m_kategori`
--

INSERT INTO `m_kategori` (`idKategori`, `namaKategori`, `status`, `created_at`, `updated_at`) VALUES
(15, 'Bedak', 'ENABLE', '2019-10-15 15:20:34', '0000-00-00 00:00:00'),
(16, 'Kosmetik Wajah', 'ENABLE', '2019-10-15 15:21:43', '0000-00-00 00:00:00'),
(17, 'Blush On', 'ENABLE', '2019-10-15 15:22:22', '0000-00-00 00:00:00'),
(18, 'BB & CC Cream', 'ENABLE', '2019-10-15 15:22:44', '0000-00-00 00:00:00'),
(19, 'Primer', 'ENABLE', '2019-10-15 15:23:04', '0000-00-00 00:00:00'),
(20, 'Highlighter', 'ENABLE', '2019-10-15 15:23:23', '0000-00-00 00:00:00'),
(21, 'Contour', 'ENABLE', '2019-10-15 15:23:45', '0000-00-00 00:00:00'),
(22, 'Concealer', 'ENABLE', '2019-10-15 15:24:09', '0000-00-00 00:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `m_produk`
--

CREATE TABLE `m_produk` (
  `idProduk` int(11) NOT NULL,
  `idCreator` int(11) NOT NULL,
  `namaProduk` varchar(255) NOT NULL,
  `deskProduk` text DEFAULT NULL,
  `hargabProduk` double NOT NULL,
  `hargajProduk` double NOT NULL,
  `idKategori` int(11) NOT NULL,
  `status` enum('ENABLE','DISABLE') NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `m_produk`
--

INSERT INTO `m_produk` (`idProduk`, `idCreator`, `namaProduk`, `deskProduk`, `hargabProduk`, `hargajProduk`, `idKategori`, `status`, `created_at`, `updated_at`) VALUES
(4, 23, 'Pixy Make It Glow Dewy Cushion', 'BB cream atau liquid foundation yang disimpan dalam sponge khusus. Daya tutup yang tinggi sehingga dapat menutup kekurangan di wajah seperti noda hitam dan bekas jerawat dengan sangat baik. Mengandung Botanical Extract seperti Olive Oil, Jojoba Oil dan Yuzu extract yang membantu menutrisi kulit dari dalam, sehingga membuat wajah nampak sehat bercahaya. Mengandung SPF 23 & PA++.', 100000, 117000, 15, 'ENABLE', '2019-10-15 15:25:34', '2019-10-16 10:56:15'),
(5, 23, 'Make Over Powerstay Matte Powder Foundation', 'Bedak padat yang mengandung foundation dan SPF!\r\n\r\nMake Over Powerstay Matte Powder Foundation merupakan bedak padat yang mengandung foundation, tahan lama hingga 10 jam dengan hasil matte yang sempurna namun tidak terlihat flat dan tebal. Dilengkapi dengan Microfine Color-Rich Pigment Technology dan Fade Resistant Formula sehingga menghasilkan warna yang merata dan menyatu dengan kulit wajah, menutup kekurangan pada wajah dengan sempurna namun tetap terasa ringan.', 150000, 167000, 15, 'ENABLE', '2019-10-15 15:26:27', '2019-10-16 11:07:18'),
(6, 23, 'Wardah Everyday BB Cream', 'Wardah Everyday BB Cream memiliki kemasan tube berwarna hijau tosca yang praktis dan ringan untuk dibawa-bawa. BB cream Wardah ini dibungkus dalam box dengan tekstur doff, pada box-nya terdapat penjelasan mengenai produk, klaim, cara pengguaan, ingredients serta label Halal dan nomor BPOM', 25000, 45000, 15, 'ENABLE', '2019-10-15 15:26:55', '2019-10-16 11:08:13');

-- --------------------------------------------------------

--
-- Table structure for table `produk_stok`
--

CREATE TABLE `produk_stok` (
  `idStok` int(11) NOT NULL,
  `idCreator` int(11) NOT NULL,
  `idProduk` int(11) NOT NULL,
  `kodeBarang` varchar(255) NOT NULL,
  `statusStok` varchar(255) NOT NULL,
  `status` enum('ENABLE','DISABLE') NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `report`
--

CREATE TABLE `report` (
  `id` int(11) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `query` longtext DEFAULT NULL,
  `header` text DEFAULT NULL,
  `status` enum('ENABLE','DISABLE') DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `report`
--

INSERT INTO `report` (`id`, `name`, `query`, `header`, `status`, `created_at`, `updated_at`) VALUES
(1, 'Users', 'SELECT * FROM user', '[\"nip\",\"name\",\"email\",\"password\",\"role_id\",\"desc\",\"status\",\"created_at\",\"updated_at\"]', 'ENABLE', '2019-03-13 09:57:07', '2019-03-19 17:13:35'),
(2, 'Customer', 'SELECT customer.*,file.dir FROM customer LEFT JOIN file ON file.table_id = customer.id and file.table= \'customer\'', '[\"nama\",\"email\",\"telp\",\"alamat\",\"status\",\"dir\"]', 'ENABLE', '2019-03-25 10:47:39', '2019-07-01 09:01:19'),
(3, 'Report SPM', 'SELECT * FROM surat_pembayaran', '[\"tanggal_register\",\"nomor_register\",\"skpd\",\"tanggal_spm\",\"nomor_spm\",\"kode_rekening_program\",\"kode_rekening_belanja\",\"uraian\",\"jumlah_gu\",\"jumlah_up\",\"jumlah_tu\",\"jumlah_ls\",\"pihak_ketiga\"]', 'ENABLE', '2019-07-28 08:13:14', '2019-07-28 08:25:00'),
(4, 'Report Realisasi Tahap Fisik', 'SELECT a.*, b.*\r\nFROM realisasi_tahap_fisik a\r\nLEFT OUTER JOIN user b\r\nON a.u_id  = b.id', NULL, 'DISABLE', '2019-08-06 13:10:12', NULL),
(5, 'Report Realisasi Tahap Fisik', 'SELECT b.name, a.*\r\nFROM realisasi_tahap_fisik a\r\nLEFT OUTER JOIN user b\r\nON a.u_id  = b.id', '[\"tanggal\",\"penyuluhan\",\"Inventarisasi_dan_identifikasi_os\",\"pengukuran_dan_pemetaan\",\"sidang_ppl\",\"penetapan_obyek_dan_subyek\",\"sk_redis\",\"pembukuan_hak_dan_penerbitan_sertipikat\",\"keterangan\",\"name\"]', 'ENABLE', '2019-08-06 13:10:46', '2019-08-06 13:11:41'),
(6, 'Report Realisasi Tahap Anggaran', 'SELECT b.name, a.*\r\nFROM realisasi_tahap_anggaran a\r\nLEFT OUTER JOIN user b\r\nON a.u_id  = b.id', '[\"name\",\"tanggal\",\"penyuluhan\",\"Inventarisasi_dan_identifikasi_os\",\"pengukuran_dan_pemetaan\",\"sidang_ppl\",\"penetapan_obyek_dan_subyek\",\"sk_redis\",\"pembukuan_hak_dan_penerbitan_sertipikat\",\"keterangan\"]', 'ENABLE', '2019-08-06 13:13:22', '2019-08-07 18:21:01'),
(7, 'Tahap Fisik', 'SELECT a.id, YEAR(a.created_at) as tahun, a.target as target, b.name as kab_kota\r\n,SUM(c.penyuluhan) as penyuluhan\r\n,(100*SUM(c.penyuluhan)/a.target) as persentase_penyuluhan\r\n,SUM(c.Inventarisasi_dan_identifikasi_os) as Inventarisasi_dan_identifikasi_os\r\n,(100*SUM(c.Inventarisasi_dan_identifikasi_os)/a.target) as persentase_Inventarisasi_dan_identifikasi_os\r\n,SUM(c.pengukuran_dan_pemetaan) as pengukuran_dan_pemetaan\r\n,(100*SUM(c.pengukuran_dan_pemetaan)/a.target)as persentase_pengukuran_dan_pemetaan\r\n,SUM(c.sidang_ppl) as sidang_ppl\r\n,(100*SUM(c.sidang_ppl)/a.target) as persentase_sidang_ppl\r\n,SUM(c.penetapan_obyek_dan_subyek) as penetapan_obyek_dan_subyek\r\n,(100*SUM(c.penetapan_obyek_dan_subyek)/a.target)as persentase_penetapan_obyek_dan_subyek\r\n,SUM(c.sk_redis) as sk_redis\r\n,(100*SUM(c.sk_redis)/a.target) as persentase_sk_redis\r\n,SUM(c.pembukuan_hak_dan_penerbitan_sertipikat) as pembukuan_hak_dan_penerbitan_sertipikat\r\n,(100*SUM(c.pembukuan_hak_dan_penerbitan_sertipikat)/a.target) as persentase_pembukuan_hak_dan_penerbitan_sertipikat, \r\n\r\n\r\n\r\nCOUNT(c.id) as total_laporan\r\nFROM user x\r\ntarget_bidang a\r\nON x.id = a.u_id\r\nLEFT OUTER JOIN user b\r\nON a.u_id = b.id\r\nLEFT OUTER JOIN realisasi_tahap_fisik c\r\nON a.u_id = c.u_id\r\nWHERE b.role_id=18 AND a.status=\'ENABLE\' AND b.status = \'ENABLE\' AND c.status=\'ENABLE\'\r\nGROUP BY a.id', '[\"tahun\",\"target\",\"kab_kota\",\"penyuluhan\",\"Inventarisasi_dan_identifikasi_os\",\"pengukuran_dan_pemetaan\",\"sidang_ppl\",\"penetapan_obyek_dan_subyek\",\"sk_redis\",\"pembukuan_hak_dan_penerbitan_sertipikat\",\"total_laporan\"]', 'DISABLE', '2019-08-06 14:45:17', '2019-08-07 18:03:11'),
(8, 'Tahap Anggaran', 'SELECT \r\nx.*, \r\n\r\nCOALESCE(SUM(y.penyuluhan),\'0\') as penyuluhan\r\n,COALESCE((100*SUM(y.penyuluhan)/x.target),\'0\') as persentase_penyuluhan\r\n,COALESCE(SUM(y.Inventarisasi_dan_identifikasi_os),\'0\') as Inventarisasi_dan_identifikasi_os\r\n,COALESCE((100*SUM(y.Inventarisasi_dan_identifikasi_os)/x.target),\'0\') as persentase_Inventarisasi_dan_identifikasi_os\r\n,COALESCE(SUM(y.pengukuran_dan_pemetaan),\'0\') as pengukuran_dan_pemetaan\r\n,COALESCE((100*SUM(y.pengukuran_dan_pemetaan)/x.target),\'0\') as persentase_pengukuran_dan_pemetaan\r\n,COALESCE(SUM(y.sidang_ppl),\'0\') as sidang_ppl\r\n,COALESCE((100*SUM(y.sidang_ppl)/x.target),\'0\') as persentase_sidang_ppl\r\n,COALESCE(SUM(y.penetapan_obyek_dan_subyek),\'0\') as penetapan_obyek_dan_subyek\r\n,COALESCE((100*SUM(y.penetapan_obyek_dan_subyek)/x.target),\'0\') as persentase_penetapan_obyek_dan_subyek\r\n,COALESCE(SUM(y.sk_redis),\'0\') as sk_redis\r\n,COALESCE((100*SUM(y.sk_redis)/x.target),\'0\') as persentase_sk_redis\r\n,COALESCE(SUM(y.pembukuan_hak_dan_penerbitan_sertipikat),\'0\') as pembukuan_hak_dan_penerbitan_sertipikat\r\n,COALESCE((100*SUM(y.pembukuan_hak_dan_penerbitan_sertipikat)/x.target),\'0\') as persentase_pembukuan_hak_dan_penerbitan_sertipikat\r\n,COALESCE(COUNT(y.id),\'0\') as total_laporan\r\nFROM\r\n(\r\n    SELECT CONCAT(a.u_id,\'-\',YEAR(a.tahun)) as id2, YEAR(a.tahun) as tahun, b.name as kota_kab, a.target\r\nFROM target_bidang a\r\nLEFT OUTER JOIN user b\r\nON a.u_id = b.id\r\nORDER BY YEAR(a.tahun) ASC, b.name ASC\r\n) x\r\nLEFT OUTER JOIN\r\n(\r\n   SELECT CONCAT(c.u_id,\'-\',YEAR(c.tanggal)) as id2, c.*\r\nFROM realisasi_tahap_anggaran c\r\nWHERE  c.status=\'ENABLE\'\r\n)y\r\nON x.id2 = y.id2\r\nGROUP BY x.id2', '[\"tahun\",\"kota_kab\",\"target\",\"penyuluhan\",\"persentase_penyuluhan\",\"Inventarisasi_dan_identifikasi_os\",\"persentase_Inventarisasi_dan_identifikasi_os\",\"pengukuran_dan_pemetaan\",\"persentase_pengukuran_dan_pemetaan\",\"sidang_ppl\",\"persentase_sidang_ppl\",\"penetapan_obyek_dan_subyek\",\"persentase_penetapan_obyek_dan_subyek\",\"sk_redis\",\"persentase_sk_redis\",\"pembukuan_hak_dan_penerbitan_sertipikat\",\"persentase_pembukuan_hak_dan_penerbitan_sertipikat\",\"total_laporan\"]', 'ENABLE', '2019-08-06 14:51:20', '2019-08-09 14:33:46'),
(9, 'Tahap FIsik', 'SELECT \r\nx.*, \r\n\r\nCOALESCE(SUM(y.penyuluhan),\'0\') as penyuluhan\r\n,COALESCE((100*SUM(y.penyuluhan)/x.target),\'0\') as persentase_penyuluhan\r\n,COALESCE(SUM(y.Inventarisasi_dan_identifikasi_os),\'0\') as Inventarisasi_dan_identifikasi_os\r\n,COALESCE((100*SUM(y.Inventarisasi_dan_identifikasi_os)/x.target),\'0\') as persentase_Inventarisasi_dan_identifikasi_os\r\n,COALESCE(SUM(y.pengukuran_dan_pemetaan),\'0\') as pengukuran_dan_pemetaan\r\n,COALESCE((100*SUM(y.pengukuran_dan_pemetaan)/x.target),\'0\') as persentase_pengukuran_dan_pemetaan\r\n,COALESCE(SUM(y.sidang_ppl),\'0\') as sidang_ppl\r\n,COALESCE((100*SUM(y.sidang_ppl)/x.target),\'0\') as persentase_sidang_ppl\r\n,COALESCE(SUM(y.penetapan_obyek_dan_subyek),\'0\') as penetapan_obyek_dan_subyek\r\n,COALESCE((100*SUM(y.penetapan_obyek_dan_subyek)/x.target),\'0\') as persentase_penetapan_obyek_dan_subyek\r\n,COALESCE(SUM(y.sk_redis),\'0\') as sk_redis\r\n,COALESCE((100*SUM(y.sk_redis)/x.target),\'0\') as persentase_sk_redis\r\n,COALESCE(SUM(y.pembukuan_hak_dan_penerbitan_sertipikat),\'0\') as pembukuan_hak_dan_penerbitan_sertipikat\r\n,COALESCE((100*SUM(y.pembukuan_hak_dan_penerbitan_sertipikat)/x.target),\'0\') as persentase_pembukuan_hak_dan_penerbitan_sertipikat\r\n,COALESCE(COUNT(y.id),\'0\') as total_laporan\r\nFROM\r\n(\r\n    SELECT CONCAT(a.u_id,\'-\',YEAR(a.tahun)) as id2, YEAR(a.tahun) as tahun, b.name as kota_kab, a.target\r\nFROM target_bidang a\r\nLEFT OUTER JOIN user b\r\nON a.u_id = b.id\r\nORDER BY YEAR(a.tahun) ASC, b.name ASC\r\n) x\r\nLEFT OUTER JOIN\r\n(\r\n   SELECT CONCAT(c.u_id,\'-\',YEAR(c.tanggal)) as id2, c.*\r\nFROM realisasi_tahap_fisik c\r\nWHERE  c.status=\'ENABLE\'\r\n)y\r\nON x.id2 = y.id2\r\nGROUP BY x.id2', '[\"tahun\",\"kota_kab\",\"target\",\"penyuluhan\",\"persentase_penyuluhan\",\"Inventarisasi_dan_identifikasi_os\",\"persentase_Inventarisasi_dan_identifikasi_os\",\"pengukuran_dan_pemetaan\",\"persentase_pengukuran_dan_pemetaan\",\"sidang_ppl\",\"persentase_sidang_ppl\",\"penetapan_obyek_dan_subyek\",\"persentase_penetapan_obyek_dan_subyek\",\"sk_redis\",\"persentase_sk_redis\",\"pembukuan_hak_dan_penerbitan_sertipikat\",\"persentase_pembukuan_hak_dan_penerbitan_sertipikat\",\"total_laporan\"]', 'ENABLE', '2019-08-09 14:34:28', '2019-08-09 14:34:58'),
(10, 'Report Transaksi', 'SELECT date(transaksi.created_at) as tanggal, COUNT(transaksi.idTransaksi) as jumlah, SUM(transaksi.jumlahTransaksi) as qty, SUM(transaksi.totalTransaksi) as totaljual, SUM(transaksi.totalBeliProduk) as totalbeli FROM transaksi WHERE transaksi.idCreator = \'19\' AND date(transaksi.created_at) BETWEEN \'2019-08-18\' AND \'2019-08-18\' GROUP BY date(transaksi.created_at)', '[\"tanggal\",\"jumlah\",\"qty\",\"totaljual\",\"totalbeli\"]', 'ENABLE', '2019-08-19 11:51:23', '2019-08-19 11:51:41'),
(11, 'Report Transaksi Admin', 'SELECT date(transaksi.created_at) as tanggal, COUNT(transaksi.idTransaksi) as jumlah, SUM(transaksi.jumlahTransaksi) as qty, SUM(transaksi.totalTransaksi) as totaljual, SUM(transaksi.totalBeliProduk) as totalbeli FROM transaksi WHERE transaksi.idCreator = \'19\' AND date(transaksi.created_at) BETWEEN \'2019-08-18\' AND \'2019-08-18\' GROUP BY date(transaksi.created_at)', '[\"tanggal\",\"jumlah\",\"qty\",\"totaljual\",\"totalbeli\"]', 'ENABLE', '2019-08-19 12:31:00', '2019-08-19 12:31:46'),
(12, 'Laporan Terapis', 'SELECT *\r\nFROM\r\n(SELECT id_terapis, nama_terapis \r\nFROM terapis) a\r\n\r\nLEFT JOIN \r\n\r\n(SELECT id_terapis, count(rekam_kunjungan.id_kunjungan) as jumlah, created_at\r\nFROM rekam_kunjungan\r\n WHERE date(rekam_kunjungan.created_at) BETWEEN \'2019-10-02\' AND \'2019-10-02\' \r\n GROUP BY date(rekam_kunjungan.created_at)) b\r\n\r\nON a.id_terapis = b.id_terapis', NULL, 'DISABLE', '2019-10-02 10:21:22', NULL),
(13, 'Laporan Terapis', 'SELECT *\r\nFROM\r\n(SELECT terapis.id_terapis, nama_terapis \r\nFROM terapis) a\r\n\r\nLEFT JOIN \r\n\r\n(SELECT rekam_kunjungan.id_terapis, count(rekam_kunjungan.id_kunjungan) as jumlah, created_at\r\nFROM rekam_kunjungan\r\n WHERE date(rekam_kunjungan.created_at) BETWEEN \'2019-10-02\' AND \'2019-10-02\' \r\n GROUP BY date(rekam_kunjungan.created_at)) b\r\n\r\nON a.id_terapis = b.id_terapis', NULL, 'DISABLE', '2019-10-02 10:22:41', NULL),
(14, 'Laporan Terapis', 'SELECT nama_terapis, COALESCE(jumlah, created_at, 0) as jumlah\r\nFROM\r\n(SELECT id_terapis, nama_terapis \r\nFROM terapis) a\r\n\r\nLEFT JOIN \r\n\r\n(SELECT id_terapis, count(rekam_kunjungan.id_kunjungan) as jumlah, created_at\r\nFROM rekam_kunjungan\r\n WHERE date(rekam_kunjungan.created_at) BETWEEN \'2019-10-02\' AND \'2019-10-02\' \r\n GROUP BY date(rekam_kunjungan.created_at)) b\r\n\r\nON a.id_terapis = b.id_terapis', '[\"nama_terapis\",\"jumlah\"]', 'ENABLE', '2019-10-02 10:23:39', '2019-10-02 10:25:26');

-- --------------------------------------------------------

--
-- Table structure for table `role`
--

CREATE TABLE `role` (
  `id` int(11) NOT NULL,
  `role` varchar(255) DEFAULT NULL,
  `status` enum('DISABLE','ENABLE') DEFAULT NULL,
  `menu` text DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `role`
--

INSERT INTO `role` (`id`, `role`, `status`, `menu`, `created_at`, `updated_at`) VALUES
(17, 'Super Admin', 'ENABLE', '[\"17\",\"27\",\"41\",\"39\",\"40\",\"16\",\"24\"]', '2018-10-12 17:03:59', '2019-10-15 11:49:32');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_user`
--

CREATE TABLE `tbl_user` (
  `id` int(11) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `password` varchar(225) DEFAULT NULL,
  `phone` varchar(225) DEFAULT NULL,
  `status` enum('ENABLE','DISABLE') NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_user`
--

INSERT INTO `tbl_user` (`id`, `name`, `email`, `password`, `phone`, `status`, `created_at`, `updated_at`) VALUES
(2, 'Bagus Andika', 'procw57@gmail.com', 'b3c9323ca84c0f3e6ea210cd31c9ea7a', '(081) 232-3723', 'ENABLE', '2019-10-16 09:31:42', '2019-10-16 10:24:57');

-- --------------------------------------------------------

--
-- Table structure for table `transaksi`
--

CREATE TABLE `transaksi` (
  `idTransaksi` int(11) NOT NULL,
  `idCreator` int(11) NOT NULL,
  `kodeTransaksi` varchar(255) NOT NULL,
  `totalTransaksi` double NOT NULL,
  `totalBeliProduk` double NOT NULL,
  `jumlahBarang` double NOT NULL,
  `alamatKirim` text NOT NULL,
  `id_provinsi` int(11) NOT NULL,
  `id_kota` int(11) NOT NULL,
  `nama_pengirim` varchar(255) NOT NULL,
  `statusTransaksi` varchar(255) NOT NULL,
  `status` enum('ENABLE','DISABLE') NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `transaksi_produk`
--

CREATE TABLE `transaksi_produk` (
  `id` int(11) NOT NULL,
  `kodeKeranjang` varchar(255) NOT NULL,
  `idCreator` int(11) NOT NULL,
  `idProduk` int(11) NOT NULL,
  `idCustomer` int(11) NOT NULL,
  `hargabProduk` double NOT NULL,
  `hargajProduk` double NOT NULL,
  `statusTransaksi` varchar(255) NOT NULL,
  `status` enum('ENABLE','DISABLE') NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

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
  `id_cabang` int(11) NOT NULL,
  `status` varchar(255) DEFAULT '0',
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`id`, `nip`, `name`, `email`, `password`, `role_id`, `desc`, `id_cabang`, `status`, `created_at`, `updated_at`) VALUES
(23, 'admin', 'admin', 'admin@gmail.com', '21232f297a57a5a743894a0e4a801fc3', 17, 'admin', 1, 'ENABLE', '2019-10-15 00:00:00', '2019-10-15 11:48:28');

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
-- Indexes for table `m_kategori`
--
ALTER TABLE `m_kategori`
  ADD PRIMARY KEY (`idKategori`);

--
-- Indexes for table `m_produk`
--
ALTER TABLE `m_produk`
  ADD PRIMARY KEY (`idProduk`);

--
-- Indexes for table `produk_stok`
--
ALTER TABLE `produk_stok`
  ADD PRIMARY KEY (`idStok`);

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
-- Indexes for table `tbl_user`
--
ALTER TABLE `tbl_user`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `transaksi`
--
ALTER TABLE `transaksi`
  ADD PRIMARY KEY (`idTransaksi`);

--
-- Indexes for table `transaksi_produk`
--
ALTER TABLE `transaksi_produk`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
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
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=268;

--
-- AUTO_INCREMENT for table `file`
--
ALTER TABLE `file`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=38;

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
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=145;

--
-- AUTO_INCREMENT for table `menu_master`
--
ALTER TABLE `menu_master`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=42;

--
-- AUTO_INCREMENT for table `m_kategori`
--
ALTER TABLE `m_kategori`
  MODIFY `idKategori` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT for table `m_produk`
--
ALTER TABLE `m_produk`
  MODIFY `idProduk` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `produk_stok`
--
ALTER TABLE `produk_stok`
  MODIFY `idStok` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `report`
--
ALTER TABLE `report`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `role`
--
ALTER TABLE `role`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT for table `tbl_user`
--
ALTER TABLE `tbl_user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `transaksi`
--
ALTER TABLE `transaksi`
  MODIFY `idTransaksi` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `transaksi_produk`
--
ALTER TABLE `transaksi_produk`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
