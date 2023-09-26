package com.tai.business.concretes;

import com.tai.business.abstracts.ILocService;
import com.tai.dao.abstracts.IBaseDao;
import com.tai.entities.Loc;

public class LocManager extends BaseManager<Loc> implements ILocService {
    private final IBaseDao locDao;
    public LocManager(IBaseDao<Loc> locDao) {
        super(locDao);
        this.locDao = locDao;
    }
}
