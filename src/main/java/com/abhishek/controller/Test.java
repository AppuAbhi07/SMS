package com.abhishek.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;

@Controller
public class Test {

	@GetMapping("/")
	public String index() {
		return "index"; // Resolves to /WEB-INF/index.jsp
	}

}
