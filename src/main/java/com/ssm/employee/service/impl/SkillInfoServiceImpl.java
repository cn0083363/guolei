package com.ssm.employee.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.ssm.employee.dao.SkillInfoMapper;
import com.ssm.employee.pojo.SkillInfo;
import com.ssm.employee.service.SkillInfoService;

@Service
public class SkillInfoServiceImpl implements SkillInfoService {
	@Autowired
	private SkillInfoMapper skillInfoMapper;
	
	
	public void setSkillInfoMapper(SkillInfoMapper skillInfoMapper) {
		this.skillInfoMapper = skillInfoMapper;
	}


	@Override
	public List<SkillInfo> getSkills() {
		// TODO Auto-generated method stub
		return skillInfoMapper.getSkills();
	}


	@Override
	public List<SkillInfo> getSkillsByEid(String eid) {
		// TODO Auto-generated method stub
		return null;
	}


	@Override
	public void updateOrInsetSkill(List<SkillInfo> list) {
		// TODO Auto-generated method stub
		
	}

}

