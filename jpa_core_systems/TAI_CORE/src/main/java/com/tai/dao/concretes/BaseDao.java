package com.tai.dao.concretes;

import com.tai.core.Helper;
import com.tai.dao.abstracts.IBaseDao;
import jakarta.persistence.EntityManager;

import java.util.List;

public class BaseDao<T> implements IBaseDao<T> {
    private final EntityManager entityManager = Helper.getEntityManager();
    private final Class<T> classObj;
    private final String tableName;

    public BaseDao(Class<T> classObj, String tableName) {
        this.classObj = classObj;
        //this.tableName = classObj.getName().toLowerCase(Locale.ROOT);
        this.tableName = tableName;
    }

    @Override
    public T find(int id) {
        // Zone.class = this.classObj;
        return entityManager.find(this.classObj, id);
    }

    @Override
    public void save(T entity) {
        entityManager.getTransaction().begin();
        entityManager.persist(entity);
        entityManager.getTransaction().commit();
    }

    @Override
    public void update(T entity) {
        entityManager.getTransaction().begin();
        entityManager.merge(entity);
        entityManager.getTransaction().commit();
    }

    @Override
    public void delete(int id) {
        T entity = this.find(id);
        entityManager.getTransaction().begin();
        entityManager.remove(entity);
        entityManager.getTransaction().commit();
    }

    @Override
    public List<T> findAll() {
        List<T> entityList = entityManager
                .createNativeQuery("SELECT * FROM " + this.tableName, classObj)
                .getResultList();
        return entityList;
    }


    public EntityManager getEntityManager() {
        return entityManager;
    }
}
