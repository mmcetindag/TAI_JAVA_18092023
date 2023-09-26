package com.tai.core.adapter;

import org.apache.log4j.LogManager;
import org.apache.log4j.Logger;

public class Log4jAdapter implements ILog {
    @Override
    public void logInfo(String msg) {
        Logger logger = LogManager.getLogger("Base Class");
        logger.info(msg);
    }
}
