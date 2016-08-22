package com.mywardrobe.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.Authentication;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.SessionAttributes;
import org.springframework.web.bind.support.SessionStatus;

import com.mywardrobe.model.Item;
import com.mywardrobe.service.ItemService;
import com.mywardrobe.service.UserService;

@Controller
@SessionAttributes("item")
public class ItemsController {

	@Autowired
	private ItemService itemService;
	@Autowired
	private UserService userService;

	@RequestMapping(value = "/addItem", method = RequestMethod.GET)
	public String addItem(Model model) {
		Item item = new Item();
		item.setName("new item name");
		model.addAttribute("item", item);
		System.out.println("invoking addItem");
		return "item_add";
	}

	@RequestMapping(value = "/addItem", method = RequestMethod.POST)
	public String saveItem(@ModelAttribute Item item, SessionStatus status) {
		item.setUsername(userService.getCurrentUserName());
		itemService.saveItem(item);
		System.out.println("invoking saveItem");
		System.out.println(item);
		status.setComplete();
		return "item_add";
	}

	@RequestMapping(value = "getItems", method = RequestMethod.GET)
	public String getItems(Model model) {
		Authentication auth = SecurityContextHolder.getContext().getAuthentication();
		String username = auth.getName();
		System.out.println(username);
		List<Item> items = itemService.findAllUserItems(username);
		model.addAttribute("items", items);
		return "getItems";
	}

}
