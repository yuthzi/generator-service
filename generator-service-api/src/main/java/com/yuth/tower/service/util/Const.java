package com.yuth.tower.service.util;

public class Const {

    public static class DBSingleSuccess {

        public static final int YES = 1;

        public static final int NO = 0;
    }

    public static class DBBatchSize {

        public static final int EMPTY = 0;
    }

    public static class DBBooleanValue {

        public static final Short YES = 1;

        public static final Short NO = 0;
    }

    public static class DBColumnValue {

        /** 查询条件中忽略的值 */
        public static final String QUERY_IGNORE = null;

        public static final String STR_DEFAULT = "";

        public static final Integer INT_DEFAULT = 0;

        public static final String PK_DEFAULT = "0";

        /** 不区分门店标识 */
        public static final String PK_ALL_ID = "0";
    }

    public static class Collection {

        public static final int START_INDEX = 0;

        public static final int SIZE_ONE = 1;

    }

    public static class BigDecimalPrecision {

        /** 除法时的精确度 */
        public static final int DIVIDE_SCALE = 3;
    }

    public static class User {

        public static final String ADMIN = "admin";
    }

    public static class Desc {

        public static final String NULL_LEVEL = "普通等级";
    }

    public static class Jwt {

        public static final String TENANT_ID = "tenantId";

    }

}
