package poly.persistance.mapper;

import config.Mapper;
import poly.dto.UserInfoDTO;

@Mapper("IUserInfoMapper")
public interface IUserInfoMapper {

	//회원가입
	int insertUserInfo(UserInfoDTO pDTO) throws Exception;
	
	//회원가입 중복체크
	UserInfoDTO getUserExists(UserInfoDTO pDTO) throws Exception;
	
}
