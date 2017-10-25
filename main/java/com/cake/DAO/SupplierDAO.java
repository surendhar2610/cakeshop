package com.cake.DAO;

import java.util.List;

import com.cake.entity.Category;
import com.cake.entity.Supplier;

public interface SupplierDAO {
	public void addsupplier(Supplier supplier);
	public List<Supplier> getSupplierList();
	public void deletesupplier(String id);
	public Supplier getSupplier(String id);
	public void editSupplier(Supplier supplier);
}
