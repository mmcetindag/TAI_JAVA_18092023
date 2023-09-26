package com.tai.business.concretes;

import com.tai.business.abstracts.IBaseService;
import com.tai.core.Base.IEntities;
import com.tai.core.Helper;
import com.tai.dao.abstracts.IBaseDao;
import com.tai.entities.Zone;
import jakarta.persistence.EntityNotFoundException;
import org.apache.log4j.LogManager;
import org.apache.log4j.Logger;

import java.util.List;

public class BaseManager<T extends IEntities> implements IBaseService<T> {

    private final IBaseDao<T> baseDao;
    public BaseManager(IBaseDao<T> baseDao) {
        this.baseDao = baseDao;
    }

    @Override
    public T find(int id) {
        T entity = this.baseDao.find(id);
        if (!Helper.isExist(entity)){
            throw new EntityNotFoundException("Entity Bulunamadı");
        }
        Helper.logInfo("--- INFO LOGU ---");
        return this.baseDao.find(id);
    }

    @Override
    public void save(T entity) {
        this.baseDao.save(entity);
    }

    @Override
    public void update(T entity) {
        this.baseDao.update(entity);
    }

    @Override
    public void delete(T entity) {
        if (!Helper.isExist(entity)){
            throw new EntityNotFoundException("Entity Bulunamadı");
        }
        this.baseDao.delete(entity.getId());
    }

    @Override
    public List<T> findAll() {
        return this.baseDao.findAll();
    }
}
