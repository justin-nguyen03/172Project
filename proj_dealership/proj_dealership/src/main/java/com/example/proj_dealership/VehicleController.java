package com.example.proj_dealership;

import java.util.List;

//import com.example.demo.UserRepository;
//import com.example.demo.UserEntity;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.autoconfigure.security.SecurityProperties.User;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
//import com.javadevjournal.core.user.jpa.repository.UserRepository;
//import com.javadevjournal.core.user.jpa.data.UserEntity;
import com.example.proj_dealership.VehicleRepository;
import com.example.proj_dealership.Vehicle;

@Controller
//@RequestMapping(path = "/user")
public class VehicleController {

  @Autowired
  private VehicleRepository vehicleRepository;
/*
  @PostMapping(path = "/add")
  //public @ResponseBody String addNewUser(@RequestParam String firstName, @RequestParam String firstName, @RequestParam String email) {
  public @ResponseBody String addNewUser(@RequestParam String firstName, @RequestParam String lastName, @RequestParam String email) {

      UserEntity user = new UserEntity();
      user.setFirstName(firstName);
      user.setLastName(lastName);
      user.setEmail(email);
      userRepository.save(user);
      return "User Created";
  }
*/
  @GetMapping(path = "/all")
  public @ResponseBody Iterable<Vehicle> getAllVehicles() {
      return vehicleRepository.findAll();
  }
  
  @GetMapping(path = "/vehicles-html")
  public String viewVehiclesPage(Model model) {
	  List<Vehicle> listVehicles = (List<Vehicle>) vehicleRepository.findAll();
	  model.addAttribute("listVehicles", listVehicles);
      return "vehicles-html";
  }
  
  @GetMapping(path = "/main")
  public String viewMain(Model model) {
	  
      return "main";
  }
  
  @GetMapping(path = "/customers")
  public String viewCustomers(Model model) {
	  
      return "customers";
  }
  
  @GetMapping(path = "/inventory")
  public String viewInventory(Model model) {
	  
	  
	  
      return "inventory";
  }
  
  @GetMapping(path = "/currentDeals")
  public String viewCurrentDeals(Model model) {
	  
      return "currentDeals";
  }
  
  @GetMapping(path = "/accounting")
  public String viewAccounting(Model model) {
	  
      return "accounting";
  }
  
  @GetMapping(path = "/pending")
  public String viewPending(Model model) {
	  
      return "pending";
  }
  
  @GetMapping(path = "/myAccount")
  public String viewMyAccount(Model model) {
	  
      return "myAccount";
  }
  
  @GetMapping(path = "/admin")
  public String viewAdming(Model model) {
	  
      return "admin";
  }
  
  
  /*
  @GetMapping(path = "/all")
  public @ResponseBody Iterable < User > getAllUsers() {
      return userRepository.findAll();
  }
	*/
}
