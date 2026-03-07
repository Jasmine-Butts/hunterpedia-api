package com.csc340.api;

import jakarta.persistence.Column;
import jakarta.persistence.Entity;
import jakarta.persistence.GeneratedValue;
import jakarta.persistence.GenerationType;
import jakarta.persistence.Id;
import jakarta.persistence.Table;

@Entity
@Table(name = "Hunters")
public class Hunter {
    
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long hunterId;

    @Column(nullable = false, unique = true)
    public String name;

    @Column(nullable = false)
    public String nenType;

    @Column(nullable = false)
    public String abilities;

    @Column(nullable = false)
    public String background;

    @Column(nullable = false, unique = true)
    public String imageURL;
    
    public Hunter(){
    }

    // constructor for adding new hunter
    public Hunter (String name, String abilities, String background, String imageURL, String nenType){
        this.name = name;
        this.abilities = abilities;
        this.background = background;
        this.imageURL = imageURL;
        this.nenType = nenType;
    }

    // constructor for known id
    public Hunter (Long hunterId, String name, String abilities, String background, String imageURL, String nenType){
        this.hunterId = hunterId;
        this.name = name;
        this.abilities = abilities;
        this.background = background;
        this.imageURL = imageURL;
        this.nenType = nenType;
    }

    // setters & getters
    public void setHunterId(Long hunterId){
        this.hunterId = hunterId;
    }

    public Long getHunterId(){
        return hunterId;
    }
 
    public void setName(String name){
        this.name = name;
    }

    public String getName(){
        return name;
    }

    public void setNenType(String nenType){
        this.nenType = nenType;
    }

    public String getNenType(){
        return nenType;
    }

    public void setAbilities(String abilities){
        this.abilities = abilities;
    }

    public String getAbilities(){
        return abilities;
    }

    public void setBackground(String background){
        this.background = background;
    }

    public String getBackground(){
        return background;
    }

    public void setImageUrl(String imageURL){
        this.imageURL = imageURL;
    }

    public String getImageUrl(){
        return imageURL;
    }
}
