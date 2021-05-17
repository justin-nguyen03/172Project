package dealership;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class AppController {
	@Autowired
	private VehicleService service;
	
	@RequestMapping("/")
	public String viewHomePage(Model model) {
		List<Vehicle> listVehicles = service.listAll();
		model.addAttribute("listVehicle", listVehicles);
		
		return "index";
	}
	
	@RequestMapping("/inventory")
	public String viewInventory(Model model) {
		List<Vehicle> listVehicles = service.listAll();
		model.addAttribute("listVehicle", listVehicles);
		
		return "inventory";
	}
	
	@RequestMapping("/customers")
	public String viewCustomers(Model model) {
		
		return "customers";
	}
	
	@RequestMapping("/accounting")
	public String viewAccounting(Model model) {
		
		return "accounting";
	}
	
	@RequestMapping("/admin")
	public String viewAdmin(Model model) {
		
		return "admin";
	}
	
	@RequestMapping("/currentDeals")
	public String viewDeals(Model model) {
		
		return "deals";
	}
	
	@RequestMapping("/myAccount")
	public String viewMyAccount(Model model) {
		
		return "myAccount";
	}
	
	@RequestMapping("/pending")
	public String viewPending(Model model) {
		
		return "pending";
	}
	
	@RequestMapping("/new")
	public String showNewProductForm(Model model) {
		Vehicle vehicle = new Vehicle();
		model.addAttribute("vehicle", vehicle);
		
		return "new_vehicle";
	}
	
	@RequestMapping(value = "/save", method = RequestMethod.POST)
	public String saveProduct(@ModelAttribute("vehicle") Vehicle vehicle) {
		service.save(vehicle);
		
		return "redirect:/";
	}
	
	@RequestMapping("/edit/{id}")
	public ModelAndView showEditProductForm(@PathVariable(name = "id") Long id) {
		ModelAndView mav = new ModelAndView("edit_vehicle");
		
		Vehicle vehicle = service.get(id);
		mav.addObject("vehicle", vehicle);
		
		return mav;
	}	
	
	@RequestMapping("/delete/{id}")
	public String deleteVehicle(@PathVariable(name = "id") Long id) {
		service.delete(id);
		
		return "redirect:/";
	}
}
