package com.yuth.tower.service.impl;

import java.util.Collections;
import java.util.List;

import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.yuth.tower.service.model.rsp.ReturnList;
import com.github.pagehelper.Page;
import com.yuth.tower.service.model.SysTableModel;
import com.yuth.tower.service.model.rsp.SysTableRsp;
import com.yuth.tower.service.model.query.SysTableQuery;

import com.yuth.tower.service.api.SysTableService;
import com.yuth.tower.dao.entity.SysTableDO;
import com.yuth.tower.dao.entity.query.SysTableQueryDO;
import com.yuth.tower.dao.mapper.SysTableMapper;
import com.yuth.tower.service.factory.SysTableFactory;
import com.yuth.tower.service.util.Const;

import com.yuth.tower.service.util.PageUtil;
import com.yuth.tower.service.util.PropertyUtil;

import lombok.RequiredArgsConstructor;

/**
 * 表信息(SysTable)服务实现类
 *
 * @author yuth
 * @since 2024-06-03 16:32:41
 */
@Service
@RequiredArgsConstructor
public class SysTableServiceImpl implements SysTableService {

    private final SysTableMapper mapper;

    @Override
    public int add(SysTableModel model, boolean toGenId) {
        if (model == null) {
            return Const.DBSingleSuccess.NO;
        }

        SysTableDO record = SysTableFactory.createDOIns(model, toGenId);
        return mapper.insert(record);
    }

    @Override
    @Transactional(rollbackFor = {Exception.class})
    public int batchAdd(List<SysTableModel> models, boolean toGenId) {
        if (models == null || models.isEmpty()) {
            return Const.DBSingleSuccess.NO;
        }

        List<SysTableDO> records = SysTableFactory.createDOInsByModel(models, toGenId);
        return mapper.batchInsert(records);
    }

    @Override
    @Transactional(rollbackFor = {Exception.class})
    public int batchAddOrModify(List<SysTableModel> models) {
        if (models == null || models.isEmpty()) {
            return Const.DBBatchSize.EMPTY;
        }

        List<SysTableDO> records = SysTableFactory.createDOInsByModel(models);
        return mapper.batchInsertOrUpdate(records);
    }

    @Override
    public int modify(SysTableModel model) {
        SysTableDO record = PropertyUtil.createIns(model, SysTableDO.class);
        return mapper.update(record);
    }

    @Override
    @Transactional(rollbackFor = {Exception.class})
    public int batchModify(List<SysTableModel> models) {
        if (models == null || models.isEmpty()) {
            return Const.DBBatchSize.EMPTY;
        }

        List<SysTableDO> records = PropertyUtil.createIns(models, SysTableDO.class);
        return mapper.batchUpdate(records);
    }

    @Override
    public int remove(String tableId) {
        return mapper.delete(tableId);
    }

    @Override
    public int batchRemove(List<String> tableIds) {
        if (tableIds == null || tableIds.isEmpty()) {
            return Const.DBBatchSize.EMPTY;
        }

        return mapper.batchDelete(tableIds);
    }

    @Override
    public SysTableModel querySingle(String tableId) {
        SysTableDO record = mapper.findById(tableId);

        return PropertyUtil.createIns(record, SysTableModel.class);
    }

    @Override
    public List<SysTableModel> queryByIds(List<String> tableIds) {
        if (tableIds == null || tableIds.isEmpty()) {
            return Collections.emptyList();
        }

        List<SysTableDO> records = mapper.findByIds(tableIds);
        return PropertyUtil.createIns(records, SysTableModel.class);
    }

    @Override
    public ReturnList<SysTableRsp> queryList(SysTableQuery model) {
        SysTableQueryDO queryDO = PropertyUtil.createIns(model, SysTableQueryDO.class);
        Page<SysTableRsp> page = PageUtil.preparePage(model);
        List<SysTableDO> list = mapper.findByCondition(queryDO);
        List<SysTableRsp> rspList = PropertyUtil.createIns(list, SysTableRsp.class);

        return PageUtil.newRet(page, rspList);
    }
}
