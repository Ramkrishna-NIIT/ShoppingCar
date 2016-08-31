package model;

import java.io.Serializable;
import java.util.List;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;
import javax.persistence.Transient;
import javax.validation.constraints.DecimalMax;
import javax.validation.constraints.DecimalMin;

import org.hibernate.validator.constraints.Length;

import org.springframework.web.multipart.MultipartFile;




@Entity
@Table(name="Product")
public class Product implements Serializable{
	
	 @Id
	 @Column(name="id")
	 @GeneratedValue(strategy=GenerationType.IDENTITY)
	private int id;
	 
	 @javax.validation.constraints.NotNull(message="Name Can not be null...")
	private String name;
	 @DecimalMax(value="99999999.99",message="The decimal value can not be more than 99999999.99")
	 @DecimalMin(value="100000.00",message="The decimal value can not be less than 100000.00")
	private double price;
	 @javax.validation.constraints.NotNull(message="Category can not be null")
	private String category;
	 @javax.validation.constraints.NotNull(message="Milage can not be null")
	private String milage;
	 @javax.validation.constraints.NotNull(message="Displacement Can not be null")
	private String displacement;
	 @Length(max=1000,min=10,message="The message description should be within 10 to 1000 character")
	private String description;
	
	@Transient
	private MultipartFile image ;
	
    
	




	public MultipartFile getImage() {
		return image;
	}


	public void setImage(MultipartFile image) {
		this.image = image;
	}


	public int getId() {
		return id;
	}


	public void setId(int id) {
		this.id = id;
	}


	public String getName() {
		return name;
	}


	public void setName(String name) {
		this.name = name;
	}


	public double getPrice() {
		return price;
	}


	public void setPrice(double price) {
		this.price = price;
	}


	public String getCategory() {
		return category;
	}


	public void setCategory(String category) {
		this.category = category;
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


	public String getDescription() {
		return description;
	}


	public void setDescription(String description) {
		this.description = description;
	}


	public Product()
	{

	}
}
