package dao;

import java.util.*;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

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
		// TODO Auto-generated constructor stub
	}
	
	/*public void setSessionFactory(SessionFactory sf){
		this.sessionFactory=sf;
		
	}*/
	 public void addPerson(Product p) {
	        Session session = this.sessionFactory.getCurrentSession();
	        session.persist(p);
	        
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
	    
	    public Product getPersonById(String id) {
	        Session session = this.sessionFactory.getCurrentSession();      
	        Product p = (Product) session.load(Product.class, new String(id));
	        
	        return p;
	    }
	    
	    public void removePerson(String id) {
	        Session session = this.sessionFactory.getCurrentSession();
	        Product p = (Product) session.load(Product.class, new String(id));
	        if(null != p){
	            session.delete(p);
	        }
	        
	    }


}
