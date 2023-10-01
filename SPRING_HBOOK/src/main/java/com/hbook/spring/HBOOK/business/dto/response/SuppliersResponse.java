package com.hbook.spring.HBOOK.business.dto.response;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@AllArgsConstructor
@NoArgsConstructor
public class SuppliersResponse {
    private String address;
    private String companyName;
}
