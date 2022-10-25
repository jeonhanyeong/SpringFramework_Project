package poly.persistance.mapper;

import java.util.List;

import config.Mapper;
import poly.dto.GovPublicOfficialDTO;

@Mapper("MyPageMapper")
public interface IMyPageMapper {

	List<GovPublicOfficialDTO> getATListOne();

	List<GovPublicOfficialDTO> getATListTwo();
	
	List<GovPublicOfficialDTO> getATListThree();

}
