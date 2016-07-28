package com.aem.controller;

import java.util.Map;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.aem.model.Login;
import com.aem.service.LoginService;

@Controller
public class LoginController {

	@Autowired
	private LoginService loginService;

/*	@RequestMapping(value = "/home", method = RequestMethod.GET)
	public String showLogin(Map<String, Object> map, ModelMap model) {
		System.out.println("login controller show method");
		model.addAttribute("Login", new Login());
		map.put("Login", new Login());
		return "home";
	}

	 showing login page after click on home hyperlink 
	@RequestMapping(value = "/login", method = RequestMethod.GET)
	public String displayLogin(Map<String, Object> map) {
		System.out.println("login controller");
		return "login";
	}*/

	@RequestMapping(value = "/userlogin", method = RequestMethod.POST)
	public String loginRequest(HttpServletRequest request) {

		String email = request.getParameter("email");
		String password = request.getParameter("password");
		boolean loginStatus = loginService.userLoginService(email, password);
		if (loginStatus) {
			return "home";
		}
		return "dashboard";

	}

}
