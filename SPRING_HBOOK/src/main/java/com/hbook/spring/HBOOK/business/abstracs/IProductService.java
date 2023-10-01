package com.hbook.spring.HBOOK.business.abstracs;

import com.hbook.spring.HBOOK.entities.Product;

import java.util.List;

public interface IProductService {
    Product getById(int id);
    Product save(Product product);
    Product update(Product product);
    int delete(int id);
    List<Product> findAll();
    List<Product> findBySupplierById(int id);
}
