

USE db_yuth_tower;

INSERT INTO `db_yuth_tower`.`t_tenant` (`tenant_id`, `tenant_code`, `tenant_name`, `status`, `gmt_create`, `gmt_modified`) VALUES (0, 'sys', '系统管理', 1, '2024-05-10 17:40:12', '2024-05-10 17:40:12');
INSERT INTO `db_yuth_tower`.`t_tenant` (`tenant_id`, `tenant_code`, `tenant_name`, `status`, `gmt_create`, `gmt_modified`) VALUES (1, 'yuth', 'yuth', 1, '2024-05-10 17:40:12', '2024-05-10 17:40:12');


-- 菜单
INSERT INTO `t_menu` (`menu_id`, `pid`, `pattern`, `code`, `menu_name`, `level`, `type`, `gmt_create`, `gmt_modified`) VALUES (1000, 0, '/acl', 'Acl', '权限管理', 1, 1, CURRENT_TIMESTAMP, CURRENT_TIMESTAMP);
INSERT INTO `t_menu` (`menu_id`, `pid`, `pattern`, `code`, `menu_name`, `level`, `type`, `gmt_create`, `gmt_modified`) VALUES (1100, 1000, '/acl/user', 'User', '用户管理', 2, 1, CURRENT_TIMESTAMP, CURRENT_TIMESTAMP);
INSERT INTO `t_menu` (`menu_id`, `pid`, `pattern`, `code`, `menu_name`, `level`, `type`, `gmt_create`, `gmt_modified`) VALUES (1101, 1100, '/acl/user/assgin', 'btn.User.assgin', '分配角色', 3, 2, CURRENT_TIMESTAMP, CURRENT_TIMESTAMP);
INSERT INTO `t_menu` (`menu_id`, `pid`, `pattern`, `code`, `menu_name`, `level`, `type`, `gmt_create`, `gmt_modified`) VALUES (1102, 1100, '/acl/user/add', 'btn.User.add', '添加', 3, 2, CURRENT_TIMESTAMP, CURRENT_TIMESTAMP);
INSERT INTO `t_menu` (`menu_id`, `pid`, `pattern`, `code`, `menu_name`, `level`, `type`, `gmt_create`, `gmt_modified`) VALUES (1103, 1100, '/acl/user/update', 'btn.User.update', '修改', 3, 2, CURRENT_TIMESTAMP, CURRENT_TIMESTAMP);
INSERT INTO `t_menu` (`menu_id`, `pid`, `pattern`, `code`, `menu_name`, `level`, `type`, `gmt_create`, `gmt_modified`) VALUES (1104, 1100, '/acl/user/remove', 'btn.User.remove', '删除', 3, 2, CURRENT_TIMESTAMP, CURRENT_TIMESTAMP);
INSERT INTO `t_menu` (`menu_id`, `pid`, `pattern`, `code`, `menu_name`, `level`, `type`, `gmt_create`, `gmt_modified`) VALUES (1200, 1000, '/acl/role', 'Role', '角色管理', 2, 1, CURRENT_TIMESTAMP, CURRENT_TIMESTAMP);
INSERT INTO `t_menu` (`menu_id`, `pid`, `pattern`, `code`, `menu_name`, `level`, `type`, `gmt_create`, `gmt_modified`) VALUES (1201, 1200, '/acl/role/assgin', 'btn.Role.assgin', '分配权限', 3, 2, CURRENT_TIMESTAMP, CURRENT_TIMESTAMP);
INSERT INTO `t_menu` (`menu_id`, `pid`, `pattern`, `code`, `menu_name`, `level`, `type`, `gmt_create`, `gmt_modified`) VALUES (1202, 1200, '/acl/role/add', 'btn.Role.add', '添加', 3, 2, CURRENT_TIMESTAMP, CURRENT_TIMESTAMP);
INSERT INTO `t_menu` (`menu_id`, `pid`, `pattern`, `code`, `menu_name`, `level`, `type`, `gmt_create`, `gmt_modified`) VALUES (1203, 1200, '/acl/role/update', 'btn.Role.update', '修改', 3, 2, CURRENT_TIMESTAMP, CURRENT_TIMESTAMP);
INSERT INTO `t_menu` (`menu_id`, `pid`, `pattern`, `code`, `menu_name`, `level`, `type`, `gmt_create`, `gmt_modified`) VALUES (1204, 1200, '/acl/role/remove', 'btn.Role.remove', '删除', 3, 2, CURRENT_TIMESTAMP, CURRENT_TIMESTAMP);
INSERT INTO `t_menu` (`menu_id`, `pid`, `pattern`, `code`, `menu_name`, `level`, `type`, `gmt_create`, `gmt_modified`) VALUES (1300, 1000, '/acl/permission', 'Permission', '菜单管理', 2, 1, CURRENT_TIMESTAMP, CURRENT_TIMESTAMP);
INSERT INTO `t_menu` (`menu_id`, `pid`, `pattern`, `code`, `menu_name`, `level`, `type`, `gmt_create`, `gmt_modified`) VALUES (1301, 1300, '/acl/permission/add', 'btn.Permission.add', '添加', 3, 2, CURRENT_TIMESTAMP, CURRENT_TIMESTAMP);
INSERT INTO `t_menu` (`menu_id`, `pid`, `pattern`, `code`, `menu_name`, `level`, `type`, `gmt_create`, `gmt_modified`) VALUES (1302, 1300, '/acl/permission/update', 'btn.Permission.update', '修改', 3, 2, CURRENT_TIMESTAMP, CURRENT_TIMESTAMP);
INSERT INTO `t_menu` (`menu_id`, `pid`, `pattern`, `code`, `menu_name`, `level`, `type`, `gmt_create`, `gmt_modified`) VALUES (1303, 1300, '/acl/permission/remove', 'btn.Permission.remove', '删除', 3, 2, CURRENT_TIMESTAMP, CURRENT_TIMESTAMP);
INSERT INTO `t_menu` (`menu_id`, `pid`, `pattern`, `code`, `menu_name`, `level`, `type`, `gmt_create`, `gmt_modified`) VALUES (2000, 0, '/product', 'Product', '商品管理', 1, 1, CURRENT_TIMESTAMP, CURRENT_TIMESTAMP);
INSERT INTO `t_menu` (`menu_id`, `pid`, `pattern`, `code`, `menu_name`, `level`, `type`, `gmt_create`, `gmt_modified`) VALUES (2100, 2000, '/product/attr', 'Attr', '属性列表', 2, 1, CURRENT_TIMESTAMP, CURRENT_TIMESTAMP);
INSERT INTO `t_menu` (`menu_id`, `pid`, `pattern`, `code`, `menu_name`, `level`, `type`, `gmt_create`, `gmt_modified`) VALUES (2101, 2100, '/product/attr/add', 'btn.Attr.add', '添加', 3, 2, CURRENT_TIMESTAMP, CURRENT_TIMESTAMP);
INSERT INTO `t_menu` (`menu_id`, `pid`, `pattern`, `code`, `menu_name`, `level`, `type`, `gmt_create`, `gmt_modified`) VALUES (2102, 2100, '/product/attr/update', 'btn.Attr.update', '修改', 3, 2, CURRENT_TIMESTAMP, CURRENT_TIMESTAMP);
INSERT INTO `t_menu` (`menu_id`, `pid`, `pattern`, `code`, `menu_name`, `level`, `type`, `gmt_create`, `gmt_modified`) VALUES (2103, 2100, '/product/attr/remove', 'btn.Attr.remove', '删除', 3, 2, CURRENT_TIMESTAMP, CURRENT_TIMESTAMP);
INSERT INTO `t_menu` (`menu_id`, `pid`, `pattern`, `code`, `menu_name`, `level`, `type`, `gmt_create`, `gmt_modified`) VALUES (2200, 2000, '/product/trademark', 'Trademark', '品牌列表', 2, 1, CURRENT_TIMESTAMP, CURRENT_TIMESTAMP);
INSERT INTO `t_menu` (`menu_id`, `pid`, `pattern`, `code`, `menu_name`, `level`, `type`, `gmt_create`, `gmt_modified`) VALUES (2201, 2200, '/product/trademark/add', 'btn.Trademark.add', '添加', 3, 2, CURRENT_TIMESTAMP, CURRENT_TIMESTAMP);
INSERT INTO `t_menu` (`menu_id`, `pid`, `pattern`, `code`, `menu_name`, `level`, `type`, `gmt_create`, `gmt_modified`) VALUES (2202, 2200, '/product/trademark/update', 'btn.Trademark.update', '修改', 3, 2, CURRENT_TIMESTAMP, CURRENT_TIMESTAMP);
INSERT INTO `t_menu` (`menu_id`, `pid`, `pattern`, `code`, `menu_name`, `level`, `type`, `gmt_create`, `gmt_modified`) VALUES (2203, 2200, '/product/trademark/remove', 'btn.Trademark.remove', '删除', 3, 2, CURRENT_TIMESTAMP, CURRENT_TIMESTAMP);
INSERT INTO `t_menu` (`menu_id`, `pid`, `pattern`, `code`, `menu_name`, `level`, `type`, `gmt_create`, `gmt_modified`) VALUES (2300, 2000, '/product/category', 'Category', '分类列表', 2, 1, CURRENT_TIMESTAMP, CURRENT_TIMESTAMP);
INSERT INTO `t_menu` (`menu_id`, `pid`, `pattern`, `code`, `menu_name`, `level`, `type`, `gmt_create`, `gmt_modified`) VALUES (2301, 2300, '/product/category/add', 'btn.Category.add', '添加', 3, 2, CURRENT_TIMESTAMP, CURRENT_TIMESTAMP);
INSERT INTO `t_menu` (`menu_id`, `pid`, `pattern`, `code`, `menu_name`, `level`, `type`, `gmt_create`, `gmt_modified`) VALUES (2302, 2300, '/product/category/update', 'btn.Category.update', '修改', 3, 2, CURRENT_TIMESTAMP, CURRENT_TIMESTAMP);
INSERT INTO `t_menu` (`menu_id`, `pid`, `pattern`, `code`, `menu_name`, `level`, `type`, `gmt_create`, `gmt_modified`) VALUES (2303, 2300, '/product/category/remove', 'btn.Category.remove', '删除', 3, 2, CURRENT_TIMESTAMP, CURRENT_TIMESTAMP);
INSERT INTO `t_menu` (`menu_id`, `pid`, `pattern`, `code`, `menu_name`, `level`, `type`, `gmt_create`, `gmt_modified`) VALUES (2400, 2000, '/product/spu', 'Spu', 'spu列表', 2, 1, CURRENT_TIMESTAMP, CURRENT_TIMESTAMP);
INSERT INTO `t_menu` (`menu_id`, `pid`, `pattern`, `code`, `menu_name`, `level`, `type`, `gmt_create`, `gmt_modified`) VALUES (2401, 2400, '/product/spu/add', 'btn.Spu.add', '添加', 3, 2, CURRENT_TIMESTAMP, CURRENT_TIMESTAMP);
INSERT INTO `t_menu` (`menu_id`, `pid`, `pattern`, `code`, `menu_name`, `level`, `type`, `gmt_create`, `gmt_modified`) VALUES (2402, 2400, '/product/spu/update', 'btn.Spu.update', '修改', 3, 2, CURRENT_TIMESTAMP, CURRENT_TIMESTAMP);
INSERT INTO `t_menu` (`menu_id`, `pid`, `pattern`, `code`, `menu_name`, `level`, `type`, `gmt_create`, `gmt_modified`) VALUES (2403, 2400, '/product/spu/remove', 'btn.Spu.remove', '删除', 3, 2, CURRENT_TIMESTAMP, CURRENT_TIMESTAMP);
INSERT INTO `t_menu` (`menu_id`, `pid`, `pattern`, `code`, `menu_name`, `level`, `type`, `gmt_create`, `gmt_modified`) VALUES (2500, 2000, '/product/sku', 'Sku', 'sku列表', 2, 1, CURRENT_TIMESTAMP, CURRENT_TIMESTAMP);
INSERT INTO `t_menu` (`menu_id`, `pid`, `pattern`, `code`, `menu_name`, `level`, `type`, `gmt_create`, `gmt_modified`) VALUES (2501, 2500, '/product/sku/add', 'btn.Sku.add', '添加', 3, 2, CURRENT_TIMESTAMP, CURRENT_TIMESTAMP);
INSERT INTO `t_menu` (`menu_id`, `pid`, `pattern`, `code`, `menu_name`, `level`, `type`, `gmt_create`, `gmt_modified`) VALUES (2502, 2500, '/product/sku/update', 'btn.Sku.update', '修改', 3, 2, CURRENT_TIMESTAMP, CURRENT_TIMESTAMP);
INSERT INTO `t_menu` (`menu_id`, `pid`, `pattern`, `code`, `menu_name`, `level`, `type`, `gmt_create`, `gmt_modified`) VALUES (2503, 2500, '/product/sku/remove', 'btn.Sku.remove', '删除', 3, 2, CURRENT_TIMESTAMP, CURRENT_TIMESTAMP);
INSERT INTO `t_menu` (`menu_id`, `pid`, `pattern`, `code`, `menu_name`, `level`, `type`, `gmt_create`, `gmt_modified`) VALUES (3000, 0, '/marketing', 'Marketing', '营销管理', 1, 1, CURRENT_TIMESTAMP, CURRENT_TIMESTAMP);
INSERT INTO `t_menu` (`menu_id`, `pid`, `pattern`, `code`, `menu_name`, `level`, `type`, `gmt_create`, `gmt_modified`) VALUES (3100, 3000, '/marketing/activity', 'Activity', '活动管理', 2, 1, CURRENT_TIMESTAMP, CURRENT_TIMESTAMP);
INSERT INTO `t_menu` (`menu_id`, `pid`, `pattern`, `code`, `menu_name`, `level`, `type`, `gmt_create`, `gmt_modified`) VALUES (3101, 3100, '/marketing/activity/add', 'btn.Activity.add', '添加', 3, 2, CURRENT_TIMESTAMP, CURRENT_TIMESTAMP);
INSERT INTO `t_menu` (`menu_id`, `pid`, `pattern`, `code`, `menu_name`, `level`, `type`, `gmt_create`, `gmt_modified`) VALUES (3102, 3100, '/marketing/activity/update', 'btn.Activity.update', '修改', 3, 2, CURRENT_TIMESTAMP, CURRENT_TIMESTAMP);
INSERT INTO `t_menu` (`menu_id`, `pid`, `pattern`, `code`, `menu_name`, `level`, `type`, `gmt_create`, `gmt_modified`) VALUES (3103, 3100, '/marketing/activity/remove', 'btn.Activity.remove', '删除', 3, 2, CURRENT_TIMESTAMP, CURRENT_TIMESTAMP);
INSERT INTO `t_menu` (`menu_id`, `pid`, `pattern`, `code`, `menu_name`, `level`, `type`, `gmt_create`, `gmt_modified`) VALUES (3200, 3000, '/marketing/coupon', 'Coupon', '优惠券管理', 2, 1, CURRENT_TIMESTAMP, CURRENT_TIMESTAMP);
INSERT INTO `t_menu` (`menu_id`, `pid`, `pattern`, `code`, `menu_name`, `level`, `type`, `gmt_create`, `gmt_modified`) VALUES (3201, 3200, '/marketing/coupon/add', 'btn.Coupon.add', '添加', 3, 2, CURRENT_TIMESTAMP, CURRENT_TIMESTAMP);
INSERT INTO `t_menu` (`menu_id`, `pid`, `pattern`, `code`, `menu_name`, `level`, `type`, `gmt_create`, `gmt_modified`) VALUES (3202, 3200, '/marketing/coupon/update', 'btn.Coupon.update', '修改', 3, 2, CURRENT_TIMESTAMP, CURRENT_TIMESTAMP);
INSERT INTO `t_menu` (`menu_id`, `pid`, `pattern`, `code`, `menu_name`, `level`, `type`, `gmt_create`, `gmt_modified`) VALUES (3203, 3200, '/marketing/coupon/remove', 'btn.Coupon.remove', '删除', 3, 2, CURRENT_TIMESTAMP, CURRENT_TIMESTAMP);
INSERT INTO `t_menu` (`menu_id`, `pid`, `pattern`, `code`, `menu_name`, `level`, `type`, `gmt_create`, `gmt_modified`) VALUES (3300, 3000, '/marketing/seckill', 'Seckill', '秒杀管理', 2, 1, CURRENT_TIMESTAMP, CURRENT_TIMESTAMP);
INSERT INTO `t_menu` (`menu_id`, `pid`, `pattern`, `code`, `menu_name`, `level`, `type`, `gmt_create`, `gmt_modified`) VALUES (3301, 3300, '/marketing/seckill/add', 'btn.Seckill.add', '添加', 3, 2, CURRENT_TIMESTAMP, CURRENT_TIMESTAMP);
INSERT INTO `t_menu` (`menu_id`, `pid`, `pattern`, `code`, `menu_name`, `level`, `type`, `gmt_create`, `gmt_modified`) VALUES (3302, 3300, '/marketing/seckill/update', 'btn.Seckill.update', '修改', 3, 2, CURRENT_TIMESTAMP, CURRENT_TIMESTAMP);
INSERT INTO `t_menu` (`menu_id`, `pid`, `pattern`, `code`, `menu_name`, `level`, `type`, `gmt_create`, `gmt_modified`) VALUES (3303, 3300, '/marketing/seckill/remove', 'btn.Seckill.remove', '删除', 3, 2, CURRENT_TIMESTAMP, CURRENT_TIMESTAMP);
INSERT INTO `t_menu` (`menu_id`, `pid`, `pattern`, `code`, `menu_name`, `level`, `type`, `gmt_create`, `gmt_modified`) VALUES (4000, 0, '/client-user', 'ClientUser', '客户管理', 1, 1, CURRENT_TIMESTAMP, CURRENT_TIMESTAMP);
INSERT INTO `t_menu` (`menu_id`, `pid`, `pattern`, `code`, `menu_name`, `level`, `type`, `gmt_create`, `gmt_modified`) VALUES (4100, 4000, '/client-user/list', 'UserList', '客户列表', 2, 1, CURRENT_TIMESTAMP, CURRENT_TIMESTAMP);
INSERT INTO `t_menu` (`menu_id`, `pid`, `pattern`, `code`, `menu_name`, `level`, `type`, `gmt_create`, `gmt_modified`) VALUES (4101, 4100, '/client-user/list/add', 'btn.UserList.add', '添加', 3, 2, CURRENT_TIMESTAMP, CURRENT_TIMESTAMP);
INSERT INTO `t_menu` (`menu_id`, `pid`, `pattern`, `code`, `menu_name`, `level`, `type`, `gmt_create`, `gmt_modified`) VALUES (4102, 4100, '/client-user/list/update', 'btn.UserList.update', '修改', 3, 2, CURRENT_TIMESTAMP, CURRENT_TIMESTAMP);
INSERT INTO `t_menu` (`menu_id`, `pid`, `pattern`, `code`, `menu_name`, `level`, `type`, `gmt_create`, `gmt_modified`) VALUES (4103, 4100, '/client-user/list/remove', 'btn.UserList.remove', '删除', 3, 2, CURRENT_TIMESTAMP, CURRENT_TIMESTAMP);
INSERT INTO `t_menu` (`menu_id`, `pid`, `pattern`, `code`, `menu_name`, `level`, `type`, `gmt_create`, `gmt_modified`) VALUES (4200, 4000, '/client-user/label', 'ClientLabel', '客户标签', 2, 1, CURRENT_TIMESTAMP, CURRENT_TIMESTAMP);
INSERT INTO `t_menu` (`menu_id`, `pid`, `pattern`, `code`, `menu_name`, `level`, `type`, `gmt_create`, `gmt_modified`) VALUES (4201, 4200, '/client-user/label/add', 'btn.ClientLabel.add', '添加', 3, 2, CURRENT_TIMESTAMP, CURRENT_TIMESTAMP);
INSERT INTO `t_menu` (`menu_id`, `pid`, `pattern`, `code`, `menu_name`, `level`, `type`, `gmt_create`, `gmt_modified`) VALUES (4202, 4200, '/client-user/label/update', 'btn.ClientLabel.update', '修改', 3, 2, CURRENT_TIMESTAMP, CURRENT_TIMESTAMP);
INSERT INTO `t_menu` (`menu_id`, `pid`, `pattern`, `code`, `menu_name`, `level`, `type`, `gmt_create`, `gmt_modified`) VALUES (4203, 4200, '/client-user/label/remove', 'btn.ClientLabel.remove', '删除', 3, 2, CURRENT_TIMESTAMP, CURRENT_TIMESTAMP);
INSERT INTO `t_menu` (`menu_id`, `pid`, `pattern`, `code`, `menu_name`, `level`, `type`, `gmt_create`, `gmt_modified`) VALUES (4300, 4000, '/client-user/level', 'Level', '客户等级', 2, 1, CURRENT_TIMESTAMP, CURRENT_TIMESTAMP);
INSERT INTO `t_menu` (`menu_id`, `pid`, `pattern`, `code`, `menu_name`, `level`, `type`, `gmt_create`, `gmt_modified`) VALUES (4301, 4300, '/client-user/level/add', 'btn.Level.add', '添加', 3, 2, CURRENT_TIMESTAMP, CURRENT_TIMESTAMP);
INSERT INTO `t_menu` (`menu_id`, `pid`, `pattern`, `code`, `menu_name`, `level`, `type`, `gmt_create`, `gmt_modified`) VALUES (4302, 4300, '/client-user/level/update', 'btn.Level.update', '修改', 3, 2, CURRENT_TIMESTAMP, CURRENT_TIMESTAMP);
INSERT INTO `t_menu` (`menu_id`, `pid`, `pattern`, `code`, `menu_name`, `level`, `type`, `gmt_create`, `gmt_modified`) VALUES (4303, 4300, '/client-user/level/remove', 'btn.Level.remove', '删除', 3, 2, CURRENT_TIMESTAMP, CURRENT_TIMESTAMP);
INSERT INTO `t_menu` (`menu_id`, `pid`, `pattern`, `code`, `menu_name`, `level`, `type`, `gmt_create`, `gmt_modified`) VALUES (5000, 0, '/order', 'Order', '订单管理', 1, 1, CURRENT_TIMESTAMP, CURRENT_TIMESTAMP);
INSERT INTO `t_menu` (`menu_id`, `pid`, `pattern`, `code`, `menu_name`, `level`, `type`, `gmt_create`, `gmt_modified`) VALUES (5100, 5000, '/order/list', 'OrderList', '订单列表', 2, 1, CURRENT_TIMESTAMP, CURRENT_TIMESTAMP);
INSERT INTO `t_menu` (`menu_id`, `pid`, `pattern`, `code`, `menu_name`, `level`, `type`, `gmt_create`, `gmt_modified`) VALUES (5101, 5100, '/order/list/add', 'btn.OrderList.add', '添加', 3, 2, CURRENT_TIMESTAMP, CURRENT_TIMESTAMP);
INSERT INTO `t_menu` (`menu_id`, `pid`, `pattern`, `code`, `menu_name`, `level`, `type`, `gmt_create`, `gmt_modified`) VALUES (5102, 5100, '/order/list/update', 'btn.OrderList.update', '修改', 3, 2, CURRENT_TIMESTAMP, CURRENT_TIMESTAMP);
INSERT INTO `t_menu` (`menu_id`, `pid`, `pattern`, `code`, `menu_name`, `level`, `type`, `gmt_create`, `gmt_modified`) VALUES (5103, 5100, '/order/list/remove', 'btn.OrderList.remove', '删除', 3, 2, CURRENT_TIMESTAMP, CURRENT_TIMESTAMP);
INSERT INTO `t_menu` (`menu_id`, `pid`, `pattern`, `code`, `menu_name`, `level`, `type`, `gmt_create`, `gmt_modified`) VALUES (5200, 5000, '/order/refundList', 'RefundList', '退款管理', 2, 1, CURRENT_TIMESTAMP, CURRENT_TIMESTAMP);
INSERT INTO `t_menu` (`menu_id`, `pid`, `pattern`, `code`, `menu_name`, `level`, `type`, `gmt_create`, `gmt_modified`) VALUES (5201, 5200, '/order/refundList/add', 'btn.RefundList.add', '添加', 3, 2, CURRENT_TIMESTAMP, CURRENT_TIMESTAMP);
INSERT INTO `t_menu` (`menu_id`, `pid`, `pattern`, `code`, `menu_name`, `level`, `type`, `gmt_create`, `gmt_modified`) VALUES (5202, 5200, '/order/refundList/update', 'btn.RefundList.update', '修改', 3, 2, CURRENT_TIMESTAMP, CURRENT_TIMESTAMP);
INSERT INTO `t_menu` (`menu_id`, `pid`, `pattern`, `code`, `menu_name`, `level`, `type`, `gmt_create`, `gmt_modified`) VALUES (5203, 5200, '/order/refundList/remove', 'btn.RefundList.remove', '删除', 3, 2, CURRENT_TIMESTAMP, CURRENT_TIMESTAMP);
INSERT INTO `t_menu` (`menu_id`, `pid`, `pattern`, `code`, `menu_name`, `level`, `type`, `gmt_create`, `gmt_modified`) VALUES (6000, 0, '/report', 'Report', '报表管理', 1, 1, CURRENT_TIMESTAMP, CURRENT_TIMESTAMP);
INSERT INTO `t_menu` (`menu_id`, `pid`, `pattern`, `code`, `menu_name`, `level`, `type`, `gmt_create`, `gmt_modified`) VALUES (6100, 6000, '/report/order/statList', 'OrderStatList', '订单统计', 2, 1, CURRENT_TIMESTAMP, CURRENT_TIMESTAMP);
INSERT INTO `t_menu` (`menu_id`, `pid`, `pattern`, `code`, `menu_name`, `level`, `type`, `gmt_create`, `gmt_modified`) VALUES (6101, 6100, '/report/order/statList/add', 'btn.OrderStatList.add', '添加', 3, 2, CURRENT_TIMESTAMP, CURRENT_TIMESTAMP);
INSERT INTO `t_menu` (`menu_id`, `pid`, `pattern`, `code`, `menu_name`, `level`, `type`, `gmt_create`, `gmt_modified`) VALUES (6102, 6100, '/report/order/statList/update', 'btn.OrderStatList.update', '修改', 3, 2, CURRENT_TIMESTAMP, CURRENT_TIMESTAMP);
INSERT INTO `t_menu` (`menu_id`, `pid`, `pattern`, `code`, `menu_name`, `level`, `type`, `gmt_create`, `gmt_modified`) VALUES (6103, 6100, '/report/order/statList/remove', 'btn.OrderStatList.remove', '删除', 3, 2, CURRENT_TIMESTAMP, CURRENT_TIMESTAMP);
INSERT INTO `t_menu` (`menu_id`, `pid`, `pattern`, `code`, `menu_name`, `level`, `type`, `gmt_create`, `gmt_modified`) VALUES (6200, 6000, '/report/order/skuSellStatList', 'SkuSellStatList', '订单分析', 2, 1, CURRENT_TIMESTAMP, CURRENT_TIMESTAMP);
INSERT INTO `t_menu` (`menu_id`, `pid`, `pattern`, `code`, `menu_name`, `level`, `type`, `gmt_create`, `gmt_modified`) VALUES (6201, 6200, '/report/order/skuSellStatList/add', 'btn.SkuSellStatList.add', '添加', 3, 2, CURRENT_TIMESTAMP, CURRENT_TIMESTAMP);
INSERT INTO `t_menu` (`menu_id`, `pid`, `pattern`, `code`, `menu_name`, `level`, `type`, `gmt_create`, `gmt_modified`) VALUES (6202, 6200, '/report/order/skuSellStatList/update', 'btn.SkuSellStatList.update', '修改', 3, 2, CURRENT_TIMESTAMP, CURRENT_TIMESTAMP);
INSERT INTO `t_menu` (`menu_id`, `pid`, `pattern`, `code`, `menu_name`, `level`, `type`, `gmt_create`, `gmt_modified`) VALUES (6203, 6200, '/report/order/skuSellStatList/remove', 'btn.SkuSellStatList.remove', '删除', 3, 2, CURRENT_TIMESTAMP, CURRENT_TIMESTAMP);
INSERT INTO `t_menu` (`menu_id`, `pid`, `pattern`, `code`, `menu_name`, `level`, `type`, `gmt_create`, `gmt_modified`) VALUES (7000, 0, '/setting', 'Setting', '系统管理', 1, 1, CURRENT_TIMESTAMP, CURRENT_TIMESTAMP);
INSERT INTO `t_menu` (`menu_id`, `pid`, `pattern`, `code`, `menu_name`, `level`, `type`, `gmt_create`, `gmt_modified`) VALUES (7100, 7000, '/setting/banner', 'Banner', 'banner管理', 2, 1, CURRENT_TIMESTAMP, CURRENT_TIMESTAMP);
INSERT INTO `t_menu` (`menu_id`, `pid`, `pattern`, `code`, `menu_name`, `level`, `type`, `gmt_create`, `gmt_modified`) VALUES (7101, 7100, '/setting/banner/add', 'btn.Banner.add', '添加', 3, 2, CURRENT_TIMESTAMP, CURRENT_TIMESTAMP);
INSERT INTO `t_menu` (`menu_id`, `pid`, `pattern`, `code`, `menu_name`, `level`, `type`, `gmt_create`, `gmt_modified`) VALUES (7102, 7100, '/setting/banner/update', 'btn.Banner.update', '修改', 3, 2, CURRENT_TIMESTAMP, CURRENT_TIMESTAMP);
INSERT INTO `t_menu` (`menu_id`, `pid`, `pattern`, `code`, `menu_name`, `level`, `type`, `gmt_create`, `gmt_modified`) VALUES (7103, 7100, '/setting/banner/remove', 'btn.Banner.remove', '删除', 3, 2, CURRENT_TIMESTAMP, CURRENT_TIMESTAMP);
INSERT INTO `t_menu` (`menu_id`, `pid`, `pattern`, `code`, `menu_name`, `level`, `type`, `gmt_create`, `gmt_modified`) VALUES (7200, 7000, '/setting/notification', 'Notification', '消息通知管理', 2, 1, CURRENT_TIMESTAMP, CURRENT_TIMESTAMP);
INSERT INTO `t_menu` (`menu_id`, `pid`, `pattern`, `code`, `menu_name`, `level`, `type`, `gmt_create`, `gmt_modified`) VALUES (7201, 7200, '/setting/notification/add', 'btn.Notification.add', '添加', 3, 2, CURRENT_TIMESTAMP, CURRENT_TIMESTAMP);
INSERT INTO `t_menu` (`menu_id`, `pid`, `pattern`, `code`, `menu_name`, `level`, `type`, `gmt_create`, `gmt_modified`) VALUES (7202, 7200, '/setting/notification/update', 'btn.Notification.update', '修改', 3, 2, CURRENT_TIMESTAMP, CURRENT_TIMESTAMP);
INSERT INTO `t_menu` (`menu_id`, `pid`, `pattern`, `code`, `menu_name`, `level`, `type`, `gmt_create`, `gmt_modified`) VALUES (7203, 7200, '/setting/notification/remove', 'btn.Notification.remove', '删除', 3, 2, CURRENT_TIMESTAMP, CURRENT_TIMESTAMP);

