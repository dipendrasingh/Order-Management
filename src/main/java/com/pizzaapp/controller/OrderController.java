package com.pizzaapp.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class OrderController {
	@RequestMapping(value="/orders")
	public ModelAndView mainPage() {
		return new ModelAndView("orders");
	}
}
