 package dao;

import java.util.*;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;


import model.Product;


@Repository
public class ProductDAOImpl {
	
	
	
	  private SessionFactory sessionFactory;
	  
	  @Autowired
	public ProductDAOImpl(SessionFactory sessionFactory)
	{
		this.sessionFactory=sessionFactory;
	}
	  public ProductDAOImpl() {
		
	}
	

	 public void addPerson(Product p) {
	        Session session = this.sessionFactory.getCurrentSession();
	        session.save(p);
	        
	    }
	    
	    public void updatePerson(Product p) {
	        Session session = this.sessionFactory.getCurrentSession();
	        session.update(p);
	    }
	    
	  
		public List<Product> listPersons() {
	        Session session = this.sessionFactory.getCurrentSession();
	        List<Product> personsList = session.createQuery("from Product").list();
	        return personsList;
	    }
	    
	    public Product getPersonById(int id) {
	        Session session = this.sessionFactory.getCurrentSession();      
	        Product p = session.load(Product.class, new Integer(id));
	        
	        return p;
	    }
	    
	    public void removePerson(int id) {
	        Session session = this.sessionFactory.getCurrentSession();
	        Product p = session.load(Product.class, new Integer(id));
	        if(null != p){
	            session.delete(p);
	        }
	        
	    }


}
