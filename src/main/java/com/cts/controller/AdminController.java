package com.cts.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("/admin")
public class AdminController {

	@GetMapping("/doctorList")
	public String doctorList(Model model) {
			
//			List<Doctor> list = customerService.doctorList();
//			System.out.println("doctor"+list);
//			model.addAttribute("doctor",list);
			return "index";
		}
	
}
