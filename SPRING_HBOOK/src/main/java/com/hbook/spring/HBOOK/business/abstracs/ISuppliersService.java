package com.hbook.spring.HBOOK.business.abstracs;


import com.hbook.spring.HBOOK.entities.Suppliers;
import org.springframework.data.domain.Page;

import java.util.List;

public interface ISuppliersService  {
    Suppliers getById(int id);
    Suppliers save(Suppliers suppliers);
    Suppliers update(Suppliers suppliers);
    int delete(int id);
    List<Suppliers> findAll();
    Page<Suppliers> findAllWithPage(int page, int pageSize);
    Suppliers findByContactMail(String contactMail);
}
