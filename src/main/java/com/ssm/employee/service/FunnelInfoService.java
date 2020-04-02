package com.ssm.employee.service;


import java.util.Map;

import com.github.pagehelper.PageInfo;

import com.ssm.employee.pojo.FunnelInfo;

public interface FunnelInfoService {
	public PageInfo<FunnelInfo> findFuns(Map<String, Object> map,int pageNo);
	public  FunnelInfo findEmpByEid(String eid);
	public int updateFun(FunnelInfo fun);
}
