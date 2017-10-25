package com.cake.DAO;

import java.util.List;

import com.cake.entity.Cart;

public interface CartDAO {
	public void addToCart(Cart cartitem);
	public List<Cart> getCartItems(String username);
	public void deleteCartItem(Cart cart);
	public Cart getCartItem(int citemid);
	public void updateCartItem(Cart cart);
}
