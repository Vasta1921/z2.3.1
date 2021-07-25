package web.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.*;
import web.model.User;
import web.service.UserService;

import java.util.ArrayList;
import java.util.List;

@Controller
@RequestMapping("/")
public class UserController {

	@Autowired
	private  UserService userService;

	public UserController(UserService userService) {
		this.userService = userService;
	}

	@RequestMapping(value = "hello", method = RequestMethod.GET)
	public String printWelcome(ModelMap model) {
		List<String> messages = new ArrayList<>();
		messages.add("Hello!");
		messages.add("I'm Spring MVC application");
		messages.add("5.2.0 version by sep'19 ");
		model.addAttribute("messages", messages);
		return "hello";
	}
	@GetMapping
	public String getUsers(Model model){
		List<User> users = userService.findAllUsers();
		model.addAttribute("users",users);

		return "userlist";
	}
	@GetMapping("user-save")
	public String openSaveUsers(){
		return "saveuser";
	}

	@PostMapping("user-save")
	public String saveUser(User user){
		userService.saveUser(user);

		return "redirect:/";
	}

	@GetMapping("user-update")
	public String openUpdateUser(){
		return "updateuser";
	}

	@PostMapping("user-update")
	public String updateUser(User user){
		userService.updateUser(user);
		return "redirect:/";
	}

	@GetMapping("user-delete/{id}")
	public String deleteUser(@PathVariable long id){
		User user = userService.findUser(id);
		userService.deleteUser(user);
		return "redirect:/";
	}


}