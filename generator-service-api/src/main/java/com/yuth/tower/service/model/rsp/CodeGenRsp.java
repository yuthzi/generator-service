package com.yuth.tower.service.model.rsp;

import io.swagger.annotations.ApiModel;
import io.swagger.annotations.ApiModelProperty;
import lombok.Data;
import lombok.EqualsAndHashCode;
import lombok.NoArgsConstructor;

/**
 * @author yuth
 * @since 2024-06-04 16:06:53
 */
@Data
@EqualsAndHashCode(callSuper = false)
@NoArgsConstructor
@ApiModel(value = "生成代码响应")
public class CodeGenRsp {

    @ApiModelProperty("名称")
    private String name;

    @ApiModelProperty("代码")
    private String code;


    public CodeGenRsp(String name, String code) {
        super();
        this.name = name;
        this.code = code;
    }

}
