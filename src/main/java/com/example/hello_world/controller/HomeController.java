package com.example.hello_world;

import org.springframework.stereotype.Controller;

@Controller
class HomeController {
    
    public String index() {
        return "index";
    }
}