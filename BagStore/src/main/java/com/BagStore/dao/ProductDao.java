package com.BagStore.dao;


import com.BagStore.model.Product;

import java.util.List;

public interface ProductDao {

    List<Product> getProductList();

    Product getProductById (int id);

    void addProduct(Product product);

    void editProduct(Product product);

    void deleteProduct(Product product);
}
