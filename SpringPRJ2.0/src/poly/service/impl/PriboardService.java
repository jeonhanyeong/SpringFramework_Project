package poly.service.impl;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import poly.dto.PriboardDTO;
import poly.persistance.mapper.IPriboardMapper;
import poly.service.IPriboardService;

@Service("PriboardService")
public class PriboardService implements IPriboardService{
	
	@Resource(name="PriboardMapper")
	private IPriboardMapper ipriboardmapper;
	
	@Override
	public List<PriboardDTO> getPriboardList() throws Exception {
		return ipriboardmapper.getPriboardList();
	}
	
	@Override
	public void InsertPriboardInfo(PriboardDTO priDTO) throws Exception {
		ipriboardmapper.InsertPriboardInfo(priDTO);
	}

	@Override
	public PriboardDTO getPriboardInfo(PriboardDTO priDTO) throws Exception {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public void updatePriboardInfo(PriboardDTO priDTO) throws Exception {
		// TODO Auto-generated method stub
		
	}

	@Override
	public void deletePriboardInfo(PriboardDTO priDTO) throws Exception {
		// TODO Auto-generated method stub
		
	}

	@Override
	public void updatePriboardReadcnt(PriboardDTO priDTO) throws Exception {
		// TODO Auto-generated method stub
		
	}
	
}
