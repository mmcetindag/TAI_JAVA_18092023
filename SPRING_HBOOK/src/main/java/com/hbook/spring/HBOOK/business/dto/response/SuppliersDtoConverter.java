package com.hbook.spring.HBOOK.business.dto.response;

import com.hbook.spring.HBOOK.entities.Suppliers;
import org.springframework.stereotype.Component;

@Component
public class SuppliersDtoConverter {
    private SuppliersResponse suppliersResponse;

    public SuppliersResponse entityToDto(Suppliers suppliers) {
        return new SuppliersResponse(
                suppliers.getAddress(),
                suppliers.getCompanyName()
        );
    }
}
