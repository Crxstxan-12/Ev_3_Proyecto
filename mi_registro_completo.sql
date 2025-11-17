-- phpMyAdmin SQL Dump
-- version 4.9.1
-- https://www.phpmyadmin.net/
--
-- Servidor: localhost
-- Tiempo de generación: 17-11-2025 a las 17:51:48
-- Versión del servidor: 8.0.17
-- Versión de PHP: 7.3.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `mi_registro_completo`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `alumnos_alumno`
--

CREATE TABLE `alumnos_alumno` (
  `id` bigint(20) NOT NULL,
  `rut` varchar(12) NOT NULL,
  `nombre` varchar(120) NOT NULL,
  `email` varchar(254) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Volcado de datos para la tabla `alumnos_alumno`
--

INSERT INTO `alumnos_alumno` (`id`, `rut`, `nombre`, `email`) VALUES
(1, '16258477-4', 'Sofia Gonzales', 'sofia@ejemplo.cl'),
(2, '21431972-1', 'cristian', 'cristian@ejemplo.cl');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `auth_group`
--

CREATE TABLE `auth_group` (
  `id` int(11) NOT NULL,
  `name` varchar(150) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Volcado de datos para la tabla `auth_group`
--

INSERT INTO `auth_group` (`id`, `name`) VALUES
(1, 'administrador'),
(2, 'editor'),
(3, 'usuario');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `auth_group_permissions`
--

CREATE TABLE `auth_group_permissions` (
  `id` bigint(20) NOT NULL,
  `group_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Volcado de datos para la tabla `auth_group_permissions`
--

INSERT INTO `auth_group_permissions` (`id`, `group_id`, `permission_id`) VALUES
(6, 1, 25),
(7, 1, 26),
(8, 1, 27),
(9, 1, 28),
(10, 1, 29),
(11, 1, 30),
(12, 1, 31),
(1, 1, 32),
(2, 1, 33),
(3, 1, 34),
(4, 1, 35),
(5, 1, 36),
(17, 2, 25),
(18, 2, 26),
(19, 2, 28),
(20, 2, 29),
(21, 2, 30),
(13, 2, 32),
(14, 2, 33),
(15, 2, 34),
(16, 2, 36),
(23, 3, 28),
(22, 3, 32),
(24, 3, 36);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `auth_permission`
--

CREATE TABLE `auth_permission` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `content_type_id` int(11) NOT NULL,
  `codename` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Volcado de datos para la tabla `auth_permission`
--

INSERT INTO `auth_permission` (`id`, `name`, `content_type_id`, `codename`) VALUES
(1, 'Can add log entry', 1, 'add_logentry'),
(2, 'Can change log entry', 1, 'change_logentry'),
(3, 'Can delete log entry', 1, 'delete_logentry'),
(4, 'Can view log entry', 1, 'view_logentry'),
(5, 'Can add permission', 2, 'add_permission'),
(6, 'Can change permission', 2, 'change_permission'),
(7, 'Can delete permission', 2, 'delete_permission'),
(8, 'Can view permission', 2, 'view_permission'),
(9, 'Can add group', 3, 'add_group'),
(10, 'Can change group', 3, 'change_group'),
(11, 'Can delete group', 3, 'delete_group'),
(12, 'Can view group', 3, 'view_group'),
(13, 'Can add user', 4, 'add_user'),
(14, 'Can change user', 4, 'change_user'),
(15, 'Can delete user', 4, 'delete_user'),
(16, 'Can view user', 4, 'view_user'),
(17, 'Can add content type', 5, 'add_contenttype'),
(18, 'Can change content type', 5, 'change_contenttype'),
(19, 'Can delete content type', 5, 'delete_contenttype'),
(20, 'Can view content type', 5, 'view_contenttype'),
(21, 'Can add session', 6, 'add_session'),
(22, 'Can change session', 6, 'change_session'),
(23, 'Can delete session', 6, 'delete_session'),
(24, 'Can view session', 6, 'view_session'),
(25, 'Can add alumno', 7, 'add_alumno'),
(26, 'Can change alumno', 7, 'change_alumno'),
(27, 'Can delete alumno', 7, 'delete_alumno'),
(28, 'Can view alumno', 7, 'view_alumno'),
(29, 'Can add curso', 8, 'add_curso'),
(30, 'Can change curso', 8, 'change_curso'),
(31, 'Can delete curso', 8, 'delete_curso'),
(32, 'Can view curso', 8, 'view_curso'),
(33, 'Can add inscripcion', 9, 'add_inscripcion'),
(34, 'Can change inscripcion', 9, 'change_inscripcion'),
(35, 'Can delete inscripcion', 9, 'delete_inscripcion'),
(36, 'Can view inscripcion', 9, 'view_inscripcion');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `auth_user`
--

CREATE TABLE `auth_user` (
  `id` int(11) NOT NULL,
  `password` varchar(128) NOT NULL,
  `last_login` datetime(6) DEFAULT NULL,
  `is_superuser` tinyint(1) NOT NULL,
  `username` varchar(150) NOT NULL,
  `first_name` varchar(150) NOT NULL,
  `last_name` varchar(150) NOT NULL,
  `email` varchar(254) NOT NULL,
  `is_staff` tinyint(1) NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  `date_joined` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Volcado de datos para la tabla `auth_user`
--

INSERT INTO `auth_user` (`id`, `password`, `last_login`, `is_superuser`, `username`, `first_name`, `last_name`, `email`, `is_staff`, `is_active`, `date_joined`) VALUES
(1, 'pbkdf2_sha256$1000000$XrRnuAHBWDeyvmXYIYg1C0$tH8SuXWRaFrwFBO5d5wMFjtvy16NB4BtCLn23rc+31E=', '2025-11-17 17:24:15.811143', 1, 'Cifuentes', '', '', 'cifuentes@ejemplo.cl', 1, 1, '2025-11-15 23:15:02.000000'),
(2, 'pbkdf2_sha256$1000000$OrNWZIQTT1y8RDApXKrSTQ$zJr13RTk8EZ3Lw5koJ6VcpGlNfW4sfD9YjeXy4PCt4g=', '2025-11-17 17:26:25.068700', 0, 'Jump', 'cristobal', 'hernandez', 'cristobal@ejemplo.cl', 0, 1, '2025-11-16 03:03:51.000000'),
(3, 'pbkdf2_sha256$1000000$HMtpZlde4vdy4NbtEKCHJM$frmq4Kw6QpllAA0CJCH+ycD5cjJ/3a+caehr+Pm3P2g=', '2025-11-17 17:41:02.338328', 0, 'jampi', 'bastian', 'henriques', 'basti@ejemplo.cl', 0, 1, '2025-11-16 03:07:25.000000'),
(4, 'pbkdf2_sha256$1000000$qeacyuXavrBNcIngqWjJMX$t2XY+OEph5VkcRi1O3nSExGiRw7U2sKEk/YdZfT1UQ8=', '2025-11-17 13:18:57.731136', 0, 'Danitza', '', '', '', 0, 1, '2025-11-16 23:56:08.679919');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `auth_user_groups`
--

CREATE TABLE `auth_user_groups` (
  `id` bigint(20) NOT NULL,
  `user_id` int(11) NOT NULL,
  `group_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Volcado de datos para la tabla `auth_user_groups`
--

INSERT INTO `auth_user_groups` (`id`, `user_id`, `group_id`) VALUES
(1, 1, 1),
(2, 1, 2),
(3, 1, 3),
(4, 2, 3),
(5, 3, 2),
(6, 4, 3);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `auth_user_user_permissions`
--

CREATE TABLE `auth_user_user_permissions` (
  `id` bigint(20) NOT NULL,
  `user_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `cursos_curso`
--

CREATE TABLE `cursos_curso` (
  `id` bigint(20) NOT NULL,
  `codigo` varchar(20) NOT NULL,
  `nombre` varchar(150) NOT NULL,
  `cupos` int(10) UNSIGNED NOT NULL
) ;

--
-- Volcado de datos para la tabla `cursos_curso`
--

INSERT INTO `cursos_curso` (`id`, `codigo`, `nombre`, `cupos`) VALUES
(1, '141414', 'el Desarrollo', 24);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `django_admin_log`
--

CREATE TABLE `django_admin_log` (
  `id` int(11) NOT NULL,
  `action_time` datetime(6) NOT NULL,
  `object_id` longtext,
  `object_repr` varchar(200) NOT NULL,
  `action_flag` smallint(5) UNSIGNED NOT NULL,
  `change_message` longtext NOT NULL,
  `content_type_id` int(11) DEFAULT NULL,
  `user_id` int(11) NOT NULL
) ;

--
-- Volcado de datos para la tabla `django_admin_log`
--

INSERT INTO `django_admin_log` (`id`, `action_time`, `object_id`, `object_repr`, `action_flag`, `change_message`, `content_type_id`, `user_id`) VALUES
(1, '2025-11-16 03:02:06.243175', '1', 'Cifuentes', 2, '[{\"changed\": {\"fields\": [\"Groups\"]}}]', 4, 1),
(2, '2025-11-16 03:03:52.542306', '2', 'Jump', 1, '[{\"added\": {}}]', 4, 1),
(3, '2025-11-16 03:04:37.497178', '2', 'Jump', 2, '[{\"changed\": {\"fields\": [\"First name\", \"Last name\", \"Email address\", \"Groups\"]}}]', 4, 1),
(4, '2025-11-16 03:07:25.824901', '3', 'jampi', 1, '[{\"added\": {}}]', 4, 1),
(5, '2025-11-16 03:07:54.148551', '3', 'jampi', 2, '[{\"changed\": {\"fields\": [\"First name\", \"Last name\", \"Email address\", \"Groups\"]}}]', 4, 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `django_content_type`
--

CREATE TABLE `django_content_type` (
  `id` int(11) NOT NULL,
  `app_label` varchar(100) NOT NULL,
  `model` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Volcado de datos para la tabla `django_content_type`
--

INSERT INTO `django_content_type` (`id`, `app_label`, `model`) VALUES
(1, 'admin', 'logentry'),
(7, 'alumnos', 'alumno'),
(3, 'auth', 'group'),
(2, 'auth', 'permission'),
(4, 'auth', 'user'),
(5, 'contenttypes', 'contenttype'),
(8, 'cursos', 'curso'),
(9, 'inscripciones', 'inscripcion'),
(6, 'sessions', 'session');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `django_migrations`
--

CREATE TABLE `django_migrations` (
  `id` bigint(20) NOT NULL,
  `app` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `applied` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Volcado de datos para la tabla `django_migrations`
--

INSERT INTO `django_migrations` (`id`, `app`, `name`, `applied`) VALUES
(1, 'contenttypes', '0001_initial', '2025-11-15 22:53:31.223765'),
(2, 'auth', '0001_initial', '2025-11-15 22:53:31.946657'),
(3, 'admin', '0001_initial', '2025-11-15 22:53:32.082966'),
(4, 'admin', '0002_logentry_remove_auto_add', '2025-11-15 22:53:32.089973'),
(5, 'admin', '0003_logentry_add_action_flag_choices', '2025-11-15 22:53:32.097485'),
(6, 'contenttypes', '0002_remove_content_type_name', '2025-11-15 22:53:32.201274'),
(7, 'auth', '0002_alter_permission_name_max_length', '2025-11-15 22:53:32.265009'),
(8, 'auth', '0003_alter_user_email_max_length', '2025-11-15 22:53:32.285071'),
(9, 'auth', '0004_alter_user_username_opts', '2025-11-15 22:53:32.292673'),
(10, 'auth', '0005_alter_user_last_login_null', '2025-11-15 22:53:32.353754'),
(11, 'auth', '0006_require_contenttypes_0002', '2025-11-15 22:53:32.355754'),
(12, 'auth', '0007_alter_validators_add_error_messages', '2025-11-15 22:53:32.362257'),
(13, 'auth', '0008_alter_user_username_max_length', '2025-11-15 22:53:32.440365'),
(14, 'auth', '0009_alter_user_last_name_max_length', '2025-11-15 22:53:32.513700'),
(15, 'auth', '0010_alter_group_name_max_length', '2025-11-15 22:53:32.530779'),
(16, 'auth', '0011_update_proxy_permissions', '2025-11-15 22:53:32.536873'),
(17, 'auth', '0012_alter_user_first_name_max_length', '2025-11-15 22:53:32.619875'),
(18, 'sessions', '0001_initial', '2025-11-15 22:53:32.652746'),
(19, 'alumnos', '0001_initial', '2025-11-15 23:12:42.611518'),
(20, 'cursos', '0001_initial', '2025-11-15 23:12:42.645348'),
(21, 'inscripciones', '0001_initial', '2025-11-15 23:12:42.833812');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `django_session`
--

CREATE TABLE `django_session` (
  `session_key` varchar(40) NOT NULL,
  `session_data` longtext NOT NULL,
  `expire_date` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Volcado de datos para la tabla `django_session`
--

INSERT INTO `django_session` (`session_key`, `session_data`, `expire_date`) VALUES
('0ubayw7aku7yttozxahz3gcl55pjl7w2', '.eJxVjMEOwiAQBf-FsyEuLFA8eu83EGBBqgaS0p6M_64kPejpJW8m82LO71txe0-rW4hdGLLT7xd8fKQ6AN19vTUeW93WJfCh8IN2PjdKz-vh_gWK72VkbZgSZAuoME_ZJA9KGFLKRh2URwuSNOSsQX7HgNZCakkkEM9ZBmDvD82RNvE:1vKz8D:l-m04mroZwee-Fkg9-fE7RGB0jsMqhSNCzy1vyIWleU', '2025-12-01 13:18:57.543850'),
('8wyk87pxwwz5l1xfqv60l0vp1zngk5x5', '.eJxVjDsOwjAQRO_iGlngvynpcwZrvbvGAeRIcVIh7k4ipYBqpHlv5i0SrEtNa-c5jSSuQonTb5cBn9x2QA9o90ni1JZ5zHJX5EG7HCbi1-1w_w4q9LqtC-RwQWeLJwZyKqJDpcHpbL1Xim3WSMZwCTGWYEyIZKMqZwxbEmrx-QIALzhZ:1vL2zg:huGYsujv76gGU2cqYxOaoKrlnojbTJNLD-yezzFMWG4', '2025-12-01 17:26:24.956441'),
('sy8cxqglr5e156mqgqyxwa1nrsstyfs8', '.eJxVjMEOwiAQBf-FsyEuLFA8eu83EGBBqgaS0p6M_64kPejpJW8m82LO71txe0-rW4hdGLLT7xd8fKQ6AN19vTUeW93WJfCh8IN2PjdKz-vh_gWK72VkbZgSZAuoME_ZJA9KGFLKRh2URwuSNOSsQX7HgNZCakkkEM9ZBmDvD82RNvE:1vKz8C:UzhnRF50XFWYde4X3tHnevM4Qh5v6_dTqOKQorPFhY0', '2025-12-01 13:18:56.818046');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `inscripciones_inscripcion`
--

CREATE TABLE `inscripciones_inscripcion` (
  `id` bigint(20) NOT NULL,
  `fecha` date NOT NULL,
  `alumno_id` bigint(20) NOT NULL,
  `curso_id` bigint(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Volcado de datos para la tabla `inscripciones_inscripcion`
--

INSERT INTO `inscripciones_inscripcion` (`id`, `fecha`, `alumno_id`, `curso_id`) VALUES
(1, '2025-11-16', 1, 1),
(2, '2025-11-16', 2, 1);

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `alumnos_alumno`
--
ALTER TABLE `alumnos_alumno`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `rut` (`rut`),
  ADD UNIQUE KEY `email` (`email`);

--
-- Indices de la tabla `auth_group`
--
ALTER TABLE `auth_group`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `name` (`name`);

--
-- Indices de la tabla `auth_group_permissions`
--
ALTER TABLE `auth_group_permissions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_group_permissions_group_id_permission_id_0cd325b0_uniq` (`group_id`,`permission_id`),
  ADD KEY `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` (`permission_id`);

--
-- Indices de la tabla `auth_permission`
--
ALTER TABLE `auth_permission`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_permission_content_type_id_codename_01ab375a_uniq` (`content_type_id`,`codename`);

--
-- Indices de la tabla `auth_user`
--
ALTER TABLE `auth_user`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `username` (`username`);

--
-- Indices de la tabla `auth_user_groups`
--
ALTER TABLE `auth_user_groups`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_user_groups_user_id_group_id_94350c0c_uniq` (`user_id`,`group_id`),
  ADD KEY `auth_user_groups_group_id_97559544_fk_auth_group_id` (`group_id`);

--
-- Indices de la tabla `auth_user_user_permissions`
--
ALTER TABLE `auth_user_user_permissions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_user_user_permissions_user_id_permission_id_14a6b632_uniq` (`user_id`,`permission_id`),
  ADD KEY `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm` (`permission_id`);

--
-- Indices de la tabla `cursos_curso`
--
ALTER TABLE `cursos_curso`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `codigo` (`codigo`);

--
-- Indices de la tabla `django_admin_log`
--
ALTER TABLE `django_admin_log`
  ADD PRIMARY KEY (`id`),
  ADD KEY `django_admin_log_content_type_id_c4bce8eb_fk_django_co` (`content_type_id`),
  ADD KEY `django_admin_log_user_id_c564eba6_fk_auth_user_id` (`user_id`);

--
-- Indices de la tabla `django_content_type`
--
ALTER TABLE `django_content_type`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `django_content_type_app_label_model_76bd3d3b_uniq` (`app_label`,`model`);

--
-- Indices de la tabla `django_migrations`
--
ALTER TABLE `django_migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `django_session`
--
ALTER TABLE `django_session`
  ADD PRIMARY KEY (`session_key`),
  ADD KEY `django_session_expire_date_a5c62663` (`expire_date`);

--
-- Indices de la tabla `inscripciones_inscripcion`
--
ALTER TABLE `inscripciones_inscripcion`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `inscripciones_inscripcion_alumno_id_curso_id_5303a739_uniq` (`alumno_id`,`curso_id`),
  ADD KEY `inscripciones_inscripcion_curso_id_f235bd7c_fk_cursos_curso_id` (`curso_id`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `alumnos_alumno`
--
ALTER TABLE `alumnos_alumno`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT de la tabla `auth_group`
--
ALTER TABLE `auth_group`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT de la tabla `auth_group_permissions`
--
ALTER TABLE `auth_group_permissions`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;

--
-- AUTO_INCREMENT de la tabla `auth_permission`
--
ALTER TABLE `auth_permission`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=37;

--
-- AUTO_INCREMENT de la tabla `auth_user`
--
ALTER TABLE `auth_user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT de la tabla `auth_user_groups`
--
ALTER TABLE `auth_user_groups`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT de la tabla `auth_user_user_permissions`
--
ALTER TABLE `auth_user_user_permissions`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `cursos_curso`
--
ALTER TABLE `cursos_curso`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `django_admin_log`
--
ALTER TABLE `django_admin_log`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `django_content_type`
--
ALTER TABLE `django_content_type`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT de la tabla `django_migrations`
--
ALTER TABLE `django_migrations`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT de la tabla `inscripciones_inscripcion`
--
ALTER TABLE `inscripciones_inscripcion`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `auth_group_permissions`
--
ALTER TABLE `auth_group_permissions`
  ADD CONSTRAINT `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  ADD CONSTRAINT `auth_group_permissions_group_id_b120cbf9_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`);

--
-- Filtros para la tabla `auth_permission`
--
ALTER TABLE `auth_permission`
  ADD CONSTRAINT `auth_permission_content_type_id_2f476e4b_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`);

--
-- Filtros para la tabla `auth_user_groups`
--
ALTER TABLE `auth_user_groups`
  ADD CONSTRAINT `auth_user_groups_group_id_97559544_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`),
  ADD CONSTRAINT `auth_user_groups_user_id_6a12ed8b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);

--
-- Filtros para la tabla `auth_user_user_permissions`
--
ALTER TABLE `auth_user_user_permissions`
  ADD CONSTRAINT `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  ADD CONSTRAINT `auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);

--
-- Filtros para la tabla `django_admin_log`
--
ALTER TABLE `django_admin_log`
  ADD CONSTRAINT `django_admin_log_content_type_id_c4bce8eb_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`),
  ADD CONSTRAINT `django_admin_log_user_id_c564eba6_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);

--
-- Filtros para la tabla `inscripciones_inscripcion`
--
ALTER TABLE `inscripciones_inscripcion`
  ADD CONSTRAINT `inscripciones_inscri_alumno_id_2dc2effc_fk_alumnos_a` FOREIGN KEY (`alumno_id`) REFERENCES `alumnos_alumno` (`id`),
  ADD CONSTRAINT `inscripciones_inscripcion_curso_id_f235bd7c_fk_cursos_curso_id` FOREIGN KEY (`curso_id`) REFERENCES `cursos_curso` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
