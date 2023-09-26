package com.tai.business.abstracts;

import com.tai.entities.Loc;

import java.util.List;

public interface ILocService {
    Loc find(int id);
    void save(Loc loc);
    void update (Loc loc);
    void delete(Loc loc);
    List<Loc> findAll();

}
