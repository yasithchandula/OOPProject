package com.oop.model;

public class item {
	
	//Declare properties
	private int id;
	private String name;
	private String type;
	private String size;
	private float price;
	private String description;
	private int available_qty;
	private int sold_qty;
	
	
	
	
	//Declare constructor
	
	public item(int id, String name, String type, String size, float price, String description, int available_qty, int sold_qty) {
		this.id = id;
		this.name = name;
		this.type = type;
		this.size = size;
		this.price = price;
		this.description = description;
		this.available_qty = available_qty;
		this.sold_qty = sold_qty;
	}
	
	
	//Declare overloaded constructor
	public item(int id, String name, String type, String size, float price, String description, int available_qty) {
		super();
		this.id = id;
		this.name = name;
		this.type = type;
		this.size = size;
		this.price = price;
		this.description = description;
		this.available_qty = available_qty;
	}


	//Declare overloaded constructor
	public item(String name, String type, String size, float price, String description, int available_qty) {
		super();
		this.name = name;
		this.type = type;
		this.size = size;
		this.price = price;
		this.description = description;
		this.available_qty = available_qty;
	}
	
	//Declare overloaded constructor
	public item(String name) {
		this.name = name;
	}
	
	//Declare overloaded constructor
	public item(int id, String name, String size, String type, int qty, float price) {
		
		this.id=id;
		this.name=name;
		this.size=size;
		this.type=type;
		this.available_qty=qty;
		this.price=price;

	}
	
	//Declare getters and setters

	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public String getName() {
		return this.name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getType() {
		return this.type;
	}
	public void setType(String type) {
		this.type = type;
	}
	public String getSize() {
		return this.size;
	}
	public void setSize(String size) {
		this.size = size;
	}
	public float getPrice() {
		return this.price;
	}
	public void setPrice(float price) {
		this.price = price;
	}
	public String getDescription() {
		return this.description;
	}
	public void setDescription(String description) {
		this.description = description;
	}
	public int getAvailable_qty() {
		return this.available_qty;
	}
	public void setAvailable_qty(int available_qty) {
		this.available_qty = available_qty;
	}
	public int getSold_qty() {
		return this.sold_qty;
	}
	public void setSold_qty(int sold_qty) {
		this.sold_qty = sold_qty;
	}
	
	
	
	
	
	

}
