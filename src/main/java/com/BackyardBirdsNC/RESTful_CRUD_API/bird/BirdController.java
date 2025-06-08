package com.BackyardBirdsNC.RESTful_CRUD_API.bird;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.DeleteMapping;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.PutMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;

/**BirdController is a REST controller that handles HTTP requests related to 
 * birds
 * It provides endpoints for CRUD operations on bird data
 */
@RestController
public class BirdController {

    @Autowired
    private BirdService birdService = new BirdService();
    
    /**
     * Endpoint to get all birds
     * 
     * @return List of all birds
     */
    @GetMapping("/birds")
    public Object getAllBirds(){
        return birdService.getAllBirds();
    }

    /**
     * Endpoint to get a bird by ID
     * 
     * @param id The ID of the bird to retrieve
     * @return The bird with the specified ID
     */
    @GetMapping("/birds/{id}")
    public Object getBirdById(@PathVariable long id){
        return birdService.getBirdByID(id);
    }
    /**
     * Endpoint to get birds by name
     * 
     * @param name The name of the student to search for
     * @return List of students with the specified name
     */
    @GetMapping("/birds/name")
    public Object getBirdsByName(@RequestParam String key) {
        if(key != null){
            return birdService.getBirdsByName(key);
        } else{
            return birdService.getAllBirds();
        }
    }
/**
 * Endpoint to get birds my speicies
 * 
 * @param species The species to search for
 * @return List of birds in a certain species
 */
@GetMapping ("/birds/species/{species}")
public Object getBirdsBySpecies(@PathVariable String species) {
    return birdService.getBirdsBySpecies(species);
}
/**
 * Endpoint to get lifespan of birds within a specified threshold
 * 
 * @param lifespan The Lifespan of bird
 * @return List of birds with lifespans within the specified threshold
 */
@GetMapping("/birds/lifespan")
public Object getBirdsLifeSpan(@RequestParam(name = "lifespan", defaultValue = "4.0")double lifespan) {
    return new ResponseEntity<>(birdService.getLifeSpan(lifespan), HttpStatus.OK);

}

/**
 * Endpoint to add a new bird
 * 
 * @param bird The bird to add
 * @return List of all birds
 */
@PostMapping("/birds")
public Object addBird(@RequestBody Bird bird) {
    return birdService.addBird(bird);
}

/**
 * Endpoint to update a bird
 * 
 * @param id The ID of the bird to update
 * @param bird The updated bird information
 * @return The updated bird
 */
@PutMapping("/birds/{id}")
public Object updateBird(@PathVariable Long id, @RequestBody Bird bird) {
    birdService.updateBird(id, bird);
    return birdService.getBirdByID(id);
}
/**
 * Endpoint to delete a bird
 * 
 * @parm id The ID of the bird to delete
 * @return List of all birds
 */
@DeleteMapping("/birds/{id}")
public Object deleteBird(@PathVariable Long id) {
    birdService.deleteBird(id);
    return birdService.getAllBirds();
}

/**
 * Endpoint to write a studnet to a JSON file
 * 
 * @param bird The bird to write
 * @return An empty string for indication of success
 */
@PostMapping ("/birds/writeFile")
public Object writeJson(@RequestBody Bird bird) {
    birdService.writeJson(bird);
    return birdService.writeJson(bird);
}

/**
 * Endpoint to read a JSON file and return its contents
 * 
 * @return The contents of the JSON file
 */
@GetMapping("/birds/readFile")
public Object readJson() {
return birdService.readJson();

}

}
