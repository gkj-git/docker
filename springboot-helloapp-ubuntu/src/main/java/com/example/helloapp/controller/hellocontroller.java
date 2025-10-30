package com.example.helloapp.controller;

import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RestController;

@RestController
public class HelloController {

    @GetMapping("/")
    public String hello() {
        return "Hello, World! 👋";
    }

    @GetMapping("/greet")
    public String greet() {
        return "Welcome to Spring Boot!";
    }
}
