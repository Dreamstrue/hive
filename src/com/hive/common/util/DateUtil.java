package com.hive.common.util;

import java.sql.Time;
import java.sql.Timestamp;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Calendar;
import java.util.Date;

import org.apache.commons.lang3.StringUtils;

import com.hive.common.SystemCommon_Constant;


/**
 * 日期工具类
 */
public class DateUtil {

	 /**
     * 获取当前日期
     *
     * @return
     */
    public static java.sql.Date getCurrentDate() {
        return new java.sql.Date(System.currentTimeMillis());
    }
	
    /**
     * 获取当前时间
     *
     * @return
     */
    public static Time getCurrentTime() {
        return new Time(System.currentTimeMillis());
    }

    /**
     * 获取当前时间戳
     *
     * @return
     */
    public static Timestamp getTimestamp() {
        return new Timestamp(System.currentTimeMillis());
    }
    
    /**
     * 返回yyyy-MM-dd格式的字符串
     *
     * @param date
     * @return
     */
    public static String dateToString(Date date) {
        if (date == null)
            return null;

        SimpleDateFormat simpleDateFormat = new SimpleDateFormat(
        		SystemCommon_Constant.DATE_PATTERN);
        return simpleDateFormat.format(date);
    }
    
    /**
   	 * 由日期返回yyyyMMdd格式的字符串
   	 * @param date
   	 * @return
   	 */
   	public static String dateToNumber(Date date) {
   		if (date == null)
   			return null;

   		SimpleDateFormat simpleDateFormat =
   			new SimpleDateFormat(SystemCommon_Constant.DATE_PATTERN_2);
   		return simpleDateFormat.format(date);
   	}
    
	/**
	 * 将Date类型转换为字符串
	 * 
	 * @param date 日期类型 yyyy-MM-dd
	 * @return 日期字符串
	 */
	public static String formatDate(Date date) {
		return format(date, "yyyy-MM-dd");
	}
	
	/**
	 * 将Date类型转换为字符串
	 * 
	 * @param date 日期类型 yyyy-MM-dd HH:mm:ss
	 * @return 日期字符串
	 */
	public static String formatDateTime(Date date) {
		return format(date, "yyyy-MM-dd HH:mm:ss");
	}

	/**
	 * 将Date类型转换为字符串
	 * 
	 * @param date 日期类型
	 * @param pattern 字符串格式
	 * @return 日期字符串
	 */
	public static String format(Date date, String pattern) {
		if (date == null) {
			return "null";
		}
		if (pattern == null || pattern.equals("") || pattern.equals("null")) {
			pattern = "yyyy-MM-dd HH:mm:ss";
		}
		return new java.text.SimpleDateFormat(pattern).format(date);
	}
	
	
   

    /**
     * 返回yyyy-MM-dd hh : mm : ss 格式的字符串
     *
     * @param date
     * @return
     */
    public static String Time14ToString(java.sql.Timestamp time) {
        if (time == null)
            return null;
        SimpleDateFormat simpleDateFormat = new SimpleDateFormat(SystemCommon_Constant.TIME14_PATTERN);
        return simpleDateFormat.format(time);
    }
    /**
     * 返回yyyy-MM-dd hh : mm : ss 格式的字符串
     *
     * @param date
     * @return
     * @author haizhou.li
     */
    public static String Time14ToString2(java.util.Date time) {
        if (time == null)
            return null;
        SimpleDateFormat simpleDateFormat = new SimpleDateFormat(SystemCommon_Constant.TIME14_PATTERN);
        return simpleDateFormat.format(time);
    }
    /**
     * 返回yyyy-MM-dd hh : mm : ss 格式的字符串
     *
     * @param date
     * @return
     * @author haizhou.li
     */
    public static String Time14ToString2(java.sql.Timestamp time) {
        if (time == null)
            return null;
        SimpleDateFormat simpleDateFormat = new SimpleDateFormat(SystemCommon_Constant.TIME14_PATTERN2);
        return simpleDateFormat.format(time);
    }
    /*  add by haizhou.li 2010-11-19 begin */

    /**
     * 返回yyyy-MM-dd hh : mm : ss 格式的字符串
     */


    public static String Time14ToString3(java.sql.Timestamp time) {
        if (time == null)
            return null;
        SimpleDateFormat simpleDateFormat = new SimpleDateFormat(SystemCommon_Constant.TIME14_PATTERN);
        return simpleDateFormat.format(time);
    }
    /**
     * 返回 hh : mm : ss 格式的字符串
     *
     * @param date
     * @return
     */
    public static String Time6ToString(java.sql.Timestamp time) {
        if (time == null)
            return null;
        SimpleDateFormat simpleDateFormat = new SimpleDateFormat(SystemCommon_Constant.TIME6_PATTERN);
        return simpleDateFormat.format(time);
    }

    /**
     * 由yyyy-MM-dd格式的字符串返回日期
     *
     * @param date
     * @return
     */
    public static Date stringToDate(String string) {
        if (string == null)
            return null;

        SimpleDateFormat simpleDateFormat = new SimpleDateFormat(
                SystemCommon_Constant.DATE_PATTERN);
        try {
            return simpleDateFormat.parse(string);
        } catch (ParseException e) {
            e.printStackTrace();
        }
        return null;
    }

    /**
     * 由yyyymmdd格式的字符串返回日期
     *
     * @param date
     * @return
     */
    public static Date stringToDate2(String string) {
        if (StringUtils.isEmpty(string))
            return null;

        SimpleDateFormat simpleDateFormat = new SimpleDateFormat(
                SystemCommon_Constant.DATE_PATTERN_2);
        try {
            return simpleDateFormat.parse(string);
        } catch (ParseException e) {
        	 e.printStackTrace();
        }
        return null;
    }
	

	

	/**
	 * 将字符串转换为Date类型
	 * 
	 * @param date 字符串类型
	 * @return 日期类型
	 */
	public static Date format(String date) {
		return format(date, null);
	}
	
	
	
	

	/**
	 * 将字符串转换为Date类型
	 * @param date 字符串类型
	 * @param pattern  格式
	 * @return 日期类型
	 */
	public static Date format(String date, String pattern) {
		if (pattern == null || pattern.equals("") || pattern.equals("null")) {
			pattern = "yyyy-MM-dd HH:mm:ss";
		}
		if (date == null || date.equals("") || date.equals("null")) {
			return new Date();
		}
		Date d = null;
		try {
			d = new java.text.SimpleDateFormat(pattern).parse(date);
		} catch (ParseException pe) {
		}
		return d;
	}
	/**
	 * 获得当天的最后时间 23:59:59
	 * @return
	 */
	public static Date currentLastDate() {
		Calendar c=Calendar.getInstance();
		c.set(Calendar.HOUR_OF_DAY, 23);
		c.set(Calendar.MINUTE, 59);
		c.set(Calendar.SECOND, 59);
		return c.getTime();
	}
	
	
	public static void main(String[] args) {
		System.out.println(formatDateTime(currentLastDate()));
		System.out.println(dateToNumber(new Date()).substring(2));
	}
}
