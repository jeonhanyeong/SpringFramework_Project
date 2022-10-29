package poly.persistance.mapper;

import java.util.List;

import config.Mapper;
import poly.dto.GovPublicOfficialDTO;
import poly.dto.LandscapingDTO;
import poly.dto.PriEnterpriseDTO;

@Mapper("MyPageMapper")
public interface IMyPageMapper {

	List<GovPublicOfficialDTO> getATListOne();

	List<GovPublicOfficialDTO> getATListTwo();
	
	List<GovPublicOfficialDTO> getATListThree();

	List<LandscapingDTO> getlandDetail(String sessionID);

	List<GovPublicOfficialDTO> getgovDetail(String sessionID);

	List<PriEnterpriseDTO> getpriDetail(String sessionID);

}
