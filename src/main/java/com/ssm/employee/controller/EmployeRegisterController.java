package com.ssm.employee.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class EmployeRegisterController {
	
	@RequestMapping("/employeeUpate")
	public String toRegister() {
		return "employeeUpate";
	}
}
