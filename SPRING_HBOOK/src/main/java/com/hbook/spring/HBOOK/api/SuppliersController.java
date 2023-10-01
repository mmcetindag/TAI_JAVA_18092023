package com.hbook.spring.HBOOK.api;

import com.hbook.spring.HBOOK.business.abstracs.ISuppliersService;
import com.hbook.spring.HBOOK.business.dto.DeleteResponse;
import com.hbook.spring.HBOOK.business.dto.response.SuppliersDtoConverter;
import com.hbook.spring.HBOOK.business.dto.response.SuppliersResponse;
import com.hbook.spring.HBOOK.core.result.DataResult;
import com.hbook.spring.HBOOK.core.result.ErrorResult;
import com.hbook.spring.HBOOK.core.result.Result;
import com.hbook.spring.HBOOK.core.result.SuccessDataResult;
import com.hbook.spring.HBOOK.core.utitiles.Msg;
import com.hbook.spring.HBOOK.entities.Suppliers;
import org.modelmapper.ModelMapper;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Page;
import org.springframework.http.HttpStatus;
import org.springframework.web.bind.annotation.*;

import java.util.List;
import java.util.stream.Collectors;

@RestController
@RequestMapping("/api/v1")
public class SuppliersController {
    @Autowired
    private ISuppliersService suppliersService;

    // IoC -> Dependency Injection işlemini otomatik yapıyor
    @Autowired
    private ModelMapper modelMapper;

    @Autowired
    private SuppliersDtoConverter converter;

    @GetMapping("/suppliers/{id}")
    public SuccessDataResult<SuppliersResponse> findById(@PathVariable("id") int id) {
        return new SuccessDataResult<>(converter.entityToDto(this.suppliersService.getById(id)), Msg.success);
    }

    @PostMapping("/suppliers")
    @ResponseStatus(HttpStatus.CREATED)
    public Suppliers save(@RequestBody Suppliers suppliers) {
        return this.suppliersService.save(suppliers);
    }

    @PutMapping("/suppliers")
    public Suppliers update(@RequestBody Suppliers suppliers) {
        return this.suppliersService.save(suppliers);
    }

    @DeleteMapping("/suppliers/{id}")
    public Result delete(@PathVariable("id") int id) {
        if (this.suppliersService.delete(id) != 1) {
            return new ErrorResult("Hatalı işlem");
        }
        return new Result(false, "Silme işlemi gerçekleştirildi.");
    }

    @GetMapping("/suppliers/findall")
    private List<SuppliersResponse> findAll() {
        List<Suppliers> suppliersList = this.suppliersService.findAll();
        /*
        List<SuppliersResponse> suppliersResponseList = suppliersList.stream().map(
                suppliers -> converter.entityToDto(suppliers)
        ).collect(Collectors.toList());

         */
        List<SuppliersResponse> suppliersResponseList = suppliersList.stream().map(
                suppliers -> modelMapper.map(suppliers,SuppliersResponse.class)
        ).collect(Collectors.toList());
        return suppliersResponseList;
    }

    @GetMapping("/suppliers/findallwithpage")
    private Page<SuppliersResponse> findAllWithPage(@RequestParam("page") int page, @RequestParam("pageSize") int pageSize) {
        Page<Suppliers> suppliersList = this.suppliersService.findAllWithPage(page, pageSize);
        Page<SuppliersResponse> suppliersResponseList = suppliersList.map(
                suppliers -> converter.entityToDto(suppliers)
        );
        return suppliersResponseList;
    }

    @GetMapping("/suppliers/findbycontactmail/{contactMail}")
   private Suppliers findByContactMail(@PathVariable("contactMail") String contactMail){
        return this.suppliersService.findByContactMail(contactMail);
    }
}
