package com.yuth.tower.service.model.query;

import java.util.List;

import io.swagger.annotations.ApiModel;
import io.swagger.annotations.ApiModelProperty;

import lombok.Data;
import lombok.EqualsAndHashCode;
import lombok.NoArgsConstructor;

/**
 * 表信息查询模型
 *
 * @author yuth
 * @since 2024-06-03 16:32:41
 */
@Data
@EqualsAndHashCode(callSuper = false)
@NoArgsConstructor
@ApiModel(value = "表信息查询")
public class SysTableQuery extends PageModel {

    @ApiModelProperty("表id")
    private String tableId;

    @ApiModelProperty("租户ID")
    private String tenantId;

    @ApiModelProperty("表名")
    private String tableName;

    @ApiModelProperty("实体名。默认由表名生成")
    private String entityName;

    @ApiModelProperty("表注释")
    private String memo;

    @ApiModelProperty("创建时间范围搜索。如果有值，是一个长度为2的数组。格式：[开始时间， 结束时间]")
    private List<String> gmtCreate;

    @ApiModelProperty("更新时间范围搜索。如果有值，是一个长度为2的数组。格式：[开始时间， 结束时间]")
    private List<String> gmtModified;
}
