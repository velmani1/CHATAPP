package com.BagStore.service;

import com.BagStore.model.Cart;

public interface CartService {

    Cart getCartById(int cartId);

    void update(Cart cart);
}
