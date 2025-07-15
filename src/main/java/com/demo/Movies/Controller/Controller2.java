package com.demo.Movies.Controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;

@Controller
public class Controller2 {

    @GetMapping("/login")
    public String showLoginForm() {
        return "login";
    }
    @GetMapping("/logout")
    public String logout(org.springframework.ui.Model model) {
        // Optional: clear session if you had one
        model.addAttribute("message", "You have been logged out successfully.");
        return "login"; // redirect to login.jsp
    }


    @PostMapping("/login")
    public String processLogin(@RequestParam String username,
                                @RequestParam String password,
                                Model model) {

        // Simple login logic
        if ("admin".equals(username) && "admin123".equals(password)) {
            return "redirect:/add";
        } else if ("user".equals(username) && "user123".equals(password)) {
            return "redirect:/";
        } else {
            model.addAttribute("error", "Invalid username or password");
            return "login";
        }
    }
}

