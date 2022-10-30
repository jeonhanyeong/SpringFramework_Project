package poly.service;

import poly.dto.GovBiddingDTO;
import poly.dto.GovBoardDTO;

public interface IGovBiddingService {
	
	//정부사업공고게시판번호 가져오기
	GovBiddingDTO getGovBoardNO(GovBiddingDTO biddingDTO) throws Exception;
	
	//사업계획서 등록
	void InsertGovBidding(GovBiddingDTO biddingDTO) throws Exception;
}
