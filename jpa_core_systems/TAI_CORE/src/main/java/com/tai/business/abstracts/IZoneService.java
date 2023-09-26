package com.tai.business.abstracts;

import com.tai.entities.Zone;

import java.util.List;

public interface IZoneService {
    Zone find(int id);
    void save(Zone zone);
    void update (Zone zone);
    void delete(Zone zone);
    List<Zone> findAll();
}
