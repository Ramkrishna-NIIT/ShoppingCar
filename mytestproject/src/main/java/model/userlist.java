package model;

import java.io.Serializable;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

import org.hibernate.validator.constraints.Email;
import org.hibernate.validator.constraints.Length;
import org.hibernate.validator.constraints.NotBlank;
import org.hibernate.validator.constraints.NotEmpty;

@Entity
@Table
public class userlist implements Serializable {
	@Id
	@Column(name="id")
	 @GeneratedValue(strategy=GenerationType.IDENTITY)
	private int id;
	@NotBlank(message="Name Can not be null...")
	private String username;
	@NotBlank(message="PASSWORD Can not be null...")
	 @Length(max = 20,message="maximum length of Password=20")
	private String password;
	
	@NotBlank(message="PASSWORD Can not be null...")
	 @Length(max = 20,message="maximum length of Password=20")

	private String confirmpassword;
	@NotBlank(message="email can not be null")
	private String email;
	public String role;
	public boolean enabled;
	
	
	
	public String getRole() {
		return role;
	}



	public void setRole(String role) {
		this.role = role;
	}



	public boolean getEnabled() {
		return enabled;
	}



	public void setEnabled(boolean b ) {
		this.enabled =b ;
	}



	public int getId() {
		return id;
	}



	public void setId(int id) {
		this.id = id;
	}



	public String getUsername() {
		return username;
	}



	public void setUsername(String username) {
		this.username = username;
	}



	public String getPassword() {
		return password;
	}



	public void setPassword(String password) {
		this.password = password;
	}



	public String getConfirmpassword() {
		return confirmpassword;
	}



	public void setConfirmpassword(String confirmpassword) {
		this.confirmpassword = confirmpassword;
	}


	public String getEmail() {
		return email;
	}



	public void setEmail(String email) {
		this.email = email;
	}



	public userlist()
	{
		
	}

	

}
