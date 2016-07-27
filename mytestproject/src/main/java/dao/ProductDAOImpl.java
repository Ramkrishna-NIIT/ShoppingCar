
package dao;


import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

import model.Product;

public class ProductDAOImpl {
	
	
		
		ArrayList<Product> Products=new ArrayList<Product>();
		
		public ProductDAOImpl(){
	     Product p1=new Product("PRD1","Aixam 400","Micro Car",120000,"Good");
	     Product p2=new Product("PRD2","Biscuter","Micro Car",150000,"Average");
	     Product p3=new Product("PRD3","Mazda R360","Micro Car",200000,"Very Good");
	     Product p4=new Product("PRD4","Subaru 360","Micro Car",250000,"Stylish");
	     Product p5=new Product("PRD5","Smart Fortwo","Micro Car",300000,"Great");
	     Product p6=new Product("PRD6","Corbin Sparrow","Micro Car",500000,"Excellent");
	     Products.add(p1);
	     Products.add(p2);
	     Products.add(p3);
	     Products.add(p4);
	     Products.add(p5);
	     Products.add(p6);
		}
		
		public List<Product> getProductList()
		{
			return Products;
		}
	     
	     
	     
	     
	

}
