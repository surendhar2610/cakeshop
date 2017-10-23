package com.user.DAO;


import com.user.entity.Cart;
import com.user.entity.CartItem;

public interface CartItemDAO {
	public void addCartItem(CartItem cartItem);
	public void removeCartItem(int cartItemId);
	public void removeAllCartItem(int cartId);
	public Cart getCart(int cartId);

}
