package controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import dao.ProductDAOImpl;
import model.Product;



@Service
@Transactional
public class ProductService {
	
	public ProductDAOImpl pdi;
	
	@Autowired
	public ProductService(ProductDAOImpl pdi)
	{
		this.pdi=pdi;
	}
	
	public ProductService() {
		super();
	}
	//@Transactional
	public void addPerson(Product p) {
	        this.pdi.addPerson(p);
	    }
	//@Transactional
    public void updatePerson(Product p) {
        this.pdi.updatePerson(p);
    }
	
	//@Transactional
    public List<Product> listPersons() {
        return this.pdi.listPersons();
    }
	
	//@Transactional
    public Product getPersonById(String id) {
        return this.pdi.getPersonById(id);
    }
	

    public void removePerson(String id) {
        this.pdi.removePerson(id);
    }


}
