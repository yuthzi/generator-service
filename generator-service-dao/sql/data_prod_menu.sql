

USE db_yuth_tower;
-- 菜单
INSERT INTO `t_menu` (`menu_id`, `pid`, `pattern`, `code`, `menu_name`, `level`, `type`, `gmt_create`, `gmt_modified`) VALUES (1000, 0, '/admin/acl', 'Acl', '权限管理', 1, 1, CURRENT_TIMESTAMP, CURRENT_TIMESTAMP);
INSERT INTO `t_menu` (`menu_id`, `pid`, `pattern`, `code`, `menu_name`, `level`, `type`, `gmt_create`, `gmt_modified`) VALUES (1100, 1000, '/admin/acl/user', 'User', '用户管理', 2, 1, CURRENT_TIMESTAMP, CURRENT_TIMESTAMP);
INSERT INTO `t_menu` (`menu_id`, `pid`, `pattern`, `code`, `menu_name`, `level`, `type`, `gmt_create`, `gmt_modified`) VALUES (1101, 1100, '/admin/acl/user/assgin', 'btn.User.assgin', '分配角色', 3, 2, CURRENT_TIMESTAMP, CURRENT_TIMESTAMP);
INSERT INTO `t_menu` (`menu_id`, `pid`, `pattern`, `code`, `menu_name`, `level`, `type`, `gmt_create`, `gmt_modified`) VALUES (1102, 1100, '/admin/acl/user/add', 'btn.User.add', '添加', 3, 2, CURRENT_TIMESTAMP, CURRENT_TIMESTAMP);
INSERT INTO `t_menu` (`menu_id`, `pid`, `pattern`, `code`, `menu_name`, `level`, `type`, `gmt_create`, `gmt_modified`) VALUES (1103, 1100, '/admin/acl/user/update', 'btn.User.update', '修改', 3, 2, CURRENT_TIMESTAMP, CURRENT_TIMESTAMP);
INSERT INTO `t_menu` (`menu_id`, `pid`, `pattern`, `code`, `menu_name`, `level`, `type`, `gmt_create`, `gmt_modified`) VALUES (1104, 1100, '/admin/acl/user/remove', 'btn.User.remove', '删除', 3, 2, CURRENT_TIMESTAMP, CURRENT_TIMESTAMP);
INSERT INTO `t_menu` (`menu_id`, `pid`, `pattern`, `code`, `menu_name`, `level`, `type`, `gmt_create`, `gmt_modified`) VALUES (1200, 1000, '/admin/acl/role', 'Role', '角色管理', 2, 1, CURRENT_TIMESTAMP, CURRENT_TIMESTAMP);
INSERT INTO `t_menu` (`menu_id`, `pid`, `pattern`, `code`, `menu_name`, `level`, `type`, `gmt_create`, `gmt_modified`) VALUES (1201, 1200, '/admin/acl/role/assgin', 'btn.Role.assgin', '分配权限', 3, 2, CURRENT_TIMESTAMP, CURRENT_TIMESTAMP);
INSERT INTO `t_menu` (`menu_id`, `pid`, `pattern`, `code`, `menu_name`, `level`, `type`, `gmt_create`, `gmt_modified`) VALUES (1202, 1200, '/admin/acl/role/add', 'btn.Role.add', '添加', 3, 2, CURRENT_TIMESTAMP, CURRENT_TIMESTAMP);
INSERT INTO `t_menu` (`menu_id`, `pid`, `pattern`, `code`, `menu_name`, `level`, `type`, `gmt_create`, `gmt_modified`) VALUES (1203, 1200, '/admin/acl/role/update', 'btn.Role.update', '修改', 3, 2, CURRENT_TIMESTAMP, CURRENT_TIMESTAMP);
INSERT INTO `t_menu` (`menu_id`, `pid`, `pattern`, `code`, `menu_name`, `level`, `type`, `gmt_create`, `gmt_modified`) VALUES (1204, 1200, '/admin/acl/role/remove', 'btn.Role.remove', '删除', 3, 2, CURRENT_TIMESTAMP, CURRENT_TIMESTAMP);
INSERT INTO `t_menu` (`menu_id`, `pid`, `pattern`, `code`, `menu_name`, `level`, `type`, `gmt_create`, `gmt_modified`) VALUES (1300, 1000, '/admin/acl/permission', 'Permission', '菜单管理', 2, 1, CURRENT_TIMESTAMP, CURRENT_TIMESTAMP);
INSERT INTO `t_menu` (`menu_id`, `pid`, `pattern`, `code`, `menu_name`, `level`, `type`, `gmt_create`, `gmt_modified`) VALUES (1301, 1300, '/admin/acl/permission/add', 'btn.Permission.add', '添加', 3, 2, CURRENT_TIMESTAMP, CURRENT_TIMESTAMP);
INSERT INTO `t_menu` (`menu_id`, `pid`, `pattern`, `code`, `menu_name`, `level`, `type`, `gmt_create`, `gmt_modified`) VALUES (1302, 1300, '/admin/acl/permission/update', 'btn.Permission.update', '修改', 3, 2, CURRENT_TIMESTAMP, CURRENT_TIMESTAMP);
INSERT INTO `t_menu` (`menu_id`, `pid`, `pattern`, `code`, `menu_name`, `level`, `type`, `gmt_create`, `gmt_modified`) VALUES (1303, 1300, '/admin/acl/permission/remove', 'btn.Permission.remove', '删除', 3, 2, CURRENT_TIMESTAMP, CURRENT_TIMESTAMP);
INSERT INTO `t_menu` (`menu_id`, `pid`, `pattern`, `code`, `menu_name`, `level`, `type`, `gmt_create`, `gmt_modified`) VALUES (2000, 0, '/admin/dev', 'Dev', '组件demo', 1, 1, CURRENT_TIMESTAMP, CURRENT_TIMESTAMP);
INSERT INTO `t_menu` (`menu_id`, `pid`, `pattern`, `code`, `menu_name`, `level`, `type`, `gmt_create`, `gmt_modified`) VALUES (2100, 2000, '/admin/dev/shareData', 'DevShareData', '父子组件共享数据', 2, 1, CURRENT_TIMESTAMP, CURRENT_TIMESTAMP);
INSERT INTO `t_menu` (`menu_id`, `pid`, `pattern`, `code`, `menu_name`, `level`, `type`, `gmt_create`, `gmt_modified`) VALUES (2101, 2100, '/admin/dev/shareData/add', 'btn.DevShareData.add', '添加', 3, 2, CURRENT_TIMESTAMP, CURRENT_TIMESTAMP);
INSERT INTO `t_menu` (`menu_id`, `pid`, `pattern`, `code`, `menu_name`, `level`, `type`, `gmt_create`, `gmt_modified`) VALUES (2102, 2100, '/admin/dev/shareData/update', 'btn.DevShareData.update', '修改', 3, 2, CURRENT_TIMESTAMP, CURRENT_TIMESTAMP);
INSERT INTO `t_menu` (`menu_id`, `pid`, `pattern`, `code`, `menu_name`, `level`, `type`, `gmt_create`, `gmt_modified`) VALUES (2103, 2100, '/admin/dev/shareData/remove', 'btn.DevShareData.remove', '删除', 3, 2, CURRENT_TIMESTAMP, CURRENT_TIMESTAMP);
INSERT INTO `t_menu` (`menu_id`, `pid`, `pattern`, `code`, `menu_name`, `level`, `type`, `gmt_create`, `gmt_modified`) VALUES (2200, 2000, '/admin/dev/cascader', 'DevCascader', '级联选择器', 2, 1, CURRENT_TIMESTAMP, CURRENT_TIMESTAMP);
INSERT INTO `t_menu` (`menu_id`, `pid`, `pattern`, `code`, `menu_name`, `level`, `type`, `gmt_create`, `gmt_modified`) VALUES (2201, 2200, '/admin/dev/cascader/add', 'btn.DevCascader.add', '添加', 3, 2, CURRENT_TIMESTAMP, CURRENT_TIMESTAMP);
INSERT INTO `t_menu` (`menu_id`, `pid`, `pattern`, `code`, `menu_name`, `level`, `type`, `gmt_create`, `gmt_modified`) VALUES (2202, 2200, '/admin/dev/cascader/update', 'btn.DevCascader.update', '修改', 3, 2, CURRENT_TIMESTAMP, CURRENT_TIMESTAMP);
INSERT INTO `t_menu` (`menu_id`, `pid`, `pattern`, `code`, `menu_name`, `level`, `type`, `gmt_create`, `gmt_modified`) VALUES (2203, 2200, '/admin/dev/cascader/remove', 'btn.DevCascader.remove', '删除', 3, 2, CURRENT_TIMESTAMP, CURRENT_TIMESTAMP);
INSERT INTO `t_menu` (`menu_id`, `pid`, `pattern`, `code`, `menu_name`, `level`, `type`, `gmt_create`, `gmt_modified`) VALUES (5000, 0, '/admin/customer', 'CustomerDir', '客户管理', 1, 1, CURRENT_TIMESTAMP, CURRENT_TIMESTAMP);
INSERT INTO `t_menu` (`menu_id`, `pid`, `pattern`, `code`, `menu_name`, `level`, `type`, `gmt_create`, `gmt_modified`) VALUES (5100, 5000, '/admin/customer/list', 'Customer', '客户列表', 2, 1, CURRENT_TIMESTAMP, CURRENT_TIMESTAMP);
INSERT INTO `t_menu` (`menu_id`, `pid`, `pattern`, `code`, `menu_name`, `level`, `type`, `gmt_create`, `gmt_modified`) VALUES (5101, 5100, '/admin/customer/list/add', 'btn.Customer.add', '添加', 3, 2, CURRENT_TIMESTAMP, CURRENT_TIMESTAMP);
INSERT INTO `t_menu` (`menu_id`, `pid`, `pattern`, `code`, `menu_name`, `level`, `type`, `gmt_create`, `gmt_modified`) VALUES (5102, 5100, '/admin/customer/list/update', 'btn.Customer.update', '修改', 3, 2, CURRENT_TIMESTAMP, CURRENT_TIMESTAMP);
INSERT INTO `t_menu` (`menu_id`, `pid`, `pattern`, `code`, `menu_name`, `level`, `type`, `gmt_create`, `gmt_modified`) VALUES (5103, 5100, '/admin/customer/list/remove', 'btn.Customer.remove', '删除', 3, 2, CURRENT_TIMESTAMP, CURRENT_TIMESTAMP);
INSERT INTO `t_menu` (`menu_id`, `pid`, `pattern`, `code`, `menu_name`, `level`, `type`, `gmt_create`, `gmt_modified`) VALUES (5200, 5000, '/admin/customer/level', 'CustomerLevel', '客户等级', 2, 1, CURRENT_TIMESTAMP, CURRENT_TIMESTAMP);
INSERT INTO `t_menu` (`menu_id`, `pid`, `pattern`, `code`, `menu_name`, `level`, `type`, `gmt_create`, `gmt_modified`) VALUES (5201, 5200, '/admin/customer/level/add', 'btn.CustomerLevel.add', '添加', 3, 2, CURRENT_TIMESTAMP, CURRENT_TIMESTAMP);
INSERT INTO `t_menu` (`menu_id`, `pid`, `pattern`, `code`, `menu_name`, `level`, `type`, `gmt_create`, `gmt_modified`) VALUES (5202, 5200, '/admin/customer/level/update', 'btn.CustomerLevel.update', '修改', 3, 2, CURRENT_TIMESTAMP, CURRENT_TIMESTAMP);
INSERT INTO `t_menu` (`menu_id`, `pid`, `pattern`, `code`, `menu_name`, `level`, `type`, `gmt_create`, `gmt_modified`) VALUES (5203, 5200, '/admin/customer/level/remove', 'btn.CustomerLevel.remove', '删除', 3, 2, CURRENT_TIMESTAMP, CURRENT_TIMESTAMP);
INSERT INTO `t_menu` (`menu_id`, `pid`, `pattern`, `code`, `menu_name`, `level`, `type`, `gmt_create`, `gmt_modified`) VALUES (6000, 0, '/admin/goods', 'Goods', '商品管理', 1, 1, CURRENT_TIMESTAMP, CURRENT_TIMESTAMP);
INSERT INTO `t_menu` (`menu_id`, `pid`, `pattern`, `code`, `menu_name`, `level`, `type`, `gmt_create`, `gmt_modified`) VALUES (6100, 6000, '/admin/goods/category', 'Category', '分类列表', 2, 1, CURRENT_TIMESTAMP, CURRENT_TIMESTAMP);
INSERT INTO `t_menu` (`menu_id`, `pid`, `pattern`, `code`, `menu_name`, `level`, `type`, `gmt_create`, `gmt_modified`) VALUES (6101, 6100, '/admin/goods/category/add', 'btn.Category.add', '添加', 3, 2, CURRENT_TIMESTAMP, CURRENT_TIMESTAMP);
INSERT INTO `t_menu` (`menu_id`, `pid`, `pattern`, `code`, `menu_name`, `level`, `type`, `gmt_create`, `gmt_modified`) VALUES (6102, 6100, '/admin/goods/category/update', 'btn.Category.update', '修改', 3, 2, CURRENT_TIMESTAMP, CURRENT_TIMESTAMP);
INSERT INTO `t_menu` (`menu_id`, `pid`, `pattern`, `code`, `menu_name`, `level`, `type`, `gmt_create`, `gmt_modified`) VALUES (6103, 6100, '/admin/goods/category/remove', 'btn.Category.remove', '删除', 3, 2, CURRENT_TIMESTAMP, CURRENT_TIMESTAMP);
INSERT INTO `t_menu` (`menu_id`, `pid`, `pattern`, `code`, `menu_name`, `level`, `type`, `gmt_create`, `gmt_modified`) VALUES (6200, 6000, '/admin/goods/brand', 'Brand', '品牌列表', 2, 1, CURRENT_TIMESTAMP, CURRENT_TIMESTAMP);
INSERT INTO `t_menu` (`menu_id`, `pid`, `pattern`, `code`, `menu_name`, `level`, `type`, `gmt_create`, `gmt_modified`) VALUES (6201, 6200, '/admin/goods/brand/add', 'btn.Brand.add', '添加', 3, 2, CURRENT_TIMESTAMP, CURRENT_TIMESTAMP);
INSERT INTO `t_menu` (`menu_id`, `pid`, `pattern`, `code`, `menu_name`, `level`, `type`, `gmt_create`, `gmt_modified`) VALUES (6202, 6200, '/admin/goods/brand/update', 'btn.Brand.update', '修改', 3, 2, CURRENT_TIMESTAMP, CURRENT_TIMESTAMP);
INSERT INTO `t_menu` (`menu_id`, `pid`, `pattern`, `code`, `menu_name`, `level`, `type`, `gmt_create`, `gmt_modified`) VALUES (6203, 6200, '/admin/goods/brand/remove', 'btn.Brand.remove', '删除', 3, 2, CURRENT_TIMESTAMP, CURRENT_TIMESTAMP);
INSERT INTO `t_menu` (`menu_id`, `pid`, `pattern`, `code`, `menu_name`, `level`, `type`, `gmt_create`, `gmt_modified`) VALUES (6300, 6000, '/admin/goods/sku/index', 'GoodsSku', 'SKU列表', 2, 1, CURRENT_TIMESTAMP, CURRENT_TIMESTAMP);
INSERT INTO `t_menu` (`menu_id`, `pid`, `pattern`, `code`, `menu_name`, `level`, `type`, `gmt_create`, `gmt_modified`) VALUES (6301, 6300, '/admin/goods/sku/index/add', 'btn.GoodsSku.add', '添加', 3, 2, CURRENT_TIMESTAMP, CURRENT_TIMESTAMP);
INSERT INTO `t_menu` (`menu_id`, `pid`, `pattern`, `code`, `menu_name`, `level`, `type`, `gmt_create`, `gmt_modified`) VALUES (6302, 6300, '/admin/goods/sku/index/update', 'btn.GoodsSku.update', '修改', 3, 2, CURRENT_TIMESTAMP, CURRENT_TIMESTAMP);
INSERT INTO `t_menu` (`menu_id`, `pid`, `pattern`, `code`, `menu_name`, `level`, `type`, `gmt_create`, `gmt_modified`) VALUES (6303, 6300, '/admin/goods/sku/index/remove', 'btn.GoodsSku.remove', '删除', 3, 2, CURRENT_TIMESTAMP, CURRENT_TIMESTAMP);
INSERT INTO `t_menu` (`menu_id`, `pid`, `pattern`, `code`, `menu_name`, `level`, `type`, `gmt_create`, `gmt_modified`) VALUES (6400, 6000, '/admin/goods/spec/index', 'GoodsSpec', '规格列表', 2, 1, CURRENT_TIMESTAMP, CURRENT_TIMESTAMP);
INSERT INTO `t_menu` (`menu_id`, `pid`, `pattern`, `code`, `menu_name`, `level`, `type`, `gmt_create`, `gmt_modified`) VALUES (6401, 6400, '/admin/goods/spec/index/add', 'btn.GoodsSpec.add', '添加', 3, 2, CURRENT_TIMESTAMP, CURRENT_TIMESTAMP);
INSERT INTO `t_menu` (`menu_id`, `pid`, `pattern`, `code`, `menu_name`, `level`, `type`, `gmt_create`, `gmt_modified`) VALUES (6402, 6400, '/admin/goods/spec/index/update', 'btn.GoodsSpec.update', '修改', 3, 2, CURRENT_TIMESTAMP, CURRENT_TIMESTAMP);
INSERT INTO `t_menu` (`menu_id`, `pid`, `pattern`, `code`, `menu_name`, `level`, `type`, `gmt_create`, `gmt_modified`) VALUES (6403, 6400, '/admin/goods/spec/index/remove', 'btn.GoodsSpec.remove', '删除', 3, 2, CURRENT_TIMESTAMP, CURRENT_TIMESTAMP);
INSERT INTO `t_menu` (`menu_id`, `pid`, `pattern`, `code`, `menu_name`, `level`, `type`, `gmt_create`, `gmt_modified`) VALUES (6500, 6000, '/admin/goods/spu/index', 'GoodsSpu', 'SPU列表', 2, 1, CURRENT_TIMESTAMP, CURRENT_TIMESTAMP);
INSERT INTO `t_menu` (`menu_id`, `pid`, `pattern`, `code`, `menu_name`, `level`, `type`, `gmt_create`, `gmt_modified`) VALUES (6501, 6500, '/admin/goods/spu/index/add', 'btn.GoodsSpu.add', '添加', 3, 2, CURRENT_TIMESTAMP, CURRENT_TIMESTAMP);
INSERT INTO `t_menu` (`menu_id`, `pid`, `pattern`, `code`, `menu_name`, `level`, `type`, `gmt_create`, `gmt_modified`) VALUES (6502, 6500, '/admin/goods/spu/index/update', 'btn.GoodsSpu.update', '修改', 3, 2, CURRENT_TIMESTAMP, CURRENT_TIMESTAMP);
INSERT INTO `t_menu` (`menu_id`, `pid`, `pattern`, `code`, `menu_name`, `level`, `type`, `gmt_create`, `gmt_modified`) VALUES (6503, 6500, '/admin/goods/spu/index/remove', 'btn.GoodsSpu.remove', '删除', 3, 2, CURRENT_TIMESTAMP, CURRENT_TIMESTAMP);
INSERT INTO `t_menu` (`menu_id`, `pid`, `pattern`, `code`, `menu_name`, `level`, `type`, `gmt_create`, `gmt_modified`) VALUES (7000, 0, '/admin/order', 'Order', '订单管理', 1, 1, CURRENT_TIMESTAMP, CURRENT_TIMESTAMP);
INSERT INTO `t_menu` (`menu_id`, `pid`, `pattern`, `code`, `menu_name`, `level`, `type`, `gmt_create`, `gmt_modified`) VALUES (7100, 7000, '/admin/order/list', 'OrderBasis', '订单列表', 2, 1, CURRENT_TIMESTAMP, CURRENT_TIMESTAMP);
INSERT INTO `t_menu` (`menu_id`, `pid`, `pattern`, `code`, `menu_name`, `level`, `type`, `gmt_create`, `gmt_modified`) VALUES (7101, 7100, '/admin/order/list/add', 'btn.OrderBasis.add', '添加', 3, 2, CURRENT_TIMESTAMP, CURRENT_TIMESTAMP);
INSERT INTO `t_menu` (`menu_id`, `pid`, `pattern`, `code`, `menu_name`, `level`, `type`, `gmt_create`, `gmt_modified`) VALUES (7102, 7100, '/admin/order/list/update', 'btn.OrderBasis.update', '修改', 3, 2, CURRENT_TIMESTAMP, CURRENT_TIMESTAMP);
INSERT INTO `t_menu` (`menu_id`, `pid`, `pattern`, `code`, `menu_name`, `level`, `type`, `gmt_create`, `gmt_modified`) VALUES (7103, 7100, '/admin/order/list/remove', 'btn.OrderBasis.remove', '删除', 3, 2, CURRENT_TIMESTAMP, CURRENT_TIMESTAMP);
INSERT INTO `t_menu` (`menu_id`, `pid`, `pattern`, `code`, `menu_name`, `level`, `type`, `gmt_create`, `gmt_modified`) VALUES (8000, 0, '/admin/report', 'Report', '报表管理', 1, 1, CURRENT_TIMESTAMP, CURRENT_TIMESTAMP);
INSERT INTO `t_menu` (`menu_id`, `pid`, `pattern`, `code`, `menu_name`, `level`, `type`, `gmt_create`, `gmt_modified`) VALUES (8100, 8000, '/admin/report/order/statList', 'OrderStatList', '订单统计', 2, 1, CURRENT_TIMESTAMP, CURRENT_TIMESTAMP);
INSERT INTO `t_menu` (`menu_id`, `pid`, `pattern`, `code`, `menu_name`, `level`, `type`, `gmt_create`, `gmt_modified`) VALUES (8101, 8100, '/admin/report/order/statList/add', 'btn.OrderStatList.add', '添加', 3, 2, CURRENT_TIMESTAMP, CURRENT_TIMESTAMP);
INSERT INTO `t_menu` (`menu_id`, `pid`, `pattern`, `code`, `menu_name`, `level`, `type`, `gmt_create`, `gmt_modified`) VALUES (8102, 8100, '/admin/report/order/statList/update', 'btn.OrderStatList.update', '修改', 3, 2, CURRENT_TIMESTAMP, CURRENT_TIMESTAMP);
INSERT INTO `t_menu` (`menu_id`, `pid`, `pattern`, `code`, `menu_name`, `level`, `type`, `gmt_create`, `gmt_modified`) VALUES (8103, 8100, '/admin/report/order/statList/remove', 'btn.OrderStatList.remove', '删除', 3, 2, CURRENT_TIMESTAMP, CURRENT_TIMESTAMP);
INSERT INTO `t_menu` (`menu_id`, `pid`, `pattern`, `code`, `menu_name`, `level`, `type`, `gmt_create`, `gmt_modified`) VALUES (10000, 0, '/admin/log', 'Log', '日志管理', 1, 1, CURRENT_TIMESTAMP, CURRENT_TIMESTAMP);
INSERT INTO `t_menu` (`menu_id`, `pid`, `pattern`, `code`, `menu_name`, `level`, `type`, `gmt_create`, `gmt_modified`) VALUES (10100, 10000, '/admin/log/loginLog', 'LoginLog', '登录日志', 2, 1, CURRENT_TIMESTAMP, CURRENT_TIMESTAMP);
INSERT INTO `t_menu` (`menu_id`, `pid`, `pattern`, `code`, `menu_name`, `level`, `type`, `gmt_create`, `gmt_modified`) VALUES (10101, 10100, '/admin/log/loginLog/add', 'btn.LoginLog.add', '添加', 3, 2, CURRENT_TIMESTAMP, CURRENT_TIMESTAMP);
INSERT INTO `t_menu` (`menu_id`, `pid`, `pattern`, `code`, `menu_name`, `level`, `type`, `gmt_create`, `gmt_modified`) VALUES (10102, 10100, '/admin/log/loginLog/update', 'btn.LoginLog.update', '修改', 3, 2, CURRENT_TIMESTAMP, CURRENT_TIMESTAMP);
INSERT INTO `t_menu` (`menu_id`, `pid`, `pattern`, `code`, `menu_name`, `level`, `type`, `gmt_create`, `gmt_modified`) VALUES (10103, 10100, '/admin/log/loginLog/remove', 'btn.LoginLog.remove', '删除', 3, 2, CURRENT_TIMESTAMP, CURRENT_TIMESTAMP);


