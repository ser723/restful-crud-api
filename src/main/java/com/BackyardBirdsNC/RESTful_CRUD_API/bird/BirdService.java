package com.BackyardBirdsNC.RESTful_CRUD_API.bird;


import java.io.IOException;
import java.io.File;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.web.bind.annotation.PathVariable;
import com.fasterxml.jackson.databind.ObjectMapper;

/** BirdService is a service class that handles the business logic for
 *  managing birds. 
 * It provides methods to perform CRUD operations on bird data
 */
@Service
public class BirdService {

    @Autowired
    private BirdRepository birdRepository;

    /**
     * Method to get all birds
     * 
     * @return List of all birds
     */
    public Object getAllBirds(){
        return birdRepository.findAll();
    }

    /**
     * Method to get a bird by ID
     * 
     * @param birdId The Id of the bird to retrieve
     * @return The bird with the specified ID
     */
    public Object getBirdByID(@PathVariable long birdId){
        return birdRepository.findById(birdId).orElse(null);
    }

    /**
     * Method to get birds by name
     * @param name The name of the bird to seach for
     * @return List of birds with the specified name
     */
    public Object getBirdsByName(String name){
        return birdRepository.getBirdsByName(name);
    }

    /**
     * Method to get birds by species
     * 
     * @param species The species to search for
     * @return List of students with the specified major
     */
    public Object getBirdsBySpecies(String species) {
        return this.birdRepository.getBirdsBySpecies(species);
    }

    /**
     * Fetch all birds with a lifespan above a threshold.
     * 
     * @param lifespan the threshold
     * @return the list of matching birds
     */
    public Object getBirdsLifeSpan(double lifespan) {
        return birdRepository.getBirdsLifeSpan(lifespan);
    }
    /** Method to add a new bird
     * 
     * @param bird The bird to add
    */
    public Bird addBird(Bird bird) {
        return birdRepository.save(bird);
    }
    /**Method to update a bird
     * 
     * @param birdId The Id of the bird to update
     * @param bird The updated student information
     */
    public Bird updateBird(Long birdId, Bird bird) {
        return birdRepository.save(bird);
    }
    /**Method to delete a bird
     * 
     * @param birdId The ID of the bird to delete
     */
    public void deleteBird(Long birdId) {
        birdRepository.deleteById(birdId);
    }
    /**Method to write a bird object to a JSON file
     * 
     * @param bird The bird object to wrtie
     */
    public String writeJson(Bird bird) {
        ObjectMapper objectMapper = new ObjectMapper();
        try{
            objectMapper.writeValue(new File("birds.json"), bird);
            return "Bird written to JSON file successfully";
        } catch (IOException e) {
            e.printStackTrace();
            return "Error writing bird to JSON file";
        }

    }
            /**
             * Method to read a bird object from a JSON file
             * 
             *  The bird oject read from the JSON file
            */
            public Object readJson() {
                ObjectMapper objectMapper = new ObjectMapper();
                try{
                    return objectMapper.readValue(new File("birds.json"),Bird.class);
                } catch (IOException e) {
                    e.printStackTrace(); 
                    return null;
                }

            }
            
    }

