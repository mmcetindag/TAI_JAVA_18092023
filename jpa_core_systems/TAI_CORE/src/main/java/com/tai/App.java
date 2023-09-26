package com.tai;

import com.tai.business.concretes.HotelManager;
import com.tai.business.concretes.LocManager;
import com.tai.business.concretes.ZoneManager;
import com.tai.dao.concretes.HotelDao;
import com.tai.dao.concretes.LocDao;
import com.tai.dao.concretes.ZoneDao;
import com.tai.entities.Hotel;
import com.tai.entities.Loc;
import com.tai.entities.Zone;

import java.util.List;

public class App {
    public static void main(String[] args) {
        ZoneManager zoneManager = new ZoneManager(new ZoneDao());
        LocManager locManager = new LocManager(new LocDao());
        HotelManager hotelManager = new HotelManager(new HotelDao());

        //System.out.println(zoneManager.find(4));
        //System.out.println(locManager.find(2));
        //System.out.println(hotelManager.find(1));

        /*
        List<Hotel> hotelList = hotelManager.findAll();
        for (Hotel hotel : hotelList) {
            System.out.println(hotel.toString());
        }
         */

        //Loc loc = locManager.find(21);
        Zone zone = zoneManager.find(4);
        /*
        System.out.println(zone.toString());
        List<Hotel> hotelList = hotelManager.findAllByZoneId(zone);
        for (Hotel hotel : hotelList) {
            System.out.println(hotel.toString());
        }

         */
    }
}
