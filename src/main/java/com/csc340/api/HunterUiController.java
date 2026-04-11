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

    @GetMapping("/details/{hunterId}")
    public String getHunter(@PathVariable Long hunterId, Model model){
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
        public String searchHunters(@RequestParam(required = false) String name, @RequestParam(required = false) String nenType, Model model){
            boolean noName = (name == null || name.trim().isEmpty());
            boolean noNenType = (nenType == null || nenType.trim().isEmpty());

            if (noName && noNenType) {
                model.addAttribute("hunters", hunterService.getAllHunters());
            } else if (!noName && noNenType) {
                model.addAttribute("hunters", hunterService.searchHunterByName(name));
            } else if (noName && !noNenType) {
                model.addAttribute("hunters", hunterService.searchHunterByNenType(nenType));
            } else {
                model.addAttribute("hunters", hunterService.searchByNameAndNenType(name, nenType));
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

