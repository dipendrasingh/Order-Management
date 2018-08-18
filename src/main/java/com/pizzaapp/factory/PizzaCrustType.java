package com.pizzaapp.factory;

public class PizzaCrustType {
	
	String code;
	String type;
	int price;
	
	public PizzaCrustType(String code, String type, int price) {
		this.code = code;
		this.type = type;
		this.price = price;
	}
	
	public String getCode() {
		return code;
	}
	public void setCode(String code) {
		this.code = code;
	}
	public String getType() {
		return type;
	}
	public void setType(String type) {
		this.type = type;
	}

	public int getPrice() {
		return price;
	}

	public void setPrice(int price) {
		this.price = price;
	}
	
}
