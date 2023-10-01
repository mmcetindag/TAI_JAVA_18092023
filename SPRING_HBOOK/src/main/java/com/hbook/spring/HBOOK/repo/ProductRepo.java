package com.hbook.spring.HBOOK.repo;

import com.hbook.spring.HBOOK.entities.Product;
import jakarta.transaction.Transactional;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Modifying;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;

import java.util.List;

public interface ProductRepo extends JpaRepository<Product, Integer> {
    @Transactional
    @Query("DELETE FROM Product as p WHERE p.productId = :product_id")
    @Modifying
    int customDeleteById(@Param("product_id") int id);

    @Query("FROM Product as p WHERE p.suppliers.supplierId = :supplier_id")
    List<Product> findBySupplierById(@Param("supplier_id") int id);
}
