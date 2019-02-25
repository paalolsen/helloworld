package com.microsoft.azure.samples.hellospringboot.controller;

import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RestController;

@RestController
public class HelloWord {

    @GetMapping("/api/helloworld")
    public String getHelloWorld() {
        return "HELLO WORLD";
    }

}
