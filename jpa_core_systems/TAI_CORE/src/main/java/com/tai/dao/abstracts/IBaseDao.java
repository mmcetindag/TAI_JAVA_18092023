package com.tai.dao.abstracts;

import com.tai.entities.Zone;

import java.util.List;

public interface IBaseDao<T> {
    T find(int id);
    void save(T entity);
    void update (T entity);
    void delete(int id);
    List<T> findAll();
}
