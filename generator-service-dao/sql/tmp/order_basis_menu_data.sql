
-- 菜单数据。订单基本信息
INSERT INTO `t_menu` (`menu_id`, `pid`, `pattern`, `code`, `menu_name`, `level`, `type`, `gmt_create`, `gmt_modified`) VALUES (9000, 0, '/admin/order/basis', 'OrderBasis', '订单基本信息管理', 1, 1, CURRENT_TIMESTAMP, CURRENT_TIMESTAMP);
INSERT INTO `t_menu` (`menu_id`, `pid`, `pattern`, `code`, `menu_name`, `level`, `type`, `gmt_create`, `gmt_modified`) VALUES (9100, 9000, '/admin/order/basis/list', 'OrderBasisList', '订单基本信息列表', 2, 1, CURRENT_TIMESTAMP, CURRENT_TIMESTAMP);
INSERT INTO `t_menu` (`menu_id`, `pid`, `pattern`, `code`, `menu_name`, `level`, `type`, `gmt_create`, `gmt_modified`) VALUES (9101, 9100, '/admin/order/basis/list/add', 'btn.OrderBasis.add', '添加', 3, 2, CURRENT_TIMESTAMP, CURRENT_TIMESTAMP);
INSERT INTO `t_menu` (`menu_id`, `pid`, `pattern`, `code`, `menu_name`, `level`, `type`, `gmt_create`, `gmt_modified`) VALUES (9102, 9100, '/admin/order/basis/list/update', 'btn.OrderBasis.update', '修改', 3, 2, CURRENT_TIMESTAMP, CURRENT_TIMESTAMP);
INSERT INTO `t_menu` (`menu_id`, `pid`, `pattern`, `code`, `menu_name`, `level`, `type`, `gmt_create`, `gmt_modified`) VALUES (9103, 9100, '/admin/order/basis/list/remove', 'btn.OrderBasis.remove', '删除', 3, 2, CURRENT_TIMESTAMP, CURRENT_TIMESTAMP);

-- 分配角色权限。订单基本信息
INSERT INTO `t_menu_role` (`ref_id`, `menu_id`, `role_id`, `gmt_create`, `gmt_modified`) VALUES (92, 9000, 1, CURRENT_TIMESTAMP, CURRENT_TIMESTAMP);
INSERT INTO `t_menu_role` (`ref_id`, `menu_id`, `role_id`, `gmt_create`, `gmt_modified`) VALUES (93, 9100, 1, CURRENT_TIMESTAMP, CURRENT_TIMESTAMP);
INSERT INTO `t_menu_role` (`ref_id`, `menu_id`, `role_id`, `gmt_create`, `gmt_modified`) VALUES (94, 9101, 1, CURRENT_TIMESTAMP, CURRENT_TIMESTAMP);
INSERT INTO `t_menu_role` (`ref_id`, `menu_id`, `role_id`, `gmt_create`, `gmt_modified`) VALUES (95, 9102, 1, CURRENT_TIMESTAMP, CURRENT_TIMESTAMP);
INSERT INTO `t_menu_role` (`ref_id`, `menu_id`, `role_id`, `gmt_create`, `gmt_modified`) VALUES (96, 9103, 1, CURRENT_TIMESTAMP, CURRENT_TIMESTAMP);


