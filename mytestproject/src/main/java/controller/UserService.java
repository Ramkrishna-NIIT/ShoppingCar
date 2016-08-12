package controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;


import dao.UserDAOImpl;

import model.userlist;

@Service
@Transactional
public class UserService {
public UserDAOImpl udi;
	
	@Autowired
	public UserService(UserDAOImpl udi)
	{
		this.udi=udi;
	}
	
	public UserService() {
		super();
	}
	//@Transactional
	public void addUser(userlist u) {
	        this.udi.addUser(u);
	    }
	//@Transactional
    public void updateUser(userlist u) {
        this.udi.updateUser(u);
    }
	
	//@Transactional
    public List<userlist> listUser() {
        return this.udi.listUser();
    }
	
	//@Transactional
    public userlist getUserById(int id) {
        return this.udi.getUserById(id);
    }
	

    public void removeUser(int id) {
        this.udi.removeUser(id);
    }




	

}
