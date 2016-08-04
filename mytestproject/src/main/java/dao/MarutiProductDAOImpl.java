package dao;

import java.util.ArrayList;
import java.util.List;

import model.MarutiProduct;


public class MarutiProductDAOImpl {
	ArrayList<MarutiProduct> marutiProducts=new ArrayList<MarutiProduct>();
	
	
	public MarutiProductDAOImpl(){
		MarutiProduct p1=new MarutiProduct("MP1","Maruti Swift","Petrol",2040000,"20.4kmpl","1197cc","Very Good");
		MarutiProduct p2=new MarutiProduct("MP2","Maruti __","__",2040000,"__","__","__");
		MarutiProduct p3=new MarutiProduct("MP2","Maruti __","__",2040000,"__","__","__");
		MarutiProduct p4=new MarutiProduct("MP2","Maruti __","__",2040000,"__","__","__");
		MarutiProduct p5=new MarutiProduct("MP2","Maruti __","__",2040000,"__","__","__");
		MarutiProduct p6=new MarutiProduct("MP2","Maruti __","__",2040000,"__","__","__");
		marutiProducts.add(p1);
		marutiProducts.add(p2);
		marutiProducts.add(p3);
		marutiProducts.add(p4);
		marutiProducts.add(p5);
		marutiProducts.add(p6);
	
	}
	public List<MarutiProduct> getMarutiProductList()
	{
		return marutiProducts;
	}

	
	
	
}
