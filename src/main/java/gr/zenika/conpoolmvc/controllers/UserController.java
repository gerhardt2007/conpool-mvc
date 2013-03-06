package gr.zenika.conpoolmvc.controllers;

import java.util.List;

import gr.zenika.conpoolmvc.domain.User;
import gr.zenika.conpoolmvc.service.UserService;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.google.gson.Gson;
import com.google.gson.GsonBuilder;

@Controller
public class UserController {
	
	private static final Logger logger = LoggerFactory.getLogger(UserController.class);
	
	@Autowired
	private UserService userService;
	
	@RequestMapping(value="users", method=RequestMethod.GET)
	public String list(Model model) {
		logger.info("Got request for /users -> Asking service for list");
		model.addAttribute("users", userService.findAll());
		return "users/list";
	}
	
	@RequestMapping(value="passwords", method=RequestMethod.GET)
	public String listwp(Model model) {
		logger.info("Got request for /users -> Asking service for list");
		model.addAttribute("users", userService.findAll());
		return "users/listwp";
	}
	
	@RequestMapping(value="users/json", method=RequestMethod.GET)
	public String json(Model model) {
		logger.info("Got request for /json -> Asking service for list");
		List<User> users = userService.findAll();
		Gson gson = new GsonBuilder().setPrettyPrinting().create();
		String json = gson.toJson(users);
		model.addAttribute("json", json);
		return "users/json";
	}

}
