package com.csc340.api;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;

@Controller
@RequestMapping("/hunters")
public class HunterUiController {
    
    @Autowired
    private HunterService hunterService;

    @GetMapping({"", "/"})
    public String home(Model model){
        model.addAttribute("hunters", hunterService.getAllHunters());
        return "index";
    }

    @GetMapping("/about")
    public String about(){
        return "about";
    }

    @GetMapping("/{hunterId}")
    public String getHunter(@PathVariable Long hunterId, Model model){
        Hunter hunter = hunterService.getHunterById(hunterId);

        if (hunter != null){
            model.addAttribute("hunter", hunter);
            return "details";
        } else {
            return "not-found";
        }
    }

    @GetMapping("/details/{hunterId}")
    public String getHunterDetails(@PathVariable Long hunterId, Model model){
        Hunter hunter = hunterService.getHunterById(hunterId);

        if (hunter != null){
            model.addAttribute("hunter", hunter);
            return "details";
        } else {
            return "not-found";
        }
    }

    @GetMapping("/new")
    public String showForm(Model model){
        model.addAttribute("hunter", new Hunter());
        return "new-character-form";
    }

    @GetMapping("/all")
    public String getAllHunters(Model model){
        
        model.addAttribute("hunters", hunterService.getAllHunters());
        return "index";
    }

    @PostMapping("/new")
    public String createHunter(@ModelAttribute Hunter hunter){
        hunterService.createHunter(hunter);
        return "redirect:/hunters/all";
    }

    @GetMapping("/update/{hunterId}")
    public String updateHunter(@PathVariable Long hunterId, Model model){
        Hunter hunter = hunterService.getHunterById(hunterId);

        if (hunter == null){
            return "about";
        }
        model.addAttribute("hunter", hunter);
        return "update";
    }

    @GetMapping("/search")
    public String searchHunters(@RequestParam(required = false) String name, Model model){
        if (name == null || name.isBlank()){
            model.addAttribute("hunters", hunterService.getAllHunters());
        } else {
            model.addAttribute("hunters", hunterService.searchHunterByName(name));
        }
        return "index";
    }

    @PostMapping("/update/{hunterId}")
    public String updateHunter(@PathVariable Long hunterId, @ModelAttribute Hunter hunter){
        hunterService.updateHunter(hunterId, hunter);
        return "redirect:/hunters/all";
    }

    @PostMapping("/delete/{hunterId}")
    public String deleteHunter(@PathVariable Long hunterId){
        hunterService.deleteHunter(hunterId);
        return "redirect:/hunters/all";
    }



    }

