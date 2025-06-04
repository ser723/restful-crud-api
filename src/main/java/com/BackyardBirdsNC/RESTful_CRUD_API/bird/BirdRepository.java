package com.BackyardBirdsNC.RESTful_CRUD_API.bird;
import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.stereotype.Repository;

@Repository
public class BirdRepository extends JpaRepository <Bird, Long> {
    
    List<Bird> getBirdsBySpecies(String species);

    @Query(value = "select * from birds b where b.species >= ?1", nativeQuery = true)
    List<Bird> getBirdsLifeSpan(double lifespan);

    @Query(value = "select * from birds b where b.name like %?1% ", nativeQuery = true)
    List<Bird> getBirdsByName(String name);
}
