package com.csc340.api;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;

@Controller
@RequestMapping("/hunters")
public class HunterUiController {
    
    @Autowired
    private HunterService hunterService;

    @GetMapping("/about")
    public String about(){
        return "about";
    }

    @GetMapping("/{hunterId}")
    public String getHunter(@PathVariable Long hunterId, Model model){
        Hunter hunter = hunterService.getHunterById(hunterId);
        model.addAttribute("hunter", hunter);
        if (hunter != null){
            return "details";
        } else {
            return "about";
        }
    }

    @GetMapping("/new")
    public String showForm(){
        return "new-character-form";
    }

    @GetMapping("/all")
    public String getAllHunters(Model model){
        
        model.addAttribute("hunters", hunterService.getAllHunters());
        return "index";
        // switch to character list 
    }
}
