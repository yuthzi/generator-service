-- 创建数据库
CREATE DATABASE IF NOT EXISTS db_yuth_tower CHARACTER SET utf8mb4;
SET NAMES utf8mb4;
USE db_yuth_tower;



SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;


-- ----------------------------
-- Table structure for t_tenant
-- ----------------------------
DROP TABLE IF EXISTS `t_tenant`;
CREATE TABLE `t_tenant`  (
  `tenant_id` bigint NOT NULL COMMENT '租户ID',
  `tenant_code` varchar(32) NOT NULL  COMMENT '租户编码',
  `tenant_name` varchar(64) NOT NULL COMMENT '租户名称',
  `status` tinyint default '0'   comment '租户状态。0:未启用; 1已启用',
  `gmt_create` TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `gmt_modified` TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '更新时间',
  PRIMARY KEY (`tenant_id`) USING BTREE,
  UNIQUE INDEX `ux_code`(`tenant_code`) USING BTREE COMMENT '唯一索引'
) ENGINE = InnoDB ROW_FORMAT = Dynamic COMMENT '租户';


-- -----------------------------------------------------
-- Table `t_sys_table`，用于生成代码
-- -----------------------------------------------------
DROP TABLE IF EXISTS `t_sys_table` ;
CREATE TABLE IF NOT EXISTS `t_sys_table` (
  `table_id` BIGINT NOT NULL COMMENT '表id',
  `tenant_id` bigint NOT NULL default 0 COMMENT '租户ID',
  `table_name` VARCHAR(32) NOT NULL DEFAULT '' COMMENT '表名',
  `entity_name` VARCHAR(32) NOT NULL DEFAULT '' COMMENT '实体名。默认由表名生成',
  `memo` VARCHAR(32) NOT NULL DEFAULT '' COMMENT '表注释',
  `gmt_create` TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `gmt_modified` TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '更新时间',
  PRIMARY KEY (`table_id`)
) ENGINE = InnoDB DEFAULT CHARACTER SET = utf8mb4 COMMENT = '表信息';



-- ----------------------------
-- Table structure for t_menu
-- ----------------------------
DROP TABLE IF EXISTS `t_menu`;
CREATE TABLE `t_menu`  (
  `menu_id` bigint NOT NULL COMMENT '菜单ID',
  `tenant_id` bigint NOT NULL default 0 COMMENT '租户ID',
  `pid` bigint NOT NULL COMMENT '父级菜单ID',
  `pattern` varchar(255) NOT NULL  COMMENT '菜单模式，对应接口的URL',
  `code` varchar(128) NOT NULL  COMMENT '权限编码',
  `menu_name` varchar(64) NOT NULL COMMENT '菜单名称',
  `level` TINYINT NOT NULL COMMENT '菜单层级',
  `type` TINYINT NOT NULL COMMENT '权限类型。1：菜单；2：按钮',
  `seq` SMALLINT NOT NULL DEFAULT 0 COMMENT '序号。值越小，越先展示',
  `gmt_create` TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `gmt_modified` TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '更新时间',
  PRIMARY KEY (`menu_id`) USING BTREE
) ENGINE = InnoDB ROW_FORMAT = Dynamic COMMENT '菜单';


-- ----------------------------
-- Table structure for t_menu_role
-- ----------------------------
DROP TABLE IF EXISTS `t_menu_role`;
CREATE TABLE `t_menu_role`  (
  `ref_id` bigint NOT NULL COMMENT 'ID',
  `tenant_id` bigint NOT NULL default 0 COMMENT '租户ID',
  `menu_id` bigint NOT NULL COMMENT '菜单ID',
  `role_id` bigint NOT NULL COMMENT '角色ID',
  `gmt_create` TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `gmt_modified` TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '更新时间',
  PRIMARY KEY (`ref_id`) USING BTREE,
  UNIQUE INDEX `ux_role_menu`(`menu_id`, `role_id`) USING BTREE COMMENT '唯一索引'
) ENGINE = InnoDB ROW_FORMAT = Dynamic COMMENT '菜单角色映射';


-- ----------------------------
-- Table structure for t_role
-- ----------------------------
DROP TABLE IF EXISTS `t_role`;
CREATE TABLE `t_role`  (
  `role_id` bigint NOT NULL COMMENT '角色ID（主键）',
  `tenant_id` bigint NOT NULL default 0 COMMENT '租户ID',
  `role_code` varchar(64) NOT NULL COMMENT '角色编码',
  `role_name` varchar(64) NOT NULL COMMENT '角色名称',
  `gmt_create` TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `gmt_modified` TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '更新时间',
  PRIMARY KEY (`role_id`) USING BTREE
) ENGINE = InnoDB ROW_FORMAT = Dynamic COMMENT '角色';


