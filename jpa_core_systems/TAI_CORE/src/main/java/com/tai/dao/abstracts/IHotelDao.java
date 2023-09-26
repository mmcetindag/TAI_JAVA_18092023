package com.tai.dao.abstracts;

import com.tai.entities.Hotel;
import com.tai.entities.Loc;
import com.tai.entities.Zone;

import java.util.List;

public interface IHotelDao {
    Hotel find(int id);
    void save(Hotel hotel);
    void update (Hotel hotel);
    void delete(int id);
    List<Hotel> findAll();
    List<Hotel> findAllByLocId(Loc loc);
    List<Hotel> findAllByZoneId(Zone zone);

}
