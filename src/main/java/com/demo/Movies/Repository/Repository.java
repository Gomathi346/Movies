package com.demo.Movies.Repository;

import com.demo.Movies.PathModel.Model;
import org.springframework.data.jpa.repository.JpaRepository;

import java.util.List;

public interface Repository extends JpaRepository<Model, Long> {

    // 🔁 Replace title search with genre search
    List<Model> findByGenreContainingIgnoreCase(String genre);
}
