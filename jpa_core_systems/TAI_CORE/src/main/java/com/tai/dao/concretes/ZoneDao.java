package com.tai.dao.concretes;

import com.tai.dao.abstracts.IZoneDao;
import com.tai.entities.Zone;

public class ZoneDao extends BaseDao<Zone> implements IZoneDao{
    public ZoneDao() {
        super(Zone.class, "zone");
    }
}
