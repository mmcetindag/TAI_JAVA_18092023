package com.tai.business.concretes;

import com.tai.business.abstracts.IHotelService;
import com.tai.dao.abstracts.IBaseDao;
import com.tai.dao.concretes.HotelDao;
import com.tai.entities.Hotel;
import com.tai.entities.Loc;
import com.tai.entities.Zone;

import java.util.List;

public class HotelManager extends BaseManager<Hotel> implements IHotelService {
    private HotelDao baseDao;

    public HotelManager(IBaseDao<Hotel> baseDao) {
        super(baseDao);
        this.baseDao = (HotelDao) baseDao;
    }

    @Override
    public List<Hotel> findAllByLocId(Loc loc) {
        return this.baseDao.findAllByLocId(loc);
    }

    @Override
    public List<Hotel> findAllByZoneId(Zone zone) {
        return this.baseDao.findAllByZoneId(zone);
    }
}
