package com.hive.common.util;

import org.safehaus.uuid.UUIDGenerator;

/**
 */
public class UUID {
//    private static Logger logger = Logger.getLogger(UUID.class.getName());

    /**
     *功能描述：返回UUID的串 
     *创建时间:2007-7-26 16:52:13
     *创建人: 蒋文
     *@return
     */
    public static String getUUIDString() {
//        logger.debug("创建一个UUID，并返回");
        UUIDGenerator gen = UUIDGenerator.getInstance();
        org.safehaus.uuid.UUID uuid = gen.generateRandomBasedUUID();
        return uuid.toString().replace("-", "");
    }

    /**
     *功能描述：返回UUID对象
     *创建时间:2007-7-26 16:52:34
     *创建人: 蒋文
     *@return
     */
    public static org.safehaus.uuid.UUID getUUID() {
//        logger.debug("创建一个UUID，并返回");
        UUIDGenerator gen = UUIDGenerator.getInstance();
        org.safehaus.uuid.UUID uuid = gen.generateRandomBasedUUID();
        return uuid;
    }
}