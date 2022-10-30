package poly.service;

import java.util.List;

import poly.dto.PriboardDTO;

public interface IPriboardService {
	List<PriboardDTO> getPriboardList() throws Exception;
	
	void InsertPriboardInfo(PriboardDTO priDTO) throws Exception;
	
	PriboardDTO getPriboardInfo(PriboardDTO priDTO) throws Exception;
	
	void updatePriboardReadcnt(PriboardDTO priDTO) throws Exception;
	
	void updatePriboardInfo(PriboardDTO priDTO) throws Exception;
	
	void deletePriboardInfo(PriboardDTO priDTO) throws Exception;
}
