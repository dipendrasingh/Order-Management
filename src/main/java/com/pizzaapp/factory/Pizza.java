package com.pizzaapp.factory;

import java.util.List;

public abstract class Pizza {
	
	public Pizza(PizzaType type) {
		this.type = type;
	}
	
	private List<PizzaCrustType> availableCrusts;
	private List<PizzaToppingType> availableToppings;
	
	private PizzaCrustType selectedCrustType;
	private List<PizzaToppingType> selectedToppings;
	
	int qty;
	
	int totalPrice;

	private PizzaType type = null;
	
	public int calculatePrice() {
		this.totalPrice = 0;
		for(PizzaToppingType topping: selectedToppings) {
			totalPrice = totalPrice + (qty*topping.getPrice());
		}
		totalPrice = totalPrice + (qty*selectedCrustType.getPrice());
		
		return this.getTotalPrice();
	}

	public PizzaType getType() {
		return type;
	}

	public void setType(PizzaType type) {
		this.type = type;
	}

	public List<PizzaCrustType> getAvailableCrusts() {
		return availableCrusts;
	}

	public void setAvailableCrusts(List<PizzaCrustType> availableCrusts) {
		this.availableCrusts = availableCrusts;
	}

	public List<PizzaToppingType> getAvailableToppings() {
		return availableToppings;
	}

	public void setAvailableToppings(List<PizzaToppingType> availableToppings) {
		this.availableToppings = availableToppings;
	}

	public PizzaCrustType getSelectedCrustType() {
		return selectedCrustType;
	}

	public void setSelectedCrustType(PizzaCrustType selectedCrustType) {
		this.selectedCrustType = selectedCrustType;
	}

	public List<PizzaToppingType> getSelectedToppings() {
		return selectedToppings;
	}

	public void setSelectedToppings(List<PizzaToppingType> selectedToppings) {
		this.selectedToppings = selectedToppings;
	}

	public int getQty() {
		return qty;
	}

	public void setQty(int qty) {
		this.qty = qty;
	}

	public int getTotalPrice() {
		return totalPrice;
	}

	public void setTotalPrice(int totalPrice) {
		this.totalPrice = totalPrice;
	}

}
