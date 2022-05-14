/*
 Navicat Premium Data Transfer

 Source Server         : mysql
 Source Server Type    : MySQL
 Source Server Version : 80028
 Source Host           : localhost:3306
 Source Schema         : aiclub

 Target Server Type    : MySQL
 Target Server Version : 80028
 File Encoding         : 65001

 Date: 14/05/2022 18:10:53
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for article
-- ----------------------------
DROP TABLE IF EXISTS `article`;
CREATE TABLE `article`  (
  `article_id` int(0) NOT NULL AUTO_INCREMENT,
  `user_id` int(0) NULL DEFAULT NULL,
  `publish_state` varchar(3) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `selected_state` varchar(2) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `category` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `tag` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `title` varchar(40) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `content` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `views` int(0) NOT NULL,
  `likes` int(0) NOT NULL,
  PRIMARY KEY (`article_id`) USING BTREE,
  UNIQUE INDEX `article_id`(`article_id`) USING BTREE,
  INDEX `user_id_fk`(`user_id`) USING BTREE,
  CONSTRAINT `user_id_fk` FOREIGN KEY (`user_id`) REFERENCES `user` (`user_id`) ON DELETE SET NULL ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 28 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of article
-- ----------------------------
INSERT INTO `article` VALUES (1, 1, '未发布', '精选', '论文', '目标检测,语义分割,图像分类', 'test_title', 'wwdecs', 16126, 12);
INSERT INTO `article` VALUES (2, 1, '未发布', '精选', '论文', '文本翻译', 'v你看VS考虑', 'edit', 26153, 493);
INSERT INTO `article` VALUES (3, 1, '已发布', NULL, '竞赛', '自然语言处理,GPT3', 'IC枢纽机场', 'fahjfajdlagkg', 32316, 3213);
INSERT INTO `article` VALUES (4, 1, '已发布', NULL, '竞赛', '计算机视觉, CNN', '哦i额度坡底层', '很快开绿灯解放', 1632, 30);
INSERT INTO `article` VALUES (5, 1, '已发布', NULL, '竞赛', '推荐系统, 搜广推', '科普性什么都是', '大家快乐的', 6160, 13);
INSERT INTO `article` VALUES (6, 1, '已发布', '精选', '新闻', '自然语言处理,GPT3', '顺口溜实打实飒飒我', '的绝对领导', 6526, 3060);
INSERT INTO `article` VALUES (7, 5, '已发布', NULL, '论文', '计算机视觉, GAN', '返回卡夫卡辣椒辣', '我点击开始了解历史', 79221, 49);
INSERT INTO `article` VALUES (8, 5, '已发布', NULL, '竞赛', '计算机视觉, ViT', '气温偏低我等克鲁', '去哦配哦且迫切欧赔', 162292, 6516);
INSERT INTO `article` VALUES (9, 5, '已发布', NULL, '新闻', '自然语言处理,GPT3', '拿出，支持你', '大会考虑到大哥FJLKSHALF', 6263, 77);
INSERT INTO `article` VALUES (10, 5, '已发布', '精选', '论文', '推荐系统, 搜广推,', '安静多了', '骄傲分类分级卡卡分类', 1601, 49);
INSERT INTO `article` VALUES (11, 5, '已发布', '', '竞赛', '计算机视觉, Swin', '爱上了离开手拉手看', '去哦入围i羊肉五人一起一千万元', 1996, 191);
INSERT INTO `article` VALUES (18, 1, '已发布', '精选', '', '目标检测', '', '', 0, 0);
INSERT INTO `article` VALUES (19, 1, '已发布', '精选', '', '目标检测,语义分割,图像分类,风格迁移', '', '', 0, 0);
INSERT INTO `article` VALUES (22, 1, '已发布', '', '竞赛', '目标检测,语义分割', 'test3', '3', 0, 0);
INSERT INTO `article` VALUES (23, 1, '未发布', '精选', '竞赛', '文本翻译', 'test3333', '666666', 0, 0);
INSERT INTO `article` VALUES (25, 5, '已发布', '', '论文', '语义分割,知识图谱,文本翻译', 'vrtdghbvrtdg---', 'egfvetfgvesfgv', 0, 0);
INSERT INTO `article` VALUES (26, 1, '已发布', '', '竞赛', '目标检测,图像分类,知识图谱', 'newtset', 'newtest', 0, 0);
INSERT INTO `article` VALUES (27, 1, '已发布', '', '竞赛', '目标检测,图像分类,知识图谱', 'newtset1', 'newtest1', 0, 0);
INSERT INTO `article` VALUES (28, 1, '已发布', '', '论文', '目标检测,风格迁移,智能问答', 'jrydthetad', 'zdfxfv', 0, 0);

-- ----------------------------
-- Table structure for dataset
-- ----------------------------
DROP TABLE IF EXISTS `dataset`;
CREATE TABLE `dataset`  (
  `dataset_id` int(0) NOT NULL AUTO_INCREMENT,
  `user_id` int(0) NULL DEFAULT NULL,
  `publish_state` varchar(3) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `selected_state` varchar(2) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `category` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `tag` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `title` varchar(40) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `intro` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `link` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `views` int(0) NOT NULL,
  `likes` int(0) NOT NULL,
  PRIMARY KEY (`dataset_id`) USING BTREE,
  UNIQUE INDEX `article_id`(`dataset_id`) USING BTREE,
  INDEX `user_id_fk2`(`user_id`) USING BTREE,
  CONSTRAINT `user_id_fk2` FOREIGN KEY (`user_id`) REFERENCES `user` (`user_id`) ON DELETE SET NULL ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 17 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of dataset
-- ----------------------------
INSERT INTO `dataset` VALUES (1, 1, '未发布', '', '图片', '目标检测,风格迁移,文本翻译', 'ttttttt', 'eeeee', 'fffff', 2556, 261);
INSERT INTO `dataset` VALUES (2, 1, '已发布', '', 'CV', 'CV', '管道施工方式', '是否是法国', '编译部分和刚好都', 56, 1);
INSERT INTO `dataset` VALUES (3, 1, '已发布', '精选', 'NLP', 'CV', 'cjoidc测试机哦', '法定股本的发表的', '带个话任意如同', 516, 6);
INSERT INTO `dataset` VALUES (4, 1, '已发布', '', 'NLP', 'CV', 'v反对和认同感', '试点范围', '他工会人体的格式', 2929, 9);
INSERT INTO `dataset` VALUES (5, 1, '已发布', '', 'BI', 'CV', '二哥哥服务费', 'vegveve', '儿童工会人体还不如', 992, 30);
INSERT INTO `dataset` VALUES (6, 1, '已发布', '', 'NLP', 'CV', '呃呃的给该听话', '二分是放入发', '为非微扰沟通还', 198, 2);
INSERT INTO `dataset` VALUES (7, 1, '已发布', '', 'NLP', 'CV', '归咎于就', '安抚打算法', '软通货5v', 2992, 2);
INSERT INTO `dataset` VALUES (8, 5, '已发布', '', 'BI', 'CV', 'Greg我', '给v人也会变', 'vsdvsrv', 29828, 49);
INSERT INTO `dataset` VALUES (9, 5, '已发布', '精选', 'BI', 'CV', '无法定位', '二是地方', '任意和人员还有人和让让', 29984, 6);
INSERT INTO `dataset` VALUES (11, 5, '已发布', '', 'NLP', 'CV', '违反如果', '有今年统一', '为人发个', 815, 2);
INSERT INTO `dataset` VALUES (12, 5, '已发布', '精选', 'BI', 'CV', '钢回忆版', '人员具有他已经化工污染 ', '科9ui一块净土就', 2939, 99);
INSERT INTO `dataset` VALUES (14, 1, '已发布', '', '图片', '目标检测,图像分类,风格迁移', 'fwedagvearsfd', 'fvwretadgvfw', 'earsgfvcwetasgfdc', 0, 0);
INSERT INTO `dataset` VALUES (15, 1, '已发布', '', '音频', '语义分割,风格迁移,知识图谱,文本翻译', 'rdsfwdegvefdvevv', 'fvwretadgvfw', 'earsgfvcwetasgfdc', 0, 0);
INSERT INTO `dataset` VALUES (16, 5, '已发布', '', '图片', '目标检测,图像分类,风格迁移', 'hujunyao666', 'vdfvbdfxc', 'vbdfxvcsrzdvcs', 0, 0);

-- ----------------------------
-- Table structure for loving_article
-- ----------------------------
DROP TABLE IF EXISTS `loving_article`;
CREATE TABLE `loving_article`  (
  `loving_article_id` int(0) NOT NULL,
  `user_id` int(0) NULL DEFAULT NULL,
  `article_id` int(0) NULL DEFAULT NULL,
  `note` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`loving_article_id`) USING BTREE,
  INDEX `article_id_fk`(`article_id`) USING BTREE,
  INDEX `user_id_fk3`(`user_id`) USING BTREE,
  CONSTRAINT `article_id_fk` FOREIGN KEY (`article_id`) REFERENCES `article` (`article_id`) ON DELETE SET NULL ON UPDATE RESTRICT,
  CONSTRAINT `user_id_fk3` FOREIGN KEY (`user_id`) REFERENCES `user` (`user_id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of loving_article
-- ----------------------------
INSERT INTO `loving_article` VALUES (1, 1, 1, NULL);
INSERT INTO `loving_article` VALUES (2, 1, 2, NULL);
INSERT INTO `loving_article` VALUES (3, 1, 3, NULL);
INSERT INTO `loving_article` VALUES (4, 1, 4, NULL);
INSERT INTO `loving_article` VALUES (5, 5, 5, NULL);

-- ----------------------------
-- Table structure for loving_dataset
-- ----------------------------
DROP TABLE IF EXISTS `loving_dataset`;
CREATE TABLE `loving_dataset`  (
  `loving_dataset_id` int(0) NOT NULL,
  `user_id` int(0) NULL DEFAULT NULL,
  `dataset_id` int(0) NULL DEFAULT NULL,
  `note` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`loving_dataset_id`) USING BTREE,
  INDEX `user_id_fk2`(`user_id`) USING BTREE,
  INDEX `dataset_id_fk`(`dataset_id`) USING BTREE,
  CONSTRAINT `dataset_id_fk1` FOREIGN KEY (`dataset_id`) REFERENCES `dataset` (`dataset_id`) ON DELETE SET NULL ON UPDATE RESTRICT,
  CONSTRAINT `user_id_fk4` FOREIGN KEY (`user_id`) REFERENCES `user` (`user_id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of loving_dataset
-- ----------------------------
INSERT INTO `loving_dataset` VALUES (1, 1, 1, NULL);
INSERT INTO `loving_dataset` VALUES (2, 1, 2, NULL);
INSERT INTO `loving_dataset` VALUES (3, 1, 3, NULL);
INSERT INTO `loving_dataset` VALUES (4, 1, 4, NULL);
INSERT INTO `loving_dataset` VALUES (5, 5, 5, NULL);
INSERT INTO `loving_dataset` VALUES (6, 5, 6, NULL);
INSERT INTO `loving_dataset` VALUES (7, 5, 9, NULL);
INSERT INTO `loving_dataset` VALUES (9, 5, 11, NULL);

-- ----------------------------
-- Table structure for user
-- ----------------------------
DROP TABLE IF EXISTS `user`;
CREATE TABLE `user`  (
  `user_id` int(0) NOT NULL AUTO_INCREMENT,
  `username` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `password` varchar(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `icon` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `email` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  PRIMARY KEY (`user_id`) USING BTREE,
  UNIQUE INDEX `username`(`username`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 18 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of user
-- ----------------------------
INSERT INTO `user` VALUES (1, 'admin', '21232f297a57a5a743894a0e4a801fc3', '2022-05-14_QQ图片20220514163920.jpg', '06192081@cumt.edu.cn');
INSERT INTO `user` VALUES (2, 'user2', 'e10adc3949ba59abbe56e057f20f883e', '2022-05-14_QQ图片20220514163843.jpg', '123456@qq.com');
INSERT INTO `user` VALUES (3, 'user3', 'e10adc3949ba59abbe56e057f20f883e', '2022-05-14_QQ图片20220514163929.jpg', 'bbb@qq.com');
INSERT INTO `user` VALUES (4, 'user4', 'e10adc3949ba59abbe56e057f20f883e', '4.jpg', 'aaaa@qq.com');
INSERT INTO `user` VALUES (5, 'hujunyao', 'e10adc3949ba59abbe56e057f20f883e', '2022-05-14_11.jpg', '123456@qq.com');
INSERT INTO `user` VALUES (6, 'user5', 'e10adc3949ba59abbe56e057f20f883e', '2022-05-14_QQ图片20220514163951.jpg', '1078622540@qq.com');
INSERT INTO `user` VALUES (18, 'hhhhh', 'e10adc3949ba59abbe56e057f20f883e', '2022-05-14_QQ图片20220514163901.jpg', '123456@qq.com');
INSERT INTO `user` VALUES (19, 'hjy0514', 'e10adc3949ba59abbe56e057f20f883e', '2022-05-14_QQ图片20220514163938.jpg', '1078622540@qq.com');

SET FOREIGN_KEY_CHECKS = 1;
