package com.BagStore.controller.admin;

import com.BagStore.model.Customer;
import com.BagStore.model.Product;
import com.BagStore.service.CustomerService;
import com.BagStore.service.ProductService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import java.util.List;

@Controller
@RequestMapping("/admin")
public class AdminHome {

    @Autowired(required=true)
    private ProductService productService;

    @Autowired(required=true)
    private CustomerService customerService;

    @RequestMapping
    public String adminPage(){
        return "admin";
    }
   
    @RequestMapping("/productInventory")
    public String productInventory(Model model){
        List<Product> products = productService.getProductList();
        model.addAttribute("products", products);

        return "productInventory";
    }

    @RequestMapping("/customer")
    public String customerManagerment(Model model){

        List<Customer> customerList = customerService.getAllCustomers();
        model.addAttribute("customerList", customerList);

        return "customerManagement";
    }


} // The End of Class;
