package poly.controller;

import java.util.ArrayList;
import java.util.List;

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

import poly.dto.GovBoardDTO;
import poly.service.impl.GovBoardService;
import poly.util.CmmUtil;

@Controller
public class GovBoardController {
	private Logger log = Logger.getLogger(this.getClass());
		
		//정부사업공고게시판 리스트 보여주기
		@Resource(name="GovBoardService")
		private GovBoardService govBoardService;
		
		@RequestMapping(value="governmentBoard/governmentBoardTable", method=RequestMethod.GET)
		public String GovBoardList(HttpServletRequest request, HttpServletResponse response, ModelMap model) throws Exception {
			
			log.info(this.getClass().getName()+".GovBoardList start!");
	 		
			//정부사업공고게시판 리스트 가져오기
			List<GovBoardDTO> rList = govBoardService.getGovBoardList();
			
			if (rList==null) {
				rList = new ArrayList<GovBoardDTO>();
			}
			
			//조회된 리스트 결과값 넣어주기
			model.addAttribute("rList", rList);
			
			//변수초기화(메모리 효율화를 위해)
			rList = null;
			
			//로그찍기(함수호출이 끝났는지 파악하기위해)
			log.info(this.getClass().getName() + ".GovBoardList end!");
			
			//함수처리 후 보여줄 JSP 파일명
			return "/governmentBoard/governmentBoardTable";
		}

		//정부사업공고게시글 등록
		@RequestMapping(value="governmentBoard/governmentBoardRegist", method=RequestMethod.POST)
		public String InsertGovBoard(HttpSession session, HttpServletRequest request, HttpServletResponse response, 
				ModelMap model, @RequestParam("business_title") String business_title, 
				@RequestParam("estimated_amount_of_business") int estimated_amount_of_business,
				@RequestParam("government_publicy_announced") String government_publicy_announced,
				@RequestParam("business_start_date") String business_start_date,
				@RequestParam("business_end_date") String business_end_date,
				@RequestParam("business_details") String business_details
				 )throws Exception {
			
			log.info(this.getClass().getName() + "./InsertGovBoard start!");
			
			String msg = "";
			
			try {
				//String gov_user_id = CmmUtil.nvl((String)session.getAttribute("SESSION_gov_user_id")); //공무원 아이디
				//int government_business_board_no=CmmUtil.nvl(request.getParameter("government_business_board_no")); //게시글번호
				//String business_title=CmmUtil.nvl(request.getParameter("business_title")); //제목
				//int estimated_amount_of_business=CmmUtil.invl(request.getParameter("estimated_amount_of_business")); //사업추정액
				//String government_publicy_announced=CmmUtil.nvl(request.getParameter("government_publicy_announced")); //공고기한
				//String business_start_date=CmmUtil.nvl(request.getParameter("business_start_date")); //시작날짜
				//String business_end_date=CmmUtil.nvl(request.getParameter("business_end_date")); //종료날짜
				//String business_details=CmmUtil.nvl(request.getParameter("business_details")); //사업내용
				
				//log.info("gov_user_id:"+ gov_user_id);
				log.info("business_title:" + business_title);
				log.info("estimated_amount_of_business:" + estimated_amount_of_business);
				log.info("government_publicy_announced" + government_publicy_announced);
				log.info("business_start_date:" + business_start_date);
				log.info("business_end_date:" + business_end_date);
				log.info("business_details:"+business_details);
				
				GovBoardDTO gbDTO = new GovBoardDTO();
				
				gbDTO.setBusiness_title(business_title);
				gbDTO.setEstimated_amount_of_business(estimated_amount_of_business);
				gbDTO.setGovernment_publicly_announced(government_publicy_announced);
				gbDTO.setBusiness_start_date(business_start_date);
				gbDTO.setBusiness_end_date(business_end_date);
				gbDTO.setBusiness_details(business_details);
				
				govBoardService.InsertGovBoard(gbDTO);
				
				msg = "등록되었습니다.";
				
				gbDTO = null;
				
			}catch(Exception e) {
				
				msg = "실패하였습니다. : " + e.toString();
				log.info(e.toString());
				e.printStackTrace();
				
			}finally {
				log.info(this.getClass().getName() + "GovBoardInsert end!");
				
				model.addAttribute("msg", msg);
			}
			
			return "/governmentBoard/governmentBoardDetail";
		
		}
		
		//정부사업공고게시판 상세보기
		@RequestMapping(value="governmentBoard/governmentBoardDetail", method=RequestMethod.GET)
		public String getGovBoard(HttpServletRequest request, HttpServletResponse response, ModelMap model) throws Exception {
		
			log.info(this.getClass().getName() + "./governmentBoardDetail start!");
			
			int government_business_board_no =CmmUtil.invl(request.getParameter("government_business_board_no")); //게시글 번호
			
			log.info("government_business_board_no:" + government_business_board_no);
			
			GovBoardDTO gbDTO = new GovBoardDTO();
			
			gbDTO.setGovernment_business_board_no(government_business_board_no);
			
			//상세정보 가져오기
			GovBoardDTO rDTO = govBoardService.getGovBoard(gbDTO);
			
			if(rDTO==null) {
				rDTO = new GovBoardDTO();
			}
			
			log.info("getGovBoard success!!!");
			
			model.addAttribute("rDTO", rDTO);
			
			rDTO = null;
			gbDTO = null;
			
			log.info(this.getClass().getName() + ".getGovBoard end!");
			
			return "/governmentBoard/governmentBoardDetail";
			
		}
		
