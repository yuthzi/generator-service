package com.yuth.tower.service.impl;

import java.io.IOException;
import java.sql.Connection;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import java.util.HashSet;
import java.util.List;
import java.util.Map;
import java.util.Set;

import javax.sql.DataSource;

import org.springframework.beans.factory.annotation.Value;
import org.springframework.jdbc.datasource.DataSourceUtils;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.github.pagehelper.Page;
import com.yuth.code.CodeGenerator;
import com.yuth.code.db.mgr.DBManager;
import com.yuth.code.db.mgr.dto.Table;
import com.yuth.code.db.mgr.dto.TypeMapping;
import com.yuth.code.db.model.EntityModel;
import com.yuth.code.model.ConfigModel;
import com.yuth.code.model.GenResultModel;
import com.yuth.code.utils.StringUtil;
import com.yuth.tower.dao.entity.SysTableDO;
import com.yuth.tower.dao.entity.ValueConst;
import com.yuth.tower.dao.entity.query.SysTableQueryDO;
import com.yuth.tower.dao.mapper.SysTableMapper;
import com.yuth.tower.service.api.SysTableService;
import com.yuth.tower.service.factory.SysTableFactory;
import com.yuth.tower.service.model.SysTableModel;
import com.yuth.tower.service.model.query.SysTableQuery;
import com.yuth.tower.service.model.rsp.CodeGenRsp;
import com.yuth.tower.service.model.rsp.ReturnList;
import com.yuth.tower.service.model.rsp.SysTableRsp;
import com.yuth.tower.service.util.Const;
import com.yuth.tower.service.util.DateUtil;
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

    private final DataSource dataSource;

    @Value("${generator.code.schema}")
    private String schema;

    @Value("${generator.tmp.dir}")
    private String tmpDir;

    @Value("${generator.table.ignore:}")
    private String ignoreTable;

    @Value("${generator.template.dir:/}")
    private String templateDir;


    @Override
    public int add(SysTableModel model, boolean toGenId) {
        if (model == null) {
            return Const.DBSingleSuccess.NO;
        }

        SysTableDO record = SysTableFactory.createDOIns(model, toGenId);
        return mapper.insert(record);
    }

    @Override
    @Transactional(rollbackFor = { Exception.class })
    public int batchAdd(List<SysTableModel> models, boolean toGenId) {
        if (models == null || models.isEmpty()) {
            return Const.DBSingleSuccess.NO;
        }

        List<SysTableDO> records = SysTableFactory.createDOInsByModel(models, toGenId);
        return mapper.batchInsert(records);
    }

    @Override
    @Transactional(rollbackFor = { Exception.class })
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
    @Transactional(rollbackFor = { Exception.class })
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

    @Override
    public void sync() {
        Connection conn = DataSourceUtils.getConnection(dataSource);
        List<Table> tables = null;
        try {
            tables = DBManager.getAllTable(conn, schema);
        } catch (SQLException e) {
            throw new RuntimeException("获取表信息遇到问题：" + e.getMessage(), e);
        }

        ConfigModel cfg = getConfig();

        Set<String> ignore = getIgnoreTable();
        List<SysTableModel> models = new ArrayList<>(tables.size());
        for (Table t : tables) {
            if (ignore.contains(t.getTableName())) {
                continue;
            }

            SysTableModel m = new SysTableModel();
            SysTableFactory.buildId4Bean(m);
            m.setTableName(t.getTableName());

            String entityName = StringUtil.removePrefix(t.getTableName(), cfg.getTableRemovePre());
            entityName = StringUtil.getCamelCaseString(entityName, true);
            m.setEntityName(entityName);
            m.setMemo(t.getRemarks());
            m.setGmtCreate(DateUtil.getNowDateTime());
            m.setGmtModified(m.getGmtCreate());
            m.setTenantId(ValueConst.TENANT_DEFUAL);

            models.add(m);
        }

        batchAddOrModify(models);
    }

    // TOTO 限制频率
    @Override
    public List<CodeGenRsp> preview(String tableId) {
        SysTableModel table = querySingle(tableId);
        ConfigModel cfg = getConfig();
        cfg.setWriteFile(false);
        TypeMapping typeMapping = new TypeMapping(cfg.getTypeMappingPath());
        Connection conn = DataSourceUtils.getConnection(dataSource);

        EntityModel entity = null;
        try {
            entity = DBManager.getTable(conn, schema, table.getTableName(), typeMapping, cfg.getTableRemovePre());
        } catch (SQLException e) {
            throw new RuntimeException("生成代码遇到问题：" + e.getMessage(), e);
        }

        Map<String, List<GenResultModel>> pathMap = null;
        try {
            pathMap = CodeGenerator.gen(cfg, Collections.singletonList(entity));
        } catch (Exception e) {
            throw new RuntimeException("生成代码遇到问题：" + e.getMessage(), e);
        }

        List<GenResultModel> codes = pathMap.get(entity.getTableName());
        List<CodeGenRsp> rspList = new ArrayList<>(codes.size());
        for (GenResultModel e : codes) {
            rspList.add(new CodeGenRsp(e.getName(), e.getCode()));
        }

        return rspList;
    }

    private ConfigModel getConfig() {
        try {

            ConfigModel cfg = ConfigModel.parse("/genrator_config.json");
            cfg.setTemplateDir(templateDir);

            return cfg;
        } catch (IOException e) {
            throw new RuntimeException("获取生成器配置遇到问题：" + e.getMessage(), e);
        }
    }

    private Set<String> getIgnoreTable() {
        String[] cols = ignoreTable.split(",\\s*");

        return new HashSet<>(Arrays.asList(cols));
    }
}
