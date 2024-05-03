package com.lithan.ac.springboot_meals_on_wheels.entities;

import javax.persistence.*;

@Entity
@Table(name = "rider_requests")
public class Rider {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long id;

    @Column(name = "rider_name")
    private String rider_name;

    @Column(name = "address")
    private String address;

    @Column(name = "phone_number")
    private String phone_number;

    @Column(name = "email_address")
    private String email_address;

    @Column(name = "meal_type")
    private String meal_type;

    @Column(name = "preferred_delivery_time")
    private String preferred_delivery_time;

    @Column(name = "delivery_days")
    private String delivery_days;

    @Column(name = "budget")
    private double budget;

    @Column(name = "currency")
    private String currency;

    @Column(name = "additional_info")
    private String additional_info;

    // Constructors, getters, and setters

    public Rider() {
    }

    
	public Rider(Long id, String rider_name, String address, String phone_number, String email_address,
			String meal_type, String preferred_delivery_time, String delivery_days, double budget, String currency,
			String additional_info) {
		super();
		this.id = id;
		this.rider_name = rider_name;
		this.address = address;
		this.phone_number = phone_number;
		this.email_address = email_address;
		this.meal_type = meal_type;
		this.preferred_delivery_time = preferred_delivery_time;
		this.delivery_days = delivery_days;
		this.budget = budget;
		this.currency = currency;
		this.additional_info = additional_info;
	}


	public Long getId() {
		return id;
	}


	public void setId(Long id) {
		this.id = id;
	}


	public String getRider_name() {
		return rider_name;
	}


	public void setRider_name(String rider_name) {
		this.rider_name = rider_name;
	}


	public String getAddress() {
		return address;
	}


	public void setAddress(String address) {
		this.address = address;
	}


	public String getPhone_number() {
		return phone_number;
	}


	public void setPhone_number(String phone_number) {
		this.phone_number = phone_number;
	}


	public String getEmail_address() {
		return email_address;
	}


	public void setEmail_address(String email_address) {
		this.email_address = email_address;
	}


	public String getMeal_type() {
		return meal_type;
	}


	public void setMeal_type(String meal_type) {
		this.meal_type = meal_type;
	}


	public String getPreferred_delivery_time() {
		return preferred_delivery_time;
	}


	public void setPreferred_delivery_time(String preferred_delivery_time) {
		this.preferred_delivery_time = preferred_delivery_time;
	}


	public String getDelivery_days() {
		return delivery_days;
	}


	public void setDelivery_days(String delivery_days) {
		this.delivery_days = delivery_days;
	}


	public double getBudget() {
		return budget;
	}


	public void setBudget(double budget) {
		this.budget = budget;
	}


	public String getCurrency() {
		return currency;
	}


	public void setCurrency(String currency) {
		this.currency = currency;
	}


	public String getAdditional_info() {
		return additional_info;
	}


	public void setAdditional_info(String additional_info) {
		this.additional_info = additional_info;
	}



}
