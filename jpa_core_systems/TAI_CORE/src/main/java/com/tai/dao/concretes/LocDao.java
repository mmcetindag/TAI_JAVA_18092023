package com.tai.dao.concretes;

import com.tai.dao.abstracts.ILocDao;
import com.tai.entities.Loc;

public class LocDao extends BaseDao<Loc> implements ILocDao {
    public LocDao() {
        super(Loc.class, "loc");
    }
}
