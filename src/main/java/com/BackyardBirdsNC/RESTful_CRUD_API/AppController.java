package com.BackyardBirdsNC.RESTful_CRUD_API;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;

@Controller
public class AppController {

    @GetMapping({"","/", "/home", "dashboard", "/birds/"})
    public String showDashBoard() {
        return "redirect:/birds";
    }
}
