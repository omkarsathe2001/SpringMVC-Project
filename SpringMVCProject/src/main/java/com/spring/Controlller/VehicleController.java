package com.spring.Controlller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.spring.Model.Vehicle;
import com.spring.Service.VehicleService;

@Controller
public class VehicleController {

	@Autowired
	private VehicleService service;
	
	@RequestMapping("/")
	public String operations1()
	{
		return "operations";
	}
	
	@RequestMapping("/goto")
	public String operations()
	{
		return "operations";
	}
	
	@RequestMapping("/gotoadd")
	public String form() {
		return "add";
	}
	
	@RequestMapping("/add")
	public String insert(@ModelAttribute Vehicle v1) {
		System.out.println("In insert method");
		System.out.println(v1);
		service.addVehicle(v1);
		return "redirect:show";
	}
	
	@RequestMapping("/changeform")
	public String updateVehicle()
	{
		return "change";
	}
	
	@RequestMapping("/update")
	public String changeVehicle(@ModelAttribute Vehicle v1)
	{
		System.out.println(v1);
		service.updateVehicle(v1);
		return "redirect:show";
	}
	
	@RequestMapping("/deleteform")
	public String deleteform()
	{
		return "delete";
	}
	
	@RequestMapping("/delete")
	public String deleteData(@RequestParam("vid") int id)
	{
		service.deleteVehicle(id);
		return "redirect:show";
	}
	
	@RequestMapping("/getbyid/{vid}")
	public String getById(@PathVariable("vid") int id1, Model model)
	{
		Vehicle v = service.getInfoByID(id1);
		model.addAttribute("vehicle",v);
		System.out.println(v);
		return "singleData";
		
	}


    @RequestMapping("/show")
    public String showVehicles(Model model) {
        List<Vehicle> vehicles = service.getAllVehicles(); // Fetch data
        model.addAttribute("vehicles",vehicles); // Add data to request
        return "show"; // Return JSP page
    }

	
	

}
