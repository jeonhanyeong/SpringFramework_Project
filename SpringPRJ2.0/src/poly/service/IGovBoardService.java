package poly.service;

import java.util.List;

import poly.dto.GovBoardDTO;

public interface IGovBoardService {
	
	//정부사업공고게시판 리스트
	List<GovBoardDTO> getGovBoardList() throws Exception;
	
	//정부사업공고게시판 상세보기
	GovBoardDTO getGovBoard(GovBoardDTO gbDTO) throws Exception;
	
	//정부사업공고게시판 글 등록
	void InsertGovBoard(GovBoardDTO gbDTO) throws Exception;
	
	//정부사업공고게시판 글 수정
	void updateGovBoard(GovBoardDTO gbDTO) throws Exception;
	
	//정부사업공고게시판 글 삭제
	void deleteGovBoard(GovBoardDTO gbDTO) throws Exception;
}
