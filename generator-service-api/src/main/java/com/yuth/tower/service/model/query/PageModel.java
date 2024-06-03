package com.yuth.tower.service.model.query;

import com.fasterxml.jackson.annotation.JsonInclude;
import com.github.pagehelper.Page;
import com.github.pagehelper.PageHelper;

import io.swagger.annotations.ApiModel;
import io.swagger.annotations.ApiModelProperty;

@JsonInclude(JsonInclude.Include.NON_NULL)
@ApiModel(description = "分页实体类")
public class PageModel {

    @ApiModelProperty(value = "当前页码", name = "pageNum")
    private int pageNum;

    @ApiModelProperty(value = "每页记录数", name = "pageSize")
    private int pageSize;

    public static final int FIRST_PAGE_NUM = 1;


    public Page<Object> forcePage() {
        if (pageNum < FIRST_PAGE_NUM) {
            pageNum = FIRST_PAGE_NUM;
        }

        if (pageSize <= 0 || pageSize > 10000) {
            pageSize = 10;
        }

        return PageHelper.startPage(pageNum, pageSize);
    }

    public int getPageNum() {
        return pageNum;
    }

    public void setPageNum(int pageNum) {
        this.pageNum = pageNum;
    }

    public int getPageSize() {
        return pageSize;
    }

    public void setPageSize(int pageSize) {
        this.pageSize = pageSize;
    }

}
