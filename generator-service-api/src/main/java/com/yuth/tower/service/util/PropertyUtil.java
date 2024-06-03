package com.yuth.tower.service.util;

import java.util.Collections;
import java.util.List;
import java.util.function.BiConsumer;
import java.util.function.Consumer;
import java.util.function.Function;
import java.util.function.Supplier;
import java.util.stream.Collectors;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;

import com.alibaba.fastjson.JSON;

public class PropertyUtil {

    private static final Logger log = LoggerFactory.getLogger(PropertyUtil.class);


    public static <T, K> void copyProperty(T dest, K orig) {
        try {
            org.apache.commons.beanutils.PropertyUtils.copyProperties(dest, orig);
        } catch (Exception e) {
            log.error("PropertyUtils转换实体类错误：", e);
            throw new IllegalArgumentException("参数错误");
        }
    }

    public static <S, T> T createIns(S src, Class<T> clazz) {
        if (src == null) {
            return null;
        }

        try {
            T t = clazz.newInstance();
            PropertyUtil.copyProperty(t, src);
            return t;
        } catch (InstantiationException | IllegalAccessException e) {
            log.error(e.getMessage(), e);
            throw new IllegalArgumentException(String.format("创建%s实例异常", clazz.getSimpleName()));
        }
    }

    /**
     * 创建复杂类型（子属性的类型不一致）
     * 
     * @param <S>
     * @param <T>
     * @param src
     * @param clazz
     * @return
     */
    public static <S, T> T createComplexIns(S src, Class<T> clazz) {
        return JSON.parseObject(JSON.toJSONString(src), clazz);
    }

    public static <S, T> List<T> createIns(List<S> src, Class<T> clazz) {
        if (src == null) {
            return Collections.emptyList();
        }

        return src.stream().map(e -> createIns(e, clazz)).collect(Collectors.toList());
    }

    public static <S, T> List<T> createComplexIns(List<S> src, Class<T> clazz) {
        if (src == null) {
            return Collections.emptyList();
        }

        return src.stream().map(e -> createComplexIns(e, clazz)).collect(Collectors.toList());
    }

    public static <T> void dealNullValue(Supplier<T> getter, Consumer<T> setter, T defaultValue) {
        if (getter.get() == null) {
            setter.accept(defaultValue);
        }
    }

    public static <T> void trim(T t, Function<T, String> getter, BiConsumer<T, String> setter) {
        if (getter.apply(t) != null) {
            setter.accept(t, getter.apply(t).trim());
        }
    }

}
