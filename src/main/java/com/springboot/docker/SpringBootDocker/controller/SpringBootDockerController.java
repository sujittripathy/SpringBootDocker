package com.springboot.docker.SpringBootDocker.controller;

import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RestController;

@RestController
public class SpringBootDockerController {

	@GetMapping(value="/hello")
	public String sampleDockerOnSpringBoot(){
		return "Hello Docker for SpringBoot";
	}
}