-- ----------------------------
-- Table structure for t_user
-- ----------------------------
DROP TABLE IF EXISTS `t_user`;
CREATE TABLE `t_user`  (
  `user_id` bigint NOT NULL COMMENT '用户ID（主键）',
  `tenant_id` bigint NOT NULL default 0 COMMENT '租户ID',
  `username` varchar(255) NOT NULL COMMENT '用户名',
  `password` varchar(255) NOT NULL COMMENT '密码',
  `nickname` varchar(255) NOT NULL COMMENT '昵称',
  `enable` tinyint NULL DEFAULT 0 COMMENT '是否启用。0:否；1:是',
  `locked` tinyint NULL DEFAULT 0 COMMENT '是否锁定。0:否；1:是',
  `gmt_create` TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `gmt_modified` TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '更新时间',
  PRIMARY KEY (`user_id`) USING BTREE
) ENGINE = InnoDB ROW_FORMAT = Dynamic COMMENT '用户';


-- ----------------------------
-- Table structure for t_user_role
-- ----------------------------
DROP TABLE IF EXISTS `t_user_role`;
CREATE TABLE `t_user_role`  (
  `ref_id` bigint NOT NULL COMMENT 'ID（主键）',
  `tenant_id` bigint NOT NULL default 0 COMMENT '租户ID',
  `user_id` bigint NOT NULL COMMENT '用户ID',
  `role_id` bigint NOT NULL COMMENT '角色ID',
  `gmt_create` TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `gmt_modified` TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '更新时间',
  PRIMARY KEY (`ref_id`) USING BTREE,
  UNIQUE INDEX `ux_user_role`(`user_id`, `role_id`) USING BTREE COMMENT '唯一索引'
) ENGINE = InnoDB ROW_FORMAT = Dynamic COMMENT '用户角色';


-- ----------------------------
-- Table structure for t_login_log
-- ----------------------------
DROP TABLE if exists t_login_log;
CREATE TABLE t_login_log (
  log_id             bigint     not null                         comment '访问ID',
  `tenant_id` bigint NOT NULL default 0 COMMENT '租户ID',
  user_id           bigint    not null                          comment '用户ID',
  username    varchar(50)    default ''                comment '用户账号',
  ip                   varchar(128)   default ''               comment '登录IP地址',
  location        varchar(255)   default ''                comment '登录地点',
  browser        varchar(50)    default ''                 comment '浏览器类型',
  os                 varchar(50)    default ''                 comment '操作系统',
  status           tinyint        default '0'                 comment '登录状态。0:失败; 1成功',
  msg              varchar(255)   default ''               comment '提示消息',
  `gmt_create` TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `gmt_modified` TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '更新时间',
  primary key (log_id)
) ENGINE=INNODB comment = '用户访问日志';


-- ----------------------------
-- Table structure for t_customer
-- ----------------------------
DROP TABLE if exists t_customer;
CREATE TABLE t_customer (
  `customer_id` bigint NOT NULL COMMENT '客户ID（主键）',
  `tenant_id` bigint NOT NULL default 0 COMMENT '租户ID',
  `username` varchar(255) NOT NULL COMMENT '用户名',
  `nickname` varchar(255) NOT NULL COMMENT '姓名',
  `gender` tinyint NOT NULL DEFAULT 0 COMMENT '性别。0:保密；1:男；2:女',
  `level_score` int NOT NULL DEFAULT 0 COMMENT '等级积分',
  `level_name` varchar(32) NOT NULL DEFAULT '' COMMENT '等级名称',
  `password` varchar(255) NOT NULL DEFAULT '' COMMENT '密码',
  `phone` varchar(32) NOT NULL COMMENT '联系电话',
  `avatar` varchar(255) NOT NULL DEFAULT '' COMMENT '头像',
  `status` tinyint NOT NULL DEFAULT 0 COMMENT '状态。0:禁用；1:启用',
  `gmt_create` TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `gmt_modified` TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '更新时间',
  PRIMARY KEY (`customer_id`) USING BTREE
) ENGINE=INNODB comment = '客户';


