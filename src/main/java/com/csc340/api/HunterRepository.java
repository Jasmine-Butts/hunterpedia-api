package com.csc340.api;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;
import org.springframework.stereotype.Repository;

@Repository
public interface HunterRepository extends JpaRepository<Hunter, Long> {
    
    @Query("SELECT h FROM Hunter h WHERE LOWER(h.name) LIKE LOWER(CONCAT('%', :name, '%'))")
    List<Hunter> searchByName(@Param("name") String name);

    @Query("SELECT h FROM Hunter h WHERE LOWER(h.nenType) LIKE LOWER(CONCAT('%', :nenType, '%'))")
    List<Hunter> findByNenType(@Param("nenType") String nenType);

    @Query("SELECT h FROM Hunter h WHERE LOWER(h.name) LIKE LOWER(CONCAT('%', :name, '%')) AND LOWER(h.nenType) LIKE LOWER(CONCAT('%', :nenType, '%'))")
    
    List<Hunter> searchByNameAndNenType(@Param("name") String name, @Param("nenType") String nenType);
}
