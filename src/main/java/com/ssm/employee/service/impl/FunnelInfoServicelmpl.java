package com.ssm.employee.service.impl;

import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.github.pagehelper.PageHelper;
import com.github.pagehelper.PageInfo;

import com.ssm.employee.dao.FunnelInfoMapper;

import com.ssm.employee.pojo.FunnelInfo;
import com.ssm.employee.service.FunnelInfoService;
@Service
public class FunnelInfoServicelmpl implements FunnelInfoService {
	@Autowired
	private FunnelInfoMapper funnelInfoMapper;
	
	public void setFunnelInfoMapper(FunnelInfoMapper funnelInfoMapper) {
		this.funnelInfoMapper = funnelInfoMapper;
	}
	@Override
	public PageInfo<FunnelInfo> findFuns(Map<String, Object> map, int pageNo) {
		        //设置分页的页码、每页记录数
				PageHelper.startPage(pageNo, 10);
				//查询全部符合条件的记录
				List<FunnelInfo> list = funnelInfoMapper.findFuns(map);
				//设置分页信息（当前页码、每页个数、总记录数、总页数、前一页页码、后一页页码、是否第一页、是否最后一页、当前页的记录。。。）
				PageInfo<FunnelInfo> page = new PageInfo<>(list);
				return page;
	}

	@Override
	public FunnelInfo findEmpByEid(String eid) {
		// TODO Auto-generated method stub
		return funnelInfoMapper.findEmpByEid(eid) ;
	}

	@Override
	public int updateFun(FunnelInfo fun) {
		// TODO Auto-generated method stub
		return funnelInfoMapper.updateEmp(fun);
	}

}
