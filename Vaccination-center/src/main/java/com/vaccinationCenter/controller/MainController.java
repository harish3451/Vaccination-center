package com.vaccinationCenter.controller;

import java.util.List;

import org.apache.catalina.connector.Response;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatusCode;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.vaccinationCenter.entity.Citizens;
import com.vaccinationCenter.entity.City;
import com.vaccinationCenter.entity.UserDetails;
import com.vaccinationCenter.entity.VaccinationCenter;
import com.vaccinationCenter.repository.CitizenRepo;
import com.vaccinationCenter.repository.CityRepo;
import com.vaccinationCenter.repository.UserRepository;
import com.vaccinationCenter.repository.VaccinationCenterRepo;

import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpSession;


@Controller
public class MainController {
	
	@Autowired
	UserRepository userRepo;
	
	@Autowired
	CitizenRepo cRepo;
	
	@Autowired
	VaccinationCenterRepo vcRepo;
	
	@Autowired
	CityRepo cityRepo;
	
	HttpSession session = null ;
	@PostMapping("/login")
	public String Login(@RequestParam("username") String name, @RequestParam("password") String password, Model model,HttpServletRequest request)
	{
		
		UserDetails user =  userRepo.findByusername(name);
		if(user== null) {
			return "register";
		}
		if(user.getPassword().equals(password)) {
			session= request.getSession();
			session.setAttribute("user", "loggedin");
			return "home";
		}
		
		model.addAttribute("name", user);
		return "index";
	}
	
	@RequestMapping("/register")
	public String ok() {
		return "register";
	}
	
	@GetMapping("/registration")
	public String Register(@RequestParam("username") String name, @RequestParam("password") String password) {
		UserDetails user = new UserDetails(name,password);
		userRepo.save(user);
		return "index";
	}
	
	@GetMapping("/citizens")
	public String Citizenlist(Model model) {
		if(session == null) {
			return "index";
		}
		List<Citizens> cs  = cRepo.findAll();
		
		model.addAttribute("cs",cs);
		return "citizens";
	}
	
	
	@RequestMapping("/center")
	public String Center(Model model) {
//		if(session == null) {
//			return "index";
//		}
		List<VaccinationCenter> vc = vcRepo.findAll();
		model.addAttribute("vc",vc);
		return "center";
		
	}
	
	
	@GetMapping("/addCenter")
	public String addCenter(Model model) {
		List<City> city = cityRepo.findAll();
		model.addAttribute("city", city);
		return "addCenter";
	}
	
	@PostMapping("/addCenter")
	public String addCenter1(@RequestParam("center_name") String name, @RequestParam("center_city") int city_id , Model model)
	{
		VaccinationCenter vc = new VaccinationCenter();
		vc.setCenterName(name);
		City city = cityRepo.findById(city_id).get();
		vc.setCity(city);
		vcRepo.save(vc);
		List<VaccinationCenter> vc1 = vcRepo.findAll();
		model.addAttribute("vc",vc1);
		return "center";
	}
	
	@GetMapping("/viewCenter/{id}")
	public String viewCenter(@PathVariable("id") int id, Model model) {
		
		VaccinationCenter vc = vcRepo.findById(id).get();
		List<Citizens> cz = cRepo.findBycenterId(vc.getId());
		
		model.addAttribute("vc",vc);
		model.addAttribute("cz",cz);
		return "vaccinationCenter";
	}
	
	@GetMapping("/editCenter/{id}")
	public String edit(@PathVariable("id") int id, Model model) {
		VaccinationCenter vc = vcRepo.findById(id).get();
		List<City> city = cityRepo.findAll();
		model.addAttribute("city", city);
		model.addAttribute("vc",vc);
		return "editCenter";
	}
	
	@PostMapping("/edit/{id}")
	public String updateCenter(@PathVariable("id") int id, @RequestParam("center_name") String name, @RequestParam("center_city") int city_id , Model model) {
		VaccinationCenter vc = vcRepo.findById(id).get();
		vc.setCenterName(name);
		City c = cityRepo.findById(city_id).get();
		vc.setCity(c);
		vcRepo.save(vc);
		List<VaccinationCenter> vc1 = vcRepo.findAll();
		model.addAttribute("vc",vc1);
		return "center";
	}
	
	@GetMapping("/deleteCenter/{id}")
	public String deleteCenter(@PathVariable("id") int id, Model model) {
		vcRepo.deleteById(id);
		List<VaccinationCenter> vc1 = vcRepo.findAll();
		model.addAttribute("vc",vc1);
		return "center";

	}
	
	@GetMapping("/addCitizen")
	public String addCitizen(Model model) {
		List<City> city = cityRepo.findAll();
		List<VaccinationCenter> vc = vcRepo.findAll();
		model.addAttribute("vc",vc);
		model.addAttribute("city",city);
		return "addCitizen";
	}
	
	@GetMapping("/viewCitizen/{id}")
public String viewCitizen(@PathVariable("id") int id, Model model) {
		
		
		Citizens cz = cRepo.findById(id).get();
		model.addAttribute("cz",cz);
		return "citizensDetails";
	}
}
