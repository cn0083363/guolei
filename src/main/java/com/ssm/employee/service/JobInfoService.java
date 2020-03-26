package com.ssm.employee.service;

import java.util.List;

import com.ssm.employee.pojo.JobInfo;
 
public interface JobInfoService {
	public List<JobInfo> getjobInfosByEid(String eid);
}
