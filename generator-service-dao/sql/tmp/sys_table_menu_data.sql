
-- 菜单数据。表信息
INSERT INTO `t_menu` (`menu_id`, `pid`, `pattern`, `code`, `menu_name`, `level`, `type`, `gmt_create`, `gmt_modified`) VALUES ($rootMenuId, 0, '/admin/sys/table', 'SysTable', '表信息管理', 1, 1, CURRENT_TIMESTAMP, CURRENT_TIMESTAMP);
INSERT INTO `t_menu` (`menu_id`, `pid`, `pattern`, `code`, `menu_name`, `level`, `type`, `gmt_create`, `gmt_modified`) VALUES (20100, $rootMenuId, '/admin/sys/table/list', 'SysTableList', '表信息列表', 2, 1, CURRENT_TIMESTAMP, CURRENT_TIMESTAMP);
INSERT INTO `t_menu` (`menu_id`, `pid`, `pattern`, `code`, `menu_name`, `level`, `type`, `gmt_create`, `gmt_modified`) VALUES (20101, 20100, '/admin/sys/table/list/add', 'btn.SysTable.add', '添加', 3, 2, CURRENT_TIMESTAMP, CURRENT_TIMESTAMP);
INSERT INTO `t_menu` (`menu_id`, `pid`, `pattern`, `code`, `menu_name`, `level`, `type`, `gmt_create`, `gmt_modified`) VALUES (20102, 20100, '/admin/sys/table/list/update', 'btn.SysTable.update', '修改', 3, 2, CURRENT_TIMESTAMP, CURRENT_TIMESTAMP);
INSERT INTO `t_menu` (`menu_id`, `pid`, `pattern`, `code`, `menu_name`, `level`, `type`, `gmt_create`, `gmt_modified`) VALUES (20103, 20100, '/admin/sys/table/list/remove', 'btn.SysTable.remove', '删除', 3, 2, CURRENT_TIMESTAMP, CURRENT_TIMESTAMP);

-- 分配角色权限。表信息
INSERT INTO `t_menu_role` (`ref_id`, `menu_id`, `role_id`, `gmt_create`, `gmt_modified`) VALUES (100, $rootMenuId, 1, CURRENT_TIMESTAMP, CURRENT_TIMESTAMP);
INSERT INTO `t_menu_role` (`ref_id`, `menu_id`, `role_id`, `gmt_create`, `gmt_modified`) VALUES (101, 20100, 1, CURRENT_TIMESTAMP, CURRENT_TIMESTAMP);
INSERT INTO `t_menu_role` (`ref_id`, `menu_id`, `role_id`, `gmt_create`, `gmt_modified`) VALUES (102, 20101, 1, CURRENT_TIMESTAMP, CURRENT_TIMESTAMP);
INSERT INTO `t_menu_role` (`ref_id`, `menu_id`, `role_id`, `gmt_create`, `gmt_modified`) VALUES (103, 20102, 1, CURRENT_TIMESTAMP, CURRENT_TIMESTAMP);
INSERT INTO `t_menu_role` (`ref_id`, `menu_id`, `role_id`, `gmt_create`, `gmt_modified`) VALUES (104, 20103, 1, CURRENT_TIMESTAMP, CURRENT_TIMESTAMP);


