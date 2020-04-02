package com.ssm.employee.controller;

import java.util.HashMap;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.SessionAttributes;

import com.github.pagehelper.PageInfo;
import com.ssm.employee.pojo.EmployeeInfo;
import com.ssm.employee.pojo.FunnelInfo;

import com.ssm.employee.service.FunnelInfoService;



@Controller
@SessionAttributes({"tiaojian"})
public class ProjectFunnelListController {
	@Autowired
	private FunnelInfoService funnelInfoService;
	
	public void setFunnelInfoService(FunnelInfoService funnelInfoService) {
		this.funnelInfoService = funnelInfoService;
	}
	@RequestMapping("/pageFun")
	public String pageEmp(HttpSession session, int pagenum, Model model) {
		Map<String, Object> map = (Map<String, Object>)session.getAttribute("tiaojian");
		PageInfo<FunnelInfo> page = funnelInfoService.findFuns(map, pagenum);
		model.addAttribute("page", page);
		return "employeeProjectFunnelList";
	}
	@RequestMapping(value="/employeeProjectFunnelList", method={RequestMethod.POST,RequestMethod.GET})
	
		public String FunnelList(FunnelInfo fun, HttpServletRequest request, Model model) {
			Map<String , Object> map = new HashMap<>();
			map.put("fun", fun);
			map.put("startDateFrom", request.getParameter("startDateFrom"));
			map.put("startDateTo", request.getParameter("startDateTo"));
			map.put("postCode", request.getParameter("postCode"));
			PageInfo<FunnelInfo> page = funnelInfoService.findFuns(map,1);
			for(FunnelInfo e : page.getList()) {
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
				return "employeeProjectFunnelList";
			}else {
				return "queryResult0";
			}
		}
		
	
}
