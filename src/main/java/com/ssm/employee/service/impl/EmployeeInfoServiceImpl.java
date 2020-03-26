package com.ssm.employee.service.impl;

import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.github.pagehelper.PageHelper;
import com.github.pagehelper.PageInfo;
import com.ssm.employee.dao.EmployeeInfoMapper;
import com.ssm.employee.pojo.EmployeeInfo;
import com.ssm.employee.service.EmployeeInfoService;
@Service
public class EmployeeInfoServiceImpl implements EmployeeInfoService {
	@Autowired
	private EmployeeInfoMapper employeeInfoMapper;
	
	public void setEmployeeInfoMapper(EmployeeInfoMapper employeeInfoMapper) {
		this.employeeInfoMapper = employeeInfoMapper;
	}

	@Override
	public PageInfo<EmployeeInfo> findEmps(Map<String, Object> map, int pageNo) {
		//���÷�ҳ��ҳ�롢ÿҳ��¼��
		PageHelper.startPage(pageNo, 10, "e.eid asc");
		//��ѯȫ�����������ļ�¼
		List<EmployeeInfo> list = employeeInfoMapper.findEmps(map);
		//���÷�ҳ��Ϣ����ǰҳ�롢ÿҳ�������ܼ�¼������ҳ����ǰһҳҳ�롢��һҳҳ�롢�Ƿ��һҳ���Ƿ����һҳ����ǰҳ�ļ�¼��������
		PageInfo<EmployeeInfo> page = new PageInfo<>(list);
		return page;
	}

	@Override
	public  EmployeeInfo findEmpByEid(String eid) {
		// TODO Auto-generated method stub
		return employeeInfoMapper.findEmpByEid(eid);
	}

	@Override
	public int updateEmp(EmployeeInfo emp) {
		// TODO Auto-generated method stub
		return employeeInfoMapper.updateEmp(emp);
	}

}
