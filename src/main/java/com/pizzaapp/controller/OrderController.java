package com.pizzaapp.controller;

import java.util.ArrayList;
import java.util.List;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.pizzaapp.factory.Pizza;
import com.pizzaapp.factory.PizzaCrustType;
import com.pizzaapp.factory.PizzaFactory;
import com.pizzaapp.factory.PizzaToppingType;
import com.pizzaapp.factory.PizzaType;

@Controller
public class OrderController {

	@SuppressWarnings("unlikely-arg-type")
	@RequestMapping(value="/buyPizza")
	public ModelAndView buyPizza(@ModelAttribute("buyPizzaFormCommand") ModelAndView view, @RequestParam String pizzaType) {
		Pizza pizza = null;
		if(pizzaType.equals(PizzaType.ITALIAN.toString())) {
			pizza = PizzaFactory.init(PizzaType.ITALIAN);
			List<PizzaCrustType> types = new ArrayList<PizzaCrustType>();
			types.add(new PizzaCrustType("cri1", "crust1", 0));
			types.add(new PizzaCrustType("cri2", "crust2", 0));
			pizza.setAvailableCrusts(types);
			
		}else if(pizzaType.equals(PizzaType.INDIAN.toString())) {
			pizza = PizzaFactory.init(PizzaType.INDIAN);
			List<PizzaCrustType> types = new ArrayList<PizzaCrustType>();
			types.add(new PizzaCrustType("cri3", "crust3", 0));
			types.add(new PizzaCrustType("cri4", "crust4", 0));
			pizza.setAvailableCrusts(types);
		}
		
		List<PizzaToppingType> availableToppings = new ArrayList<PizzaToppingType>();
		availableToppings.add(new PizzaToppingType("top1", "topiing1", 0));
		availableToppings.add(new PizzaToppingType("top2", "topiing2", 0));
		pizza.setAvailableToppings(availableToppings);
		
		view.addObject("pizza", pizza);
		
		return view;
	}

	@RequestMapping(value="/orders")
	public ModelAndView listOrders() {
		return new ModelAndView("orders");
	}
}
