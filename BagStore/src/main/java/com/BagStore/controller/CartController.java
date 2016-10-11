package com.BagStore.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.Authentication;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;

import com.BagStore.model.Customer;
import com.BagStore.service.CustomerService;

@Controller
@RequestMapping("/customer/cart")
public class CartController {

	@Autowired
	private CustomerService customerService;

	@RequestMapping
	public String getCart() {
		Authentication auth = SecurityContextHolder.getContext().getAuthentication();
		Customer customer = customerService.getCustomerByUsername(auth.getName());
		int cartId = customer.getCart().getCartId();

		return "redirect:/customer/cart/" + cartId;
	}

	@RequestMapping("/{cartId}")
	public String getCartRedirect(@PathVariable(value = "cartId") int cartId, Model model) {
		model.addAttribute("cartId", cartId);

		return "cart";
	}
	/*
	 * @RequestMapping("/order Now") public String disp() { return "success"; }
	 */
} // The End of Class;
