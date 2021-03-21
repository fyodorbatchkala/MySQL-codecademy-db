
# TABLE STRUCTURE FOR: career_paths
#

DROP TABLE IF EXISTS `career_paths`;

CREATE TABLE `career_paths` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'идентификатор строки',
  `career_paths_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'название карьерного пути',
  `created_at` datetime DEFAULT current_timestamp() COMMENT 'время создания строки',
  `updated_at` datetime DEFAULT current_timestamp() ON UPDATE current_timestamp() COMMENT 'время обновления строки',
  PRIMARY KEY (`id`),
  UNIQUE KEY `career_paths_name` (`career_paths_name`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

INSERT INTO `career_paths` (`id`, `career_paths_name`, `created_at`, `updated_at`) VALUES (1, ' Front-End Engineer', '2009-07-31 23:45:47', '1988-05-07 16:19:19');
INSERT INTO `career_paths` (`id`, `career_paths_name`, `created_at`, `updated_at`) VALUES (2, ' Full-Stack Engineer', '2001-10-09 01:15:46', '1973-06-18 11:10:21');
INSERT INTO `career_paths` (`id`, `career_paths_name`, `created_at`, `updated_at`) VALUES (3, ' Back-End Engineer', '1987-02-26 01:01:48', '1970-07-03 23:54:08');
INSERT INTO `career_paths` (`id`, `career_paths_name`, `created_at`, `updated_at`) VALUES (4, ' Data Analyst', '1970-05-29 08:25:26', '1999-03-10 20:14:41');
INSERT INTO `career_paths` (`id`, `career_paths_name`, `created_at`, `updated_at`) VALUES (5, 'Data Scientist', '1995-06-07 05:33:23', '2018-02-11 05:29:04');


#
# TABLE STRUCTURE FOR: career_paths_users
#

DROP TABLE IF EXISTS `career_paths_users`;

CREATE TABLE `career_paths_users` (
  `career_paths_id` int(10) unsigned NOT NULL COMMENT 'ссылка на курс',
  `user_id` int(10) unsigned NOT NULL COMMENT 'ссылка на пользователя',
  `created_at` datetime DEFAULT current_timestamp() COMMENT 'Время создания строки',
  PRIMARY KEY (`career_paths_id`,`user_id`) COMMENT 'составной первичный ключ'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='ученики карьерных путей, связь между карьерными путями и учениками';

INSERT INTO `career_paths_users` (`career_paths_id`, `user_id`, `created_at`) VALUES (1, 8, '1990-10-30 18:23:10');
INSERT INTO `career_paths_users` (`career_paths_id`, `user_id`, `created_at`) VALUES (1, 12, '2007-12-17 17:59:31');
INSERT INTO `career_paths_users` (`career_paths_id`, `user_id`, `created_at`) VALUES (1, 18, '1981-09-05 23:46:27');
INSERT INTO `career_paths_users` (`career_paths_id`, `user_id`, `created_at`) VALUES (1, 33, '1973-12-26 05:44:55');
INSERT INTO `career_paths_users` (`career_paths_id`, `user_id`, `created_at`) VALUES (1, 39, '1973-08-02 13:04:34');
INSERT INTO `career_paths_users` (`career_paths_id`, `user_id`, `created_at`) VALUES (1, 43, '1973-06-30 15:52:26');
INSERT INTO `career_paths_users` (`career_paths_id`, `user_id`, `created_at`) VALUES (1, 44, '1970-05-10 22:52:48');
INSERT INTO `career_paths_users` (`career_paths_id`, `user_id`, `created_at`) VALUES (1, 50, '2008-01-11 13:39:47');
INSERT INTO `career_paths_users` (`career_paths_id`, `user_id`, `created_at`) VALUES (1, 64, '1975-12-02 12:53:43');
INSERT INTO `career_paths_users` (`career_paths_id`, `user_id`, `created_at`) VALUES (1, 69, '2020-09-29 20:59:44');
INSERT INTO `career_paths_users` (`career_paths_id`, `user_id`, `created_at`) VALUES (1, 70, '2014-10-08 00:51:20');
INSERT INTO `career_paths_users` (`career_paths_id`, `user_id`, `created_at`) VALUES (1, 86, '1980-11-06 00:20:14');
INSERT INTO `career_paths_users` (`career_paths_id`, `user_id`, `created_at`) VALUES (1, 96, '1972-11-10 06:59:14');
INSERT INTO `career_paths_users` (`career_paths_id`, `user_id`, `created_at`) VALUES (1, 99, '2019-12-09 20:24:09');
INSERT INTO `career_paths_users` (`career_paths_id`, `user_id`, `created_at`) VALUES (2, 2, '1989-02-19 04:24:34');
INSERT INTO `career_paths_users` (`career_paths_id`, `user_id`, `created_at`) VALUES (2, 6, '2019-10-30 07:59:42');
INSERT INTO `career_paths_users` (`career_paths_id`, `user_id`, `created_at`) VALUES (2, 12, '2005-05-03 13:26:34');
INSERT INTO `career_paths_users` (`career_paths_id`, `user_id`, `created_at`) VALUES (2, 24, '1979-10-26 13:27:20');
INSERT INTO `career_paths_users` (`career_paths_id`, `user_id`, `created_at`) VALUES (2, 30, '1976-05-18 21:57:43');
INSERT INTO `career_paths_users` (`career_paths_id`, `user_id`, `created_at`) VALUES (2, 44, '2020-05-10 22:05:16');
INSERT INTO `career_paths_users` (`career_paths_id`, `user_id`, `created_at`) VALUES (2, 55, '1977-03-03 07:55:01');
INSERT INTO `career_paths_users` (`career_paths_id`, `user_id`, `created_at`) VALUES (2, 59, '1974-03-24 06:54:35');
INSERT INTO `career_paths_users` (`career_paths_id`, `user_id`, `created_at`) VALUES (2, 60, '2011-02-18 15:16:33');
INSERT INTO `career_paths_users` (`career_paths_id`, `user_id`, `created_at`) VALUES (2, 63, '2019-01-08 05:12:41');
INSERT INTO `career_paths_users` (`career_paths_id`, `user_id`, `created_at`) VALUES (2, 75, '1992-02-29 13:31:15');
INSERT INTO `career_paths_users` (`career_paths_id`, `user_id`, `created_at`) VALUES (2, 78, '2004-09-13 12:14:07');
INSERT INTO `career_paths_users` (`career_paths_id`, `user_id`, `created_at`) VALUES (2, 79, '2017-10-21 11:42:47');
INSERT INTO `career_paths_users` (`career_paths_id`, `user_id`, `created_at`) VALUES (2, 80, '1973-01-02 20:46:09');
INSERT INTO `career_paths_users` (`career_paths_id`, `user_id`, `created_at`) VALUES (2, 88, '1972-01-08 21:44:35');
INSERT INTO `career_paths_users` (`career_paths_id`, `user_id`, `created_at`) VALUES (2, 91, '2017-06-07 09:01:32');
INSERT INTO `career_paths_users` (`career_paths_id`, `user_id`, `created_at`) VALUES (2, 100, '1981-03-25 10:45:56');
INSERT INTO `career_paths_users` (`career_paths_id`, `user_id`, `created_at`) VALUES (3, 1, '1980-05-07 07:03:01');
INSERT INTO `career_paths_users` (`career_paths_id`, `user_id`, `created_at`) VALUES (3, 10, '2004-10-10 11:08:50');
INSERT INTO `career_paths_users` (`career_paths_id`, `user_id`, `created_at`) VALUES (3, 12, '1978-01-18 16:01:14');
INSERT INTO `career_paths_users` (`career_paths_id`, `user_id`, `created_at`) VALUES (3, 13, '1977-10-13 03:14:19');
INSERT INTO `career_paths_users` (`career_paths_id`, `user_id`, `created_at`) VALUES (3, 14, '1972-03-19 11:21:48');
INSERT INTO `career_paths_users` (`career_paths_id`, `user_id`, `created_at`) VALUES (3, 16, '1996-12-27 06:01:38');
INSERT INTO `career_paths_users` (`career_paths_id`, `user_id`, `created_at`) VALUES (3, 19, '1991-10-29 04:32:50');
INSERT INTO `career_paths_users` (`career_paths_id`, `user_id`, `created_at`) VALUES (3, 22, '2012-01-30 12:57:53');
INSERT INTO `career_paths_users` (`career_paths_id`, `user_id`, `created_at`) VALUES (3, 25, '1990-05-05 02:05:43');
INSERT INTO `career_paths_users` (`career_paths_id`, `user_id`, `created_at`) VALUES (3, 35, '1979-11-12 06:52:22');
INSERT INTO `career_paths_users` (`career_paths_id`, `user_id`, `created_at`) VALUES (3, 36, '2000-09-14 14:09:38');
INSERT INTO `career_paths_users` (`career_paths_id`, `user_id`, `created_at`) VALUES (3, 37, '2015-08-10 17:18:21');
INSERT INTO `career_paths_users` (`career_paths_id`, `user_id`, `created_at`) VALUES (3, 40, '1991-03-16 11:52:13');
INSERT INTO `career_paths_users` (`career_paths_id`, `user_id`, `created_at`) VALUES (3, 42, '1976-12-25 05:54:12');
INSERT INTO `career_paths_users` (`career_paths_id`, `user_id`, `created_at`) VALUES (3, 43, '1996-10-01 18:29:13');
INSERT INTO `career_paths_users` (`career_paths_id`, `user_id`, `created_at`) VALUES (3, 47, '2009-07-25 23:27:07');
INSERT INTO `career_paths_users` (`career_paths_id`, `user_id`, `created_at`) VALUES (3, 48, '2013-07-04 08:22:46');
INSERT INTO `career_paths_users` (`career_paths_id`, `user_id`, `created_at`) VALUES (3, 61, '2011-06-09 08:38:13');
INSERT INTO `career_paths_users` (`career_paths_id`, `user_id`, `created_at`) VALUES (3, 69, '2019-09-25 23:06:20');
INSERT INTO `career_paths_users` (`career_paths_id`, `user_id`, `created_at`) VALUES (3, 74, '2003-11-16 02:17:45');
INSERT INTO `career_paths_users` (`career_paths_id`, `user_id`, `created_at`) VALUES (3, 80, '1992-02-21 20:11:38');
INSERT INTO `career_paths_users` (`career_paths_id`, `user_id`, `created_at`) VALUES (3, 81, '2008-02-17 20:38:23');
INSERT INTO `career_paths_users` (`career_paths_id`, `user_id`, `created_at`) VALUES (3, 87, '2016-07-13 01:43:43');
INSERT INTO `career_paths_users` (`career_paths_id`, `user_id`, `created_at`) VALUES (3, 88, '1984-06-05 18:20:37');
INSERT INTO `career_paths_users` (`career_paths_id`, `user_id`, `created_at`) VALUES (3, 89, '2006-08-14 04:23:29');
INSERT INTO `career_paths_users` (`career_paths_id`, `user_id`, `created_at`) VALUES (3, 92, '1989-11-27 21:02:35');
INSERT INTO `career_paths_users` (`career_paths_id`, `user_id`, `created_at`) VALUES (3, 96, '1994-03-20 07:44:18');
INSERT INTO `career_paths_users` (`career_paths_id`, `user_id`, `created_at`) VALUES (3, 99, '1976-03-12 01:56:32');
INSERT INTO `career_paths_users` (`career_paths_id`, `user_id`, `created_at`) VALUES (4, 6, '1996-07-10 05:49:56');
INSERT INTO `career_paths_users` (`career_paths_id`, `user_id`, `created_at`) VALUES (4, 9, '2019-10-29 23:06:53');
INSERT INTO `career_paths_users` (`career_paths_id`, `user_id`, `created_at`) VALUES (4, 14, '2011-01-22 01:33:46');
INSERT INTO `career_paths_users` (`career_paths_id`, `user_id`, `created_at`) VALUES (4, 28, '1988-08-07 16:19:16');
INSERT INTO `career_paths_users` (`career_paths_id`, `user_id`, `created_at`) VALUES (4, 38, '2019-08-26 11:12:52');
INSERT INTO `career_paths_users` (`career_paths_id`, `user_id`, `created_at`) VALUES (4, 49, '1971-03-04 12:12:48');
INSERT INTO `career_paths_users` (`career_paths_id`, `user_id`, `created_at`) VALUES (4, 50, '1995-01-14 13:17:13');
INSERT INTO `career_paths_users` (`career_paths_id`, `user_id`, `created_at`) VALUES (4, 51, '1999-08-18 13:24:05');
INSERT INTO `career_paths_users` (`career_paths_id`, `user_id`, `created_at`) VALUES (4, 56, '2014-04-24 05:45:11');
INSERT INTO `career_paths_users` (`career_paths_id`, `user_id`, `created_at`) VALUES (4, 63, '1975-04-29 18:13:25');
INSERT INTO `career_paths_users` (`career_paths_id`, `user_id`, `created_at`) VALUES (4, 66, '1985-03-15 20:36:18');
INSERT INTO `career_paths_users` (`career_paths_id`, `user_id`, `created_at`) VALUES (4, 71, '1988-03-01 07:06:53');
INSERT INTO `career_paths_users` (`career_paths_id`, `user_id`, `created_at`) VALUES (4, 72, '1977-05-07 16:32:41');
INSERT INTO `career_paths_users` (`career_paths_id`, `user_id`, `created_at`) VALUES (4, 86, '1986-07-22 12:54:10');
INSERT INTO `career_paths_users` (`career_paths_id`, `user_id`, `created_at`) VALUES (4, 87, '1994-05-05 10:33:18');
INSERT INTO `career_paths_users` (`career_paths_id`, `user_id`, `created_at`) VALUES (4, 95, '1986-01-30 17:13:00');
INSERT INTO `career_paths_users` (`career_paths_id`, `user_id`, `created_at`) VALUES (5, 4, '2017-05-02 02:38:06');
INSERT INTO `career_paths_users` (`career_paths_id`, `user_id`, `created_at`) VALUES (5, 9, '1992-10-13 14:11:44');
INSERT INTO `career_paths_users` (`career_paths_id`, `user_id`, `created_at`) VALUES (5, 10, '2009-03-05 15:19:36');
INSERT INTO `career_paths_users` (`career_paths_id`, `user_id`, `created_at`) VALUES (5, 11, '2015-10-28 05:27:25');
INSERT INTO `career_paths_users` (`career_paths_id`, `user_id`, `created_at`) VALUES (5, 24, '1985-04-11 15:33:37');
INSERT INTO `career_paths_users` (`career_paths_id`, `user_id`, `created_at`) VALUES (5, 29, '1974-07-30 08:18:33');
INSERT INTO `career_paths_users` (`career_paths_id`, `user_id`, `created_at`) VALUES (5, 33, '1986-08-28 16:23:54');
INSERT INTO `career_paths_users` (`career_paths_id`, `user_id`, `created_at`) VALUES (5, 41, '1986-11-22 17:24:55');
INSERT INTO `career_paths_users` (`career_paths_id`, `user_id`, `created_at`) VALUES (5, 43, '2017-05-03 15:01:30');
INSERT INTO `career_paths_users` (`career_paths_id`, `user_id`, `created_at`) VALUES (5, 56, '2017-12-13 14:34:00');
INSERT INTO `career_paths_users` (`career_paths_id`, `user_id`, `created_at`) VALUES (5, 58, '1989-02-03 08:17:35');
INSERT INTO `career_paths_users` (`career_paths_id`, `user_id`, `created_at`) VALUES (5, 66, '1985-11-22 00:28:29');
INSERT INTO `career_paths_users` (`career_paths_id`, `user_id`, `created_at`) VALUES (5, 76, '1994-03-08 15:22:50');
INSERT INTO `career_paths_users` (`career_paths_id`, `user_id`, `created_at`) VALUES (5, 77, '1988-11-19 06:50:21');
INSERT INTO `career_paths_users` (`career_paths_id`, `user_id`, `created_at`) VALUES (5, 83, '2016-10-21 17:11:08');
INSERT INTO `career_paths_users` (`career_paths_id`, `user_id`, `created_at`) VALUES (5, 95, '1971-05-07 17:01:32');
INSERT INTO `career_paths_users` (`career_paths_id`, `user_id`, `created_at`) VALUES (5, 98, '1981-08-17 05:43:19');
INSERT INTO `career_paths_users` (`career_paths_id`, `user_id`, `created_at`) VALUES (5, 99, '1978-12-15 00:15:39');


#
# TABLE STRUCTURE FOR: course_features
#

DROP TABLE IF EXISTS `course_features`;

CREATE TABLE `course_features` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `feature_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'название особенности',
  PRIMARY KEY (`id`),
  UNIQUE KEY `feature_name` (`feature_name`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

INSERT INTO `course_features` (`id`, `feature_name`) VALUES (3, ' Beginner Friendly');
INSERT INTO `course_features` (`id`, `feature_name`) VALUES (4, ' Intermediate');
INSERT INTO `course_features` (`id`, `feature_name`) VALUES (1, ' Most Popular');
INSERT INTO `course_features` (`id`, `feature_name`) VALUES (2, 'New');


#
# TABLE STRUCTURE FOR: courses
#

DROP TABLE IF EXISTS `courses`;

CREATE TABLE `courses` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'идентификатор курса',
  `course_name` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'название курса',
  `course_length_hours` int(10) unsigned NOT NULL,
  `career_path_id` int(10) unsigned NOT NULL,
  `language_id` int(10) unsigned NOT NULL,
  `subject_id` int(10) unsigned NOT NULL DEFAULT 1,
  `feature` int(10) unsigned NOT NULL,
  `created_at` datetime DEFAULT current_timestamp() COMMENT 'время создания строки',
  `updated_at` datetime DEFAULT current_timestamp() ON UPDATE current_timestamp() COMMENT 'время обновления строки',
  PRIMARY KEY (`id`),
  UNIQUE KEY `course_name` (`course_name`)
) ENGINE=InnoDB AUTO_INCREMENT=101 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

