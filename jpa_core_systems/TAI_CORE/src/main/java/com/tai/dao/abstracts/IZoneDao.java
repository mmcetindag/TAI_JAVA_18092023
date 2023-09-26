package com.tai.dao.abstracts;

import com.tai.entities.Zone;

import java.util.List;

public interface IZoneDao {
    Zone find(int id);
    void save(Zone zone);
    void update (Zone zone);
    void delete(int id);
    List<Zone> findAll();
}
