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
		        //���÷�ҳ��ҳ�롢ÿҳ��¼��
				PageHelper.startPage(pageNo, 10);
				//��ѯȫ�����������ļ�¼
				List<FunnelInfo> list = funnelInfoMapper.findFuns(map);
				//���÷�ҳ��Ϣ����ǰҳ�롢ÿҳ�������ܼ�¼������ҳ����ǰһҳҳ�롢��һҳҳ�롢�Ƿ��һҳ���Ƿ����һҳ����ǰҳ�ļ�¼��������
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
