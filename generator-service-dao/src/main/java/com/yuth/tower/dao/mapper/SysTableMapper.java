package com.yuth.tower.dao.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Param;

import com.yuth.tower.dao.entity.SysTableDO;
import com.yuth.tower.dao.entity.query.SysTableQueryDO;

/**
 * 表信息(SysTable)数据库访问层
 *
 * @author yuth
 * @since 2024-06-03 16:32:41
 */
@Mapper
public interface SysTableMapper {

    /**
     * 根据主键删除记录
     *
     * @param tableId 主键
     * @return 影响行数
     */
    int delete(@Param("tableId") String tableId);

    int batchDelete(@Param("list") List<String> tableIds);

    /**
     * 根据主键查询
     *
     * @param tableId 主键
     */
    SysTableDO findById(@Param("tableId") String tableId);

    List<SysTableDO> findByIds(@Param("list") List<String> tableIds);

    /** 根据条件查询列表 */
    List<SysTableDO> findByCondition(SysTableQueryDO query);

    /**
     * 插入选择的字段
     *
     * @return 影响行数
     */
    int insert(SysTableDO record);

    /**
     * 批量插入所有字段
     *
     * @return 影响行数
     */
    int batchInsert(List<SysTableDO> list);

    /**
     * 根据主键更新选择的字段
     *
     * @return 影响行数
     */
    int update(SysTableDO record);

    /**
     * 批量更新
     *
     * @return 影响行数
     */
    int batchUpdate(List<SysTableDO> list);

    /**
     * 批量根据主键插入或者更新
     *
     * @return 影响行数
     */
    int batchInsertOrUpdate(List<SysTableDO> list);
}
