/*
 Navicat Premium Data Transfer

 Source Server         : docker
 Source Server Type    : MySQL
 Source Server Version : 50725
 Source Host           : 127.0.0.1:3306
 Source Schema         : brush_review

 Target Server Type    : MySQL
 Target Server Version : 50725
 File Encoding         : 65001

 Date: 19/02/2019 02:36:03
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for action_logs
-- ----------------------------
DROP TABLE IF EXISTS `action_logs`;
CREATE TABLE `action_logs`  (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `admin_id` int(11) NULL DEFAULT NULL COMMENT '管理员id',
  `data` json NOT NULL COMMENT '操作内容',
  `created_at` timestamp(0) NULL DEFAULT NULL,
  `updated_at` timestamp(0) NULL DEFAULT NULL,
  `type` tinyint(4) NOT NULL DEFAULT 1 COMMENT '操作日志类型,1 权限操作日志, 2 登录操作日志',
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `action_logs_admin_id_index`(`admin_id`) USING BTREE,
  INDEX `action_logs_type_index`(`type`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 51 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of action_logs
-- ----------------------------
INSERT INTO `action_logs` VALUES (1, 1, '{\"ip\": \"172.22.0.1\", \"action\": \"管理员: zl20117 操作了 【角色管理】- 删除角色 模块\", \"address\": \"局域网局域网\"}', '2019-02-15 06:20:31', '2019-02-15 06:20:31', 1);
INSERT INTO `action_logs` VALUES (2, 1, '{\"ip\": \"172.22.0.1\", \"action\": \"管理员: zl20117 操作了 【角色管理】- 添加数据 模块\", \"address\": \"局域网局域网\"}', '2019-02-15 06:20:50', '2019-02-15 06:20:50', 1);
INSERT INTO `action_logs` VALUES (3, 1, '{\"ip\": \"172.22.0.1\", \"action\": \"管理员: zl20117 操作了 【角色管理】- 权限分配 模块\", \"address\": \"局域网局域网\"}', '2019-02-15 06:21:17', '2019-02-15 06:21:17', 1);
INSERT INTO `action_logs` VALUES (4, 1, '{\"ip\": \"172.22.0.1\", \"action\": \"管理员: zl20117 操作了 【权限管理】- 数据更新 模块\", \"address\": \"局域网局域网\"}', '2019-02-15 06:22:24', '2019-02-15 06:22:24', 1);
INSERT INTO `action_logs` VALUES (5, 1, '{\"ip\": \"172.22.0.1\", \"action\": \"管理员: zl20117 操作了 【权限管理】- 数据更新 模块\", \"address\": \"局域网局域网\"}', '2019-02-15 06:23:24', '2019-02-15 06:23:24', 1);
INSERT INTO `action_logs` VALUES (6, 1, '{\"ip\": \"172.22.0.1\", \"action\": \"管理员: zl20117 操作了 【管理员管理】- 数据更新 模块\", \"address\": \"局域网局域网\"}', '2019-02-15 06:32:13', '2019-02-15 06:32:13', 1);
INSERT INTO `action_logs` VALUES (7, 1, '{\"ip\": \"172.22.0.1\", \"action\": \"管理员: zl20117 操作了 【管理员管理】- 添加数据 模块\", \"address\": \"局域网局域网\"}', '2019-02-15 06:33:12', '2019-02-15 06:33:12', 1);
INSERT INTO `action_logs` VALUES (8, 1, '{\"ip\": \"172.22.0.1\", \"action\": \"管理员: zl20117 操作了 【管理员管理】- 添加数据 模块\", \"address\": \"局域网局域网\"}', '2019-02-15 06:33:27', '2019-02-15 06:33:27', 1);
INSERT INTO `action_logs` VALUES (9, NULL, '{\"ip\": \"172.22.0.1\", \"action\": \"管理员: scw 登录成功\", \"address\": \"局域网局域网\"}', '2019-02-15 06:33:48', '2019-02-15 06:33:48', 1);
INSERT INTO `action_logs` VALUES (10, NULL, '{\"ip\": \"172.22.0.1\", \"action\": \"管理员: zl20117 登录成功\", \"address\": \"局域网局域网\"}', '2019-02-15 06:34:19', '2019-02-15 06:34:19', 1);
INSERT INTO `action_logs` VALUES (11, 1, '{\"ip\": \"172.22.0.1\", \"action\": \"管理员: zl20117 操作了 【角色管理】- 权限分配 模块\", \"address\": \"局域网局域网\"}', '2019-02-15 06:34:53', '2019-02-15 06:34:53', 1);
INSERT INTO `action_logs` VALUES (12, NULL, '{\"ip\": \"172.22.0.1\", \"action\": \"管理员: scw 登录成功\", \"address\": \"局域网局域网\"}', '2019-02-15 06:35:21', '2019-02-15 06:35:21', 1);
INSERT INTO `action_logs` VALUES (13, NULL, '{\"ip\": \"172.22.0.1\", \"action\": \"管理员: zl20117 登录成功\", \"address\": \"局域网局域网\"}', '2019-02-15 06:35:53', '2019-02-15 06:35:53', 1);
INSERT INTO `action_logs` VALUES (14, 1, '{\"ip\": \"172.22.0.1\", \"action\": \"管理员: zl20117 操作了 【权限管理】- 数据更新 模块\", \"address\": \"局域网局域网\"}', '2019-02-15 06:36:30', '2019-02-15 06:36:30', 1);
INSERT INTO `action_logs` VALUES (15, NULL, '{\"ip\": \"172.22.0.1\", \"action\": \"管理员: scw 登录成功\", \"address\": \"局域网局域网\"}', '2019-02-15 06:37:00', '2019-02-15 06:37:00', 1);
INSERT INTO `action_logs` VALUES (16, NULL, '{\"ip\": \"172.22.0.1\", \"action\": \"管理员: zl20117 登录成功\", \"address\": \"局域网局域网\"}', '2019-02-15 06:38:42', '2019-02-15 06:38:42', 1);
INSERT INTO `action_logs` VALUES (17, NULL, '{\"ip\": \"172.22.0.1\", \"action\": \"管理员: scw 登录成功\", \"address\": \"局域网局域网\"}', '2019-02-15 06:41:00', '2019-02-15 06:41:00', 1);
INSERT INTO `action_logs` VALUES (18, NULL, '{\"ip\": \"172.22.0.1\", \"action\": \"管理员: zl20117 登录成功\", \"address\": \"局域网局域网\"}', '2019-02-15 06:47:48', '2019-02-15 06:47:48', 1);
INSERT INTO `action_logs` VALUES (19, 1, '{\"ip\": \"172.22.0.1\", \"action\": \"管理员: zl20117 操作了 【管理员管理】- 添加数据 模块\", \"address\": \"局域网局域网\"}', '2019-02-15 07:02:35', '2019-02-15 07:02:35', 1);
INSERT INTO `action_logs` VALUES (20, 1, '{\"ip\": \"172.22.0.1\", \"action\": \"管理员: zl20117 操作了 【管理员管理】- 添加数据 模块\", \"address\": \"局域网局域网\"}', '2019-02-15 07:02:42', '2019-02-15 07:02:42', 1);
INSERT INTO `action_logs` VALUES (21, 1, '{\"ip\": \"172.22.0.1\", \"action\": \"管理员: zl20117 操作了 【权限管理】- 添加数据 模块\", \"address\": \"局域网局域网\"}', '2019-02-15 07:06:14', '2019-02-15 07:06:14', 1);
INSERT INTO `action_logs` VALUES (22, 1, '{\"ip\": \"172.22.0.1\", \"action\": \"管理员: zl20117 操作了 【权限管理】- 添加数据 模块\", \"address\": \"局域网局域网\"}', '2019-02-15 07:07:36', '2019-02-15 07:07:36', 1);
INSERT INTO `action_logs` VALUES (23, 1, '{\"ip\": \"172.22.0.1\", \"action\": \"管理员: zl20117 操作了 【权限管理】- 添加数据 模块\", \"address\": \"局域网局域网\"}', '2019-02-15 07:08:13', '2019-02-15 07:08:13', 1);
INSERT INTO `action_logs` VALUES (24, 1, '{\"ip\": \"172.22.0.1\", \"action\": \"管理员: zl20117 操作了 【权限管理】- 添加数据 模块\", \"address\": \"局域网局域网\"}', '2019-02-15 07:08:52', '2019-02-15 07:08:52', 1);
INSERT INTO `action_logs` VALUES (25, 1, '{\"ip\": \"172.22.0.1\", \"action\": \"管理员: zl20117 操作了 【权限管理】- 添加数据 模块\", \"address\": \"局域网局域网\"}', '2019-02-15 07:09:18', '2019-02-15 07:09:18', 1);
INSERT INTO `action_logs` VALUES (26, 1, '{\"ip\": \"172.22.0.1\", \"action\": \"管理员: zl20117 操作了 【权限管理】- 数据更新 模块\", \"address\": \"局域网局域网\"}', '2019-02-15 07:10:04', '2019-02-15 07:10:04', 1);
INSERT INTO `action_logs` VALUES (27, 1, '{\"ip\": \"172.22.0.1\", \"action\": \"管理员: zl20117 操作了 【权限管理】- 数据更新 模块\", \"address\": \"局域网局域网\"}', '2019-02-15 07:13:23', '2019-02-15 07:13:23', 1);
INSERT INTO `action_logs` VALUES (28, 1, '{\"ip\": \"172.22.0.1\", \"action\": \"管理员: zl20117 操作了 【管理员管理】- 添加数据 模块\", \"address\": \"局域网局域网\"}', '2019-02-15 08:57:47', '2019-02-15 08:57:47', 1);
INSERT INTO `action_logs` VALUES (29, 1, '{\"ip\": \"172.22.0.1\", \"action\": \"管理员: zl20117 操作了 【管理员管理】- 添加数据 模块\", \"address\": \"局域网局域网\"}', '2019-02-15 09:42:49', '2019-02-15 09:42:49', 1);
INSERT INTO `action_logs` VALUES (30, 1, '{\"ip\": \"172.22.0.1\", \"action\": \"管理员: zl20117 操作了 【管理员管理】- 添加数据 模块\", \"address\": \"局域网局域网\"}', '2019-02-15 09:43:14', '2019-02-15 09:43:14', 1);
INSERT INTO `action_logs` VALUES (31, 1, '{\"ip\": \"172.22.0.1\", \"action\": \"管理员: zl20117 操作了 【管理员管理】- 添加数据 模块\", \"address\": \"局域网局域网\"}', '2019-02-15 09:44:34', '2019-02-15 09:44:34', 1);
INSERT INTO `action_logs` VALUES (32, 1, '{\"ip\": \"172.22.0.1\", \"action\": \"管理员: zl20117 操作了 【管理员管理】- 添加数据 模块\", \"address\": \"局域网局域网\"}', '2019-02-15 09:44:52', '2019-02-15 09:44:52', 1);
INSERT INTO `action_logs` VALUES (33, 1, '{\"ip\": \"172.22.0.1\", \"action\": \"管理员: zl20117 操作了 【管理员管理】- 添加数据 模块\", \"address\": \"局域网局域网\"}', '2019-02-15 09:45:57', '2019-02-15 09:45:57', 1);
INSERT INTO `action_logs` VALUES (34, 1, '{\"ip\": \"172.22.0.1\", \"action\": \"管理员: zl20117 操作了 【管理员管理】- 添加数据 模块\", \"address\": \"局域网局域网\"}', '2019-02-15 09:46:24', '2019-02-15 09:46:24', 1);
INSERT INTO `action_logs` VALUES (35, 1, '{\"ip\": \"172.22.0.1\", \"action\": \"管理员: zl20117 操作了 【管理员管理】- 添加数据 模块\", \"address\": \"局域网局域网\"}', '2019-02-15 09:47:24', '2019-02-15 09:47:24', 1);
INSERT INTO `action_logs` VALUES (36, 1, '{\"ip\": \"172.22.0.1\", \"action\": \"管理员: zl20117 操作了 【管理员管理】- 添加数据 模块\", \"address\": \"局域网局域网\"}', '2019-02-15 09:47:45', '2019-02-15 09:47:45', 1);
INSERT INTO `action_logs` VALUES (37, NULL, '{\"ip\": \"172.19.0.1\", \"action\": \"管理员: zl20117 登录成功\", \"address\": \"局域网局域网\"}', '2019-02-16 11:01:25', '2019-02-16 11:01:25', 1);
INSERT INTO `action_logs` VALUES (38, NULL, '{\"ip\": \"172.19.0.1\", \"action\": \"管理员: zl20117 登录成功\", \"address\": \"局域网局域网\"}', '2019-02-17 07:32:09', '2019-02-17 07:32:09', 1);
INSERT INTO `action_logs` VALUES (39, NULL, '{\"ip\": \"172.19.0.1\", \"action\": \"管理员: zl20117 登录成功\", \"address\": \"局域网局域网\"}', '2019-02-17 11:55:29', '2019-02-17 11:55:29', 1);
INSERT INTO `action_logs` VALUES (40, 1, '{\"ip\": \"172.19.0.1\", \"action\": \"管理员: zl20117 操作了 【权限管理】- 添加数据 模块\", \"address\": \"局域网局域网\"}', '2019-02-17 11:58:06', '2019-02-17 11:58:06', 1);
INSERT INTO `action_logs` VALUES (41, 1, '{\"ip\": \"172.19.0.1\", \"action\": \"管理员: zl20117 操作了 【权限管理】- 数据更新 模块\", \"address\": \"局域网局域网\"}', '2019-02-17 11:58:26', '2019-02-17 11:58:26', 1);
INSERT INTO `action_logs` VALUES (42, NULL, '{\"ip\": \"172.19.0.1\", \"action\": \"管理员: scw 登录成功\", \"address\": \"局域网局域网\"}', '2019-02-18 12:51:58', '2019-02-18 12:51:58', 1);
INSERT INTO `action_logs` VALUES (43, NULL, '{\"ip\": \"172.19.0.1\", \"action\": \"管理员: zl20117 登录成功\", \"address\": \"局域网局域网\"}', '2019-02-18 12:52:22', '2019-02-18 12:52:22', 1);
INSERT INTO `action_logs` VALUES (44, 1, '{\"ip\": \"172.19.0.1\", \"action\": \"管理员: zl20117 操作了 【角色管理】- 权限分配 模块\", \"address\": \"局域网局域网\"}', '2019-02-18 14:28:44', '2019-02-18 14:28:44', 1);
INSERT INTO `action_logs` VALUES (45, NULL, '{\"ip\": \"172.19.0.1\", \"action\": \"管理员: scw 登录成功\", \"address\": \"局域网局域网\"}', '2019-02-18 14:28:57', '2019-02-18 14:28:57', 1);
INSERT INTO `action_logs` VALUES (46, NULL, '{\"ip\": \"172.19.0.1\", \"action\": \"管理员: zl20117 登录成功\", \"address\": \"局域网局域网\"}', '2019-02-18 14:29:16', '2019-02-18 14:29:16', 1);
INSERT INTO `action_logs` VALUES (47, 1, '{\"ip\": \"172.19.0.1\", \"action\": \"管理员: zl20117 操作了 【评论管理】- 保存评论 模块\", \"address\": \"局域网局域网\"}', '2019-02-18 14:29:39', '2019-02-18 14:29:39', 1);
INSERT INTO `action_logs` VALUES (48, 1, '{\"ip\": \"172.19.0.1\", \"action\": \"管理员: zl20117 操作了 【评论管理】- 保存评论 模块\", \"address\": \"局域网局域网\"}', '2019-02-18 17:59:40', '2019-02-18 17:59:40', 1);
INSERT INTO `action_logs` VALUES (49, 1, '{\"ip\": \"172.19.0.1\", \"action\": \"管理员: zl20117 操作了 【评论管理】- 保存评论 模块\", \"address\": \"局域网局域网\"}', '2019-02-18 17:59:48', '2019-02-18 17:59:48', 1);
INSERT INTO `action_logs` VALUES (50, 1, '{\"ip\": \"172.19.0.1\", \"action\": \"管理员: zl20117 操作了 【评论管理】- 保存评论 模块\", \"address\": \"局域网局域网\"}', '2019-02-18 17:59:55', '2019-02-18 17:59:55', 1);

-- ----------------------------
-- Table structure for admin_role
-- ----------------------------
DROP TABLE IF EXISTS `admin_role`;
CREATE TABLE `admin_role`  (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `admin_id` int(11) NOT NULL COMMENT '管理员id',
  `role_id` int(11) NOT NULL COMMENT '角色id',
  `created_at` timestamp(0) NULL DEFAULT NULL,
  `updated_at` timestamp(0) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `admin_role_admin_id_index`(`admin_id`) USING BTREE,
  INDEX `admin_role_role_id_index`(`role_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 22 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of admin_role
-- ----------------------------
INSERT INTO `admin_role` VALUES (2, 2, 2, '2017-11-12 11:21:46', '2017-11-12 11:21:46');
INSERT INTO `admin_role` VALUES (6, 1, 1, '2017-11-13 03:13:36', '2017-11-13 03:13:36');
INSERT INTO `admin_role` VALUES (9, 1, 3, '2019-02-15 06:32:14', '2019-02-15 06:32:14');
INSERT INTO `admin_role` VALUES (10, 7, 3, '2019-02-15 06:33:27', '2019-02-15 06:33:27');

-- ----------------------------
-- Table structure for admins
-- ----------------------------
DROP TABLE IF EXISTS `admins`;
CREATE TABLE `admins`  (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `hashid` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `name` varchar(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '用户名',
  `password` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '密码',
  `avatr` varchar(128) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '头像',
  `login_count` int(11) NOT NULL DEFAULT 0 COMMENT '登录次数',
  `create_ip` varchar(128) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '注册ip',
  `last_login_ip` varchar(128) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '最后登录IP',
  `status` tinyint(4) NOT NULL DEFAULT 1 COMMENT '状态: 1 正常, 2=>禁止',
  `created_at` timestamp(0) NULL DEFAULT NULL,
  `updated_at` timestamp(0) NULL DEFAULT NULL,
  `expire_time` timestamp(0) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `admins_status_index`(`status`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 15 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of admins
-- ----------------------------
INSERT INTO `admins` VALUES (1, 'b9Eb', 'zl20117', '$2y$10$aJt12sastIe1NxI5dJ9OJOB6ir8Ry/Ef.AhRVuf7l2ND.58tFAEna', '/uploads/images/avatrs/201711/13//1510542803_2gM4ffLylf.jpeg', 17, '127.0.0.1', '127.0.0.1', 1, '2017-11-12 11:21:32', '2019-02-18 14:29:16', NULL);
INSERT INTO `admins` VALUES (7, 'gjNg', 'scw', '$2y$10$EY4cs6cT1DzVgUUQc617Bu1wzk2PpSzShmPPzM7MyFwJpVWnGTDEG', NULL, 6, '172.22.0.1', '172.22.0.1', 1, '2019-02-15 06:33:27', '2019-02-18 14:28:57', NULL);

-- ----------------------------
-- Table structure for comments
-- ----------------------------
DROP TABLE IF EXISTS `comments`;
CREATE TABLE `comments`  (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `admin_id` int(11) NULL DEFAULT NULL,
  `content` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '评论内容',
  `is_publish` tinyint(1) NOT NULL DEFAULT 1 COMMENT '是否发布，0未发布，1已发布',
  `is_used` tinyint(1) NOT NULL DEFAULT 0 COMMENT '是否领取，0未领取，1已领取',
  `created_at` datetime(0) NULL DEFAULT NULL COMMENT '创建时间',
  `updated_at` datetime(0) NULL DEFAULT NULL COMMENT '修改时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 5 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci COMMENT = '评论表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of comments
-- ----------------------------
INSERT INTO `comments` VALUES (1, 1, 'sdfdsf', 1, 0, '2019-02-18 14:29:39', '2019-02-18 18:11:09');
INSERT INTO `comments` VALUES (2, 1, '2222', 1, 1, '2019-02-18 17:59:40', '2019-02-18 18:28:47');
INSERT INTO `comments` VALUES (3, 1, '3333', 2, 0, '2019-02-18 17:59:48', '2019-02-18 17:59:48');
INSERT INTO `comments` VALUES (4, 1, '444', 1, 1, '2019-02-18 17:59:55', '2019-02-18 18:29:45');

-- ----------------------------
-- Table structure for ling_qus
-- ----------------------------
DROP TABLE IF EXISTS `ling_qus`;
CREATE TABLE `ling_qus`  (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `ip` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `time` int(11) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 2 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of ling_qus
-- ----------------------------
INSERT INTO `ling_qus` VALUES (1, '172.19.0.1', 1550514585);

-- ----------------------------
-- Table structure for migrations
-- ----------------------------
DROP TABLE IF EXISTS `migrations`;
CREATE TABLE `migrations`  (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `migration` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 12 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of migrations
-- ----------------------------
INSERT INTO `migrations` VALUES (1, '2017_11_09_101232_create_admins_table', 1);
INSERT INTO `migrations` VALUES (2, '2017_11_09_102926_create_roles_table', 1);
INSERT INTO `migrations` VALUES (3, '2017_11_09_103632_create_rules_table', 1);
INSERT INTO `migrations` VALUES (4, '2017_11_09_104449_create_admin_role_table', 1);
INSERT INTO `migrations` VALUES (5, '2017_11_09_104749_create_role_auth_table', 1);
INSERT INTO `migrations` VALUES (6, '2017_11_17_075523_create_action_logs_table', 2);
INSERT INTO `migrations` VALUES (7, '2017_11_21_072911_add_type_to_action_logs', 3);
INSERT INTO `migrations` VALUES (8, '2017_11_21_102920_add_fonts_to_rules', 4);
INSERT INTO `migrations` VALUES (10, '2019_02_17_075729_create_comments_tables', 5);
INSERT INTO `migrations` VALUES (11, '2019_02_17_082524_alter_comments_time_comment', 6);

-- ----------------------------
-- Table structure for role_auth
-- ----------------------------
DROP TABLE IF EXISTS `role_auth`;
CREATE TABLE `role_auth`  (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `role_id` int(11) NOT NULL COMMENT '角色id',
  `rule_id` int(11) NOT NULL COMMENT '权限id',
  `created_at` timestamp(0) NULL DEFAULT NULL,
  `updated_at` timestamp(0) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `role_auth_role_id_index`(`role_id`) USING BTREE,
  INDEX `role_auth_rule_id_index`(`rule_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 75 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of role_auth
-- ----------------------------
INSERT INTO `role_auth` VALUES (12, 1, 1, '2017-11-13 15:21:24', '2017-11-13 15:21:24');
INSERT INTO `role_auth` VALUES (13, 1, 2, '2017-11-13 15:21:24', '2017-11-13 15:21:24');
INSERT INTO `role_auth` VALUES (14, 1, 3, '2017-11-13 15:21:24', '2017-11-13 15:21:24');
INSERT INTO `role_auth` VALUES (15, 1, 4, '2017-11-13 15:21:24', '2017-11-13 15:21:24');
INSERT INTO `role_auth` VALUES (16, 1, 5, '2017-11-13 15:21:24', '2017-11-13 15:21:24');
INSERT INTO `role_auth` VALUES (17, 1, 6, '2017-11-13 15:21:24', '2017-11-13 15:21:24');
INSERT INTO `role_auth` VALUES (18, 1, 7, '2017-11-13 15:21:24', '2017-11-13 15:21:24');
INSERT INTO `role_auth` VALUES (19, 1, 8, '2017-11-13 15:21:24', '2017-11-13 15:21:24');
INSERT INTO `role_auth` VALUES (20, 1, 9, '2017-11-13 15:21:24', '2017-11-13 15:21:24');
INSERT INTO `role_auth` VALUES (24, 1, 10, '2017-11-20 02:47:13', '2017-11-20 02:47:13');
INSERT INTO `role_auth` VALUES (25, 1, 11, '2017-11-20 02:47:13', '2017-11-20 02:47:13');
INSERT INTO `role_auth` VALUES (26, 1, 12, '2017-11-20 02:47:13', '2017-11-20 02:47:13');
INSERT INTO `role_auth` VALUES (27, 1, 13, '2017-11-20 02:47:13', '2017-11-20 02:47:13');
INSERT INTO `role_auth` VALUES (28, 1, 14, '2017-11-20 02:47:13', '2017-11-20 02:47:13');
INSERT INTO `role_auth` VALUES (29, 1, 15, '2017-11-20 02:47:13', '2017-11-20 02:47:13');
INSERT INTO `role_auth` VALUES (30, 1, 16, '2017-11-20 02:47:13', '2017-11-20 02:47:13');
INSERT INTO `role_auth` VALUES (31, 1, 17, '2017-11-20 02:47:13', '2017-11-20 02:47:13');
INSERT INTO `role_auth` VALUES (32, 1, 18, '2017-11-20 02:47:13', '2017-11-20 02:47:13');
INSERT INTO `role_auth` VALUES (49, 1, 19, '2017-11-20 04:05:53', '2017-11-20 04:05:53');
INSERT INTO `role_auth` VALUES (50, 1, 20, '2017-11-20 04:05:53', '2017-11-20 04:05:53');
INSERT INTO `role_auth` VALUES (51, 1, 21, '2017-11-20 04:05:53', '2017-11-20 04:05:53');
INSERT INTO `role_auth` VALUES (52, 1, 22, '2017-11-20 04:05:53', '2017-11-20 04:05:53');
INSERT INTO `role_auth` VALUES (53, 1, 23, '2017-11-20 04:05:53', '2017-11-20 04:05:53');
INSERT INTO `role_auth` VALUES (54, 1, 24, '2017-11-20 04:05:53', '2017-11-20 04:05:53');
INSERT INTO `role_auth` VALUES (55, 1, 25, '2017-11-20 04:05:53', '2017-11-20 04:05:53');
INSERT INTO `role_auth` VALUES (65, 1, 26, '2017-11-21 09:18:31', '2017-11-21 09:18:31');
INSERT INTO `role_auth` VALUES (66, 1, 27, '2017-11-21 09:18:31', '2017-11-21 09:18:31');
INSERT INTO `role_auth` VALUES (67, 3, 1, '2019-02-15 06:21:17', '2019-02-15 06:21:17');
INSERT INTO `role_auth` VALUES (68, 3, 2, '2019-02-15 06:21:17', '2019-02-15 06:21:17');
INSERT INTO `role_auth` VALUES (69, 3, 33, '2019-02-18 14:28:45', '2019-02-18 14:28:45');
INSERT INTO `role_auth` VALUES (70, 3, 28, '2019-02-18 14:28:45', '2019-02-18 14:28:45');
INSERT INTO `role_auth` VALUES (71, 3, 29, '2019-02-18 14:28:45', '2019-02-18 14:28:45');
INSERT INTO `role_auth` VALUES (72, 3, 30, '2019-02-18 14:28:45', '2019-02-18 14:28:45');
INSERT INTO `role_auth` VALUES (73, 3, 31, '2019-02-18 14:28:45', '2019-02-18 14:28:45');
INSERT INTO `role_auth` VALUES (74, 3, 32, '2019-02-18 14:28:45', '2019-02-18 14:28:45');

-- ----------------------------
-- Table structure for roles
-- ----------------------------
DROP TABLE IF EXISTS `roles`;
CREATE TABLE `roles`  (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '角色名称',
  `remark` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL COMMENT '角色描述',
  `order` tinyint(3) UNSIGNED NOT NULL DEFAULT 255 COMMENT '排序',
  `status` tinyint(4) NOT NULL DEFAULT 1 COMMENT '状态: 1 正常, 2=>禁止',
  `created_at` timestamp(0) NULL DEFAULT NULL,
  `updated_at` timestamp(0) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `roles_name_index`(`name`) USING BTREE,
  INDEX `roles_status_index`(`status`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 4 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of roles
-- ----------------------------
INSERT INTO `roles` VALUES (1, '超级管理员', '拥有网站最大权限', 255, 1, '2017-11-12 11:20:51', '2017-11-12 11:20:51');
INSERT INTO `roles` VALUES (3, '发布人员', '发布人员', 255, 1, '2019-02-15 06:20:50', '2019-02-15 06:20:50');

-- ----------------------------
-- Table structure for rules
-- ----------------------------
DROP TABLE IF EXISTS `rules`;
CREATE TABLE `rules`  (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '权限名称',
  `route` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '权限路由',
  `parent_id` int(10) UNSIGNED NOT NULL DEFAULT 0 COMMENT '上级权限',
  `is_hidden` tinyint(3) UNSIGNED NOT NULL DEFAULT 0 COMMENT '是否隐藏',
  `sort` int(10) UNSIGNED NOT NULL DEFAULT 255 COMMENT '排序',
  `status` tinyint(4) NOT NULL DEFAULT 1 COMMENT '状态: 1 正常, 2=>禁止',
  `created_at` timestamp(0) NULL DEFAULT NULL,
  `updated_at` timestamp(0) NULL DEFAULT NULL,
  `fonts` varchar(128) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '菜单fonts图标',
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `rules_name_index`(`name`) USING BTREE,
  INDEX `rules_parent_id_index`(`parent_id`) USING BTREE,
  INDEX `rules_is_hidden_index`(`is_hidden`) USING BTREE,
  INDEX `rules_status_index`(`status`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 34 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of rules
-- ----------------------------
INSERT INTO `rules` VALUES (1, '首页', 'index.index', 0, 0, 1, 1, '2017-11-13 05:45:27', '2019-02-15 06:36:30', 'home');
INSERT INTO `rules` VALUES (2, '欢迎界面', 'index.main', 1, 1, 255, 1, '2017-11-13 07:41:14', '2019-02-15 06:18:21', NULL);
INSERT INTO `rules` VALUES (3, '系统管理', NULL, 0, 0, 2, 1, '2017-11-13 08:06:50', '2019-02-15 07:13:23', 'users');
INSERT INTO `rules` VALUES (4, '管理员管理', 'admins.index', 3, 0, 1, 1, '2017-11-13 08:09:06', '2017-11-17 13:40:33', NULL);
INSERT INTO `rules` VALUES (5, '添加页面', 'admins.create', 4, 1, 255, 1, '2017-11-13 10:56:30', '2017-11-13 10:57:48', NULL);
INSERT INTO `rules` VALUES (6, '添加数据', 'admins.store', 4, 1, 255, 1, '2017-11-13 10:57:46', '2017-11-13 10:58:56', NULL);
INSERT INTO `rules` VALUES (7, '修改页面', 'admins.edit', 4, 1, 255, 1, '2017-11-13 10:58:44', '2017-11-13 10:59:09', NULL);
INSERT INTO `rules` VALUES (8, '数据更新', 'admins.update', 4, 1, 255, 1, '2017-11-13 10:59:52', '2017-11-17 13:32:23', NULL);
INSERT INTO `rules` VALUES (9, '状态修改', 'admins.status', 4, 1, 255, 1, '2017-11-17 10:05:34', '2017-11-17 13:27:06', NULL);
INSERT INTO `rules` VALUES (10, '删除', 'admins.destroy', 4, 1, 255, 1, '2017-11-17 10:08:41', '2017-11-17 13:27:35', NULL);
INSERT INTO `rules` VALUES (11, '角色管理', 'roles.index', 3, 0, 2, 1, '2017-11-13 11:00:47', '2017-11-17 13:40:43', NULL);
INSERT INTO `rules` VALUES (12, '添加页面', 'roles.create', 11, 1, 255, 1, '2017-11-17 13:02:52', '2017-11-17 13:25:22', NULL);
INSERT INTO `rules` VALUES (13, '添加数据', 'roles.store', 11, 1, 255, 1, '2017-11-17 13:03:46', '2017-11-17 13:03:46', NULL);
INSERT INTO `rules` VALUES (14, '修改页面', 'roles.edit', 11, 1, 255, 1, '2017-11-17 13:06:47', '2017-11-17 13:08:30', NULL);
INSERT INTO `rules` VALUES (15, '数据更新', 'roles.update', 11, 1, 255, 1, '2017-11-17 13:08:12', '2017-11-17 13:08:27', NULL);
INSERT INTO `rules` VALUES (16, '权限分配页面', 'roles.access', 11, 1, 255, 1, '2017-11-17 13:09:58', '2017-11-17 13:10:31', NULL);
INSERT INTO `rules` VALUES (17, '权限分配', 'roles.group-access', 11, 1, 255, 1, '2017-11-17 13:11:01', '2017-11-17 13:11:01', NULL);
INSERT INTO `rules` VALUES (18, '删除角色', 'roles.destroy', 11, 1, 255, 1, '2017-11-17 13:12:22', '2017-11-17 13:12:22', NULL);
INSERT INTO `rules` VALUES (19, '权限管理', 'rules.index', 3, 0, 3, 1, '2017-11-17 13:14:27', '2017-11-17 13:44:15', NULL);
INSERT INTO `rules` VALUES (20, '添加页面', 'rules.create', 19, 1, 255, 1, '2017-11-17 13:16:30', '2017-11-17 13:16:30', NULL);
INSERT INTO `rules` VALUES (21, '添加数据', 'rules.store', 19, 1, 255, 1, '2017-11-17 13:17:07', '2017-11-17 13:17:07', NULL);
INSERT INTO `rules` VALUES (22, '修改页面', 'rules.edit', 19, 1, 255, 1, '2017-11-17 13:19:23', '2017-11-17 13:19:23', NULL);
INSERT INTO `rules` VALUES (23, '数据更新', 'rules.update', 19, 1, 255, 1, '2017-11-17 13:19:55', '2017-11-17 13:19:55', NULL);
INSERT INTO `rules` VALUES (24, '状态修改', 'rules.status', 19, 1, 255, 1, '2017-11-17 13:21:26', '2017-11-17 13:21:26', NULL);
INSERT INTO `rules` VALUES (25, '删除权限', 'rules.destroy', 19, 1, 255, 1, '2017-11-17 13:22:30', '2017-11-17 13:22:30', NULL);
INSERT INTO `rules` VALUES (26, '操作日志', 'actions.index', 3, 0, 255, 1, '2017-11-20 15:13:17', '2017-11-20 15:13:17', NULL);
INSERT INTO `rules` VALUES (27, '删除日志', 'actions.destroy', 26, 1, 255, 1, '2017-11-20 15:14:01', '2017-11-20 15:14:01', NULL);
INSERT INTO `rules` VALUES (28, '评论管理', 'comment.index', 33, 0, 255, 1, '2019-02-15 07:06:14', '2019-02-17 11:58:26', 'desktop');
INSERT INTO `rules` VALUES (29, '添加评论页面', 'comment.create', 28, 1, 255, 1, '2019-02-15 07:07:36', '2019-02-15 07:07:36', 'desktop');
INSERT INTO `rules` VALUES (30, '保存评论', 'comment.store', 28, 1, 255, 1, '2019-02-15 07:08:13', '2019-02-15 07:08:13', 'desktop');
INSERT INTO `rules` VALUES (31, '修改评论页面', 'comment.edit', 28, 1, 255, 1, '2019-02-15 07:08:52', '2019-02-15 07:08:52', 'desktop');
INSERT INTO `rules` VALUES (32, '编辑评论', 'comment.update', 28, 1, 255, 1, '2019-02-15 07:09:19', '2019-02-15 07:09:19', 'desktop');
INSERT INTO `rules` VALUES (33, '评论管理', NULL, 0, 0, 255, 1, '2019-02-17 11:58:06', '2019-02-17 11:58:06', 'desktop');

SET FOREIGN_KEY_CHECKS = 1;
