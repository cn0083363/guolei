package com.ssm.employee.dao;

import java.util.List;
import java.util.Map;

import org.springframework.stereotype.Repository;

import com.ssm.employee.pojo.FunnelInfo;

@Repository
public interface FunnelInfoMapper {

	public List<FunnelInfo> findFuns(Map<String, Object> map);
	public FunnelInfo findEmpByEid(String eid);
	public int updateEmp(FunnelInfo fun);
}