INSERT INTO `t_menu` (`menu_id`, `pid`, `pattern`, `code`, `menu_name`, `level`, `type`, `gmt_create`, `gmt_modified`) VALUES (8000, 0, '/log', 'Log', '日志管理', 1, 1, CURRENT_TIMESTAMP, CURRENT_TIMESTAMP);
INSERT INTO `t_menu` (`menu_id`, `pid`, `pattern`, `code`, `menu_name`, `level`, `type`, `gmt_create`, `gmt_modified`) VALUES (8100, 8000, '/log/loginLog', 'LoginLog', '登录日志', 2, 1, CURRENT_TIMESTAMP, CURRENT_TIMESTAMP);


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
INSERT INTO `t_menu_role` (`ref_id`, `menu_id`, `role_id`, `gmt_create`, `gmt_modified`) VALUES (24, 2300, 1, CURRENT_TIMESTAMP, CURRENT_TIMESTAMP);
INSERT INTO `t_menu_role` (`ref_id`, `menu_id`, `role_id`, `gmt_create`, `gmt_modified`) VALUES (25, 2301, 1, CURRENT_TIMESTAMP, CURRENT_TIMESTAMP);
INSERT INTO `t_menu_role` (`ref_id`, `menu_id`, `role_id`, `gmt_create`, `gmt_modified`) VALUES (26, 2302, 1, CURRENT_TIMESTAMP, CURRENT_TIMESTAMP);
INSERT INTO `t_menu_role` (`ref_id`, `menu_id`, `role_id`, `gmt_create`, `gmt_modified`) VALUES (27, 2303, 1, CURRENT_TIMESTAMP, CURRENT_TIMESTAMP);
INSERT INTO `t_menu_role` (`ref_id`, `menu_id`, `role_id`, `gmt_create`, `gmt_modified`) VALUES (28, 2400, 1, CURRENT_TIMESTAMP, CURRENT_TIMESTAMP);
INSERT INTO `t_menu_role` (`ref_id`, `menu_id`, `role_id`, `gmt_create`, `gmt_modified`) VALUES (29, 2401, 1, CURRENT_TIMESTAMP, CURRENT_TIMESTAMP);
INSERT INTO `t_menu_role` (`ref_id`, `menu_id`, `role_id`, `gmt_create`, `gmt_modified`) VALUES (30, 2402, 1, CURRENT_TIMESTAMP, CURRENT_TIMESTAMP);
INSERT INTO `t_menu_role` (`ref_id`, `menu_id`, `role_id`, `gmt_create`, `gmt_modified`) VALUES (31, 2403, 1, CURRENT_TIMESTAMP, CURRENT_TIMESTAMP);
INSERT INTO `t_menu_role` (`ref_id`, `menu_id`, `role_id`, `gmt_create`, `gmt_modified`) VALUES (32, 2500, 1, CURRENT_TIMESTAMP, CURRENT_TIMESTAMP);
INSERT INTO `t_menu_role` (`ref_id`, `menu_id`, `role_id`, `gmt_create`, `gmt_modified`) VALUES (33, 2501, 1, CURRENT_TIMESTAMP, CURRENT_TIMESTAMP);
INSERT INTO `t_menu_role` (`ref_id`, `menu_id`, `role_id`, `gmt_create`, `gmt_modified`) VALUES (34, 2502, 1, CURRENT_TIMESTAMP, CURRENT_TIMESTAMP);
INSERT INTO `t_menu_role` (`ref_id`, `menu_id`, `role_id`, `gmt_create`, `gmt_modified`) VALUES (35, 2503, 1, CURRENT_TIMESTAMP, CURRENT_TIMESTAMP);
INSERT INTO `t_menu_role` (`ref_id`, `menu_id`, `role_id`, `gmt_create`, `gmt_modified`) VALUES (36, 2000, 1, CURRENT_TIMESTAMP, CURRENT_TIMESTAMP);
INSERT INTO `t_menu_role` (`ref_id`, `menu_id`, `role_id`, `gmt_create`, `gmt_modified`) VALUES (37, 3100, 1, CURRENT_TIMESTAMP, CURRENT_TIMESTAMP);
INSERT INTO `t_menu_role` (`ref_id`, `menu_id`, `role_id`, `gmt_create`, `gmt_modified`) VALUES (38, 3101, 1, CURRENT_TIMESTAMP, CURRENT_TIMESTAMP);
INSERT INTO `t_menu_role` (`ref_id`, `menu_id`, `role_id`, `gmt_create`, `gmt_modified`) VALUES (39, 3102, 1, CURRENT_TIMESTAMP, CURRENT_TIMESTAMP);
INSERT INTO `t_menu_role` (`ref_id`, `menu_id`, `role_id`, `gmt_create`, `gmt_modified`) VALUES (40, 3103, 1, CURRENT_TIMESTAMP, CURRENT_TIMESTAMP);
INSERT INTO `t_menu_role` (`ref_id`, `menu_id`, `role_id`, `gmt_create`, `gmt_modified`) VALUES (41, 3200, 1, CURRENT_TIMESTAMP, CURRENT_TIMESTAMP);
INSERT INTO `t_menu_role` (`ref_id`, `menu_id`, `role_id`, `gmt_create`, `gmt_modified`) VALUES (42, 3201, 1, CURRENT_TIMESTAMP, CURRENT_TIMESTAMP);
INSERT INTO `t_menu_role` (`ref_id`, `menu_id`, `role_id`, `gmt_create`, `gmt_modified`) VALUES (43, 3202, 1, CURRENT_TIMESTAMP, CURRENT_TIMESTAMP);
INSERT INTO `t_menu_role` (`ref_id`, `menu_id`, `role_id`, `gmt_create`, `gmt_modified`) VALUES (44, 3203, 1, CURRENT_TIMESTAMP, CURRENT_TIMESTAMP);
INSERT INTO `t_menu_role` (`ref_id`, `menu_id`, `role_id`, `gmt_create`, `gmt_modified`) VALUES (45, 3300, 1, CURRENT_TIMESTAMP, CURRENT_TIMESTAMP);
INSERT INTO `t_menu_role` (`ref_id`, `menu_id`, `role_id`, `gmt_create`, `gmt_modified`) VALUES (46, 3301, 1, CURRENT_TIMESTAMP, CURRENT_TIMESTAMP);
INSERT INTO `t_menu_role` (`ref_id`, `menu_id`, `role_id`, `gmt_create`, `gmt_modified`) VALUES (47, 3302, 1, CURRENT_TIMESTAMP, CURRENT_TIMESTAMP);
INSERT INTO `t_menu_role` (`ref_id`, `menu_id`, `role_id`, `gmt_create`, `gmt_modified`) VALUES (48, 3303, 1, CURRENT_TIMESTAMP, CURRENT_TIMESTAMP);
INSERT INTO `t_menu_role` (`ref_id`, `menu_id`, `role_id`, `gmt_create`, `gmt_modified`) VALUES (49, 3000, 1, CURRENT_TIMESTAMP, CURRENT_TIMESTAMP);
INSERT INTO `t_menu_role` (`ref_id`, `menu_id`, `role_id`, `gmt_create`, `gmt_modified`) VALUES (50, 4100, 1, CURRENT_TIMESTAMP, CURRENT_TIMESTAMP);
INSERT INTO `t_menu_role` (`ref_id`, `menu_id`, `role_id`, `gmt_create`, `gmt_modified`) VALUES (51, 4101, 1, CURRENT_TIMESTAMP, CURRENT_TIMESTAMP);
INSERT INTO `t_menu_role` (`ref_id`, `menu_id`, `role_id`, `gmt_create`, `gmt_modified`) VALUES (52, 4102, 1, CURRENT_TIMESTAMP, CURRENT_TIMESTAMP);
INSERT INTO `t_menu_role` (`ref_id`, `menu_id`, `role_id`, `gmt_create`, `gmt_modified`) VALUES (53, 4103, 1, CURRENT_TIMESTAMP, CURRENT_TIMESTAMP);
INSERT INTO `t_menu_role` (`ref_id`, `menu_id`, `role_id`, `gmt_create`, `gmt_modified`) VALUES (54, 4200, 1, CURRENT_TIMESTAMP, CURRENT_TIMESTAMP);
INSERT INTO `t_menu_role` (`ref_id`, `menu_id`, `role_id`, `gmt_create`, `gmt_modified`) VALUES (55, 4201, 1, CURRENT_TIMESTAMP, CURRENT_TIMESTAMP);
INSERT INTO `t_menu_role` (`ref_id`, `menu_id`, `role_id`, `gmt_create`, `gmt_modified`) VALUES (56, 4202, 1, CURRENT_TIMESTAMP, CURRENT_TIMESTAMP);
INSERT INTO `t_menu_role` (`ref_id`, `menu_id`, `role_id`, `gmt_create`, `gmt_modified`) VALUES (57, 4203, 1, CURRENT_TIMESTAMP, CURRENT_TIMESTAMP);
INSERT INTO `t_menu_role` (`ref_id`, `menu_id`, `role_id`, `gmt_create`, `gmt_modified`) VALUES (58, 4300, 1, CURRENT_TIMESTAMP, CURRENT_TIMESTAMP);
INSERT INTO `t_menu_role` (`ref_id`, `menu_id`, `role_id`, `gmt_create`, `gmt_modified`) VALUES (59, 4301, 1, CURRENT_TIMESTAMP, CURRENT_TIMESTAMP);
INSERT INTO `t_menu_role` (`ref_id`, `menu_id`, `role_id`, `gmt_create`, `gmt_modified`) VALUES (60, 4302, 1, CURRENT_TIMESTAMP, CURRENT_TIMESTAMP);
INSERT INTO `t_menu_role` (`ref_id`, `menu_id`, `role_id`, `gmt_create`, `gmt_modified`) VALUES (61, 4303, 1, CURRENT_TIMESTAMP, CURRENT_TIMESTAMP);
INSERT INTO `t_menu_role` (`ref_id`, `menu_id`, `role_id`, `gmt_create`, `gmt_modified`) VALUES (62, 4000, 1, CURRENT_TIMESTAMP, CURRENT_TIMESTAMP);
INSERT INTO `t_menu_role` (`ref_id`, `menu_id`, `role_id`, `gmt_create`, `gmt_modified`) VALUES (63, 5100, 1, CURRENT_TIMESTAMP, CURRENT_TIMESTAMP);
INSERT INTO `t_menu_role` (`ref_id`, `menu_id`, `role_id`, `gmt_create`, `gmt_modified`) VALUES (64, 5101, 1, CURRENT_TIMESTAMP, CURRENT_TIMESTAMP);
INSERT INTO `t_menu_role` (`ref_id`, `menu_id`, `role_id`, `gmt_create`, `gmt_modified`) VALUES (65, 5102, 1, CURRENT_TIMESTAMP, CURRENT_TIMESTAMP);
INSERT INTO `t_menu_role` (`ref_id`, `menu_id`, `role_id`, `gmt_create`, `gmt_modified`) VALUES (66, 5103, 1, CURRENT_TIMESTAMP, CURRENT_TIMESTAMP);
INSERT INTO `t_menu_role` (`ref_id`, `menu_id`, `role_id`, `gmt_create`, `gmt_modified`) VALUES (67, 5200, 1, CURRENT_TIMESTAMP, CURRENT_TIMESTAMP);
INSERT INTO `t_menu_role` (`ref_id`, `menu_id`, `role_id`, `gmt_create`, `gmt_modified`) VALUES (68, 5201, 1, CURRENT_TIMESTAMP, CURRENT_TIMESTAMP);
INSERT INTO `t_menu_role` (`ref_id`, `menu_id`, `role_id`, `gmt_create`, `gmt_modified`) VALUES (69, 5202, 1, CURRENT_TIMESTAMP, CURRENT_TIMESTAMP);
INSERT INTO `t_menu_role` (`ref_id`, `menu_id`, `role_id`, `gmt_create`, `gmt_modified`) VALUES (70, 5203, 1, CURRENT_TIMESTAMP, CURRENT_TIMESTAMP);
INSERT INTO `t_menu_role` (`ref_id`, `menu_id`, `role_id`, `gmt_create`, `gmt_modified`) VALUES (71, 5000, 1, CURRENT_TIMESTAMP, CURRENT_TIMESTAMP);
INSERT INTO `t_menu_role` (`ref_id`, `menu_id`, `role_id`, `gmt_create`, `gmt_modified`) VALUES (72, 6100, 1, CURRENT_TIMESTAMP, CURRENT_TIMESTAMP);
INSERT INTO `t_menu_role` (`ref_id`, `menu_id`, `role_id`, `gmt_create`, `gmt_modified`) VALUES (73, 6101, 1, CURRENT_TIMESTAMP, CURRENT_TIMESTAMP);
INSERT INTO `t_menu_role` (`ref_id`, `menu_id`, `role_id`, `gmt_create`, `gmt_modified`) VALUES (74, 6102, 1, CURRENT_TIMESTAMP, CURRENT_TIMESTAMP);
INSERT INTO `t_menu_role` (`ref_id`, `menu_id`, `role_id`, `gmt_create`, `gmt_modified`) VALUES (75, 6103, 1, CURRENT_TIMESTAMP, CURRENT_TIMESTAMP);
INSERT INTO `t_menu_role` (`ref_id`, `menu_id`, `role_id`, `gmt_create`, `gmt_modified`) VALUES (76, 6200, 1, CURRENT_TIMESTAMP, CURRENT_TIMESTAMP);
INSERT INTO `t_menu_role` (`ref_id`, `menu_id`, `role_id`, `gmt_create`, `gmt_modified`) VALUES (77, 6201, 1, CURRENT_TIMESTAMP, CURRENT_TIMESTAMP);
INSERT INTO `t_menu_role` (`ref_id`, `menu_id`, `role_id`, `gmt_create`, `gmt_modified`) VALUES (78, 6202, 1, CURRENT_TIMESTAMP, CURRENT_TIMESTAMP);
INSERT INTO `t_menu_role` (`ref_id`, `menu_id`, `role_id`, `gmt_create`, `gmt_modified`) VALUES (79, 6203, 1, CURRENT_TIMESTAMP, CURRENT_TIMESTAMP);
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

INSERT INTO `t_menu_role` (`ref_id`, `menu_id`, `role_id`, `gmt_create`, `gmt_modified`) VALUES (90, 8000, 1, CURRENT_TIMESTAMP, CURRENT_TIMESTAMP);
INSERT INTO `t_menu_role` (`ref_id`, `menu_id`, `role_id`, `gmt_create`, `gmt_modified`) VALUES (91, 8100, 1, CURRENT_TIMESTAMP, CURRENT_TIMESTAMP);


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
INSERT INTO `t_user_role`(`ref_id`, `user_id`, `role_id`, `gmt_create`, `gmt_modified`) VALUES (4, 4713765748473984, 1, CURRENT_TIMESTAMP, CURRENT_TIMESTAMP);

