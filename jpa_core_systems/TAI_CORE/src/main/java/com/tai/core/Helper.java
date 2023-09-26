package com.tai.core;

import com.tai.core.Base.IEntities;
import com.tai.core.adapter.Log4jAdapter;
import jakarta.persistence.EntityManager;
import jakarta.persistence.Persistence;

public class Helper {

    private static EntityManager entityManager = null;

    public static EntityManager getEntityManager() {
        if (entityManager == null) {
            entityManager = Persistence.createEntityManagerFactory("hbook")
                    .createEntityManager();
        }
        return entityManager;
    }

    public static <T extends IEntities> boolean isExist(T entity){
        return entity != null && entity.getId() != 0;
    }

    public static void logInfo(String msg){
        Log4jAdapter logManager = new Log4jAdapter();
        logManager.logInfo(msg);
    }
}
