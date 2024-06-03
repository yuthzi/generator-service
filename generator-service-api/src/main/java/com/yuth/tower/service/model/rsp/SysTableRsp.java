package com.yuth.tower.service.model.rsp;

import io.swagger.annotations.ApiModel;
import io.swagger.annotations.ApiModelProperty;

import lombok.Data;
import lombok.EqualsAndHashCode;
import lombok.NoArgsConstructor;

/**
 * 表信息列表响应模型
 *
 * @author yuth
 * @since 2024-06-03 16:32:41
 */
@Data
@EqualsAndHashCode(callSuper = false)
@NoArgsConstructor
@ApiModel(value = "表信息响应")
public class SysTableRsp {

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

    @ApiModelProperty("创建时间")
    private String gmtCreate;

    @ApiModelProperty("更新时间")
    private String gmtModified;
}