-- 菜单角色
INSERT INTO `t_menu_role` (`ref_id`, `menu_id`, `role_id`, `gmt_create`, `gmt_modified`) VALUES (1, 1100, 1, CURRENT_TIMESTAMP, CURRENT_TIMESTAMP);
INSERT INTO `t_menu_role` (`ref_id`, `menu_id`, `role_id`, `gmt_create`, `gmt_modified`) VALUES (2, 1101, 1, CURRENT_TIMESTAMP, CURRENT_TIMESTAMP);
INSERT INTO `t_menu_role` (`ref_id`, `menu_id`, `role_id`, `gmt_create`, `gmt_modified`) VALUES (3, 1102, 1, CURRENT_TIMESTAMP, CURRENT_TIMESTAMP);
INSERT INTO `t_menu_role` (`ref_id`, `menu_id`, `role_id`, `gmt_create`, `gmt_modified`) VALUES (4, 1103, 1, CURRENT_TIMESTAMP, CURRENT_TIMESTAMP);
INSERT INTO `t_menu_role` (`ref_id`, `menu_id`, `role_id`, `gmt_create`, `gmt_modified`) VALUES (5, 1104, 1, CURRENT_TIMESTAMP, CURRENT_TIMESTAMP);
INSERT INTO `t_menu_role` (`ref_id`, `menu_id`, `role_id`, `gmt_create`, `gmt_modified`) VALUES (6, 1200, 1, CURRENT_TIMESTAMP, CURRENT_TIMESTAMP);
INSERT INTO `t_menu_role` (`ref_id`, `menu_id`, `role_id`, `gmt_create`, `gmt_modified`) VALUES (7, 1201, 1, CURRENT_TIMESTAMP, CURRENT_TIMESTAMP);
INSERT INTO `t_menu_role` (`ref_id`, `menu_id`, `role_id`, `gmt_create`, `gmt_modified`) VALUES (8, 1202, 1, CURRENT_TIMESTAMP, CURRENT_TIMESTAMP);
INSERT INTO `t_menu_role` (`ref_id`, `menu_id`, `role_id`, `gmt_create`, `gmt_modified`) VALUES (9, 1203, 1, CURRENT_TIMESTAMP, CURRENT_TIMESTAMP);
INSERT INTO `t_menu_role` (`ref_id`, `menu_id`, `role_id`, `gmt_create`, `gmt_modified`) VALUES (10, 1204, 1, CURRENT_TIMESTAMP, CURRENT_TIMESTAMP);
INSERT INTO `t_menu_role` (`ref_id`, `menu_id`, `role_id`, `gmt_create`, `gmt_modified`) VALUES (11, 1300, 1, CURRENT_TIMESTAMP, CURRENT_TIMESTAMP);
INSERT INTO `t_menu_role` (`ref_id`, `menu_id`, `role_id`, `gmt_create`, `gmt_modified`) VALUES (12, 1301, 1, CURRENT_TIMESTAMP, CURRENT_TIMESTAMP);
INSERT INTO `t_menu_role` (`ref_id`, `menu_id`, `role_id`, `gmt_create`, `gmt_modified`) VALUES (13, 1302, 1, CURRENT_TIMESTAMP, CURRENT_TIMESTAMP);
INSERT INTO `t_menu_role` (`ref_id`, `menu_id`, `role_id`, `gmt_create`, `gmt_modified`) VALUES (14, 1303, 1, CURRENT_TIMESTAMP, CURRENT_TIMESTAMP);
INSERT INTO `t_menu_role` (`ref_id`, `menu_id`, `role_id`, `gmt_create`, `gmt_modified`) VALUES (15, 1000, 1, CURRENT_TIMESTAMP, CURRENT_TIMESTAMP);
INSERT INTO `t_menu_role` (`ref_id`, `menu_id`, `role_id`, `gmt_create`, `gmt_modified`) VALUES (16, 2100, 1, CURRENT_TIMESTAMP, CURRENT_TIMESTAMP);
INSERT INTO `t_menu_role` (`ref_id`, `menu_id`, `role_id`, `gmt_create`, `gmt_modified`) VALUES (17, 2101, 1, CURRENT_TIMESTAMP, CURRENT_TIMESTAMP);
INSERT INTO `t_menu_role` (`ref_id`, `menu_id`, `role_id`, `gmt_create`, `gmt_modified`) VALUES (18, 2102, 1, CURRENT_TIMESTAMP, CURRENT_TIMESTAMP);
INSERT INTO `t_menu_role` (`ref_id`, `menu_id`, `role_id`, `gmt_create`, `gmt_modified`) VALUES (19, 2103, 1, CURRENT_TIMESTAMP, CURRENT_TIMESTAMP);
INSERT INTO `t_menu_role` (`ref_id`, `menu_id`, `role_id`, `gmt_create`, `gmt_modified`) VALUES (20, 2200, 1, CURRENT_TIMESTAMP, CURRENT_TIMESTAMP);
INSERT INTO `t_menu_role` (`ref_id`, `menu_id`, `role_id`, `gmt_create`, `gmt_modified`) VALUES (21, 2201, 1, CURRENT_TIMESTAMP, CURRENT_TIMESTAMP);
INSERT INTO `t_menu_role` (`ref_id`, `menu_id`, `role_id`, `gmt_create`, `gmt_modified`) VALUES (22, 2202, 1, CURRENT_TIMESTAMP, CURRENT_TIMESTAMP);
INSERT INTO `t_menu_role` (`ref_id`, `menu_id`, `role_id`, `gmt_create`, `gmt_modified`) VALUES (23, 2203, 1, CURRENT_TIMESTAMP, CURRENT_TIMESTAMP);
INSERT INTO `t_menu_role` (`ref_id`, `menu_id`, `role_id`, `gmt_create`, `gmt_modified`) VALUES (25, 3100, 1, CURRENT_TIMESTAMP, CURRENT_TIMESTAMP);
INSERT INTO `t_menu_role` (`ref_id`, `menu_id`, `role_id`, `gmt_create`, `gmt_modified`) VALUES (26, 3101, 1, CURRENT_TIMESTAMP, CURRENT_TIMESTAMP);
INSERT INTO `t_menu_role` (`ref_id`, `menu_id`, `role_id`, `gmt_create`, `gmt_modified`) VALUES (27, 3102, 1, CURRENT_TIMESTAMP, CURRENT_TIMESTAMP);
INSERT INTO `t_menu_role` (`ref_id`, `menu_id`, `role_id`, `gmt_create`, `gmt_modified`) VALUES (28, 3103, 1, CURRENT_TIMESTAMP, CURRENT_TIMESTAMP);
INSERT INTO `t_menu_role` (`ref_id`, `menu_id`, `role_id`, `gmt_create`, `gmt_modified`) VALUES (29, 3200, 1, CURRENT_TIMESTAMP, CURRENT_TIMESTAMP);
INSERT INTO `t_menu_role` (`ref_id`, `menu_id`, `role_id`, `gmt_create`, `gmt_modified`) VALUES (30, 3201, 1, CURRENT_TIMESTAMP, CURRENT_TIMESTAMP);
INSERT INTO `t_menu_role` (`ref_id`, `menu_id`, `role_id`, `gmt_create`, `gmt_modified`) VALUES (31, 3202, 1, CURRENT_TIMESTAMP, CURRENT_TIMESTAMP);
INSERT INTO `t_menu_role` (`ref_id`, `menu_id`, `role_id`, `gmt_create`, `gmt_modified`) VALUES (32, 3203, 1, CURRENT_TIMESTAMP, CURRENT_TIMESTAMP);
INSERT INTO `t_menu_role` (`ref_id`, `menu_id`, `role_id`, `gmt_create`, `gmt_modified`) VALUES (33, 3300, 1, CURRENT_TIMESTAMP, CURRENT_TIMESTAMP);
INSERT INTO `t_menu_role` (`ref_id`, `menu_id`, `role_id`, `gmt_create`, `gmt_modified`) VALUES (34, 3301, 1, CURRENT_TIMESTAMP, CURRENT_TIMESTAMP);
INSERT INTO `t_menu_role` (`ref_id`, `menu_id`, `role_id`, `gmt_create`, `gmt_modified`) VALUES (35, 3302, 1, CURRENT_TIMESTAMP, CURRENT_TIMESTAMP);
INSERT INTO `t_menu_role` (`ref_id`, `menu_id`, `role_id`, `gmt_create`, `gmt_modified`) VALUES (36, 3303, 1, CURRENT_TIMESTAMP, CURRENT_TIMESTAMP);
INSERT INTO `t_menu_role` (`ref_id`, `menu_id`, `role_id`, `gmt_create`, `gmt_modified`) VALUES (37, 3000, 1, CURRENT_TIMESTAMP, CURRENT_TIMESTAMP);
INSERT INTO `t_menu_role` (`ref_id`, `menu_id`, `role_id`, `gmt_create`, `gmt_modified`) VALUES (38, 4100, 1, CURRENT_TIMESTAMP, CURRENT_TIMESTAMP);
INSERT INTO `t_menu_role` (`ref_id`, `menu_id`, `role_id`, `gmt_create`, `gmt_modified`) VALUES (39, 4101, 1, CURRENT_TIMESTAMP, CURRENT_TIMESTAMP);
INSERT INTO `t_menu_role` (`ref_id`, `menu_id`, `role_id`, `gmt_create`, `gmt_modified`) VALUES (40, 4102, 1, CURRENT_TIMESTAMP, CURRENT_TIMESTAMP);
INSERT INTO `t_menu_role` (`ref_id`, `menu_id`, `role_id`, `gmt_create`, `gmt_modified`) VALUES (41, 4103, 1, CURRENT_TIMESTAMP, CURRENT_TIMESTAMP);
INSERT INTO `t_menu_role` (`ref_id`, `menu_id`, `role_id`, `gmt_create`, `gmt_modified`) VALUES (42, 4200, 1, CURRENT_TIMESTAMP, CURRENT_TIMESTAMP);
INSERT INTO `t_menu_role` (`ref_id`, `menu_id`, `role_id`, `gmt_create`, `gmt_modified`) VALUES (43, 4201, 1, CURRENT_TIMESTAMP, CURRENT_TIMESTAMP);
INSERT INTO `t_menu_role` (`ref_id`, `menu_id`, `role_id`, `gmt_create`, `gmt_modified`) VALUES (44, 4202, 1, CURRENT_TIMESTAMP, CURRENT_TIMESTAMP);
INSERT INTO `t_menu_role` (`ref_id`, `menu_id`, `role_id`, `gmt_create`, `gmt_modified`) VALUES (45, 4203, 1, CURRENT_TIMESTAMP, CURRENT_TIMESTAMP);
INSERT INTO `t_menu_role` (`ref_id`, `menu_id`, `role_id`, `gmt_create`, `gmt_modified`) VALUES (46, 4300, 1, CURRENT_TIMESTAMP, CURRENT_TIMESTAMP);
INSERT INTO `t_menu_role` (`ref_id`, `menu_id`, `role_id`, `gmt_create`, `gmt_modified`) VALUES (47, 4301, 1, CURRENT_TIMESTAMP, CURRENT_TIMESTAMP);
INSERT INTO `t_menu_role` (`ref_id`, `menu_id`, `role_id`, `gmt_create`, `gmt_modified`) VALUES (48, 4302, 1, CURRENT_TIMESTAMP, CURRENT_TIMESTAMP);
INSERT INTO `t_menu_role` (`ref_id`, `menu_id`, `role_id`, `gmt_create`, `gmt_modified`) VALUES (49, 4303, 1, CURRENT_TIMESTAMP, CURRENT_TIMESTAMP);
INSERT INTO `t_menu_role` (`ref_id`, `menu_id`, `role_id`, `gmt_create`, `gmt_modified`) VALUES (50, 4000, 1, CURRENT_TIMESTAMP, CURRENT_TIMESTAMP);
INSERT INTO `t_menu_role` (`ref_id`, `menu_id`, `role_id`, `gmt_create`, `gmt_modified`) VALUES (51, 5100, 1, CURRENT_TIMESTAMP, CURRENT_TIMESTAMP);
INSERT INTO `t_menu_role` (`ref_id`, `menu_id`, `role_id`, `gmt_create`, `gmt_modified`) VALUES (52, 5101, 1, CURRENT_TIMESTAMP, CURRENT_TIMESTAMP);
INSERT INTO `t_menu_role` (`ref_id`, `menu_id`, `role_id`, `gmt_create`, `gmt_modified`) VALUES (53, 5102, 1, CURRENT_TIMESTAMP, CURRENT_TIMESTAMP);
INSERT INTO `t_menu_role` (`ref_id`, `menu_id`, `role_id`, `gmt_create`, `gmt_modified`) VALUES (54, 5103, 1, CURRENT_TIMESTAMP, CURRENT_TIMESTAMP);
INSERT INTO `t_menu_role` (`ref_id`, `menu_id`, `role_id`, `gmt_create`, `gmt_modified`) VALUES (55, 5200, 1, CURRENT_TIMESTAMP, CURRENT_TIMESTAMP);
INSERT INTO `t_menu_role` (`ref_id`, `menu_id`, `role_id`, `gmt_create`, `gmt_modified`) VALUES (56, 5201, 1, CURRENT_TIMESTAMP, CURRENT_TIMESTAMP);
INSERT INTO `t_menu_role` (`ref_id`, `menu_id`, `role_id`, `gmt_create`, `gmt_modified`) VALUES (57, 5202, 1, CURRENT_TIMESTAMP, CURRENT_TIMESTAMP);
INSERT INTO `t_menu_role` (`ref_id`, `menu_id`, `role_id`, `gmt_create`, `gmt_modified`) VALUES (58, 5203, 1, CURRENT_TIMESTAMP, CURRENT_TIMESTAMP);
INSERT INTO `t_menu_role` (`ref_id`, `menu_id`, `role_id`, `gmt_create`, `gmt_modified`) VALUES (59, 5000, 1, CURRENT_TIMESTAMP, CURRENT_TIMESTAMP);
INSERT INTO `t_menu_role` (`ref_id`, `menu_id`, `role_id`, `gmt_create`, `gmt_modified`) VALUES (60, 6100, 1, CURRENT_TIMESTAMP, CURRENT_TIMESTAMP);
INSERT INTO `t_menu_role` (`ref_id`, `menu_id`, `role_id`, `gmt_create`, `gmt_modified`) VALUES (61, 6101, 1, CURRENT_TIMESTAMP, CURRENT_TIMESTAMP);
INSERT INTO `t_menu_role` (`ref_id`, `menu_id`, `role_id`, `gmt_create`, `gmt_modified`) VALUES (62, 6102, 1, CURRENT_TIMESTAMP, CURRENT_TIMESTAMP);
INSERT INTO `t_menu_role` (`ref_id`, `menu_id`, `role_id`, `gmt_create`, `gmt_modified`) VALUES (63, 6103, 1, CURRENT_TIMESTAMP, CURRENT_TIMESTAMP);
INSERT INTO `t_menu_role` (`ref_id`, `menu_id`, `role_id`, `gmt_create`, `gmt_modified`) VALUES (64, 6200, 1, CURRENT_TIMESTAMP, CURRENT_TIMESTAMP);
INSERT INTO `t_menu_role` (`ref_id`, `menu_id`, `role_id`, `gmt_create`, `gmt_modified`) VALUES (65, 6201, 1, CURRENT_TIMESTAMP, CURRENT_TIMESTAMP);
INSERT INTO `t_menu_role` (`ref_id`, `menu_id`, `role_id`, `gmt_create`, `gmt_modified`) VALUES (66, 6202, 1, CURRENT_TIMESTAMP, CURRENT_TIMESTAMP);
INSERT INTO `t_menu_role` (`ref_id`, `menu_id`, `role_id`, `gmt_create`, `gmt_modified`) VALUES (67, 6203, 1, CURRENT_TIMESTAMP, CURRENT_TIMESTAMP);
INSERT INTO `t_menu_role` (`ref_id`, `menu_id`, `role_id`, `gmt_create`, `gmt_modified`) VALUES (68, 6300, 1, CURRENT_TIMESTAMP, CURRENT_TIMESTAMP);
INSERT INTO `t_menu_role` (`ref_id`, `menu_id`, `role_id`, `gmt_create`, `gmt_modified`) VALUES (69, 6301, 1, CURRENT_TIMESTAMP, CURRENT_TIMESTAMP);
INSERT INTO `t_menu_role` (`ref_id`, `menu_id`, `role_id`, `gmt_create`, `gmt_modified`) VALUES (70, 6302, 1, CURRENT_TIMESTAMP, CURRENT_TIMESTAMP);
INSERT INTO `t_menu_role` (`ref_id`, `menu_id`, `role_id`, `gmt_create`, `gmt_modified`) VALUES (71, 6303, 1, CURRENT_TIMESTAMP, CURRENT_TIMESTAMP);
INSERT INTO `t_menu_role` (`ref_id`, `menu_id`, `role_id`, `gmt_create`, `gmt_modified`) VALUES (72, 6400, 1, CURRENT_TIMESTAMP, CURRENT_TIMESTAMP);
INSERT INTO `t_menu_role` (`ref_id`, `menu_id`, `role_id`, `gmt_create`, `gmt_modified`) VALUES (73, 6401, 1, CURRENT_TIMESTAMP, CURRENT_TIMESTAMP);
INSERT INTO `t_menu_role` (`ref_id`, `menu_id`, `role_id`, `gmt_create`, `gmt_modified`) VALUES (74, 6402, 1, CURRENT_TIMESTAMP, CURRENT_TIMESTAMP);
INSERT INTO `t_menu_role` (`ref_id`, `menu_id`, `role_id`, `gmt_create`, `gmt_modified`) VALUES (75, 6403, 1, CURRENT_TIMESTAMP, CURRENT_TIMESTAMP);
INSERT INTO `t_menu_role` (`ref_id`, `menu_id`, `role_id`, `gmt_create`, `gmt_modified`) VALUES (76, 6500, 1, CURRENT_TIMESTAMP, CURRENT_TIMESTAMP);
INSERT INTO `t_menu_role` (`ref_id`, `menu_id`, `role_id`, `gmt_create`, `gmt_modified`) VALUES (77, 6501, 1, CURRENT_TIMESTAMP, CURRENT_TIMESTAMP);
INSERT INTO `t_menu_role` (`ref_id`, `menu_id`, `role_id`, `gmt_create`, `gmt_modified`) VALUES (78, 6502, 1, CURRENT_TIMESTAMP, CURRENT_TIMESTAMP);
INSERT INTO `t_menu_role` (`ref_id`, `menu_id`, `role_id`, `gmt_create`, `gmt_modified`) VALUES (79, 6503, 1, CURRENT_TIMESTAMP, CURRENT_TIMESTAMP);
INSERT INTO `t_menu_role` (`ref_id`, `menu_id`, `role_id`, `gmt_create`, `gmt_modified`) VALUES (80, 6000, 1, CURRENT_TIMESTAMP, CURRENT_TIMESTAMP);
INSERT INTO `t_menu_role` (`ref_id`, `menu_id`, `role_id`, `gmt_create`, `gmt_modified`) VALUES (81, 7100, 1, CURRENT_TIMESTAMP, CURRENT_TIMESTAMP);
INSERT INTO `t_menu_role` (`ref_id`, `menu_id`, `role_id`, `gmt_create`, `gmt_modified`) VALUES (82, 7101, 1, CURRENT_TIMESTAMP, CURRENT_TIMESTAMP);
INSERT INTO `t_menu_role` (`ref_id`, `menu_id`, `role_id`, `gmt_create`, `gmt_modified`) VALUES (83, 7102, 1, CURRENT_TIMESTAMP, CURRENT_TIMESTAMP);
INSERT INTO `t_menu_role` (`ref_id`, `menu_id`, `role_id`, `gmt_create`, `gmt_modified`) VALUES (84, 7103, 1, CURRENT_TIMESTAMP, CURRENT_TIMESTAMP);
INSERT INTO `t_menu_role` (`ref_id`, `menu_id`, `role_id`, `gmt_create`, `gmt_modified`) VALUES (85, 7200, 1, CURRENT_TIMESTAMP, CURRENT_TIMESTAMP);
INSERT INTO `t_menu_role` (`ref_id`, `menu_id`, `role_id`, `gmt_create`, `gmt_modified`) VALUES (86, 7201, 1, CURRENT_TIMESTAMP, CURRENT_TIMESTAMP);
INSERT INTO `t_menu_role` (`ref_id`, `menu_id`, `role_id`, `gmt_create`, `gmt_modified`) VALUES (87, 7202, 1, CURRENT_TIMESTAMP, CURRENT_TIMESTAMP);
INSERT INTO `t_menu_role` (`ref_id`, `menu_id`, `role_id`, `gmt_create`, `gmt_modified`) VALUES (88, 7203, 1, CURRENT_TIMESTAMP, CURRENT_TIMESTAMP);
INSERT INTO `t_menu_role` (`ref_id`, `menu_id`, `role_id`, `gmt_create`, `gmt_modified`) VALUES (89, 7000, 1, CURRENT_TIMESTAMP, CURRENT_TIMESTAMP);
INSERT INTO `t_menu_role` (`ref_id`, `menu_id`, `role_id`, `gmt_create`, `gmt_modified`) VALUES (90, 8100, 1, CURRENT_TIMESTAMP, CURRENT_TIMESTAMP);
INSERT INTO `t_menu_role` (`ref_id`, `menu_id`, `role_id`, `gmt_create`, `gmt_modified`) VALUES (91, 8101, 1, CURRENT_TIMESTAMP, CURRENT_TIMESTAMP);
INSERT INTO `t_menu_role` (`ref_id`, `menu_id`, `role_id`, `gmt_create`, `gmt_modified`) VALUES (92, 8102, 1, CURRENT_TIMESTAMP, CURRENT_TIMESTAMP);
INSERT INTO `t_menu_role` (`ref_id`, `menu_id`, `role_id`, `gmt_create`, `gmt_modified`) VALUES (93, 8103, 1, CURRENT_TIMESTAMP, CURRENT_TIMESTAMP);
INSERT INTO `t_menu_role` (`ref_id`, `menu_id`, `role_id`, `gmt_create`, `gmt_modified`) VALUES (94, 8200, 1, CURRENT_TIMESTAMP, CURRENT_TIMESTAMP);
INSERT INTO `t_menu_role` (`ref_id`, `menu_id`, `role_id`, `gmt_create`, `gmt_modified`) VALUES (95, 8201, 1, CURRENT_TIMESTAMP, CURRENT_TIMESTAMP);
INSERT INTO `t_menu_role` (`ref_id`, `menu_id`, `role_id`, `gmt_create`, `gmt_modified`) VALUES (96, 8202, 1, CURRENT_TIMESTAMP, CURRENT_TIMESTAMP);
INSERT INTO `t_menu_role` (`ref_id`, `menu_id`, `role_id`, `gmt_create`, `gmt_modified`) VALUES (97, 8203, 1, CURRENT_TIMESTAMP, CURRENT_TIMESTAMP);
INSERT INTO `t_menu_role` (`ref_id`, `menu_id`, `role_id`, `gmt_create`, `gmt_modified`) VALUES (98, 8000, 1, CURRENT_TIMESTAMP, CURRENT_TIMESTAMP);
INSERT INTO `t_menu_role` (`ref_id`, `menu_id`, `role_id`, `gmt_create`, `gmt_modified`) VALUES (99, 9100, 1, CURRENT_TIMESTAMP, CURRENT_TIMESTAMP);
INSERT INTO `t_menu_role` (`ref_id`, `menu_id`, `role_id`, `gmt_create`, `gmt_modified`) VALUES (100, 9101, 1, CURRENT_TIMESTAMP, CURRENT_TIMESTAMP);
INSERT INTO `t_menu_role` (`ref_id`, `menu_id`, `role_id`, `gmt_create`, `gmt_modified`) VALUES (101, 9102, 1, CURRENT_TIMESTAMP, CURRENT_TIMESTAMP);
INSERT INTO `t_menu_role` (`ref_id`, `menu_id`, `role_id`, `gmt_create`, `gmt_modified`) VALUES (102, 9103, 1, CURRENT_TIMESTAMP, CURRENT_TIMESTAMP);
INSERT INTO `t_menu_role` (`ref_id`, `menu_id`, `role_id`, `gmt_create`, `gmt_modified`) VALUES (103, 9200, 1, CURRENT_TIMESTAMP, CURRENT_TIMESTAMP);
INSERT INTO `t_menu_role` (`ref_id`, `menu_id`, `role_id`, `gmt_create`, `gmt_modified`) VALUES (104, 9201, 1, CURRENT_TIMESTAMP, CURRENT_TIMESTAMP);
INSERT INTO `t_menu_role` (`ref_id`, `menu_id`, `role_id`, `gmt_create`, `gmt_modified`) VALUES (105, 9202, 1, CURRENT_TIMESTAMP, CURRENT_TIMESTAMP);
INSERT INTO `t_menu_role` (`ref_id`, `menu_id`, `role_id`, `gmt_create`, `gmt_modified`) VALUES (106, 9203, 1, CURRENT_TIMESTAMP, CURRENT_TIMESTAMP);
INSERT INTO `t_menu_role` (`ref_id`, `menu_id`, `role_id`, `gmt_create`, `gmt_modified`) VALUES (107, 9000, 1, CURRENT_TIMESTAMP, CURRENT_TIMESTAMP);
INSERT INTO `t_menu_role` (`ref_id`, `menu_id`, `role_id`, `gmt_create`, `gmt_modified`) VALUES (108, 10100, 1, CURRENT_TIMESTAMP, CURRENT_TIMESTAMP);
INSERT INTO `t_menu_role` (`ref_id`, `menu_id`, `role_id`, `gmt_create`, `gmt_modified`) VALUES (109, 10101, 1, CURRENT_TIMESTAMP, CURRENT_TIMESTAMP);
INSERT INTO `t_menu_role` (`ref_id`, `menu_id`, `role_id`, `gmt_create`, `gmt_modified`) VALUES (110, 10102, 1, CURRENT_TIMESTAMP, CURRENT_TIMESTAMP);
INSERT INTO `t_menu_role` (`ref_id`, `menu_id`, `role_id`, `gmt_create`, `gmt_modified`) VALUES (111, 10103, 1, CURRENT_TIMESTAMP, CURRENT_TIMESTAMP);