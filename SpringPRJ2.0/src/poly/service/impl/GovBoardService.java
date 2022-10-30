package poly.service.impl;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import poly.dto.GovBoardDTO;
import poly.persistance.mapper.IGovBoardMapper;
import poly.service.IGovBoardService;

@Service("GovBoardService")
public class GovBoardService implements IGovBoardService{
	
	@Resource(name="GovBoardMapper")
	private IGovBoardMapper govBoardMapper;
	
	//정부사업공고게시판 리스트
	@Override
	public List<GovBoardDTO> getGovBoardList() throws Exception {
		return govBoardMapper.getGovBoardList();
	}
	
	//정부사업공고게시판 상세정보
	@Override
	public GovBoardDTO getGovBoard(GovBoardDTO gbDTO) throws Exception {
		return govBoardMapper.getGovBoard(gbDTO);
	}
	
	//정부사업공고게시판 글 등록
	@Override
	public void InsertGovBoard(GovBoardDTO gbDTO) throws Exception {
		govBoardMapper.InsertGovBoard(gbDTO);
	}
	
	//정부사업공고게시판 글 수정
	@Override
	public void updateGovBoard(GovBoardDTO gbDTO) throws Exception {
		govBoardMapper.updateGovBoard(gbDTO);
	}
	
	//정부사업공고게시판 글 삭제
	@Override
	public void deleteGovBoard(GovBoardDTO gbDTO) throws Exception {
		govBoardMapper.deleteGovBoard(gbDTO);
	}
}
