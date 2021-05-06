package com.example.proj_dealership;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name = "user")
public class UserEntity {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    
    private Long id;
    private String first_name;
    private String last_name;
    @Column(unique = true)
    private String email;
    private String password;
    
    public Long getID() {
    	return id;
    }
    public void setID(Long id) {
    	this.id = id;
    }
    
    public String getfirstName() {
    	return first_name;
    }
	public void setFirstName(String first_name) {
		this.first_name = first_name;
		
	}
    
    public String getLastName() {
    	return last_name;
    }
	public void setLastName(String last_name) {
		this.last_name = last_name;
		
	}
	
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	
	public String getPassword() {
		return password;
	}
	public void setPassword(String password) {
		this.password = password;
	}

}