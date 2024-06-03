
-- 创建数据库
CREATE DATABASE IF NOT EXISTS db_yuth_tower CHARACTER SET utf8mb4;
SET NAMES utf8mb4;
USE db_yuth_tower;




-- ----------------------------
-- Table structure for t_sync_shop
-- ----------------------------
DROP TABLE IF EXISTS `t_sync_shop`;
CREATE TABLE `t_sync_shop` (
  `shop_id` bigint NOT NULL COMMENT '门店ID',
  `org_id` bigint NOT NULL COMMENT '组织ID',
  `shop_name` varchar(255) NOT NULL DEFAULT '' COMMENT '门店名称',
  `business_start_hours`  varchar(32) DEFAULT '' COMMENT  '开始营业时间',
  `business_end_hours`  varchar(32) DEFAULT '' COMMENT  '停止营业时间',
  `created_time` TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `updated_time` TIMESTAMP NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '修改时间',
  PRIMARY KEY (`shop_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='商户门店同步';


-- ----------------------------
-- Table structure for t_goods_class
-- ----------------------------
DROP TABLE IF EXISTS `t_goods_class`;
CREATE TABLE `t_goods_class`  (
  `class_id` bigint NOT NULL COMMENT '分类ID',
  `org_id` bigint NOT NULL COMMENT '组织ID',
  `class_name` varchar(18) NULL DEFAULT NULL COMMENT '分类名称',
  PRIMARY KEY (`class_id`)
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COMMENT = '商品分类同步表';


-- ----------------------------
-- Table structure for t_sync_goods_class
-- ----------------------------
DROP TABLE IF EXISTS `t_sync_goods_class`;
CREATE TABLE `t_sync_goods_class`  (
  `org_id` bigint NOT NULL COMMENT '组织ID',
  `class_id` bigint NOT NULL COMMENT '分类ID',
  `parent_id` bigint NULL DEFAULT 0 COMMENT '父级ID',
  `depth` int NULL DEFAULT NULL COMMENT '层级',
  `class_name` varchar(18) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '分类名称',
  `is_show` int NULL DEFAULT 1 COMMENT '是否显示:  0:不显示,   1: 显示',
  `sort_val` int NULL DEFAULT NULL COMMENT '排序值',
  PRIMARY KEY (`class_id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COMMENT = '商品分类' ;


-- ----------------------------
-- Table structure for t_sync_goods_basis
-- ----------------------------
DROP TABLE IF EXISTS `t_sync_goods_basis`;
CREATE TABLE `t_sync_goods_basis`  (
  `org_id` bigint NOT NULL COMMENT '商户ID',
  `goods_id` bigint NOT NULL COMMENT '商品ID',
  `goods_name` varchar(32) NULL DEFAULT NULL COMMENT '商品名称',
  `class_id` bigint UNSIGNED NULL DEFAULT 0 COMMENT '分类ID',
  `created_time` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_time` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`goods_id`) USING BTREE,
  INDEX `idx_class_id`(`class_id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COMMENT = '商品基本信息同步表';



-- -----------------------------------------------------
-- Table `t_sync_order_basis`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `t_sync_order_basis` ;
CREATE TABLE IF NOT EXISTS `t_sync_order_basis` (
  `order_id` BIGINT NOT NULL COMMENT '订单ID',
  `org_id` BIGINT NOT NULL COMMENT '商户ID',
  `shop_id` BIGINT NOT NULL COMMENT '门店ID',
  `member_id` BIGINT NOT NULL DEFAULT '0' COMMENT '会员ID',
  `order_source` TINYINT NOT NULL COMMENT '订单来源。1APP订单；2POS机',
  `order_type` TINYINT NOT NULL DEFAULT 1 COMMENT '订单类型。1:正常订单；2秒杀订单',
  `order_take_type` TINYINT NOT NULL DEFAULT 0 COMMENT '订单取走类型。0POS机；1到店自取；2配送；3堂食',
  `order_status` TINYINT NOT NULL DEFAULT 0 COMMENT '订单状态',
  `pay_status` TINYINT NOT NULL DEFAULT 0 COMMENT '支付状态',
  `dispatch_status` TINYINT NOT NULL DEFAULT 0 COMMENT '发货状态。0未发货；1已发货',
  `return_status` TINYINT NOT NULL DEFAULT -1 COMMENT '-2禁止申请售后; -1未进入售后; 0退款待处理; 1退款中; 2已完成退款; 3拒绝退款; 4已取消退款; 10退货待处理; 11退货中; 12已完成退货; 13拒绝退货; 14已取消退货',
  `pay_type` TINYINT NOT NULL DEFAULT 0 COMMENT '支付方式。0未支付；1余额；2现金；3网付；4微信；5支付宝; 99多种方式支付',
  `order_amount` DECIMAL(18,2) NOT NULL DEFAULT 0 COMMENT '订单金额',
  `commit_time` DATETIME NULL DEFAULT CURRENT_TIMESTAMP COMMENT '提交时间',
  PRIMARY KEY (`order_id`)
) ENGINE = InnoDB DEFAULT CHARACTER SET = utf8mb4 COMMENT = '订单基本信息同步';


-- -----------------------------------------------------
-- Table `t_stat_detail_order`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `t_stat_detail_order` ;
CREATE TABLE IF NOT EXISTS `t_stat_detail_order` (
  `stat_id` BIGINT NOT NULL COMMENT '统计ID(主键)',
  `org_id` BIGINT NOT NULL COMMENT '商户ID',
  `shop_id` BIGINT NOT NULL COMMENT '门店ID',
  `order_source` TINYINT NOT NULL COMMENT '订单来源。1APP订单；2POS机',
  `order_type` TINYINT NOT NULL COMMENT '订单类型。1:正常订单；2秒杀订单',
  `order_take_type` TINYINT NOT NULL COMMENT '订单取走类型。0POS机；1到店自取；2配送；3堂食',
  `order_status` TINYINT NOT NULL COMMENT '订单状态',
  `pay_type` TINYINT NOT NULL COMMENT '支付方式。0未支付；1余额；2现金；3网付；4微信；5支付宝; 99多种方式支付',
  `order_amount` DECIMAL(18,2) NOT NULL COMMENT '订单金额',
  `order_count` INT NOT NULL COMMENT '订单个数',
  `commit_date` DATE NOT NULL COMMENT '提交日期',
  PRIMARY KEY (`stat_id`)
) ENGINE = InnoDB DEFAULT CHARACTER SET = utf8mb4 COMMENT = '订单按天统计明细';


-- -----------------------------------------------------
-- Table `t_stat_order`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `t_stat_order` ;
CREATE TABLE IF NOT EXISTS `t_stat_order` (
  `stat_id` BIGINT NOT NULL COMMENT '统计ID(主键)',
  `org_id` BIGINT NOT NULL COMMENT '商户ID',
  `shop_id` BIGINT NOT NULL COMMENT '门店ID',
  `period_type` TINYINT NOT NULL COMMENT '期间类型。1今天；2昨日；3本周；4近一周；5上一周；6本月；7最近一个月；8上个月',
  `order_amount` DECIMAL(18,2) NOT NULL COMMENT '订单金额',
  `order_count` INT NOT NULL COMMENT '订单个数',
  `stat_date` DATE NOT NULL COMMENT '统计日期',
  PRIMARY KEY (`stat_id`),
  UNIQUE INDEX `idx_org_shop_period`(`org_id`, `shop_id`, `period_type`, `stat_date`) USING BTREE
) ENGINE = InnoDB DEFAULT CHARACTER SET = utf8mb4 COMMENT = '订单统计信息';


-- -----------------------------------------------------
-- Table `t_stat_order_status`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `t_stat_order_status` ;
CREATE TABLE IF NOT EXISTS `t_stat_order_status` (
  `stat_id` BIGINT NOT NULL COMMENT '统计ID(主键)',
  `org_id` BIGINT NOT NULL COMMENT '商户ID',
  `shop_id` BIGINT NOT NULL COMMENT '门店ID',
  `item_id` TINYINT NOT NULL COMMENT '统计项ID',
  `item_desc` VARCHAR(32) NOT NULL COMMENT '统计项描述',
  `stat_count` INT NOT NULL COMMENT '统计个数',
  `stat_date` DATE NOT NULL COMMENT '统计日期',
  PRIMARY KEY (`stat_id`),
  UNIQUE INDEX `idx_org_shop_item`(`org_id`, `shop_id`, `item_id`, `stat_date`) USING BTREE
) ENGINE = InnoDB DEFAULT CHARACTER SET = utf8mb4 COMMENT = '订单状态统计';


-- -----------------------------------------------------
-- Table `t_sync_order_detail`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `t_sync_order_detail` ;
CREATE TABLE IF NOT EXISTS `t_sync_order_detail` (
  `detail_id` BIGINT NOT NULL COMMENT '订单明细ID',
  `order_id` BIGINT NOT NULL COMMENT '订单ID',
  `org_id` BIGINT NOT NULL COMMENT '商户ID',
  `shop_id` BIGINT NOT NULL COMMENT '门店ID',
  `brand_id` BIGINT NOT NULL COMMENT '品牌ID',
  `brand_name` VARCHAR(24) NOT NULL DEFAULT '' COMMENT '品牌名称',
  `class_Id` BIGINT NOT NULL DEFAULT '0' COMMENT '分类ID',
  `class_name` VARCHAR(18) NOT NULL DEFAULT '' COMMENT '分类名称',
  `group_type` TINYINT NOT NULL DEFAULT '0' COMMENT '组合类型。0无组合;1辅料组合;2辅料子项;3套餐组合;4套餐子项',
  `parent_id` BIGINT NOT NULL DEFAULT '0' COMMENT '上级detailID',
  `goods_id` BIGINT NOT NULL DEFAULT '0' COMMENT '商品ID',
  `goods_name` VARCHAR(32) NOT NULL COMMENT '商品名称',
  `goods_title` varchar(32)  NOT NULL DEFAULT '' COMMENT '商品在页面上的标题',
  `sku_id` BIGINT NOT NULL COMMENT 'SKU ID',
  `sku_code` VARCHAR(20)  NULL DEFAULT '' COMMENT 'sku编码',
  `pic_url` VARCHAR(255) NOT NULL DEFAULT '' COMMENT '商品图片',
  `price` DECIMAL(12,2) NOT NULL COMMENT '成交单价',
  `selling_price` DECIMAL(12,2) NOT NULL COMMENT '销售单价',
  `member_price` DECIMAL(12,2) NULL COMMENT '会员单价',
  `art_no` VARCHAR(24) NOT NULL COMMENT '货号',
  `specs` VARCHAR(128) NOT NULL DEFAULT '' COMMENT '规格',
  `params` VARCHAR(512) NOT NULL DEFAULT '' COMMENT '参数',
  `quantity` DECIMAL(16,2) NOT NULL COMMENT '数量',
  `ret_quantity` DECIMAL(16,2) NOT NULL DEFAULT 0 COMMENT '已退数量',
  `subtotal` DECIMAL(16,3) NOT NULL COMMENT '小计',
  `pay_subtotal` DECIMAL(16,3) NOT NULL COMMENT '实付金额小计',
  `status` TINYINT NOT NULL DEFAULT '-1' COMMENT '订单明细状态；-1未进入售后；2已退款',
  `created_time` DATETIME NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `updated_time` DATETIME NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '修改时间',
  PRIMARY KEY (`detail_id`)
) ENGINE = InnoDB DEFAULT CHARACTER SET = utf8mb4 COMMENT = '订单明细同步';


-- -----------------------------------------------------
-- Table `t_stat_detail_order_detail`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `t_stat_detail_order_detail` ;
CREATE TABLE IF NOT EXISTS `t_stat_detail_order_detail` (
  `stat_id` BIGINT NOT NULL COMMENT '统计ID(主键)',
  `org_id` BIGINT NOT NULL COMMENT '商户ID',
  `shop_id` BIGINT NOT NULL COMMENT '门店ID',
  `channel_Id` BIGINT NOT NULL DEFAULT '0' COMMENT '渠道ID',
  `class_Id` BIGINT NOT NULL DEFAULT '0' COMMENT '分类ID',
  `goods_id` BIGINT NOT NULL DEFAULT '0' COMMENT '商品ID',
  `subtotal` DECIMAL(16,3) NOT NULL COMMENT '销售额小计(包括优惠金额)',
  `occ_order_count` INT NOT NULL COMMENT '订单发生数',
  `occ_quantity` DECIMAL(16,2) NOT NULL COMMENT '商品下单数量',
  `ret_quantity` DECIMAL(16,2) NOT NULL DEFAULT 0 COMMENT '退款商品数量',
  `stat_count` DECIMAL(16,2) NOT NULL COMMENT '实际销售数量',
  `occ_amount` DECIMAL(16,3) NOT NULL COMMENT '支付金额发生数',
  `ret_amount` DECIMAL(16,3) NOT NULL COMMENT '退单商品金额',
  `pay_subtotal` DECIMAL(16,3) NOT NULL COMMENT '实付金额小计',
  `discount_amount` DECIMAL(16,3) NOT NULL COMMENT '优惠金额',
  `stat_date` DATE NOT NULL COMMENT '统计日期',
  `created_time` DATETIME NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `updated_time` DATETIME NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '修改时间',
  PRIMARY KEY (`stat_id`)
) ENGINE = InnoDB DEFAULT CHARACTER SET = utf8mb4 COMMENT = '订单明细按天统计明细';


-- -----------------------------------------------------
-- Table `t_sync_drink`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `t_sync_drink`;
CREATE TABLE IF NOT EXISTS `t_sync_drink` (
  `drink_id` BIGINT NOT NULL COMMENT '茶饮ID(主键)',
  `has_make` TINYINT NOT NULL DEFAULT 0 COMMENT '是否已制作',
  `operator_id` BIGINT NOT NULL DEFAULT 0 COMMENT '茶饮师ID',
  `operator_name` VARCHAR(32) NOT NULL DEFAULT '' COMMENT '茶饮师名称',
  `order_id` BIGINT NOT NULL COMMENT '订单ID',
  `org_id` BIGINT NOT NULL COMMENT '商户ID',
  `shop_id` BIGINT NOT NULL COMMENT '门店ID',
  `goods_id` BIGINT NOT NULL DEFAULT '0' COMMENT '商品ID',
  `goods_name` VARCHAR(32) NOT NULL COMMENT '商品名称',
  `goods_title` VARCHAR(32)  NOT NULL DEFAULT '' COMMENT '商品在页面上的标题',
  `sku_id` BIGINT NOT NULL COMMENT 'SKU ID',
  `sku_code` VARCHAR(20)  NULL DEFAULT '' COMMENT 'sku编码',
  `price` DECIMAL(12,2) NOT NULL COMMENT '成交单价',
  `art_no` VARCHAR(24) NOT NULL COMMENT '货号',
  `specs` VARCHAR(128) NOT NULL DEFAULT '' COMMENT '规格',
  `params` VARCHAR(512) NOT NULL DEFAULT '' COMMENT '参数',
  `created_time` DATETIME NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `make_time` DATETIME NULL COMMENT '制作(计件)时间',
  PRIMARY KEY (`drink_id`)
 ) ENGINE = InnoDB DEFAULT CHARACTER SET = utf8mb4 COMMENT = '茶饮计件同步';


-- -----------------------------------------------------
-- Table `t_stat_detail_drink`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `t_stat_detail_drink`;
CREATE TABLE IF NOT EXISTS `t_stat_detail_drink` (
  `stat_id` BIGINT NOT NULL COMMENT '统计ID(主键)',
  `operator_id` BIGINT NOT NULL DEFAULT 0 COMMENT '茶饮师ID',
  `operator_name` VARCHAR(32) NOT NULL DEFAULT '' COMMENT '茶饮师名称',
  `org_id` BIGINT NOT NULL COMMENT '商户ID',
  `shop_id` BIGINT NOT NULL COMMENT '门店ID',
  `shop_name` VARCHAR(32) NOT NULL COMMENT '门店名称',
  `stat_count` INT NOT NULL COMMENT '茶饮个数',
  `stat_date` DATE NOT NULL COMMENT '统计日期',
  PRIMARY KEY (`stat_id`)
 ) ENGINE = InnoDB DEFAULT CHARACTER SET = utf8mb4 COMMENT = '茶饮计件按天统计明细';


-- -----------------------------------------------------
-- Table `t_sync_cook_count`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `t_sync_cook_count` ;
CREATE TABLE IF NOT EXISTS `t_sync_cook_count` (
  `cook_count_id` BIGINT NOT NULL COMMENT '菜品计件ID(主键)',
  `cook_detail_id` BIGINT NOT NULL COMMENT '后厨菜品ID',
  `org_id` BIGINT NOT NULL COMMENT '商户ID',
  `shop_id` BIGINT NOT NULL COMMENT '门店ID',
  `order_id` BIGINT NOT NULL COMMENT '订单ID',
  `order_detail_id` BIGINT NOT NULL COMMENT '订单明细ID',
  `make_count` SMALLINT NOT NULL DEFAULT 0 COMMENT '烹饪数量',
  `operator_id` BIGINT NOT NULL DEFAULT '0' COMMENT '厨师ID',
  `operator_name` VARCHAR(32) NOT NULL DEFAULT '' COMMENT '厨师名称',
  `create_time` DATETIME NULL DEFAULT CURRENT_TIMESTAMP COMMENT '提交时间(计件时间)',
  PRIMARY KEY (`cook_count_id`)
) ENGINE = InnoDB DEFAULT CHARACTER SET = utf8mb4 COMMENT = '后厨计件同步';


-- -----------------------------------------------------
-- Table `t_stat_detail_cook`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `t_stat_detail_cook`;
CREATE TABLE IF NOT EXISTS `t_stat_detail_cook` (
  `stat_id` BIGINT NOT NULL COMMENT '统计ID(主键)',
  `org_id` BIGINT NOT NULL COMMENT '商户ID',
  `shop_id` BIGINT NOT NULL COMMENT '门店ID',
  `shop_name` VARCHAR(32) NOT NULL COMMENT '门店名称',
  `operator_id` BIGINT NOT NULL DEFAULT 0 COMMENT '厨师ID',
  `operator_name` VARCHAR(32) NOT NULL DEFAULT '' COMMENT '厨师名称',
  `stat_count` INT NOT NULL COMMENT '计件',
  `stat_date` DATE NOT NULL COMMENT '统计日期',
  PRIMARY KEY (`stat_id`)
 ) ENGINE = InnoDB DEFAULT CHARACTER SET = utf8mb4 COMMENT = '后厨计件按天统计明细';


-- -----------------------------------------------------
-- Table `t_sync_order_guider`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `t_sync_order_guider` ;
CREATE TABLE IF NOT EXISTS `t_sync_order_guider` (
 `ref_id` BIGINT NOT NULL COMMENT '关联关系ID(主键)',
 `org_id` BIGINT NOT NULL COMMENT '商户ID',
 `shop_id` BIGINT NOT NULL COMMENT '门店ID',
 `order_id` BIGINT NOT NULL COMMENT '订单ID',
 `operator_id` BIGINT NOT NULL COMMENT '导购员ID',
 `operator_name` VARCHAR(32) NOT NULL COMMENT '导购员名称',
 `created_time` TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
 `updated_time` TIMESTAMP NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '修改时间',
 PRIMARY KEY (`ref_id`)
 ) ENGINE = InnoDB DEFAULT CHARACTER SET = utf8mb4 COMMENT = '订单导购员同步';
 
 
-- -----------------------------------------------------
-- Table `t_stat_detail_guider`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `t_stat_detail_guider`;
CREATE TABLE IF NOT EXISTS `t_stat_detail_guider` (
  `stat_id` BIGINT NOT NULL COMMENT '统计ID(主键)',
  `org_id` BIGINT NOT NULL COMMENT '商户ID',
  `shop_id` BIGINT NOT NULL COMMENT '门店ID',
  `shop_name` VARCHAR(32) NOT NULL COMMENT '门店名称',
  `operator_id` BIGINT NOT NULL DEFAULT 0 COMMENT '导购员ID',
  `operator_name` VARCHAR(32) NOT NULL DEFAULT '' COMMENT '导购员名称',
  `stat_count` INT NOT NULL COMMENT '计件',
  `stat_date` DATE NOT NULL COMMENT '统计日期',
  PRIMARY KEY (`stat_id`)
 ) ENGINE = InnoDB DEFAULT CHARACTER SET = utf8mb4 COMMENT = '导购计件按天统计明细';
 
 
-- -----------------------------------------------------
-- Table `t_sync_order_channel`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `t_sync_order_channel` ;
CREATE TABLE IF NOT EXISTS `t_sync_order_channel` (
 `ref_id` BIGINT NOT NULL COMMENT '关联关系ID(主键)',
 `org_id` BIGINT NOT NULL COMMENT '商户ID',
 `shop_id` BIGINT NOT NULL COMMENT '门店ID',
 `order_id` BIGINT NOT NULL COMMENT '订单ID',
 `channel_id` BIGINT NOT NULL COMMENT '渠道ID',
 `channel_name` VARCHAR(32) NOT NULL DEFAULT '' COMMENT '渠道名称',
 `created_time` DATETIME NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
 `updated_time` DATETIME NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '修改时间',
 PRIMARY KEY (`ref_id`)
 ) ENGINE = InnoDB DEFAULT CHARACTER SET = utf8mb4 COMMENT = '订单渠道信息';
 
 
-- -----------------------------------------------------
-- Table `t_sync_order_cost`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `t_sync_order_cost` ;
CREATE TABLE IF NOT EXISTS `t_sync_order_cost` (
  `cost_id` BIGINT NOT NULL COMMENT '订单费用唯一识别ID',
  `order_id` BIGINT NOT NULL COMMENT '订单ID',
  `org_id` BIGINT NOT NULL COMMENT '商户ID',
  `shop_id` BIGINT NOT NULL COMMENT '门店ID',
  `goods_total` DECIMAL(16,2) NOT NULL COMMENT '商品合计',
  `freight` DECIMAL(12,2) NOT NULL DEFAULT 0 COMMENT '运费',
  `pack` DECIMAL(12,2) NOT NULL DEFAULT 0 COMMENT '打包费',
  `discount_amount` DECIMAL(12,2) NOT NULL DEFAULT 0 COMMENT '折扣金额',
  `order_total` DECIMAL(16,2) NOT NULL COMMENT '订单总金额',
  `account_payable` DECIMAL(16,2) NOT NULL COMMENT '应付款金额',
  `created_time` DATETIME NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `updated_time` DATETIME NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '修改时间',
  PRIMARY KEY (`cost_id`)
) ENGINE = InnoDB DEFAULT CHARACTER SET = utf8mb4 COMMENT = '订单费用信息';
 
 
 -- -----------------------------------------------------
-- Table `t_sync_order_discount`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `t_sync_order_discount` ;
CREATE TABLE IF NOT EXISTS `t_sync_order_discount` (
  `dis_id` BIGINT NOT NULL COMMENT '优惠唯一识别ID',
  `order_id` BIGINT NOT NULL COMMENT '订单ID',
  `org_id` BIGINT NOT NULL COMMENT '商户ID',
  `shop_id` BIGINT NOT NULL COMMENT '门店ID',
  `type` TINYINT NOT NULL COMMENT '优惠类型。1优惠券；2积分抵扣；3活动优惠；4打折；5减免；6抹零；7赠送',
  `amount` DECIMAL(12,2) NOT NULL DEFAULT 0 COMMENT '优惠金额',
  `created_time` DATETIME NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `updated_time` DATETIME NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '修改时间',
  PRIMARY KEY (`dis_id`)
) ENGINE = InnoDB DEFAULT CHARACTER SET = utf8mb4 COMMENT = '订单优惠信息';
 
 
 -- ----------------------------
-- Table structure for t_sync_order_pay
-- ----------------------------
DROP TABLE IF EXISTS `t_sync_order_pay`;
CREATE TABLE `t_sync_order_pay`  (
  `pay_id` BIGINT NOT NULL COMMENT '支付ID（主键）',
  `order_id` BIGINT NOT NULL COMMENT '订单ID',
  `pay_amount` DECIMAL(16,2) NOT NULL COMMENT '支付金额',
  `real_pay_amount` DECIMAL(16,2) NOT NULL DEFAULT 0 COMMENT '实际支付金额',
  `discount_amount` DECIMAL(16,2) NOT NULL DEFAULT 0 COMMENT '支付优惠金额',
  `pay_type` TINYINT NOT NULL DEFAULT 0 COMMENT '支付方式。0未支付。1商城会员；2现金；3网付；',
  `pay_status` TINYINT NOT NULL DEFAULT 0 COMMENT '支付状态。 0未支付；1正在支付；2支付超时；3支付失败；4取消支付；5已支付；',
  `bill_no` VARCHAR(32) NOT NULL DEFAULT '' COMMENT '支付网关流水号',
  `remark` VARCHAR(255) NOT NULL DEFAULT '' COMMENT '备注',
  `org_id` BIGINT NOT NULL DEFAULT 0 COMMENT '商户ID',
  `shop_id` BIGINT NOT NULL DEFAULT 0 COMMENT '门店ID',
  `member_id` BIGINT NOT NULL DEFAULT 0 COMMENT '会员ID',
  `vip_card_id` BIGINT NOT NULL DEFAULT 0 COMMENT '大客户卡ID',
  `created_time` DATETIME NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `updated_time` DATETIME NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '修改时间',
  PRIMARY KEY (`pay_id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COMMENT = '订单支付信息';

 
-- -----------------------------------------------------
-- Table `t_sync_meal_basis`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `t_sync_meal_basis` ;
CREATE TABLE IF NOT EXISTS `t_sync_meal_basis` (
  `meal_id` BIGINT NOT NULL COMMENT '点餐ID',
  `org_id` BIGINT NOT NULL COMMENT '商户ID',
  `shop_id` BIGINT NOT NULL COMMENT '门店ID',
  `shop_name` VARCHAR(32) NOT NULL COMMENT '门店名称',
  `table_id` BIGINT NOT NULL COMMENT '桌子ID',
  `table_code` VARCHAR(18) NOT NULL COMMENT '桌子编号',
  `people_count` INT NOT NULL DEFAULT 0 COMMENT '进餐人数',
  `order_count` INT NOT NULL DEFAULT 1 COMMENT '订单个数',
  `goods_quantity` DECIMAL(16,2) NOT NULL DEFAULT 0 COMMENT '商品总数量',
  `meal_amount` DECIMAL(18,2) NOT NULL DEFAULT 0 COMMENT '餐费总金额',
  `pay_amount` DECIMAL(18,2) NOT NULL DEFAULT 0 COMMENT '餐费实付总金额',
  `meal_status` SMALLINT NOT NULL DEFAULT 0 COMMENT '进餐状态。0进餐中；1已完成',
  `create_time` DATETIME NULL DEFAULT CURRENT_TIMESTAMP COMMENT '提交时间',
  `updated_time` DATETIME NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '修改时间',
  PRIMARY KEY (`meal_id`)
) ENGINE = InnoDB DEFAULT CHARACTER SET = utf8mb4 COMMENT = '点餐基本信息';


-- -----------------------------------------------------
-- Table `t_stat_opn_basis`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `t_stat_opn_basis`;
CREATE TABLE IF NOT EXISTS `t_stat_opn_basis` (
  `stat_id` BIGINT NOT NULL COMMENT '统计ID(主键)',
  `org_id` BIGINT NOT NULL COMMENT '商户ID',
  `shop_id` BIGINT NOT NULL COMMENT '门店ID',
  `shop_name` VARCHAR(32) NOT NULL COMMENT '门店名称',
  `order_count` INT NOT NULL COMMENT '订单个数',
  `order_done_count` INT NOT NULL default 0 COMMENT '已完成订单个数',
  `goods_quantity` DECIMAL(18,2) NOT NULL DEFAULT 0 COMMENT '商品总数量',
  `goods_income` DECIMAL(18,2) NOT NULL COMMENT '商品销售实收',
  `freight_income` DECIMAL(18,2) NOT NULL COMMENT '运费实收',
  `pack_income` DECIMAL(18,2) NOT NULL DEFAULT 0 COMMENT '打包费实收',
  `prepaid_amount` DECIMAL(18,2) NOT NULL COMMENT '充值金额',
  `damage_amount` DECIMAL(18,2) NOT NULL COMMENT '报损金额',
  `discount_amount` DECIMAL(18,2) NOT NULL COMMENT '优惠总额',
  `refund_amount` DECIMAL(18,2) NOT NULL COMMENT '退款总额',
  `income_amount` DECIMAL(18,2) NOT NULL COMMENT '营业实收(订单实收-优惠-退款)',
  `os_income` DECIMAL(18,2) NOT NULL COMMENT '当天未达账。OS：outstanding缩写，未清偿',
  `sales_amount` DECIMAL(18,2) NOT NULL COMMENT '营业总额(充值额+商品销售额+运费)',
  `start_dt` DATETIME NOT NULL COMMENT '统计开始日期时间',
  `end_dt` DATETIME NOT NULL COMMENT '统计结束日期时间',
  `stat_date` DATE NOT NULL COMMENT '统计日期',
  `update_time` DATETIME NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '修改时间',
  PRIMARY KEY (`stat_id`),
  UNIQUE INDEX `idx_date`(`shop_id`, `stat_date`) 
 ) ENGINE = InnoDB DEFAULT CHARACTER SET = utf8mb4 COMMENT = '门店经营统计';

 
-- -----------------------------------------------------
-- Table `t_stat_opn_discount`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `t_stat_opn_discount`;
CREATE TABLE IF NOT EXISTS `t_stat_opn_discount` (
  `stat_id` BIGINT NOT NULL COMMENT '统计ID',
  `org_id` BIGINT NOT NULL COMMENT '商户ID',
  `shop_id` BIGINT NOT NULL COMMENT '门店ID',
  `discount_type` TINYINT NOT NULL COMMENT '优惠方式。',
  `order_count` INT NOT NULL COMMENT '订单个数',
  `amount` DECIMAL(18,2) NOT NULL COMMENT '销售总额',
  `stat_date` DATE NOT NULL COMMENT '统计日期',
  PRIMARY KEY (`stat_id`, `discount_type`)
 ) ENGINE = InnoDB DEFAULT CHARACTER SET = utf8mb4 COMMENT = '门店经营优惠统计';
 
 
-- -----------------------------------------------------
-- Table `t_stat_opn_pay`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `t_stat_opn_pay`;
CREATE TABLE IF NOT EXISTS `t_stat_opn_pay` (
  `stat_id` BIGINT NOT NULL COMMENT '统计ID',
  `org_id` BIGINT NOT NULL COMMENT '商户ID',
  `shop_id` BIGINT NOT NULL COMMENT '门店ID',
  `pay_type` TINYINT NOT NULL COMMENT '支付方式。0未支付。1商城会员；2现金；3网付；4微信；5支付宝；10VIP实体卡；31建行；98渠道单',
  `pay_count` INT NOT NULL default 0 COMMENT '付款订单个数',
  `refund_count` INT NOT NULL default 0 COMMENT '退款订单个数',
  `order_count` INT NOT NULL default 0 COMMENT '剩余订单个数',
  `pay_amount` DECIMAL(18,2) NOT NULL default 0 COMMENT '收款总额',
  `refund_amount` DECIMAL(18,2) NOT NULL default 0 COMMENT '退款总额',
  `amount` DECIMAL(18,2) NOT NULL default 0 COMMENT '实际收款总额',
  `stat_date` DATE NOT NULL COMMENT '统计日期',
  PRIMARY KEY (`stat_id`, `pay_type`)
 ) ENGINE = InnoDB DEFAULT CHARACTER SET = utf8mb4 COMMENT = '门店经营支付统计';

 
-- -----------------------------------------------------
-- Table `t_stat_opn_channel`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `t_stat_opn_channel`;
CREATE TABLE IF NOT EXISTS `t_stat_opn_channel` (
  `stat_id` BIGINT NOT NULL COMMENT '统计ID',
  `org_id` BIGINT NOT NULL COMMENT '商户ID',
  `shop_id` BIGINT NOT NULL COMMENT '门店ID',
  `channel_id` BIGINT NOT NULL COMMENT '渠道ID。-2POS机；-1APP订单；大于0是渠道表ID',
  `channel_name` VARCHAR(32) NOT NULL DEFAULT '' COMMENT '渠道名称',
  `pay_count` INT NOT NULL default 0 COMMENT '付款订单个数',
  `refund_count` INT NOT NULL default 0 COMMENT '退款订单个数',
  `order_count` INT NOT NULL default 0 COMMENT '剩余订单个数',
  `pay_amount` DECIMAL(18,2) NOT NULL default 0 COMMENT '收款总额',
  `refund_amount` DECIMAL(18,2) NOT NULL default 0 COMMENT '退款总额',
  `amount` DECIMAL(18,2) NOT NULL default 0 COMMENT '实际收款总额',
  `stat_date` DATE NOT NULL COMMENT '统计日期',
  PRIMARY KEY (`stat_id`, `channel_id`)
 ) ENGINE = InnoDB DEFAULT CHARACTER SET = utf8mb4 COMMENT = '门店经营渠道统计';
 
  
-- -----------------------------------------------------
-- Table `t_stat_opn_dine_in`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `t_stat_opn_dine_in`;
CREATE TABLE IF NOT EXISTS `t_stat_opn_dine_in` (
  `stat_id` BIGINT NOT NULL COMMENT '统计ID',
  `org_id` BIGINT NOT NULL COMMENT '商户ID',
  `shop_id` BIGINT NOT NULL COMMENT '门店ID',
  `order_count` INT NOT NULL COMMENT '订单个数',
  `amount` DECIMAL(18,2) NOT NULL COMMENT '销售总额',
  `people_count` INT NOT NULL COMMENT '来客数',
  `table_count` INT NOT NULL COMMENT '开桌数',
  `people_avg` DECIMAL(18,2) NOT NULL COMMENT '人均消费',
  `table_avg` DECIMAL(18,2) NOT NULL COMMENT '桌均消费',
  `stat_date` DATE NOT NULL COMMENT '统计日期',
  PRIMARY KEY (`stat_id`)
 ) ENGINE = InnoDB DEFAULT CHARACTER SET = utf8mb4 COMMENT = '门店经营堂食统计';
 
 
-- -----------------------------------------------------
-- Table `t_stat_opn_diy_cost`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `t_stat_opn_diy_cost` ;
CREATE TABLE IF NOT EXISTS `t_stat_opn_diy_cost` (
  `stat_id` BIGINT NOT NULL COMMENT '统计ID',
  `org_id` BIGINT NOT NULL COMMENT '商户ID',
  `shop_id` BIGINT NOT NULL COMMENT '门店ID',
  `type_id` BIGINT NOT NULL COMMENT '费用类型ID',
  `type_name` VARCHAR(32) NOT NULL COMMENT '类型名称',
  `amount` DECIMAL(10,2) NOT NULL DEFAULT 0 COMMENT '金额',
  `stat_date` DATE NOT NULL COMMENT '统计日期',
  `created_time` DATETIME NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `updated_time` DATETIME NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '修改时间',
  PRIMARY KEY (`stat_id`, `type_id`)
) ENGINE = InnoDB DEFAULT CHARACTER SET = utf8mb4 COMMENT = '日报表订单自定义费用统计';
 
 
 -- -----------------------------------------------------
-- Table `t_stat_pay`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `t_stat_pay`;
CREATE TABLE IF NOT EXISTS `t_stat_pay` (
  `stat_id` BIGINT NOT NULL COMMENT '统计ID',
  `org_id` BIGINT NOT NULL COMMENT '商户ID',
  `shop_id` BIGINT NOT NULL COMMENT '门店ID',
  `pay_type` TINYINT NOT NULL COMMENT '支付方式。1商城会员；2现金；3网付；4微信；5支付宝; 10VIP实体卡；31建行；32银联；98渠道单',
  `pay_amount` DECIMAL(18,2) NOT NULL default 0 COMMENT '收款发生数',
  `refund_amount` DECIMAL(18,2) NOT NULL default 0 COMMENT '退款总额',
  `remain_amount` DECIMAL(18,2) NOT NULL default 0 COMMENT '剩余收款总额',
  `biz_type` TINYINT NOT NULL COMMENT '业务类型。1订单；2充值；',
  `stat_date` DATE NOT NULL COMMENT '统计日期',
  `created_time` DATETIME NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `updated_time` DATETIME NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '修改时间',
  PRIMARY KEY (`stat_id`),
  UNIQUE INDEX `idx_date`(`shop_id`, `pay_type`, `biz_type`, `stat_date`) 
 ) ENGINE = InnoDB DEFAULT CHARACTER SET = utf8mb4 COMMENT = '支付统计';
 
 
  -- -----------------------------------------------------
-- Table `t_stat_pay_channel`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `t_stat_pay_channel`;
CREATE TABLE IF NOT EXISTS `t_stat_pay_channel` (
  `channel_id` BIGINT NOT NULL COMMENT '渠道ID',
  `org_id` BIGINT NOT NULL COMMENT '商户ID',
  `shop_id` BIGINT NOT NULL COMMENT '门店ID',
  `channel_name` VARCHAR(32) NOT NULL DEFAULT '' COMMENT '渠道名称',
  `pay_amount` DECIMAL(18,2) NOT NULL default 0 COMMENT '收款发生数',
  `refund_amount` DECIMAL(18,2) NOT NULL default 0 COMMENT '退款总额',
  `remain_amount` DECIMAL(18,2) NOT NULL default 0 COMMENT '剩余收款总额',
  `biz_type` TINYINT NOT NULL COMMENT '业务类型。1订单；2充值；',
  `stat_date` DATE NOT NULL COMMENT '统计日期',
  `created_time` DATETIME NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `updated_time` DATETIME NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '修改时间',
  PRIMARY KEY (`shop_id`, `channel_id`, `biz_type`, `stat_date`)
 ) ENGINE = InnoDB DEFAULT CHARACTER SET = utf8mb4 COMMENT = '渠道支付统计';
 
 
 
 
 
 