		//정부사업공고게시판 수정보기
		@RequestMapping(value="governmentBoard/viewgovernmentBoardDetail", method=RequestMethod.GET)
		public String ViewUpdateGovBoard(HttpServletRequest request, HttpServletResponse response, ModelMap model) throws Exception {
			
			log.info(this.getClass().getName() + ".ViewUpdateGovBoard start!");
			
			int government_business_board_no =CmmUtil.invl(request.getParameter("government_business_board_no")); //게시글 번호
			
			log.info("government_business_board_no :" + government_business_board_no);
			
			GovBoardDTO gbDTO = new GovBoardDTO();
			
			gbDTO.setGovernment_business_board_no(government_business_board_no);
			
			GovBoardDTO rDTO = govBoardService.getGovBoard(gbDTO);
			
			if(rDTO==null) {
				rDTO = new GovBoardDTO();
			}
			
			log.info("getGovBoard success!!!");
			
			model.addAttribute("rDTO", rDTO);
			
			rDTO = null;
			gbDTO = null;
			
			log.info(this.getClass().getName() + ".getGovBoard end!");
			
			return "/governmentBoard/governmentBoardDetail";
			
		}
		
		//정부사업공고게시판 글 수정
		@RequestMapping(value="governmentBoard/updategovernmentBoardRegist", method=RequestMethod.GET)
		public String updateGovBoard(HttpSession session, HttpServletRequest request, HttpServletResponse response, ModelMap model) throws Exception{
			
			log.info(this.getClass().getName() + ".updateGovBoard start!");
			
			String msg="update success";
			
			try {
				//String gov_user_id = CmmUtil.nvl((String)session.getAttribute("SESSION_gov_user_id")); //공무원 아이디
				//int government_business_board_no=CmmUtil.nvl(request.getParameter("government_business_board_no")); //게시글번호
				String business_title=CmmUtil.nvl(request.getParameter("business_title")); //제목
				int estimated_amount_of_business=CmmUtil.invl(request.getParameter("estimated_amount_of_business")); //사업추정액
				String government_publicy_announced=CmmUtil.nvl(request.getParameter("government_publicy_announced")); //공고기한
				String business_start_date=CmmUtil.nvl(request.getParameter("business_start_date")); //시작날짜
				String business_end_date=CmmUtil.nvl(request.getParameter("business_end_date")); //종료날짜
				String business_details=CmmUtil.nvl(request.getParameter("business_details")); //사업내용
				
				//log.info("gov_user_id:"+ gov_user_id);
				log.info("business_title:" + business_title);
				log.info("estimated_amount_of_business:" + estimated_amount_of_business);
				log.info("government_publicy_announced" + government_publicy_announced);
				log.info("business_start_date:" + business_start_date);
				log.info("business_end_date:" + business_end_date);
				log.info("business_details:"+business_details);
				
				GovBoardDTO gbDTO = new GovBoardDTO();
				
				gbDTO.setBusiness_title(business_title);
				gbDTO.setEstimated_amount_of_business(estimated_amount_of_business);
				gbDTO.setGovernment_publicly_announced(government_publicy_announced);
				gbDTO.setBusiness_start_date(business_start_date);
				gbDTO.setBusiness_end_date(business_end_date);
				gbDTO.setBusiness_details(business_details);
				
				govBoardService.InsertGovBoard(gbDTO);
				
				msg = "수정되었습니다.";
				
				gbDTO = null;
				
			}catch(Exception e) {
				
				msg = "실패하였습니다. : " + e.toString();
				log.info(e.toString());
				e.printStackTrace();
				
			}finally {
				log.info(this.getClass().getName() + ".updateGovBoard end!");
				
				model.addAttribute("msg", msg);
			}
			
			return "/governmentBoard/governmentBoardRegist";
			}
		
		//정부사업공고게시판 글 삭제
		@RequestMapping(value="governmentBoard/governmentBoardDelete", method=RequestMethod.GET)
		
		public String DelteGovBoard(HttpSession session, HttpServletRequest request, HttpServletResponse response, ModelMap model) throws Exception {
			
			log.info(this.getClass().getName()+ ".DeleteGovBoard start!");
			
			String msg="delete success!";
			
			try {
				int government_business_board_no =CmmUtil.invl(request.getParameter("government_business_board_no"));
				
				log.info("government_business_board_no:"+government_business_board_no);
				
				GovBoardDTO gbDTO = new GovBoardDTO();
				
				gbDTO.setGovernment_business_board_no(government_business_board_no);
				
				govBoardService.deleteGovBoard(gbDTO);
				
				msg = "삭제되었습니다.";
				
				gbDTO = null;
				
			}catch(Exception e1) {
				
				msg = "실패하였습니다, :" + e1.toString();
				log.info(e1.toString());
				e1.printStackTrace();
				
			}finally {
				log.info(this.getClass().getName() + ".DeleteGovBoard end!");
				
				model.addAttribute("msg", msg);
			}
			return "/governmentBoard/governmentBoardDelete";
		}
		
		//정부사업공고게시판 등록페이지넘기기
	      @RequestMapping(value="opengovernmentBoardRegist", method=RequestMethod.GET)
	      public String governmentBoardRegist(HttpServletRequest request, HttpServletResponse response, ModelMap model) throws Exception {
	         
	         log.info(this.getClass().getName() + "governmentBoardRegist start!");
	         
	         log.info(this.getClass().getName() + "governmentBoardRegist end!");
	         
	         return "/governmentBoardRegist";
	      }
			
		
}

