package dao;

import java.util.ArrayList;
import java.util.List;

import model.HyndaiProduct;





public class HyndaiProductDAOImpl {
	ArrayList<HyndaiProduct> hyndaiProducts=new ArrayList<HyndaiProduct>();
	
	public HyndaiProductDAOImpl(){
		HyndaiProduct p1=new HyndaiProduct("PRD1","Aixam 400","Micro Car",120000,"Good");
		HyndaiProduct p2=new HyndaiProduct("PRD2","Biscuter","Micro Car",150000,"Average");
		HyndaiProduct p3=new HyndaiProduct("PRD3","Mazda R360","Micro Car",200000,"Very Good");
		HyndaiProduct p4=new HyndaiProduct("PRD4","Subaru 360","Micro Car",250000,"Stylish");
		HyndaiProduct p5=new HyndaiProduct("PRD5","Smart Fortwo","Micro Car",300000,"Great");
		HyndaiProduct p6=new HyndaiProduct("PRD6","Corbin Sparrow","Micro Car",500000,"Excellent");
		hyndaiProducts.add(p1);
		hyndaiProducts.add(p2);
		hyndaiProducts.add(p3);
		hyndaiProducts.add(p4);
		hyndaiProducts.add(p5);
		hyndaiProducts.add(p6);
	}
	


	public List<HyndaiProduct> getHyndaiProductList() {

		return hyndaiProducts;
	}

	
     
     
     
     


}
