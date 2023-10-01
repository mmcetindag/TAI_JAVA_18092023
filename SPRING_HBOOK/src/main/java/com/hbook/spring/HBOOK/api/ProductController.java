package com.hbook.spring.HBOOK.api;

import com.hbook.spring.HBOOK.business.abstracs.IProductService;
import com.hbook.spring.HBOOK.business.dto.response.SuppliersResponse;
import com.hbook.spring.HBOOK.core.result.SuccessDataResult;
import com.hbook.spring.HBOOK.core.utitiles.Msg;
import com.hbook.spring.HBOOK.entities.Product;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import java.util.List;

@RestController
@RequestMapping("/api/v1")
public class ProductController {
    @Autowired
    private IProductService productService;

    @GetMapping("/product/{id}")
    public SuccessDataResult<Product> findById(@PathVariable("id") int id) {
        return new SuccessDataResult<>(productService.getById(id), Msg.success);
    }

    @GetMapping("/product/supplier/{id}")
    public SuccessDataResult<List<Product>> findBySupplierId(@PathVariable("id") int id) {
        return new SuccessDataResult<>(productService.findBySupplierById(id), Msg.success);
    }
}
