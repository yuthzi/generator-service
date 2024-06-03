package com.yuth.tower.dao.entity;

import lombok.Data;
import lombok.EqualsAndHashCode;
import lombok.NoArgsConstructor;

/**
 * 表信息(SysTable)DO实体类
 *
 * @author yuth
 * @since 2024-06-03 16:32:41
 */
@Data
@EqualsAndHashCode(callSuper = false)
@NoArgsConstructor
public class SysTableDO {

    /** 表id */
    private String tableId;

    /** 租户ID */
    private String tenantId;

    /** 表名 */
    private String tableName;

    /** 实体名。默认由表名生成 */
    private String entityName;

    /** 表注释 */
    private String memo;

    /** 创建时间 */
    private String gmtCreate;

    /** 更新时间 */
    private String gmtModified;
}
