package com.tai.business.abstracts;

import com.tai.entities.Zone;

import java.util.List;

public interface IBaseService<T> {
    T find(int id);

    void save(T entity);

    void update(T entity);

    void delete(T entity);

    List<T> findAll();
}
