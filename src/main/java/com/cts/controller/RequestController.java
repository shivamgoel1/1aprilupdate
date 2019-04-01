package com.cts.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.cts.entity.CheckupRequest;
import com.cts.service.RequestService;

@Controller
@RequestMapping("/request")
public class RequestController {
	
	@Autowired
	RequestService requestService;
	
	@GetMapping("/acceptRequest")
	public String acceptRequest(@RequestParam("id") int Id,Model theModel)
	{
		CheckupRequest theRequest=requestService.getRequest(Id);
		theRequest.setStatus("Accepted");
		requestService.saveRequest(theRequest);
		System.out.println("Error in displaying JSP");
		return "doctorRequests";
	}
	
	@GetMapping("/declineRequest")
	public String deniedRequest(@RequestParam("id") int Id,Model theModel)
	{
		CheckupRequest theRequest=requestService.getRequest(Id);
		theRequest.setStatus("Denied");
		requestService.saveRequest(theRequest);
		return "temp";
	}

	}
	
	

