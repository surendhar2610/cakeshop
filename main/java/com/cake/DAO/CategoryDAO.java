package com.cake.DAO;

import java.util.List;

import com.cake.entity.Category;
import com.cake.entity.User;

public interface CategoryDAO {
	public void addCategory(Category category);
	public List<Category> getCategoryList();
	public void deletecategory(String id);
	public Category getCategory(String id);
	public void editCategory(Category category);
}
