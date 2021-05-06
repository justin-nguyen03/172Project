package com.example.proj_dealership;

import java.util.ArrayList;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
//import com.javadevjournal.core.user.jpa.repository.UserRepository;
//import com.javadevjournal.core.user.jpa.data.UserEntity;
import com.example.proj_dealership.UserRepository;

import antlr.collections.List;

import com.example.proj_dealership.UserEntity;

@Controller
@RequestMapping(path = "/user")
public class UserController {

    @Autowired
    private UserRepository userRepository;

    @PostMapping(path = "/add")
    public @ResponseBody String addNewUser(@RequestParam String first_name, @RequestParam String last_name, @RequestParam String email) {

        UserEntity user = new UserEntity();
        user.setFirstName(first_name);
        user.setLastName(last_name);
        user.setEmail(email);
        userRepository.save(user);
        return "User Created";
    }

    @GetMapping(path = "/all")
    public @ResponseBody Iterable < UserEntity > getAllUsers() {
        return userRepository.findAll();
    }
    
    @GetMapping(path = "/index")
    public String viewHomePage() {
        return "index";
    }
    
    @GetMapping(path = "/users-list")
    public String usersDisplay(Model model) {
    	ArrayList<UserEntity> usersDisplay = (ArrayList<UserEntity>) userRepository.findAll();
    	model.addAttribute("usersDisplay", usersDisplay);
        return "usersDisplay";
    }
    

}