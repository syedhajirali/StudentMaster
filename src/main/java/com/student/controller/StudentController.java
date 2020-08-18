package com.student.controller;

import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RestController;

@RestController
public class StudentController {

	@GetMapping("/test")
	public String sayHello() {
		return "Welcome to Kubernetes Demo - Docker_Image,  GIT CICD";
	}
}
