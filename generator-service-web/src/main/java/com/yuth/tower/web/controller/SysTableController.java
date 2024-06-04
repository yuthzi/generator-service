package com.yuth.tower.web.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.DeleteMapping;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.PutMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import com.yuth.tower.service.api.SysTableService;
import com.yuth.tower.service.model.SysTableModel;
import com.yuth.tower.service.model.query.SysTableQuery;
import com.yuth.tower.service.model.rsp.ResponseResult;
import com.yuth.tower.service.model.rsp.ReturnList;
import com.yuth.tower.service.model.rsp.SysTableRsp;

import io.swagger.annotations.Api;
import io.swagger.annotations.ApiOperation;

/**
 * 表信息(SysTable)表控制层
 *
 * @author yuth
 * @since 2024-06-03 16:32:41
 */
@Api(tags = "表信息")
@RestController
@RequestMapping("/admin/sys/table")
public class SysTableController {

    @Autowired
    private SysTableService service;


    @ApiOperation("添加表信息")
    @PostMapping("/add")
    public ResponseResult<Integer> addSysTable(@RequestBody SysTableModel model) throws Exception {

        Integer result = service.add(model, true);
        return ResponseResult.ok("添加表信息成功！", result);
    }

    @ApiOperation("修改表信息")
    @PutMapping("/modify")
    public ResponseResult<Integer> modifySysTable(@RequestBody SysTableModel model) throws Exception {

        int result = service.modify(model);
        return ResponseResult.ok("修改表信息成功！", result);
    }

    @ApiOperation("批量修改或更新表信息")
    @PostMapping("/batAddOrModify")
    public ResponseResult<Integer> batAddOrModify(@RequestBody List<SysTableModel> models) throws Exception {

        int result = service.batchAddOrModify(models);
        return ResponseResult.ok("批量修改或更新表信息成功！", result);
    }

    @ApiOperation("移除表信息")
    @DeleteMapping("/remove/{id}")
    public ResponseResult<Integer> removeSysTable(@PathVariable("id") String tableId) throws Exception {

        int result = service.remove(tableId);
        return ResponseResult.ok("移除表信息成功！", result);
    }

    @ApiOperation("批量移除表信息")
    @DeleteMapping("/batchRemove")
    public ResponseResult<Integer> batchRemoveSysTable(@RequestBody List<String> tableIds) throws Exception {

        int result = service.batchRemove(tableIds);
        return ResponseResult.ok("移除表信息成功！", result);
    }

    @ApiOperation("查询表信息列表")
    @PostMapping("/list")
    public ResponseResult<ReturnList<SysTableRsp>> querySysTableList(@RequestBody SysTableQuery model) {

        ReturnList<SysTableRsp> result = service.queryList(model);
        return ResponseResult.ok("查询表信息列表成功！", result);
    }

    @ApiOperation("查询指定ID的表信息")
    @GetMapping("/single/{id}")
    public ResponseResult<SysTableModel> querySingleSysTable(@PathVariable("id") String tableId) throws Exception {

        SysTableModel result = service.querySingle(tableId);
        return ResponseResult.ok("查询指定表信息成功！", result);
    }

    @ApiOperation("同步表信息")
    @PostMapping("/sync")
    public ResponseResult<String> sync() {
        service.sync();
        return ResponseResult.ok("查询表信息列表成功！");
    }

}
