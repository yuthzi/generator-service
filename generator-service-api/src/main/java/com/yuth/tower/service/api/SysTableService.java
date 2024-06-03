package com.yuth.tower.service.api;

import java.util.List;

import com.yuth.tower.service.model.rsp.ReturnList;

import com.yuth.tower.service.model.SysTableModel;
import com.yuth.tower.service.model.rsp.SysTableRsp;
import com.yuth.tower.service.model.query.SysTableQuery;

/**
 * 表信息(SysTable)服务接口
 *
 * @author yuth
 * @since 2024-06-03 16:32:41
 */
public interface SysTableService {

    int add(SysTableModel model, boolean toGenId);

    int batchAdd(List<SysTableModel> models, boolean toGenId);

    int batchAddOrModify(List<SysTableModel> models);

    int modify(SysTableModel model);

    int batchModify(List<SysTableModel> models);

    int remove(String tableId);

    int batchRemove(List<String> tableIds);

    SysTableModel querySingle(String tableId);

    List<SysTableModel> queryByIds(List<String> tableIds);

    ReturnList<SysTableRsp> queryList(SysTableQuery model);
}
