package com.demo.Movies.Controller;

import com.demo.Movies.PathModel.Model;
import com.demo.Movies.Repository.Repository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.*;

@Controller
public class Controller1 {

    @Autowired
    private Repository movieRepository;

    // ✅ Search by Genre instead of Title
    @GetMapping("/")
    public String homePage(@RequestParam(required = false) String search, ModelMap model) {
        if (search != null && !search.trim().isEmpty()) {
            model.addAttribute("movies", movieRepository.findByGenreContainingIgnoreCase(search));
            model.addAttribute("search", search);
        } else {
            model.addAttribute("movies", movieRepository.findAll());
        }
        return "listMovies";
    }

    @GetMapping("/add")
    public String showAddForm(org.springframework.ui.Model model) {
        model.addAttribute("movie", new Model());
        return "addMovie";
    }

    @PostMapping("/add")
    public String addMovie(@ModelAttribute("movie") Model movie) {
        movieRepository.save(movie);
        return "redirect:/";
    }

    @GetMapping("/edit/{id}")
    public String showEditForm(@PathVariable Long id, org.springframework.ui.Model model) {
        Model movie = movieRepository.findById(id)
                .orElseThrow(() -> new IllegalArgumentException("Invalid movie ID: " + id));
        model.addAttribute("movie", movie);
        return "editMovie";
    }

    @PostMapping("/edit/{id}")
    public String updateMovie(@PathVariable Long id, @ModelAttribute Model movie) {
        movie.setId(id);
        movieRepository.save(movie);
        return "redirect:/";
    }

    @GetMapping("/delete/{id}")
    public String showDeleteConfirm(@PathVariable Long id, org.springframework.ui.Model model) {
        Model movie = movieRepository.findById(id)
                .orElseThrow(() -> new IllegalArgumentException("Invalid movie ID: " + id));
        model.addAttribute("movie", movie);
        return "deleteMovie";
    }

    @PostMapping("/delete/{id}")
    public String deleteMovie(@PathVariable Long id) {
        movieRepository.deleteById(id);
        return "redirect:/";
    }
}
