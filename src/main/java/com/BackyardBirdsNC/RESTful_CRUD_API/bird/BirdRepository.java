package com.BackyardBirdsNC.RESTful_CRUD_API.bird;
import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.stereotype.Repository;

@Repository
public interface BirdRepository extends JpaRepository <Bird, Long> {

    @Query(value = "SELECT * FROM Birds b WHERE b.species like %?1%", nativeQuery = true)
    List<Bird>  getBirdsBySpecies(String species);

    @Query(value = "SELECT * FROM Birds b WHERE b.name like %?1% ", nativeQuery = true)
    List<Bird> getBirdsByName(String name);

    @Query(value = "SELECT * FROM Birds b WHERE b.lifespan = ?1", nativeQuery = true)
    List<Bird> getBirdsLifeSpan(double lifespan);

}
