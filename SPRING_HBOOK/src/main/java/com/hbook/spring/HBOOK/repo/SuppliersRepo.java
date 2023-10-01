package com.hbook.spring.HBOOK.repo;

import com.hbook.spring.HBOOK.entities.Suppliers;
import jakarta.transaction.Transactional;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Modifying;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;
import org.springframework.stereotype.Repository;

@Repository
public interface SuppliersRepo extends JpaRepository<Suppliers, Integer> {
    @Transactional
    @Query("DELETE FROM Suppliers as s WHERE s.supplierId = :supplier_id")
    @Modifying
    int customDeleteById(@Param("supplier_id") int id);

    Suppliers findByContactMail(String contactMail);
}
