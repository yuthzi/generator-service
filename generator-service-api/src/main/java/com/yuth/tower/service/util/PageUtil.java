/**
 * 
 */
package com.yuth.tower.service.util;

import java.util.ArrayList;
import java.util.List;
import java.util.function.Function;

import com.github.pagehelper.Page;
import com.github.pagehelper.PageHelper;
import com.yuth.tower.service.model.query.PageModel;
import com.yuth.tower.service.model.rsp.ReturnList;

/**
 * @author yuying_xu
 */
public class PageUtil {

    /**
     * pageNum大于0就分页，否则不分页(返回null)
     * 
     * @param <T>
     * @param model
     * @return
     */
    public static <T> Page<T> preparePage(PageModel model) {
        if (model.getPageNum() <= 0) {
            return null;
        }

        return PageHelper.startPage(model.getPageNum(), model.getPageSize());
    }

    public static <T> ReturnList<T> newRet(Page<T> page, List<T> rsLst) {
        return page != null ? new ReturnList<>(rsLst, (int) page.getTotal(), page.getPageNum(), page.getPageSize())
                : new ReturnList<>(rsLst, rsLst.size(), 1, rsLst.size());
    }

    /**
     * 查询工具方法。支持不分页
     * 
     * @param <T>     响应结果模型
     * @param <P>     查询参数模型
     * @param param
     * @param queryFn
     * @return
     */
    public static <T, P extends PageModel> ReturnList<T> query(P param, Function<P, ReturnList<T>> queryFn) {
        if (param.getPageSize() == 0) {
            return queryWithNoPage(param, queryFn);
        } else {
            return queryWithPage(param, queryFn);
        }
    }

    private static <T, P extends PageModel> ReturnList<T> queryWithNoPage(P param, Function<P, ReturnList<T>> queryFn) {
        // 接口只支持分页，这里聚合
        int pageNum = 1;
        int pageSize = 1000;
        param.setPageNum(pageNum);
        param.setPageSize(pageSize);
        ReturnList<T> resp = queryFn.apply(param);
        if (resp.getTotal() == resp.getRecords().size()) {
            // 已全部返回
            return resp;
        }

        // 继续取后面的分页
        int total = resp.getTotal();
        List<T> list = new ArrayList<>(total);
        list.addAll(resp.getRecords());
        ++pageNum;
        while ((pageNum - 1) * pageSize < total) {

            param.setPageNum(pageNum);
            param.setPageSize(pageSize);
            resp = queryFn.apply(param);
            if (resp.getRecords().isEmpty()) {
                break;
            }

            list.addAll(resp.getRecords());

            ++pageNum;
        }

        return new ReturnList<>(list, list.size());
    }

    private static <T, P extends PageModel> ReturnList<T> queryWithPage(P param, Function<P, ReturnList<T>> queryFn) {
        return queryFn.apply(param);
    }

}
