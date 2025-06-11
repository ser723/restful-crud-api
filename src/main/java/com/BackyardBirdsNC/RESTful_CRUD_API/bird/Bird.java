package com.BackyardBirdsNC.RESTful_CRUD_API.bird;

import jakarta.persistence.Entity;
import jakarta.persistence.GeneratedValue;
import jakarta.persistence.GenerationType;
import jakarta.persistence.Id;
import jakarta.persistence.Table;


@Entity
@Table(name = "birds")
public class Bird {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long birdId;
    private String name;
    private String description;
    private String species;
    private double lifespan;
    private String profilePicturePath;
    public Bird() {
    }

    public Bird(Long birdId, String name, String description, String species, double lifespan) {
        this.birdId = birdId;
        this.name = name;
        this.description = description;
        this.lifespan = lifespan;
        this.profilePicturePath = profilePicturePath;
    }

    public Bird( String name, String description, String species, double lifespan) {
        this.name = name;
        this.description = description;
        this.species = species;
        this.lifespan =lifespan;
        this.profilePicturePath = profilePicturePath;
    }

    public Long getBirdId() {
        return birdId;
    }

    public void setBirdId(Long id) {
        this.birdId = id;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getDescription() {
        return description;
    }

    public void setDescription(String description) {
        this.description = description;
    }

    public String getSpecies() {
        return species;
    }

    public void setSpecies(String species) {
        this.species = species;
    }

    public double getLifeSpan() {
        return lifespan;
    }

    public void setLifeSpan(double lifespan) {
        this.lifespan = lifespan;
    }
    
    public String getProfilePicturePath() {
        return profilePicturePath;
    }

    public void setProfilePicturePath(String profilePicturePath) {
        this.profilePicturePath = profilePicturePath;
    }

 

}