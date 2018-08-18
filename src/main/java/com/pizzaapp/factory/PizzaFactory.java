package com.pizzaapp.factory;

public class PizzaFactory {
	public static Pizza init(PizzaType type) {
		Pizza pizza = null;
		switch(type) {
		case ITALIAN :
			pizza = new ItalianPizza();
			break;
		case INDIAN :
			pizza = new IndianPizza();
			break;
		default:
			break;
		}

		return pizza;
	}
}
