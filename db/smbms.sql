/*
 Navicat MySQL Data Transfer

 Source Server         : xmy
 Source Server Type    : MySQL
 Source Server Version : 80021
 Source Host           : localhost:3306
 Source Schema         : smbms

 Target Server Type    : MySQL
 Target Server Version : 80021
 File Encoding         : 65001

 Date: 07/04/2021 00:05:37
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for smbms_bill
-- ----------------------------
DROP TABLE IF EXISTS `smbms_bill`;
CREATE TABLE `smbms_bill`  (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT '主键ID',
  `billCode` varchar(20) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL COMMENT '账单编码',
  `productName` varchar(20) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL COMMENT '商品名称',
  `productDesc` varchar(50) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL COMMENT '商品描述',
  `productUnit` varchar(10) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL COMMENT '商品单位',
  `productCount` decimal(20, 2) NULL DEFAULT NULL COMMENT '商品数量',
  `totalPrice` decimal(20, 2) NULL DEFAULT NULL COMMENT '商品总额',
  `isPayment` int NULL DEFAULT NULL COMMENT '是否支付（1：未支付 2：已支付）',
  `createdBy` bigint NULL DEFAULT NULL COMMENT '创建者（userId）',
  `creationDate` datetime(0) NULL DEFAULT NULL COMMENT '创建时间',
  `modifyBy` bigint NULL DEFAULT NULL COMMENT '更新者（userId）',
  `modifyDate` datetime(0) NULL DEFAULT NULL COMMENT '更新时间',
  `providerId` bigint NULL DEFAULT NULL COMMENT '供应商ID',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 26 CHARACTER SET = utf8 COLLATE = utf8_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of smbms_bill
-- ----------------------------
INSERT INTO `smbms_bill` VALUES (23, 'BILL2021_004', '哇哈哈', NULL, '未知', 10.00, 20.00, 1, 1, '2021-03-27 15:46:57', NULL, NULL, 16);
INSERT INTO `smbms_bill` VALUES (24, 'BILL2021_005', '洗发水', NULL, '未知', 100.00, 15000.00, 2, 1, '2021-03-27 15:47:35', 1, '2021-03-28 15:12:53', 17);

-- ----------------------------
-- Table structure for smbms_member
-- ----------------------------
DROP TABLE IF EXISTS `smbms_member`;
CREATE TABLE `smbms_member`  (
  `id` int NOT NULL AUTO_INCREMENT,
  `memberName` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL COMMENT '会员名称',
  `phone` varchar(15) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL COMMENT '电话',
  `age` int NULL DEFAULT NULL COMMENT '年龄',
  `createTime` datetime(0) NULL DEFAULT NULL COMMENT '会员创建时间',
  `endTime` int NULL DEFAULT NULL COMMENT '会员期限',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 4 CHARACTER SET = utf8 COLLATE = utf8_bin ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of smbms_member
-- ----------------------------
INSERT INTO `smbms_member` VALUES (1, '张三', '13800000000', 32, '2021-03-28 14:42:17', 11);
INSERT INTO `smbms_member` VALUES (3, '李四', '13800000000', 32, '2021-03-28 15:08:11', 11);

-- ----------------------------
-- Table structure for smbms_product
-- ----------------------------
DROP TABLE IF EXISTS `smbms_product`;
CREATE TABLE `smbms_product`  (
  `id` int NOT NULL AUTO_INCREMENT,
  `productName` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL COMMENT '商品名称',
  `price` decimal(10, 2) NOT NULL COMMENT '商品售价',
  `purchasePrice` decimal(10, 2) NULL DEFAULT NULL COMMENT '商品进价',
  `productCode` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL COMMENT '商品编码',
  `manuFacturer` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL COMMENT '生产厂家',
  `place` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL COMMENT '产地',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 6 CHARACTER SET = utf8 COLLATE = utf8_bin ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of smbms_product
-- ----------------------------
INSERT INTO `smbms_product` VALUES (1, '飘柔', 22.20, 18.00, 'XFW_10001', '四川大飘公司', '四川');
INSERT INTO `smbms_product` VALUES (3, '海飞丝', 23.20, 19.00, 'XFW_10002', '四川大海公司', '四川');
INSERT INTO `smbms_product` VALUES (4, '哇哈哈', 2.00, 1.00, 'XFW_10003', '北京哈哈公司', '北京');
INSERT INTO `smbms_product` VALUES (5, '海丝丝', 23.20, 19.00, 'XFW_10004', '四川飘飘公司', '四川');

-- ----------------------------
-- Table structure for smbms_provider
-- ----------------------------
DROP TABLE IF EXISTS `smbms_provider`;
CREATE TABLE `smbms_provider`  (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT '主键ID',
  `proCode` varchar(20) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL COMMENT '供应商编码',
  `proName` varchar(20) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL COMMENT '供应商名称',
  `proDesc` varchar(50) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL COMMENT '供应商详细描述',
  `proContact` varchar(20) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL COMMENT '供应商联系人',
  `proPhone` varchar(20) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL COMMENT '联系电话',
  `proAddress` varchar(50) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL COMMENT '地址',
  `proFax` varchar(20) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL COMMENT '传真',
  `createdBy` bigint NULL DEFAULT NULL COMMENT '创建者（userId）',
  `creationDate` datetime(0) NULL DEFAULT NULL COMMENT '创建时间',
  `modifyDate` datetime(0) NULL DEFAULT NULL COMMENT '更新时间',
  `modifyBy` bigint NULL DEFAULT NULL COMMENT '更新者（userId）',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 18 CHARACTER SET = utf8 COLLATE = utf8_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of smbms_provider
-- ----------------------------
INSERT INTO `smbms_provider` VALUES (16, 'AB_1001', '北京小木日用品', '1111111111', '张三', '13800000000', '北京', '1111111122', 1, '2021-03-27 15:44:18', '2021-03-27 15:44:53', 1);
INSERT INTO `smbms_provider` VALUES (17, 'AB_1002', '北京大木日用品', '1111111111', '李四', '13800000000', '北京', '1111111133', 1, '2021-03-27 15:45:23', NULL, NULL);

-- ----------------------------
-- Table structure for smbms_role
-- ----------------------------
DROP TABLE IF EXISTS `smbms_role`;
CREATE TABLE `smbms_role`  (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT '主键ID',
  `roleCode` varchar(15) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL COMMENT '角色编码',
  `roleName` varchar(15) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL COMMENT '角色名称',
  `createdBy` bigint NULL DEFAULT NULL COMMENT '创建者',
  `creationDate` datetime(0) NULL DEFAULT NULL COMMENT '创建时间',
  `modifyBy` bigint NULL DEFAULT NULL COMMENT '修改者',
  `modifyDate` datetime(0) NULL DEFAULT NULL COMMENT '修改时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 4 CHARACTER SET = utf8 COLLATE = utf8_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of smbms_role
-- ----------------------------
INSERT INTO `smbms_role` VALUES (1, 'SMBMS_ADMIN', '系统管理员', 1, '2016-04-13 00:00:00', NULL, NULL);
INSERT INTO `smbms_role` VALUES (2, 'SMBMS_MANAGER', '经理', 1, '2016-04-13 00:00:00', NULL, NULL);
INSERT INTO `smbms_role` VALUES (3, 'SMBMS_EMPLOYEE', '普通员工', 1, '2016-04-13 00:00:00', NULL, NULL);

-- ----------------------------
-- Table structure for smbms_stock
-- ----------------------------
DROP TABLE IF EXISTS `smbms_stock`;
CREATE TABLE `smbms_stock`  (
  `id` int NOT NULL AUTO_INCREMENT,
  `productName` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL COMMENT '商品名称',
  `price` decimal(10, 2) NOT NULL COMMENT '商品售价',
  `purchasePrice` decimal(10, 2) NULL DEFAULT NULL COMMENT '商品进价',
  `productCode` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL COMMENT '商品编码',
  `manuFacturer` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL COMMENT '生产厂家',
  `place` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL COMMENT '产地',
  `inventory` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL COMMENT '库存量',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 6 CHARACTER SET = utf8 COLLATE = utf8_bin ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of smbms_stock
-- ----------------------------
INSERT INTO `smbms_stock` VALUES (3, '海飞丝', 23.20, 19.00, 'KC_1001', '四川飘飘公司', '四川', '22');
INSERT INTO `smbms_stock` VALUES (4, '乐乐薯片', 6.50, 5.50, 'KC_1002', '北京哈哈公司', '北京', '33');
INSERT INTO `smbms_stock` VALUES (5, '乐事薯片', 23.20, 19.00, 'KC_1003', '四川飘飘公司', '四川', '22');

-- ----------------------------
-- Table structure for smbms_user
-- ----------------------------
DROP TABLE IF EXISTS `smbms_user`;
CREATE TABLE `smbms_user`  (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT '主键ID',
  `userCode` varchar(15) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL COMMENT '用户编码',
  `userName` varchar(15) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL COMMENT '用户名称',
  `userPassword` varchar(15) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL COMMENT '用户密码',
  `gender` int NULL DEFAULT NULL COMMENT '性别（1:女、 2:男）',
  `birthday` date NULL DEFAULT NULL COMMENT '出生日期',
  `phone` varchar(15) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL COMMENT '手机',
  `address` varchar(30) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL COMMENT '地址',
  `userRole` bigint NULL DEFAULT NULL COMMENT '用户角色（取自角色表-角色id）',
  `createdBy` bigint NULL DEFAULT NULL COMMENT '创建者（userId）',
  `creationDate` datetime(0) NULL DEFAULT NULL COMMENT '创建时间',
  `modifyBy` bigint NULL DEFAULT NULL COMMENT '更新者（userId）',
  `modifyDate` datetime(0) NULL DEFAULT NULL COMMENT '更新时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 18 CHARACTER SET = utf8 COLLATE = utf8_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of smbms_user
-- ----------------------------
INSERT INTO `smbms_user` VALUES (1, 'admin', '系统管理员', '12345678', 1, '1983-10-10', '13800000000', '北京市海淀区成府路207号', 1, 1, '2021-03-27 16:52:07', NULL, NULL);
INSERT INTO `smbms_user` VALUES (2, 'zhangsan', '张三', '99999999', 2, '1983-12-09', '13800000000', '北京市东城区前门东大街9号', 2, 1, '2021-03-27 19:52:09', 1, '2021-03-27 15:47:54');
INSERT INTO `smbms_user` VALUES (5, 'luban', '鲁班', '0000000', 1, '1984-06-04', '13800000000', '北京市朝阳区北辰中心12号', 2, 1, '2021-03-27 19:52:09', 1, '2021-03-27 15:48:06');
INSERT INTO `smbms_user` VALUES (6, 'dianwei', '典韦', '0000000', 1, '1983-06-14', '13800000000', '北京市海淀区学院路61号', 3, 1, '2021-03-27 19:51:17', 1, '2021-03-27 15:48:15');
INSERT INTO `smbms_user` VALUES (7, 'daqiao', '大桥', '0000000', 2, '1982-12-30', '13800000000', '北京市海淀区西二旗辉煌国际16层', 3, 1, '2021-03-27 19:09:07', 1, '2021-03-27 15:48:33');
INSERT INTO `smbms_user` VALUES (17, 'a1001', '小乔', '12345678', 1, '2021-03-09', '13800000000', '上海', 3, 1, '2021-03-31 13:22:11', NULL, NULL);

SET FOREIGN_KEY_CHECKS = 1;
