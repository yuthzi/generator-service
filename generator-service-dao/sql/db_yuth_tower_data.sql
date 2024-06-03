

USE db_yuth_tower;


-- 菜单数据。表信息
INSERT INTO `t_menu` (`menu_id`, `pid`, `pattern`, `code`, `menu_name`, `level`, `type`, `gmt_create`, `gmt_modified`) VALUES (20000, 0, '/admin/sys/table', 'Generator', '表信息管理', 1, 1, CURRENT_TIMESTAMP, CURRENT_TIMESTAMP);
INSERT INTO `t_menu` (`menu_id`, `pid`, `pattern`, `code`, `menu_name`, `level`, `type`, `gmt_create`, `gmt_modified`) VALUES (20100, 20000, '/admin/sys/table/list', 'SysTableList', '表信息列表', 2, 1, CURRENT_TIMESTAMP, CURRENT_TIMESTAMP);
INSERT INTO `t_menu` (`menu_id`, `pid`, `pattern`, `code`, `menu_name`, `level`, `type`, `gmt_create`, `gmt_modified`) VALUES (20101, 20100, '/admin/sys/table/list/add', 'btn.SysTable.add', '添加', 3, 2, CURRENT_TIMESTAMP, CURRENT_TIMESTAMP);
INSERT INTO `t_menu` (`menu_id`, `pid`, `pattern`, `code`, `menu_name`, `level`, `type`, `gmt_create`, `gmt_modified`) VALUES (20102, 20100, '/admin/sys/table/list/update', 'btn.SysTable.update', '修改', 3, 2, CURRENT_TIMESTAMP, CURRENT_TIMESTAMP);
INSERT INTO `t_menu` (`menu_id`, `pid`, `pattern`, `code`, `menu_name`, `level`, `type`, `gmt_create`, `gmt_modified`) VALUES (20103, 20100, '/admin/sys/table/list/remove', 'btn.SysTable.remove', '删除', 3, 2, CURRENT_TIMESTAMP, CURRENT_TIMESTAMP);

-- 分配角色权限。表信息
INSERT INTO `t_menu_role` (`ref_id`, `menu_id`, `role_id`, `gmt_create`, `gmt_modified`) VALUES (1000, 20000, 1, CURRENT_TIMESTAMP, CURRENT_TIMESTAMP);
INSERT INTO `t_menu_role` (`ref_id`, `menu_id`, `role_id`, `gmt_create`, `gmt_modified`) VALUES (1001, 20100, 1, CURRENT_TIMESTAMP, CURRENT_TIMESTAMP);
INSERT INTO `t_menu_role` (`ref_id`, `menu_id`, `role_id`, `gmt_create`, `gmt_modified`) VALUES (1002, 20101, 1, CURRENT_TIMESTAMP, CURRENT_TIMESTAMP);
INSERT INTO `t_menu_role` (`ref_id`, `menu_id`, `role_id`, `gmt_create`, `gmt_modified`) VALUES (1003, 20102, 1, CURRENT_TIMESTAMP, CURRENT_TIMESTAMP);
INSERT INTO `t_menu_role` (`ref_id`, `menu_id`, `role_id`, `gmt_create`, `gmt_modified`) VALUES (1004, 20103, 1, CURRENT_TIMESTAMP, CURRENT_TIMESTAMP);


-- ----------------------------
-- Records of t_role
-- ----------------------------
INSERT INTO `t_role`(`role_id`, `role_code`, `role_name`, `gmt_create`, `gmt_modified`) VALUES (1, 'ROLE_ADMIN', '系统管理员', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP);
INSERT INTO `t_role`(`role_id`, `role_code`, `role_name`, `gmt_create`, `gmt_modified`)  VALUES (2, 'ROLE_USER', '普通用户', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP);
INSERT INTO `t_role`(`role_id`, `role_code`, `role_name`, `gmt_create`, `gmt_modified`)  VALUES (3, 'ROLE_GUEST', '游客', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP);


