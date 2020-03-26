package com.ssm.employee.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;


@Controller
public class ProjectFunnelListController {

	@RequestMapping("/employeeProjectFunnelList")
	public String FunnelList() {
		return "employeeProjectFunnelList";
	}
	
}
