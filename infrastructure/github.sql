/*
 Navicat Premium Data Transfer

 Source Server         : home
 Source Server Type    : MySQL
 Source Server Version : 80027
 Source Host           : 127.0.0.1:3306
 Source Schema         : github

 Target Server Type    : MySQL
 Target Server Version : 80027
 File Encoding         : 65001

 Date: 03/02/2022 11:52:26
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for failed_jobs
-- ----------------------------
DROP TABLE IF EXISTS `failed_jobs`;
CREATE TABLE `failed_jobs` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `uuid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of failed_jobs
-- ----------------------------
BEGIN;
COMMIT;

-- ----------------------------
-- Table structure for github_user_lists
-- ----------------------------
DROP TABLE IF EXISTS `github_user_lists`;
CREATE TABLE `github_user_lists` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `github_id` bigint unsigned NOT NULL,
  `github_user_id` bigint unsigned NOT NULL,
  `repo_count` int NOT NULL DEFAULT '0',
  `followers_count` int DEFAULT NULL,
  `popularity` int DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=31 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of github_user_lists
-- ----------------------------
BEGIN;
INSERT INTO `github_user_lists` VALUES (1, 72156162, 1, 28, 34, 29, '2022-02-03 07:08:19', '2022-02-03 07:10:42');
INSERT INTO `github_user_lists` VALUES (2, 12621753, 2, 73, 19, 2, '2022-02-03 07:10:16', '2022-02-03 07:18:17');
INSERT INTO `github_user_lists` VALUES (3, 11610919, 3, 32, 30, 40, '2022-02-03 07:10:43', '2022-02-03 07:10:46');
INSERT INTO `github_user_lists` VALUES (4, 28615699, 4, 18, 40, 30, '2022-02-03 07:10:47', '2022-02-03 07:10:49');
INSERT INTO `github_user_lists` VALUES (5, 8619934, 5, 33, 27, NULL, '2022-02-03 07:29:36', '2022-02-03 07:29:36');
INSERT INTO `github_user_lists` VALUES (6, 60945364, 6, 9, 1, 0, '2022-02-03 07:30:56', '2022-02-03 07:46:18');
INSERT INTO `github_user_lists` VALUES (7, 61556605, 7, 1, 0, 0, '2022-02-03 07:46:19', '2022-02-03 07:46:20');
INSERT INTO `github_user_lists` VALUES (8, 1198986, 8, 0, 1, 0, '2022-02-03 08:10:28', '2022-02-03 08:10:29');
INSERT INTO `github_user_lists` VALUES (9, 64212945, 9, 7, 0, 0, '2022-02-03 08:10:29', '2022-02-03 08:10:31');
INSERT INTO `github_user_lists` VALUES (10, 33184743, 10, 4, 0, 0, '2022-02-03 08:10:32', '2022-02-03 08:10:33');
INSERT INTO `github_user_lists` VALUES (11, 88178632, 11, 3, 0, 0, '2022-02-03 08:10:50', '2022-02-03 08:10:51');
INSERT INTO `github_user_lists` VALUES (12, 38114672, 12, 2, 0, 0, '2022-02-03 08:10:52', '2022-02-03 08:10:53');
INSERT INTO `github_user_lists` VALUES (13, 31154432, 13, 0, 0, 0, '2022-02-03 08:10:54', '2022-02-03 08:10:55');
INSERT INTO `github_user_lists` VALUES (14, 67180102, 14, 0, 0, 0, '2022-02-03 08:10:56', '2022-02-03 08:10:57');
INSERT INTO `github_user_lists` VALUES (15, 98098756, 15, 0, 0, 0, '2022-02-03 08:10:58', '2022-02-03 08:10:59');
INSERT INTO `github_user_lists` VALUES (16, 33558958, 16, 0, 0, 0, '2022-02-03 08:11:00', '2022-02-03 08:11:01');
INSERT INTO `github_user_lists` VALUES (17, 49923995, 17, 0, 0, 0, '2022-02-03 08:11:02', '2022-02-03 08:11:03');
INSERT INTO `github_user_lists` VALUES (18, 22432409, 18, 1, 0, 0, '2022-02-03 08:11:04', '2022-02-03 08:11:05');
INSERT INTO `github_user_lists` VALUES (19, 77484168, 19, 0, 0, 0, '2022-02-03 08:11:06', '2022-02-03 08:11:07');
INSERT INTO `github_user_lists` VALUES (20, 33557378, 20, 1, 0, 0, '2022-02-03 08:11:08', '2022-02-03 08:11:09');
INSERT INTO `github_user_lists` VALUES (21, 91131239, 21, 0, 0, 0, '2022-02-03 08:11:10', '2022-02-03 08:11:11');
INSERT INTO `github_user_lists` VALUES (22, 81491805, 22, 0, 0, 0, '2022-02-03 08:11:12', '2022-02-03 08:11:12');
INSERT INTO `github_user_lists` VALUES (23, 30504755, 23, 2, 0, 0, '2022-02-03 08:11:13', '2022-02-03 08:11:14');
INSERT INTO `github_user_lists` VALUES (24, 6490385, 24, 1, 0, 0, '2022-02-03 08:11:15', '2022-02-03 08:11:16');
INSERT INTO `github_user_lists` VALUES (25, 16128790, 25, 0, 0, 0, '2022-02-03 08:11:17', '2022-02-03 08:11:18');
INSERT INTO `github_user_lists` VALUES (26, 84647828, 26, 0, 0, 0, '2022-02-03 08:11:19', '2022-02-03 08:11:20');
INSERT INTO `github_user_lists` VALUES (27, 57050518, 27, 0, 0, 0, '2022-02-03 08:11:21', '2022-02-03 08:11:21');
INSERT INTO `github_user_lists` VALUES (28, 47582698, 28, 0, 0, 0, '2022-02-03 08:11:22', '2022-02-03 08:11:23');
INSERT INTO `github_user_lists` VALUES (29, 81537343, 29, 0, 0, 0, '2022-02-03 08:11:24', '2022-02-03 08:11:25');
INSERT INTO `github_user_lists` VALUES (30, 43450606, 30, 0, 0, 0, '2022-02-03 08:11:26', '2022-02-03 08:11:27');
COMMIT;

-- ----------------------------
-- Table structure for github_user_repos
-- ----------------------------
DROP TABLE IF EXISTS `github_user_repos`;
CREATE TABLE `github_user_repos` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `github_user_id` bigint unsigned NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `forks` int NOT NULL,
  `stars` int NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=32 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of github_user_repos
-- ----------------------------
BEGIN;
INSERT INTO `github_user_repos` VALUES (1, 6, 'HosseinAlikhani/RouteGenerator', 0, 0, '2022-02-03 07:46:18', '2022-02-03 07:46:18');
INSERT INTO `github_user_repos` VALUES (2, 7, 'hosseinalikhani74/vokalaRepo', 0, 0, '2022-02-03 07:46:20', '2022-02-03 07:46:20');
INSERT INTO `github_user_repos` VALUES (3, 6, 'HosseinAlikhani/auth-package', 0, 0, '2022-02-03 07:47:05', '2022-02-03 07:47:05');
INSERT INTO `github_user_repos` VALUES (4, 6, 'HosseinAlikhani/bpms', 0, 0, '2022-02-03 07:47:05', '2022-02-03 07:47:05');
INSERT INTO `github_user_repos` VALUES (5, 6, 'HosseinAlikhani/d3cr33-manage-routes', 0, 0, '2022-02-03 07:47:05', '2022-02-03 07:47:05');
INSERT INTO `github_user_repos` VALUES (6, 6, 'HosseinAlikhani/Laravel-Blog', 0, 0, '2022-02-03 07:47:05', '2022-02-03 07:47:05');
INSERT INTO `github_user_repos` VALUES (7, 6, 'HosseinAlikhani/Laravel-HelpDesk', 0, 0, '2022-02-03 07:47:05', '2022-02-03 07:47:05');
INSERT INTO `github_user_repos` VALUES (8, 6, 'HosseinAlikhani/Notification', 0, 0, '2022-02-03 07:47:05', '2022-02-03 07:47:05');
INSERT INTO `github_user_repos` VALUES (9, 6, 'HosseinAlikhani/ORM', 0, 0, '2022-02-03 07:47:05', '2022-02-03 07:47:05');
INSERT INTO `github_user_repos` VALUES (10, 6, 'HosseinAlikhani/panel-package', 0, 0, '2022-02-03 07:47:05', '2022-02-03 07:47:05');
INSERT INTO `github_user_repos` VALUES (11, 9, 'DeCreed001/alteduconsult', 0, 0, '2022-02-03 08:10:31', '2022-02-03 08:10:31');
INSERT INTO `github_user_repos` VALUES (12, 9, 'DeCreed001/decreed001', 0, 0, '2022-02-03 08:10:31', '2022-02-03 08:10:31');
INSERT INTO `github_user_repos` VALUES (13, 9, 'DeCreed001/family', 0, 0, '2022-02-03 08:10:31', '2022-02-03 08:10:31');
INSERT INTO `github_user_repos` VALUES (14, 9, 'DeCreed001/foodie', 0, 0, '2022-02-03 08:10:31', '2022-02-03 08:10:31');
INSERT INTO `github_user_repos` VALUES (15, 9, 'DeCreed001/foodiev2', 0, 0, '2022-02-03 08:10:31', '2022-02-03 08:10:31');
INSERT INTO `github_user_repos` VALUES (16, 9, 'DeCreed001/fragment', 0, 0, '2022-02-03 08:10:31', '2022-02-03 08:10:31');
INSERT INTO `github_user_repos` VALUES (17, 9, 'DeCreed001/webcsep', 0, 0, '2022-02-03 08:10:31', '2022-02-03 08:10:31');
INSERT INTO `github_user_repos` VALUES (18, 10, 'decreed/awesome-first-timers', 0, 0, '2022-02-03 08:10:33', '2022-02-03 08:10:33');
INSERT INTO `github_user_repos` VALUES (19, 10, 'decreed/Hacktoberfest-Census', 0, 0, '2022-02-03 08:10:33', '2022-02-03 08:10:33');
INSERT INTO `github_user_repos` VALUES (20, 10, 'decreed/Hacktoberfest-Sign-In', 0, 0, '2022-02-03 08:10:33', '2022-02-03 08:10:33');
INSERT INTO `github_user_repos` VALUES (21, 10, 'decreed/Make-a-Pull-Request', 0, 0, '2022-02-03 08:10:33', '2022-02-03 08:10:33');
INSERT INTO `github_user_repos` VALUES (22, 11, 'decreelabs/dc-performance-tests', 0, 0, '2022-02-03 08:10:51', '2022-02-03 08:10:51');
INSERT INTO `github_user_repos` VALUES (23, 11, 'decreelabs/decreelabs.github.io', 0, 0, '2022-02-03 08:10:51', '2022-02-03 08:10:51');
INSERT INTO `github_user_repos` VALUES (24, 11, 'decreelabs/simple-custom-ui', 0, 0, '2022-02-03 08:10:51', '2022-02-03 08:10:51');
INSERT INTO `github_user_repos` VALUES (25, 12, 'decreesof/html_fun_evaluacion', 0, 0, '2022-02-03 08:10:53', '2022-02-03 08:10:53');
INSERT INTO `github_user_repos` VALUES (26, 12, 'decreesof/html_responsive_evaluacion', 0, 0, '2022-02-03 08:10:53', '2022-02-03 08:10:53');
INSERT INTO `github_user_repos` VALUES (27, 18, 'DecreeB/proj_DNSID-ProtoTesting', 0, 0, '2022-02-03 08:11:05', '2022-02-03 08:11:05');
INSERT INTO `github_user_repos` VALUES (28, 20, 'decrees-org/sample-decrees', 0, 0, '2022-02-03 08:11:09', '2022-02-03 08:11:09');
INSERT INTO `github_user_repos` VALUES (29, 23, 'DecReely/Black-N-White', 0, 0, '2022-02-03 08:11:14', '2022-02-03 08:11:14');
INSERT INTO `github_user_repos` VALUES (30, 23, 'DecReely/Programlamaya-Giris', 0, 0, '2022-02-03 08:11:14', '2022-02-03 08:11:14');
INSERT INTO `github_user_repos` VALUES (31, 24, 'Decreeofpain/Hell-Tech', 0, 0, '2022-02-03 08:11:16', '2022-02-03 08:11:16');
COMMIT;

-- ----------------------------
-- Table structure for github_users
-- ----------------------------
DROP TABLE IF EXISTS `github_users`;
CREATE TABLE `github_users` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `username` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `location` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `join_at` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `followers_count` int NOT NULL DEFAULT '0',
  `following_count` int NOT NULL DEFAULT '0',
  `bio` text COLLATE utf8mb4_unicode_ci,
  `avatar_url` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=31 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of github_users
-- ----------------------------
BEGIN;
INSERT INTO `github_users` VALUES (1, 'hosseind88', NULL, 'Tehran/Iran', '2020-09-30T16:44:46Z', 34, 280, 'Front-end Engineer. my repositories are mostly contributing to open source projects and also personal projects.', 'https://avatars.githubusercontent.com/u/72156162?v=4', '2022-02-03 07:08:19', '2022-02-03 07:08:19');
INSERT INTO `github_users` VALUES (2, 'hosseinmh', NULL, NULL, '2015-05-27T05:47:18Z', 19, 53, 'in one word web lover :)', 'https://avatars.githubusercontent.com/u/12621753?v=4', '2022-02-03 07:10:16', '2022-02-03 07:10:16');
INSERT INTO `github_users` VALUES (3, 'HosseinAbedi', NULL, NULL, '2015-03-23T10:00:51Z', 30, 146, 'A flaneur: a sceptic observer.', 'https://avatars.githubusercontent.com/u/11610919?v=4', '2022-02-03 07:10:43', '2022-02-03 07:10:43');
INSERT INTO `github_users` VALUES (4, 'HosseinDotLink', NULL, NULL, '2017-05-11T03:53:50Z', 40, 30, 'Backend developer (Node.js)', 'https://avatars.githubusercontent.com/u/28615699?v=4', '2022-02-03 07:10:47', '2022-02-03 07:10:47');
INSERT INTO `github_users` VALUES (5, 'hosseinfani', NULL, 'Canada', '2014-09-01T21:44:24Z', 27, 2, 'Assistant Professor; \r\nSchool of Computer Science; University of Windsor;\r\nBSc, MSc, PhD in CS ', 'https://avatars.githubusercontent.com/u/8619934?v=4', '2022-02-03 07:29:36', '2022-02-03 07:29:36');
INSERT INTO `github_users` VALUES (6, 'HosseinAlikhani', NULL, NULL, '2020-02-11T21:15:57Z', 1, 2, 'PHP (LARAVEL)\r\nJS (VUEjs)', 'https://avatars.githubusercontent.com/u/60945364?v=4', '2022-02-03 07:30:56', '2022-02-03 07:30:56');
INSERT INTO `github_users` VALUES (7, 'hosseinalikhani74', NULL, NULL, '2020-02-27T17:11:56Z', 0, 0, NULL, 'https://avatars.githubusercontent.com/u/61556605?v=4', '2022-02-03 07:46:19', '2022-02-03 07:46:19');
INSERT INTO `github_users` VALUES (8, 'decree', NULL, NULL, '2011-11-16T09:29:38Z', 1, 0, NULL, 'https://avatars.githubusercontent.com/u/1198986?v=4', '2022-02-03 08:10:28', '2022-02-03 08:10:28');
INSERT INTO `github_users` VALUES (9, 'DeCreed001', NULL, 'Nigeria', '2020-04-23T15:02:19Z', 0, 1, 'STEM Educator | Front-end Web Developer | Atmospheric Physicist', 'https://avatars.githubusercontent.com/u/64212945?v=4', '2022-02-03 08:10:29', '2022-02-03 08:10:29');
INSERT INTO `github_users` VALUES (10, 'decreed', NULL, NULL, '2017-10-28T19:14:41Z', 0, 0, NULL, 'https://avatars.githubusercontent.com/u/33184743?v=4', '2022-02-03 08:10:32', '2022-02-03 08:10:32');
INSERT INTO `github_users` VALUES (11, 'decreelabs', NULL, 'Australia', '2021-07-30T05:20:45Z', 0, 0, 'Specialising in Atlassian products customisation, configuration and apps', 'https://avatars.githubusercontent.com/u/88178632?v=4', '2022-02-03 08:10:50', '2022-02-03 08:10:50');
INSERT INTO `github_users` VALUES (12, 'decreesof', NULL, NULL, '2018-04-05T19:36:48Z', 0, 0, NULL, 'https://avatars.githubusercontent.com/u/38114672?v=4', '2022-02-03 08:10:52', '2022-02-03 08:10:52');
INSERT INTO `github_users` VALUES (13, 'Decreedy', NULL, NULL, '2017-08-19T07:57:28Z', 0, 0, NULL, 'https://avatars.githubusercontent.com/u/31154432?v=4', '2022-02-03 08:10:54', '2022-02-03 08:10:54');
INSERT INTO `github_users` VALUES (14, 'decreedo', NULL, NULL, '2020-06-20T04:43:13Z', 0, 0, NULL, 'https://avatars.githubusercontent.com/u/67180102?v=4', '2022-02-03 08:10:56', '2022-02-03 08:10:56');
INSERT INTO `github_users` VALUES (15, 'Decreehuntcrypt', NULL, NULL, '2022-01-20T12:55:44Z', 0, 0, NULL, 'https://avatars.githubusercontent.com/u/98098756?v=4', '2022-02-03 08:10:58', '2022-02-03 08:10:58');
INSERT INTO `github_users` VALUES (16, 'decreebass', NULL, NULL, '2017-11-10T21:47:44Z', 0, 0, NULL, 'https://avatars.githubusercontent.com/u/33558958?v=4', '2022-02-03 08:11:00', '2022-02-03 08:11:00');
INSERT INTO `github_users` VALUES (17, 'DecreeR', NULL, NULL, '2019-04-23T20:37:12Z', 0, 0, NULL, 'https://avatars.githubusercontent.com/u/49923995?v=4', '2022-02-03 08:11:02', '2022-02-03 08:11:02');
INSERT INTO `github_users` VALUES (18, 'DecreeB', NULL, NULL, '2016-09-25T17:47:29Z', 0, 0, NULL, 'https://avatars.githubusercontent.com/u/22432409?v=4', '2022-02-03 08:11:04', '2022-02-03 08:11:04');
INSERT INTO `github_users` VALUES (19, 'DecreeTalent', NULL, NULL, '2021-01-15T08:45:32Z', 0, 0, NULL, 'https://avatars.githubusercontent.com/u/77484168?v=4', '2022-02-03 08:11:06', '2022-02-03 08:11:06');
INSERT INTO `github_users` VALUES (20, 'decrees-org', NULL, NULL, '2017-11-10T20:08:49Z', 0, 0, NULL, 'https://avatars.githubusercontent.com/u/33557378?v=4', '2022-02-03 08:11:08', '2022-02-03 08:11:08');
INSERT INTO `github_users` VALUES (21, 'DecreeNo9', NULL, NULL, '2021-09-21T12:02:23Z', 0, 0, NULL, 'https://avatars.githubusercontent.com/u/91131239?v=4', '2022-02-03 08:11:10', '2022-02-03 08:11:10');
INSERT INTO `github_users` VALUES (22, 'Decreet', NULL, 'MI', '2021-03-27T21:36:45Z', 0, 0, 'Hi.', 'https://avatars.githubusercontent.com/u/81491805?v=4', '2022-02-03 08:11:12', '2022-02-03 08:11:12');
INSERT INTO `github_users` VALUES (23, 'DecReely', NULL, 'Kocaeli, Turkey', '2017-07-27T16:33:14Z', 0, 1, NULL, 'https://avatars.githubusercontent.com/u/30504755?v=4', '2022-02-03 08:11:13', '2022-02-03 08:11:13');
INSERT INTO `github_users` VALUES (24, 'Decreeofpain', NULL, NULL, '2014-01-24T09:57:41Z', 0, 0, NULL, 'https://avatars.githubusercontent.com/u/6490385?v=4', '2022-02-03 08:11:15', '2022-02-03 08:11:15');
INSERT INTO `github_users` VALUES (25, 'decrees', NULL, NULL, '2015-12-03T04:34:52Z', 0, 0, NULL, 'https://avatars.githubusercontent.com/u/16128790?v=4', '2022-02-03 08:11:17', '2022-02-03 08:11:17');
INSERT INTO `github_users` VALUES (26, 'Decree-zero', NULL, NULL, '2021-05-23T00:03:08Z', 0, 0, NULL, 'https://avatars.githubusercontent.com/u/84647828?v=4', '2022-02-03 08:11:19', '2022-02-03 08:11:19');
INSERT INTO `github_users` VALUES (27, 'decree1', NULL, NULL, '2019-10-26T23:20:44Z', 0, 0, NULL, 'https://avatars.githubusercontent.com/u/57050518?v=4', '2022-02-03 08:11:20', '2022-02-03 08:11:20');
INSERT INTO `github_users` VALUES (28, 'DecreeCommunity', 'martescc@sina.com', NULL, '2019-02-13T02:09:12Z', 0, 0, NULL, 'https://avatars.githubusercontent.com/u/47582698?v=4', '2022-02-03 08:11:22', '2022-02-03 08:11:22');
INSERT INTO `github_users` VALUES (29, 'Decree117', NULL, NULL, '2021-03-28T22:34:09Z', 0, 0, NULL, 'https://avatars.githubusercontent.com/u/81537343?v=4', '2022-02-03 08:11:24', '2022-02-03 08:11:24');
INSERT INTO `github_users` VALUES (30, 'decreeword', NULL, NULL, '2018-09-20T17:42:02Z', 0, 0, NULL, 'https://avatars.githubusercontent.com/u/43450606?v=4', '2022-02-03 08:11:26', '2022-02-03 08:11:26');
COMMIT;

-- ----------------------------
-- Table structure for migrations
-- ----------------------------
DROP TABLE IF EXISTS `migrations`;
CREATE TABLE `migrations` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of migrations
-- ----------------------------
BEGIN;
INSERT INTO `migrations` VALUES (1, '2014_10_12_000000_create_users_table', 1);
INSERT INTO `migrations` VALUES (2, '2014_10_12_100000_create_password_resets_table', 1);
INSERT INTO `migrations` VALUES (3, '2019_08_19_000000_create_failed_jobs_table', 1);
INSERT INTO `migrations` VALUES (6, '2022_02_03_001334_create_github_users_table', 2);
INSERT INTO `migrations` VALUES (7, '2022_02_03_001356_create_github_user_lists_table', 2);
INSERT INTO `migrations` VALUES (9, '2022_02_03_071206_create_search_loggings_table', 3);
INSERT INTO `migrations` VALUES (11, '2022_02_03_072747_create_github_user_repos_table', 4);
COMMIT;

-- ----------------------------
-- Table structure for password_resets
-- ----------------------------
DROP TABLE IF EXISTS `password_resets`;
CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  KEY `password_resets_email_index` (`email`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of password_resets
-- ----------------------------
BEGIN;
COMMIT;

-- ----------------------------
-- Table structure for search_loggings
-- ----------------------------
DROP TABLE IF EXISTS `search_loggings`;
CREATE TABLE `search_loggings` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `request` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `result` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `user` longtext COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=30 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of search_loggings
-- ----------------------------
BEGIN;
INSERT INTO `search_loggings` VALUES (1, 'ok', 'ok', '127.0.0.1', '2022-02-03 07:22:07', '2022-02-03 07:22:07');
INSERT INTO `search_loggings` VALUES (2, 'ok', 'ok', '127.0.0.1', '2022-02-03 07:22:34', '2022-02-03 07:22:34');
INSERT INTO `search_loggings` VALUES (3, '{\"per_page\":\"3\",\"page\":\"5\",\"name\":\"Hossein\"}', '[{\"id\":1,\"github_id\":72156162,\"github_user_id\":1,\"repo_count\":28,\"followers_count\":34,\"popularity\":29,\"created_at\":\"2022-02-03T07:08:19.000000Z\",\"updated_at\":\"2022-02-03T07:10:42.000000Z\"},{\"id\":3,\"github_id\":11610919,\"github_user_id\":3,\"repo_count\":32,\"followers_count\":30,\"popularity\":40,\"created_at\":\"2022-02-03T07:10:43.000000Z\",\"updated_at\":\"2022-02-03T07:10:46.000000Z\"},{\"id\":4,\"github_id\":28615699,\"github_user_id\":4,\"repo_count\":18,\"followers_count\":40,\"popularity\":30,\"created_at\":\"2022-02-03T07:10:47.000000Z\",\"updated_at\":\"2022-02-03T07:10:49.000000Z\"}]', '127.0.0.1', '2022-02-03 07:23:55', '2022-02-03 07:23:55');
INSERT INTO `search_loggings` VALUES (4, '{\"per_page\":\"3\",\"page\":\"5\",\"name\":\"Hossein\"}', '[{\"id\":1,\"github_id\":72156162,\"github_user_id\":1,\"repo_count\":28,\"followers_count\":34,\"popularity\":29,\"created_at\":\"2022-02-03T07:08:19.000000Z\",\"updated_at\":\"2022-02-03T07:10:42.000000Z\"},{\"id\":3,\"github_id\":11610919,\"github_user_id\":3,\"repo_count\":32,\"followers_count\":30,\"popularity\":40,\"created_at\":\"2022-02-03T07:10:43.000000Z\",\"updated_at\":\"2022-02-03T07:10:46.000000Z\"},{\"id\":4,\"github_id\":28615699,\"github_user_id\":4,\"repo_count\":18,\"followers_count\":40,\"popularity\":30,\"created_at\":\"2022-02-03T07:10:47.000000Z\",\"updated_at\":\"2022-02-03T07:10:49.000000Z\"}]', 'ok', '2022-02-03 07:24:16', '2022-02-03 07:24:16');
INSERT INTO `search_loggings` VALUES (5, '\"ok\"', '\"ok\"', 'ok', '2022-02-03 07:24:52', '2022-02-03 07:24:52');
INSERT INTO `search_loggings` VALUES (6, '{\"per_page\":\"3\",\"page\":\"5\",\"name\":\"Hossein\"}', '[{\"id\":1,\"github_id\":72156162,\"github_user_id\":1,\"repo_count\":28,\"followers_count\":34,\"popularity\":29,\"created_at\":\"2022-02-03T07:08:19.000000Z\",\"updated_at\":\"2022-02-03T07:10:42.000000Z\"},{\"id\":3,\"github_id\":11610919,\"github_user_id\":3,\"repo_count\":32,\"followers_count\":30,\"popularity\":40,\"created_at\":\"2022-02-03T07:10:43.000000Z\",\"updated_at\":\"2022-02-03T07:10:46.000000Z\"},{\"id\":4,\"github_id\":28615699,\"github_user_id\":4,\"repo_count\":18,\"followers_count\":40,\"popularity\":30,\"created_at\":\"2022-02-03T07:10:47.000000Z\",\"updated_at\":\"2022-02-03T07:10:49.000000Z\"}]', '127.0.0.1', '2022-02-03 07:25:28', '2022-02-03 07:25:28');
INSERT INTO `search_loggings` VALUES (7, '{\"per_page\":\"3\",\"page\":\"5\",\"name\":\"Hossein\"}', '[{\"id\":1,\"github_id\":72156162,\"github_user_id\":1,\"repo_count\":28,\"followers_count\":34,\"popularity\":29,\"created_at\":\"2022-02-03T07:08:19.000000Z\",\"updated_at\":\"2022-02-03T07:10:42.000000Z\"},{\"id\":3,\"github_id\":11610919,\"github_user_id\":3,\"repo_count\":32,\"followers_count\":30,\"popularity\":40,\"created_at\":\"2022-02-03T07:10:43.000000Z\",\"updated_at\":\"2022-02-03T07:10:46.000000Z\"},{\"id\":4,\"github_id\":28615699,\"github_user_id\":4,\"repo_count\":18,\"followers_count\":40,\"popularity\":30,\"created_at\":\"2022-02-03T07:10:47.000000Z\",\"updated_at\":\"2022-02-03T07:10:49.000000Z\"}]', '127.0.0.1', '2022-02-03 07:29:29', '2022-02-03 07:29:29');
INSERT INTO `search_loggings` VALUES (8, '{\"per_page\":\"3\",\"page\":\"6\",\"name\":\"HosseinAlikhani\"}', '[]', '127.0.0.1', '2022-02-03 07:30:48', '2022-02-03 07:30:48');
INSERT INTO `search_loggings` VALUES (9, '{\"per_page\":\"3\",\"page\":\"1\",\"name\":\"HosseinAlikhani\"}', '[{\"id\":6,\"github_id\":60945364,\"github_user_id\":6,\"repo_count\":9,\"followers_count\":1,\"popularity\":null,\"created_at\":\"2022-02-03T07:30:56.000000Z\",\"updated_at\":\"2022-02-03T07:30:56.000000Z\"},{\"id\":7,\"github_id\":61556605,\"github_user_id\":7,\"repo_count\":1,\"followers_count\":0,\"popularity\":null,\"created_at\":\"2022-02-03T07:46:19.000000Z\",\"updated_at\":\"2022-02-03T07:46:19.000000Z\"}]', '127.0.0.1', '2022-02-03 07:46:20', '2022-02-03 07:46:20');
INSERT INTO `search_loggings` VALUES (10, '{\"per_page\":\"3\",\"page\":\"1\",\"name\":\"HosseinAlikhani\"}', '[{\"id\":6,\"github_id\":60945364,\"github_user_id\":6,\"repo_count\":9,\"followers_count\":1,\"popularity\":0,\"created_at\":\"2022-02-03T07:30:56.000000Z\",\"updated_at\":\"2022-02-03T07:46:18.000000Z\"},{\"id\":7,\"github_id\":61556605,\"github_user_id\":7,\"repo_count\":1,\"followers_count\":0,\"popularity\":0,\"created_at\":\"2022-02-03T07:46:19.000000Z\",\"updated_at\":\"2022-02-03T07:46:20.000000Z\"}]', '127.0.0.1', '2022-02-03 07:47:06', '2022-02-03 07:47:06');
INSERT INTO `search_loggings` VALUES (11, '{\"per_page\":\"3\",\"page\":\"1\",\"name\":\"HosseinAlikhani\"}', '[{},{}]', '127.0.0.1', '2022-02-03 07:51:44', '2022-02-03 07:51:44');
INSERT INTO `search_loggings` VALUES (12, '{\"per_page\":\"3\",\"page\":\"1\",\"name\":\"HosseinAlikhani\"}', '[{},{}]', '127.0.0.1', '2022-02-03 07:51:57', '2022-02-03 07:51:57');
INSERT INTO `search_loggings` VALUES (13, '{\"per_page\":\"3\",\"page\":\"1\",\"name\":\"HosseinAlikhani\"}', '[{},{}]', '127.0.0.1', '2022-02-03 07:52:10', '2022-02-03 07:52:10');
INSERT INTO `search_loggings` VALUES (14, '{\"per_page\":\"3\",\"page\":\"1\",\"name\":\"HosseinAlikhani\"}', '[{},{}]', '127.0.0.1', '2022-02-03 07:52:21', '2022-02-03 07:52:21');
INSERT INTO `search_loggings` VALUES (15, '{\"per_page\":\"3\",\"page\":\"1\",\"name\":\"HosseinAlikhani\"}', '[]', '127.0.0.1', '2022-02-03 07:52:35', '2022-02-03 07:52:35');
INSERT INTO `search_loggings` VALUES (16, '{\"per_page\":\"3\",\"page\":\"1\",\"name\":\"HosseinAlikhani\"}', '[{\"id\":6,\"github_id\":60945364,\"github_user_id\":6,\"repo_count\":9,\"followers_count\":1,\"popularity\":0,\"created_at\":\"2022-02-03T07:30:56.000000Z\",\"updated_at\":\"2022-02-03T07:46:18.000000Z\",\"user\":{\"id\":6,\"username\":\"HosseinAlikhani\",\"email\":null,\"location\":null,\"join_at\":\"2020-02-11T21:15:57Z\",\"followers_count\":1,\"following_count\":2,\"bio\":\"PHP (LARAVEL)\\r\\nJS (VUEjs)\",\"avatar_url\":\"https:\\/\\/avatars.githubusercontent.com\\/u\\/60945364?v=4\",\"created_at\":\"2022-02-03T07:30:56.000000Z\",\"updated_at\":\"2022-02-03T07:30:56.000000Z\"},\"repos\":[{\"id\":1,\"github_user_id\":6,\"name\":\"HosseinAlikhani\\/RouteGenerator\",\"forks\":0,\"stars\":0,\"created_at\":\"2022-02-03T07:46:18.000000Z\",\"updated_at\":\"2022-02-03T07:46:18.000000Z\"},{\"id\":3,\"github_user_id\":6,\"name\":\"HosseinAlikhani\\/auth-package\",\"forks\":0,\"stars\":0,\"created_at\":\"2022-02-03T07:47:05.000000Z\",\"updated_at\":\"2022-02-03T07:47:05.000000Z\"},{\"id\":4,\"github_user_id\":6,\"name\":\"HosseinAlikhani\\/bpms\",\"forks\":0,\"stars\":0,\"created_at\":\"2022-02-03T07:47:05.000000Z\",\"updated_at\":\"2022-02-03T07:47:05.000000Z\"},{\"id\":5,\"github_user_id\":6,\"name\":\"HosseinAlikhani\\/d3cr33-manage-routes\",\"forks\":0,\"stars\":0,\"created_at\":\"2022-02-03T07:47:05.000000Z\",\"updated_at\":\"2022-02-03T07:47:05.000000Z\"},{\"id\":6,\"github_user_id\":6,\"name\":\"HosseinAlikhani\\/Laravel-Blog\",\"forks\":0,\"stars\":0,\"created_at\":\"2022-02-03T07:47:05.000000Z\",\"updated_at\":\"2022-02-03T07:47:05.000000Z\"},{\"id\":7,\"github_user_id\":6,\"name\":\"HosseinAlikhani\\/Laravel-HelpDesk\",\"forks\":0,\"stars\":0,\"created_at\":\"2022-02-03T07:47:05.000000Z\",\"updated_at\":\"2022-02-03T07:47:05.000000Z\"},{\"id\":8,\"github_user_id\":6,\"name\":\"HosseinAlikhani\\/Notification\",\"forks\":0,\"stars\":0,\"created_at\":\"2022-02-03T07:47:05.000000Z\",\"updated_at\":\"2022-02-03T07:47:05.000000Z\"},{\"id\":9,\"github_user_id\":6,\"name\":\"HosseinAlikhani\\/ORM\",\"forks\":0,\"stars\":0,\"created_at\":\"2022-02-03T07:47:05.000000Z\",\"updated_at\":\"2022-02-03T07:47:05.000000Z\"},{\"id\":10,\"github_user_id\":6,\"name\":\"HosseinAlikhani\\/panel-package\",\"forks\":0,\"stars\":0,\"created_at\":\"2022-02-03T07:47:05.000000Z\",\"updated_at\":\"2022-02-03T07:47:05.000000Z\"}]},{\"id\":7,\"github_id\":61556605,\"github_user_id\":7,\"repo_count\":1,\"followers_count\":0,\"popularity\":0,\"created_at\":\"2022-02-03T07:46:19.000000Z\",\"updated_at\":\"2022-02-03T07:46:20.000000Z\",\"user\":{\"id\":7,\"username\":\"hosseinalikhani74\",\"email\":null,\"location\":null,\"join_at\":\"2020-02-27T17:11:56Z\",\"followers_count\":0,\"following_count\":0,\"bio\":null,\"avatar_url\":\"https:\\/\\/avatars.githubusercontent.com\\/u\\/61556605?v=4\",\"created_at\":\"2022-02-03T07:46:19.000000Z\",\"updated_at\":\"2022-02-03T07:46:19.000000Z\"},\"repos\":[{\"id\":2,\"github_user_id\":7,\"name\":\"hosseinalikhani74\\/vokalaRepo\",\"forks\":0,\"stars\":0,\"created_at\":\"2022-02-03T07:46:20.000000Z\",\"updated_at\":\"2022-02-03T07:46:20.000000Z\"}]}]', '127.0.0.1', '2022-02-03 07:53:15', '2022-02-03 07:53:15');
INSERT INTO `search_loggings` VALUES (17, '{\"per_page\":\"3\",\"page\":\"1\",\"name\":\"HosseinAlikhani\"}', '[{\"id\":6,\"github_id\":60945364,\"github_user_id\":6,\"repo_count\":9,\"followers_count\":1,\"popularity\":0,\"created_at\":\"2022-02-03T07:30:56.000000Z\",\"updated_at\":\"2022-02-03T07:46:18.000000Z\",\"user\":{\"id\":6,\"username\":\"HosseinAlikhani\",\"email\":null,\"location\":null,\"join_at\":\"2020-02-11T21:15:57Z\",\"followers_count\":1,\"following_count\":2,\"bio\":\"PHP (LARAVEL)\\r\\nJS (VUEjs)\",\"avatar_url\":\"https:\\/\\/avatars.githubusercontent.com\\/u\\/60945364?v=4\",\"created_at\":\"2022-02-03T07:30:56.000000Z\",\"updated_at\":\"2022-02-03T07:30:56.000000Z\"},\"repos\":[{\"id\":1,\"github_user_id\":6,\"name\":\"HosseinAlikhani\\/RouteGenerator\",\"forks\":0,\"stars\":0,\"created_at\":\"2022-02-03T07:46:18.000000Z\",\"updated_at\":\"2022-02-03T07:46:18.000000Z\"},{\"id\":3,\"github_user_id\":6,\"name\":\"HosseinAlikhani\\/auth-package\",\"forks\":0,\"stars\":0,\"created_at\":\"2022-02-03T07:47:05.000000Z\",\"updated_at\":\"2022-02-03T07:47:05.000000Z\"},{\"id\":4,\"github_user_id\":6,\"name\":\"HosseinAlikhani\\/bpms\",\"forks\":0,\"stars\":0,\"created_at\":\"2022-02-03T07:47:05.000000Z\",\"updated_at\":\"2022-02-03T07:47:05.000000Z\"},{\"id\":5,\"github_user_id\":6,\"name\":\"HosseinAlikhani\\/d3cr33-manage-routes\",\"forks\":0,\"stars\":0,\"created_at\":\"2022-02-03T07:47:05.000000Z\",\"updated_at\":\"2022-02-03T07:47:05.000000Z\"},{\"id\":6,\"github_user_id\":6,\"name\":\"HosseinAlikhani\\/Laravel-Blog\",\"forks\":0,\"stars\":0,\"created_at\":\"2022-02-03T07:47:05.000000Z\",\"updated_at\":\"2022-02-03T07:47:05.000000Z\"},{\"id\":7,\"github_user_id\":6,\"name\":\"HosseinAlikhani\\/Laravel-HelpDesk\",\"forks\":0,\"stars\":0,\"created_at\":\"2022-02-03T07:47:05.000000Z\",\"updated_at\":\"2022-02-03T07:47:05.000000Z\"},{\"id\":8,\"github_user_id\":6,\"name\":\"HosseinAlikhani\\/Notification\",\"forks\":0,\"stars\":0,\"created_at\":\"2022-02-03T07:47:05.000000Z\",\"updated_at\":\"2022-02-03T07:47:05.000000Z\"},{\"id\":9,\"github_user_id\":6,\"name\":\"HosseinAlikhani\\/ORM\",\"forks\":0,\"stars\":0,\"created_at\":\"2022-02-03T07:47:05.000000Z\",\"updated_at\":\"2022-02-03T07:47:05.000000Z\"},{\"id\":10,\"github_user_id\":6,\"name\":\"HosseinAlikhani\\/panel-package\",\"forks\":0,\"stars\":0,\"created_at\":\"2022-02-03T07:47:05.000000Z\",\"updated_at\":\"2022-02-03T07:47:05.000000Z\"}]},{\"id\":7,\"github_id\":61556605,\"github_user_id\":7,\"repo_count\":1,\"followers_count\":0,\"popularity\":0,\"created_at\":\"2022-02-03T07:46:19.000000Z\",\"updated_at\":\"2022-02-03T07:46:20.000000Z\",\"user\":{\"id\":7,\"username\":\"hosseinalikhani74\",\"email\":null,\"location\":null,\"join_at\":\"2020-02-27T17:11:56Z\",\"followers_count\":0,\"following_count\":0,\"bio\":null,\"avatar_url\":\"https:\\/\\/avatars.githubusercontent.com\\/u\\/61556605?v=4\",\"created_at\":\"2022-02-03T07:46:19.000000Z\",\"updated_at\":\"2022-02-03T07:46:19.000000Z\"},\"repos\":[{\"id\":2,\"github_user_id\":7,\"name\":\"hosseinalikhani74\\/vokalaRepo\",\"forks\":0,\"stars\":0,\"created_at\":\"2022-02-03T07:46:20.000000Z\",\"updated_at\":\"2022-02-03T07:46:20.000000Z\"}]}]', '127.0.0.1', '2022-02-03 07:53:39', '2022-02-03 07:53:39');
INSERT INTO `search_loggings` VALUES (18, '{\"per_page\":\"3\",\"page\":\"1\",\"name\":\"HosseinAlikhani\"}', '[{\"id\":6,\"github_id\":60945364,\"github_user_id\":6,\"repo_count\":9,\"followers_count\":1,\"popularity\":0,\"created_at\":\"2022-02-03T07:30:56.000000Z\",\"updated_at\":\"2022-02-03T07:46:18.000000Z\",\"user\":{\"id\":6,\"username\":\"HosseinAlikhani\",\"email\":null,\"location\":null,\"join_at\":\"2020-02-11T21:15:57Z\",\"followers_count\":1,\"following_count\":2,\"bio\":\"PHP (LARAVEL)\\r\\nJS (VUEjs)\",\"avatar_url\":\"https:\\/\\/avatars.githubusercontent.com\\/u\\/60945364?v=4\",\"created_at\":\"2022-02-03T07:30:56.000000Z\",\"updated_at\":\"2022-02-03T07:30:56.000000Z\"},\"repos\":[{\"id\":1,\"github_user_id\":6,\"name\":\"HosseinAlikhani\\/RouteGenerator\",\"forks\":0,\"stars\":0,\"created_at\":\"2022-02-03T07:46:18.000000Z\",\"updated_at\":\"2022-02-03T07:46:18.000000Z\"},{\"id\":3,\"github_user_id\":6,\"name\":\"HosseinAlikhani\\/auth-package\",\"forks\":0,\"stars\":0,\"created_at\":\"2022-02-03T07:47:05.000000Z\",\"updated_at\":\"2022-02-03T07:47:05.000000Z\"},{\"id\":4,\"github_user_id\":6,\"name\":\"HosseinAlikhani\\/bpms\",\"forks\":0,\"stars\":0,\"created_at\":\"2022-02-03T07:47:05.000000Z\",\"updated_at\":\"2022-02-03T07:47:05.000000Z\"},{\"id\":5,\"github_user_id\":6,\"name\":\"HosseinAlikhani\\/d3cr33-manage-routes\",\"forks\":0,\"stars\":0,\"created_at\":\"2022-02-03T07:47:05.000000Z\",\"updated_at\":\"2022-02-03T07:47:05.000000Z\"},{\"id\":6,\"github_user_id\":6,\"name\":\"HosseinAlikhani\\/Laravel-Blog\",\"forks\":0,\"stars\":0,\"created_at\":\"2022-02-03T07:47:05.000000Z\",\"updated_at\":\"2022-02-03T07:47:05.000000Z\"},{\"id\":7,\"github_user_id\":6,\"name\":\"HosseinAlikhani\\/Laravel-HelpDesk\",\"forks\":0,\"stars\":0,\"created_at\":\"2022-02-03T07:47:05.000000Z\",\"updated_at\":\"2022-02-03T07:47:05.000000Z\"},{\"id\":8,\"github_user_id\":6,\"name\":\"HosseinAlikhani\\/Notification\",\"forks\":0,\"stars\":0,\"created_at\":\"2022-02-03T07:47:05.000000Z\",\"updated_at\":\"2022-02-03T07:47:05.000000Z\"},{\"id\":9,\"github_user_id\":6,\"name\":\"HosseinAlikhani\\/ORM\",\"forks\":0,\"stars\":0,\"created_at\":\"2022-02-03T07:47:05.000000Z\",\"updated_at\":\"2022-02-03T07:47:05.000000Z\"},{\"id\":10,\"github_user_id\":6,\"name\":\"HosseinAlikhani\\/panel-package\",\"forks\":0,\"stars\":0,\"created_at\":\"2022-02-03T07:47:05.000000Z\",\"updated_at\":\"2022-02-03T07:47:05.000000Z\"}]},{\"id\":7,\"github_id\":61556605,\"github_user_id\":7,\"repo_count\":1,\"followers_count\":0,\"popularity\":0,\"created_at\":\"2022-02-03T07:46:19.000000Z\",\"updated_at\":\"2022-02-03T07:46:20.000000Z\",\"user\":{\"id\":7,\"username\":\"hosseinalikhani74\",\"email\":null,\"location\":null,\"join_at\":\"2020-02-27T17:11:56Z\",\"followers_count\":0,\"following_count\":0,\"bio\":null,\"avatar_url\":\"https:\\/\\/avatars.githubusercontent.com\\/u\\/61556605?v=4\",\"created_at\":\"2022-02-03T07:46:19.000000Z\",\"updated_at\":\"2022-02-03T07:46:19.000000Z\"},\"repos\":[{\"id\":2,\"github_user_id\":7,\"name\":\"hosseinalikhani74\\/vokalaRepo\",\"forks\":0,\"stars\":0,\"created_at\":\"2022-02-03T07:46:20.000000Z\",\"updated_at\":\"2022-02-03T07:46:20.000000Z\"}]}]', '127.0.0.1', '2022-02-03 07:53:58', '2022-02-03 07:53:58');
INSERT INTO `search_loggings` VALUES (19, '{\"per_page\":\"3\",\"page\":\"1\",\"name\":\"HosseinAlikhani\"}', '[{\"id\":6,\"github_id\":60945364,\"github_user_id\":6,\"repo_count\":9,\"followers_count\":1,\"popularity\":0,\"created_at\":\"2022-02-03T07:30:56.000000Z\",\"updated_at\":\"2022-02-03T07:46:18.000000Z\",\"user\":{\"id\":6,\"username\":\"HosseinAlikhani\",\"email\":null,\"location\":null,\"join_at\":\"2020-02-11T21:15:57Z\",\"followers_count\":1,\"following_count\":2,\"bio\":\"PHP (LARAVEL)\\r\\nJS (VUEjs)\",\"avatar_url\":\"https:\\/\\/avatars.githubusercontent.com\\/u\\/60945364?v=4\",\"created_at\":\"2022-02-03T07:30:56.000000Z\",\"updated_at\":\"2022-02-03T07:30:56.000000Z\"},\"repos\":[{\"id\":1,\"github_user_id\":6,\"name\":\"HosseinAlikhani\\/RouteGenerator\",\"forks\":0,\"stars\":0,\"created_at\":\"2022-02-03T07:46:18.000000Z\",\"updated_at\":\"2022-02-03T07:46:18.000000Z\"},{\"id\":3,\"github_user_id\":6,\"name\":\"HosseinAlikhani\\/auth-package\",\"forks\":0,\"stars\":0,\"created_at\":\"2022-02-03T07:47:05.000000Z\",\"updated_at\":\"2022-02-03T07:47:05.000000Z\"},{\"id\":4,\"github_user_id\":6,\"name\":\"HosseinAlikhani\\/bpms\",\"forks\":0,\"stars\":0,\"created_at\":\"2022-02-03T07:47:05.000000Z\",\"updated_at\":\"2022-02-03T07:47:05.000000Z\"},{\"id\":5,\"github_user_id\":6,\"name\":\"HosseinAlikhani\\/d3cr33-manage-routes\",\"forks\":0,\"stars\":0,\"created_at\":\"2022-02-03T07:47:05.000000Z\",\"updated_at\":\"2022-02-03T07:47:05.000000Z\"},{\"id\":6,\"github_user_id\":6,\"name\":\"HosseinAlikhani\\/Laravel-Blog\",\"forks\":0,\"stars\":0,\"created_at\":\"2022-02-03T07:47:05.000000Z\",\"updated_at\":\"2022-02-03T07:47:05.000000Z\"},{\"id\":7,\"github_user_id\":6,\"name\":\"HosseinAlikhani\\/Laravel-HelpDesk\",\"forks\":0,\"stars\":0,\"created_at\":\"2022-02-03T07:47:05.000000Z\",\"updated_at\":\"2022-02-03T07:47:05.000000Z\"},{\"id\":8,\"github_user_id\":6,\"name\":\"HosseinAlikhani\\/Notification\",\"forks\":0,\"stars\":0,\"created_at\":\"2022-02-03T07:47:05.000000Z\",\"updated_at\":\"2022-02-03T07:47:05.000000Z\"},{\"id\":9,\"github_user_id\":6,\"name\":\"HosseinAlikhani\\/ORM\",\"forks\":0,\"stars\":0,\"created_at\":\"2022-02-03T07:47:05.000000Z\",\"updated_at\":\"2022-02-03T07:47:05.000000Z\"},{\"id\":10,\"github_user_id\":6,\"name\":\"HosseinAlikhani\\/panel-package\",\"forks\":0,\"stars\":0,\"created_at\":\"2022-02-03T07:47:05.000000Z\",\"updated_at\":\"2022-02-03T07:47:05.000000Z\"}]},{\"id\":7,\"github_id\":61556605,\"github_user_id\":7,\"repo_count\":1,\"followers_count\":0,\"popularity\":0,\"created_at\":\"2022-02-03T07:46:19.000000Z\",\"updated_at\":\"2022-02-03T07:46:20.000000Z\",\"user\":{\"id\":7,\"username\":\"hosseinalikhani74\",\"email\":null,\"location\":null,\"join_at\":\"2020-02-27T17:11:56Z\",\"followers_count\":0,\"following_count\":0,\"bio\":null,\"avatar_url\":\"https:\\/\\/avatars.githubusercontent.com\\/u\\/61556605?v=4\",\"created_at\":\"2022-02-03T07:46:19.000000Z\",\"updated_at\":\"2022-02-03T07:46:19.000000Z\"},\"repos\":[{\"id\":2,\"github_user_id\":7,\"name\":\"hosseinalikhani74\\/vokalaRepo\",\"forks\":0,\"stars\":0,\"created_at\":\"2022-02-03T07:46:20.000000Z\",\"updated_at\":\"2022-02-03T07:46:20.000000Z\"}]}]', '127.0.0.1', '2022-02-03 07:54:36', '2022-02-03 07:54:36');
INSERT INTO `search_loggings` VALUES (20, '{\"per_page\":\"3\",\"page\":\"1\",\"name\":\"decree\"}', '[{\"id\":8,\"github_id\":1198986,\"github_user_id\":8,\"repo_count\":0,\"followers_count\":1,\"popularity\":null,\"created_at\":\"2022-02-03T08:10:28.000000Z\",\"updated_at\":\"2022-02-03T08:10:28.000000Z\"},{\"id\":9,\"github_id\":64212945,\"github_user_id\":9,\"repo_count\":7,\"followers_count\":0,\"popularity\":null,\"created_at\":\"2022-02-03T08:10:29.000000Z\",\"updated_at\":\"2022-02-03T08:10:29.000000Z\"},{\"id\":10,\"github_id\":33184743,\"github_user_id\":10,\"repo_count\":4,\"followers_count\":0,\"popularity\":null,\"created_at\":\"2022-02-03T08:10:32.000000Z\",\"updated_at\":\"2022-02-03T08:10:32.000000Z\"}]', '127.0.0.1', '2022-02-03 08:10:33', '2022-02-03 08:10:33');
INSERT INTO `search_loggings` VALUES (21, '{\"per_page\":\"3\",\"page\":\"1\",\"name\":\"decree\"}', '[{\"id\":8,\"github_id\":1198986,\"github_user_id\":8,\"repo_count\":0,\"followers_count\":1,\"popularity\":0,\"created_at\":\"2022-02-03T08:10:28.000000Z\",\"updated_at\":\"2022-02-03T08:10:29.000000Z\",\"user\":{\"id\":8,\"username\":\"decree\",\"email\":null,\"location\":null,\"join_at\":\"2011-11-16T09:29:38Z\",\"followers_count\":1,\"following_count\":0,\"bio\":null,\"avatar_url\":\"https:\\/\\/avatars.githubusercontent.com\\/u\\/1198986?v=4\",\"created_at\":\"2022-02-03T08:10:28.000000Z\",\"updated_at\":\"2022-02-03T08:10:28.000000Z\"},\"repos\":[]},{\"id\":9,\"github_id\":64212945,\"github_user_id\":9,\"repo_count\":7,\"followers_count\":0,\"popularity\":0,\"created_at\":\"2022-02-03T08:10:29.000000Z\",\"updated_at\":\"2022-02-03T08:10:31.000000Z\",\"user\":{\"id\":9,\"username\":\"DeCreed001\",\"email\":null,\"location\":\"Nigeria\",\"join_at\":\"2020-04-23T15:02:19Z\",\"followers_count\":0,\"following_count\":1,\"bio\":\"STEM Educator | Front-end Web Developer | Atmospheric Physicist\",\"avatar_url\":\"https:\\/\\/avatars.githubusercontent.com\\/u\\/64212945?v=4\",\"created_at\":\"2022-02-03T08:10:29.000000Z\",\"updated_at\":\"2022-02-03T08:10:29.000000Z\"},\"repos\":[{\"id\":11,\"github_user_id\":9,\"name\":\"DeCreed001\\/alteduconsult\",\"forks\":0,\"stars\":0,\"created_at\":\"2022-02-03T08:10:31.000000Z\",\"updated_at\":\"2022-02-03T08:10:31.000000Z\"},{\"id\":12,\"github_user_id\":9,\"name\":\"DeCreed001\\/decreed001\",\"forks\":0,\"stars\":0,\"created_at\":\"2022-02-03T08:10:31.000000Z\",\"updated_at\":\"2022-02-03T08:10:31.000000Z\"},{\"id\":13,\"github_user_id\":9,\"name\":\"DeCreed001\\/family\",\"forks\":0,\"stars\":0,\"created_at\":\"2022-02-03T08:10:31.000000Z\",\"updated_at\":\"2022-02-03T08:10:31.000000Z\"},{\"id\":14,\"github_user_id\":9,\"name\":\"DeCreed001\\/foodie\",\"forks\":0,\"stars\":0,\"created_at\":\"2022-02-03T08:10:31.000000Z\",\"updated_at\":\"2022-02-03T08:10:31.000000Z\"},{\"id\":15,\"github_user_id\":9,\"name\":\"DeCreed001\\/foodiev2\",\"forks\":0,\"stars\":0,\"created_at\":\"2022-02-03T08:10:31.000000Z\",\"updated_at\":\"2022-02-03T08:10:31.000000Z\"},{\"id\":16,\"github_user_id\":9,\"name\":\"DeCreed001\\/fragment\",\"forks\":0,\"stars\":0,\"created_at\":\"2022-02-03T08:10:31.000000Z\",\"updated_at\":\"2022-02-03T08:10:31.000000Z\"},{\"id\":17,\"github_user_id\":9,\"name\":\"DeCreed001\\/webcsep\",\"forks\":0,\"stars\":0,\"created_at\":\"2022-02-03T08:10:31.000000Z\",\"updated_at\":\"2022-02-03T08:10:31.000000Z\"}]},{\"id\":10,\"github_id\":33184743,\"github_user_id\":10,\"repo_count\":4,\"followers_count\":0,\"popularity\":0,\"created_at\":\"2022-02-03T08:10:32.000000Z\",\"updated_at\":\"2022-02-03T08:10:33.000000Z\",\"user\":{\"id\":10,\"username\":\"decreed\",\"email\":null,\"location\":null,\"join_at\":\"2017-10-28T19:14:41Z\",\"followers_count\":0,\"following_count\":0,\"bio\":null,\"avatar_url\":\"https:\\/\\/avatars.githubusercontent.com\\/u\\/33184743?v=4\",\"created_at\":\"2022-02-03T08:10:32.000000Z\",\"updated_at\":\"2022-02-03T08:10:32.000000Z\"},\"repos\":[{\"id\":18,\"github_user_id\":10,\"name\":\"decreed\\/awesome-first-timers\",\"forks\":0,\"stars\":0,\"created_at\":\"2022-02-03T08:10:33.000000Z\",\"updated_at\":\"2022-02-03T08:10:33.000000Z\"},{\"id\":19,\"github_user_id\":10,\"name\":\"decreed\\/Hacktoberfest-Census\",\"forks\":0,\"stars\":0,\"created_at\":\"2022-02-03T08:10:33.000000Z\",\"updated_at\":\"2022-02-03T08:10:33.000000Z\"},{\"id\":20,\"github_user_id\":10,\"name\":\"decreed\\/Hacktoberfest-Sign-In\",\"forks\":0,\"stars\":0,\"created_at\":\"2022-02-03T08:10:33.000000Z\",\"updated_at\":\"2022-02-03T08:10:33.000000Z\"},{\"id\":21,\"github_user_id\":10,\"name\":\"decreed\\/Make-a-Pull-Request\",\"forks\":0,\"stars\":0,\"created_at\":\"2022-02-03T08:10:33.000000Z\",\"updated_at\":\"2022-02-03T08:10:33.000000Z\"}]},{\"id\":11,\"github_id\":88178632,\"github_user_id\":11,\"repo_count\":3,\"followers_count\":0,\"popularity\":null,\"created_at\":\"2022-02-03T08:10:50.000000Z\",\"updated_at\":\"2022-02-03T08:10:50.000000Z\"},{\"id\":12,\"github_id\":38114672,\"github_user_id\":12,\"repo_count\":2,\"followers_count\":0,\"popularity\":null,\"created_at\":\"2022-02-03T08:10:52.000000Z\",\"updated_at\":\"2022-02-03T08:10:52.000000Z\"},{\"id\":13,\"github_id\":31154432,\"github_user_id\":13,\"repo_count\":0,\"followers_count\":0,\"popularity\":null,\"created_at\":\"2022-02-03T08:10:54.000000Z\",\"updated_at\":\"2022-02-03T08:10:54.000000Z\"},{\"id\":14,\"github_id\":67180102,\"github_user_id\":14,\"repo_count\":0,\"followers_count\":0,\"popularity\":null,\"created_at\":\"2022-02-03T08:10:56.000000Z\",\"updated_at\":\"2022-02-03T08:10:56.000000Z\"},{\"id\":15,\"github_id\":98098756,\"github_user_id\":15,\"repo_count\":0,\"followers_count\":0,\"popularity\":null,\"created_at\":\"2022-02-03T08:10:58.000000Z\",\"updated_at\":\"2022-02-03T08:10:58.000000Z\"},{\"id\":16,\"github_id\":33558958,\"github_user_id\":16,\"repo_count\":0,\"followers_count\":0,\"popularity\":null,\"created_at\":\"2022-02-03T08:11:00.000000Z\",\"updated_at\":\"2022-02-03T08:11:00.000000Z\"},{\"id\":17,\"github_id\":49923995,\"github_user_id\":17,\"repo_count\":0,\"followers_count\":0,\"popularity\":null,\"created_at\":\"2022-02-03T08:11:02.000000Z\",\"updated_at\":\"2022-02-03T08:11:02.000000Z\"},{\"id\":18,\"github_id\":22432409,\"github_user_id\":18,\"repo_count\":1,\"followers_count\":0,\"popularity\":null,\"created_at\":\"2022-02-03T08:11:04.000000Z\",\"updated_at\":\"2022-02-03T08:11:04.000000Z\"},{\"id\":19,\"github_id\":77484168,\"github_user_id\":19,\"repo_count\":0,\"followers_count\":0,\"popularity\":null,\"created_at\":\"2022-02-03T08:11:06.000000Z\",\"updated_at\":\"2022-02-03T08:11:06.000000Z\"},{\"id\":20,\"github_id\":33557378,\"github_user_id\":20,\"repo_count\":1,\"followers_count\":0,\"popularity\":null,\"created_at\":\"2022-02-03T08:11:08.000000Z\",\"updated_at\":\"2022-02-03T08:11:08.000000Z\"},{\"id\":21,\"github_id\":91131239,\"github_user_id\":21,\"repo_count\":0,\"followers_count\":0,\"popularity\":null,\"created_at\":\"2022-02-03T08:11:10.000000Z\",\"updated_at\":\"2022-02-03T08:11:10.000000Z\"},{\"id\":22,\"github_id\":81491805,\"github_user_id\":22,\"repo_count\":0,\"followers_count\":0,\"popularity\":null,\"created_at\":\"2022-02-03T08:11:12.000000Z\",\"updated_at\":\"2022-02-03T08:11:12.000000Z\"},{\"id\":23,\"github_id\":30504755,\"github_user_id\":23,\"repo_count\":2,\"followers_count\":0,\"popularity\":null,\"created_at\":\"2022-02-03T08:11:13.000000Z\",\"updated_at\":\"2022-02-03T08:11:13.000000Z\"},{\"id\":24,\"github_id\":6490385,\"github_user_id\":24,\"repo_count\":1,\"followers_count\":0,\"popularity\":null,\"created_at\":\"2022-02-03T08:11:15.000000Z\",\"updated_at\":\"2022-02-03T08:11:15.000000Z\"},{\"id\":25,\"github_id\":16128790,\"github_user_id\":25,\"repo_count\":0,\"followers_count\":0,\"popularity\":null,\"created_at\":\"2022-02-03T08:11:17.000000Z\",\"updated_at\":\"2022-02-03T08:11:17.000000Z\"},{\"id\":26,\"github_id\":84647828,\"github_user_id\":26,\"repo_count\":0,\"followers_count\":0,\"popularity\":null,\"created_at\":\"2022-02-03T08:11:19.000000Z\",\"updated_at\":\"2022-02-03T08:11:19.000000Z\"},{\"id\":27,\"github_id\":57050518,\"github_user_id\":27,\"repo_count\":0,\"followers_count\":0,\"popularity\":null,\"created_at\":\"2022-02-03T08:11:21.000000Z\",\"updated_at\":\"2022-02-03T08:11:21.000000Z\"},{\"id\":28,\"github_id\":47582698,\"github_user_id\":28,\"repo_count\":0,\"followers_count\":0,\"popularity\":null,\"created_at\":\"2022-02-03T08:11:22.000000Z\",\"updated_at\":\"2022-02-03T08:11:22.000000Z\"},{\"id\":29,\"github_id\":81537343,\"github_user_id\":29,\"repo_count\":0,\"followers_count\":0,\"popularity\":null,\"created_at\":\"2022-02-03T08:11:24.000000Z\",\"updated_at\":\"2022-02-03T08:11:24.000000Z\"},{\"id\":30,\"github_id\":43450606,\"github_user_id\":30,\"repo_count\":0,\"followers_count\":0,\"popularity\":null,\"created_at\":\"2022-02-03T08:11:26.000000Z\",\"updated_at\":\"2022-02-03T08:11:26.000000Z\"}]', '127.0.0.1', '2022-02-03 08:11:27', '2022-02-03 08:11:27');
INSERT INTO `search_loggings` VALUES (22, '{\"per_page\":\"3\",\"page\":\"1\",\"name\":\"decree\"}', '[{\"id\":8,\"github_id\":1198986,\"github_user_id\":8,\"repo_count\":0,\"followers_count\":1,\"popularity\":0,\"created_at\":\"2022-02-03T08:10:28.000000Z\",\"updated_at\":\"2022-02-03T08:10:29.000000Z\",\"user\":{\"id\":8,\"username\":\"decree\",\"email\":null,\"location\":null,\"join_at\":\"2011-11-16T09:29:38Z\",\"followers_count\":1,\"following_count\":0,\"bio\":null,\"avatar_url\":\"https:\\/\\/avatars.githubusercontent.com\\/u\\/1198986?v=4\",\"created_at\":\"2022-02-03T08:10:28.000000Z\",\"updated_at\":\"2022-02-03T08:10:28.000000Z\"},\"repos\":[]},{\"id\":9,\"github_id\":64212945,\"github_user_id\":9,\"repo_count\":7,\"followers_count\":0,\"popularity\":0,\"created_at\":\"2022-02-03T08:10:29.000000Z\",\"updated_at\":\"2022-02-03T08:10:31.000000Z\",\"user\":{\"id\":9,\"username\":\"DeCreed001\",\"email\":null,\"location\":\"Nigeria\",\"join_at\":\"2020-04-23T15:02:19Z\",\"followers_count\":0,\"following_count\":1,\"bio\":\"STEM Educator | Front-end Web Developer | Atmospheric Physicist\",\"avatar_url\":\"https:\\/\\/avatars.githubusercontent.com\\/u\\/64212945?v=4\",\"created_at\":\"2022-02-03T08:10:29.000000Z\",\"updated_at\":\"2022-02-03T08:10:29.000000Z\"},\"repos\":[{\"id\":11,\"github_user_id\":9,\"name\":\"DeCreed001\\/alteduconsult\",\"forks\":0,\"stars\":0,\"created_at\":\"2022-02-03T08:10:31.000000Z\",\"updated_at\":\"2022-02-03T08:10:31.000000Z\"},{\"id\":12,\"github_user_id\":9,\"name\":\"DeCreed001\\/decreed001\",\"forks\":0,\"stars\":0,\"created_at\":\"2022-02-03T08:10:31.000000Z\",\"updated_at\":\"2022-02-03T08:10:31.000000Z\"},{\"id\":13,\"github_user_id\":9,\"name\":\"DeCreed001\\/family\",\"forks\":0,\"stars\":0,\"created_at\":\"2022-02-03T08:10:31.000000Z\",\"updated_at\":\"2022-02-03T08:10:31.000000Z\"},{\"id\":14,\"github_user_id\":9,\"name\":\"DeCreed001\\/foodie\",\"forks\":0,\"stars\":0,\"created_at\":\"2022-02-03T08:10:31.000000Z\",\"updated_at\":\"2022-02-03T08:10:31.000000Z\"},{\"id\":15,\"github_user_id\":9,\"name\":\"DeCreed001\\/foodiev2\",\"forks\":0,\"stars\":0,\"created_at\":\"2022-02-03T08:10:31.000000Z\",\"updated_at\":\"2022-02-03T08:10:31.000000Z\"},{\"id\":16,\"github_user_id\":9,\"name\":\"DeCreed001\\/fragment\",\"forks\":0,\"stars\":0,\"created_at\":\"2022-02-03T08:10:31.000000Z\",\"updated_at\":\"2022-02-03T08:10:31.000000Z\"},{\"id\":17,\"github_user_id\":9,\"name\":\"DeCreed001\\/webcsep\",\"forks\":0,\"stars\":0,\"created_at\":\"2022-02-03T08:10:31.000000Z\",\"updated_at\":\"2022-02-03T08:10:31.000000Z\"}]},{\"id\":10,\"github_id\":33184743,\"github_user_id\":10,\"repo_count\":4,\"followers_count\":0,\"popularity\":0,\"created_at\":\"2022-02-03T08:10:32.000000Z\",\"updated_at\":\"2022-02-03T08:10:33.000000Z\",\"user\":{\"id\":10,\"username\":\"decreed\",\"email\":null,\"location\":null,\"join_at\":\"2017-10-28T19:14:41Z\",\"followers_count\":0,\"following_count\":0,\"bio\":null,\"avatar_url\":\"https:\\/\\/avatars.githubusercontent.com\\/u\\/33184743?v=4\",\"created_at\":\"2022-02-03T08:10:32.000000Z\",\"updated_at\":\"2022-02-03T08:10:32.000000Z\"},\"repos\":[{\"id\":18,\"github_user_id\":10,\"name\":\"decreed\\/awesome-first-timers\",\"forks\":0,\"stars\":0,\"created_at\":\"2022-02-03T08:10:33.000000Z\",\"updated_at\":\"2022-02-03T08:10:33.000000Z\"},{\"id\":19,\"github_user_id\":10,\"name\":\"decreed\\/Hacktoberfest-Census\",\"forks\":0,\"stars\":0,\"created_at\":\"2022-02-03T08:10:33.000000Z\",\"updated_at\":\"2022-02-03T08:10:33.000000Z\"},{\"id\":20,\"github_user_id\":10,\"name\":\"decreed\\/Hacktoberfest-Sign-In\",\"forks\":0,\"stars\":0,\"created_at\":\"2022-02-03T08:10:33.000000Z\",\"updated_at\":\"2022-02-03T08:10:33.000000Z\"},{\"id\":21,\"github_user_id\":10,\"name\":\"decreed\\/Make-a-Pull-Request\",\"forks\":0,\"stars\":0,\"created_at\":\"2022-02-03T08:10:33.000000Z\",\"updated_at\":\"2022-02-03T08:10:33.000000Z\"}]}]', '127.0.0.1', '2022-02-03 08:12:39', '2022-02-03 08:12:39');
INSERT INTO `search_loggings` VALUES (23, '{\"per_page\":\"3\",\"page\":\"13\",\"name\":\"decree\"}', '[]', '127.0.0.1', '2022-02-03 08:12:44', '2022-02-03 08:12:44');
INSERT INTO `search_loggings` VALUES (24, '{\"per_page\":\"3\",\"page\":\"12\",\"name\":\"decree\"}', '[]', '127.0.0.1', '2022-02-03 08:12:48', '2022-02-03 08:12:48');
INSERT INTO `search_loggings` VALUES (25, '{\"per_page\":\"3\",\"page\":\"11\",\"name\":\"decree\"}', '[]', '127.0.0.1', '2022-02-03 08:12:51', '2022-02-03 08:12:51');
INSERT INTO `search_loggings` VALUES (26, '{\"per_page\":\"3\",\"page\":\"17\",\"name\":\"decree\"}', '[]', '127.0.0.1', '2022-02-03 08:12:54', '2022-02-03 08:12:54');
INSERT INTO `search_loggings` VALUES (27, '{\"per_page\":\"3\",\"page\":\"6\",\"name\":\"decree\"}', '[{\"id\":23,\"github_id\":30504755,\"github_user_id\":23,\"repo_count\":2,\"followers_count\":0,\"popularity\":0,\"created_at\":\"2022-02-03T08:11:13.000000Z\",\"updated_at\":\"2022-02-03T08:11:14.000000Z\",\"user\":{\"id\":23,\"username\":\"DecReely\",\"email\":null,\"location\":\"Kocaeli, Turkey\",\"join_at\":\"2017-07-27T16:33:14Z\",\"followers_count\":0,\"following_count\":1,\"bio\":null,\"avatar_url\":\"https:\\/\\/avatars.githubusercontent.com\\/u\\/30504755?v=4\",\"created_at\":\"2022-02-03T08:11:13.000000Z\",\"updated_at\":\"2022-02-03T08:11:13.000000Z\"},\"repos\":[{\"id\":29,\"github_user_id\":23,\"name\":\"DecReely\\/Black-N-White\",\"forks\":0,\"stars\":0,\"created_at\":\"2022-02-03T08:11:14.000000Z\",\"updated_at\":\"2022-02-03T08:11:14.000000Z\"},{\"id\":30,\"github_user_id\":23,\"name\":\"DecReely\\/Programlamaya-Giris\",\"forks\":0,\"stars\":0,\"created_at\":\"2022-02-03T08:11:14.000000Z\",\"updated_at\":\"2022-02-03T08:11:14.000000Z\"}]},{\"id\":24,\"github_id\":6490385,\"github_user_id\":24,\"repo_count\":1,\"followers_count\":0,\"popularity\":0,\"created_at\":\"2022-02-03T08:11:15.000000Z\",\"updated_at\":\"2022-02-03T08:11:16.000000Z\",\"user\":{\"id\":24,\"username\":\"Decreeofpain\",\"email\":null,\"location\":null,\"join_at\":\"2014-01-24T09:57:41Z\",\"followers_count\":0,\"following_count\":0,\"bio\":null,\"avatar_url\":\"https:\\/\\/avatars.githubusercontent.com\\/u\\/6490385?v=4\",\"created_at\":\"2022-02-03T08:11:15.000000Z\",\"updated_at\":\"2022-02-03T08:11:15.000000Z\"},\"repos\":[{\"id\":31,\"github_user_id\":24,\"name\":\"Decreeofpain\\/Hell-Tech\",\"forks\":0,\"stars\":0,\"created_at\":\"2022-02-03T08:11:16.000000Z\",\"updated_at\":\"2022-02-03T08:11:16.000000Z\"}]},{\"id\":25,\"github_id\":16128790,\"github_user_id\":25,\"repo_count\":0,\"followers_count\":0,\"popularity\":0,\"created_at\":\"2022-02-03T08:11:17.000000Z\",\"updated_at\":\"2022-02-03T08:11:18.000000Z\",\"user\":{\"id\":25,\"username\":\"decrees\",\"email\":null,\"location\":null,\"join_at\":\"2015-12-03T04:34:52Z\",\"followers_count\":0,\"following_count\":0,\"bio\":null,\"avatar_url\":\"https:\\/\\/avatars.githubusercontent.com\\/u\\/16128790?v=4\",\"created_at\":\"2022-02-03T08:11:17.000000Z\",\"updated_at\":\"2022-02-03T08:11:17.000000Z\"},\"repos\":[]}]', '127.0.0.1', '2022-02-03 08:12:59', '2022-02-03 08:12:59');
INSERT INTO `search_loggings` VALUES (28, '[]', '[{\"id\":6,\"github_id\":60945364,\"github_user_id\":6,\"repo_count\":9,\"followers_count\":1,\"popularity\":0,\"created_at\":\"2022-02-03T07:30:56.000000Z\",\"updated_at\":\"2022-02-03T07:46:18.000000Z\",\"user\":{\"id\":6,\"username\":\"HosseinAlikhani\",\"email\":null,\"location\":null,\"join_at\":\"2020-02-11T21:15:57Z\",\"followers_count\":1,\"following_count\":2,\"bio\":\"PHP (LARAVEL)\\r\\nJS (VUEjs)\",\"avatar_url\":\"https:\\/\\/avatars.githubusercontent.com\\/u\\/60945364?v=4\",\"created_at\":\"2022-02-03T07:30:56.000000Z\",\"updated_at\":\"2022-02-03T07:30:56.000000Z\"},\"repos\":[{\"id\":1,\"github_user_id\":6,\"name\":\"HosseinAlikhani\\/RouteGenerator\",\"forks\":0,\"stars\":0,\"created_at\":\"2022-02-03T07:46:18.000000Z\",\"updated_at\":\"2022-02-03T07:46:18.000000Z\"},{\"id\":3,\"github_user_id\":6,\"name\":\"HosseinAlikhani\\/auth-package\",\"forks\":0,\"stars\":0,\"created_at\":\"2022-02-03T07:47:05.000000Z\",\"updated_at\":\"2022-02-03T07:47:05.000000Z\"},{\"id\":4,\"github_user_id\":6,\"name\":\"HosseinAlikhani\\/bpms\",\"forks\":0,\"stars\":0,\"created_at\":\"2022-02-03T07:47:05.000000Z\",\"updated_at\":\"2022-02-03T07:47:05.000000Z\"},{\"id\":5,\"github_user_id\":6,\"name\":\"HosseinAlikhani\\/d3cr33-manage-routes\",\"forks\":0,\"stars\":0,\"created_at\":\"2022-02-03T07:47:05.000000Z\",\"updated_at\":\"2022-02-03T07:47:05.000000Z\"},{\"id\":6,\"github_user_id\":6,\"name\":\"HosseinAlikhani\\/Laravel-Blog\",\"forks\":0,\"stars\":0,\"created_at\":\"2022-02-03T07:47:05.000000Z\",\"updated_at\":\"2022-02-03T07:47:05.000000Z\"},{\"id\":7,\"github_user_id\":6,\"name\":\"HosseinAlikhani\\/Laravel-HelpDesk\",\"forks\":0,\"stars\":0,\"created_at\":\"2022-02-03T07:47:05.000000Z\",\"updated_at\":\"2022-02-03T07:47:05.000000Z\"},{\"id\":8,\"github_user_id\":6,\"name\":\"HosseinAlikhani\\/Notification\",\"forks\":0,\"stars\":0,\"created_at\":\"2022-02-03T07:47:05.000000Z\",\"updated_at\":\"2022-02-03T07:47:05.000000Z\"},{\"id\":9,\"github_user_id\":6,\"name\":\"HosseinAlikhani\\/ORM\",\"forks\":0,\"stars\":0,\"created_at\":\"2022-02-03T07:47:05.000000Z\",\"updated_at\":\"2022-02-03T07:47:05.000000Z\"},{\"id\":10,\"github_user_id\":6,\"name\":\"HosseinAlikhani\\/panel-package\",\"forks\":0,\"stars\":0,\"created_at\":\"2022-02-03T07:47:05.000000Z\",\"updated_at\":\"2022-02-03T07:47:05.000000Z\"}]}]', '127.0.0.1', '2022-02-03 08:14:38', '2022-02-03 08:14:38');
INSERT INTO `search_loggings` VALUES (29, '[]', '[{\"id\":6,\"github_id\":60945364,\"github_user_id\":6,\"repo_count\":9,\"followers_count\":1,\"popularity\":0,\"created_at\":\"2022-02-03T07:30:56.000000Z\",\"updated_at\":\"2022-02-03T07:46:18.000000Z\",\"user\":{\"id\":6,\"username\":\"HosseinAlikhani\",\"email\":null,\"location\":null,\"join_at\":\"2020-02-11T21:15:57Z\",\"followers_count\":1,\"following_count\":2,\"bio\":\"PHP (LARAVEL)\\r\\nJS (VUEjs)\",\"avatar_url\":\"https:\\/\\/avatars.githubusercontent.com\\/u\\/60945364?v=4\",\"created_at\":\"2022-02-03T07:30:56.000000Z\",\"updated_at\":\"2022-02-03T07:30:56.000000Z\"},\"repos\":[{\"id\":1,\"github_user_id\":6,\"name\":\"HosseinAlikhani\\/RouteGenerator\",\"forks\":0,\"stars\":0,\"created_at\":\"2022-02-03T07:46:18.000000Z\",\"updated_at\":\"2022-02-03T07:46:18.000000Z\"},{\"id\":3,\"github_user_id\":6,\"name\":\"HosseinAlikhani\\/auth-package\",\"forks\":0,\"stars\":0,\"created_at\":\"2022-02-03T07:47:05.000000Z\",\"updated_at\":\"2022-02-03T07:47:05.000000Z\"},{\"id\":4,\"github_user_id\":6,\"name\":\"HosseinAlikhani\\/bpms\",\"forks\":0,\"stars\":0,\"created_at\":\"2022-02-03T07:47:05.000000Z\",\"updated_at\":\"2022-02-03T07:47:05.000000Z\"},{\"id\":5,\"github_user_id\":6,\"name\":\"HosseinAlikhani\\/d3cr33-manage-routes\",\"forks\":0,\"stars\":0,\"created_at\":\"2022-02-03T07:47:05.000000Z\",\"updated_at\":\"2022-02-03T07:47:05.000000Z\"},{\"id\":6,\"github_user_id\":6,\"name\":\"HosseinAlikhani\\/Laravel-Blog\",\"forks\":0,\"stars\":0,\"created_at\":\"2022-02-03T07:47:05.000000Z\",\"updated_at\":\"2022-02-03T07:47:05.000000Z\"},{\"id\":7,\"github_user_id\":6,\"name\":\"HosseinAlikhani\\/Laravel-HelpDesk\",\"forks\":0,\"stars\":0,\"created_at\":\"2022-02-03T07:47:05.000000Z\",\"updated_at\":\"2022-02-03T07:47:05.000000Z\"},{\"id\":8,\"github_user_id\":6,\"name\":\"HosseinAlikhani\\/Notification\",\"forks\":0,\"stars\":0,\"created_at\":\"2022-02-03T07:47:05.000000Z\",\"updated_at\":\"2022-02-03T07:47:05.000000Z\"},{\"id\":9,\"github_user_id\":6,\"name\":\"HosseinAlikhani\\/ORM\",\"forks\":0,\"stars\":0,\"created_at\":\"2022-02-03T07:47:05.000000Z\",\"updated_at\":\"2022-02-03T07:47:05.000000Z\"},{\"id\":10,\"github_user_id\":6,\"name\":\"HosseinAlikhani\\/panel-package\",\"forks\":0,\"stars\":0,\"created_at\":\"2022-02-03T07:47:05.000000Z\",\"updated_at\":\"2022-02-03T07:47:05.000000Z\"}]}]', '127.0.0.1', '2022-02-03 08:15:03', '2022-02-03 08:15:03');
COMMIT;

-- ----------------------------
-- Table structure for users
-- ----------------------------
DROP TABLE IF EXISTS `users`;
CREATE TABLE `users` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `users_email_unique` (`email`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of users
-- ----------------------------
BEGIN;
COMMIT;

SET FOREIGN_KEY_CHECKS = 1;
