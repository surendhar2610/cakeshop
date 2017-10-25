package com.cake.DAO;

import java.util.List;

import com.cake.entity.Category;
import com.cake.entity.Product;


public interface ProductDAO {
	public void addproduct(Product product);
	public List<Product> getProductList();
	public void deleteproduct(int id);
	public Product getProduct(int id);
	public void editProduct(Product product);
	List<Category> getAllCategories();
	
}