INSERT INTO `courses` (`id`, `course_name`, `course_length_hours`, `career_path_id`, `language_id`, `subject_id`, `feature`, `created_at`, `updated_at`) VALUES (1, 'voluptas', 5, 2, 10, 1, 4, '1974-04-16 06:55:48', '1990-10-31 04:10:33');
INSERT INTO `courses` (`id`, `course_name`, `course_length_hours`, `career_path_id`, `language_id`, `subject_id`, `feature`, `created_at`, `updated_at`) VALUES (2, 'architecto', 50, 5, 7, 7, 1, '2014-05-27 12:41:42', '1998-09-08 23:37:37');
INSERT INTO `courses` (`id`, `course_name`, `course_length_hours`, `career_path_id`, `language_id`, `subject_id`, `feature`, `created_at`, `updated_at`) VALUES (3, 'perferendis', 4, 3, 7, 7, 2, '1982-05-11 21:14:52', '1983-06-23 21:23:35');
INSERT INTO `courses` (`id`, `course_name`, `course_length_hours`, `career_path_id`, `language_id`, `subject_id`, `feature`, `created_at`, `updated_at`) VALUES (4, 'maiores', 27, 2, 7, 6, 1, '1982-10-25 16:55:14', '2019-06-21 13:12:47');
INSERT INTO `courses` (`id`, `course_name`, `course_length_hours`, `career_path_id`, `language_id`, `subject_id`, `feature`, `created_at`, `updated_at`) VALUES (5, 'sapiente', 9, 4, 14, 4, 1, '1991-08-12 19:02:53', '1997-06-11 15:18:09');
INSERT INTO `courses` (`id`, `course_name`, `course_length_hours`, `career_path_id`, `language_id`, `subject_id`, `feature`, `created_at`, `updated_at`) VALUES (6, 'maxime', 50, 5, 5, 1, 2, '2010-11-16 13:45:10', '2002-03-01 23:47:11');
INSERT INTO `courses` (`id`, `course_name`, `course_length_hours`, `career_path_id`, `language_id`, `subject_id`, `feature`, `created_at`, `updated_at`) VALUES (7, 'sed', 26, 2, 10, 7, 3, '2012-08-03 03:12:40', '2012-10-31 03:17:30');
INSERT INTO `courses` (`id`, `course_name`, `course_length_hours`, `career_path_id`, `language_id`, `subject_id`, `feature`, `created_at`, `updated_at`) VALUES (8, 'dicta', 20, 2, 11, 1, 1, '2003-11-02 11:18:16', '2013-10-17 02:39:48');
INSERT INTO `courses` (`id`, `course_name`, `course_length_hours`, `career_path_id`, `language_id`, `subject_id`, `feature`, `created_at`, `updated_at`) VALUES (9, 'placeat', 14, 3, 4, 3, 3, '2003-11-14 06:33:38', '1970-11-26 04:33:07');
INSERT INTO `courses` (`id`, `course_name`, `course_length_hours`, `career_path_id`, `language_id`, `subject_id`, `feature`, `created_at`, `updated_at`) VALUES (10, 'inventore', 18, 2, 4, 1, 3, '1976-10-31 02:19:35', '1972-11-09 09:25:55');
INSERT INTO `courses` (`id`, `course_name`, `course_length_hours`, `career_path_id`, `language_id`, `subject_id`, `feature`, `created_at`, `updated_at`) VALUES (11, 'qui', 48, 4, 11, 6, 4, '2009-01-26 07:42:24', '1990-12-06 19:27:15');
INSERT INTO `courses` (`id`, `course_name`, `course_length_hours`, `career_path_id`, `language_id`, `subject_id`, `feature`, `created_at`, `updated_at`) VALUES (12, 'dolorem', 27, 3, 7, 1, 2, '2009-10-25 13:21:04', '1973-12-13 22:10:32');
INSERT INTO `courses` (`id`, `course_name`, `course_length_hours`, `career_path_id`, `language_id`, `subject_id`, `feature`, `created_at`, `updated_at`) VALUES (13, 'modi', 49, 3, 7, 7, 3, '1990-07-25 22:57:27', '1996-09-18 09:25:51');
INSERT INTO `courses` (`id`, `course_name`, `course_length_hours`, `career_path_id`, `language_id`, `subject_id`, `feature`, `created_at`, `updated_at`) VALUES (14, 'reprehenderit', 28, 2, 4, 1, 2, '2003-04-24 09:14:26', '1979-01-15 09:04:04');
INSERT INTO `courses` (`id`, `course_name`, `course_length_hours`, `career_path_id`, `language_id`, `subject_id`, `feature`, `created_at`, `updated_at`) VALUES (15, 'mollitia', 22, 5, 10, 7, 4, '1984-03-30 17:20:14', '2008-06-21 12:48:57');
INSERT INTO `courses` (`id`, `course_name`, `course_length_hours`, `career_path_id`, `language_id`, `subject_id`, `feature`, `created_at`, `updated_at`) VALUES (16, 'officiis', 37, 3, 13, 2, 3, '2004-12-12 09:50:43', '1973-05-13 08:07:25');
INSERT INTO `courses` (`id`, `course_name`, `course_length_hours`, `career_path_id`, `language_id`, `subject_id`, `feature`, `created_at`, `updated_at`) VALUES (17, 'ut', 29, 5, 8, 4, 1, '1994-04-18 17:05:45', '1980-08-26 19:24:56');
INSERT INTO `courses` (`id`, `course_name`, `course_length_hours`, `career_path_id`, `language_id`, `subject_id`, `feature`, `created_at`, `updated_at`) VALUES (18, 'repudiandae', 2, 5, 8, 2, 1, '1998-07-31 17:39:07', '1971-09-15 17:15:52');
INSERT INTO `courses` (`id`, `course_name`, `course_length_hours`, `career_path_id`, `language_id`, `subject_id`, `feature`, `created_at`, `updated_at`) VALUES (19, 'alias', 46, 3, 9, 3, 4, '1991-11-17 07:23:02', '1973-11-11 17:26:34');
INSERT INTO `courses` (`id`, `course_name`, `course_length_hours`, `career_path_id`, `language_id`, `subject_id`, `feature`, `created_at`, `updated_at`) VALUES (20, 'et', 23, 2, 1, 6, 4, '1971-05-16 14:53:07', '2014-12-19 23:31:07');
INSERT INTO `courses` (`id`, `course_name`, `course_length_hours`, `career_path_id`, `language_id`, `subject_id`, `feature`, `created_at`, `updated_at`) VALUES (21, 'repellendus', 40, 3, 12, 6, 1, '2002-06-23 08:27:29', '2017-10-04 14:24:53');
INSERT INTO `courses` (`id`, `course_name`, `course_length_hours`, `career_path_id`, `language_id`, `subject_id`, `feature`, `created_at`, `updated_at`) VALUES (22, 'beatae', 9, 4, 1, 4, 2, '2000-02-25 13:38:08', '1972-07-06 00:39:27');
INSERT INTO `courses` (`id`, `course_name`, `course_length_hours`, `career_path_id`, `language_id`, `subject_id`, `feature`, `created_at`, `updated_at`) VALUES (23, 'voluptate', 12, 1, 13, 2, 2, '2013-07-11 01:34:40', '2005-07-03 11:13:17');
INSERT INTO `courses` (`id`, `course_name`, `course_length_hours`, `career_path_id`, `language_id`, `subject_id`, `feature`, `created_at`, `updated_at`) VALUES (24, 'aut', 5, 2, 4, 2, 3, '1975-01-20 09:30:54', '2006-07-05 12:30:20');
INSERT INTO `courses` (`id`, `course_name`, `course_length_hours`, `career_path_id`, `language_id`, `subject_id`, `feature`, `created_at`, `updated_at`) VALUES (25, 'nulla', 45, 5, 7, 1, 3, '2003-04-04 08:45:59', '2012-09-09 22:19:21');
INSERT INTO `courses` (`id`, `course_name`, `course_length_hours`, `career_path_id`, `language_id`, `subject_id`, `feature`, `created_at`, `updated_at`) VALUES (26, 'illum', 49, 4, 2, 1, 4, '2002-05-06 06:26:46', '1988-06-08 15:41:44');
INSERT INTO `courses` (`id`, `course_name`, `course_length_hours`, `career_path_id`, `language_id`, `subject_id`, `feature`, `created_at`, `updated_at`) VALUES (27, 'quod', 24, 3, 1, 4, 1, '1980-05-31 02:45:49', '1990-11-27 14:00:27');
INSERT INTO `courses` (`id`, `course_name`, `course_length_hours`, `career_path_id`, `language_id`, `subject_id`, `feature`, `created_at`, `updated_at`) VALUES (28, 'dignissimos', 24, 4, 9, 3, 2, '1987-03-24 19:14:39', '2012-12-07 23:36:24');
INSERT INTO `courses` (`id`, `course_name`, `course_length_hours`, `career_path_id`, `language_id`, `subject_id`, `feature`, `created_at`, `updated_at`) VALUES (29, 'temporibus', 47, 3, 9, 1, 2, '1970-07-19 20:07:00', '2013-04-30 07:34:18');
INSERT INTO `courses` (`id`, `course_name`, `course_length_hours`, `career_path_id`, `language_id`, `subject_id`, `feature`, `created_at`, `updated_at`) VALUES (30, 'aliquid', 25, 5, 6, 6, 4, '2017-09-08 22:06:01', '1976-10-01 05:12:25');
INSERT INTO `courses` (`id`, `course_name`, `course_length_hours`, `career_path_id`, `language_id`, `subject_id`, `feature`, `created_at`, `updated_at`) VALUES (31, 'magni', 22, 5, 7, 2, 4, '1970-12-28 07:37:07', '2012-01-27 10:29:33');
INSERT INTO `courses` (`id`, `course_name`, `course_length_hours`, `career_path_id`, `language_id`, `subject_id`, `feature`, `created_at`, `updated_at`) VALUES (32, 'enim', 23, 4, 11, 6, 4, '1986-03-01 18:27:25', '1993-06-21 05:38:47');
INSERT INTO `courses` (`id`, `course_name`, `course_length_hours`, `career_path_id`, `language_id`, `subject_id`, `feature`, `created_at`, `updated_at`) VALUES (33, 'eum', 35, 2, 13, 3, 2, '1994-02-08 04:36:46', '1982-01-26 21:47:56');
INSERT INTO `courses` (`id`, `course_name`, `course_length_hours`, `career_path_id`, `language_id`, `subject_id`, `feature`, `created_at`, `updated_at`) VALUES (34, 'a', 50, 5, 9, 2, 4, '1983-09-10 10:26:07', '1975-01-29 04:12:42');
INSERT INTO `courses` (`id`, `course_name`, `course_length_hours`, `career_path_id`, `language_id`, `subject_id`, `feature`, `created_at`, `updated_at`) VALUES (35, 'quibusdam', 25, 5, 12, 6, 1, '1976-02-09 12:25:27', '2016-06-13 10:36:01');
INSERT INTO `courses` (`id`, `course_name`, `course_length_hours`, `career_path_id`, `language_id`, `subject_id`, `feature`, `created_at`, `updated_at`) VALUES (36, 'tempore', 33, 3, 9, 4, 1, '1981-05-27 13:46:04', '1996-03-09 08:09:55');
INSERT INTO `courses` (`id`, `course_name`, `course_length_hours`, `career_path_id`, `language_id`, `subject_id`, `feature`, `created_at`, `updated_at`) VALUES (37, 'est', 16, 3, 11, 6, 1, '1991-05-03 21:03:52', '2019-09-02 17:58:15');
INSERT INTO `courses` (`id`, `course_name`, `course_length_hours`, `career_path_id`, `language_id`, `subject_id`, `feature`, `created_at`, `updated_at`) VALUES (38, 'perspiciatis', 5, 1, 11, 2, 2, '2016-10-22 08:50:14', '2006-05-27 18:26:08');
INSERT INTO `courses` (`id`, `course_name`, `course_length_hours`, `career_path_id`, `language_id`, `subject_id`, `feature`, `created_at`, `updated_at`) VALUES (39, 'at', 3, 2, 11, 7, 3, '1973-09-19 11:07:22', '2003-03-17 21:46:07');
INSERT INTO `courses` (`id`, `course_name`, `course_length_hours`, `career_path_id`, `language_id`, `subject_id`, `feature`, `created_at`, `updated_at`) VALUES (40, 'suscipit', 6, 1, 13, 5, 3, '1988-09-27 01:00:48', '1973-03-28 12:46:33');
INSERT INTO `courses` (`id`, `course_name`, `course_length_hours`, `career_path_id`, `language_id`, `subject_id`, `feature`, `created_at`, `updated_at`) VALUES (41, 'consequatur', 42, 4, 2, 1, 3, '1977-08-31 01:34:09', '1980-02-12 05:06:05');
INSERT INTO `courses` (`id`, `course_name`, `course_length_hours`, `career_path_id`, `language_id`, `subject_id`, `feature`, `created_at`, `updated_at`) VALUES (42, 'voluptatem', 38, 4, 13, 6, 4, '1991-01-23 03:35:14', '1982-10-25 23:29:17');
INSERT INTO `courses` (`id`, `course_name`, `course_length_hours`, `career_path_id`, `language_id`, `subject_id`, `feature`, `created_at`, `updated_at`) VALUES (43, 'vero', 44, 4, 1, 1, 2, '2019-04-19 10:26:30', '1975-10-28 20:57:00');
INSERT INTO `courses` (`id`, `course_name`, `course_length_hours`, `career_path_id`, `language_id`, `subject_id`, `feature`, `created_at`, `updated_at`) VALUES (44, 'itaque', 21, 4, 11, 2, 1, '2015-05-05 05:37:30', '2011-11-10 04:12:48');
INSERT INTO `courses` (`id`, `course_name`, `course_length_hours`, `career_path_id`, `language_id`, `subject_id`, `feature`, `created_at`, `updated_at`) VALUES (45, 'sunt', 29, 2, 7, 5, 3, '2003-06-29 00:52:10', '2013-10-13 20:53:25');
INSERT INTO `courses` (`id`, `course_name`, `course_length_hours`, `career_path_id`, `language_id`, `subject_id`, `feature`, `created_at`, `updated_at`) VALUES (46, 'velit', 34, 5, 7, 7, 3, '1972-09-04 06:09:52', '1986-10-22 13:49:34');
INSERT INTO `courses` (`id`, `course_name`, `course_length_hours`, `career_path_id`, `language_id`, `subject_id`, `feature`, `created_at`, `updated_at`) VALUES (47, 'recusandae', 37, 3, 5, 6, 1, '1999-02-09 05:00:35', '1975-01-09 16:45:55');
INSERT INTO `courses` (`id`, `course_name`, `course_length_hours`, `career_path_id`, `language_id`, `subject_id`, `feature`, `created_at`, `updated_at`) VALUES (48, 'illo', 44, 3, 1, 7, 2, '1977-10-19 12:23:37', '1998-04-05 02:12:10');
INSERT INTO `courses` (`id`, `course_name`, `course_length_hours`, `career_path_id`, `language_id`, `subject_id`, `feature`, `created_at`, `updated_at`) VALUES (49, 'ad', 35, 5, 14, 3, 1, '2010-01-14 01:42:32', '1998-10-29 01:35:09');
INSERT INTO `courses` (`id`, `course_name`, `course_length_hours`, `career_path_id`, `language_id`, `subject_id`, `feature`, `created_at`, `updated_at`) VALUES (50, 'omnis', 9, 2, 4, 4, 4, '2014-08-07 04:32:19', '1977-11-02 01:44:24');
INSERT INTO `courses` (`id`, `course_name`, `course_length_hours`, `career_path_id`, `language_id`, `subject_id`, `feature`, `created_at`, `updated_at`) VALUES (51, 'quis', 45, 1, 1, 5, 1, '1993-04-01 20:54:55', '1997-01-11 08:38:12');
INSERT INTO `courses` (`id`, `course_name`, `course_length_hours`, `career_path_id`, `language_id`, `subject_id`, `feature`, `created_at`, `updated_at`) VALUES (52, 'necessitatibus', 37, 1, 8, 1, 3, '2013-01-20 05:54:45', '1991-03-17 10:51:14');
INSERT INTO `courses` (`id`, `course_name`, `course_length_hours`, `career_path_id`, `language_id`, `subject_id`, `feature`, `created_at`, `updated_at`) VALUES (53, 'eos', 14, 2, 11, 3, 2, '2019-03-03 11:37:51', '2002-01-01 20:39:18');
INSERT INTO `courses` (`id`, `course_name`, `course_length_hours`, `career_path_id`, `language_id`, `subject_id`, `feature`, `created_at`, `updated_at`) VALUES (54, 'asperiores', 12, 3, 7, 5, 1, '2011-11-16 11:19:58', '2007-12-12 05:19:54');
INSERT INTO `courses` (`id`, `course_name`, `course_length_hours`, `career_path_id`, `language_id`, `subject_id`, `feature`, `created_at`, `updated_at`) VALUES (55, 'quia', 19, 3, 1, 7, 1, '2011-01-22 11:06:40', '2012-12-11 09:42:54');
INSERT INTO `courses` (`id`, `course_name`, `course_length_hours`, `career_path_id`, `language_id`, `subject_id`, `feature`, `created_at`, `updated_at`) VALUES (56, 'pariatur', 50, 1, 4, 3, 4, '1995-06-30 23:39:57', '2014-03-19 18:05:20');
INSERT INTO `courses` (`id`, `course_name`, `course_length_hours`, `career_path_id`, `language_id`, `subject_id`, `feature`, `created_at`, `updated_at`) VALUES (57, 'exercitationem', 12, 4, 13, 4, 4, '1973-02-14 15:14:45', '1999-01-09 15:12:37');
INSERT INTO `courses` (`id`, `course_name`, `course_length_hours`, `career_path_id`, `language_id`, `subject_id`, `feature`, `created_at`, `updated_at`) VALUES (58, 'sit', 37, 3, 2, 1, 4, '2008-06-24 21:11:38', '1971-01-12 23:15:13');
INSERT INTO `courses` (`id`, `course_name`, `course_length_hours`, `career_path_id`, `language_id`, `subject_id`, `feature`, `created_at`, `updated_at`) VALUES (59, 'ducimus', 50, 4, 1, 3, 3, '1997-05-25 22:21:03', '1972-12-18 02:12:52');
INSERT INTO `courses` (`id`, `course_name`, `course_length_hours`, `career_path_id`, `language_id`, `subject_id`, `feature`, `created_at`, `updated_at`) VALUES (60, 'quae', 47, 1, 10, 7, 3, '1977-11-10 09:34:00', '2002-02-05 22:23:13');
INSERT INTO `courses` (`id`, `course_name`, `course_length_hours`, `career_path_id`, `language_id`, `subject_id`, `feature`, `created_at`, `updated_at`) VALUES (61, 'cum', 24, 4, 2, 2, 3, '1980-07-15 08:40:12', '1986-02-07 10:43:50');
INSERT INTO `courses` (`id`, `course_name`, `course_length_hours`, `career_path_id`, `language_id`, `subject_id`, `feature`, `created_at`, `updated_at`) VALUES (62, 'ipsa', 47, 3, 4, 3, 3, '2015-02-23 09:40:34', '1987-12-25 03:40:20');
INSERT INTO `courses` (`id`, `course_name`, `course_length_hours`, `career_path_id`, `language_id`, `subject_id`, `feature`, `created_at`, `updated_at`) VALUES (63, 'earum', 39, 2, 9, 6, 3, '2014-03-07 12:27:49', '1979-11-02 18:04:48');
INSERT INTO `courses` (`id`, `course_name`, `course_length_hours`, `career_path_id`, `language_id`, `subject_id`, `feature`, `created_at`, `updated_at`) VALUES (64, 'quasi', 19, 2, 8, 3, 2, '1981-09-05 18:20:12', '1999-04-16 00:07:48');
INSERT INTO `courses` (`id`, `course_name`, `course_length_hours`, `career_path_id`, `language_id`, `subject_id`, `feature`, `created_at`, `updated_at`) VALUES (65, 'quidem', 39, 3, 3, 6, 2, '2004-12-24 22:36:26', '1989-01-04 18:05:43');
INSERT INTO `courses` (`id`, `course_name`, `course_length_hours`, `career_path_id`, `language_id`, `subject_id`, `feature`, `created_at`, `updated_at`) VALUES (66, 'laboriosam', 16, 3, 1, 7, 4, '1982-07-11 05:11:57', '1973-04-21 18:43:34');
INSERT INTO `courses` (`id`, `course_name`, `course_length_hours`, `career_path_id`, `language_id`, `subject_id`, `feature`, `created_at`, `updated_at`) VALUES (67, 'sint', 9, 3, 4, 3, 1, '2017-04-03 16:21:01', '2012-04-10 05:30:31');
INSERT INTO `courses` (`id`, `course_name`, `course_length_hours`, `career_path_id`, `language_id`, `subject_id`, `feature`, `created_at`, `updated_at`) VALUES (68, 'totam', 10, 2, 9, 1, 4, '1985-03-18 02:30:37', '2006-06-30 08:06:06');
INSERT INTO `courses` (`id`, `course_name`, `course_length_hours`, `career_path_id`, `language_id`, `subject_id`, `feature`, `created_at`, `updated_at`) VALUES (69, 'quam', 30, 3, 8, 4, 2, '1990-10-16 01:30:02', '1991-04-09 06:31:59');
INSERT INTO `courses` (`id`, `course_name`, `course_length_hours`, `career_path_id`, `language_id`, `subject_id`, `feature`, `created_at`, `updated_at`) VALUES (70, 'consequuntur', 48, 2, 5, 7, 4, '2009-11-27 19:32:27', '1990-03-09 04:13:48');
INSERT INTO `courses` (`id`, `course_name`, `course_length_hours`, `career_path_id`, `language_id`, `subject_id`, `feature`, `created_at`, `updated_at`) VALUES (71, 'soluta', 25, 1, 2, 3, 4, '1990-08-25 10:42:35', '1993-04-17 13:51:52');
INSERT INTO `courses` (`id`, `course_name`, `course_length_hours`, `career_path_id`, `language_id`, `subject_id`, `feature`, `created_at`, `updated_at`) VALUES (72, 'non', 2, 2, 4, 6, 2, '1995-07-16 19:15:00', '2008-02-26 12:24:13');
INSERT INTO `courses` (`id`, `course_name`, `course_length_hours`, `career_path_id`, `language_id`, `subject_id`, `feature`, `created_at`, `updated_at`) VALUES (73, 'voluptates', 19, 4, 12, 3, 4, '2009-07-12 09:25:41', '2001-01-26 22:16:37');
INSERT INTO `courses` (`id`, `course_name`, `course_length_hours`, `career_path_id`, `language_id`, `subject_id`, `feature`, `created_at`, `updated_at`) VALUES (74, 'facilis', 3, 4, 14, 6, 3, '2005-05-18 23:54:40', '2010-06-17 11:27:10');
INSERT INTO `courses` (`id`, `course_name`, `course_length_hours`, `career_path_id`, `language_id`, `subject_id`, `feature`, `created_at`, `updated_at`) VALUES (75, 'nemo', 27, 3, 10, 3, 2, '1999-09-18 04:59:36', '2010-03-21 09:00:21');
INSERT INTO `courses` (`id`, `course_name`, `course_length_hours`, `career_path_id`, `language_id`, `subject_id`, `feature`, `created_at`, `updated_at`) VALUES (76, 'impedit', 6, 5, 9, 6, 2, '2005-08-02 17:13:20', '1986-10-12 20:56:37');
INSERT INTO `courses` (`id`, `course_name`, `course_length_hours`, `career_path_id`, `language_id`, `subject_id`, `feature`, `created_at`, `updated_at`) VALUES (77, 'praesentium', 28, 2, 7, 2, 3, '1974-09-28 10:23:11', '2010-10-17 02:12:55');
INSERT INTO `courses` (`id`, `course_name`, `course_length_hours`, `career_path_id`, `language_id`, `subject_id`, `feature`, `created_at`, `updated_at`) VALUES (78, 'autem', 2, 4, 10, 7, 4, '1981-07-20 02:33:38', '1987-01-10 13:56:21');
INSERT INTO `courses` (`id`, `course_name`, `course_length_hours`, `career_path_id`, `language_id`, `subject_id`, `feature`, `created_at`, `updated_at`) VALUES (79, 'saepe', 42, 2, 13, 3, 2, '1996-03-30 16:50:30', '2011-05-31 13:14:47');
INSERT INTO `courses` (`id`, `course_name`, `course_length_hours`, `career_path_id`, `language_id`, `subject_id`, `feature`, `created_at`, `updated_at`) VALUES (80, 'odio', 21, 5, 4, 4, 3, '1993-01-15 15:01:09', '2010-03-15 19:02:09');
INSERT INTO `courses` (`id`, `course_name`, `course_length_hours`, `career_path_id`, `language_id`, `subject_id`, `feature`, `created_at`, `updated_at`) VALUES (81, 'ullam', 32, 3, 11, 5, 1, '2000-12-10 10:21:37', '1971-07-13 01:41:56');
INSERT INTO `courses` (`id`, `course_name`, `course_length_hours`, `career_path_id`, `language_id`, `subject_id`, `feature`, `created_at`, `updated_at`) VALUES (82, 'dolor', 48, 4, 8, 6, 4, '2007-08-05 21:38:45', '1971-11-20 19:41:34');
INSERT INTO `courses` (`id`, `course_name`, `course_length_hours`, `career_path_id`, `language_id`, `subject_id`, `feature`, `created_at`, `updated_at`) VALUES (83, 'blanditiis', 23, 1, 14, 5, 3, '2014-06-07 08:13:18', '1979-03-07 19:51:03');
INSERT INTO `courses` (`id`, `course_name`, `course_length_hours`, `career_path_id`, `language_id`, `subject_id`, `feature`, `created_at`, `updated_at`) VALUES (84, 'dolores', 32, 5, 10, 3, 3, '1978-04-07 01:29:51', '1973-02-26 06:19:43');
INSERT INTO `courses` (`id`, `course_name`, `course_length_hours`, `career_path_id`, `language_id`, `subject_id`, `feature`, `created_at`, `updated_at`) VALUES (85, 'voluptatum', 9, 2, 14, 3, 2, '1983-04-14 12:31:57', '1995-01-27 01:05:42');
INSERT INTO `courses` (`id`, `course_name`, `course_length_hours`, `career_path_id`, `language_id`, `subject_id`, `feature`, `created_at`, `updated_at`) VALUES (86, 'rem', 23, 1, 3, 7, 3, '1973-02-20 05:50:39', '1995-01-22 20:18:24');
INSERT INTO `courses` (`id`, `course_name`, `course_length_hours`, `career_path_id`, `language_id`, `subject_id`, `feature`, `created_at`, `updated_at`) VALUES (87, 'similique', 11, 3, 10, 1, 1, '1983-10-13 18:59:05', '1982-01-13 11:06:50');
INSERT INTO `courses` (`id`, `course_name`, `course_length_hours`, `career_path_id`, `language_id`, `subject_id`, `feature`, `created_at`, `updated_at`) VALUES (88, 'ex', 25, 3, 8, 4, 1, '1977-12-05 07:11:50', '2003-05-19 22:30:07');
INSERT INTO `courses` (`id`, `course_name`, `course_length_hours`, `career_path_id`, `language_id`, `subject_id`, `feature`, `created_at`, `updated_at`) VALUES (89, 'eius', 5, 5, 9, 1, 3, '1974-07-07 14:41:13', '2015-06-24 01:43:33');
INSERT INTO `courses` (`id`, `course_name`, `course_length_hours`, `career_path_id`, `language_id`, `subject_id`, `feature`, `created_at`, `updated_at`) VALUES (90, 'iure', 2, 5, 12, 5, 2, '1979-10-28 11:16:14', '1976-12-10 23:01:06');
INSERT INTO `courses` (`id`, `course_name`, `course_length_hours`, `career_path_id`, `language_id`, `subject_id`, `feature`, `created_at`, `updated_at`) VALUES (91, 'quo', 38, 1, 8, 1, 3, '1988-01-23 04:36:29', '1985-04-14 19:52:38');
INSERT INTO `courses` (`id`, `course_name`, `course_length_hours`, `career_path_id`, `language_id`, `subject_id`, `feature`, `created_at`, `updated_at`) VALUES (92, 'deleniti', 15, 2, 9, 5, 1, '1997-07-22 16:07:37', '1993-10-13 12:15:43');
INSERT INTO `courses` (`id`, `course_name`, `course_length_hours`, `career_path_id`, `language_id`, `subject_id`, `feature`, `created_at`, `updated_at`) VALUES (93, 'ab', 18, 1, 3, 2, 1, '1995-03-28 10:30:36', '2017-12-22 11:19:59');
INSERT INTO `courses` (`id`, `course_name`, `course_length_hours`, `career_path_id`, `language_id`, `subject_id`, `feature`, `created_at`, `updated_at`) VALUES (94, 'odit', 20, 2, 9, 4, 1, '1977-11-21 22:08:13', '1989-01-04 02:31:41');
INSERT INTO `courses` (`id`, `course_name`, `course_length_hours`, `career_path_id`, `language_id`, `subject_id`, `feature`, `created_at`, `updated_at`) VALUES (95, 'unde', 10, 3, 13, 2, 4, '2010-10-15 05:16:15', '2004-05-12 22:44:06');
INSERT INTO `courses` (`id`, `course_name`, `course_length_hours`, `career_path_id`, `language_id`, `subject_id`, `feature`, `created_at`, `updated_at`) VALUES (96, 'fuga', 5, 4, 14, 1, 4, '2018-03-31 15:24:13', '1975-01-12 19:19:44');
INSERT INTO `courses` (`id`, `course_name`, `course_length_hours`, `career_path_id`, `language_id`, `subject_id`, `feature`, `created_at`, `updated_at`) VALUES (97, 'adipisci', 7, 5, 4, 7, 2, '1990-02-01 11:33:28', '2021-02-26 23:03:59');
INSERT INTO `courses` (`id`, `course_name`, `course_length_hours`, `career_path_id`, `language_id`, `subject_id`, `feature`, `created_at`, `updated_at`) VALUES (98, 'officia', 11, 2, 11, 3, 4, '2016-05-25 17:27:04', '1990-10-07 09:47:26');
INSERT INTO `courses` (`id`, `course_name`, `course_length_hours`, `career_path_id`, `language_id`, `subject_id`, `feature`, `created_at`, `updated_at`) VALUES (99, 'excepturi', 23, 4, 14, 1, 1, '1997-03-11 19:56:54', '2014-11-29 12:53:31');
INSERT INTO `courses` (`id`, `course_name`, `course_length_hours`, `career_path_id`, `language_id`, `subject_id`, `feature`, `created_at`, `updated_at`) VALUES (100, 'expedita', 4, 3, 13, 2, 4, '1975-03-20 07:37:17', '1998-09-26 18:54:45');


