-- phpMyAdmin SQL Dump
-- version 4.4.15.10
-- https://www.phpmyadmin.net
--
-- Servidor: localhost
-- Tiempo de generación: 16-05-2022 a las 20:45:48
-- Versión del servidor: 5.5.68-MariaDB
-- Versión de PHP: 5.4.16

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `users`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `chat`
--

CREATE TABLE IF NOT EXISTS `chat` (
  `id` int(8) NOT NULL,
  `id_client` int(11) NOT NULL,
  `id_proj` int(11) NOT NULL,
  `sms` varchar(255) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `chat`
--

INSERT INTO `chat` (`id`, `id_client`, `id_proj`, `sms`) VALUES
(1, 1, 3, 'hi'),
(2, 19, 1, 'HI');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `client`
--

CREATE TABLE IF NOT EXISTS `client` (
  `cli_id` int(8) NOT NULL,
  `cli_name` varchar(255) NOT NULL,
  `cli_email` varchar(255) NOT NULL,
  `cli_emailBilling` varchar(255) NOT NULL,
  `cli_phone` varchar(45) NOT NULL,
  `cli_dateRegistered` datetime NOT NULL,
  `cli_active` tinyint(1) NOT NULL,
  `Company_com_id` varchar(8) NOT NULL,
  `role` varchar(255) NOT NULL,
  `type` varchar(255) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=38 DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `client`
--

INSERT INTO `client` (`cli_id`, `cli_name`, `cli_email`, `cli_emailBilling`, `cli_phone`, `cli_dateRegistered`, `cli_active`, `Company_com_id`, `role`, `type`) VALUES
(1, 'admin', 'admin@gmail.com', 'admin@gmail.com', '1-80090890', '2022-02-04 20:52:37', 1, '19', 'admin', 'superadmin'),
(2, 'Wisebuilders', '', '', '', '2022-02-14 00:00:00', 1, '2', 'admin', 'external service'),
(3, 'Vrealism', 'vrealism@gmail.com', 'vrealism@gmail.com', '1-80090890''', '2022-02-12 00:00:00', 1, '19', 'admin', 'superadmin'),
(4, 'Diego', '', '', '', '2022-02-14 00:00:00', 1, '2', 'architec', 'admin'),
(5, 'Amit', '', '', '', '2022-02-14 00:00:00', 1, '2', 'architec', ''),
(6, 'Karen', '', '', '', '2022-02-14 00:00:00', 1, '14', 'architec', ''),
(7, 'Liane', '', '', '', '2022-02-14 00:00:00', 1, '6', 'surveyor 	', ''),
(8, 'Sunny', '', '', '', '2022-02-14 00:00:00', 1, '12', 'surveyor 	', ''),
(9, 'tester', '', '', '', '2022-03-18 00:00:00', 1, '17', 'guest', 'guest'),
(10, 'Gmbc', '', '', '', '2022-02-14 00:00:00', 1, '1', 'architec', ''),
(11, 'guest', '', '', '', '2022-03-04 00:00:00', 1, '17', 'guest', 'guest'),
(12, 'clientsteven', 'stevengmail.com', '', '', '2022-03-17 00:00:00', 1, '17', 'client', 'client'),
(13, 'Miguel', '', '', '', '2022-03-28 00:00:00', 1, '19', 'architec', 'architec'),
(14, 'Ruben', '', '', '', '2022-03-28 00:00:00', 1, '19', 'surveyor', 'surveyor'),
(15, 'Catalina', '', '', '', '2022-03-28 00:00:00', 1, '19', 'surveyor', 'surveyor'),
(16, 'Laura', '', '', '', '2022-03-28 00:00:00', 1, '19', 'architec', 'architec'),
(17, 'Juan', '', '', '', '2022-03-28 00:00:00', 1, '19', 'architec', 'architec'),
(18, 'Edwin', '', '', '', '2022-03-28 00:00:00', 1, '19', 'surveyor', 'surveyor'),
(19, 'Developer', 'developer@vrealism.com', 'developer@vrealism.com', '', '2022-04-01 00:00:00', 1, '19', 'admin', 'superadmin'),
(20, 'Alejandro Vargas', '', '', '', '2022-04-01 00:00:00', 1, '19', 'admin', 'superadmin'),
(21, 'Alejandro Carvajall', 'info.soporteasterisk@gmail.com', '', '', '2022-04-02 00:00:00', 1, '19', 'admin', 'superadmin'),
(22, 'eperez', 'eperez@vrealism.com', 'eperez@vrealism.com', '', '2022-04-15 00:00:00', 1, '19', 'admin', 'superadmin'),
(23, 'Sueling', '', '', '', '2022-05-15 00:00:00', 1, '13', 'architec', ''),
(25, 'Diego Valencia', '', '', '', '2022-05-15 00:00:00', 1, '3', 'architec', ''),
(26, 'Bay Remodeling', '', '', '', '2022-05-15 00:00:00', 1, '4', 'architec', ''),
(27, 'InnovoBuilders', '', '', '', '2022-05-15 00:00:00', 1, '5', 'architec', ''),
(28, 'Liane Carter Interiors', '', '', '', '2022-05-15 00:00:00', 1, '6', 'architec', ''),
(29, 'Nuvision Construction', '', '', '', '2022-05-15 00:00:00', 1, '7', 'architec', ''),
(30, 'Oasis Home Design', '', '', '', '2022-05-15 00:00:00', 1, '8', 'architec', ''),
(31, 'Oro Coast Builders', '', '', '', '2022-05-15 00:00:00', 1, '9', 'architec', ''),
(32, 'Velvet Home Staging', '', '', '', '2022-05-15 00:00:00', 1, '10', 'architec', ''),
(33, 'Tiffany', '', '', '', '2022-05-15 00:00:00', 1, '11', 'architec', ''),
(34, 'Sunny', '', '', '', '2022-05-15 00:00:00', 1, '12', 'architec', ''),
(35, 'Mr. & Mrs', '', '', '', '2022-05-15 00:00:00', 1, '15', 'architec', ''),
(36, 'Deco Builders', '', '', '', '2022-05-15 00:00:00', 1, '16', 'architec', ''),
(37, 'Architec or Home Designer', '', '', '', '2022-05-15 00:00:00', 1, '18', 'architec', '');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `company`
--

CREATE TABLE IF NOT EXISTS `company` (
  `com_id` int(11) NOT NULL,
  `com_name` varchar(255) NOT NULL,
  `com_email` varchar(255) NOT NULL,
  `com_address` varchar(255) NOT NULL,
  `com_dateCreated` datetime NOT NULL,
  `com_active` tinyint(1) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=20 DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `company`
--

INSERT INTO `company` (`com_id`, `com_name`, `com_email`, `com_address`, `com_dateCreated`, `com_active`) VALUES
(1, 'GMBC', 'GMBC@GMAIL.COM', '109 Jackson St, Hayward, CA 94544, United States', '2022-02-14 00:00:00', 1),
(2, 'WiseBuilders', 'wisebuildersremodeling@gmail.com', 'San Jose, CA', '2022-02-14 00:00:00', 1),
(3, 'Diego Valencia', '', '', '2022-02-14 00:00:00', 1),
(4, 'Bay Remodeling', '', '', '2022-02-14 00:00:00', 1),
(5, 'InnovoBuilders', '', '', '2022-02-14 00:00:00', 1),
(6, 'Liane Carter Interiors', '', '', '2022-02-14 00:00:00', 1),
(7, 'Nuvision Construction', '', '', '2022-02-14 00:00:00', 1),
(8, 'Oasis Home Design\r\n', '', '', '2022-02-14 00:00:00', 1),
(9, 'Oro Coast Builders', '', '', '2022-02-14 00:00:00', 1),
(10, 'Velvet Home Staging', '', '', '2022-02-14 00:00:00', 1),
(11, 'Tiffany', '', '', '2022-02-14 00:00:00', 1),
(12, 'Sunny', '', '', '2022-02-14 00:00:00', 1),
(13, 'Sueling', '', '', '2022-02-14 00:00:00', 1),
(14, 'Karen', '', '', '2022-02-14 00:00:00', 1),
(15, 'Mr. & Mrs', '', '', '2022-02-14 00:00:00', 1),
(16, 'Deco Builders', '', '', '2022-02-14 00:00:00', 1),
(17, 'Independent\r\n', '', '', '2022-02-26 00:00:00', 1),
(18, 'Architec or Home Designer', '', '', '2022-02-26 00:00:00', 1),
(19, 'Vrealism', '', '', '2022-03-04 00:00:00', 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `company_client`
--

CREATE TABLE IF NOT EXISTS `company_client` (
  `comp_client_cli_id` varchar(8) NOT NULL,
  `comp_client_comp_id` varchar(8) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `invoice`
--

CREATE TABLE IF NOT EXISTS `invoice` (
  `id` int(11) NOT NULL,
  `id_project` int(11) NOT NULL,
  `id_client` int(11) NOT NULL,
  `num_invoice` int(11) NOT NULL,
  `linkapp` varchar(255) NOT NULL,
  `inv_status` varchar(128) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `invoice`
--

INSERT INTO `invoice` (`id`, `id_project`, `id_client`, `num_invoice`, `linkapp`, `inv_status`) VALUES
(4, 1, 10, 2147483647, 'https://link.waveapps.com/aad57f-zrbgsu', 'Paid'),
(5, 1, 10, 12434343, 'https://link.waveapps.com/aad57f-zrbgsu', 'Paid'),
(6, 3, 10, 234, 'https://link.waveapps.com/aad57f-zrbgsu', 'Pending'),
(7, 2, 4, 1212134445, 'www.paypal.com', 'Pending'),
(8, 2, 4, 121213448, 'wwwww', 'Posted'),
(9, 2, 4, 1212134443, 'hh', 'Returned'),
(10, 1, 10, 2147483647, 'https://link.waveapps.com/aad57f-zrbgsu', 'Pending'),
(11, 1, 10, 2147483647, 'https://link.waveapps.com/aad57f-zrbgsu', 'Returned'),
(12, 1, 10, 2147483647, 'https://link.waveapps.com/aad57f-zrbgsu', 'Generated'),
(13, 1, 10, 2147483647, 'https://link.waveapps.com/aad57f-zrbgsu', 'Paid');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `project`
--

CREATE TABLE IF NOT EXISTS `project` (
  `proj_id` int(8) NOT NULL,
  `proj_address` varchar(255) NOT NULL,
  `home_owner_name` varchar(255) NOT NULL,
  `home_owner_phone` varchar(255) NOT NULL,
  `home_owner_email` varchar(255) NOT NULL,
  `proj_houseOwnerName` int(255) NOT NULL,
  `proj_description` longtext NOT NULL,
  `proj_status` varchar(50) NOT NULL,
  `proj_code` varchar(255) NOT NULL,
  `proj_filesNomenclature` varchar(255) NOT NULL,
  `proj_dateCreated` datetime NOT NULL,
  `proj_dateAssigned` datetime NOT NULL,
  `proj_dateDelivered` datetime NOT NULL,
  `client_cli_id` varchar(8) NOT NULL,
  `squarefeet` text NOT NULL,
  `surveyor` varchar(255) NOT NULL,
  `architec` varchar(255) NOT NULL,
  `sethour` time NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `project`
--

INSERT INTO `project` (`proj_id`, `proj_address`, `home_owner_name`, `home_owner_phone`, `home_owner_email`, `proj_houseOwnerName`, `proj_description`, `proj_status`, `proj_code`, `proj_filesNomenclature`, `proj_dateCreated`, `proj_dateAssigned`, `proj_dateDelivered`, `client_cli_id`, `squarefeet`, `surveyor`, `architec`, `sethour`) VALUES
(12, '735 Anacapa Street Santa Barbara, California, 93101', 'alex saab', '1-6879879', 'saab@gmail.com', 1, 'floor', 'Created', '1234', '10', '2022-05-14 00:18:35', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '10', '2,898', 'Ruben', 'Juan', '00:00:00'),
(13, '878 Aileen St, Oakland, CA 94608, USA United States', 'Alexis White', '1-893033444', 'white@gmail.com', 13, 'floor plan ', 'Created', '1234', '23', '2022-05-15 15:48:54', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '23', '2,890', '', '', '00:00:00');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `project_files`
--

CREATE TABLE IF NOT EXISTS `project_files` (
  `projfile_id` int(8) NOT NULL,
  `projfile_linkType` varchar(255) NOT NULL,
  `projfile_link` varchar(255) NOT NULL,
  `projfile_description` varchar(25) NOT NULL,
  `project_proj_id` int(8) NOT NULL,
  `project_client_cli_id` int(11) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `project_files`
--

INSERT INTO `project_files` (`projfile_id`, `projfile_linkType`, `projfile_link`, `projfile_description`, `project_proj_id`, `project_client_cli_id`) VALUES
(3, 'polycam', 'https://poly.cam/capture/CBC2A901-CD55-47AC-8F24-3501F8F39709', 'tour', 1, 10),
(4, 'cad', 'https://my.matterport.com/show/?m=RAB2M2Eg1c8', 'tour', 1, 10),
(6, 'googledrive', 'https://drive.google.com/drive/folders/16CblEpc60qx4LNFWcC_jY8NRNXE8R_JQ?usp=sharing', 'tour', 1, 10),
(7, 'googledrive', 'https://drive.google.com/drive/folders/1gJ-P0KI_52CawmKMv_7zFwzui0M9hYg-?usp=sharing', 'tour', 1, 10),
(8, 'cad', 'https://drive.google.com/drive/folders/1gJ-P0KI_52CawmKMv_7zFwzui0M9hYg-?usp=sharing', 'tour', 1, 10),
(12, 'siteplan', 'https://drive.google.com/file/d/1bHUz5KKfz0m_mstlqQTZQU9ALEiPKmL4/view', 'tour', 1, 10),
(13, 'roofplan', 'https://drive.google.com/file/d/1bHUz5KKfz0m_mstlqQTZQU9ALEiPKmL4/view', 'tour', 1, 10),
(15, 'elevation', 'https://drive.google.com/file/d/1bHUz5KKfz0m_mstlqQTZQU9ALEiPKmL4/view', 'tour', 1, 10),
(17, 'elevation', 'https://drive.google.com/uc?export=download&id=1bHUz5KKfz0m_mstlqQTZQU9ALEiPKmL4', 'tour', 2, 4),
(18, 'floorplan', 'https://drive.google.com/uc?export=download&id=1vxo-yh6fDwRn9QVtq0jaeVmFCc8vRt30', 'tour', 1, 10),
(20, 'floorplan', 'https://drive.google.com/uc?export=download&id=1j4w1MoctTO6S5EQQCiYbzIiLzidtse39', 'tour', 1, 10);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `project_services`
--

CREATE TABLE IF NOT EXISTS `project_services` (
  `projserv_description` longtext NOT NULL,
  `project_proj_id` int(8) NOT NULL,
  `project_client_cli_id` int(11) NOT NULL,
  `services_serv_id` int(8) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `project_services`
--

INSERT INTO `project_services` (`projserv_description`, `project_proj_id`, `project_client_cli_id`, `services_serv_id`) VALUES
('Roof Plan(Drone)', 2, 0, 4),
('Site Plan', 1, 10, 2),
('Elevation', 1, 10, 3),
('Floor Plan', 2, 4, 1),
('Elevation', 2, 4, 3),
('Drone Photography', 2, 4, 6),
('Floor Plan', 3, 10, 1),
('Elevation', 3, 10, 3),
('Drone Photography', 3, 10, 6),
('Floor Plan', 1, 10, 1),
('Floor Plan', 4, 4, 1),
('Roof Plan(Drone)', 4, 4, 4),
('Drone Photography', 4, 4, 6),
('Floor Plan', 8, 4, 1),
('Roof Plan(Drone)', 8, 4, 4),
('Drone Photography', 8, 4, 6),
('Floor Plan', 9, 10, 1),
('Elevation', 9, 10, 3),
('Drone Photography', 9, 10, 6),
('Floor Plan', 10, 4, 1),
('Elevation', 10, 4, 3),
('Drone Photography', 10, 4, 6),
('Floor Plan', 11, 0, 1),
('Site Plan', 11, 0, 2),
('Elevation', 11, 0, 3),
('Roof Plan(Drone)', 11, 0, 4),
('Floor Plan', 12, 10, 1),
('Elevation', 12, 10, 3),
('Drone Photography', 12, 10, 6),
('Floor Plan', 13, 23, 1),
('Roof Plan(Drone)', 13, 23, 4),
('Drone Photography', 13, 23, 6);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `services`
--

CREATE TABLE IF NOT EXISTS `services` (
  `serv_id` int(8) NOT NULL,
  `serv_name` varchar(45) NOT NULL,
  `serv_price` varchar(45) NOT NULL,
  `serv_description` longtext NOT NULL,
  `serv_active` tinyint(1) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `services`
--

INSERT INTO `services` (`serv_id`, `serv_name`, `serv_price`, `serv_description`, `serv_active`) VALUES
(1, 'Floor plan', '300', '2D blueprints and 3D (interior) images ', 1),
(2, 'Site plan', '500', 'Drawing , landscape architects, urban planners, and engineers which shows existing and proposed conditions for a given area.', 1),
(3, 'Elevation', '600', 'Elevation drawing is a first angle projection that shows all parts of the building as seen from a particular direction with the perspective flattened.', 1),
(4, 'Roof plan', '700', 'Allowing users to pre-program an automated flight path for their drone, and then turning the images captured from the flight into a high-resolution 2D map and 3D model', 1),
(5, 'Drone video', '500', 'Capture of still images and video by a remotely-operated or autonomous unmanned aerial vehicle (UAV),', 1),
(6, 'Drone photography', '500', 'Capture of still images and video by a remotely-operated or autonomous unmanned aerial vehicle (UAV)', 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `user`
--

CREATE TABLE IF NOT EXISTS `user` (
  `id` int(11) NOT NULL,
  `username` varchar(45) NOT NULL,
  `password` varchar(255) NOT NULL,
  `user_client_id` int(11) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `user`
--

INSERT INTO `user` (`id`, `username`, `password`, `user_client_id`) VALUES
(1, 'admin', 'moises', 1),
(2, 'random', 'moises', 2),
(4, 'liane', 'moises', 6),
(5, 'diego', 'moises', 2),
(6, 'amit', 'moises', 2),
(7, 'catalina', 'moises', 4),
(8, 'vrealism', 'moises', 3),
(9, 'gmbc', 'moises', 10),
(10, 'clientsteven', 'moises', 12),
(11, 'developer@vrealism.com', 'moises', 19),
(12, 'alejandrovargascarvajal@gmail.com', 'moises', 20),
(13, 'info.soporteasterisk@gmail.com', 'moises', 21),
(14, 'eperez@vrealism.com', 'moises', 22),
(15, 'sueling', 'moises', 23);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `vnotes`
--

CREATE TABLE IF NOT EXISTS `vnotes` (
  `id` int(8) NOT NULL,
  `id_client` int(11) NOT NULL,
  `id_proj` int(11) NOT NULL,
  `sms` varchar(255) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `vnotes`
--

INSERT INTO `vnotes` (`id`, `id_client`, `id_proj`, `sms`) VALUES
(1, 1, 2, 'hi'),
(2, 1, 1, 'hi'),
(3, 1, 1, 'hello'),
(4, 22, 11, 'Crear solo la elevacion derecha');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `chat`
--
ALTER TABLE `chat`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `client`
--
ALTER TABLE `client`
  ADD PRIMARY KEY (`cli_id`);

--
-- Indices de la tabla `company`
--
ALTER TABLE `company`
  ADD PRIMARY KEY (`com_id`);

--
-- Indices de la tabla `invoice`
--
ALTER TABLE `invoice`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `project`
--
ALTER TABLE `project`
  ADD PRIMARY KEY (`proj_id`);

--
-- Indices de la tabla `project_files`
--
ALTER TABLE `project_files`
  ADD PRIMARY KEY (`projfile_id`);

--
-- Indices de la tabla `services`
--
ALTER TABLE `services`
  ADD PRIMARY KEY (`serv_id`);

--
-- Indices de la tabla `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `vnotes`
--
ALTER TABLE `vnotes`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `chat`
--
ALTER TABLE `chat`
  MODIFY `id` int(8) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT de la tabla `client`
--
ALTER TABLE `client`
  MODIFY `cli_id` int(8) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=38;
--
-- AUTO_INCREMENT de la tabla `company`
--
ALTER TABLE `company`
  MODIFY `com_id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=20;
--
-- AUTO_INCREMENT de la tabla `invoice`
--
ALTER TABLE `invoice`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=14;
--
-- AUTO_INCREMENT de la tabla `project`
--
ALTER TABLE `project`
  MODIFY `proj_id` int(8) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=14;
--
-- AUTO_INCREMENT de la tabla `project_files`
--
ALTER TABLE `project_files`
  MODIFY `projfile_id` int(8) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=21;
--
-- AUTO_INCREMENT de la tabla `services`
--
ALTER TABLE `services`
  MODIFY `serv_id` int(8) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=7;
--
-- AUTO_INCREMENT de la tabla `user`
--
ALTER TABLE `user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=16;
--
-- AUTO_INCREMENT de la tabla `vnotes`
--
ALTER TABLE `vnotes`
  MODIFY `id` int(8) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=5;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
