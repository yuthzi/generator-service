package com.yuth.tower.dao.entity.query;

import java.util.List;

import lombok.Data;
import lombok.EqualsAndHashCode;
import lombok.NoArgsConstructor;

/**
 * 表信息(SysTable)QueryDO实体类
 *
 * @author yuth
 * @since 2024-06-03 16:32:41
 */
@Data
@EqualsAndHashCode(callSuper = false)
@NoArgsConstructor
public class SysTableQueryDO {

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

    /** 创建时间范围搜索。如果有值，是一个长度为2的数组。格式：[开始时间， 结束时间] */
    private List<String> gmtCreate;

    /** 更新时间范围搜索。如果有值，是一个长度为2的数组。格式：[开始时间， 结束时间] */
    private List<String> gmtModified;
}
