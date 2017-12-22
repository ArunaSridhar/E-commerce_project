package com.niit.controllers;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.niit.service.ProductService;
@Controller
public class HomeController {
@Autowired
private ProductService productService;
@RequestMapping("/home")
public String homePage(HttpSession session){
session.setAttribute("categories", productService.getAllCategories());
	return "home";
	
}
@RequestMapping("/aboutus")
public String aboutUs(){
	return "aboutus";
	
}
@RequestMapping("/contactus")
public String  contactus(){
	return "contactus";
	
}
@RequestMapping("/footer")
public String footer(){
	return "aboutus";
	
	
}
@RequestMapping("/header")
public String header(){
	return "aboutus";
	
	
}
@RequestMapping("/login")
public String login(@RequestParam(required=false)String error,Model model){
	if(error!=null)
		model.addAttribute("error","Invalid username/password");
	return "login";
	
}
@RequestMapping("/email")
public String emailpage(){
	return "email";
}
@RequestMapping("/result")
public String result(){
	return "result";
}
@RequestMapping("/apple")
public String tennis(){
	return "apple";
}
@RequestMapping("/dell")
public String cricket(){
	return "dell";
}
@RequestMapping("/hp")
public String basketball(){
	return "hp";
}
@RequestMapping("/acer")
public String hockey(){
	return "acer";
}
@RequestMapping("/lenovo")
public String golf(){
	return "lenovo";
}
@RequestMapping("/hcl")
public String volleyball(){
	return "hcl";
}

}