-- 用户
INSERT INTO `db_yuth_tower`.`t_user` (`user_id`, `username`, `password`, `nickname`, `enable`, `locked`, `gmt_create`, `gmt_modified`) VALUES (1, 'admin', '$2a$10$JQmk5ANyCGp0CjgWbD/kreT4HqADGXwYRkzAhkbqllIZZ.on7x85W', '管理员', 1, 0, '2024-04-30 21:52:05', '2024-04-30 21:52:05');
INSERT INTO `db_yuth_tower`.`t_user` (`user_id`, `username`, `password`, `nickname`, `enable`, `locked`, `gmt_create`, `gmt_modified`) VALUES (3, 'yuth', '$2a$10$JQmk5ANyCGp0CjgWbD/kreT4HqADGXwYRkzAhkbqllIZZ.on7x85W', '玉痕天', 1, 0, '2024-04-29 16:00:44', '2024-04-29 16:00:44');
INSERT INTO `db_yuth_tower`.`t_user` (`user_id`, `username`, `password`, `nickname`, `enable`, `locked`, `gmt_create`, `gmt_modified`) VALUES (10000, 'lisisi2', '$2a$10$5TDei.Rm2Bp/JUVocj4CVO4HtNw5CNiW3W2WHX07yeBZ/L50jD.Hi', '李思思2', 0, 0, '2024-05-05 16:27:18', '2024-05-05 16:27:18');
INSERT INTO `db_yuth_tower`.`t_user` (`user_id`, `username`, `password`, `nickname`, `enable`, `locked`, `gmt_create`, `gmt_modified`) VALUES (10001, 'lisisi3', '$2a$10$5TDei.Rm2Bp/JUVocj4CVO4HtNw5CNiW3W2WHX07yeBZ/L50jD.Hi', '李思思3', 0, 1, '2024-05-05 16:27:18', '2024-05-05 16:27:18');
INSERT INTO `db_yuth_tower`.`t_user` (`user_id`, `username`, `password`, `nickname`, `enable`, `locked`, `gmt_create`, `gmt_modified`) VALUES (10004, 'lisisi4', '$2a$10$5TDei.Rm2Bp/JUVocj4CVO4HtNw5CNiW3W2WHX07yeBZ/L50jD.Hi', '李思思4', 1, 0, '2024-05-05 16:27:18', '2024-05-05 16:27:18');
INSERT INTO `db_yuth_tower`.`t_user` (`user_id`, `username`, `password`, `nickname`, `enable`, `locked`, `gmt_create`, `gmt_modified`) VALUES (10005, 'lisisi5', '$2a$10$5TDei.Rm2Bp/JUVocj4CVO4HtNw5CNiW3W2WHX07yeBZ/L50jD.Hi', '李思思5', 0, 0, '2024-05-05 16:27:18', '2024-05-05 16:27:18');
INSERT INTO `db_yuth_tower`.`t_user` (`user_id`, `username`, `password`, `nickname`, `enable`, `locked`, `gmt_create`, `gmt_modified`) VALUES (10006, 'lisisi6', '$2a$10$5TDei.Rm2Bp/JUVocj4CVO4HtNw5CNiW3W2WHX07yeBZ/L50jD.Hi', '李思思6', 0, 0, '2024-05-05 16:27:18', '2024-05-05 16:27:18');
INSERT INTO `db_yuth_tower`.`t_user` (`user_id`, `username`, `password`, `nickname`, `enable`, `locked`, `gmt_create`, `gmt_modified`) VALUES (10007, 'lisisi7', '$2a$10$5TDei.Rm2Bp/JUVocj4CVO4HtNw5CNiW3W2WHX07yeBZ/L50jD.Hi', '李思思7', 0, 0, '2024-05-05 16:27:18', '2024-05-05 16:27:18');
INSERT INTO `db_yuth_tower`.`t_user` (`user_id`, `username`, `password`, `nickname`, `enable`, `locked`, `gmt_create`, `gmt_modified`) VALUES (10008, 'lisisi8', '$2a$10$5TDei.Rm2Bp/JUVocj4CVO4HtNw5CNiW3W2WHX07yeBZ/L50jD.Hi', '李思思8', 1, 0, '2024-05-05 16:27:18', '2024-05-05 16:27:18');
INSERT INTO `db_yuth_tower`.`t_user` (`user_id`, `username`, `password`, `nickname`, `enable`, `locked`, `gmt_create`, `gmt_modified`) VALUES (4713765748473984, 'lvxiaoxue', '$2a$10$JQmk5ANyCGp0CjgWbD/kreT4HqADGXwYRkzAhkbqllIZZ.on7x85W', '吕晓雪', 1, 0, '2024-04-30 20:53:09', '2024-04-30 20:53:09');
INSERT INTO `db_yuth_tower`.`t_user` (`user_id`, `username`, `password`, `nickname`, `enable`, `locked`, `gmt_create`, `gmt_modified`) VALUES (4822830604222592, 'lisisi1', '$2a$10$5TDei.Rm2Bp/JUVocj4CVO4HtNw5CNiW3W2WHX07yeBZ/L50jD.Hi', '李思思', 0, 0, '2024-05-05 16:27:18', '2024-05-05 16:27:18');


-- ----------------------------
-- Records of t_user_role
-- ----------------------------

