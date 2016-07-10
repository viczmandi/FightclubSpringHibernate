package com.fightclub.controller;

import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import com.fightclub.model.User;
import com.fightclub.service.UserService;

@Controller
public class UserController {
	@Autowired
	private UserService userService;

	@RequestMapping("/")
	public String setupForm(Map<String, Object> map) {
		User user = new User();
		map.put("user", user);
		map.put("userList", userService.getAllUsers());
		return "user";
	}

	@RequestMapping(value = "/user.do", method = RequestMethod.POST)
	public String doActions(@ModelAttribute User user, BindingResult result, @RequestParam String action,
			Map<String, Object> map) {
		User userResult = new User();
		switch (action.toLowerCase()) {
		case "add":
			userService.add(user);
			userResult = user;
			break;
		case "edit":
			userService.edit(user);
			userResult = user;
			break;
		case "delete":
			userService.delete(user.getId());
			userResult = new User();
			break;
		case "search":
			User searchedUser = userService.getUser(user.getId());
			userResult = searchedUser != null ? searchedUser : new User();
			break;
		}
		map.put("user", userResult);
		map.put("userList", userService.getAllUsers());
		return "user";
	}
}
