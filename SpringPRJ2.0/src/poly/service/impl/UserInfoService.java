package poly.service.impl;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import poly.persistance.mapper.IUserInfoMapper;
import poly.service.IUserInfoService;
import poly.util.CmmUtil;
import poly.dto.UserInfoDTO;

@Service("UserInfoService")
public class UserInfoService implements IUserInfoService{
	
	@Resource(name="IUserInfoMapper")
	private IUserInfoMapper userInfoMapper;
	
	@Override
	public int insertUserInfo(UserInfoDTO pDTO) throws Exception{
		//회원가입 성공 1, 아이디 중복 2, 기타 에러 0
		int res =0;
		
		if (pDTO == null) {
			pDTO = new UserInfoDTO();
		}
		
		System.out.println("회원가입 서비스옴");
		
		//회원 가입 중복 방지를 위해 db에서 데이터 조회
		UserInfoDTO rDTO = userInfoMapper.getUserExists(pDTO);
		
		if (rDTO == null) {
			rDTO = new UserInfoDTO();
		}
		
		//중복 회원
		if (CmmUtil.nvl(rDTO.getLandscaping_enterprise_id()).equals("Y")) {
			res = 2;
		}else {
			//회원가입
			int success = userInfoMapper.insertUserInfo(pDTO);
			
			//db에 데이터 등록되었다면,
			if(success > 0) {
				res = 1;
				
			}else {
				res = 0;
			}
		}
		return res;
	}

}
