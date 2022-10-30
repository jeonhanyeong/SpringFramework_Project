package poly.persistance.mapper; 

import java.util.List;

import config.Mapper;
import poly.dto.GovBoardDTO;

@Mapper("GovBoardMapper")
public interface IGovBoardMapper {

	//정부사업공고게시판 글 등록
	void InsertGovBoard(GovBoardDTO gbDTO) throws Exception;
	
	//정부사업공고게시판 상세보기
	GovBoardDTO getGovBoard(GovBoardDTO gbDTO) throws Exception;
	
	//정부사업공고게시판 리스트
	List<GovBoardDTO> getGovBoardList() throws Exception;
	
	//정부사업공고게시판 글 수정
	void updateGovBoard(GovBoardDTO gbDTO) throws Exception;
	
	//정부사업공고게시판 글 삭제
	void deleteGovBoard(GovBoardDTO gbDTO) throws Exception;
	
}
