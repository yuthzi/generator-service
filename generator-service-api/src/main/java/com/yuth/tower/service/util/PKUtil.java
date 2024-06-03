package com.yuth.tower.service.util;

import org.apache.commons.beanutils.PropertyUtils;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;

public class PKUtil {

    private static Logger log = LoggerFactory.getLogger(PKUtil.class);

    private static IdWorker worker = new IdWorker(1, 1);


    public static final void buildId4Bean(Object obj, String propertyName) {
        try {
            PropertyUtils.setProperty(obj, propertyName, String.valueOf(getLongId()));
        } catch (Exception e) {
            log.error("生成主键失败", e);
            throw new RuntimeException("生成主键失败");
        }
    }

    public static String genStringId() {
        long v = getLongId();

        return Base62Util.encode(v);
    }

    public static Long getLongId() {
        return worker.nextId();
    }


    /**
     * 雪花算法生成ID
     * 
     * @author yuying_xu
     */
    public static class IdWorker {

        private long workerId;

        private long datacenterId;

        private long sequence = 0;

        // 起始时间。2023-10-05 18:00:00
        public long baseTime = 1696500000000L;

        /** 机器标识占用的位数 */
        private long workerIdBits = 10L;

        /** 数据中心占用的位数 */
        private long datacenterIdBits = 1L;

        /** 毫秒内的并发量，序列号占用的位数 */
        private long sequenceBits = 7L;

        private long maxWorkerId = -1L ^ (-1L << workerIdBits);

        private long maxDatacenterId = -1L ^ (-1L << datacenterIdBits);

        private long workerIdShift = sequenceBits;

        private long datacenterIdShift = sequenceBits + workerIdBits;

        private long timestampLeftShift = sequenceBits + workerIdBits + datacenterIdBits;

        private long sequenceMask = -1L ^ (-1L << sequenceBits);

        private long lastTimestamp = -1L;


        public IdWorker(long workerId, long datacenterId) {
            // check for workerId
            if (workerId > maxWorkerId || workerId < 0) {
                throw new IllegalArgumentException(
                        String.format("worker Id can't be greater than %d or less than 0", maxWorkerId));
            }

            if (datacenterId > maxDatacenterId || datacenterId < 0) {
                throw new IllegalArgumentException(
                        String.format("datacenter Id can't be greater than %d or less than 0", maxDatacenterId));
            }

            System.out.printf(
                    "worker starting. timestamp left shift %d(64-%sd), datacenter id bits %d, worker id bits %d, sequence bits %d, workerid %d",
                    timestampLeftShift, 64 - timestampLeftShift, datacenterIdBits, workerIdBits, sequenceBits,
                    workerId);

            this.workerId = workerId;
            this.datacenterId = datacenterId;
        }

        public long getTimestamp() {
            return System.currentTimeMillis();
        }

        public synchronized long nextId() {
            long timestamp = getCurrTimeMillis();

            if (timestamp < lastTimestamp) {
                System.err.printf("clock is moving backwards.  Rejecting requests until %d.", lastTimestamp);
                throw new RuntimeException(
                        String.format("Clock moved backwards.  Refusing to generate id for %d milliseconds",
                                lastTimestamp - timestamp));
            }

            if (lastTimestamp == timestamp) {
                sequence = (sequence + 1) & sequenceMask;
                if (sequence == 0) {
                    timestamp = nextMillis(lastTimestamp);
                }
            } else {
                sequence = 0;
            }

            lastTimestamp = timestamp;
            // return ((timestamp - baseTime) << timestampLeftShift) | sequence;
            return ((timestamp - baseTime) << timestampLeftShift) | (datacenterId << datacenterIdShift)
                    | (workerId << workerIdShift) | sequence;
        }

        private long nextMillis(long lastTimestamp) {
            long timestamp = getCurrTimeMillis();
            while (timestamp <= lastTimestamp) {
                timestamp = getCurrTimeMillis();
            }
            return timestamp;
        }

        private long getCurrTimeMillis() {
            return System.currentTimeMillis();
            // return System.currentTimeMillis() + 365L * 24 * 3600 * 1000 * 60;
        }

    }


    public static void main(String[] args) {
        IdWorker worker = new IdWorker(1, 1);
        // long[] baseTimes = new long[] { 946656000000L, 1690000000000L,
        // 1696412801000L, 1696089600000L, 1696471200637L,
        // System.currentTimeMillis() };
        // 94416273561
        // 118972350686
        // 82669893380866177
        // 8267126984016003
        long[] baseTimes = new long[] { 1696500000000L };// 1696471200637L ,
        for (long t : baseTimes) {
            worker.baseTime = t;
            for (int i = 0; i < 10; i++) {
                System.out.println(worker.nextId());
            }

            System.out.println(worker.baseTime);
            System.out.println(String.valueOf(worker.nextId()).length());
            System.out.println();
        }
    }
}
