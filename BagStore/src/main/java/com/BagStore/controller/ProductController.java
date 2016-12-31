package com.BagStore.controller;

import com.BagStore.model.Product;
import com.BagStore.service.ProductService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import java.io.IOException;
import java.util.List;

@Controller
@RequestMapping("/product")
public class ProductController {

	@Autowired
	private ProductService productService;

	@RequestMapping("/getall")
	public String getprodall()
	{
		System.out.println("working");
		return "productList";
	}
	@RequestMapping("/listall")
	public @ResponseBody List<Product> getProducts(Model model) {
		List<Product> products = productService.getProductList();
		model.addAttribute("products", products);
System.out.println("---------------------------"+products.get(0).getProductId());
		return products;
	}

	@RequestMapping("/viewProduct/{productId}")
	public String viewProduct(@PathVariable("productId") int productId, Model model) throws IOException {
		Product product = productService.getProductById(productId);
		model.addAttribute("product", product);

		return "viewProduct";
	}

	@RequestMapping("/productList")
	public @ResponseBody String getProductByCategory(@RequestParam("searchCondition") String searchCondition, Model model) {
		List<Product> products = productService.getProductList();
		model.addAttribute("products", products);
		model.addAttribute("searchCondition", searchCondition);
System.out.println("in prod list view all");
		return "productList";
	}

} // The End of Class;
