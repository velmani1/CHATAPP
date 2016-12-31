package com.BagStore.controller;


import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.BagStore.model.BillingAddress;
import com.BagStore.model.Customer;

import com.BagStore.model.ShippingAddress;
import com.BagStore.service.CustomerService;
//import com.BagStore.model.SendEmail;

import javax.validation.Valid;
import java.util.List;

@Controller
public class RegisterController {
     
	@Autowired
	SendMail sendEmail;
	
	public void EmailApi(Customer customer)
	{
		
	String toAddress = customer.getCustomerEmail();
	System.out.println(toAddress);
	String fromAddress = "vels8infotech@gmail.com";
	

	// email subject
	String subject = "Hey..This email sent by Crunchify's Spring MVC Tutorial";

	// email body
	String msgBody = "There you go..You got an email..";
	System.out.println(toAddress);
	sendEmail.readyToSendEmail(toAddress,fromAddress,subject,msgBody);
}
    @Autowired
    CustomerService customerService;

    @RequestMapping("/register")
    public String registerCustomer(Model model){
        Customer customer = new Customer();
        BillingAddress billingAddress = new BillingAddress();
        ShippingAddress shippingAddress = new ShippingAddress();
        customer.setBillingAddress(billingAddress);
        customer.setShippingAddress(shippingAddress);

        model.addAttribute("customer", customer);
        return "registerCustomer";
        }
    @RequestMapping(value = "/register", method = RequestMethod.POST)
    public String registerCustomerPost(@Valid @ModelAttribute("customer") Customer customer, BindingResult result, Model model){

        if(result.hasErrors()){
            return "registerCustomer";
        }

        List<Customer> customerList = customerService.getAllCustomers();

        for (int i=0; i< customerList.size(); i++){
            if(customer.getCustomerEmail().equals(customerList.get(i).getCustomerEmail())){
                model.addAttribute("emailMsg", "Email already exists");
                
                return "registerCustomer";
            }

            if(customer.getUsername().equals(customerList.get(i).getUsername())){
                model.addAttribute("usernameMsg", "Username already exists");

                return "registerCustomer";
            }
            if(customer.getCustomerPhone().equals(customerList.get(i).getCustomerPhone())){
                model.addAttribute("phoneMsg", "mobile number already exists");
            }
        }
      
        customer.setEnabled(true);
        
        customerService.addCustomer(customer);
        if(customer.getCustomerEmail()!=null)
        {
        	String toAddress = customer.getCustomerEmail();
        	System.out.println(toAddress);
        	String fromAddress = "vels8infotech@gmail.com";
        	
        	// email subject
        	String subject = "Hey..This email sent by Crunchify's Spring MVC Tutorial";

        	// email body
        	String msgBody = "There you go..You got an email..";
        	System.out.println(toAddress);
        	sendEmail.readyToSendEmail(toAddress,fromAddress,subject,msgBody);
        }
        return "registerCustomerSuccess";
      
} 
}// The End of Class;