#
# TABLE STRUCTURE FOR: courses_users
#

DROP TABLE IF EXISTS `courses_users`;

CREATE TABLE `courses_users` (
  `course_id` int(10) unsigned NOT NULL COMMENT 'ссылка на курс',
  `user_id` int(10) unsigned NOT NULL COMMENT 'ссылка на пользователя',
  `created_at` datetime DEFAULT current_timestamp() COMMENT 'Время создания строки',
  PRIMARY KEY (`course_id`,`user_id`) COMMENT 'составной первичный ключ'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='ученики курсов, связь между курсами и учениками';

INSERT INTO `courses_users` (`course_id`, `user_id`, `created_at`) VALUES (1, 11, '1971-07-22 00:34:53');
INSERT INTO `courses_users` (`course_id`, `user_id`, `created_at`) VALUES (2, 11, '1977-04-05 21:13:12');
INSERT INTO `courses_users` (`course_id`, `user_id`, `created_at`) VALUES (3, 3, '2012-02-24 14:47:32');
INSERT INTO `courses_users` (`course_id`, `user_id`, `created_at`) VALUES (3, 61, '2010-09-02 23:32:47');
INSERT INTO `courses_users` (`course_id`, `user_id`, `created_at`) VALUES (3, 67, '1992-04-23 18:35:03');
INSERT INTO `courses_users` (`course_id`, `user_id`, `created_at`) VALUES (3, 75, '1984-06-27 12:30:26');
INSERT INTO `courses_users` (`course_id`, `user_id`, `created_at`) VALUES (4, 85, '2020-09-10 17:20:04');
INSERT INTO `courses_users` (`course_id`, `user_id`, `created_at`) VALUES (5, 76, '1978-06-12 21:41:20');
INSERT INTO `courses_users` (`course_id`, `user_id`, `created_at`) VALUES (7, 26, '2010-09-22 07:19:20');
INSERT INTO `courses_users` (`course_id`, `user_id`, `created_at`) VALUES (8, 11, '1980-12-03 14:52:36');
INSERT INTO `courses_users` (`course_id`, `user_id`, `created_at`) VALUES (9, 7, '2017-11-03 01:45:10');
INSERT INTO `courses_users` (`course_id`, `user_id`, `created_at`) VALUES (9, 33, '2012-04-09 20:44:09');
INSERT INTO `courses_users` (`course_id`, `user_id`, `created_at`) VALUES (9, 88, '2006-04-29 21:09:35');
INSERT INTO `courses_users` (`course_id`, `user_id`, `created_at`) VALUES (10, 18, '1989-10-28 10:03:12');
INSERT INTO `courses_users` (`course_id`, `user_id`, `created_at`) VALUES (11, 84, '2000-05-26 10:38:25');
INSERT INTO `courses_users` (`course_id`, `user_id`, `created_at`) VALUES (12, 32, '2006-12-10 09:33:05');
INSERT INTO `courses_users` (`course_id`, `user_id`, `created_at`) VALUES (12, 53, '2008-04-30 09:23:17');
INSERT INTO `courses_users` (`course_id`, `user_id`, `created_at`) VALUES (14, 12, '2001-07-09 19:32:04');
INSERT INTO `courses_users` (`course_id`, `user_id`, `created_at`) VALUES (14, 40, '1989-08-11 22:56:03');
INSERT INTO `courses_users` (`course_id`, `user_id`, `created_at`) VALUES (15, 90, '2018-02-03 00:11:02');
INSERT INTO `courses_users` (`course_id`, `user_id`, `created_at`) VALUES (17, 34, '1988-01-27 01:41:40');
INSERT INTO `courses_users` (`course_id`, `user_id`, `created_at`) VALUES (19, 31, '1980-11-20 14:18:06');
INSERT INTO `courses_users` (`course_id`, `user_id`, `created_at`) VALUES (20, 1, '1993-10-15 07:02:11');
INSERT INTO `courses_users` (`course_id`, `user_id`, `created_at`) VALUES (21, 95, '1974-04-22 18:50:42');
INSERT INTO `courses_users` (`course_id`, `user_id`, `created_at`) VALUES (23, 37, '1990-09-28 05:30:54');
INSERT INTO `courses_users` (`course_id`, `user_id`, `created_at`) VALUES (25, 79, '1980-08-28 06:01:41');
INSERT INTO `courses_users` (`course_id`, `user_id`, `created_at`) VALUES (26, 50, '2003-07-03 09:42:06');
INSERT INTO `courses_users` (`course_id`, `user_id`, `created_at`) VALUES (28, 77, '1998-07-19 22:41:58');
INSERT INTO `courses_users` (`course_id`, `user_id`, `created_at`) VALUES (29, 45, '2009-07-04 04:14:24');
INSERT INTO `courses_users` (`course_id`, `user_id`, `created_at`) VALUES (30, 93, '1971-09-08 00:13:12');
INSERT INTO `courses_users` (`course_id`, `user_id`, `created_at`) VALUES (32, 97, '1974-02-08 05:24:15');
INSERT INTO `courses_users` (`course_id`, `user_id`, `created_at`) VALUES (33, 34, '1979-07-16 22:11:52');
INSERT INTO `courses_users` (`course_id`, `user_id`, `created_at`) VALUES (33, 46, '1980-03-05 11:17:16');
INSERT INTO `courses_users` (`course_id`, `user_id`, `created_at`) VALUES (35, 81, '2003-08-26 18:30:48');
INSERT INTO `courses_users` (`course_id`, `user_id`, `created_at`) VALUES (35, 91, '1983-02-05 22:37:40');
INSERT INTO `courses_users` (`course_id`, `user_id`, `created_at`) VALUES (36, 75, '2013-03-25 12:23:09');
INSERT INTO `courses_users` (`course_id`, `user_id`, `created_at`) VALUES (36, 99, '2002-06-13 17:00:07');
INSERT INTO `courses_users` (`course_id`, `user_id`, `created_at`) VALUES (37, 74, '1987-05-23 05:25:24');
INSERT INTO `courses_users` (`course_id`, `user_id`, `created_at`) VALUES (39, 27, '1985-12-23 16:14:20');
INSERT INTO `courses_users` (`course_id`, `user_id`, `created_at`) VALUES (39, 78, '1995-03-22 11:29:20');
INSERT INTO `courses_users` (`course_id`, `user_id`, `created_at`) VALUES (40, 46, '1994-01-14 17:48:07');
INSERT INTO `courses_users` (`course_id`, `user_id`, `created_at`) VALUES (43, 38, '1976-06-17 15:44:49');
INSERT INTO `courses_users` (`course_id`, `user_id`, `created_at`) VALUES (44, 77, '1983-03-02 21:06:11');
INSERT INTO `courses_users` (`course_id`, `user_id`, `created_at`) VALUES (45, 38, '2008-02-05 01:17:08');
INSERT INTO `courses_users` (`course_id`, `user_id`, `created_at`) VALUES (45, 49, '2016-04-26 20:05:19');
INSERT INTO `courses_users` (`course_id`, `user_id`, `created_at`) VALUES (46, 33, '1981-06-03 06:28:56');
INSERT INTO `courses_users` (`course_id`, `user_id`, `created_at`) VALUES (47, 46, '2003-09-30 14:15:48');
INSERT INTO `courses_users` (`course_id`, `user_id`, `created_at`) VALUES (48, 96, '1981-04-01 05:16:34');
INSERT INTO `courses_users` (`course_id`, `user_id`, `created_at`) VALUES (49, 18, '1996-08-15 05:07:19');
INSERT INTO `courses_users` (`course_id`, `user_id`, `created_at`) VALUES (52, 42, '1990-04-15 11:28:57');
INSERT INTO `courses_users` (`course_id`, `user_id`, `created_at`) VALUES (53, 35, '2007-09-13 15:33:59');
INSERT INTO `courses_users` (`course_id`, `user_id`, `created_at`) VALUES (53, 36, '2016-01-13 16:25:54');
INSERT INTO `courses_users` (`course_id`, `user_id`, `created_at`) VALUES (53, 66, '1981-05-25 06:24:49');
INSERT INTO `courses_users` (`course_id`, `user_id`, `created_at`) VALUES (53, 92, '1971-04-27 22:42:32');
INSERT INTO `courses_users` (`course_id`, `user_id`, `created_at`) VALUES (54, 31, '2003-12-10 23:51:01');
INSERT INTO `courses_users` (`course_id`, `user_id`, `created_at`) VALUES (55, 55, '1985-12-15 06:18:29');
INSERT INTO `courses_users` (`course_id`, `user_id`, `created_at`) VALUES (57, 7, '2006-05-07 15:19:08');
INSERT INTO `courses_users` (`course_id`, `user_id`, `created_at`) VALUES (58, 81, '2007-01-27 23:14:32');
INSERT INTO `courses_users` (`course_id`, `user_id`, `created_at`) VALUES (60, 85, '2014-11-10 16:48:13');
INSERT INTO `courses_users` (`course_id`, `user_id`, `created_at`) VALUES (61, 24, '2012-03-26 17:58:21');
INSERT INTO `courses_users` (`course_id`, `user_id`, `created_at`) VALUES (62, 67, '1987-12-29 04:31:21');
INSERT INTO `courses_users` (`course_id`, `user_id`, `created_at`) VALUES (62, 70, '1990-12-21 15:57:42');
INSERT INTO `courses_users` (`course_id`, `user_id`, `created_at`) VALUES (63, 14, '2020-10-22 16:21:22');
INSERT INTO `courses_users` (`course_id`, `user_id`, `created_at`) VALUES (64, 41, '1982-05-26 05:04:04');
INSERT INTO `courses_users` (`course_id`, `user_id`, `created_at`) VALUES (65, 64, '1972-04-30 22:42:08');
INSERT INTO `courses_users` (`course_id`, `user_id`, `created_at`) VALUES (66, 2, '2015-07-08 07:53:18');
INSERT INTO `courses_users` (`course_id`, `user_id`, `created_at`) VALUES (66, 17, '2018-11-04 20:01:56');
INSERT INTO `courses_users` (`course_id`, `user_id`, `created_at`) VALUES (68, 40, '1971-10-15 22:06:01');
INSERT INTO `courses_users` (`course_id`, `user_id`, `created_at`) VALUES (69, 56, '1984-03-22 01:36:47');
INSERT INTO `courses_users` (`course_id`, `user_id`, `created_at`) VALUES (69, 81, '1998-12-07 03:06:59');
INSERT INTO `courses_users` (`course_id`, `user_id`, `created_at`) VALUES (70, 22, '1983-05-31 09:05:23');
INSERT INTO `courses_users` (`course_id`, `user_id`, `created_at`) VALUES (72, 29, '2002-08-13 15:09:01');
INSERT INTO `courses_users` (`course_id`, `user_id`, `created_at`) VALUES (73, 89, '1970-03-30 20:16:50');
INSERT INTO `courses_users` (`course_id`, `user_id`, `created_at`) VALUES (74, 21, '1992-01-22 23:22:45');
INSERT INTO `courses_users` (`course_id`, `user_id`, `created_at`) VALUES (74, 59, '2015-08-29 08:36:41');
INSERT INTO `courses_users` (`course_id`, `user_id`, `created_at`) VALUES (74, 70, '2020-03-11 20:46:42');
INSERT INTO `courses_users` (`course_id`, `user_id`, `created_at`) VALUES (76, 31, '1990-08-02 08:52:41');
INSERT INTO `courses_users` (`course_id`, `user_id`, `created_at`) VALUES (78, 30, '1980-11-15 17:02:38');
INSERT INTO `courses_users` (`course_id`, `user_id`, `created_at`) VALUES (78, 58, '1984-02-04 18:05:47');
INSERT INTO `courses_users` (`course_id`, `user_id`, `created_at`) VALUES (79, 82, '2013-12-04 20:57:21');
INSERT INTO `courses_users` (`course_id`, `user_id`, `created_at`) VALUES (83, 9, '2018-06-17 23:34:51');
INSERT INTO `courses_users` (`course_id`, `user_id`, `created_at`) VALUES (84, 23, '1973-01-23 15:40:07');
INSERT INTO `courses_users` (`course_id`, `user_id`, `created_at`) VALUES (84, 57, '1981-12-16 03:17:23');
INSERT INTO `courses_users` (`course_id`, `user_id`, `created_at`) VALUES (84, 85, '2015-03-26 15:03:19');
INSERT INTO `courses_users` (`course_id`, `user_id`, `created_at`) VALUES (88, 30, '1970-06-28 11:04:05');
INSERT INTO `courses_users` (`course_id`, `user_id`, `created_at`) VALUES (88, 88, '1980-06-12 04:37:31');
INSERT INTO `courses_users` (`course_id`, `user_id`, `created_at`) VALUES (90, 30, '2011-08-29 09:56:32');
INSERT INTO `courses_users` (`course_id`, `user_id`, `created_at`) VALUES (91, 61, '2019-06-20 13:07:52');
INSERT INTO `courses_users` (`course_id`, `user_id`, `created_at`) VALUES (91, 72, '1981-05-17 01:18:01');
INSERT INTO `courses_users` (`course_id`, `user_id`, `created_at`) VALUES (93, 75, '2005-03-06 08:45:28');
INSERT INTO `courses_users` (`course_id`, `user_id`, `created_at`) VALUES (94, 56, '1985-07-09 23:55:06');
INSERT INTO `courses_users` (`course_id`, `user_id`, `created_at`) VALUES (95, 19, '1996-04-11 20:39:42');
INSERT INTO `courses_users` (`course_id`, `user_id`, `created_at`) VALUES (95, 64, '1992-05-29 14:19:02');
INSERT INTO `courses_users` (`course_id`, `user_id`, `created_at`) VALUES (97, 89, '1987-06-16 04:26:02');
INSERT INTO `courses_users` (`course_id`, `user_id`, `created_at`) VALUES (98, 51, '2019-12-13 05:13:43');
INSERT INTO `courses_users` (`course_id`, `user_id`, `created_at`) VALUES (98, 53, '1997-07-05 05:17:19');
INSERT INTO `courses_users` (`course_id`, `user_id`, `created_at`) VALUES (99, 25, '1976-02-21 21:09:11');
INSERT INTO `courses_users` (`course_id`, `user_id`, `created_at`) VALUES (100, 18, '1989-06-25 13:37:27');
INSERT INTO `courses_users` (`course_id`, `user_id`, `created_at`) VALUES (100, 74, '1988-09-27 17:45:36');


#
# TABLE STRUCTURE FOR: languages
#

DROP TABLE IF EXISTS `languages`;

CREATE TABLE `languages` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'идентификатор строки',
  `language_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'название направления',
  `created_at` datetime DEFAULT current_timestamp() COMMENT 'время создания строки',
  `updated_at` datetime DEFAULT current_timestamp() ON UPDATE current_timestamp() COMMENT 'время обновления строки',
  PRIMARY KEY (`id`),
  UNIQUE KEY `language_name` (`language_name`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

INSERT INTO `languages` (`id`, `language_name`, `created_at`, `updated_at`) VALUES (1, ' Ruby', '2006-03-14 16:39:18', '1970-04-15 17:59:11');
INSERT INTO `languages` (`id`, `language_name`, `created_at`, `updated_at`) VALUES (2, ' Java', '1995-11-16 12:48:10', '1986-10-01 17:20:24');
INSERT INTO `languages` (`id`, `language_name`, `created_at`, `updated_at`) VALUES (3, 'HTML & CSS', '2019-03-03 07:43:43', '1975-10-03 08:12:57');
INSERT INTO `languages` (`id`, `language_name`, `created_at`, `updated_at`) VALUES (4, ' SQL', '2007-05-07 20:48:46', '1971-08-18 12:55:34');
INSERT INTO `languages` (`id`, `language_name`, `created_at`, `updated_at`) VALUES (5, ' Go', '2013-10-21 00:13:20', '1989-03-25 08:18:57');
INSERT INTO `languages` (`id`, `language_name`, `created_at`, `updated_at`) VALUES (6, ' C++', '2004-01-23 13:07:15', '2012-11-21 22:07:29');
INSERT INTO `languages` (`id`, `language_name`, `created_at`, `updated_at`) VALUES (7, ' C#', '1976-08-21 11:35:48', '2003-05-06 19:03:41');
INSERT INTO `languages` (`id`, `language_name`, `created_at`, `updated_at`) VALUES (8, ' Kotlin', '1977-08-10 04:56:24', '2020-11-28 05:26:55');
INSERT INTO `languages` (`id`, `language_name`, `created_at`, `updated_at`) VALUES (9, ' JavaScript', '2004-09-20 15:47:23', '1990-01-17 19:06:30');
INSERT INTO `languages` (`id`, `language_name`, `created_at`, `updated_at`) VALUES (10, ' Bash/Shell', '1983-06-12 11:12:23', '1979-05-12 17:39:27');
INSERT INTO `languages` (`id`, `language_name`, `created_at`, `updated_at`) VALUES (11, ' R', '2014-03-26 23:03:29', '1979-12-21 18:54:56');
INSERT INTO `languages` (`id`, `language_name`, `created_at`, `updated_at`) VALUES (12, ' Swift', '2017-11-25 13:36:58', '1992-12-07 06:31:48');
INSERT INTO `languages` (`id`, `language_name`, `created_at`, `updated_at`) VALUES (13, ' Python', '1971-02-01 01:37:26', '1978-03-26 12:53:20');
INSERT INTO `languages` (`id`, `language_name`, `created_at`, `updated_at`) VALUES (14, ' PHP', '2011-01-20 01:46:50', '2011-05-18 03:01:38');


#
# TABLE STRUCTURE FOR: posts
#

DROP TABLE IF EXISTS `posts`;

CREATE TABLE `posts` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` int(10) unsigned NOT NULL,
  `subject_id` int(10) unsigned NOT NULL,
  `language_id` int(10) unsigned NOT NULL,
  `body` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` datetime DEFAULT current_timestamp(),
  `updated_at` datetime DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=101 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

INSERT INTO `posts` (`id`, `user_id`, `subject_id`, `language_id`, `body`, `created_at`, `updated_at`) VALUES (1, 1, 7, 14, '8475', '1994-06-04 11:02:49', '1999-09-25 03:24:07');
INSERT INTO `posts` (`id`, `user_id`, `subject_id`, `language_id`, `body`, `created_at`, `updated_at`) VALUES (2, 2, 2, 5, '', '1977-09-08 13:26:20', '1970-01-29 16:28:35');
INSERT INTO `posts` (`id`, `user_id`, `subject_id`, `language_id`, `body`, `created_at`, `updated_at`) VALUES (3, 3, 4, 2, '56', '2012-02-02 14:22:23', '2009-03-02 00:16:13');
INSERT INTO `posts` (`id`, `user_id`, `subject_id`, `language_id`, `body`, `created_at`, `updated_at`) VALUES (4, 4, 7, 14, '8', '2007-05-14 04:58:26', '1983-04-30 09:46:23');
INSERT INTO `posts` (`id`, `user_id`, `subject_id`, `language_id`, `body`, `created_at`, `updated_at`) VALUES (5, 5, 1, 12, '', '2006-08-27 07:26:30', '1971-11-04 05:18:22');
INSERT INTO `posts` (`id`, `user_id`, `subject_id`, `language_id`, `body`, `created_at`, `updated_at`) VALUES (6, 6, 1, 10, '90336777', '1989-11-20 13:27:14', '2009-08-30 22:47:52');
INSERT INTO `posts` (`id`, `user_id`, `subject_id`, `language_id`, `body`, `created_at`, `updated_at`) VALUES (7, 7, 4, 4, '497422800', '2002-02-26 20:36:49', '2010-02-19 01:54:11');
INSERT INTO `posts` (`id`, `user_id`, `subject_id`, `language_id`, `body`, `created_at`, `updated_at`) VALUES (8, 8, 5, 12, '12682', '1986-09-10 09:47:47', '1981-05-26 11:42:16');
INSERT INTO `posts` (`id`, `user_id`, `subject_id`, `language_id`, `body`, `created_at`, `updated_at`) VALUES (9, 9, 4, 10, '3718', '1995-09-03 17:06:04', '1991-10-30 08:20:11');
INSERT INTO `posts` (`id`, `user_id`, `subject_id`, `language_id`, `body`, `created_at`, `updated_at`) VALUES (10, 10, 3, 9, '76', '1993-01-06 17:15:44', '1983-06-03 06:41:58');
INSERT INTO `posts` (`id`, `user_id`, `subject_id`, `language_id`, `body`, `created_at`, `updated_at`) VALUES (11, 11, 2, 11, '3', '2009-12-14 11:13:04', '1971-02-01 19:51:36');
INSERT INTO `posts` (`id`, `user_id`, `subject_id`, `language_id`, `body`, `created_at`, `updated_at`) VALUES (12, 12, 5, 13, '6943316', '1989-11-16 22:05:04', '2011-09-25 02:47:11');
INSERT INTO `posts` (`id`, `user_id`, `subject_id`, `language_id`, `body`, `created_at`, `updated_at`) VALUES (13, 13, 3, 10, '296967214', '1972-03-17 03:56:06', '2018-04-13 10:58:56');
INSERT INTO `posts` (`id`, `user_id`, `subject_id`, `language_id`, `body`, `created_at`, `updated_at`) VALUES (14, 14, 3, 6, '739755', '2000-01-04 08:23:32', '1992-12-16 23:20:20');
INSERT INTO `posts` (`id`, `user_id`, `subject_id`, `language_id`, `body`, `created_at`, `updated_at`) VALUES (15, 15, 7, 5, '67', '2010-12-18 10:13:34', '1996-11-04 20:37:02');
INSERT INTO `posts` (`id`, `user_id`, `subject_id`, `language_id`, `body`, `created_at`, `updated_at`) VALUES (16, 16, 5, 9, '74', '1993-12-17 11:46:25', '1986-03-01 01:28:17');
INSERT INTO `posts` (`id`, `user_id`, `subject_id`, `language_id`, `body`, `created_at`, `updated_at`) VALUES (17, 17, 6, 11, '60428', '1971-06-28 00:24:01', '2015-03-04 12:38:29');
INSERT INTO `posts` (`id`, `user_id`, `subject_id`, `language_id`, `body`, `created_at`, `updated_at`) VALUES (18, 18, 6, 7, '713793585', '2002-10-09 01:21:42', '2010-04-06 02:47:44');
INSERT INTO `posts` (`id`, `user_id`, `subject_id`, `language_id`, `body`, `created_at`, `updated_at`) VALUES (19, 19, 7, 5, '482847477', '1990-03-08 19:31:56', '2012-03-28 17:15:41');
INSERT INTO `posts` (`id`, `user_id`, `subject_id`, `language_id`, `body`, `created_at`, `updated_at`) VALUES (20, 20, 3, 4, '', '1988-05-19 22:28:42', '2006-06-06 00:51:42');
INSERT INTO `posts` (`id`, `user_id`, `subject_id`, `language_id`, `body`, `created_at`, `updated_at`) VALUES (21, 21, 4, 9, '46174', '2002-09-23 02:25:50', '1981-01-19 17:08:14');
INSERT INTO `posts` (`id`, `user_id`, `subject_id`, `language_id`, `body`, `created_at`, `updated_at`) VALUES (22, 22, 2, 8, '6827304', '1970-05-27 17:41:02', '2019-01-05 18:22:33');
INSERT INTO `posts` (`id`, `user_id`, `subject_id`, `language_id`, `body`, `created_at`, `updated_at`) VALUES (23, 23, 4, 8, '77', '2006-03-15 05:48:51', '1994-06-20 02:57:08');
INSERT INTO `posts` (`id`, `user_id`, `subject_id`, `language_id`, `body`, `created_at`, `updated_at`) VALUES (24, 24, 5, 9, '75192351', '1979-10-14 17:53:26', '2008-11-13 07:45:00');
INSERT INTO `posts` (`id`, `user_id`, `subject_id`, `language_id`, `body`, `created_at`, `updated_at`) VALUES (25, 25, 1, 10, '', '2002-02-11 02:48:58', '1988-03-28 11:31:03');
INSERT INTO `posts` (`id`, `user_id`, `subject_id`, `language_id`, `body`, `created_at`, `updated_at`) VALUES (26, 26, 7, 14, '60', '1985-06-08 01:31:39', '1996-02-23 21:46:59');
INSERT INTO `posts` (`id`, `user_id`, `subject_id`, `language_id`, `body`, `created_at`, `updated_at`) VALUES (27, 27, 6, 14, '377', '2009-07-08 14:16:53', '2000-11-21 08:22:08');
INSERT INTO `posts` (`id`, `user_id`, `subject_id`, `language_id`, `body`, `created_at`, `updated_at`) VALUES (28, 28, 4, 8, '3091', '1993-03-24 09:39:05', '1982-05-06 14:15:47');
INSERT INTO `posts` (`id`, `user_id`, `subject_id`, `language_id`, `body`, `created_at`, `updated_at`) VALUES (29, 29, 1, 12, '4', '1998-06-01 09:23:39', '1995-11-12 13:43:59');
INSERT INTO `posts` (`id`, `user_id`, `subject_id`, `language_id`, `body`, `created_at`, `updated_at`) VALUES (30, 30, 4, 6, '', '1990-11-18 22:56:25', '1989-03-02 23:36:04');
INSERT INTO `posts` (`id`, `user_id`, `subject_id`, `language_id`, `body`, `created_at`, `updated_at`) VALUES (31, 31, 7, 7, '556', '1984-12-02 06:52:52', '2013-05-01 05:02:23');
INSERT INTO `posts` (`id`, `user_id`, `subject_id`, `language_id`, `body`, `created_at`, `updated_at`) VALUES (32, 32, 7, 6, '8231740', '2004-08-04 21:08:00', '2018-01-20 15:28:50');
INSERT INTO `posts` (`id`, `user_id`, `subject_id`, `language_id`, `body`, `created_at`, `updated_at`) VALUES (33, 33, 6, 9, '248328', '1994-12-22 14:31:18', '1976-06-20 09:11:17');
INSERT INTO `posts` (`id`, `user_id`, `subject_id`, `language_id`, `body`, `created_at`, `updated_at`) VALUES (34, 34, 2, 14, '70', '2006-03-09 19:39:49', '2020-02-12 15:18:48');
INSERT INTO `posts` (`id`, `user_id`, `subject_id`, `language_id`, `body`, `created_at`, `updated_at`) VALUES (35, 35, 7, 13, '484', '2002-06-03 07:37:41', '2017-07-10 09:34:40');
INSERT INTO `posts` (`id`, `user_id`, `subject_id`, `language_id`, `body`, `created_at`, `updated_at`) VALUES (36, 36, 7, 12, '932', '1992-10-11 02:14:47', '1974-01-26 23:11:06');
INSERT INTO `posts` (`id`, `user_id`, `subject_id`, `language_id`, `body`, `created_at`, `updated_at`) VALUES (37, 37, 1, 6, '57', '2013-02-26 10:24:12', '2019-05-02 12:44:32');
INSERT INTO `posts` (`id`, `user_id`, `subject_id`, `language_id`, `body`, `created_at`, `updated_at`) VALUES (38, 38, 7, 13, '49261', '2021-02-19 21:49:47', '1976-08-03 03:54:36');
INSERT INTO `posts` (`id`, `user_id`, `subject_id`, `language_id`, `body`, `created_at`, `updated_at`) VALUES (39, 39, 4, 5, '900065086', '1980-01-08 20:30:13', '1982-09-16 20:22:46');
INSERT INTO `posts` (`id`, `user_id`, `subject_id`, `language_id`, `body`, `created_at`, `updated_at`) VALUES (40, 40, 3, 13, '2', '2005-10-27 18:30:18', '2020-10-26 02:23:39');
INSERT INTO `posts` (`id`, `user_id`, `subject_id`, `language_id`, `body`, `created_at`, `updated_at`) VALUES (41, 41, 7, 5, '9', '1999-06-27 06:24:27', '1996-04-08 10:22:45');
INSERT INTO `posts` (`id`, `user_id`, `subject_id`, `language_id`, `body`, `created_at`, `updated_at`) VALUES (42, 42, 6, 11, '23', '1992-03-21 07:14:09', '2020-04-08 19:40:40');
INSERT INTO `posts` (`id`, `user_id`, `subject_id`, `language_id`, `body`, `created_at`, `updated_at`) VALUES (43, 43, 2, 4, '439377364', '1982-05-12 18:35:14', '1973-08-26 07:49:11');
INSERT INTO `posts` (`id`, `user_id`, `subject_id`, `language_id`, `body`, `created_at`, `updated_at`) VALUES (44, 44, 2, 12, '449', '1986-02-19 16:02:30', '1994-05-03 08:16:49');
INSERT INTO `posts` (`id`, `user_id`, `subject_id`, `language_id`, `body`, `created_at`, `updated_at`) VALUES (45, 45, 1, 3, '100', '2012-11-17 23:34:43', '1996-03-19 09:13:14');
INSERT INTO `posts` (`id`, `user_id`, `subject_id`, `language_id`, `body`, `created_at`, `updated_at`) VALUES (46, 46, 4, 4, '30487', '2002-08-28 02:05:44', '1994-05-01 22:30:41');
INSERT INTO `posts` (`id`, `user_id`, `subject_id`, `language_id`, `body`, `created_at`, `updated_at`) VALUES (47, 47, 4, 14, '380', '2002-01-01 11:59:29', '1981-05-02 11:42:49');
INSERT INTO `posts` (`id`, `user_id`, `subject_id`, `language_id`, `body`, `created_at`, `updated_at`) VALUES (48, 48, 2, 7, '331136', '2020-11-17 19:53:11', '1993-07-23 13:31:55');
INSERT INTO `posts` (`id`, `user_id`, `subject_id`, `language_id`, `body`, `created_at`, `updated_at`) VALUES (49, 49, 1, 12, '6436', '1991-12-29 21:05:41', '1978-07-21 10:56:37');
INSERT INTO `posts` (`id`, `user_id`, `subject_id`, `language_id`, `body`, `created_at`, `updated_at`) VALUES (50, 50, 5, 11, '', '2018-03-21 17:49:33', '1996-10-17 16:02:43');
INSERT INTO `posts` (`id`, `user_id`, `subject_id`, `language_id`, `body`, `created_at`, `updated_at`) VALUES (51, 51, 6, 4, '723733', '1986-05-30 07:49:08', '1989-12-27 05:41:08');
INSERT INTO `posts` (`id`, `user_id`, `subject_id`, `language_id`, `body`, `created_at`, `updated_at`) VALUES (52, 52, 2, 3, '8236700', '1970-08-09 19:07:42', '2013-01-22 16:37:21');
INSERT INTO `posts` (`id`, `user_id`, `subject_id`, `language_id`, `body`, `created_at`, `updated_at`) VALUES (53, 53, 6, 4, '267869487', '2018-12-23 12:41:56', '1970-09-12 08:08:35');
INSERT INTO `posts` (`id`, `user_id`, `subject_id`, `language_id`, `body`, `created_at`, `updated_at`) VALUES (54, 54, 6, 7, '2010525', '1994-12-13 11:51:30', '1989-08-10 16:29:12');
INSERT INTO `posts` (`id`, `user_id`, `subject_id`, `language_id`, `body`, `created_at`, `updated_at`) VALUES (55, 55, 2, 8, '6', '1982-03-27 05:29:35', '1974-08-14 11:34:37');
INSERT INTO `posts` (`id`, `user_id`, `subject_id`, `language_id`, `body`, `created_at`, `updated_at`) VALUES (56, 56, 2, 8, '394', '2017-05-28 00:54:16', '2000-02-28 13:18:48');
INSERT INTO `posts` (`id`, `user_id`, `subject_id`, `language_id`, `body`, `created_at`, `updated_at`) VALUES (57, 57, 2, 14, '1246857', '2021-03-17 14:20:07', '1978-12-29 01:59:06');
INSERT INTO `posts` (`id`, `user_id`, `subject_id`, `language_id`, `body`, `created_at`, `updated_at`) VALUES (58, 58, 5, 9, '83', '1976-06-15 13:03:57', '1994-01-11 18:43:03');
INSERT INTO `posts` (`id`, `user_id`, `subject_id`, `language_id`, `body`, `created_at`, `updated_at`) VALUES (59, 59, 4, 4, '6269', '2014-08-01 21:15:26', '1992-12-05 04:41:41');
INSERT INTO `posts` (`id`, `user_id`, `subject_id`, `language_id`, `body`, `created_at`, `updated_at`) VALUES (60, 60, 7, 5, '19', '1980-10-21 01:17:10', '2012-07-14 22:26:44');
INSERT INTO `posts` (`id`, `user_id`, `subject_id`, `language_id`, `body`, `created_at`, `updated_at`) VALUES (61, 61, 1, 14, '45841', '2014-03-07 08:54:32', '1993-10-29 05:52:49');
INSERT INTO `posts` (`id`, `user_id`, `subject_id`, `language_id`, `body`, `created_at`, `updated_at`) VALUES (62, 62, 1, 10, '', '1981-09-08 03:57:57', '1974-12-11 00:42:26');
INSERT INTO `posts` (`id`, `user_id`, `subject_id`, `language_id`, `body`, `created_at`, `updated_at`) VALUES (63, 63, 4, 11, '724523', '1990-08-20 06:33:05', '2006-07-02 01:09:46');
INSERT INTO `posts` (`id`, `user_id`, `subject_id`, `language_id`, `body`, `created_at`, `updated_at`) VALUES (64, 64, 6, 4, '479', '1977-10-23 14:12:11', '1988-09-23 09:34:21');
INSERT INTO `posts` (`id`, `user_id`, `subject_id`, `language_id`, `body`, `created_at`, `updated_at`) VALUES (65, 65, 4, 1, '', '1985-08-29 09:28:51', '2015-03-27 16:32:15');
INSERT INTO `posts` (`id`, `user_id`, `subject_id`, `language_id`, `body`, `created_at`, `updated_at`) VALUES (66, 66, 1, 2, '7', '1970-11-04 12:49:05', '2008-04-17 06:40:14');
INSERT INTO `posts` (`id`, `user_id`, `subject_id`, `language_id`, `body`, `created_at`, `updated_at`) VALUES (67, 67, 2, 13, '', '1974-05-26 18:37:54', '1993-07-02 11:11:06');
INSERT INTO `posts` (`id`, `user_id`, `subject_id`, `language_id`, `body`, `created_at`, `updated_at`) VALUES (68, 68, 7, 12, '56491736', '1970-03-09 19:14:37', '1970-12-07 20:41:09');
INSERT INTO `posts` (`id`, `user_id`, `subject_id`, `language_id`, `body`, `created_at`, `updated_at`) VALUES (69, 69, 2, 12, '', '1999-07-09 16:12:02', '2008-02-09 18:25:42');
INSERT INTO `posts` (`id`, `user_id`, `subject_id`, `language_id`, `body`, `created_at`, `updated_at`) VALUES (70, 70, 2, 12, '462089', '2018-08-20 14:42:29', '1991-01-10 12:03:40');
INSERT INTO `posts` (`id`, `user_id`, `subject_id`, `language_id`, `body`, `created_at`, `updated_at`) VALUES (71, 71, 5, 8, '66058', '1993-08-06 22:40:28', '2013-06-12 17:46:35');
INSERT INTO `posts` (`id`, `user_id`, `subject_id`, `language_id`, `body`, `created_at`, `updated_at`) VALUES (72, 72, 1, 12, '1', '2004-09-11 08:14:39', '1998-09-05 05:30:33');
INSERT INTO `posts` (`id`, `user_id`, `subject_id`, `language_id`, `body`, `created_at`, `updated_at`) VALUES (73, 73, 7, 7, '9', '2003-03-23 14:58:15', '1982-07-17 17:04:59');
INSERT INTO `posts` (`id`, `user_id`, `subject_id`, `language_id`, `body`, `created_at`, `updated_at`) VALUES (74, 74, 7, 12, '5830225', '1993-03-10 15:44:05', '1983-04-27 15:03:13');
INSERT INTO `posts` (`id`, `user_id`, `subject_id`, `language_id`, `body`, `created_at`, `updated_at`) VALUES (75, 75, 5, 12, '508', '2001-08-18 05:14:29', '2021-01-28 17:14:33');
INSERT INTO `posts` (`id`, `user_id`, `subject_id`, `language_id`, `body`, `created_at`, `updated_at`) VALUES (76, 76, 2, 9, '8', '1993-04-11 23:33:07', '2004-05-28 19:07:16');
INSERT INTO `posts` (`id`, `user_id`, `subject_id`, `language_id`, `body`, `created_at`, `updated_at`) VALUES (77, 77, 5, 2, '95786418', '1978-11-28 09:15:18', '1995-09-17 04:07:52');
INSERT INTO `posts` (`id`, `user_id`, `subject_id`, `language_id`, `body`, `created_at`, `updated_at`) VALUES (78, 78, 1, 3, '36714854', '1984-07-26 16:47:11', '1972-11-07 04:55:14');
INSERT INTO `posts` (`id`, `user_id`, `subject_id`, `language_id`, `body`, `created_at`, `updated_at`) VALUES (79, 79, 6, 7, '49509', '1984-07-08 18:38:57', '1994-10-31 15:39:03');
INSERT INTO `posts` (`id`, `user_id`, `subject_id`, `language_id`, `body`, `created_at`, `updated_at`) VALUES (80, 80, 7, 8, '1918572', '1990-07-29 11:57:07', '2006-07-16 22:56:30');
INSERT INTO `posts` (`id`, `user_id`, `subject_id`, `language_id`, `body`, `created_at`, `updated_at`) VALUES (81, 81, 4, 10, '', '2006-02-26 23:06:59', '2014-04-19 08:49:01');
INSERT INTO `posts` (`id`, `user_id`, `subject_id`, `language_id`, `body`, `created_at`, `updated_at`) VALUES (82, 82, 1, 11, '106267290', '1975-12-31 05:52:46', '1989-05-01 08:36:35');
INSERT INTO `posts` (`id`, `user_id`, `subject_id`, `language_id`, `body`, `created_at`, `updated_at`) VALUES (83, 83, 4, 5, '', '1974-04-11 09:43:19', '1976-08-25 11:01:51');
INSERT INTO `posts` (`id`, `user_id`, `subject_id`, `language_id`, `body`, `created_at`, `updated_at`) VALUES (84, 84, 6, 8, '29980411', '1981-09-18 05:27:48', '1980-01-01 18:39:39');
INSERT INTO `posts` (`id`, `user_id`, `subject_id`, `language_id`, `body`, `created_at`, `updated_at`) VALUES (85, 85, 5, 2, '291871740', '1986-02-02 07:38:08', '2014-08-03 04:28:14');
INSERT INTO `posts` (`id`, `user_id`, `subject_id`, `language_id`, `body`, `created_at`, `updated_at`) VALUES (86, 86, 1, 5, '423', '2019-12-11 16:22:46', '2010-03-31 14:55:07');
INSERT INTO `posts` (`id`, `user_id`, `subject_id`, `language_id`, `body`, `created_at`, `updated_at`) VALUES (87, 87, 1, 8, '', '1980-05-21 06:27:30', '2020-07-29 23:11:17');
INSERT INTO `posts` (`id`, `user_id`, `subject_id`, `language_id`, `body`, `created_at`, `updated_at`) VALUES (88, 88, 1, 14, '765122', '1976-02-13 22:21:06', '2014-08-15 05:49:33');
INSERT INTO `posts` (`id`, `user_id`, `subject_id`, `language_id`, `body`, `created_at`, `updated_at`) VALUES (89, 89, 3, 9, '969644833', '1978-02-24 16:10:37', '1976-03-18 07:42:09');
INSERT INTO `posts` (`id`, `user_id`, `subject_id`, `language_id`, `body`, `created_at`, `updated_at`) VALUES (90, 90, 6, 14, '', '1997-04-19 19:19:12', '1995-12-23 20:51:28');
INSERT INTO `posts` (`id`, `user_id`, `subject_id`, `language_id`, `body`, `created_at`, `updated_at`) VALUES (91, 91, 2, 6, '469259270', '1984-03-03 08:27:15', '1977-09-24 13:09:04');
INSERT INTO `posts` (`id`, `user_id`, `subject_id`, `language_id`, `body`, `created_at`, `updated_at`) VALUES (92, 92, 5, 9, '140609216', '1974-02-16 03:47:11', '2012-01-31 12:02:07');
INSERT INTO `posts` (`id`, `user_id`, `subject_id`, `language_id`, `body`, `created_at`, `updated_at`) VALUES (93, 93, 4, 2, '8', '2015-12-21 06:44:29', '1984-03-27 22:15:38');
INSERT INTO `posts` (`id`, `user_id`, `subject_id`, `language_id`, `body`, `created_at`, `updated_at`) VALUES (94, 94, 4, 9, '267165', '2000-01-01 02:33:01', '1999-10-26 16:45:41');
INSERT INTO `posts` (`id`, `user_id`, `subject_id`, `language_id`, `body`, `created_at`, `updated_at`) VALUES (95, 95, 5, 2, '9843', '1978-03-26 08:36:15', '2020-11-10 08:31:01');
INSERT INTO `posts` (`id`, `user_id`, `subject_id`, `language_id`, `body`, `created_at`, `updated_at`) VALUES (96, 96, 6, 2, '5370439', '1983-10-27 11:16:55', '1980-06-21 15:26:30');
INSERT INTO `posts` (`id`, `user_id`, `subject_id`, `language_id`, `body`, `created_at`, `updated_at`) VALUES (97, 97, 2, 12, '4556321', '1973-11-14 19:13:38', '1996-10-27 19:43:13');
INSERT INTO `posts` (`id`, `user_id`, `subject_id`, `language_id`, `body`, `created_at`, `updated_at`) VALUES (98, 98, 2, 7, '712143047', '1995-05-21 04:18:24', '1983-04-22 01:07:27');
INSERT INTO `posts` (`id`, `user_id`, `subject_id`, `language_id`, `body`, `created_at`, `updated_at`) VALUES (99, 99, 7, 3, '2', '2018-10-03 18:33:11', '1997-05-04 14:07:30');
INSERT INTO `posts` (`id`, `user_id`, `subject_id`, `language_id`, `body`, `created_at`, `updated_at`) VALUES (100, 100, 2, 11, '298', '1996-01-24 13:48:53', '1983-06-04 23:13:07');


#
# TABLE STRUCTURE FOR: profiles
#

DROP TABLE IF EXISTS `profiles`;

CREATE TABLE `profiles` (
  `user_id` int(10) unsigned NOT NULL COMMENT 'Ссылка на пользователя',
  `gender` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'пол',
  `birthday` date DEFAULT NULL COMMENT 'дата рождения',
  `country` varchar(130) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT 'страна',
  `pro_user` varchar(10) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT 'есть подписка на про версию или нет',
  `created_at` datetime DEFAULT current_timestamp() COMMENT 'время создания строки',
  `updated_at` datetime DEFAULT current_timestamp() ON UPDATE current_timestamp() COMMENT 'время обновления строки',
  PRIMARY KEY (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='Профили';

INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `country`, `pro_user`, `created_at`, `updated_at`) VALUES (1, 'M', '2014-09-01', 'Montenegro', ' N', '2014-04-22 13:55:25', '2015-06-14 04:17:21');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `country`, `pro_user`, `created_at`, `updated_at`) VALUES (2, ' F', '1971-02-20', 'Western Sahara', 'Y', '2004-09-12 01:53:37', '1990-10-28 23:44:31');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `country`, `pro_user`, `created_at`, `updated_at`) VALUES (3, 'M', '1980-12-15', 'Saint Pierre and Miquelon', 'Y', '1975-04-07 21:53:01', '2015-10-14 06:44:37');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `country`, `pro_user`, `created_at`, `updated_at`) VALUES (4, 'M', '1986-01-19', 'Pitcairn Islands', ' N', '2004-05-14 04:24:47', '1997-06-11 00:11:50');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `country`, `pro_user`, `created_at`, `updated_at`) VALUES (5, 'M', '1997-12-11', 'Bhutan', ' N', '2008-03-04 04:22:04', '1984-11-19 10:07:04');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `country`, `pro_user`, `created_at`, `updated_at`) VALUES (6, ' F', '2013-02-18', 'Jersey', 'Y', '1993-02-20 02:25:16', '1989-08-08 20:22:06');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `country`, `pro_user`, `created_at`, `updated_at`) VALUES (7, ' F', '1990-05-21', 'Maldives', 'Y', '2008-07-12 19:06:49', '1993-04-12 21:49:15');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `country`, `pro_user`, `created_at`, `updated_at`) VALUES (8, 'M', '2006-04-05', 'Papua New Guinea', ' N', '2007-11-14 02:28:00', '1999-04-08 06:16:48');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `country`, `pro_user`, `created_at`, `updated_at`) VALUES (9, ' F', '2000-10-24', 'Cambodia', 'Y', '1989-07-12 19:53:42', '1973-07-22 23:33:16');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `country`, `pro_user`, `created_at`, `updated_at`) VALUES (10, ' F', '2009-08-05', 'Madagascar', ' N', '2016-03-16 16:22:42', '2003-11-16 12:36:34');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `country`, `pro_user`, `created_at`, `updated_at`) VALUES (11, ' F', '1994-12-22', 'Solomon Islands', 'Y', '2018-01-15 08:19:12', '1985-06-24 01:15:49');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `country`, `pro_user`, `created_at`, `updated_at`) VALUES (12, ' F', '1984-05-19', 'Chile', ' N', '2010-10-27 07:48:50', '2007-10-22 01:44:17');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `country`, `pro_user`, `created_at`, `updated_at`) VALUES (13, ' F', '1988-11-27', 'Croatia', 'Y', '1971-03-24 09:36:45', '1996-04-29 02:40:48');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `country`, `pro_user`, `created_at`, `updated_at`) VALUES (14, ' F', '1973-09-24', 'Gambia', ' N', '1992-08-11 21:41:55', '1970-08-06 18:29:42');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `country`, `pro_user`, `created_at`, `updated_at`) VALUES (15, ' F', '1985-01-24', 'American Samoa', 'Y', '2014-05-05 19:59:15', '1987-04-29 00:39:35');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `country`, `pro_user`, `created_at`, `updated_at`) VALUES (16, ' F', '1980-08-13', 'Romania', ' N', '1984-08-25 23:59:00', '2007-04-19 08:03:43');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `country`, `pro_user`, `created_at`, `updated_at`) VALUES (17, 'M', '2014-09-19', 'Bangladesh', 'Y', '2017-11-06 20:55:17', '2013-05-22 08:49:15');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `country`, `pro_user`, `created_at`, `updated_at`) VALUES (18, 'M', '1971-05-04', 'Colombia', ' N', '2005-01-10 21:29:31', '2011-04-12 12:43:16');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `country`, `pro_user`, `created_at`, `updated_at`) VALUES (19, 'M', '1990-06-24', 'Saint Vincent and the Grenadines', 'Y', '1986-06-21 21:22:45', '1998-08-09 22:47:52');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `country`, `pro_user`, `created_at`, `updated_at`) VALUES (20, 'M', '1992-02-09', 'Faroe Islands', 'Y', '2018-06-25 07:56:24', '1979-11-08 07:58:29');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `country`, `pro_user`, `created_at`, `updated_at`) VALUES (21, 'M', '1974-06-12', 'San Marino', 'Y', '1980-09-30 09:22:39', '2019-03-08 03:29:48');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `country`, `pro_user`, `created_at`, `updated_at`) VALUES (22, ' F', '1978-04-10', 'Syrian Arab Republic', 'Y', '2008-04-28 05:51:28', '1978-03-23 22:45:35');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `country`, `pro_user`, `created_at`, `updated_at`) VALUES (23, ' F', '2010-03-21', 'Taiwan', 'Y', '2012-10-10 15:26:51', '2018-07-08 20:58:35');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `country`, `pro_user`, `created_at`, `updated_at`) VALUES (24, ' F', '2003-06-19', 'South Africa', 'Y', '2001-01-21 04:14:19', '2001-12-08 05:32:11');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `country`, `pro_user`, `created_at`, `updated_at`) VALUES (25, 'M', '2014-12-12', 'Australia', 'Y', '1973-04-12 06:25:13', '1989-08-03 17:56:52');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `country`, `pro_user`, `created_at`, `updated_at`) VALUES (26, ' F', '1973-12-27', 'Yemen', 'Y', '1987-11-02 23:34:36', '1974-07-18 18:12:55');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `country`, `pro_user`, `created_at`, `updated_at`) VALUES (27, 'M', '1994-02-23', 'New Zealand', ' N', '1996-03-12 00:01:55', '1983-05-10 16:32:01');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `country`, `pro_user`, `created_at`, `updated_at`) VALUES (28, ' F', '1986-03-03', 'United States of America', 'Y', '2004-06-01 07:20:15', '1973-06-05 15:52:42');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `country`, `pro_user`, `created_at`, `updated_at`) VALUES (29, ' F', '2013-11-12', 'Montserrat', 'Y', '1980-09-06 07:28:01', '1975-08-09 06:51:12');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `country`, `pro_user`, `created_at`, `updated_at`) VALUES (30, 'M', '1997-12-31', 'Solomon Islands', 'Y', '2004-10-09 11:37:29', '1996-12-23 06:49:28');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `country`, `pro_user`, `created_at`, `updated_at`) VALUES (31, 'M', '1986-10-20', 'Cuba', 'Y', '2011-03-17 07:55:43', '2013-07-18 19:25:00');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `country`, `pro_user`, `created_at`, `updated_at`) VALUES (32, 'M', '2000-09-21', 'Tokelau', 'Y', '2005-06-27 22:40:03', '1984-09-23 00:32:15');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `country`, `pro_user`, `created_at`, `updated_at`) VALUES (33, ' F', '2006-04-01', 'Malaysia', 'Y', '1980-10-05 12:51:51', '1970-09-12 18:17:00');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `country`, `pro_user`, `created_at`, `updated_at`) VALUES (34, ' F', '2015-10-04', 'Saudi Arabia', 'Y', '1976-10-08 12:59:40', '2005-02-07 07:51:30');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `country`, `pro_user`, `created_at`, `updated_at`) VALUES (35, ' F', '2007-12-22', 'Palestinian Territory', 'Y', '1974-09-09 10:17:10', '1984-06-04 17:47:55');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `country`, `pro_user`, `created_at`, `updated_at`) VALUES (36, ' F', '1984-03-29', 'Guyana', ' N', '1976-01-19 00:17:03', '2005-09-02 20:21:07');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `country`, `pro_user`, `created_at`, `updated_at`) VALUES (37, 'M', '1973-01-26', 'Moldova', 'Y', '1977-07-19 16:54:50', '2007-11-11 21:10:41');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `country`, `pro_user`, `created_at`, `updated_at`) VALUES (38, 'M', '2007-08-29', 'Marshall Islands', ' N', '1986-01-18 10:22:55', '1995-07-03 05:17:48');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `country`, `pro_user`, `created_at`, `updated_at`) VALUES (39, 'M', '2014-06-08', 'Antigua and Barbuda', ' N', '2005-12-11 14:13:54', '1993-02-01 05:32:23');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `country`, `pro_user`, `created_at`, `updated_at`) VALUES (40, ' F', '1988-10-01', 'Jamaica', ' N', '1978-04-06 15:53:15', '2013-06-11 03:33:29');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `country`, `pro_user`, `created_at`, `updated_at`) VALUES (41, 'M', '2005-02-26', 'Central African Republic', 'Y', '1983-11-09 13:13:12', '1975-07-16 07:32:30');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `country`, `pro_user`, `created_at`, `updated_at`) VALUES (42, 'M', '2008-06-17', 'Mauritius', ' N', '1994-08-02 18:39:19', '2011-07-24 13:13:49');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `country`, `pro_user`, `created_at`, `updated_at`) VALUES (43, ' F', '2008-06-30', 'Netherlands Antilles', 'Y', '2010-10-29 01:29:44', '2006-05-31 15:19:43');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `country`, `pro_user`, `created_at`, `updated_at`) VALUES (44, ' F', '1987-11-10', 'Suriname', ' N', '2019-07-26 14:32:31', '2009-08-21 02:56:46');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `country`, `pro_user`, `created_at`, `updated_at`) VALUES (45, 'M', '1995-10-18', 'Burundi', 'Y', '2000-11-10 20:04:10', '1982-01-14 05:26:20');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `country`, `pro_user`, `created_at`, `updated_at`) VALUES (46, ' F', '2004-11-26', 'China', 'Y', '2001-05-30 17:08:51', '1996-07-11 10:58:01');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `country`, `pro_user`, `created_at`, `updated_at`) VALUES (47, ' F', '2018-05-26', 'Cocos (Keeling) Islands', ' N', '2017-06-07 20:05:21', '2009-02-12 21:48:13');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `country`, `pro_user`, `created_at`, `updated_at`) VALUES (48, 'M', '2002-04-30', 'Cuba', 'Y', '2000-06-15 15:07:05', '2011-08-20 04:33:34');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `country`, `pro_user`, `created_at`, `updated_at`) VALUES (49, 'M', '2007-09-21', 'Niue', ' N', '1981-08-22 20:08:51', '1981-11-15 22:23:13');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `country`, `pro_user`, `created_at`, `updated_at`) VALUES (50, ' F', '1975-05-05', 'Malaysia', 'Y', '1989-03-04 16:06:01', '1992-12-01 11:40:36');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `country`, `pro_user`, `created_at`, `updated_at`) VALUES (51, 'M', '2008-03-30', 'Grenada', 'Y', '1987-04-15 17:37:11', '2017-10-23 22:09:39');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `country`, `pro_user`, `created_at`, `updated_at`) VALUES (52, ' F', '1988-05-07', 'Mexico', ' N', '2005-03-05 12:18:52', '1988-01-07 20:10:21');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `country`, `pro_user`, `created_at`, `updated_at`) VALUES (53, 'M', '1983-08-23', 'Liberia', 'Y', '2000-09-29 12:37:14', '1992-12-17 17:31:46');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `country`, `pro_user`, `created_at`, `updated_at`) VALUES (54, 'M', '1975-02-03', 'Hong Kong', ' N', '1977-04-02 18:12:38', '1994-12-25 07:36:57');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `country`, `pro_user`, `created_at`, `updated_at`) VALUES (55, 'M', '2007-03-16', 'Saint Helena', ' N', '2008-07-06 11:56:15', '1991-08-16 02:12:30');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `country`, `pro_user`, `created_at`, `updated_at`) VALUES (56, 'M', '1990-10-30', 'Bhutan', 'Y', '2009-05-01 16:10:23', '1978-11-01 23:06:24');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `country`, `pro_user`, `created_at`, `updated_at`) VALUES (57, ' F', '2006-09-17', 'Benin', 'Y', '2012-11-25 16:09:42', '1991-09-08 05:21:47');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `country`, `pro_user`, `created_at`, `updated_at`) VALUES (58, ' F', '1998-02-26', 'Ukraine', ' N', '1975-09-07 07:16:23', '1994-12-19 07:01:51');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `country`, `pro_user`, `created_at`, `updated_at`) VALUES (59, 'M', '1974-12-08', 'Singapore', 'Y', '2004-02-11 06:57:56', '2004-02-12 00:45:16');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `country`, `pro_user`, `created_at`, `updated_at`) VALUES (60, 'M', '1998-03-06', 'Cuba', ' N', '2015-08-19 11:54:51', '1984-02-28 02:50:10');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `country`, `pro_user`, `created_at`, `updated_at`) VALUES (61, 'M', '2005-02-03', 'Aruba', 'Y', '1985-06-19 00:12:06', '2011-01-02 14:31:40');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `country`, `pro_user`, `created_at`, `updated_at`) VALUES (62, 'M', '1980-07-31', 'Venezuela', 'Y', '1990-07-22 15:58:59', '1977-10-12 11:14:25');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `country`, `pro_user`, `created_at`, `updated_at`) VALUES (63, 'M', '1973-07-23', 'Indonesia', 'Y', '2004-04-16 10:19:57', '2002-01-07 18:05:54');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `country`, `pro_user`, `created_at`, `updated_at`) VALUES (64, 'M', '2011-09-09', 'Niger', 'Y', '1976-06-15 02:52:49', '1981-12-28 00:53:08');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `country`, `pro_user`, `created_at`, `updated_at`) VALUES (65, ' F', '1988-05-09', 'Jamaica', ' N', '1994-01-30 23:51:56', '1977-07-26 13:54:14');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `country`, `pro_user`, `created_at`, `updated_at`) VALUES (66, 'M', '2014-05-30', 'Belarus', 'Y', '1998-06-13 07:13:45', '1971-04-02 06:03:25');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `country`, `pro_user`, `created_at`, `updated_at`) VALUES (67, ' F', '1999-06-03', 'Austria', ' N', '1980-07-02 06:43:07', '1996-02-20 23:16:02');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `country`, `pro_user`, `created_at`, `updated_at`) VALUES (68, ' F', '1981-02-17', 'Ireland', 'Y', '2016-11-21 15:22:12', '2002-11-28 18:02:50');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `country`, `pro_user`, `created_at`, `updated_at`) VALUES (69, 'M', '1999-01-14', 'Isle of Man', 'Y', '2007-08-23 14:25:40', '1980-12-18 12:28:21');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `country`, `pro_user`, `created_at`, `updated_at`) VALUES (70, ' F', '1993-06-20', 'Greece', 'Y', '2000-04-17 09:14:15', '2005-06-17 06:27:36');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `country`, `pro_user`, `created_at`, `updated_at`) VALUES (71, ' F', '2012-10-12', 'Isle of Man', ' N', '2009-03-05 09:52:13', '2002-09-25 17:23:30');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `country`, `pro_user`, `created_at`, `updated_at`) VALUES (72, ' F', '1987-06-04', 'Croatia', ' N', '1973-04-01 20:08:02', '1993-09-01 06:14:30');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `country`, `pro_user`, `created_at`, `updated_at`) VALUES (73, 'M', '1999-06-15', 'Pakistan', 'Y', '1990-02-23 14:02:57', '1975-07-05 14:20:39');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `country`, `pro_user`, `created_at`, `updated_at`) VALUES (74, ' F', '1984-02-28', 'Rwanda', 'Y', '1988-07-15 05:48:41', '1998-06-27 03:55:33');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `country`, `pro_user`, `created_at`, `updated_at`) VALUES (75, ' F', '1987-10-15', 'Switzerland', 'Y', '1986-01-16 18:57:11', '1982-08-27 08:58:31');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `country`, `pro_user`, `created_at`, `updated_at`) VALUES (76, 'M', '1987-09-01', 'Faroe Islands', 'Y', '1970-11-22 11:38:15', '2003-07-18 02:03:56');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `country`, `pro_user`, `created_at`, `updated_at`) VALUES (77, 'M', '2013-10-06', 'Marshall Islands', ' N', '2002-03-08 09:25:21', '1990-01-10 13:50:11');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `country`, `pro_user`, `created_at`, `updated_at`) VALUES (78, 'M', '1970-07-24', 'United States Minor Outlying Islands', 'Y', '1982-08-03 09:42:31', '1990-06-17 15:46:36');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `country`, `pro_user`, `created_at`, `updated_at`) VALUES (79, ' F', '2005-01-30', 'Botswana', ' N', '1979-05-24 14:28:44', '1975-01-04 19:50:54');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `country`, `pro_user`, `created_at`, `updated_at`) VALUES (80, 'M', '1980-04-29', 'Gabon', 'Y', '2020-12-17 07:09:39', '2011-08-03 10:31:33');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `country`, `pro_user`, `created_at`, `updated_at`) VALUES (81, ' F', '1983-11-07', 'Colombia', ' N', '2017-03-24 06:17:33', '1993-07-08 23:58:57');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `country`, `pro_user`, `created_at`, `updated_at`) VALUES (82, 'M', '1981-01-06', 'Latvia', ' N', '2017-02-10 03:41:33', '2015-12-03 02:20:10');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `country`, `pro_user`, `created_at`, `updated_at`) VALUES (83, ' F', '1996-05-19', 'Uruguay', 'Y', '2018-04-13 23:27:34', '2017-03-11 23:14:59');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `country`, `pro_user`, `created_at`, `updated_at`) VALUES (84, ' F', '2000-09-07', 'Guadeloupe', ' N', '2015-10-13 10:03:30', '1994-04-16 18:13:59');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `country`, `pro_user`, `created_at`, `updated_at`) VALUES (85, ' F', '1994-03-24', 'Dominican Republic', ' N', '1995-06-05 18:12:15', '2008-07-13 09:06:16');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `country`, `pro_user`, `created_at`, `updated_at`) VALUES (86, ' F', '2005-06-10', 'Cape Verde', 'Y', '2017-12-21 05:07:18', '1994-02-25 06:25:32');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `country`, `pro_user`, `created_at`, `updated_at`) VALUES (87, ' F', '1994-09-15', 'British Virgin Islands', 'Y', '2018-08-28 07:03:44', '1990-04-16 10:39:57');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `country`, `pro_user`, `created_at`, `updated_at`) VALUES (88, ' F', '1999-08-07', 'Cook Islands', 'Y', '2002-12-20 19:38:18', '2012-12-25 10:41:15');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `country`, `pro_user`, `created_at`, `updated_at`) VALUES (89, 'M', '2018-06-13', 'Djibouti', 'Y', '2015-03-15 10:35:00', '2019-04-20 04:42:23');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `country`, `pro_user`, `created_at`, `updated_at`) VALUES (90, ' F', '1983-07-07', 'Maldives', 'Y', '1980-12-19 11:18:14', '2007-10-10 18:28:12');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `country`, `pro_user`, `created_at`, `updated_at`) VALUES (91, 'M', '2005-05-20', 'Czech Republic', 'Y', '1992-02-22 07:56:01', '1995-12-24 02:42:06');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `country`, `pro_user`, `created_at`, `updated_at`) VALUES (92, ' F', '1981-04-27', 'Korea', 'Y', '2015-09-25 05:23:38', '2008-12-27 23:37:59');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `country`, `pro_user`, `created_at`, `updated_at`) VALUES (93, ' F', '1995-03-07', 'Cuba', ' N', '1993-05-03 10:14:46', '2004-07-07 03:35:04');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `country`, `pro_user`, `created_at`, `updated_at`) VALUES (94, 'M', '1987-01-05', 'Samoa', ' N', '2017-03-31 03:10:45', '1997-10-29 17:02:25');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `country`, `pro_user`, `created_at`, `updated_at`) VALUES (95, 'M', '1994-05-11', 'Norway', 'Y', '1993-09-29 17:25:35', '1972-02-28 07:23:56');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `country`, `pro_user`, `created_at`, `updated_at`) VALUES (96, 'M', '1999-07-25', 'Malaysia', ' N', '1987-09-13 20:26:24', '1979-11-19 19:21:50');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `country`, `pro_user`, `created_at`, `updated_at`) VALUES (97, 'M', '1998-08-01', 'Bhutan', ' N', '2008-07-06 13:31:18', '1982-01-29 15:55:47');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `country`, `pro_user`, `created_at`, `updated_at`) VALUES (98, 'M', '2009-10-14', 'Iran', 'Y', '1971-01-02 22:17:50', '2014-08-17 13:19:47');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `country`, `pro_user`, `created_at`, `updated_at`) VALUES (99, ' F', '1977-02-19', 'Lesotho', ' N', '1973-03-24 22:12:01', '2000-01-14 02:24:58');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `country`, `pro_user`, `created_at`, `updated_at`) VALUES (100, ' F', '2017-03-20', 'Haiti', 'Y', '1984-10-30 11:49:37', '2010-08-05 10:07:04');


#
# TABLE STRUCTURE FOR: subjects
#

DROP TABLE IF EXISTS `subjects`;

CREATE TABLE `subjects` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'идентификатор строки',
  `subject_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'название направления',
  `created_at` datetime DEFAULT current_timestamp() COMMENT 'время создания строки',
  `updated_at` datetime DEFAULT current_timestamp() ON UPDATE current_timestamp() COMMENT 'время обновления строки',
  PRIMARY KEY (`id`),
  UNIQUE KEY `subject_name` (`subject_name`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

INSERT INTO `subjects` (`id`, `subject_name`, `created_at`, `updated_at`) VALUES (1, ' Computer Science', '2008-11-06 00:12:05', '1988-05-08 09:27:30');
INSERT INTO `subjects` (`id`, `subject_name`, `created_at`, `updated_at`) VALUES (2, ' Web Design', '2019-11-17 00:37:14', '1990-06-09 22:01:09');
INSERT INTO `subjects` (`id`, `subject_name`, `created_at`, `updated_at`) VALUES (3, ' Code Foundations', '1999-12-18 21:59:21', '1976-07-13 00:45:56');
INSERT INTO `subjects` (`id`, `subject_name`, `created_at`, `updated_at`) VALUES (4, ' Machine Learning', '1984-01-23 11:20:04', '1996-12-10 10:24:37');
INSERT INTO `subjects` (`id`, `subject_name`, `created_at`, `updated_at`) VALUES (5, ' Data Science', '2002-05-16 11:30:05', '1983-01-15 11:32:53');
INSERT INTO `subjects` (`id`, `subject_name`, `created_at`, `updated_at`) VALUES (6, ' Developer Tools', '1988-12-04 23:44:13', '2006-06-30 23:10:48');
INSERT INTO `subjects` (`id`, `subject_name`, `created_at`, `updated_at`) VALUES (7, 'Web Development', '1991-06-07 23:04:01', '1998-06-15 01:39:17');


#
# TABLE STRUCTURE FOR: users
#

DROP TABLE IF EXISTS `users`;

CREATE TABLE `users` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Идентификатор строки',
  `first_name` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'имя пользователя',
  `last_name` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'фамилия пользователя',
  `email` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'электронная почта',
  `phone` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'номер телефона',
  `created_at` datetime DEFAULT current_timestamp() COMMENT 'Время создания строки',
  `updated_at` datetime DEFAULT current_timestamp() ON UPDATE current_timestamp() COMMENT 'Время обновления строки',
  PRIMARY KEY (`id`),
  UNIQUE KEY `email` (`email`),
  UNIQUE KEY `phone` (`phone`)
) ENGINE=InnoDB AUTO_INCREMENT=101 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='Пользователи';

INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (1, 'Kara', 'Bernier', 'ernser.drew@example.org', '(985)988-2388x39074', '1977-02-24 07:40:52', '2015-05-16 21:25:46');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (2, 'Sonya', 'Nitzsche', 'miracle.schmeler@example.com', '1-681-151-0734', '2016-02-14 00:55:39', '2001-12-24 00:28:27');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (3, 'Salma', 'Durgan', 'ruby.senger@example.net', '(130)587-2574x9451', '1993-02-28 22:49:54', '1994-04-06 11:07:52');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (4, 'Rosemary', 'Littel', 'mayra.harris@example.org', '(052)650-0240x378', '2016-09-20 23:25:38', '1991-08-27 18:24:38');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (5, 'Penelope', 'Gulgowski', 'leda46@example.net', '1-056-604-6467', '1982-03-14 10:34:57', '1975-05-09 16:08:44');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (6, 'Werner', 'Green', 'champlin.alec@example.com', '(469)021-1513x77385', '2016-03-27 13:27:05', '1978-04-05 14:55:54');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (7, 'Abigayle', 'Denesik', 'nico35@example.net', '1-110-486-4039x254', '1986-11-18 11:14:42', '1998-06-22 17:50:10');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (8, 'Bernhard', 'Bradtke', 'gordon.kunde@example.com', '+40(1)1315415872', '1973-07-02 05:30:34', '2005-11-09 16:31:30');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (9, 'Verona', 'Okuneva', 'zelma.nitzsche@example.net', '(497)342-0291x58250', '1985-03-23 00:54:31', '1988-04-01 19:57:30');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (10, 'Shanny', 'Boehm', 'blair.simonis@example.org', '(631)838-6091x14034', '1994-06-07 03:18:35', '2016-11-17 18:38:16');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (11, 'Roberta', 'Mills', 'ijerde@example.net', '03619505697', '1974-06-19 04:48:28', '1986-12-11 08:53:01');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (12, 'Felipe', 'Murazik', 'april.zboncak@example.com', '795.937.8937x9201', '1997-01-10 08:06:52', '1991-11-07 17:00:36');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (13, 'Burley', 'Aufderhar', 'franz91@example.org', '850-913-0992x666', '2017-10-11 07:06:40', '1997-04-21 09:44:11');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (14, 'Annetta', 'Schultz', 'estel28@example.net', '035-362-2354', '1988-09-02 22:29:44', '1996-06-06 11:12:40');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (15, 'Candace', 'Sauer', 'lavina.erdman@example.org', '1-076-993-7422x621', '1974-10-23 00:17:19', '1971-08-31 13:29:14');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (16, 'Caden', 'Reichel', 'morar.mazie@example.org', '944.182.6956', '1986-05-20 00:50:26', '1985-02-24 15:36:07');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (17, 'Donna', 'Ritchie', 'ward.reilly@example.com', '09526214109', '1975-09-27 02:06:14', '1983-09-08 20:23:39');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (18, 'Estevan', 'Tillman', 'ledner.dedrick@example.org', '676.901.8317x4774', '2004-08-20 07:02:55', '1997-03-25 15:51:59');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (19, 'Jana', 'Grimes', 'kole45@example.com', '550.850.8467', '2002-08-08 21:21:17', '1986-10-14 04:37:38');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (20, 'Elmira', 'Keeling', 'ftromp@example.net', '549-201-9588', '1985-10-25 02:40:43', '1987-07-16 10:41:56');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (21, 'Sheldon', 'Farrell', 'napoleon.brakus@example.org', '1-114-371-0291x73465', '1973-04-16 14:52:46', '1972-05-27 01:58:39');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (22, 'Christ', 'Torphy', 'zita12@example.com', '+70(1)1951420656', '1994-08-01 01:02:18', '2015-12-26 15:13:08');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (23, 'Alanna', 'Bogan', 'bradtke.hertha@example.com', '291.487.4290', '1996-11-27 12:34:57', '1976-10-24 18:57:43');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (24, 'Domenica', 'Little', 'funk.filomena@example.net', '1-308-031-0684x4041', '1992-03-29 06:46:26', '2001-01-06 21:59:57');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (25, 'Jean', 'Emmerich', 'ffritsch@example.com', '681.740.4834x143', '1977-08-05 14:38:07', '2017-10-16 13:02:16');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (26, 'Justina', 'Douglas', 'qcasper@example.com', '(630)277-0984x98223', '2015-12-26 06:09:36', '2013-10-30 22:44:46');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (27, 'Roy', 'Feil', 'stracke.natalia@example.com', '(964)815-9891', '1999-06-04 18:56:26', '1979-07-17 20:48:59');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (28, 'Leonie', 'Bechtelar', 'wpowlowski@example.com', '1-165-236-0219x250', '1995-02-14 16:36:23', '2018-11-18 04:19:46');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (29, 'Dee', 'Purdy', 'merdman@example.net', '1-632-532-9257x84114', '1983-04-11 05:36:42', '1992-11-03 02:40:23');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (30, 'Werner', 'Langosh', 'bosco.cecilia@example.org', '(406)026-8046x325', '1977-01-31 15:26:06', '1986-02-20 10:05:18');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (31, 'Westley', 'Weimann', 'zemlak.wallace@example.com', '316-203-9342', '1973-11-17 06:44:12', '1970-10-27 08:53:39');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (32, 'Madisen', 'Marks', 'pweissnat@example.net', '683-217-0510', '1978-03-22 22:19:18', '2018-11-01 17:22:54');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (33, 'Walker', 'Harvey', 'neil01@example.org', '(710)056-0763x30020', '2017-05-15 18:06:16', '2003-11-16 06:05:41');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (34, 'Garett', 'Mueller', 'parisian.yesenia@example.net', '1-675-264-7028', '1989-02-09 23:56:18', '1979-09-04 04:06:23');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (35, 'Eloisa', 'Kuhn', 'swift.chet@example.net', '1-881-230-9092x582', '1992-11-04 21:53:02', '1982-07-23 14:15:49');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (36, 'Maud', 'Terry', 'wilma.kutch@example.net', '1-101-899-5200', '1997-01-11 17:27:44', '2020-12-08 00:31:34');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (37, 'Kali', 'Volkman', 'yhirthe@example.net', '342-256-6043', '1999-12-05 00:14:28', '2003-10-30 15:05:11');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (38, 'Lenna', 'Gutmann', 'armstrong.maximillia@example.org', '940-832-5579x80681', '1997-05-13 11:13:09', '2021-01-24 17:56:55');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (39, 'Federico', 'Vandervort', 'blangworth@example.net', '757-418-5227', '2006-12-29 17:54:24', '1998-05-09 01:11:51');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (40, 'Aracely', 'Trantow', 'uschmitt@example.com', '1-967-103-4212x6859', '2007-04-19 01:34:51', '1990-12-18 02:18:46');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (41, 'Evert', 'Jenkins', 'bernier.zoe@example.com', '(402)444-5237x561', '1998-05-10 19:15:47', '2016-05-24 04:58:05');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (42, 'Gloria', 'Fahey', 'gladys.o\'hara@example.org', '1-849-909-7532x6024', '1990-05-10 06:10:59', '1994-12-06 10:14:09');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (43, 'Tess', 'Moen', 'hlittel@example.org', '(438)117-0283x8838', '1978-03-23 20:13:51', '1978-06-22 13:27:25');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (44, 'Heloise', 'Osinski', 'feest.rowena@example.org', '750-120-1764', '1976-11-24 05:40:46', '1985-04-19 22:34:44');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (45, 'Orion', 'Lehner', 'mayert.domenic@example.net', '1-461-220-4768x887', '1995-03-22 20:19:03', '2008-01-15 17:37:20');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (46, 'Shayne', 'Streich', 'anika77@example.com', '049-223-5906x500', '1974-08-03 02:05:40', '2014-11-27 07:12:57');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (47, 'Lilla', 'Schowalter', 'conn.dan@example.com', '180-645-7973x748', '1975-11-03 10:41:09', '1980-04-16 17:11:33');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (48, 'Rylan', 'Bergstrom', 'wehner.justice@example.net', '+75(1)4011457799', '1976-01-19 12:09:56', '2016-07-06 12:00:31');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (49, 'Taya', 'Mayert', 'kglover@example.com', '1-525-553-1103x126', '1985-04-30 02:40:17', '1987-07-02 13:27:59');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (50, 'Adaline', 'Gerlach', 'powlowski.mason@example.com', '00750992497', '2002-07-13 05:22:11', '2007-10-11 07:52:34');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (51, 'Gisselle', 'Paucek', 'herzog.bonita@example.org', '551-053-3262x869', '1991-06-03 08:49:19', '2004-04-08 15:12:39');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (52, 'Raheem', 'Moore', 'ro\'reilly@example.org', '586.691.0647x7041', '1998-12-03 16:38:56', '1990-02-21 21:41:30');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (53, 'Shanny', 'Schiller', 'moore.pamela@example.org', '937-493-0908', '1997-01-13 22:16:38', '2011-09-01 00:14:52');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (54, 'Vesta', 'Becker', 'louvenia.kunze@example.net', '1-332-335-4106', '1984-05-31 05:01:10', '2000-04-25 10:28:43');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (55, 'Boyd', 'Daniel', 'kallie.abbott@example.com', '447-384-1552x35633', '1984-02-15 01:38:00', '2012-04-16 06:35:05');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (56, 'Hassan', 'Block', 'rusty.johnson@example.net', '+70(9)5426860266', '1988-04-05 02:58:10', '2018-02-02 00:51:50');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (57, 'Luciano', 'Jacobi', 'moses70@example.org', '116-712-0882x97629', '1993-01-19 23:20:44', '1997-05-14 18:03:33');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (58, 'Arnulfo', 'Schiller', 'blair68@example.com', '1-274-717-2864', '1998-12-04 23:27:22', '1992-04-04 06:52:44');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (59, 'Vito', 'Jerde', 'keshawn.mohr@example.net', '765.521.9691x06909', '1980-07-09 21:35:17', '1982-03-05 17:27:10');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (60, 'Wyatt', 'Moen', 'cordelia.conroy@example.com', '589.200.1509x933', '1986-11-05 00:28:08', '2009-06-25 06:56:36');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (61, 'Jessica', 'Douglas', 'veum.gerson@example.net', '158-231-4978x63692', '1994-10-27 17:01:59', '2010-11-05 07:48:46');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (62, 'Titus', 'Rolfson', 'fredy00@example.net', '585.836.3127', '2008-02-21 08:49:12', '1978-11-08 20:31:42');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (63, 'Laurianne', 'Crona', 'denesik.asha@example.net', '(480)223-1871x70497', '1970-09-29 10:57:12', '2017-12-09 02:16:28');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (64, 'Tressa', 'Roberts', 'schumm.elsie@example.org', '605-691-5406', '1988-10-10 21:28:00', '1978-03-07 17:39:04');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (65, 'Torrey', 'Champlin', 'gillian34@example.com', '294-042-2251x7224', '1985-02-20 02:14:22', '2003-05-24 01:33:27');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (66, 'Alek', 'Schultz', 'lewis83@example.net', '309-404-3413', '1996-02-13 09:03:12', '2009-08-06 07:29:48');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (67, 'Gideon', 'Steuber', 'kiehn.gabriel@example.net', '717-149-9612x180', '2002-03-25 11:03:08', '1986-09-27 21:00:19');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (68, 'Rigoberto', 'Brekke', 'dane.bartell@example.org', '+75(9)8634864589', '2018-01-23 15:07:34', '2014-08-17 08:40:11');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (69, 'Dalton', 'White', 'luther95@example.net', '552-241-9520x545', '2016-01-11 23:32:03', '1977-06-10 14:10:02');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (70, 'Rasheed', 'Harvey', 'schiller.loraine@example.net', '004-476-2236x1367', '2005-03-07 13:07:45', '1990-08-01 17:55:03');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (71, 'Rodolfo', 'Grady', 'roderick.dare@example.com', '241.760.6274', '2005-08-21 12:06:36', '1998-07-27 19:12:25');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (72, 'Willa', 'Gleason', 'zlubowitz@example.com', '447-131-4927x479', '2016-05-06 18:02:23', '1980-03-19 07:23:51');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (73, 'Patricia', 'Bayer', 'cloyd75@example.org', '07527968660', '1991-08-11 07:46:59', '1989-10-26 21:49:39');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (74, 'Austyn', 'Blick', 'gonzalo.greenholt@example.net', '244.960.7180', '1992-08-28 23:36:42', '1992-07-20 09:54:17');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (75, 'Mariela', 'Moore', 'beer.trystan@example.org', '994.992.0573x10401', '1977-07-05 18:05:14', '2003-06-01 19:51:49');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (76, 'Zachariah', 'Gulgowski', 'dare.wilford@example.com', '01911201121', '2013-06-03 14:00:42', '1988-04-28 22:24:19');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (77, 'Anastasia', 'Littel', 'maxime40@example.net', '(294)892-7267x64249', '1979-01-12 18:40:13', '1999-08-20 05:34:36');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (78, 'Krystal', 'Anderson', 'iva93@example.org', '(534)938-3613', '1996-12-15 22:36:43', '2020-09-11 23:51:47');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (79, 'Yesenia', 'Reynolds', 'treva.schumm@example.org', '00860233453', '1973-11-28 19:03:41', '2008-10-18 18:30:30');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (80, 'Frederique', 'Yundt', 'romaguera.beverly@example.org', '1-548-427-1204', '1981-01-12 14:21:05', '2019-12-03 16:59:32');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (81, 'Elaina', 'Simonis', 'chodkiewicz@example.net', '199-385-3937x9847', '2003-07-01 11:09:00', '1985-08-18 17:18:27');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (82, 'Ivory', 'Rowe', 'nlebsack@example.net', '802.564.4297', '2013-06-20 19:13:45', '2009-11-08 22:22:25');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (83, 'Nils', 'Schulist', 'deondre.stark@example.com', '459.281.5307', '1991-10-25 14:24:34', '1972-07-09 21:26:32');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (84, 'Pearlie', 'Becker', 'jacques54@example.net', '(921)063-4388', '1992-07-29 01:44:41', '1988-06-14 05:26:40');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (85, 'Mae', 'Dickens', 'vivian59@example.org', '220.175.7681x507', '1991-12-14 09:15:10', '1983-01-30 18:20:44');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (86, 'Lia', 'Hayes', 'cruickshank.oscar@example.net', '08412309633', '2003-12-12 01:27:12', '1975-01-26 03:57:01');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (87, 'Otilia', 'Hartmann', 'o\'conner.brook@example.org', '313-753-1879x3646', '1981-07-10 06:01:34', '1975-01-12 13:39:22');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (88, 'Kellie', 'Gerlach', 'octavia.zemlak@example.net', '(452)381-3003x36745', '2018-07-13 15:31:11', '1986-06-20 15:19:08');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (89, 'Josefa', 'Russel', 'osinski.colton@example.net', '575.805.0286', '2004-02-08 09:08:01', '1999-01-21 01:46:06');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (90, 'Jena', 'Stoltenberg', 'alfonzo84@example.com', '(730)759-8916x1120', '1984-05-13 23:52:34', '1990-06-17 12:53:47');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (91, 'Bartholome', 'Boyle', 'stokes.destiney@example.com', '995-528-6959x987', '2012-09-25 08:40:51', '2002-07-25 18:21:08');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (92, 'Clara', 'Padberg', 'tillman.oberbrunner@example.org', '024-825-4514x216', '1988-02-04 05:21:34', '1987-06-01 07:38:01');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (93, 'Hilma', 'Jast', 'steuber.sadie@example.net', '510.555.9103', '1995-05-24 13:56:25', '1974-03-12 04:49:21');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (94, 'Myra', 'Towne', 'daryl83@example.net', '868.388.4789', '2011-03-21 17:56:43', '1989-05-28 23:03:33');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (95, 'Luella', 'Hayes', 'dbogisich@example.net', '(456)284-6184', '2019-08-01 12:33:56', '1970-03-10 21:13:15');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (96, 'Beverly', 'Boyer', 'brook.mitchell@example.com', '(350)555-1227x3895', '1986-07-01 21:09:13', '1995-12-03 14:00:15');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (97, 'Yolanda', 'Gutkowski', 'upton.melba@example.org', '(109)965-8131', '2013-06-25 09:44:31', '1993-01-21 17:30:07');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (98, 'Roderick', 'Harris', 'mann.kristofer@example.com', '+79(7)0474586126', '1973-10-03 22:34:40', '1992-07-07 17:34:52');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (99, 'Theresia', 'Thompson', 'friesen.april@example.org', '405.691.5597x221', '1992-01-02 20:34:23', '2002-04-25 23:26:33');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (100, 'Cynthia', 'Kuvalis', 'kreiger.randall@example.org', '674-716-4849', '1973-05-06 09:34:16', '2007-03-11 07:00:01');

