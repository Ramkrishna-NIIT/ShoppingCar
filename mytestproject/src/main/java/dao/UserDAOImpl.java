package dao;

import java.util.List;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import model.userlist;



@Repository
public class UserDAOImpl {
	 private SessionFactory sessionFactory;
	  
	  @Autowired
	public UserDAOImpl(SessionFactory sessionFactory)
	{
		this.sessionFactory=sessionFactory;
	}
	  public UserDAOImpl() {
		
	}
	

	 public void addUser(userlist u) {
	        Session session = this.sessionFactory.getCurrentSession();
	        System.out.println("Inside addUser method");
	        session.save(u);
	        
	    }
	    
	    public void updateUser(userlist u) {
	        Session session = this.sessionFactory.getCurrentSession();
	        session.update(u);
	    }
	    
	  
		public List<userlist> listUser() {
	        Session session = this.sessionFactory.getCurrentSession();
	        List<userlist> userList = session.createQuery("from userlist").list();
	        return userList;
	    }
	    
	    public userlist getUserById(int id) {
	        Session session = this.sessionFactory.getCurrentSession();      
	        userlist u = session.load(userlist.class, new Integer(id));
	        
	        return u;
	    }
	    
	    public void removeUser(int id) {
	        Session session = this.sessionFactory.getCurrentSession();
	        userlist u = session.load(userlist.class, new Integer(id));
	        if(null != u){
	            session.delete(u);
	        }
	        
	    }


}
