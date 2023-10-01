package com.hbook.spring.HBOOK.business.concretes;

import com.hbook.spring.HBOOK.business.abstracs.IProductService;
import com.hbook.spring.HBOOK.entities.Product;
import com.hbook.spring.HBOOK.repo.ProductRepo;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class ProductManager implements IProductService {
    @Autowired
    private ProductRepo productRepo;

    @Override
    public Product getById(int id) {
        return this.productRepo.findById(id).orElseThrow();
    }

    @Override
    public Product save(Product product) {
        return this.productRepo.save(product);
    }

    @Override
    public Product update(Product product) {
        return this.productRepo.save(product);
    }

    @Override
    public int delete(int id) {
        return this.productRepo.customDeleteById(id);
    }

    @Override
    public List<Product> findAll() {
        return this.productRepo.findAll();
    }

    @Override
    public List<Product> findBySupplierById(int id) {
        return this.productRepo.findBySupplierById(id);
    }
}
