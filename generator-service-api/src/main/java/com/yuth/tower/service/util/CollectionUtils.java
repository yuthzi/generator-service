package com.yuth.tower.service.util;

import java.util.ArrayList;
import java.util.Collection;
import java.util.Collections;
import java.util.HashMap;
import java.util.HashSet;
import java.util.List;
import java.util.Map;
import java.util.Set;
import java.util.function.BiConsumer;
import java.util.function.BiFunction;
import java.util.function.Function;
import java.util.function.Predicate;
import java.util.stream.Collectors;
import java.util.stream.Stream;

public class CollectionUtils {

    public static <T> boolean isNullOrEmpty(Collection<T> c) {
        return c == null || c.isEmpty();
    }

    public static <T, V> Map<V, T> toMap(Collection<T> c, Function<T, V> keyMapper) {
        return c.stream().collect(Collectors.toMap(keyMapper, v -> v));
    }

    public static <T, V> Map<V, T> toMapIgnoreRepeat(Collection<T> c, Function<T, V> keyMapper) {
        Map<V, T> map = new HashMap<>();
        for (T e : c) {
            map.put(keyMapper.apply(e), e);
        }

        return map;
    }

    public static <T, V> Set<V> toSet(Collection<T> c, Function<T, V> keyMapper) {
        return c.stream().map(keyMapper).collect(Collectors.toSet());
    }

    public static <T, V> Set<V> getValueSet(Collection<T> c, Function<T, V> getter) {
        return c.stream().map(getter).collect(Collectors.toSet());
    }

    public static <T, V> List<V> getValueList(Collection<T> c, Function<T, V> getter) {
        return c.stream().map(getter).collect(Collectors.toList());
    }

    public static <T, V> List<V> getValueList(Collection<T> c, Predicate<? super T> predicate, Function<T, V> getter) {
        return c.stream().filter(predicate).map(getter).collect(Collectors.toList());
    }

    public static <T> List<T> filter(Collection<T> c, Predicate<? super T> predicate) {
        return c.stream().filter(predicate).collect(Collectors.toList());
    }

    /**
     * 分组。key相同的同组。
     * 
     * @param <K>
     * @param <V>
     * @param c
     * @param keyFn
     * @return
     */
    public static <K, V> Map<K, List<V>> group(Collection<V> c, Function<V, K> keyFn) {
        Map<K, List<V>> map = new HashMap<>();
        for (V e : c) {
            List<V> values = map.computeIfAbsent(keyFn.apply(e), k -> new ArrayList<>());
            values.add(e);
        }

        return map;
    }

    public static <T> void addAll(Collection<T> all, Collection<T> piece) {
        if (!isNullOrEmpty(piece)) {
            all.addAll(piece);
        }
    }

    public static <T> List<T> merge(List<T> a, List<T> b) {
        if (a == null && b == null) {
            return Collections.emptyList();
        }

        if (a == null) {
            return b;
        }

        if (b == null) {
            return a;
        }

        return Stream.concat(a.stream(), b.stream()).collect(Collectors.toList());
    }

    public static <T, K, V> Map<K, V> toMap(Collection<T> c, Function<T, K> keyMapper, Function<T, V> valueMapper) {
        Map<K, V> map = new HashMap<>(c.size());
        for (T t : c) {
            map.put(keyMapper.apply(t), valueMapper.apply(t));
        }

        return map;
    }

    public static <T> T filterOne(Collection<T> c, Predicate<? super T> predicate) {
        return c.stream().filter(predicate).findFirst().orElse(null);
    }

    public static <T, V> List<V> getNotNullValue(Collection<T> c, Function<T, V> getter) {
        List<V> list = new ArrayList<>(c.size());
        for (T e : c) {
            V v = getter.apply(e);
            if (v != null) {
                list.add(v);
            }
        }

        return list;
    }

    public static String getTop(List<String> values, boolean max) {
        // asc
        values.sort((e1, e2) -> e1.compareTo(e2));
        if (max) {
            return values.get(values.size() - 1);
        }

        return values.get(Const.Collection.START_INDEX);
    }

    public static <T> int indexOf(List<T> list, T element, BiFunction<T, T, Boolean> eq) {
        for (int i = 0; i < list.size(); ++i) {
            if (eq.apply(element, list.get(i))) {
                return i;
            }
        }

        return -1;
    }

    public static <T> Set<T> newSet(T t) {
        Set<T> set = new HashSet<>();
        set.add(t);

        return set;
    }

    public static <T> Set<T> newSet(T t1, T t2) {
        Set<T> set = new HashSet<>();
        set.add(t1);
        set.add(t2);

        return set;
    }

