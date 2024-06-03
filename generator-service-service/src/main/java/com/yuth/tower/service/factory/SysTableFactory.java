package com.yuth.tower.service.factory;

import java.util.List;
import java.util.stream.Collectors;

import org.springframework.util.StringUtils;

import com.yuth.tower.service.model.SysTableModel;
import com.yuth.tower.dao.entity.SysTableDO;
import com.yuth.tower.service.util.PropertyUtil;
import com.yuth.tower.service.util.PKUtil;

/**
 * 表信息(SysTable)工厂类
 *
 * @author yuth
 * @since 2024-06-03 16:32:41
 */
public class SysTableFactory {

    public static List<SysTableDO> createDOInsByModel(List<SysTableModel> list, boolean toGenId) {
        return list.stream().map(e -> createDOIns(e, toGenId)).collect(Collectors.toList());
    }

    public static List<SysTableDO> createDOInsByModel(List<SysTableModel> list) {
        return list.stream().map(e -> createDOIns(e)).collect(Collectors.toList());
    }

    public static SysTableDO createDOIns(SysTableModel model) {
        return createDOIns(model, StringUtils.hasText(model.getTableId()));
    }

    public static SysTableDO createDOIns(SysTableModel model, boolean toGenId) {
        SysTableDO record = new SysTableDO();
        PropertyUtil.copyProperty(record, model);
        if (toGenId) {
            buildId4Bean(record);
            model.setTableId(record.getTableId());
        }

        return record;
    }

    public static void buildId4Bean(Object obj) {
        PKUtil.buildId4Bean(obj, "tableId");
    }
}
