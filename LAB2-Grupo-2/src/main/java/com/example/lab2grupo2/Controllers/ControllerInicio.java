package com.example.lab2grupo2.Controllers;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;

@Controller
public class ControllerInicio {
    @GetMapping("/")
    public String inicio(){
        return "inicio";
    }
    @GetMapping("/conciertos/nuevo")
    public String construccion(){
        return "construccion";
    }
}
