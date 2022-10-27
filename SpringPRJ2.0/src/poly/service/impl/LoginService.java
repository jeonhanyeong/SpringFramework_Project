package poly.service.impl;


import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import poly.dto.GovPublicOfficialDTO;
import poly.dto.LandscapingDTO;
import poly.dto.PriEnterpriseDTO;
import poly.persistance.mapper.ILoginMapper;
import poly.service.ILoginService;
@Service("LoginService")
public class LoginService implements ILoginService{
	
	@Resource(name="LoginMapper")
	ILoginMapper loginMapper;
	
	@Override
	public Integer LandLogin(LandscapingDTO dto) {
		// TODO Auto-generated method stub
		return loginMapper.LandLogin(dto);
	}
	
	@Override
	public Integer GovLogin(GovPublicOfficialDTO dto) {
		// TODO Auto-generated method stub
		return loginMapper.GovLogin(dto);
	}
	
	@Override
	public Integer PriLogin(PriEnterpriseDTO dto) {
		// TODO Auto-generated method stub
		return loginMapper.PriLogin(dto);
	}
}
