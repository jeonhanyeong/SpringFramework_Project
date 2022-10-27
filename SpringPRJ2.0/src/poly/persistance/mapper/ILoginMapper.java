package poly.persistance.mapper;

import config.Mapper;
import poly.dto.GovPublicOfficialDTO;
import poly.dto.LandscapingDTO;
import poly.dto.PriEnterpriseDTO;

@Mapper("LoginMapper")
public interface ILoginMapper {
	Integer LandLogin(LandscapingDTO dto);
	
	Integer GovLogin(GovPublicOfficialDTO dto);
	
	Integer PriLogin(PriEnterpriseDTO dto);
}
