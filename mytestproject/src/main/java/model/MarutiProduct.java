package model;

public class MarutiProduct {
	private String id;
	private String name;
	private String Specification;
	private double price;
	private String milage;
	private String displacement;
	private String status;
	public MarutiProduct(String id,String name,String Specification,double price,String milage,String displacement,String status)
	{
		this.id=id;
		this.name=name;
		this.Specification=Specification;
		this.price=price;
		this.milage=milage;
	    this.displacement=displacement;
		this.status=status;
	}
	public String getId() {
		return id;
	}
	public void setId(String id) {
		this.id = id;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getSpecification() {
		return Specification;
	}
	public void setSpecification(String specification) {
		Specification = specification;
	}
	public double getPrice() {
		return price;
	}
	public void setPrice(double price) {
		this.price = price;
	}
	public String getMilage() {
		return milage;
	}
	public void setMilage(String milage) {
		this.milage = milage;
	}
	public String getDisplacement() {
		return displacement;
	}
	public void setDisplacement(String displacement) {
		this.displacement = displacement;
	}
	public String getStatus() {
		return status;
	}
	public void setStatus(String status) {
		this.status = status;
	}

}
