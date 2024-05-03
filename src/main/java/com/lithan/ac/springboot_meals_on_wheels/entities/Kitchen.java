package com.lithan.ac.springboot_meals_on_wheels.entities;

import javax.persistence.*;


@Entity
@Table(name="Kitchen")
public class Kitchen {
    @Id
    @Column(name="id")
    @GeneratedValue(strategy= GenerationType.IDENTITY)
    private Long id;

    @Column(name="meal_name")
    private String meal_name;

    @Column(name="description")
    private String description;

    

    @Column(name="Meal_Price")
    private String price;
    
    private String Meal_photo;

    public Long getId() {
        return id;
    }

    public void setId(Long id) {
        this.id = id;
    }

  
    public String getmeal_name() {
		return meal_name;
	}

	public void setmeal_name(String meal_name) {
		this.meal_name = meal_name;
	}

	public String getdescription() {
		return description;
	}

	public void setdescription(String description) {
		this.description = description;
	}

	public String getPrice() {
		return price;
	}

	public void setPrice(String price) {
		this.price = price;
	}



	public String getMeal_photo() {
		return Meal_photo;
	}

	public void setMeal_photo(String Meal_photo) {
		this.Meal_photo = Meal_photo;
	}

	
	
	


}