-- ----------------------------
-- Table structure for t_customer_level
-- ----------------------------
DROP TABLE if exists t_customer_level;
CREATE TABLE t_customer_level (
  `level_id` bigint NOT NULL COMMENT '等级ID（主键）',
  `tenant_id` bigint NOT NULL default 0 COMMENT '租户ID',
  `level_name` varchar(32) NOT NULL COMMENT '等级名称',
  `level_desc` varchar(255) NOT NULL  default '' COMMENT '等级描述',
  `min_score` int NOT NULL DEFAULT 0 COMMENT '所需最小积分',
  `status` tinyint NOT NULL DEFAULT 0 COMMENT '状态。0:禁用；1:启用',
  `gmt_create` TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `gmt_modified` TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '更新时间',
  PRIMARY KEY (`level_id`) USING BTREE
) ENGINE=INNODB comment = '客户等级';


-- ----------------------------
-- Table structure for t_brand
-- ----------------------------
DROP TABLE if exists t_brand;
CREATE TABLE t_brand (
  `brand_id` bigint NOT NULL COMMENT '品牌ID',
  `tenant_id` bigint NOT NULL default 0 COMMENT '租户ID',
  `brand_name` varchar(24) NOT NULL COMMENT '品牌名称',
  `initial` varchar(2) NOT NULL DEFAULT '' COMMENT '品牌名首字母',
  `logo_url` varchar(255) NOT NULL DEFAULT '' COMMENT 'logo路径',
  `seq` int NOT NULL DEFAULT 0 COMMENT '排序值',
  `status` tinyint NOT NULL DEFAULT 0 COMMENT '状态。0:禁用；1:启用',
  `gmt_create` TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `gmt_modified` TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '更新时间',
  PRIMARY KEY (`brand_id`) USING BTREE
) ENGINE=INNODB comment = '品牌';


-- ----------------------------
-- Table structure for t_category
-- ----------------------------
DROP TABLE if exists t_category;
CREATE TABLE t_category (
  `category_id` bigint NOT NULL COMMENT '分类ID',
  `tenant_id` bigint NOT NULL default 0 COMMENT '租户ID',
  `pid` bigint NOT NULL default 0 COMMENT '父级分类ID',
  `category_name` varchar(24) NOT NULL COMMENT '分类名称',
  `seq` int NOT NULL DEFAULT 0 COMMENT '排序值',
  `status` tinyint NOT NULL DEFAULT 0 COMMENT '状态。0:禁用；1:启用',
  `gmt_create` TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `gmt_modified` TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '更新时间',
  PRIMARY KEY (`category_id`) USING BTREE
) ENGINE=INNODB comment = '分类';


-- ----------------------------
-- Table structure for t_goods_spec
-- ----------------------------
DROP TABLE IF EXISTS `t_goods_spec`;
CREATE TABLE `t_goods_spec`  (
  `tenant_id` bigint NOT NULL default 0 COMMENT '租户ID',
  `spec_id` bigint NOT NULL COMMENT '规格ID',
  `spec_name` varchar(16) NOT NULL  COMMENT '规格名',
  `category_id` bigint NOT NULL COMMENT '分类ID',
  `seq` smallint NOT NULL DEFAULT 0 COMMENT '排序值',
  `gmt_create` TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `gmt_modified` TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '更新时间',
  PRIMARY KEY (`spec_id`) USING BTREE
) ENGINE = InnoDB COMMENT = '商品规格';


-- ----------------------------
-- Table structure for t_goods_spec_value
-- ----------------------------
DROP TABLE IF EXISTS `t_goods_spec_value`;
CREATE TABLE `t_goods_spec_value`  (
  `spec_val_id` bigint NOT NULL COMMENT '规格值ID',
  `tenant_id` bigint NOT NULL default 0 COMMENT '租户ID',
  `spec_id` bigint NOT NULL COMMENT '规格ID',
  `spec_val` varchar(16) NOT NULL COMMENT '规格值',
  `seq` smallint NOT NULL DEFAULT 0 COMMENT '排序值',
  `gmt_create` TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `gmt_modified` TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '更新时间',
  PRIMARY KEY (`spec_val_id`) USING BTREE
) ENGINE = InnoDB COMMENT = '商品规格值';


