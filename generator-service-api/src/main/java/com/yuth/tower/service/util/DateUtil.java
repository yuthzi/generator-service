package com.yuth.tower.service.util;

import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.time.LocalDate;
import java.time.temporal.ChronoUnit;
import java.util.Calendar;
import java.util.Date;
import java.util.TimeZone;

/**
 * @author yuth
 * @since 2024-04-30 16:40:17
 */
public class DateUtil {

    public static final String PATTERN_HH_MM = "HH:mm";

    public static final String PATTERN_HH_MM_SS = "HH:mm:ss";

    public static final String PATTERN_YYYY_MM_DD = "yyyy-MM-dd";

    public static final String PATTERN_DATE_TIME = "yyyy-MM-dd HH:mm:ss";

    public static final String TIME_ZONE = "Asia/Shanghai";


    private static String getNow(String pattern) {
        Date now = new Date();
        SimpleDateFormat sdf = new SimpleDateFormat();
        sdf.setTimeZone(TimeZone.getTimeZone("Asia/Shanghai"));
        sdf.applyPattern(pattern);
        return sdf.format(now);
    }

    public static String getNowDate() {
        String dateFormat = "yyyy-MM-dd";
        return getNow(dateFormat);
    }

    public static String getNowTime() {
        String pattern = "HH:mm:ss";
        return getNow(pattern);
    }

    public static String getNowDateTime() {
        String pattern = "yyyy-MM-dd HH:mm:ss";
        return getNow(pattern);
    }

    public static String getDate(String date) {
        return date.substring(0, 10);
    }

    public static String getWeekDay(Date date) {
        SimpleDateFormat sdf = new SimpleDateFormat("EEEE");
        sdf.setTimeZone(TimeZone.getTimeZone("Asia/Shanghai"));
        return sdf.format(date);
    }

    public static String getWeekDay(String date) throws ParseException {
        Date tmpDate = parseDate(date, "yyyy-MM-dd HH:mm:ss");
        return getWeekDay(tmpDate);
    }

    public static Date parseDate(String date, String pattern) throws ParseException {
        SimpleDateFormat sdf = new SimpleDateFormat();
        sdf.setTimeZone(TimeZone.getTimeZone("Asia/Shanghai"));
        sdf.applyPattern(pattern);
        return sdf.parse(date);
    }

    public static String formatDateTime(Date date) {
        SimpleDateFormat sdf = new SimpleDateFormat(PATTERN_DATE_TIME);
        return sdf.format(date);
    }

    public static String formatDate(Date date) {
        SimpleDateFormat sdf = new SimpleDateFormat(PATTERN_YYYY_MM_DD);
        return sdf.format(date);
    }

    public static boolean isToday(String date) {
        return getNowDate().equals(getDate(date));
    }

    public static long diffDays(LocalDate beginDate, LocalDate endDate) {
        return beginDate.until(endDate, ChronoUnit.DAYS);
    }

    public static int getThisYear() {
        return Calendar.getInstance().get(1);
    }

    public static int getThisMonth() {
        return Calendar.getInstance().get(2);
    }

    public static boolean smallerThan(Date date1, Date date2) {
        return (date1.getTime() < date2.getTime());
    }

    public static boolean biggerThan(Date date1, Date date2) {
        return (date1.getTime() > date2.getTime());
    }

    public static boolean equalThan(Date date1, Date date2) {
        return (date1.getTime() == date2.getTime());
    }

    public static boolean smallerOrEqualThan(Date date1, Date date2) {
        return (date1.getTime() <= date2.getTime());
    }

    public static boolean biggerOrEqualThan(Date date1, Date date2) {
        return (date1.getTime() >= date2.getTime());
    }

    public static Date addDay(Date currdate, int day) {
        Calendar ca = Calendar.getInstance();
        ca.setTime(currdate);
        ca.add(Calendar.DATE, day);
        return ca.getTime();
    }

    public static Date addMinute(Date currdate, int minute) {
        Calendar ca = Calendar.getInstance();
        ca.setTime(currdate);
        ca.add(Calendar.MINUTE, minute);
        return ca.getTime();
    }

}