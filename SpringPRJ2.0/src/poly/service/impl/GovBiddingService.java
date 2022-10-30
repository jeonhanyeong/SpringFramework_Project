package poly.service.impl;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import poly.dto.GovBiddingDTO;
import poly.persistance.mapper.IGovBiddingMapper;
import poly.service.IGovBiddingService;

@Service("GovBiddingService")
public class GovBiddingService implements IGovBiddingService{

		@Resource(name="GovBiddingMapper")
		private IGovBiddingMapper govBiddingMapper;
		
		//사업계획서 정부사업공고게시판번호 불러오기
		@Override
		public GovBiddingDTO getGovBoardNO(GovBiddingDTO biddingDTO) throws Exception {
			return govBiddingMapper.getGovBoardNO(biddingDTO);
		}
		
		//사업계획서 등록
		@Override
		public void InsertGovBidding(GovBiddingDTO biddingDTO) throws Exception {
			govBiddingMapper.InsertGovBidding(biddingDTO);
		}
}
