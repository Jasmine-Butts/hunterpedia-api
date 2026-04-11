package com.csc340.api;

import java.util.List;

import org.springframework.stereotype.Service;

@Service
public class HunterService {
    private final HunterRepository hunterRepository;

    public HunterService(HunterRepository hunterRepository) {
        this.hunterRepository = hunterRepository;
    }

    public List<Hunter> getAllHunters(){
        return hunterRepository.findAll();
    }

    public Hunter createHunter(Hunter hunter){
        return hunterRepository.save(hunter);
    }

    public Hunter getHunterById(Long hunterId){
        return hunterRepository.findById(hunterId).orElse(null);
    }

    public Hunter updateHunter(Long hunterId, Hunter updatedHunter){
        return hunterRepository.findById(hunterId)
            .map(hunter -> {
                hunter.setName(updatedHunter.getName());
                hunter.setNenType(updatedHunter.getNenType());
                hunter.setAbilities(updatedHunter.getAbilities());
                hunter.setBackground(updatedHunter.getBackground());
                hunter.setImageUrl(updatedHunter.getImageUrl());
                return hunterRepository.save(hunter);
            })
            .orElse(null);
    }

    public void deleteHunter(Long hunterId){
        hunterRepository.deleteById(hunterId);
    }

    public List<Hunter> searchHunterByName(String name){
        return hunterRepository.searchByName(name.trim());

    }

    public List<Hunter> searchHunterByNenType(String nenType){
        return hunterRepository.findByNenType(nenType.trim());
    }

    public List<Hunter> searchByNameAndNenType(String name, String nenType){
        return hunterRepository.searchByNameAndNenType(name.trim(), nenType.trim());
    }

}