INSERT INTO `t_user_role`(`ref_id`, `user_id`, `role_id`, `gmt_create`, `gmt_modified`) VALUES (1, 1, 1, CURRENT_TIMESTAMP, CURRENT_TIMESTAMP);
INSERT INTO `t_user_role`(`ref_id`, `user_id`, `role_id`, `gmt_create`, `gmt_modified`) VALUES (2, 2, 2, CURRENT_TIMESTAMP, CURRENT_TIMESTAMP);
INSERT INTO `t_user_role`(`ref_id`, `user_id`, `role_id`, `gmt_create`, `gmt_modified`) VALUES (3, 3, 3, CURRENT_TIMESTAMP, CURRENT_TIMESTAMP);


-- 客户
INSERT INTO `db_yuth_tower`.`t_customer` (`customer_id`, `tenant_id`, `username`, `nickname`, `gender`, `level_score`, `level_name`, `password`, `phone`, `avatar`, `status`, `gmt_create`, `gmt_modified`) VALUES (1, 0, 'luojinhuan', '罗总', 1, 580, '白银会员', '', '15888888888', '', 1, '2024-05-15 10:42:28', '2024-05-15 10:42:28');
INSERT INTO `db_yuth_tower`.`t_customer` (`customer_id`, `tenant_id`, `username`, `nickname`, `gender`, `level_score`, `level_name`, `password`, `phone`, `avatar`, `status`, `gmt_create`, `gmt_modified`) VALUES (2, 0, 'zhaomin', '赵敏', 2, 1000, '白银会员', '', '15999999999', '', 1, '2024-05-15 10:42:28', '2024-05-15 10:42:28');
INSERT INTO `db_yuth_tower`.`t_customer` (`customer_id`, `tenant_id`, `username`, `nickname`, `gender`, `level_score`, `level_name`, `password`, `phone`, `avatar`, `status`, `gmt_create`, `gmt_modified`) VALUES (3, 0, 'liqin', '李沁', 2, 59, '白银会员', '', '16966666666', '', 0, '2024-05-15 10:42:28', '2024-05-15 10:42:28');


-- 客户等级
INSERT INTO `db_yuth_tower`.`t_customer_level` (`level_id`, `tenant_id`, `level_name`, `level_desc`, `min_score`, `status`, `gmt_create`, `gmt_modified`) VALUES (1, 0, '普通会员', '入门级会员', 0, 0, '2024-05-15 15:41:46', '2024-05-15 15:41:46');
INSERT INTO `db_yuth_tower`.`t_customer_level` (`level_id`, `tenant_id`, `level_name`, `level_desc`, `min_score`, `status`, `gmt_create`, `gmt_modified`) VALUES (2, 0, '白银会员', '白银会员', 100, 1, '2024-05-15 15:44:02', '2024-05-15 15:44:02');
INSERT INTO `db_yuth_tower`.`t_customer_level` (`level_id`, `tenant_id`, `level_name`, `level_desc`, `min_score`, `status`, `gmt_create`, `gmt_modified`) VALUES (3, 0, '黄金会员', '黄金会员', 500, 1, '2024-05-15 15:44:18', '2024-05-15 15:44:18');
INSERT INTO `db_yuth_tower`.`t_customer_level` (`level_id`, `tenant_id`, `level_name`, `level_desc`, `min_score`, `status`, `gmt_create`, `gmt_modified`) VALUES (4, 0, '铂金会员', '铂金会员', 1000, 1, '2024-05-15 15:44:36', '2024-05-15 15:44:36');
INSERT INTO `db_yuth_tower`.`t_customer_level` (`level_id`, `tenant_id`, `level_name`, `level_desc`, `min_score`, `status`, `gmt_create`, `gmt_modified`) VALUES (5, 0, '黑金会员', '', 20000, 1, '2024-05-15 16:37:04', '2024-05-15 16:37:04');