-- ----------------------------
-- Table structure for t_goods_spu
-- ----------------------------
DROP TABLE IF EXISTS `t_goods_spu`;
CREATE TABLE `t_goods_spu`  (
  `tenant_id` bigint NOT NULL default 0 COMMENT '租户ID',
  `spu_id` bigint NOT NULL COMMENT '商品ID',
  `goods_name` varchar(32) NOT NULL COMMENT '商品名称',
  `goods_title` varchar(32) NOT NULL DEFAULT '' COMMENT '顾客端的名称',
  `category_id` bigint UNSIGNED NOT NULL DEFAULT 0 COMMENT '分类ID',
  `brand_id` bigint NOT NULL DEFAULT 0 COMMENT '品牌ID',
  `brand_name` varchar(24) NOT NULL DEFAULT '' COMMENT '品牌名称',
  `mne_code` varchar(18) NOT NULL DEFAULT '' NULL COMMENT '助记码',
  `art_no` varchar(24) NOT NULL DEFAULT ''  COMMENT '货号',
  `spec_id` bigint NOT NULL DEFAULT 0 COMMENT '规格ID',
  `unit` varchar(8) NOT NULL DEFAULT '' COMMENT '计量单位',
  `selling_price` decimal(12, 2) NOT NULL DEFAULT 0.00 COMMENT '商品售价',
  `intro` varchar(128) NOT NULL DEFAULT '' COMMENT '商品介绍',
  `pic_url` varchar(255) NOT NULL DEFAULT '' COMMENT '主图路径',
  `is_audited` TINYINT NOT NULL DEFAULT 0 COMMENT '是否已审核。0:否,  1:是',
  `seq` int NULL DEFAULT 0 COMMENT '排序',
  `gmt_create` TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `gmt_modified` TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '更新时间',
  PRIMARY KEY (`spu_id`) USING BTREE
) ENGINE = InnoDB  COMMENT = 'SPU';


-- ----------------------------
-- Table structure for t_goods_sku
-- ----------------------------
DROP TABLE IF EXISTS `t_goods_sku`;
CREATE TABLE `t_goods_sku`  (
  `tenant_id` bigint NOT NULL default 0 COMMENT '租户ID',
  `sku_id` bigint NOT NULL COMMENT 'SKU ID',
  `spu_id` bigint NOT NULL COMMENT 'SPU ID',
  `spec` varchar(128)  NOT NULL DEFAULT '' COMMENT '规格',
  `unit` varchar(8)  NOT NULL DEFAULT '' COMMENT '计量单位',
  `selling_price` decimal(12, 2) NOT NULL DEFAULT 0.00 COMMENT '销售价',
  `quantity` decimal(16, 2) NOT NULL DEFAULT 0.00 COMMENT '数量',
  `lock_quantity` decimal(16, 2) NOT NULL DEFAULT 0.00 COMMENT '下单锁定数量',
  `version` bigint UNSIGNED NOT NULL DEFAULT 0 COMMENT '版本号（用于乐观锁）',
  `gmt_create` TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `gmt_modified` TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '更新时间',
  PRIMARY KEY (`sku_id`) USING BTREE
) ENGINE = InnoDB  COMMENT = 'SKU' ;



-- -----------------------------------------------------
-- Table `t_order_basis`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `t_order_basis` ;
CREATE TABLE IF NOT EXISTS `t_order_basis` (
  `order_id` BIGINT NOT NULL COMMENT '订单ID',
  `tenant_id` bigint NOT NULL default 0 COMMENT '租户ID',
  `order_source` TINYINT NOT NULL COMMENT '订单来源。1:APP订单；2:POS机；3:渠道单',
  `order_type` TINYINT NOT NULL DEFAULT 1 COMMENT '订单类型。1:正常订单；2:秒杀订单; 3:团购单',
  `order_status` TINYINT NOT NULL DEFAULT 0 COMMENT '订单状态。0:待付款；1:待发货；2:已发货；3:已收货；4:已完成；5:已关闭；6:售后中; 10:待自取',
  `pay_status` TINYINT NOT NULL DEFAULT 0 COMMENT '支付状态。 0:未支付；1:正在支付；2:支付超时；3:支付失败；4:取消支付；5:已支付',
  `dispatch_status` TINYINT NOT NULL DEFAULT 0 COMMENT '发货状态。0:未发货；1:已发货',
  `return_status` TINYINT NOT NULL DEFAULT -1 COMMENT '售后状态。-2:禁止申请售后; -1:未进入售后; 0:退款待处理; 1:退款中; 2:已完成退款; 3:拒绝退款; 4:已取消退款;',
  `memo` VARCHAR(32) NOT NULL DEFAULT '' COMMENT '备注',
  `pay_type` TINYINT NOT NULL DEFAULT 0 COMMENT '支付方式。0:未支付；1:余额；2:现金；3:网付；4:微信；5:支付宝; 99:多种方式支付',
  `order_amount` DECIMAL(18,2) NOT NULL DEFAULT 0 COMMENT '订单金额',
  `biz_time` DATETIME NULL DEFAULT CURRENT_TIMESTAMP COMMENT '业务发生时间',
  `gmt_create` TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `gmt_modified` TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '更新时间',
  PRIMARY KEY (`order_id`)
) ENGINE = InnoDB DEFAULT CHARACTER SET = utf8mb4 COMMENT = '订单基本信息';










SET FOREIGN_KEY_CHECKS = 1;