    public static <T> Set<T> newSet(T t1, T t2, T t3) {
        Set<T> set = new HashSet<>();
        set.add(t1);
        set.add(t2);
        set.add(t3);

        return set;
    }

    public static <T> Set<T> newSet(T t1, T t2, T t3, T t4) {
        Set<T> set = new HashSet<>();
        set.add(t1);
        set.add(t2);
        set.add(t3);
        set.add(t4);

        return set;
    }

    /**
     * 调用例子： <pre>
        public void modify(String barterId, List<BarterRuleSkuModel> ruleSkuList) {
            if (ruleSkuList == null) {
                ruleSkuList = Collections.emptyList();
            }
        
            List<BarterRuleSkuDO> hasRecords = mapper.findByBarterId(barterId);
            List<BarterRuleSkuDO> toSaveRecords = PropertyUtil.createIns(ruleSkuList, BarterRuleSkuDO.class);
            // 新增、修改或删除
            List<String> toRemoveIds = CollectionUtils.findToRemove(hasRecords, toSaveRecords, BarterRuleSkuDO::getRefId);
            List<BarterRuleSkuDO> toAdds = CollectionUtils.findToAdd(hasRecords, toSaveRecords, BarterRuleSkuDO::getRefId);
            List<BarterRuleSkuDO> toUpdates = CollectionUtils.findToUpdate(hasRecords, toSaveRecords,
                    BarterRuleSkuDO::getRefId);
        
            // db
            batchRemove(toRemoveIds);
            if (!CollectionUtils.isNullOrEmpty(toAdds)) {
                mapper.batchInsert(toAdds);
            }
        
            if (!CollectionUtils.isNullOrEmpty(toUpdates)) {
                mapper.batchUpdate(toUpdates);
            }
        }
     * 
     * 
     * 
     * </pre>
     * 
     * @param <T>
     * @param hasRecords
     * @param toSaveRecords
     * @param idGetter
     * @return
     */
    public static <T> List<String> findToRemove(List<T> hasRecords, List<T> toSaveRecords,
            Function<T, String> idGetter) {

        Set<String> toSaveIds = CollectionUtils.toSet(toSaveRecords, idGetter);
        List<String> toRemoveIds = new ArrayList<>(hasRecords.size());
        String id;
        for (T e : hasRecords) {
            id = idGetter.apply(e);
            if (!toSaveIds.contains(id)) {
                toRemoveIds.add(id);
            }
        }

        return toRemoveIds;
    }

    public static <T> List<T> findToAdd(List<T> hasRecords, List<T> toSaveRecords, Function<T, String> idGetter) {
        Set<String> hasIds = CollectionUtils.toSet(hasRecords, idGetter);
        List<T> toAdds = new ArrayList<>(toSaveRecords.size());
        for (T e : toSaveRecords) {
            if (!hasIds.contains(idGetter.apply(e))) {
                toAdds.add(e);
            }
        }

        return toAdds;
    }

    public static <T> List<T> findToUpdate(List<T> hasRecords, List<T> toSaveRecords, Function<T, String> idGetter) {
        Set<String> hasIds = CollectionUtils.toSet(hasRecords, idGetter);
        List<T> toUpdates = new ArrayList<>(toSaveRecords.size());
        for (T e : toSaveRecords) {
            if (hasIds.contains(idGetter.apply(e))) {
                toUpdates.add(e);
            }
        }

        return toUpdates;
    }

    /**
     * @param <T>             父模型
     * @param <C>             查询返回的子模型
     * @param <R>             传送给父模型中的子模型
     * @param list
     * @param getIdFn         父模型获取id的函数
     * @param childGetPidFn   C中查询父ID的函数
     * @param queryChildrenFn 查询子数据
     * @param childRspSetter
     * @param childRspClass
     */
    public static <T, C, R> void fillValue(List<T> list, Function<T, String> getIdFn, Function<C, String> childGetPidFn,
            Function<Set<String>, List<C>> queryChildrenFn, BiConsumer<T, List<R>> childRspSetter,
            Class<R> childRspClass) {

        if (list == null || list.isEmpty()) {
            return;
        }

        Set<String> ids = getValueSet(list, getIdFn);
        List<C> valuesDos = queryChildrenFn.apply(ids);
        Map<String, List<C>> group = group(valuesDos, childGetPidFn);
        for (T e : list) {
            List<C> v = group.getOrDefault(getIdFn.apply(e), Collections.emptyList());
            childRspSetter.accept(e, PropertyUtil.createIns(v, childRspClass));
        }
    }
}
