package poly.controller;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.apache.log4j.Logger;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import poly.dto.GovBiddingDTO;
import poly.service.impl.GovBiddingService;

@Controller
public class GovBiddingController {
	private Logger log = Logger.getLogger(this.getClass());
	
	@Resource(name="GovBiddingService")
	private GovBiddingService govBiddingService;
	
	//사업계획서 등록
	@RequestMapping(value="govbidding/biddingRegist", method=RequestMethod.POST)
	public String InsertGovBidding(HttpSession session, HttpServletRequest request, HttpServletResponse response, ModelMap model,
		@RequestParam("business_plan") String business_plan) throws Exception {
		
		log.info(this.getClass().getName() + "./InsertGovBidding start!");
		
		String msg = "Success";
		
		try {
			
			log.info("business_plan:" + business_plan);
			
			GovBiddingDTO biddingDTO = new GovBiddingDTO();
			
			biddingDTO.setBusiness_plan(business_plan);
			
			govBiddingService.InsertGovBidding(biddingDTO);
			
		}catch (Exception e) {
			
			msg = "실패하였습니다.: "+ e.toString();
			log.info(e.toString());
			e.printStackTrace();
			
		}finally {
			log.info(this.getClass().getName() + "InsertGovBidding end!");
			
			model.addAttribute("msg", msg);
		}
	
	return "govbidding/biddingRegist";
}
}
