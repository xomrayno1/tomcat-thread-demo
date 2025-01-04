package com.demo.DemoManyRequest.controller;

import java.util.concurrent.TimeUnit;

import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RestController;

@RestController
public class HelloController {
	
	@GetMapping("/hello")
    public String hello() throws InterruptedException {
        TimeUnit.SECONDS.sleep(5); // Simulate processing time
        return "Hello, World!";
    }

}
