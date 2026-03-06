package com.csc340.api;

import java.util.Collections;
import java.util.List;

import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.*;

@RestController
@RequestMapping("/api/hunters")
public class HunterApiController {
    
    private final HunterService hunterService;

    public HunterApiController(HunterService hunterService) {
        this.hunterService = hunterService;
    }

    // create a new hunter
    @PostMapping("/")
    public ResponseEntity<Hunter> createHunter(@RequestBody Hunter hunter){
        Hunter createdHunter = hunterService.createHunter(hunter);
        if (createdHunter != null){
            return ResponseEntity.ok(createdHunter);
        } else {
            return ResponseEntity.notFound().build();
        }
    }

    // retrieve all hunters
    @GetMapping("/")
    public ResponseEntity<Collection<Hunter>> getAllHunters(){
        return ResponseEntity.ok(hunterService.getAllHunters());
    }

    // retrieve hunter by id
    @GetMapping("/{hunterId}")
    public ResponseEntity<Hunter> getHunterById(@PathVariable Long hunterId){
        Hunter hunter = hunterService.getHunterById(hunterId);
        if (hunter != null) {
            return ResponseEntity.ok(hunter);
        } else {
            return ResponseEntity.notFound().build();
        }
    }

    // retrieve hunter by nen type
    @GetMapping("/nenType/{nenType}")
    public ResponseEntity<Collection<Hunter>> getHunterByNenType(@PathVariable String nenType){
        List<Hunter> hunters = hunterService.getHunterByNenType(nenType);
        if (hunters != null && !hunters.isEmpty()) {
            return ResponseEntity.ok(hunters);
        } else {
            return ResponseEntity.notFound().build();
        }
    }

    // search hunters by name
    @GetMapping("/search")
    public ResponseEntity<Collection<Hunter>> searchHuntersByName(@RequestParam(required = false) String name){
        List<Hunters> hunters;
        if (name != null){
            hunters = hunterService.searchHuntersByName(name);
        } else {
            hunters = hunterService.getAllHunters();
        }
        return ResponseEntity.ok(hunters);
    }

    // update hunter by id
    @PutMapping("/{hunterId}")
    public ResponseEntity<Hunter> updateHunter(@PathVariable Long hunterId, @RequestBody Hunter updatedHunter){
        Hunter hunter = hunterService.updateHunter(hunterId, updatedHunter);
        if (hunter != null){
            return ResponseEntity.ok(hunter);
        } else {
            return ResponseEntity.notFound().build();
        }
    }

    // delete hunter by id
    @DeleteMapping("/{hunterId}")
    public ResponseEntity<Void> deleteHunter(@PathVariable Long hunterId){
        hunterService.deleteHunter(hunterId);
        return ResponseEntity.noContent().build();
    }

}
