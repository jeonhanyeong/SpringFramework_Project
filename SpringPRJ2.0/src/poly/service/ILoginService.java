package poly.service;

import poly.dto.GovPublicOfficialDTO;
import poly.dto.LandscapingDTO;
import poly.dto.PriEnterpriseDTO;

public interface ILoginService {
	Integer LandLogin(LandscapingDTO dto);
	
	Integer GovLogin(GovPublicOfficialDTO dto);
	
	Integer PriLogin(PriEnterpriseDTO dto);
}
