-- 创建数据库
CREATE DATABASE IF NOT EXISTS db_yuth_tower CHARACTER SET utf8mb4;
SET NAMES utf8mb4;
USE db_yuth_tower;



SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;



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
  PRIMARY KEY (`table_id`),
  UNIQUE INDEX `idx_table_name`(`tenant_id`, `table_name`) USING BTREE
) ENGINE = InnoDB DEFAULT CHARACTER SET = utf8mb4 COMMENT = '表信息';








SET FOREIGN_KEY_CHECKS = 1;