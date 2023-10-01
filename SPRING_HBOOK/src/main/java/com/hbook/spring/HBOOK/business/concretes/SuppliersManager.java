package com.hbook.spring.HBOOK.business.concretes;

import com.hbook.spring.HBOOK.business.abstracs.ISuppliersService;
import com.hbook.spring.HBOOK.core.exceptions.BusinessException;
import com.hbook.spring.HBOOK.entities.Suppliers;
import com.hbook.spring.HBOOK.repo.SuppliersRepo;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.PageRequest;
import org.springframework.data.domain.Pageable;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class SuppliersManager implements ISuppliersService {
    private final SuppliersRepo suppliersRepo;

    @Autowired
    public SuppliersManager(SuppliersRepo suppliersRepo) {
        this.suppliersRepo = suppliersRepo;
    }

    @Override
    public Suppliers getById(int id) {
        return this.suppliersRepo.findById(id).orElseThrow();
    }

    @Override
    public Suppliers save(Suppliers suppliers) {
        return this.suppliersRepo.save(suppliers);
    }

    @Override
    public Suppliers update(Suppliers suppliers) {
        return this.suppliersRepo.save(suppliers);
    }

    @Override
    public int delete(int id) {
        return this.suppliersRepo.customDeleteById(id);
    }

    @Override
    public List<Suppliers> findAll() {
        return this.suppliersRepo.findAll();
    }

    @Override
    public Page<Suppliers> findAllWithPage(int page, int pageSize) {
        Pageable pageable = PageRequest.of(page, pageSize);
        return this.suppliersRepo.findAll(pageable);
    }

    @Override
    public Suppliers findByContactMail(String contactMail) {
        return this.suppliersRepo.findByContactMail(contactMail);
    }
}
