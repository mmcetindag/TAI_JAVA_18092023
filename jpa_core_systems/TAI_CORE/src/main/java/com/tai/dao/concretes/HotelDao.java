package com.tai.dao.concretes;

import com.tai.dao.abstracts.IHotelDao;
import com.tai.entities.Hotel;
import com.tai.entities.Loc;
import com.tai.entities.Zone;

import java.util.List;

public class HotelDao extends BaseDao<Hotel> implements IHotelDao {
    public HotelDao() {
        super(Hotel.class, "hotel");
    }

    @Override
    public List<Hotel> findAllByLocId(Loc loc) {
        List<Hotel> hotelList = this.getEntityManager()
                .createNativeQuery("SELECT * FROM hotel WHERE loc_id = :loc_id",Hotel.class)
                .setParameter("loc_id" , loc.getId())
                .getResultList();
        return hotelList;
    }

    @Override
    public List<Hotel> findAllByZoneId(Zone zone) {
        List<Hotel> hotelList = this.getEntityManager().
                createNamedQuery("hotel.findByZoneId")
                .setParameter("zone_id" , zone.getId())
                .getResultList();
        return hotelList;
    }
}
