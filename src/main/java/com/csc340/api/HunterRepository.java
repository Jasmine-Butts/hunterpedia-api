package com.csc340.api;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;
import org.springframework.stereotype.Repository;

@Repository
public interface HunterRepository extends JpaRepository<Hunter, Long> {
    
    @Query("SELECT h FROM Hunter h WHERE h.name LIKE %:name%")
    List<Hunter> findByName(@Param("name") String name);

    @Query("SELECT h FROM Hunter h WHERE h.nenType LIKE %:nenType%")
    List<Hunter> findByNenType(@Param("nenType") String nenType);

    List<Hunter> findByAbilities(String abilities);

}
