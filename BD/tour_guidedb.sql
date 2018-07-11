-- phpMyAdmin SQL Dump
-- version 4.7.1
-- https://www.phpmyadmin.net/
--
-- Servidor: localhost
-- Tiempo de generación: 08-07-2018 a las 04:49:16
-- Versión del servidor: 5.7.13-log
-- Versión de PHP: 7.0.20

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `tour_guidedb`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `auth_group`
--

CREATE TABLE `auth_group` (
  `id` int(11) NOT NULL,
  `name` varchar(80) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `auth_group_permissions`
--

CREATE TABLE `auth_group_permissions` (
  `id` int(11) NOT NULL,
  `group_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `auth_permission`
--

CREATE TABLE `auth_permission` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `content_type_id` int(11) NOT NULL,
  `codename` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `auth_permission`
--

INSERT INTO `auth_permission` (`id`, `name`, `content_type_id`, `codename`) VALUES
(1, 'Can add log entry', 1, 'add_logentry'),
(2, 'Can change log entry', 1, 'change_logentry'),
(3, 'Can delete log entry', 1, 'delete_logentry'),
(4, 'Can add permission', 2, 'add_permission'),
(5, 'Can change permission', 2, 'change_permission'),
(6, 'Can delete permission', 2, 'delete_permission'),
(7, 'Can add user', 3, 'add_user'),
(8, 'Can change user', 3, 'change_user'),
(9, 'Can delete user', 3, 'delete_user'),
(10, 'Can add group', 4, 'add_group'),
(11, 'Can change group', 4, 'change_group'),
(12, 'Can delete group', 4, 'delete_group'),
(13, 'Can add content type', 5, 'add_contenttype'),
(14, 'Can change content type', 5, 'change_contenttype'),
(15, 'Can delete content type', 5, 'delete_contenttype'),
(16, 'Can add session', 6, 'add_session'),
(17, 'Can change session', 6, 'change_session'),
(18, 'Can delete session', 6, 'delete_session'),
(19, 'Can add imagen info', 7, 'add_imageninfo'),
(20, 'Can change imagen info', 7, 'change_imageninfo'),
(21, 'Can delete imagen info', 7, 'delete_imageninfo'),
(22, 'Can add historial usuario', 8, 'add_historialusuario'),
(23, 'Can change historial usuario', 8, 'change_historialusuario'),
(24, 'Can delete historial usuario', 8, 'delete_historialusuario');

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
  `first_name` varchar(30) NOT NULL,
  `last_name` varchar(150) NOT NULL,
  `email` varchar(254) NOT NULL,
  `is_staff` tinyint(1) NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  `date_joined` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `auth_user`
--

INSERT INTO `auth_user` (`id`, `password`, `last_login`, `is_superuser`, `username`, `first_name`, `last_name`, `email`, `is_staff`, `is_active`, `date_joined`) VALUES
(1, 'pbkdf2_sha256$100000$DPucQ33aY6yr$IoCmG9ex8ZfXHTZDBriVcYyEmgu5XJ9IcOo0Pi44TGg=', '2018-07-08 04:45:18.344841', 1, 'admin', 'Juanillo', 'Lopez', 'admin@gmail.com', 1, 1, '2018-06-25 22:52:12.417547'),
(7, 'pbkdf2_sha256$100000$jGEdt4Q73Fem$viFbHYOh+kn3wsmyYwVpr1fRNPACGc3PpW1kDvf0yhw=', '2018-07-08 02:23:48.775201', 0, 'admin5', 'Neymar', 'da Silva Santos JúniorJúnior', 'admin5@gmail.com', 0, 1, '2018-07-08 00:56:00.453503'),
(8, 'pbkdf2_sha256$100000$CkTlc60gB4CS$9BxRmwAa8s5aAZRqSttQn5sfHC5f5+FMU9MoASovYdo=', '2018-07-08 02:44:42.043613', 0, 'admin7', 'Lionel', 'Messi ', 'admin7@gmail.com', 0, 1, '2018-07-08 01:05:50.183260');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `auth_user_groups`
--

CREATE TABLE `auth_user_groups` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `group_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `auth_user_user_permissions`
--

CREATE TABLE `auth_user_user_permissions` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

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
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `django_admin_log`
--

INSERT INTO `django_admin_log` (`id`, `action_time`, `object_id`, `object_repr`, `action_flag`, `change_message`, `content_type_id`, `user_id`) VALUES
(1, '2018-06-25 22:54:00.740645', '2', 'dartz', 1, '[{\"added\": {}}]', 3, 1),
(2, '2018-06-25 22:54:23.748246', '2', 'dartz', 2, '[{\"changed\": {\"fields\": [\"email\"]}}]', 3, 1),
(3, '2018-06-25 22:54:43.653341', '2', 'dartz', 2, '[{\"changed\": {\"fields\": [\"is_staff\", \"is_superuser\"]}}]', 3, 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `django_content_type`
--

CREATE TABLE `django_content_type` (
  `id` int(11) NOT NULL,
  `app_label` varchar(100) NOT NULL,
  `model` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `django_content_type`
--

INSERT INTO `django_content_type` (`id`, `app_label`, `model`) VALUES
(1, 'admin', 'logentry'),
(4, 'auth', 'group'),
(2, 'auth', 'permission'),
(3, 'auth', 'user'),
(5, 'contenttypes', 'contenttype'),
(6, 'sessions', 'session'),
(8, 'Usuario', 'historialusuario'),
(7, 'Usuario', 'imageninfo');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `django_migrations`
--

CREATE TABLE `django_migrations` (
  `id` int(11) NOT NULL,
  `app` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `applied` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `django_migrations`
--

INSERT INTO `django_migrations` (`id`, `app`, `name`, `applied`) VALUES
(1, 'contenttypes', '0001_initial', '2018-06-25 22:20:43.733483'),
(2, 'auth', '0001_initial', '2018-06-25 22:20:48.169358'),
(3, 'admin', '0001_initial', '2018-06-25 22:20:50.565815'),
(4, 'admin', '0002_logentry_remove_auto_add', '2018-06-25 22:20:50.597839'),
(5, 'contenttypes', '0002_remove_content_type_name', '2018-06-25 22:20:51.171919'),
(6, 'auth', '0002_alter_permission_name_max_length', '2018-06-25 22:20:51.820869'),
(7, 'auth', '0003_alter_user_email_max_length', '2018-06-25 22:20:52.497816'),
(8, 'auth', '0004_alter_user_username_opts', '2018-06-25 22:20:52.544863'),
(9, 'auth', '0005_alter_user_last_login_null', '2018-06-25 22:20:52.831587'),
(10, 'auth', '0006_require_contenttypes_0002', '2018-06-25 22:20:52.849576'),
(11, 'auth', '0007_alter_validators_add_error_messages', '2018-06-25 22:20:52.869564'),
(12, 'auth', '0008_alter_user_username_max_length', '2018-06-25 22:20:53.547444'),
(13, 'auth', '0009_alter_user_last_name_max_length', '2018-06-25 22:20:53.964358'),
(14, 'sessions', '0001_initial', '2018-06-25 22:20:54.217317'),
(15, 'Usuario', '0001_initial', '2018-06-26 00:08:57.817901');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `django_session`
--

CREATE TABLE `django_session` (
  `session_key` varchar(40) NOT NULL,
  `session_data` longtext NOT NULL,
  `expire_date` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `django_session`
--

INSERT INTO `django_session` (`session_key`, `session_data`, `expire_date`) VALUES
('0asoh424e1ua0mawic93lhjt8zk8kd56', 'NDhmYmRmOGFhMmVmOThjNjk5ZDdlZmE4NDRiNWU4MGE1ZjdlODYzNjp7Il9hdXRoX3VzZXJfaGFzaCI6IjAyNTBkNTc2MDE0Y2NlMmFjNzc4NDhmZTAyNjBhYzYyMTg0YmYxODYiLCJfYXV0aF91c2VyX2lkIjoiMSIsIl9hdXRoX3VzZXJfYmFja2VuZCI6ImFwcHMuVXN1YXJpby5iYWNrZW5kcy5FbWFpbEF1dGhCYWNrZW5kIn0=', '2018-07-15 05:26:20.022262'),
('138ostfl7j1n6vpcc3q5ozrzuvwbk1o8', 'MmQ5OTY1MzdiZDlkYjQ2NmI0YWZjNzE1ZDZkNDA4NDRhMjI3NjNhYTp7fQ==', '2018-07-15 04:00:10.681197'),
('2mknyg1arogozv64s8785owe1g28kk4j', 'NDJkNzU5ZGJmODg0ZmM0MDlkMWEwY2ExMjg4MTUzYmQ2NWZjN2I2Njp7Il9hdXRoX3VzZXJfYmFja2VuZCI6ImFwcHMuVXN1YXJpby5iYWNrZW5kcy5FbWFpbEF1dGhCYWNrZW5kIiwiX2F1dGhfdXNlcl9pZCI6IjEiLCJfYXV0aF91c2VyX2hhc2giOiIwMjUwZDU3NjAxNGNjZTJhYzc3ODQ4ZmUwMjYwYWM2MjE4NGJmMTg2In0=', '2018-07-16 01:51:15.505410'),
('6yuwzrnkwxxl5onewvnxwsz2nfp3pino', 'Yzg1MzY3MjUwZDk4MjUxYzc5MWY4MjFlY2ZkYWNiY2MzYmRiZDRiYjp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiYXBwcy5Vc3VhcmlvLmJhY2tlbmRzLkVtYWlsQXV0aEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiIwMjUwZDU3NjAxNGNjZTJhYzc3ODQ4ZmUwMjYwYWM2MjE4NGJmMTg2In0=', '2018-07-16 04:19:18.693222'),
('846kl68s8om4sflk64x48lcda5lzzzt4', 'NDJkNzU5ZGJmODg0ZmM0MDlkMWEwY2ExMjg4MTUzYmQ2NWZjN2I2Njp7Il9hdXRoX3VzZXJfYmFja2VuZCI6ImFwcHMuVXN1YXJpby5iYWNrZW5kcy5FbWFpbEF1dGhCYWNrZW5kIiwiX2F1dGhfdXNlcl9pZCI6IjEiLCJfYXV0aF91c2VyX2hhc2giOiIwMjUwZDU3NjAxNGNjZTJhYzc3ODQ4ZmUwMjYwYWM2MjE4NGJmMTg2In0=', '2018-07-21 05:29:57.729485'),
('9izm640c0z2n0gbhfe2lvs0vl7r9qw1u', 'NGMxNmJlZDYzZWQ0NjQ0NzcyNWMzNzE0YmFmYjI5NzEwMmE1NzI4Yjp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9oYXNoIjoiMDI1MGQ1NzYwMTRjY2UyYWM3Nzg0OGZlMDI2MGFjNjIxODRiZjE4NiIsIl9hdXRoX3VzZXJfYmFja2VuZCI6ImFwcHMuVXN1YXJpby5iYWNrZW5kcy5FbWFpbEF1dGhCYWNrZW5kIn0=', '2018-07-19 23:11:12.934145'),
('anecbrihrftnj7zhnc0pi4m79m3wp8c6', 'NDUzYmE2NGExZDQ3OTJhMDc1YWY4NjM3OGRjMjM4OTI1YTlmNzZhMDp7Il9hdXRoX3VzZXJfaGFzaCI6IjAyNTBkNTc2MDE0Y2NlMmFjNzc4NDhmZTAyNjBhYzYyMTg0YmYxODYiLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJhcHBzLlVzdWFyaW8uYmFja2VuZHMuRW1haWxBdXRoQmFja2VuZCIsIl9hdXRoX3VzZXJfaWQiOiIxIn0=', '2018-07-15 03:09:52.603617'),
('apwfmmeldzf7s9yoac6fd3dzm9tg6o95', 'NDhmYmRmOGFhMmVmOThjNjk5ZDdlZmE4NDRiNWU4MGE1ZjdlODYzNjp7Il9hdXRoX3VzZXJfaGFzaCI6IjAyNTBkNTc2MDE0Y2NlMmFjNzc4NDhmZTAyNjBhYzYyMTg0YmYxODYiLCJfYXV0aF91c2VyX2lkIjoiMSIsIl9hdXRoX3VzZXJfYmFja2VuZCI6ImFwcHMuVXN1YXJpby5iYWNrZW5kcy5FbWFpbEF1dGhCYWNrZW5kIn0=', '2018-07-15 14:36:41.333848'),
('d5ffbqpuod1iv0j1wi00pde1lh6tvrlq', 'NDJkNzU5ZGJmODg0ZmM0MDlkMWEwY2ExMjg4MTUzYmQ2NWZjN2I2Njp7Il9hdXRoX3VzZXJfYmFja2VuZCI6ImFwcHMuVXN1YXJpby5iYWNrZW5kcy5FbWFpbEF1dGhCYWNrZW5kIiwiX2F1dGhfdXNlcl9pZCI6IjEiLCJfYXV0aF91c2VyX2hhc2giOiIwMjUwZDU3NjAxNGNjZTJhYzc3ODQ4ZmUwMjYwYWM2MjE4NGJmMTg2In0=', '2018-07-15 04:51:11.042966'),
('fz8fnqeuehep1u9a5ykledfgz4ie6zsd', 'MmQ5OTY1MzdiZDlkYjQ2NmI0YWZjNzE1ZDZkNDA4NDRhMjI3NjNhYTp7fQ==', '2018-07-15 04:01:20.212749'),
('n7jnfwrpw41f1siendsl88kqfn5zbxxw', 'NDhmYmRmOGFhMmVmOThjNjk5ZDdlZmE4NDRiNWU4MGE1ZjdlODYzNjp7Il9hdXRoX3VzZXJfaGFzaCI6IjAyNTBkNTc2MDE0Y2NlMmFjNzc4NDhmZTAyNjBhYzYyMTg0YmYxODYiLCJfYXV0aF91c2VyX2lkIjoiMSIsIl9hdXRoX3VzZXJfYmFja2VuZCI6ImFwcHMuVXN1YXJpby5iYWNrZW5kcy5FbWFpbEF1dGhCYWNrZW5kIn0=', '2018-07-15 14:41:09.458773'),
('peoj3ppfi1p1s7c0crewfgsif41gi1qm', 'MmQ5OTY1MzdiZDlkYjQ2NmI0YWZjNzE1ZDZkNDA4NDRhMjI3NjNhYTp7fQ==', '2018-07-15 04:02:16.590154'),
('pqvf3wuyzfl2lvy6cdoby7p4ymc8pl38', 'NDhmYmRmOGFhMmVmOThjNjk5ZDdlZmE4NDRiNWU4MGE1ZjdlODYzNjp7Il9hdXRoX3VzZXJfaGFzaCI6IjAyNTBkNTc2MDE0Y2NlMmFjNzc4NDhmZTAyNjBhYzYyMTg0YmYxODYiLCJfYXV0aF91c2VyX2lkIjoiMSIsIl9hdXRoX3VzZXJfYmFja2VuZCI6ImFwcHMuVXN1YXJpby5iYWNrZW5kcy5FbWFpbEF1dGhCYWNrZW5kIn0=', '2018-07-15 04:22:52.984735'),
('rnl5kj9fsfi8yf27l3h3yx1vi7kvr0tk', 'NDhmYmRmOGFhMmVmOThjNjk5ZDdlZmE4NDRiNWU4MGE1ZjdlODYzNjp7Il9hdXRoX3VzZXJfaGFzaCI6IjAyNTBkNTc2MDE0Y2NlMmFjNzc4NDhmZTAyNjBhYzYyMTg0YmYxODYiLCJfYXV0aF91c2VyX2lkIjoiMSIsIl9hdXRoX3VzZXJfYmFja2VuZCI6ImFwcHMuVXN1YXJpby5iYWNrZW5kcy5FbWFpbEF1dGhCYWNrZW5kIn0=', '2018-07-15 15:00:59.879777'),
('t6iz14nhd83p2ybvzzeae6wqx4ps6nqx', 'NDhmYmRmOGFhMmVmOThjNjk5ZDdlZmE4NDRiNWU4MGE1ZjdlODYzNjp7Il9hdXRoX3VzZXJfaGFzaCI6IjAyNTBkNTc2MDE0Y2NlMmFjNzc4NDhmZTAyNjBhYzYyMTg0YmYxODYiLCJfYXV0aF91c2VyX2lkIjoiMSIsIl9hdXRoX3VzZXJfYmFja2VuZCI6ImFwcHMuVXN1YXJpby5iYWNrZW5kcy5FbWFpbEF1dGhCYWNrZW5kIn0=', '2018-07-15 04:28:25.734955'),
('vli7wdr2b6gyi9dg4c5vv9c5x9xkwg3t', 'Yzg1MzY3MjUwZDk4MjUxYzc5MWY4MjFlY2ZkYWNiY2MzYmRiZDRiYjp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiYXBwcy5Vc3VhcmlvLmJhY2tlbmRzLkVtYWlsQXV0aEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiIwMjUwZDU3NjAxNGNjZTJhYzc3ODQ4ZmUwMjYwYWM2MjE4NGJmMTg2In0=', '2018-07-15 03:40:51.251085'),
('zmaij17mqxs9nu4rhdxd66cx67sp2l5g', 'NDJkNzU5ZGJmODg0ZmM0MDlkMWEwY2ExMjg4MTUzYmQ2NWZjN2I2Njp7Il9hdXRoX3VzZXJfYmFja2VuZCI6ImFwcHMuVXN1YXJpby5iYWNrZW5kcy5FbWFpbEF1dGhCYWNrZW5kIiwiX2F1dGhfdXNlcl9pZCI6IjEiLCJfYXV0aF91c2VyX2hhc2giOiIwMjUwZDU3NjAxNGNjZTJhYzc3ODQ4ZmUwMjYwYWM2MjE4NGJmMTg2In0=', '2018-07-15 04:58:26.034959');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usuario_historialusuario`
--

CREATE TABLE `usuario_historialusuario` (
  `id` int(11) NOT NULL,
  `Register_date` datetime(6) NOT NULL,
  `ImagenInfo_id` int(11) DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `usuario_historialusuario`
--

INSERT INTO `usuario_historialusuario` (`id`, `Register_date`, `ImagenInfo_id`, `user_id`) VALUES
(1, '2018-07-06 00:00:00.000000', 1, 1),
(2, '2018-07-07 04:54:29.113623', 1, 1),
(3, '2018-07-07 04:57:35.419764', 1, 1),
(4, '2018-07-07 05:24:28.229503', 1, 1),
(5, '2018-07-07 05:30:05.067191', 1, 1),
(6, '2018-07-07 05:30:19.980667', 1, 1),
(7, '2018-07-07 05:31:35.484644', 1, 1),
(8, '2018-07-07 05:32:12.169219', 1, 1),
(9, '2018-07-07 05:32:26.466864', 1, 1),
(10, '2018-07-07 05:32:46.822381', 1, 1),
(11, '2018-07-07 14:05:50.195583', 1, 1),
(12, '2018-07-07 16:08:56.225182', 1, 1),
(13, '2018-07-07 16:10:53.127963', 1, 1),
(14, '2018-07-07 16:38:20.820322', 4, 1),
(15, '2018-07-07 18:00:20.349697', 1, 1),
(16, '2018-07-07 18:02:24.749441', 1, 1),
(17, '2018-07-08 02:24:13.724716', 1, 7);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usuario_imageninfo`
--

CREATE TABLE `usuario_imageninfo` (
  `idimagen` int(11) NOT NULL,
  `nombreimagen` varchar(45) NOT NULL,
  `ciudad` varchar(15) NOT NULL,
  `provincia` varchar(15) NOT NULL,
  `distrito` varchar(15) NOT NULL,
  `direccion` varchar(15) NOT NULL,
  `longitud` varchar(45) NOT NULL,
  `latitud` varchar(45) NOT NULL,
  `description` longtext NOT NULL,
  `construccion` varchar(20) DEFAULT NULL,
  `estilo_arquitectonico` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `usuario_imageninfo`
--

INSERT INTO `usuario_imageninfo` (`idimagen`, `nombreimagen`, `ciudad`, `provincia`, `distrito`, `direccion`, `longitud`, `latitud`, `description`, `construccion`, `estilo_arquitectonico`) VALUES
(1, 'Yanahuara District', 'Arequipa', 'Arequipa', 'Yahanhuara', '', '-71.542874', '-16.387086', 'Yanahuara posee una población de 20.021 habitantes, con una densidad de 9100.5 hab/km2, distribuidas en alrededor de 5 áreas, llámense, Yanahuara tradicional (Yanahuara vieja), el área antigua del distrito caracterizado por su pintoresco aspecto español; Juan XXIII y Umacollo, áreas de época repúblicana con alta densidad poblacional; Piedra Santa el área más moderna de del distrito, con lujosos condominios y apartamentos; Pampa de Camarones, un pueblo tardicional alejado de la Yanahuara Vieja, y rodeado por la campiña Arequipeña, en general la población de Yanahuara tiene una mayor calidad de vida que el resto de Arequipa, principalmente debido a la situación económica de sus residentes, que son atraídos por las características del distrito.', NULL, NULL),
(2, 'Monastery of Santa Catalina Arequipa', 'Arequipa', 'Arequipa', 'Cercado', 'SanaCatalina301', '71° 32′ 12.45″ W', '16° 23′ 42.74″ S', 'El Virrey Francisco Toledo, durante su visita a Arequipa fue informado por el cabildo sobre su deseo de fundar un monasterio de monjas. Ello lo motivó a otorgar las licencias necesarias para la fundación del \"Monasterio de Monjas Privado de la Orden de Santa Catalina de Siena\". Años más tarde, Doña María de Guzmán, viuda de Diego Hernández de Mendoza, mujer hermosa, rica y joven que no tuvo hijos, decide recluirse en el monasterio en construcción, cediendo para ello todos sus bienes. El 10 de setiembre de 1579 se hace la memoria y capitulación de la fundación del monasterio firmada entre el Cabildo, Justicia y Regimiento de la Ciudad y Obispado del Cusco, luego de firmar el documento se entrega cuatro solares, propiedad de la ciudad, para el funcionamiento del monasterio y se nombra a Doña María de Guzmán \"primera pobladora y priora de dicho Monasterio\".\r\n\r\nEl domingo 2 de octubre de 1580, se celebra una misa mayor en la ciudad y Doña María, reconocida como fundadora, toma formalmente los hábitos.\r\n\r\nLas mujeres que ingresaron como monjas al monasterio fueron criollas, mestizas y hasta hijas de curacas. Recién en 1964 ingresaron las primeras monjas españolas. La historia también cuenta del ingreso de \"monjas pobres\" y damas de la ciudad, que sin abrazar la vida religiosa, ingresaban al monasterio para ejercitar sus virtudes.\r\n\r\nEn 1582, Arequipa soportó un fuerte terremoto, sufriendo la construcción del monasterio graves daños. A pesar de ello se conservó la clausura. A partir de entonces, se inicia un período de sufrimiento, en el cual las propias religiosas repararon sus habitaciones. La capilla, por falta de dinero, no se pudo refaccionar \" por lo cual el Santísimo Sacramento se exponía en una choza de paja\"', NULL, NULL),
(4, 'Plaza de Armas Arequipa', 'Arequipa', 'Arequipa', 'Cercado', '', '71° 32′ 11.04″ W', '16° 23′ 53.16″ S', 'a plaza Mayor o plaza de Armas de Arequipa, es uno de los principales espacios públicos de Arequipa y el lugar de fundación de la ciudad. Está ubicada en el Centro Histórico de Arequipa, a su alrededor esta La Catedral de Arequipa en el norte , los Portales de Arequipa al este, sur y oeste, La Iglesia La Compañía al sur-este, La Iglesia Nuestra señora de la Merced al sur-oeste y en el centro de la plaza una pileta de bronce.', '1540-1656', 'Neorrenacentista');

--
-- Índices para tablas volcadas
--

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
  ADD UNIQUE KEY `username` (`username`),
  ADD UNIQUE KEY `email` (`email`);

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
-- Indices de la tabla `usuario_historialusuario`
--
ALTER TABLE `usuario_historialusuario`
  ADD PRIMARY KEY (`id`),
  ADD KEY `Usuario_historialusu_ImagenInfo_id_0b0ee534_fk_Usuario_i` (`ImagenInfo_id`),
  ADD KEY `Usuario_historialusuario_user_id_c0696fe8_fk_auth_user_id` (`user_id`);

--
-- Indices de la tabla `usuario_imageninfo`
--
ALTER TABLE `usuario_imageninfo`
  ADD PRIMARY KEY (`idimagen`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `auth_group`
--
ALTER TABLE `auth_group`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT de la tabla `auth_group_permissions`
--
ALTER TABLE `auth_group_permissions`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT de la tabla `auth_permission`
--
ALTER TABLE `auth_permission`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;
--
-- AUTO_INCREMENT de la tabla `auth_user`
--
ALTER TABLE `auth_user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;
--
-- AUTO_INCREMENT de la tabla `auth_user_groups`
--
ALTER TABLE `auth_user_groups`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT de la tabla `auth_user_user_permissions`
--
ALTER TABLE `auth_user_user_permissions`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT de la tabla `django_admin_log`
--
ALTER TABLE `django_admin_log`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT de la tabla `django_content_type`
--
ALTER TABLE `django_content_type`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;
--
-- AUTO_INCREMENT de la tabla `django_migrations`
--
ALTER TABLE `django_migrations`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;
--
-- AUTO_INCREMENT de la tabla `usuario_historialusuario`
--
ALTER TABLE `usuario_historialusuario`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;
--
-- AUTO_INCREMENT de la tabla `usuario_imageninfo`
--
ALTER TABLE `usuario_imageninfo`
  MODIFY `idimagen` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
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
-- Filtros para la tabla `usuario_historialusuario`
--
ALTER TABLE `usuario_historialusuario`
  ADD CONSTRAINT `Usuario_historialusu_ImagenInfo_id_0b0ee534_fk_Usuario_i` FOREIGN KEY (`ImagenInfo_id`) REFERENCES `usuario_imageninfo` (`idimagen`),
  ADD CONSTRAINT `Usuario_historialusuario_user_id_c0696fe8_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
