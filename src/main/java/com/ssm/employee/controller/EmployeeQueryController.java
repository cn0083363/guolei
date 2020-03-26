package com.ssm.employee.controller;

import java.io.UnsupportedEncodingException;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.bind.annotation.SessionAttributes;

import com.github.pagehelper.PageInfo;
import com.ssm.employee.pojo.EmployeeInfo;
import com.ssm.employee.pojo.JobInfo;
import com.ssm.employee.pojo.Master;
import com.ssm.employee.service.EmployeeInfoService;
import com.ssm.employee.service.JobInfoService;
import com.ssm.employee.service.MasterService;

@Controller
@SessionAttributes({"tiaojian"})
public class EmployeeQueryController {
	@Autowired
	private MasterService masterService;	
	@Autowired
	private EmployeeInfoService employeeInfoService;
	@Autowired
	private JobInfoService jobInfoService;
	public void setMasterService(MasterService masterService) {
		this.masterService = masterService;
	}

	public void setEmployeeInfoService(EmployeeInfoService employeeInfoService) {
		this.employeeInfoService = employeeInfoService;
	}
	
	
	public void setJobInfoService(JobInfoService jobInfoService) {
		this.jobInfoService = jobInfoService;
	}
	
	@RequestMapping(value="/empUpdate", method= {RequestMethod.POST, RequestMethod.GET})
	public String updateEmp(EmployeeInfo emp,Model model, HttpServletRequest request) throws UnsupportedEncodingException  {
		request.setCharacterEncoding("utf-8");
		System.out.println(request.getParameter("nameCn"));
		System.out.println("\t"+emp);
		employeeInfoService.updateEmp(emp);
		
		model.addAttribute("updatesuccess", "ok");
		return "forward:findEmp";
	}
	
	@RequestMapping("/getUpdatetime")
	@ResponseBody
	public String getUpdatTime(String eid) {
		EmployeeInfo emp = employeeInfoService.findEmpByEid(eid);
		return emp.getUpdTimestamp();
	}

	//更新eid的详情
	@RequestMapping("/empupdateByeid")
	public String updateEmpByEid(String eid, Model model) {
		System.out.println("\t"+eid);
		model.addAttribute("eid", eid);
		EmployeeInfo emp = employeeInfoService.findEmpByEid(eid);
		model.addAttribute("emp", emp);
		List<JobInfo> jobs = jobInfoService.getjobInfosByEid(eid);
		model.addAttribute("jobs", jobs);
		List<Master> jobTitleList = masterService.getMastersBycategoryCode("1010");
		List<Master> deliveryList = masterService.getMastersBycategoryCode("1040");
		List<Master> jdbcTitleList = masterService.getMastersBycategoryCode("1050");
		model.addAttribute("titles", jobTitleList);
		model.addAttribute("deliverys", deliveryList);
		model.addAttribute("jdbcs", jdbcTitleList);
		List<Master> siteList = masterService.getMastersBycategoryCode("0010");
		model.addAttribute("siteList", siteList);
		return "employeeUpate";
	}
	
	//查看eid的详情
	@RequestMapping("/empByeid")
	public String getEmpByEid(String eid, Model model) {
	EmployeeInfo emp = employeeInfoService.findEmpByEid(eid);
	model.addAttribute("emp", emp);
	List<JobInfo> jobs = jobInfoService.getjobInfosByEid(eid);
	model.addAttribute("jobs", jobs);
		return "employeReferto1";
	}
	
	@RequestMapping("/pageEmp")
	public String pageEmp(HttpSession session, int pagenum, Model model) {
		Map<String, Object> map = (Map<String, Object>)session.getAttribute("tiaojian");
		PageInfo<EmployeeInfo> page = employeeInfoService.findEmps(map, pagenum);
		model.addAttribute("page", page);
		return "employeDetail";
	}
	
	@RequestMapping(value="/findEmp", method={RequestMethod.POST,RequestMethod.GET})
	public String findEmp(EmployeeInfo emp, HttpServletRequest request, Model model) {
		Map<String , Object> map = new HashMap<>();
		map.put("emp", emp);
		map.put("startDateFrom", request.getParameter("startDateFrom"));
		map.put("startDateTo", request.getParameter("startDateTo"));
		map.put("postCode", request.getParameter("postCode"));
		PageInfo<EmployeeInfo> page = employeeInfoService.findEmps(map,1);
		for(EmployeeInfo e : page.getList()) {
			System.out.println("\t"+e);
		}
		System.out.println(page.getTotal());
		System.out.println(page.getPageNum());
		System.out.println(page.getPageSize());
		System.out.println(page.getPages());
		System.out.println(page.isIsFirstPage());
		System.out.println(page.isIsLastPage());
		System.out.println(page.getPrePage());
		System.out.println(page.getNextPage());
		System.out.println(page.getStartRow());
		System.out.println(page.getEndRow());
		if(page.getList().size()>0) {
			model.addAttribute("page", page);
			//在session中保存查询条件
			model.addAttribute("tiaojian", map);
			return "employeDetail";
		}else {
			return "queryResult0";
		}
	}
	
	

	@RequestMapping("/employeQuery")
	public String showQuery(HttpSession session) {
		List<Master> typeList = masterService.getMastersBycategoryCode("0050");
		session.setAttribute("types", typeList);
		List<Master> siteList = masterService.getMastersBycategoryCode("0010");
		session.setAttribute("sites", siteList);
		List<Master> workList = masterService.getMastersBycategoryCode("1090");
		session.setAttribute("works", workList);
		List<Master> jobList = masterService.getMastersBycategoryCode("1050");
		session.setAttribute("job", jobList);
		return "employeQuery";
	}
}
