package poly.service;

import java.util.List;

import poly.dto.GovPublicOfficialDTO;
import poly.dto.LandscapingDTO;
import poly.dto.PriEnterpriseDTO;

public interface IMyPageService {
	//조경원예기업 상세정보
	List<LandscapingDTO> getlandDetail(String sessionID);
	//공무원 상세정보
	List<GovPublicOfficialDTO> getgovDetail(String sessionID);
	//민간기업 상세정보
	List<PriEnterpriseDTO> getpriDetail(String sessionID);
	
	List<String> getPartName();

	List<GovPublicOfficialDTO> getATListOne();

	List<GovPublicOfficialDTO> getATListTwo();
	
	List<GovPublicOfficialDTO> getATListThree();
	
	Integer userCheck(String sessionID);


}
