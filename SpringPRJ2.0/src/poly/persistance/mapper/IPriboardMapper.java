package poly.persistance.mapper;

import java.util.List;

import config.Mapper;
import poly.dto.PriboardDTO;

@Mapper("PriboardMapper")
public interface IPriboardMapper {
	
	//게시판 리스트
	List<PriboardDTO> getPriboardList() throws Exception;
	
	//게시판 글 등록
	void InsertPriboardInfo(PriboardDTO priDTO) throws Exception;
	
	//게시판 상세보기
	PriboardDTO getPriboardInfo(PriboardDTO priDTO) throws Exception;
	
	//게시판 조회수 업데이트
//	void updatePriboardReadcnt(PriboardDTO priDTO) throws Exception;
	
	//게시판 글 수정
	void updatePriboardInfo(PriboardDTO priDTO) throws Exception;
	
	//게시판 글 삭제
	void deletePriboardInfo(PriboardDTO priDTO) throws Exception;
}
