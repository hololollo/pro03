package com.company.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import com.company.dto.Basket;
import com.company.service.BasketService;

@Controller
@RequestMapping("/basket/")
public class BasketController {
	@Autowired
	private BasketService basketService;
	
	@GetMapping("basketList.do")
	public String getBasketList(Model model) {
		List<Basket> basketList = basketService.getBasketList();
		model.addAttribute("basketList", basketList);
		return "basket/basketList";
	}
}
