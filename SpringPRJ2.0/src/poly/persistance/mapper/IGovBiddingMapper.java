package poly.persistance.mapper;

import config.Mapper;
import poly.dto.GovBiddingDTO;
import poly.dto.GovBoardDTO;

@Mapper("GovBiddingMapper")
public interface IGovBiddingMapper {
	
	//조경원예기업 정부사업공고게시판번호 가져오기
	GovBiddingDTO getGovBoardNO(GovBiddingDTO biddingDTO) throws Exception;
	
	//조경원예기업 사업계획서 등록
	void InsertGovBidding(GovBiddingDTO biddngDTO) throws Exception;
}
