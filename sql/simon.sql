/*
Navicat MySQL Data Transfer

Source Server         : localhost_3306
Source Server Version : 50714
Source Host           : localhost:3306
Source Database       : simon

Target Server Type    : MYSQL
Target Server Version : 50714
File Encoding         : 65001

Date: 2018-05-04 12:50:02
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for `actionlog_table`
-- ----------------------------
DROP TABLE IF EXISTS `actionlog_table`;
CREATE TABLE `actionlog_table` (
  `ID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `time` datetime DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `path` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=MyISAM AUTO_INCREMENT=3036 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of actionlog_table
-- ----------------------------
INSERT INTO `actionlog_table` VALUES ('2823', '2018-05-04 11:58:53', 'admin', '/home');
INSERT INTO `actionlog_table` VALUES ('2824', '2018-05-04 11:58:54', 'admin', '/working');
INSERT INTO `actionlog_table` VALUES ('2825', '2018-05-04 11:58:55', 'admin', '/build');
INSERT INTO `actionlog_table` VALUES ('2826', '2018-05-04 11:58:56', 'admin', '/usersetting');
INSERT INTO `actionlog_table` VALUES ('2827', '2018-05-04 11:58:57', 'admin', '/mydaily');
INSERT INTO `actionlog_table` VALUES ('2828', '2018-05-04 11:58:58', 'admin', '/build');
INSERT INTO `actionlog_table` VALUES ('2829', '2018-05-04 11:58:59', 'admin', '/usersetting');
INSERT INTO `actionlog_table` VALUES ('2830', '2018-05-04 11:59:00', 'admin', '/working');
INSERT INTO `actionlog_table` VALUES ('2831', '2018-05-04 11:59:01', 'admin', '/build');
INSERT INTO `actionlog_table` VALUES ('2832', '2018-05-04 11:59:03', 'admin', '/working');
INSERT INTO `actionlog_table` VALUES ('2833', '2018-05-04 11:59:04', 'admin', '/build');
INSERT INTO `actionlog_table` VALUES ('2834', '2018-05-04 11:59:05', 'admin', '/usersetting');
INSERT INTO `actionlog_table` VALUES ('2835', '2018-05-04 11:59:06', 'admin', '/build');
INSERT INTO `actionlog_table` VALUES ('2836', '2018-05-04 11:59:07', 'admin', '/working');
INSERT INTO `actionlog_table` VALUES ('2837', '2018-05-04 11:59:07', 'admin', '/build');
INSERT INTO `actionlog_table` VALUES ('2838', '2018-05-04 11:59:09', 'admin', '/working');
INSERT INTO `actionlog_table` VALUES ('2839', '2018-05-04 11:59:09', 'admin', '/build');
INSERT INTO `actionlog_table` VALUES ('2840', '2018-05-04 11:59:10', 'admin', '/usersetting');
INSERT INTO `actionlog_table` VALUES ('2841', '2018-05-04 11:59:12', 'admin', '/build');
INSERT INTO `actionlog_table` VALUES ('2842', '2018-05-04 11:59:13', 'admin', '/working');
INSERT INTO `actionlog_table` VALUES ('2843', '2018-05-04 11:59:15', 'admin', '/usersetting');
INSERT INTO `actionlog_table` VALUES ('2844', '2018-05-04 11:59:16', 'admin', '/organize');
INSERT INTO `actionlog_table` VALUES ('2845', '2018-05-04 12:00:08', 'admin', '/mydaily');
INSERT INTO `actionlog_table` VALUES ('2846', '2018-05-04 12:00:10', 'admin', '/adddaily');
INSERT INTO `actionlog_table` VALUES ('2847', '2018-05-04 12:00:20', 'admin', '/mydaily');
INSERT INTO `actionlog_table` VALUES ('2848', '2018-05-04 12:00:24', 'admin', '/usersetting');
INSERT INTO `actionlog_table` VALUES ('2849', '2018-05-04 12:00:27', 'admin', '/build');
INSERT INTO `actionlog_table` VALUES ('2850', '2018-05-04 12:00:33', 'admin', '/build');
INSERT INTO `actionlog_table` VALUES ('2851', '2018-05-04 12:00:42', 'admin', '/working');
INSERT INTO `actionlog_table` VALUES ('2852', '2018-05-04 12:00:42', 'admin', '/build');
INSERT INTO `actionlog_table` VALUES ('2853', '2018-05-04 12:00:43', 'admin', '/usersetting');
INSERT INTO `actionlog_table` VALUES ('2854', '2018-05-04 12:00:45', 'admin', '/build');
INSERT INTO `actionlog_table` VALUES ('2855', '2018-05-04 12:00:46', 'admin', '/working');
INSERT INTO `actionlog_table` VALUES ('2856', '2018-05-04 12:00:47', 'admin', '/usersetting');
INSERT INTO `actionlog_table` VALUES ('2857', '2018-05-04 12:00:48', 'admin', '/organize');
INSERT INTO `actionlog_table` VALUES ('2858', '2018-05-04 12:01:20', 'admin', '/organize');
INSERT INTO `actionlog_table` VALUES ('2859', '2018-05-04 12:01:59', 'admin', '/organize');
INSERT INTO `actionlog_table` VALUES ('2860', '2018-05-04 12:02:05', 'admin', '/organize');
INSERT INTO `actionlog_table` VALUES ('2861', '2018-05-04 12:02:13', 'admin', '/build');
INSERT INTO `actionlog_table` VALUES ('2862', '2018-05-04 12:02:22', 'admin', '/working');
INSERT INTO `actionlog_table` VALUES ('2863', '2018-05-04 12:02:23', 'admin', '/build');
INSERT INTO `actionlog_table` VALUES ('2864', '2018-05-04 12:02:25', 'admin', '/usersetting');
INSERT INTO `actionlog_table` VALUES ('2865', '2018-05-04 12:02:26', 'admin', '/build');
INSERT INTO `actionlog_table` VALUES ('2866', '2018-05-04 12:02:27', 'admin', '/working');
INSERT INTO `actionlog_table` VALUES ('2867', '2018-05-04 12:02:28', 'admin', '/build');
INSERT INTO `actionlog_table` VALUES ('2868', '2018-05-04 12:02:30', 'admin', '/usersetting');
INSERT INTO `actionlog_table` VALUES ('2869', '2018-05-04 12:02:31', 'admin', '/mydaily');
INSERT INTO `actionlog_table` VALUES ('2870', '2018-05-04 12:02:33', 'admin', '/schedule');
INSERT INTO `actionlog_table` VALUES ('2871', '2018-05-04 12:02:34', 'admin', '/mydaily');
INSERT INTO `actionlog_table` VALUES ('2872', '2018-05-04 12:02:35', 'admin', '/build');
INSERT INTO `actionlog_table` VALUES ('2873', '2018-05-04 12:02:42', 'admin', '/working');
INSERT INTO `actionlog_table` VALUES ('2874', '2018-05-04 12:02:43', 'admin', '/build');
INSERT INTO `actionlog_table` VALUES ('2875', '2018-05-04 12:02:44', 'admin', '/working');
INSERT INTO `actionlog_table` VALUES ('2876', '2018-05-04 12:04:35', 'admin', '/home');
INSERT INTO `actionlog_table` VALUES ('2877', '2018-05-04 12:04:37', 'admin', '/working');
INSERT INTO `actionlog_table` VALUES ('2878', '2018-05-04 12:04:38', 'admin', '/build');
INSERT INTO `actionlog_table` VALUES ('2879', '2018-05-04 12:04:49', 'admin', '/build');
INSERT INTO `actionlog_table` VALUES ('2880', '2018-05-04 12:05:03', 'admin', '/home');
INSERT INTO `actionlog_table` VALUES ('2881', '2018-05-04 12:05:04', 'admin', '/build');
INSERT INTO `actionlog_table` VALUES ('2882', '2018-05-04 12:05:11', 'admin', '/admin');
INSERT INTO `actionlog_table` VALUES ('2883', '2018-05-04 12:05:29', '测试用户', '/home');
INSERT INTO `actionlog_table` VALUES ('2884', '2018-05-04 12:05:33', '测试用户', '/working');
INSERT INTO `actionlog_table` VALUES ('2885', '2018-05-04 12:05:33', '测试用户', '/build');
INSERT INTO `actionlog_table` VALUES ('2886', '2018-05-04 12:05:37', '测试用户', '/created');
INSERT INTO `actionlog_table` VALUES ('2887', '2018-05-04 12:05:38', '测试用户', '/build');
INSERT INTO `actionlog_table` VALUES ('2888', '2018-05-04 12:05:39', '测试用户', '/census');
INSERT INTO `actionlog_table` VALUES ('2889', '2018-05-04 12:05:39', '测试用户', '/created');
INSERT INTO `actionlog_table` VALUES ('2890', '2018-05-04 12:05:41', '测试用户', '/census');
INSERT INTO `actionlog_table` VALUES ('2891', '2018-05-04 12:05:42', '测试用户', '/created');
INSERT INTO `actionlog_table` VALUES ('2892', '2018-05-04 12:05:43', '测试用户', '/build');
INSERT INTO `actionlog_table` VALUES ('2893', '2018-05-04 12:05:43', '测试用户', '/usersetting');
INSERT INTO `actionlog_table` VALUES ('2894', '2018-05-04 12:05:45', '测试用户', '/mydaily');
INSERT INTO `actionlog_table` VALUES ('2895', '2018-05-04 12:05:46', '测试用户', '/schedule');
INSERT INTO `actionlog_table` VALUES ('2896', '2018-05-04 12:05:47', '测试用户', '/working');
INSERT INTO `actionlog_table` VALUES ('2897', '2018-05-04 12:05:48', '测试用户', '/build');
INSERT INTO `actionlog_table` VALUES ('2898', '2018-05-04 12:05:49', '测试用户', '/usersetting');
INSERT INTO `actionlog_table` VALUES ('2899', '2018-05-04 12:05:49', '测试用户', '/mydaily');
INSERT INTO `actionlog_table` VALUES ('2900', '2018-05-04 12:05:51', '测试用户', '/working');
INSERT INTO `actionlog_table` VALUES ('2901', '2018-05-04 12:06:00', '测试用户', '/admin');
INSERT INTO `actionlog_table` VALUES ('2902', '2018-05-04 12:06:58', '测试用户', '/home');
INSERT INTO `actionlog_table` VALUES ('2903', '2018-05-04 12:07:00', '测试用户', '/working');
INSERT INTO `actionlog_table` VALUES ('2904', '2018-05-04 12:07:01', '测试用户', '/build');
INSERT INTO `actionlog_table` VALUES ('2905', '2018-05-04 12:07:27', '测试用户', '/created');
INSERT INTO `actionlog_table` VALUES ('2906', '2018-05-04 12:07:27', '测试用户', '/build');
INSERT INTO `actionlog_table` VALUES ('2907', '2018-05-04 12:09:39', '测试用户', '/build');
INSERT INTO `actionlog_table` VALUES ('2908', '2018-05-04 12:10:11', '测试用户', '/usersetting');
INSERT INTO `actionlog_table` VALUES ('2909', '2018-05-04 12:10:12', '测试用户', '/build');
INSERT INTO `actionlog_table` VALUES ('2910', '2018-05-04 12:10:15', '测试用户', '/usersetting');
INSERT INTO `actionlog_table` VALUES ('2911', '2018-05-04 12:10:16', '测试用户', '/authority');
INSERT INTO `actionlog_table` VALUES ('2912', '2018-05-04 12:10:50', '测试用户', '/organize');
INSERT INTO `actionlog_table` VALUES ('2913', '2018-05-04 12:10:51', '测试用户', '/usersetting');
INSERT INTO `actionlog_table` VALUES ('2914', '2018-05-04 12:10:52', '测试用户', '/organize');
INSERT INTO `actionlog_table` VALUES ('2915', '2018-05-04 12:10:59', '测试用户', '/build');
INSERT INTO `actionlog_table` VALUES ('2916', '2018-05-04 12:11:00', '测试用户', '/working');
INSERT INTO `actionlog_table` VALUES ('2917', '2018-05-04 12:14:15', '测试用户', '/working');
INSERT INTO `actionlog_table` VALUES ('2918', '2018-05-04 12:14:17', '测试用户', '/build');
INSERT INTO `actionlog_table` VALUES ('2919', '2018-05-04 12:17:47', '测试用户', '/build');
INSERT INTO `actionlog_table` VALUES ('2920', '2018-05-04 12:18:44', '测试用户', '/build');
INSERT INTO `actionlog_table` VALUES ('2921', '2018-05-04 12:19:07', '测试用户', '/build');
INSERT INTO `actionlog_table` VALUES ('2922', '2018-05-04 12:19:18', '测试用户', '/created');
INSERT INTO `actionlog_table` VALUES ('2923', '2018-05-04 12:19:20', '测试用户', '/build');
INSERT INTO `actionlog_table` VALUES ('2924', '2018-05-04 12:21:32', '测试用户', '/created');
INSERT INTO `actionlog_table` VALUES ('2925', '2018-05-04 12:21:33', '测试用户', '/build');
INSERT INTO `actionlog_table` VALUES ('2926', '2018-05-04 12:24:30', '测试用户', '/build');
INSERT INTO `actionlog_table` VALUES ('2927', '2018-05-04 12:24:46', '测试用户', '/created');
INSERT INTO `actionlog_table` VALUES ('2928', '2018-05-04 12:24:47', '测试用户', '/build');
INSERT INTO `actionlog_table` VALUES ('2929', '2018-05-04 12:24:55', '测试用户', '/build');
INSERT INTO `actionlog_table` VALUES ('2930', '2018-05-04 12:25:24', '测试用户', '/created');
INSERT INTO `actionlog_table` VALUES ('2931', '2018-05-04 12:25:24', '测试用户', '/build');
INSERT INTO `actionlog_table` VALUES ('2932', '2018-05-04 12:25:30', '测试用户', '/created');
INSERT INTO `actionlog_table` VALUES ('2933', '2018-05-04 12:25:31', '测试用户', '/build');
INSERT INTO `actionlog_table` VALUES ('2934', '2018-05-04 12:26:07', '测试用户', '/home');
INSERT INTO `actionlog_table` VALUES ('2935', '2018-05-04 12:26:15', 'admin', '/home');
INSERT INTO `actionlog_table` VALUES ('2936', '2018-05-04 12:26:16', 'admin', '/working');
INSERT INTO `actionlog_table` VALUES ('2937', '2018-05-04 12:26:18', 'admin', '/waiting');
INSERT INTO `actionlog_table` VALUES ('2938', '2018-05-04 12:26:19', 'admin', '/working');
INSERT INTO `actionlog_table` VALUES ('2939', '2018-05-04 12:26:20', 'admin', '/build');
INSERT INTO `actionlog_table` VALUES ('2940', '2018-05-04 12:26:21', 'admin', '/created');
INSERT INTO `actionlog_table` VALUES ('2941', '2018-05-04 12:26:22', 'admin', '/build');
INSERT INTO `actionlog_table` VALUES ('2942', '2018-05-04 12:26:49', 'admin', '/created');
INSERT INTO `actionlog_table` VALUES ('2943', '2018-05-04 12:26:51', 'admin', '/build');
INSERT INTO `actionlog_table` VALUES ('2944', '2018-05-04 12:26:54', 'admin', '/working');
INSERT INTO `actionlog_table` VALUES ('2945', '2018-05-04 12:26:55', 'admin', '/waiting');
INSERT INTO `actionlog_table` VALUES ('2946', '2018-05-04 12:27:00', 'admin', '/working');
INSERT INTO `actionlog_table` VALUES ('2947', '2018-05-04 12:27:00', 'admin', '/build');
INSERT INTO `actionlog_table` VALUES ('2948', '2018-05-04 12:27:40', 'admin', '/build');
INSERT INTO `actionlog_table` VALUES ('2949', '2018-05-04 12:29:36', 'admin', '/build');
INSERT INTO `actionlog_table` VALUES ('2950', '2018-05-04 12:29:45', 'admin', '/build');
INSERT INTO `actionlog_table` VALUES ('2951', '2018-05-04 12:29:50', 'admin', '/build');
INSERT INTO `actionlog_table` VALUES ('2952', '2018-05-04 12:30:07', 'admin', '/working');
INSERT INTO `actionlog_table` VALUES ('2953', '2018-05-04 12:30:09', 'admin', '/waiting');
INSERT INTO `actionlog_table` VALUES ('2954', '2018-05-04 12:30:13', 'admin', '/build');
INSERT INTO `actionlog_table` VALUES ('2955', '2018-05-04 12:30:15', 'admin', '/usersetting');
INSERT INTO `actionlog_table` VALUES ('2956', '2018-05-04 12:30:21', 'admin', '/mydaily');
INSERT INTO `actionlog_table` VALUES ('2957', '2018-05-04 12:30:23', 'admin', '/schedule');
INSERT INTO `actionlog_table` VALUES ('2958', '2018-05-04 12:30:25', 'admin', '/mydaily');
INSERT INTO `actionlog_table` VALUES ('2959', '2018-05-04 12:30:27', 'admin', '/usersetting');
INSERT INTO `actionlog_table` VALUES ('2960', '2018-05-04 12:30:28', 'admin', '/build');
INSERT INTO `actionlog_table` VALUES ('2961', '2018-05-04 12:30:30', 'admin', '/working');
INSERT INTO `actionlog_table` VALUES ('2962', '2018-05-04 12:30:31', 'admin', '/build');
INSERT INTO `actionlog_table` VALUES ('2963', '2018-05-04 12:30:32', 'admin', '/usersetting');
INSERT INTO `actionlog_table` VALUES ('2964', '2018-05-04 12:31:57', 'admin', '/build');
INSERT INTO `actionlog_table` VALUES ('2965', '2018-05-04 12:32:10', 'admin', '/working');
INSERT INTO `actionlog_table` VALUES ('2966', '2018-05-04 12:32:12', 'admin', '/build');
INSERT INTO `actionlog_table` VALUES ('2967', '2018-05-04 12:32:13', 'admin', '/usersetting');
INSERT INTO `actionlog_table` VALUES ('2968', '2018-05-04 12:32:14', 'admin', '/mydaily');
INSERT INTO `actionlog_table` VALUES ('2969', '2018-05-04 12:32:14', 'admin', '/usersetting');
INSERT INTO `actionlog_table` VALUES ('2970', '2018-05-04 12:32:15', 'admin', '/build');
INSERT INTO `actionlog_table` VALUES ('2971', '2018-05-04 12:32:15', 'admin', '/working');
INSERT INTO `actionlog_table` VALUES ('2972', '2018-05-04 12:32:20', 'admin', '/waiting');
INSERT INTO `actionlog_table` VALUES ('2973', '2018-05-04 12:32:22', 'admin', '/working');
INSERT INTO `actionlog_table` VALUES ('2974', '2018-05-04 12:32:26', 'admin', '/build');
INSERT INTO `actionlog_table` VALUES ('2975', '2018-05-04 12:32:29', 'admin', '/usersetting');
INSERT INTO `actionlog_table` VALUES ('2976', '2018-05-04 12:32:30', 'admin', '/mydaily');
INSERT INTO `actionlog_table` VALUES ('2977', '2018-05-04 12:32:32', 'admin', '/adddaily');
INSERT INTO `actionlog_table` VALUES ('2978', '2018-05-04 12:32:33', 'admin', '/mydaily');
INSERT INTO `actionlog_table` VALUES ('2979', '2018-05-04 12:35:16', 'admin', '/adddaily');
INSERT INTO `actionlog_table` VALUES ('2980', '2018-05-04 12:35:36', 'admin', '/home');
INSERT INTO `actionlog_table` VALUES ('2981', '2018-05-04 12:39:02', 'admin', '/mydaily');
INSERT INTO `actionlog_table` VALUES ('2982', '2018-05-04 12:39:05', 'admin', '/adddaily');
INSERT INTO `actionlog_table` VALUES ('2983', '2018-05-04 12:41:02', 'admin', '/home');
INSERT INTO `actionlog_table` VALUES ('2984', '2018-05-04 12:44:04', 'admin', '/mydaily');
INSERT INTO `actionlog_table` VALUES ('2985', '2018-05-04 12:44:09', 'admin', '/adddaily');
INSERT INTO `actionlog_table` VALUES ('2986', '2018-05-04 12:44:23', 'admin', '/home');
INSERT INTO `actionlog_table` VALUES ('2987', '2018-05-04 12:44:26', 'admin', '/mydaily');
INSERT INTO `actionlog_table` VALUES ('2988', '2018-05-04 12:44:27', 'admin', '/adddaily');
INSERT INTO `actionlog_table` VALUES ('2989', '2018-05-04 12:44:41', 'admin', '/home');
INSERT INTO `actionlog_table` VALUES ('2990', '2018-05-04 12:45:06', 'admin', '/mydaily');
INSERT INTO `actionlog_table` VALUES ('2991', '2018-05-04 12:45:08', 'admin', '/adddaily');
INSERT INTO `actionlog_table` VALUES ('2992', '2018-05-04 12:45:23', 'admin', '/mydaily');
INSERT INTO `actionlog_table` VALUES ('2993', '2018-05-04 12:45:25', 'admin', '/adddaily');
INSERT INTO `actionlog_table` VALUES ('2994', '2018-05-04 12:45:39', 'admin', '/mydaily');
INSERT INTO `actionlog_table` VALUES ('2995', '2018-05-04 12:46:07', 'admin', '/adddaily');
INSERT INTO `actionlog_table` VALUES ('2996', '2018-05-04 12:46:08', 'admin', '/checkdaily');
INSERT INTO `actionlog_table` VALUES ('2997', '2018-05-04 12:46:09', 'admin', '/working');
INSERT INTO `actionlog_table` VALUES ('2998', '2018-05-04 12:46:10', 'admin', '/build');
INSERT INTO `actionlog_table` VALUES ('2999', '2018-05-04 12:46:10', 'admin', '/usersetting');
INSERT INTO `actionlog_table` VALUES ('3000', '2018-05-04 12:46:11', 'admin', '/mydaily');
INSERT INTO `actionlog_table` VALUES ('3001', '2018-05-04 12:46:12', 'admin', '/schedule');
INSERT INTO `actionlog_table` VALUES ('3002', '2018-05-04 12:46:13', 'admin', '/mydaily');
INSERT INTO `actionlog_table` VALUES ('3003', '2018-05-04 12:46:21', 'admin', '/adddaily');
INSERT INTO `actionlog_table` VALUES ('3004', '2018-05-04 12:46:31', 'admin', '/build');
INSERT INTO `actionlog_table` VALUES ('3005', '2018-05-04 12:46:32', 'admin', '/usersetting');
INSERT INTO `actionlog_table` VALUES ('3006', '2018-05-04 12:46:34', 'admin', '/build');
INSERT INTO `actionlog_table` VALUES ('3007', '2018-05-04 12:46:35', 'admin', '/mydaily');
INSERT INTO `actionlog_table` VALUES ('3008', '2018-05-04 12:46:36', 'admin', '/working');
INSERT INTO `actionlog_table` VALUES ('3009', '2018-05-04 12:46:37', 'admin', '/build');
INSERT INTO `actionlog_table` VALUES ('3010', '2018-05-04 12:46:39', 'admin', '/usersetting');
INSERT INTO `actionlog_table` VALUES ('3011', '2018-05-04 12:46:39', 'admin', '/organize');
INSERT INTO `actionlog_table` VALUES ('3012', '2018-05-04 12:46:40', 'admin', '/authority');
INSERT INTO `actionlog_table` VALUES ('3013', '2018-05-04 12:48:07', '测试用户1', '/home');
INSERT INTO `actionlog_table` VALUES ('3014', '2018-05-04 12:48:08', '测试用户1', '/build');
INSERT INTO `actionlog_table` VALUES ('3015', '2018-05-04 12:48:09', '测试用户1', '/working');
INSERT INTO `actionlog_table` VALUES ('3016', '2018-05-04 12:48:10', '测试用户1', '/build');
INSERT INTO `actionlog_table` VALUES ('3017', '2018-05-04 12:48:11', '测试用户1', '/mydaily');
INSERT INTO `actionlog_table` VALUES ('3018', '2018-05-04 12:48:11', '测试用户1', '/working');
INSERT INTO `actionlog_table` VALUES ('3019', '2018-05-04 12:48:12', '测试用户1', '/waiting');
INSERT INTO `actionlog_table` VALUES ('3020', '2018-05-04 12:48:17', '测试用户1', '/finished');
INSERT INTO `actionlog_table` VALUES ('3021', '2018-05-04 12:48:17', '测试用户1', '/waiting');
INSERT INTO `actionlog_table` VALUES ('3022', '2018-05-04 12:48:18', '测试用户1', '/working');
INSERT INTO `actionlog_table` VALUES ('3023', '2018-05-04 12:48:20', '测试用户1', '/waiting');
INSERT INTO `actionlog_table` VALUES ('3024', '2018-05-04 12:48:27', '测试用户1', '/waiting');
INSERT INTO `actionlog_table` VALUES ('3025', '2018-05-04 12:48:40', '测试用户1', '/admin');
INSERT INTO `actionlog_table` VALUES ('3026', '2018-05-04 12:49:00', '测试用户1', '/admin');
INSERT INTO `actionlog_table` VALUES ('3027', '2018-05-04 12:49:04', '测试用户1', '/working');
INSERT INTO `actionlog_table` VALUES ('3028', '2018-05-04 12:49:04', '测试用户1', '/build');
INSERT INTO `actionlog_table` VALUES ('3029', '2018-05-04 12:49:05', '测试用户1', '/mydaily');
INSERT INTO `actionlog_table` VALUES ('3030', '2018-05-04 12:49:06', '测试用户1', '/build');
INSERT INTO `actionlog_table` VALUES ('3031', '2018-05-04 12:49:07', '测试用户1', '/working');
INSERT INTO `actionlog_table` VALUES ('3032', '2018-05-04 12:49:08', '测试用户1', '/waiting');
INSERT INTO `actionlog_table` VALUES ('3033', '2018-05-04 12:49:09', '测试用户1', '/finished');
INSERT INTO `actionlog_table` VALUES ('3034', '2018-05-04 12:49:09', '测试用户1', '/waiting');
INSERT INTO `actionlog_table` VALUES ('3035', '2018-05-04 12:49:10', '测试用户1', '/working');

-- ----------------------------
-- Table structure for `authority_table`
-- ----------------------------
DROP TABLE IF EXISTS `authority_table`;
CREATE TABLE `authority_table` (
  `ID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `uid` varchar(64) NOT NULL,
  `fid` tinyint(11) NOT NULL,
  `permission` varchar(255) DEFAULT NULL,
  `orders` tinyint(4) NOT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=543 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of authority_table
-- ----------------------------
INSERT INTO `authority_table` VALUES ('450', '$2a$05$bV.4/w5jXXFFWSATEtw9H.K6/0IGq.QuflCKZNNkqlKpzRU/t4X1e', '11', '', '1');
INSERT INTO `authority_table` VALUES ('451', '$2a$05$bV.4/w5jXXFFWSATEtw9H.K6/0IGq.QuflCKZNNkqlKpzRU/t4X1e', '12', '', '2');
INSERT INTO `authority_table` VALUES ('452', '$2a$05$bV.4/w5jXXFFWSATEtw9H.K6/0IGq.QuflCKZNNkqlKpzRU/t4X1e', '13', '', '3');
INSERT INTO `authority_table` VALUES ('453', '$2a$05$bV.4/w5jXXFFWSATEtw9H.K6/0IGq.QuflCKZNNkqlKpzRU/t4X1e', '14', '', '5');
INSERT INTO `authority_table` VALUES ('454', '$2a$05$bV.4/w5jXXFFWSATEtw9H.K6/0IGq.QuflCKZNNkqlKpzRU/t4X1e', '15', '', '4');
INSERT INTO `authority_table` VALUES ('455', '$2a$05$bV.4/w5jXXFFWSATEtw9H.K6/0IGq.QuflCKZNNkqlKpzRU/t4X1e', '1', '', '6');
INSERT INTO `authority_table` VALUES ('456', '$2a$05$bV.4/w5jXXFFWSATEtw9H.K6/0IGq.QuflCKZNNkqlKpzRU/t4X1e', '5', '', '7');
INSERT INTO `authority_table` VALUES ('457', '$2a$05$bV.4/w5jXXFFWSATEtw9H.K6/0IGq.QuflCKZNNkqlKpzRU/t4X1e', '6', '', '8');
INSERT INTO `authority_table` VALUES ('458', '$2a$05$bV.4/w5jXXFFWSATEtw9H.K6/0IGq.QuflCKZNNkqlKpzRU/t4X1e', '7', '', '9');
INSERT INTO `authority_table` VALUES ('459', '$2a$05$bV.4/w5jXXFFWSATEtw9H.K6/0IGq.QuflCKZNNkqlKpzRU/t4X1e', '3', '', '10');
INSERT INTO `authority_table` VALUES ('460', '$2a$05$bV.4/w5jXXFFWSATEtw9H.K6/0IGq.QuflCKZNNkqlKpzRU/t4X1e', '8', '', '11');
INSERT INTO `authority_table` VALUES ('461', '$2a$05$bV.4/w5jXXFFWSATEtw9H.K6/0IGq.QuflCKZNNkqlKpzRU/t4X1e', '10', '', '12');
INSERT INTO `authority_table` VALUES ('462', '$2a$05$bV.4/w5jXXFFWSATEtw9H.K6/0IGq.QuflCKZNNkqlKpzRU/t4X1e', '9', '', '13');
INSERT INTO `authority_table` VALUES ('463', '$2a$05$bV.4/w5jXXFFWSATEtw9H.K6/0IGq.QuflCKZNNkqlKpzRU/t4X1e', '4', '', '14');
INSERT INTO `authority_table` VALUES ('464', '$2a$05$bV.4/w5jXXFFWSATEtw9H.K6/0IGq.QuflCKZNNkqlKpzRU/t4X1e', '2', '', '15');
INSERT INTO `authority_table` VALUES ('465', '$2a$05$bV.4/w5jXXFFWSATEtw9H.K6/0IGq.QuflCKZNNkqlKpzRU/t4X1e', '16', '', '16');
INSERT INTO `authority_table` VALUES ('466', '$2a$05$bV.4/w5jXXFFWSATEtw9H.K6/0IGq.QuflCKZNNkqlKpzRU/t4X1e', '17', '', '17');
INSERT INTO `authority_table` VALUES ('467', '$2a$05$bV.4/w5jXXFFWSATEtw9H.K6/0IGq.QuflCKZNNkqlKpzRU/t4X1e', '18', '', '18');
INSERT INTO `authority_table` VALUES ('481', '$2a$05$2FyvIu1b9yfw3LwyTfy9AuPBZOckux0nc4jaPcPWhujCpWcriSFWm', '11', '', '1');
INSERT INTO `authority_table` VALUES ('482', '$2a$05$2FyvIu1b9yfw3LwyTfy9AuPBZOckux0nc4jaPcPWhujCpWcriSFWm', '12', '', '2');
INSERT INTO `authority_table` VALUES ('483', '$2a$05$2FyvIu1b9yfw3LwyTfy9AuPBZOckux0nc4jaPcPWhujCpWcriSFWm', '13', '', '3');
INSERT INTO `authority_table` VALUES ('484', '$2a$05$2FyvIu1b9yfw3LwyTfy9AuPBZOckux0nc4jaPcPWhujCpWcriSFWm', '14', '', '5');
INSERT INTO `authority_table` VALUES ('485', '$2a$05$2FyvIu1b9yfw3LwyTfy9AuPBZOckux0nc4jaPcPWhujCpWcriSFWm', '15', '', '4');
INSERT INTO `authority_table` VALUES ('486', '$2a$05$2FyvIu1b9yfw3LwyTfy9AuPBZOckux0nc4jaPcPWhujCpWcriSFWm', '1', '', '6');
INSERT INTO `authority_table` VALUES ('487', '$2a$05$2FyvIu1b9yfw3LwyTfy9AuPBZOckux0nc4jaPcPWhujCpWcriSFWm', '5', '', '7');
INSERT INTO `authority_table` VALUES ('488', '$2a$05$2FyvIu1b9yfw3LwyTfy9AuPBZOckux0nc4jaPcPWhujCpWcriSFWm', '6', '', '8');
INSERT INTO `authority_table` VALUES ('489', '$2a$05$2FyvIu1b9yfw3LwyTfy9AuPBZOckux0nc4jaPcPWhujCpWcriSFWm', '7', '', '9');
INSERT INTO `authority_table` VALUES ('490', '$2a$05$2FyvIu1b9yfw3LwyTfy9AuPBZOckux0nc4jaPcPWhujCpWcriSFWm', '3', '', '10');
INSERT INTO `authority_table` VALUES ('491', '$2a$05$2FyvIu1b9yfw3LwyTfy9AuPBZOckux0nc4jaPcPWhujCpWcriSFWm', '8', '', '11');
INSERT INTO `authority_table` VALUES ('492', '$2a$05$2FyvIu1b9yfw3LwyTfy9AuPBZOckux0nc4jaPcPWhujCpWcriSFWm', '10', '', '12');
INSERT INTO `authority_table` VALUES ('493', '$2a$05$2FyvIu1b9yfw3LwyTfy9AuPBZOckux0nc4jaPcPWhujCpWcriSFWm', '9', '', '13');
INSERT INTO `authority_table` VALUES ('494', '$2a$05$2FyvIu1b9yfw3LwyTfy9AuPBZOckux0nc4jaPcPWhujCpWcriSFWm', '4', '', '14');
INSERT INTO `authority_table` VALUES ('495', '$2a$05$2FyvIu1b9yfw3LwyTfy9AuPBZOckux0nc4jaPcPWhujCpWcriSFWm', '2', '', '15');
INSERT INTO `authority_table` VALUES ('496', '$2a$05$2FyvIu1b9yfw3LwyTfy9AuPBZOckux0nc4jaPcPWhujCpWcriSFWm', '16', '', '16');
INSERT INTO `authority_table` VALUES ('497', '$2a$05$2FyvIu1b9yfw3LwyTfy9AuPBZOckux0nc4jaPcPWhujCpWcriSFWm', '17', '', '17');
INSERT INTO `authority_table` VALUES ('498', '$2a$05$2FyvIu1b9yfw3LwyTfy9AuPBZOckux0nc4jaPcPWhujCpWcriSFWm', '18', '', '18');
INSERT INTO `authority_table` VALUES ('512', '$2a$05$Bmb4syd7r6Il0l/kDB.nyeQcWKZ8dV6lXcUqd0WCd5x1mT.Oi7B2C', '11', '', '1');
INSERT INTO `authority_table` VALUES ('513', '$2a$05$Bmb4syd7r6Il0l/kDB.nyeQcWKZ8dV6lXcUqd0WCd5x1mT.Oi7B2C', '12', '', '2');
INSERT INTO `authority_table` VALUES ('514', '$2a$05$Bmb4syd7r6Il0l/kDB.nyeQcWKZ8dV6lXcUqd0WCd5x1mT.Oi7B2C', '13', '', '3');
INSERT INTO `authority_table` VALUES ('515', '$2a$05$Bmb4syd7r6Il0l/kDB.nyeQcWKZ8dV6lXcUqd0WCd5x1mT.Oi7B2C', '14', '', '5');
INSERT INTO `authority_table` VALUES ('516', '$2a$05$Bmb4syd7r6Il0l/kDB.nyeQcWKZ8dV6lXcUqd0WCd5x1mT.Oi7B2C', '15', '', '4');
INSERT INTO `authority_table` VALUES ('517', '$2a$05$Bmb4syd7r6Il0l/kDB.nyeQcWKZ8dV6lXcUqd0WCd5x1mT.Oi7B2C', '1', '', '6');
INSERT INTO `authority_table` VALUES ('518', '$2a$05$Bmb4syd7r6Il0l/kDB.nyeQcWKZ8dV6lXcUqd0WCd5x1mT.Oi7B2C', '5', '', '7');
INSERT INTO `authority_table` VALUES ('519', '$2a$05$Bmb4syd7r6Il0l/kDB.nyeQcWKZ8dV6lXcUqd0WCd5x1mT.Oi7B2C', '6', '', '8');
INSERT INTO `authority_table` VALUES ('520', '$2a$05$Bmb4syd7r6Il0l/kDB.nyeQcWKZ8dV6lXcUqd0WCd5x1mT.Oi7B2C', '7', '', '9');
INSERT INTO `authority_table` VALUES ('521', '$2a$05$Bmb4syd7r6Il0l/kDB.nyeQcWKZ8dV6lXcUqd0WCd5x1mT.Oi7B2C', '3', '', '10');
INSERT INTO `authority_table` VALUES ('522', '$2a$05$Bmb4syd7r6Il0l/kDB.nyeQcWKZ8dV6lXcUqd0WCd5x1mT.Oi7B2C', '8', '', '11');
INSERT INTO `authority_table` VALUES ('523', '$2a$05$Bmb4syd7r6Il0l/kDB.nyeQcWKZ8dV6lXcUqd0WCd5x1mT.Oi7B2C', '10', '', '12');
INSERT INTO `authority_table` VALUES ('524', '$2a$05$Bmb4syd7r6Il0l/kDB.nyeQcWKZ8dV6lXcUqd0WCd5x1mT.Oi7B2C', '9', '', '13');
INSERT INTO `authority_table` VALUES ('525', '$2a$05$Bmb4syd7r6Il0l/kDB.nyeQcWKZ8dV6lXcUqd0WCd5x1mT.Oi7B2C', '4', '', '14');
INSERT INTO `authority_table` VALUES ('526', '$2a$05$Bmb4syd7r6Il0l/kDB.nyeQcWKZ8dV6lXcUqd0WCd5x1mT.Oi7B2C', '2', '', '15');
INSERT INTO `authority_table` VALUES ('527', '$2a$05$Bmb4syd7r6Il0l/kDB.nyeQcWKZ8dV6lXcUqd0WCd5x1mT.Oi7B2C', '16', '', '16');
INSERT INTO `authority_table` VALUES ('528', '$2a$05$Bmb4syd7r6Il0l/kDB.nyeQcWKZ8dV6lXcUqd0WCd5x1mT.Oi7B2C', '17', '', '17');
INSERT INTO `authority_table` VALUES ('529', '$2a$05$Bmb4syd7r6Il0l/kDB.nyeQcWKZ8dV6lXcUqd0WCd5x1mT.Oi7B2C', '18', '', '18');

-- ----------------------------
-- Table structure for `dailylog_table`
-- ----------------------------
DROP TABLE IF EXISTS `dailylog_table`;
CREATE TABLE `dailylog_table` (
  `ID` int(10) NOT NULL AUTO_INCREMENT,
  `uid` varchar(64) NOT NULL,
  `intime` datetime NOT NULL,
  `content` text NOT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of dailylog_table
-- ----------------------------
INSERT INTO `dailylog_table` VALUES ('11', '$2a$05$bV.4/w5jXXFFWSATEtw9H.K6/0IGq.QuflCKZNNkqlKpzRU/t4X1e', '2018-05-04 12:45:11', '<h1>深入响应式原理</h1><p>现在是时候深入一下了！Vue 最独特的特性之一，是其非侵入性的响应式系统。数据模型仅仅是普通的 JavaScript 对象。而当你修改它们时，视图会进行更新。这使得状态管理非常简单直接，不过理解其工作原理同样重要，这样你可以回避一些常见的问题。在这个章节，我们将进入一些 Vue 响应式系统的底层的细节。</p>');
INSERT INTO `dailylog_table` VALUES ('12', '$2a$05$bV.4/w5jXXFFWSATEtw9H.K6/0IGq.QuflCKZNNkqlKpzRU/t4X1e', '2018-05-04 12:45:34', '<p>当你把一个普通的 JavaScript 对象传给 Vue 实例的&nbsp;<code style=\"color: rgb(233, 105, 0); background-color: rgb(248, 248, 248);\">data</code>&nbsp;选项，Vue 将遍历此对象所有的属性，并使用&nbsp;<a href=\"https://developer.mozilla.org/en-US/docs/Web/JavaScript/Reference/Global_Objects/Object/defineProperty\" target=\"_blank\" style=\"color: rgb(66, 185, 131);\">Object.defineProperty</a>&nbsp;把这些属性全部转为 getter/setter。Object.defineProperty 是 ES5 中一个无法 shim 的特性，这也就是为什么 Vue 不支持 IE8 以及更低版本浏览器的原因。</p><p>这些 getter/setter 对用户来说是不可见的，但是在内部它们让 Vue 追踪依赖，在属性被访问和修改时通知变化。这里需要注意的问题是浏览器控制台在打印数据对象时 getter/setter 的格式化并不同，所以你可能需要安装&nbsp;<a href=\"https://github.com/vuejs/vue-devtools\" target=\"_blank\" style=\"color: rgb(66, 185, 131);\">vue-devtools</a>&nbsp;来获取更加友好的检查接口。</p><p>每个组件实例都有相应的&nbsp;<span style=\"color: rgb(44, 62, 80);\">watcher</span>&nbsp;实例对象，它会在组件渲染的过程中把属性记录为依赖，之后当依赖项的&nbsp;<code style=\"color: rgb(233, 105, 0); background-color: rgb(248, 248, 248);\">setter</code>&nbsp;被调用时，会通知&nbsp;<code style=\"color: rgb(233, 105, 0); background-color: rgb(248, 248, 248);\">watcher</code>&nbsp;重新计算，从而致使它关联的组件得以更新。</p><p><img src=\"https://cn.vuejs.org/images/data.png\" alt=\"data\"></p>');

-- ----------------------------
-- Table structure for `framework_table`
-- ----------------------------
DROP TABLE IF EXISTS `framework_table`;
CREATE TABLE `framework_table` (
  `ID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `fid` int(11) NOT NULL,
  `parentid` int(11) NOT NULL,
  `path` varchar(32) DEFAULT NULL,
  `name` varchar(32) DEFAULT NULL,
  `icon` varchar(32) DEFAULT NULL,
  `permission` varchar(255) DEFAULT NULL,
  `button` varchar(255) DEFAULT NULL,
  `end` tinyint(4) DEFAULT NULL,
  `orders` tinyint(4) DEFAULT NULL,
  `census` tinyint(4) NOT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=19 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of framework_table
-- ----------------------------
INSERT INTO `framework_table` VALUES ('1', '1', '0', '/creat', '任务管理', 'el-icon-edit-outline', null, null, '0', '6', '0');
INSERT INTO `framework_table` VALUES ('2', '2', '0', '/schedule', '办公管理', 'el-icon-bell', null, null, '1', '15', '0');
INSERT INTO `framework_table` VALUES ('3', '3', '0', '/setting', '系统设置', 'el-icon-setting', '', null, '0', '10', '0');
INSERT INTO `framework_table` VALUES ('4', '4', '0', '/dailylog', '工作日志', 'el-icon-date', null, null, '0', '14', '0');
INSERT INTO `framework_table` VALUES ('5', '5', '1', '/build', '新建任务', null, null, null, '0', '7', '0');
INSERT INTO `framework_table` VALUES ('6', '6', '1', '/created', '已建任务', null, null, null, '0', '8', '0');
INSERT INTO `framework_table` VALUES ('7', '7', '1', '/census', '任务统计', null, null, null, '0', '9', '0');
INSERT INTO `framework_table` VALUES ('8', '8', '3', '/usersetting', '用户统计', null, null, null, '0', '11', '0');
INSERT INTO `framework_table` VALUES ('9', '9', '3', '/authority', '权限管理', null, '', '', '0', '13', '0');
INSERT INTO `framework_table` VALUES ('10', '10', '3', '/organize', '组织管理', null, '', '按钮1,按钮2,按钮3', '0', '12', '0');
INSERT INTO `framework_table` VALUES ('11', '11', '0', '/work', '我的任务', 'el-icon-tickets', null, '按钮2,按钮3,按钮4', '0', '1', '0');
INSERT INTO `framework_table` VALUES ('12', '12', '11', '/working', '当前任务', null, null, null, '0', '2', '1');
INSERT INTO `framework_table` VALUES ('13', '13', '11', '/waiting', '待接收任务', null, null, null, '0', '3', '1');
INSERT INTO `framework_table` VALUES ('14', '14', '11', '/overtimer', '待开发', null, null, null, '0', '5', '0');
INSERT INTO `framework_table` VALUES ('15', '15', '11', '/finished', '我的统计', null, null, null, '0', '4', '0');
INSERT INTO `framework_table` VALUES ('16', '16', '4', '/mydaily', '我的日志', null, null, null, '0', '16', '0');
INSERT INTO `framework_table` VALUES ('17', '17', '4', '/adddaily', '新增日志', null, null, null, '0', '17', '0');
INSERT INTO `framework_table` VALUES ('18', '18', '4', '/checkdaily', '待开发', null, null, null, '0', '18', '0');

-- ----------------------------
-- Table structure for `mission_table`
-- ----------------------------
DROP TABLE IF EXISTS `mission_table`;
CREATE TABLE `mission_table` (
  `ID` int(10) NOT NULL AUTO_INCREMENT,
  `uid` varchar(64) NOT NULL,
  `title` varchar(255) NOT NULL,
  `timebegain` int(11) NOT NULL,
  `timeend` int(11) NOT NULL,
  `peoples` varchar(255) NOT NULL,
  `comp_time` datetime DEFAULT NULL,
  `comp` tinyint(4) NOT NULL DEFAULT '0',
  `detail` text NOT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=193 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of mission_table
-- ----------------------------
INSERT INTO `mission_table` VALUES ('189', '$2a$05$bV.4/w5jXXFFWSATEtw9H.K6/0IGq.QuflCKZNNkqlKpzRU/t4X1e', '测试任务', '1525408005', '1527647400', 'admin,测试用户,测试用户1', null, '0', '测绘师范德萨范德萨');
INSERT INTO `mission_table` VALUES ('190', '$2a$05$bV.4/w5jXXFFWSATEtw9H.K6/0IGq.QuflCKZNNkqlKpzRU/t4X1e', '测试任务', '1525408050', '1527732000', 'admin,测试用户,测试用户1', null, '0', '的飞洒发放到');
INSERT INTO `mission_table` VALUES ('191', '$2a$05$bV.4/w5jXXFFWSATEtw9H.K6/0IGq.QuflCKZNNkqlKpzRU/t4X1e', '测试多大范德萨', '1525408110', '1527645600', 'admin,测试用户,测试用户1', null, '0', '地方撒范德萨');
INSERT INTO `mission_table` VALUES ('192', '$2a$05$bV.4/w5jXXFFWSATEtw9H.K6/0IGq.QuflCKZNNkqlKpzRU/t4X1e', '范德萨发大水', '1525408203', '1527645600', 'admin,测试用户,测试用户1', null, '0', '范德萨范德萨');

-- ----------------------------
-- Table structure for `organize_table`
-- ----------------------------
DROP TABLE IF EXISTS `organize_table`;
CREATE TABLE `organize_table` (
  `ID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `cid` varchar(64) NOT NULL,
  `parentid` varchar(64) DEFAULT NULL,
  `seter` varchar(64) DEFAULT NULL,
  `lastchange` int(11) DEFAULT NULL,
  `tags` varchar(20) DEFAULT NULL,
  `end` tinyint(4) DEFAULT NULL,
  `flag` varchar(10) NOT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=28 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of organize_table
-- ----------------------------
INSERT INTO `organize_table` VALUES ('25', '$2a$05$nuy0PWRmIR0fGKl0h9BRfeaSrTqdvXnNwSfmNKtmGJ1C8pFeORnMy', '', '$2a$05$bV.4/w5jXXFFWSATEtw9H.K6/0IGq.QuflCKZNNkqlKpzRU/t4X1e', '1525406473', '部门1', '0', 'company');
INSERT INTO `organize_table` VALUES ('26', '$2a$05$22Oj0AGwGf4lxJDt9wQMZuMg6PW4XS15XR7NVmuPY9XFPZsR4ZNCq', '$2a$05$nuy0PWRmIR0fGKl0h9BRfeaSrTqdvXnNwSfmNKtmGJ1C8pFeORnMy', '$2a$05$bV.4/w5jXXFFWSATEtw9H.K6/0IGq.QuflCKZNNkqlKpzRU/t4X1e', '1525406501', '前端组', '1', 'groups');
INSERT INTO `organize_table` VALUES ('27', '$2a$05$lWe9vZiULBG9eNsU4SxBveGkz3XluAItlbFwDoh/f0THrl.LQV63S', '$2a$05$nuy0PWRmIR0fGKl0h9BRfeaSrTqdvXnNwSfmNKtmGJ1C8pFeORnMy', '$2a$05$bV.4/w5jXXFFWSATEtw9H.K6/0IGq.QuflCKZNNkqlKpzRU/t4X1e', '1525406517', '后端组', '1', 'groups');

-- ----------------------------
-- Table structure for `task_table`
-- ----------------------------
DROP TABLE IF EXISTS `task_table`;
CREATE TABLE `task_table` (
  `ID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `fromeuser` varchar(64) NOT NULL DEFAULT '',
  `touser` varchar(64) NOT NULL DEFAULT '',
  `createdtime` int(11) NOT NULL,
  `endtime` int(11) NOT NULL,
  `missionid` int(11) NOT NULL DEFAULT '0',
  `status` tinyint(4) NOT NULL DEFAULT '0',
  `accepttime` int(11) NOT NULL DEFAULT '0',
  `intime` tinyint(4) NOT NULL DEFAULT '0',
  `complatetime` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=617 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of task_table
-- ----------------------------
INSERT INTO `task_table` VALUES ('605', '$2a$05$bV.4/w5jXXFFWSATEtw9H.K6/0IGq.QuflCKZNNkqlKpzRU/t4X1e', '$2a$05$bV.4/w5jXXFFWSATEtw9H.K6/0IGq.QuflCKZNNkqlKpzRU/t4X1e', '1525408005', '1527647400', '189', '0', '0', '0', '0');
INSERT INTO `task_table` VALUES ('606', '$2a$05$bV.4/w5jXXFFWSATEtw9H.K6/0IGq.QuflCKZNNkqlKpzRU/t4X1e', '$2a$05$2FyvIu1b9yfw3LwyTfy9AuPBZOckux0nc4jaPcPWhujCpWcriSFWm', '1525408005', '1527647400', '189', '0', '0', '0', '0');
INSERT INTO `task_table` VALUES ('607', '$2a$05$bV.4/w5jXXFFWSATEtw9H.K6/0IGq.QuflCKZNNkqlKpzRU/t4X1e', '$2a$05$Bmb4syd7r6Il0l/kDB.nyeQcWKZ8dV6lXcUqd0WCd5x1mT.Oi7B2C', '1525408005', '1527647400', '189', '0', '0', '0', '0');
INSERT INTO `task_table` VALUES ('608', '$2a$05$bV.4/w5jXXFFWSATEtw9H.K6/0IGq.QuflCKZNNkqlKpzRU/t4X1e', '$2a$05$bV.4/w5jXXFFWSATEtw9H.K6/0IGq.QuflCKZNNkqlKpzRU/t4X1e', '1525408050', '1527732000', '190', '0', '0', '0', '0');
INSERT INTO `task_table` VALUES ('609', '$2a$05$bV.4/w5jXXFFWSATEtw9H.K6/0IGq.QuflCKZNNkqlKpzRU/t4X1e', '$2a$05$2FyvIu1b9yfw3LwyTfy9AuPBZOckux0nc4jaPcPWhujCpWcriSFWm', '1525408050', '1527732000', '190', '0', '0', '0', '0');
INSERT INTO `task_table` VALUES ('610', '$2a$05$bV.4/w5jXXFFWSATEtw9H.K6/0IGq.QuflCKZNNkqlKpzRU/t4X1e', '$2a$05$Bmb4syd7r6Il0l/kDB.nyeQcWKZ8dV6lXcUqd0WCd5x1mT.Oi7B2C', '1525408050', '1527732000', '190', '0', '0', '0', '0');
INSERT INTO `task_table` VALUES ('611', '$2a$05$bV.4/w5jXXFFWSATEtw9H.K6/0IGq.QuflCKZNNkqlKpzRU/t4X1e', '$2a$05$bV.4/w5jXXFFWSATEtw9H.K6/0IGq.QuflCKZNNkqlKpzRU/t4X1e', '1525408110', '1527645600', '191', '0', '0', '0', '0');
INSERT INTO `task_table` VALUES ('612', '$2a$05$bV.4/w5jXXFFWSATEtw9H.K6/0IGq.QuflCKZNNkqlKpzRU/t4X1e', '$2a$05$2FyvIu1b9yfw3LwyTfy9AuPBZOckux0nc4jaPcPWhujCpWcriSFWm', '1525408110', '1527645600', '191', '0', '0', '0', '0');
INSERT INTO `task_table` VALUES ('613', '$2a$05$bV.4/w5jXXFFWSATEtw9H.K6/0IGq.QuflCKZNNkqlKpzRU/t4X1e', '$2a$05$Bmb4syd7r6Il0l/kDB.nyeQcWKZ8dV6lXcUqd0WCd5x1mT.Oi7B2C', '1525408110', '1527645600', '191', '0', '0', '0', '0');
INSERT INTO `task_table` VALUES ('614', '$2a$05$bV.4/w5jXXFFWSATEtw9H.K6/0IGq.QuflCKZNNkqlKpzRU/t4X1e', '$2a$05$bV.4/w5jXXFFWSATEtw9H.K6/0IGq.QuflCKZNNkqlKpzRU/t4X1e', '1525408203', '1527645600', '192', '0', '0', '0', '0');
INSERT INTO `task_table` VALUES ('615', '$2a$05$bV.4/w5jXXFFWSATEtw9H.K6/0IGq.QuflCKZNNkqlKpzRU/t4X1e', '$2a$05$2FyvIu1b9yfw3LwyTfy9AuPBZOckux0nc4jaPcPWhujCpWcriSFWm', '1525408203', '1527645600', '192', '0', '0', '0', '0');
INSERT INTO `task_table` VALUES ('616', '$2a$05$bV.4/w5jXXFFWSATEtw9H.K6/0IGq.QuflCKZNNkqlKpzRU/t4X1e', '$2a$05$Bmb4syd7r6Il0l/kDB.nyeQcWKZ8dV6lXcUqd0WCd5x1mT.Oi7B2C', '1525408203', '1527645600', '192', '0', '0', '0', '0');

-- ----------------------------
-- Table structure for `user_table`
-- ----------------------------
DROP TABLE IF EXISTS `user_table`;
CREATE TABLE `user_table` (
  `ID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `uid` varchar(64) NOT NULL,
  `name` varchar(32) NOT NULL,
  `password` varchar(64) NOT NULL,
  `outfit` varchar(255) NOT NULL,
  `level` int(11) DEFAULT NULL,
  `disable` tinyint(4) DEFAULT '0',
  `working` tinyint(4) DEFAULT '0',
  `frames` varchar(64) NOT NULL,
  `dirpath` varchar(64) DEFAULT NULL,
  `headpath` varchar(64) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `setuptime` datetime DEFAULT NULL,
  `captext` varchar(32) DEFAULT NULL,
  `token` varchar(255) DEFAULT NULL,
  `token_time` timestamp NULL DEFAULT NULL,
  `socketid` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=66 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of user_table
-- ----------------------------
INSERT INTO `user_table` VALUES ('63', '$2a$05$bV.4/w5jXXFFWSATEtw9H.K6/0IGq.QuflCKZNNkqlKpzRU/t4X1e', 'admin', '$2a$05$LxO7yuJqyIdkX/K2s12.LO2ErHh9ARf7yhah9l4GoH9myK/0VnBYC', '$2a$05$22Oj0AGwGf4lxJDt9wQMZuMg6PW4XS15XR7NVmuPY9XFPZsR4ZNCq', '0', '0', '0', '1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18', null, null, null, '2018-05-04 11:58:45', null, null, null, null);
INSERT INTO `user_table` VALUES ('64', '$2a$05$2FyvIu1b9yfw3LwyTfy9AuPBZOckux0nc4jaPcPWhujCpWcriSFWm', '测试用户', '$2a$05$eptwReF03ZYsdF7cxCe6z.Cox4EeE/5KZ2qhe5lBpRA8yQffbir4q', '$2a$05$22Oj0AGwGf4lxJDt9wQMZuMg6PW4XS15XR7NVmuPY9XFPZsR4ZNCq', '0', '0', '0', '1,2,3,4,5,6,7,8,9,10,11,12,13,15,16,17', null, null, null, '2018-05-04 12:03:29', null, null, null, null);
INSERT INTO `user_table` VALUES ('65', '$2a$05$Bmb4syd7r6Il0l/kDB.nyeQcWKZ8dV6lXcUqd0WCd5x1mT.Oi7B2C', '测试用户1', '$2a$05$nyLqIpoLK0k/kkP7ZNAbUeLSDwvxL4u2S0k0tqNXycOAtdm2STDTO', '$2a$05$lWe9vZiULBG9eNsU4SxBveGkz3XluAItlbFwDoh/f0THrl.LQV63S', '0', '0', '0', '1,4,5,6,7,8,9,10,11,12,13,15,16,17,18', null, 'static/upload/admin/1525409333004.png', null, '2018-05-04 12:04:18', null, null, null, null);
