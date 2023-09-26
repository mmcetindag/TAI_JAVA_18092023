package com.tai.business.abstracts;


import com.tai.entities.Hotel;
import com.tai.entities.Loc;
import com.tai.entities.Zone;

import java.util.List;

public interface IHotelService {
    Hotel find(int id);
    void save(Hotel hotel);
    void update (Hotel hotel);
    void delete(Hotel hotel);
    List<Hotel> findAll();
    List<Hotel> findAllByLocId(Loc loc);
    List<Hotel> findAllByZoneId(Zone zone);
}
