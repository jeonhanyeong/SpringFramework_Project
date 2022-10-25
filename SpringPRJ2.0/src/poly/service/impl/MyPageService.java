package poly.service.impl;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import poly.dto.GovPublicOfficialDTO;
import poly.persistance.mapper.IMyPageMapper;
import poly.service.IMyPageService;

@Service("MyPageService")
public class MyPageService implements IMyPageService{ 
	
	@Resource(name="MyPageMapper")
	IMyPageMapper myPageMapper;

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
} 
