package com.tai.business.concretes;

import com.tai.business.abstracts.IZoneService;
import com.tai.core.Helper;
import com.tai.dao.abstracts.IBaseDao;
import com.tai.dao.abstracts.IZoneDao;
import com.tai.entities.Zone;
import jakarta.persistence.EntityNotFoundException;

import java.util.List;

public class ZoneManager extends BaseManager<Zone> implements IZoneService {
    private final IBaseDao zoneDao;

    // Dependency Injection Pattern
    public ZoneManager(IBaseDao<Zone> zoneDao) {
        super(zoneDao);
        this.zoneDao = zoneDao;
    }

}
