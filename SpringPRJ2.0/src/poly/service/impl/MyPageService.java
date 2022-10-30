package poly.service.impl;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import poly.dto.GovPublicOfficialDTO;
import poly.dto.LandscapingDTO;
import poly.dto.PriEnterpriseDTO;
import poly.persistance.mapper.IMyPageMapper;
import poly.service.IMyPageService;

@Service("MyPageService")
public class MyPageService implements IMyPageService{ 
	
	@Resource(name="MyPageMapper")
	IMyPageMapper myPageMapper;
	
	@Override
	public List<LandscapingDTO> getlandDetail(String sessionID){
		return myPageMapper.getlandDetail(sessionID);
	}
	
	@Override
	public List<GovPublicOfficialDTO> getgovDetail(String sessionID){
		return myPageMapper.getgovDetail(sessionID);
	}
	
	@Override
	public List<PriEnterpriseDTO> getpriDetail(String sessionID){
		return myPageMapper.getpriDetail(sessionID);
	}
	
	@Override
	public List<String> getPartName(){
		return myPageMapper.getPartName();
	}

	@Override
	public List<GovPublicOfficialDTO> getATListOne() {
		// TODO Auto-generated method stub
		return myPageMapper.getATListOne();
	}

	@Override
	public List<GovPublicOfficialDTO> getATListTwo() {
		// TODO Auto-generated method stub
		return myPageMapper.getATListTwo();
	}
	
	@Override
	public List<GovPublicOfficialDTO> getATListThree() {
		// TODO Auto-generated method stub
		return myPageMapper.getATListThree();
	}
	
	@Override
	public Integer userCheck(String sessionID) {
		return myPageMapper.userCheck(sessionID);
	}
} 
