package com.hbook.spring.HBOOK.entities;

import com.fasterxml.jackson.annotation.JsonIgnore;
import jakarta.persistence.*;
import jakarta.validation.constraints.Email;
import jakarta.validation.constraints.NotBlank;
import jakarta.validation.constraints.NotNull;
import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

import java.util.List;

@Entity
@Table(name = "suppliers")
@Data
@AllArgsConstructor
@NoArgsConstructor
public class Suppliers {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Column(name = "supplier_id")
    private int supplierId;

    @Column(name = "address")
    private String address;

    @Column(name = "company_name")
    private String companyName;

    @Column(name = "contact_name")
    @NotNull
    private String contactName;

    @Column(name = "contact_mail")
    @Email
    private String contactMail;

    @OneToMany(mappedBy = "suppliers")
    @JsonIgnore
    private List<Product> productList;
}
