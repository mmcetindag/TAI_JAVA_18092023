package com.tai.dao.abstracts;

import com.tai.entities.Loc;
import com.tai.entities.Zone;

import java.util.List;

public interface ILocDao {
    Loc find(int id);
    void save(Loc loc);
    void update (Loc loc);
    void delete(int id);
    List<Loc> findAll();
}