-- 品牌
INSERT INTO `db_yuth_tower`.`t_brand` (`brand_id`, `tenant_id`, `brand_name`, `initial`, `logo_url`, `seq`, `status`, `gmt_create`, `gmt_modified`) VALUES (1, 0, '小米', 'X', 'https://s2.loli.net/2024/05/15/ONW2dXEpZLTg84U.png', 0, 1, '2024-05-15 18:00:16', '2024-05-15 18:00:16');
INSERT INTO `db_yuth_tower`.`t_brand` (`brand_id`, `tenant_id`, `brand_name`, `initial`, `logo_url`, `seq`, `status`, `gmt_create`, `gmt_modified`) VALUES (2, 0, '华为', 'X', 'https://s2.loli.net/2024/05/15/ONW2dXEpZLTg84U.png', 0, 1, '2024-05-30 09:55:45', '2024-05-30 09:55:45');
INSERT INTO `db_yuth_tower`.`t_brand` (`brand_id`, `tenant_id`, `brand_name`, `initial`, `logo_url`, `seq`, `status`, `gmt_create`, `gmt_modified`) VALUES (3, 0, '惠普', 'H', 'https://s2.loli.net/2024/05/15/ONW2dXEpZLTg84U.png', 0, 1, '2024-05-30 09:56:22', '2024-05-30 09:56:22');
INSERT INTO `db_yuth_tower`.`t_brand` (`brand_id`, `tenant_id`, `brand_name`, `initial`, `logo_url`, `seq`, `status`, `gmt_create`, `gmt_modified`) VALUES (4, 0, '苹果', 'P', 'https://s2.loli.net/2024/05/15/ONW2dXEpZLTg84U.png', 0, 1, '2024-05-30 09:56:46', '2024-05-30 09:56:46');
INSERT INTO `db_yuth_tower`.`t_brand` (`brand_id`, `tenant_id`, `brand_name`, `initial`, `logo_url`, `seq`, `status`, `gmt_create`, `gmt_modified`) VALUES (5, 0, '戴尔', 'D', 'https://s2.loli.net/2024/05/15/ONW2dXEpZLTg84U.png', 0, 1, '2024-05-30 09:57:32', '2024-05-30 09:57:32');
INSERT INTO `db_yuth_tower`.`t_brand` (`brand_id`, `tenant_id`, `brand_name`, `initial`, `logo_url`, `seq`, `status`, `gmt_create`, `gmt_modified`) VALUES (6, 0, '宏碁', 'H', 'https://s2.loli.net/2024/05/15/ONW2dXEpZLTg84U.png', 0, 1, '2024-05-30 09:57:50', '2024-05-30 09:57:50');
INSERT INTO `db_yuth_tower`.`t_brand` (`brand_id`, `tenant_id`, `brand_name`, `initial`, `logo_url`, `seq`, `status`, `gmt_create`, `gmt_modified`) VALUES (7, 0, '华硕', 'H', 'https://s2.loli.net/2024/05/15/ONW2dXEpZLTg84U.png', 0, 1, '2024-05-30 09:57:59', '2024-05-30 09:57:59');
INSERT INTO `db_yuth_tower`.`t_brand` (`brand_id`, `tenant_id`, `brand_name`, `initial`, `logo_url`, `seq`, `status`, `gmt_create`, `gmt_modified`) VALUES (8, 0, '海尔', 'H', 'https://s2.loli.net/2024/05/15/ONW2dXEpZLTg84U.png', 0, 1, '2024-05-30 09:58:57', '2024-05-30 09:58:57');
INSERT INTO `db_yuth_tower`.`t_brand` (`brand_id`, `tenant_id`, `brand_name`, `initial`, `logo_url`, `seq`, `status`, `gmt_create`, `gmt_modified`) VALUES (9, 0, '美的', 'M', 'https://s2.loli.net/2024/05/15/ONW2dXEpZLTg84U.png', 0, 1, '2024-05-30 09:59:14', '2024-05-30 09:59:14');
INSERT INTO `db_yuth_tower`.`t_brand` (`brand_id`, `tenant_id`, `brand_name`, `initial`, `logo_url`, `seq`, `status`, `gmt_create`, `gmt_modified`) VALUES (10, 0, '格力', 'G', 'https://s2.loli.net/2024/05/15/ONW2dXEpZLTg84U.png', 0, 1, '2024-05-30 09:59:27', '2024-05-30 09:59:27');
INSERT INTO `db_yuth_tower`.`t_brand` (`brand_id`, `tenant_id`, `brand_name`, `initial`, `logo_url`, `seq`, `status`, `gmt_create`, `gmt_modified`) VALUES (11, 0, '奥克斯', 'A', 'https://s2.loli.net/2024/05/15/ONW2dXEpZLTg84U.png', 0, 1, '2024-05-30 09:59:46', '2024-05-30 09:59:46');
INSERT INTO `db_yuth_tower`.`t_brand` (`brand_id`, `tenant_id`, `brand_name`, `initial`, `logo_url`, `seq`, `status`, `gmt_create`, `gmt_modified`) VALUES (101, 0, '好利来', 'H', 'https://s2.loli.net/2024/05/15/ONW2dXEpZLTg84U.png', 0, 1, '2024-05-30 09:59:46', '2024-05-30 09:59:46');


-- 订单
INSERT INTO `db_yuth_tower`.`t_order_basis` (`order_id`, `tenant_id`, `order_source`, `order_type`, `order_status`, `pay_status`, `dispatch_status`, `return_status`, `memo`, `pay_type`, `order_amount`, `biz_time`, `gmt_create`, `gmt_modified`) VALUES (1, 0, 1, 1, 0, 0, 1, -1, '加辣', 4, 10.00, '2024-05-28 22:12:40', '2024-05-28 22:12:40', '2024-05-28 22:12:40');









