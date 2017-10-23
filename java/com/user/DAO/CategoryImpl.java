package com.user.DAO;

import java.util.List;


import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.user.entity.Category;
import com.user.entity.User;
@Repository
public class CategoryImpl implements CategoryDAO  {
	@Autowired
	SessionFactory sessionFactory;
	public void addCategory(Category category)
	{
	try
	{
		Session session=sessionFactory.openSession();
		Transaction trans=session.beginTransaction();
		session.save(category);
		trans.commit();
		session.flush();
		session.close();
	}
	catch(Exception e)
	{
		System.out.println(e);
	}
	}
	public List<Category> getCategoryList(){
		Session session=sessionFactory.openSession();
		Transaction trans=session.beginTransaction();
		List<Category> catlist = session.createQuery("from Category").list();
		trans.commit();
		session.flush();
		session.close();
		return catlist;
		
	}
	public void deletecategory(String id)
	{
		Session session=sessionFactory.openSession();
		Transaction tran=session.beginTransaction();
		Category category=(Category)session.get(Category.class,id); 
		session.delete(category);
		tran.commit();
		session.close();
		
	}
	public Category getCategory(String id)
	{
			Session session=sessionFactory.openSession();
			Transaction trans=session.beginTransaction();
			Category category=(Category)session.get(Category.class,id);
			trans.commit();
			session.flush();
			session.close();
			return category;
		}
		
	public void editCategory(Category category)
	{
		Session session=sessionFactory.openSession();
		Transaction tran=session.beginTransaction(); 
		session.update(category);
		tran.commit();
		session.flush();
		session.close();
		}


}