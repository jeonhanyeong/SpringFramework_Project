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

import poly.dto.PriboardDTO;
import poly.service.impl.PriboardService;
import poly.util.priBoardUtil;

/*
 * Controller 선언해야만 Spring 프레임워크에서 Controller인지 인식 가능
 * 자바 서블릿 역할 수행
 * */
@Controller
public class MainController {
	private Logger log = Logger.getLogger(this.getClass());

	
	@Resource(name = "PriboardService")
	private PriboardService priboardservice;
	
	
	// 메인페이지
//	@RequestMapping(value = "index")
//	public String index() {
//		log.info(this.getClass());
//
//		return "index";
//	}

	/*
	 * //공지사항
	 * 
	 * @RequestMapping(value="/notice/notice") public String notice() {
	 * log.info(this.getClass());
	 * 
	 * return "/notice/notice"; }
	 * 
	 * //공지사항 작성
	 * 
	 * @RequestMapping(value="/notice/noticeWriting") public String noticeWriting()
	 * { log.info(this.getClass());
	 * 
	 * return "/notice/noticeWriting"; }
	 */

	// 사업게시판 연결
	@RequestMapping(value = "/notice/boardtable")
	public String boardtable() {
		log.info(this.getClass());

		return "/notice/boardtable";
	}



//	// 민간 게시판
//		@RequestMapping(value = "/privateBoard/privateBoardList")
//		public String privateBoardList() {
//			log.info(this.getClass());
//
//			return "/privateBoard/privateBoardList";
//		}
		
		

	//게시판 보기
	@RequestMapping(value = "/privateBoard/privateBoardTable", method = RequestMethod.GET)
	public String privateBoardList(HttpServletRequest request, HttpServletResponse response, ModelMap model)
			throws Exception {

		// 로그 찍기(함수 접근 파악 용이)
		log.info(this.getClass().getName() + ".PriboardList start!");

		// 게시판 리스트 가져오기
		List<PriboardDTO> pList = priboardservice.getPriboardList();

		if (pList == null) {
			pList = new ArrayList<PriboardDTO>();
		}

		// 조회된 리스트 결과값 넣어주기
		model.addAttribute("pList", pList);

		// 변수 초기화(메모리 효율화)
		pList = null;

		// 로그 찍기
		log.info(this.getClass().getName() + ".PriboardList end!");

		// 함수 처리가 끝나고 보여줄 JSP 파일명
		return "/privateBoard/privateBoardTable";

	}
	
	//게시판 작성 페이지 이동
	@RequestMapping(value="/privateBoard/privateBoardRegist")
	public String privateBoardRegist(HttpServletRequest request, HttpServletResponse response, 
			ModelMap model) throws Exception {
		log.info(this.getClass().getName() + ".privateBoardRegist start!");
		
		log.info(this.getClass().getName() + ".privateBoardRegist end!");
		
		return "/privateBoard/privateBoardRegist";
	}
	
	//게시판 글 등록
	@RequestMapping(value="/privateBoardInsert", method=RequestMethod.POST)
	public String privateBoardInsert(HttpSession session, HttpServletRequest request, HttpServletResponse response, 
			ModelMap model, @RequestParam("pri_business_title") String pri_business_title, 
			@RequestParam("pri_business_start_date") String pri_business_start_date, @RequestParam("pri_business_end_date") String pri_business_end_date, 
			@RequestParam("pri_announced") String pri_announced, @RequestParam("pri_eaof") int pri_eaof, @RequestParam("pri_business_details") String pri_business_details) throws Exception {
		
		log.info(this.getClass().getName() + ".privateBoardInsert start!");
		
		String msg = "";
		
		try {
			/*
			 * String pri_enterprise_name =
			 * priBoardUtil.nvl((String)session.getAttribute("pri_enterprise_name")); String
			 * pri_business_title =
			 * priBoardUtil.nvl(request.getParameter("pri_business_title")); String
			 * pri_business_start_date =
			 * priBoardUtil.nvl(request.getParameter("pri_business_start_date")); String
			 * pri_business_end_date =
			 * priBoardUtil.nvl(request.getParameter("pri_business_end_start")); String
			 * pri_announced = priBoardUtil.nvl(request.getParameter("pri_announced")); int
			 * pri_eaof = priBoardUtil.invl(request.getParameter("pri_eaof")); String
			 * pri_business_details =
			 * priBoardUtil.nvl(request.getParameter("pri_business_details"));
			 */
			
			//log.info("pri_enterprise_name : " + pri_enterprise_name);
			log.info("pri_business_title : " + pri_business_title);
			log.info("pri_business_start_date : " + pri_business_start_date);
			log.info("pri_business_end_date : " + pri_business_end_date);
			log.info("pri_announced : " + pri_announced);
			log.info("pri_eaof : " + pri_eaof);
			log.info("pri_business_details : " + pri_business_details);
			
			PriboardDTO pDTO = new PriboardDTO();
			
			//pDTO.setPri_enterprise_name(pri_enterprise_name);
			pDTO.setPri_business_title(pri_business_title);
			pDTO.setPri_business_start_date(pri_business_start_date);
			pDTO.setPri_business_end_date(pri_business_end_date);
			pDTO.setPri_announced(pri_announced);
			pDTO.setPri_eaof(pri_eaof);
			pDTO.setPri_business_details(pri_business_details);
			
			priboardservice.InsertPriboardInfo(pDTO);
			
			//저장이 완료되면 사용자에게 보여줄 메세지
			msg = "등록되었습니다.";
			
			//변수 초기화
			pDTO = null;
			
		}catch (Exception e) {
			
			//저장이 실패한 경우
			msg = "등록에 실패하였습니다. : " + e.toString();
			log.info(e.toString());
			e.printStackTrace();
			
			
		}finally {
			log.info(this.getClass().getName() + ".PriboardInsert end!");
			
			//결과메세지 전달
			model.addAttribute("msg", msg);
		}
		
		return "/privateBoard/privateBoardDetail";
	}
	
	
	//게시판 상세 보기
	@RequestMapping(value="/privateBoardInfo", method=RequestMethod.GET)
	public String PriboardInfo(HttpServletRequest request, HttpServletResponse response, 
			ModelMap model) throws Exception {
		
		log.info(this.getClass().getName() + ".PriboardInfo start!");
		
		String nSeq = priBoardUtil.nvl(request.getParameter("pSeq"));
		
		
		log.info("pSeq : " + nSeq);
		
		PriboardDTO pDTO = new PriboardDTO();
		
		pDTO.setPri_business_board_no(nSeq);
		
		//공지사항 글 조회수 증가
		priboardservice.updatePriboardReadcnt(pDTO);
		
		//게시판 상세정보
		PriboardDTO rDTO = priboardservice.getPriboardInfo(pDTO);
		
		if(rDTO==null) {
			rDTO = new PriboardDTO();
		}
		
		model.addAttribute("sDTO",rDTO);
		
		pDTO = null;
		rDTO = null;
		
		log.info(this.getClass().getName() + ".PriboardInfo end!");
		
		return "/privateBoard/privateBoardDetail";
	}

	
	//게시판 수정 하면 값 불러오기
	@RequestMapping(value="/privateBoard/privateBoardEditInfo", method=RequestMethod.GET)
	public String privateBoardEditInfo(HttpServletRequest request, HttpServletResponse response, 
			ModelMap model) throws Exception {
		
		log.info(this.getClass().getName() + ".PriboardEditInfo start!");
		
		String nSeq = priBoardUtil.nvl(request.getParameter("nseq"));
		
		log.info("nSeq : " + nSeq);
		
		PriboardDTO pDTO = new PriboardDTO();
		
		pDTO.setPri_business_board_no(nSeq);
		
		PriboardDTO rDTO = priboardservice.getPriboardInfo(pDTO);
		
		if(rDTO==null) {
			rDTO = new PriboardDTO();
		}
		
		model.addAttribute("rDTO", rDTO);
		
		rDTO = null;
		pDTO = null;
		
		log.info(this.getClass().getName() + ".PriboardEditInfo end!");
		
		return "/privateBoard/privateBoardRegist";
	}
	
	//게시판 글 수정
	@RequestMapping(value="/privateBoard/privateUpdate", method=RequestMethod.POST)
	public String PriboardUpdate(HttpSession session, HttpServletRequest request, HttpServletResponse response, 
			ModelMap model) throws Exception {
		
		log.info(this.getClass().getName() + ".PriboardUpdate start!");
		
		String msg = "";
		
		try {
			String pri_enterprise_name = priBoardUtil.nvl((String)session.getAttribute("PRI_ENTERPRISE_ID"));
			String pri_business_title = priBoardUtil.nvl(request.getParameter("pri_business_title"));
			String pri_business_start_date = priBoardUtil.nvl(request.getParameter("pri_business_start_date"));
			String pri_business_end_date = priBoardUtil.nvl(request.getParameter("pri_business_end_start"));
			String pri_announced = priBoardUtil.nvl(request.getParameter("pri_announced"));
			int pri_eaof = priBoardUtil.invl(request.getParameter("pri_eaof"));
			String pri_business_details = priBoardUtil.nvl(request.getParameter("pri_business_details")); 
			
			log.info("pri_enterprise_name : " + pri_enterprise_name);
			log.info("pri_business_title : " + pri_business_title);
			log.info("pri_business_start_date : " + pri_business_start_date);
			log.info("pri_business_end_date : " + pri_business_end_date);
			log.info("pri_announced : " + pri_announced);
			log.info("pri_eaof : " + pri_eaof);
			log.info("pri_business_details : " + pri_business_details);
			
			PriboardDTO pDTO = new PriboardDTO();
			
			pDTO.setPri_enterprise_name(pri_enterprise_name);
			pDTO.setPri_business_title(pri_business_title);
			pDTO.setPri_business_start_date(pri_business_start_date);
			pDTO.setPri_business_end_date(pri_business_end_date);
			pDTO.setPri_announced(pri_announced);
			pDTO.setPri_eaof(pri_eaof);
			pDTO.setPri_business_details(pri_business_details);
			
			priboardservice.updatePriboardInfo(pDTO);
			
			//저장이 완료되면 사용자에게 보여줄 메세지
			msg = "등록되었습니다.";
			
			//변수 초기화
			pDTO = null;
		} catch (Exception e) {
			msg = "수정이 실패하였습니다. : " + e.toString();
			log.info(e.toString());
			e.printStackTrace();
		} finally {
			log.info(this.getClass().getName() + ".PriboardUpdate end!");
			
			model.addAttribute("msg",msg);
			
		}
		
		return "/privateBoard/privateBoardTable";
	}
	
	
	//게시판 글 삭제
	@RequestMapping(value="/privateBoard/privateBoardDelete", method=RequestMethod.POST)
	public String PriboardDelete(HttpSession session, HttpServletRequest request, HttpServletResponse response, 
			ModelMap model) throws Exception {
		
		log.info(this.getClass().getName() + ".PriboardDelete start!");
		
		String msg ="";
		
		try {
			String nSeq = priBoardUtil.nvl(request.getParameter("nSeq"));
			
			log.info("nSeq : " + nSeq);
			
			PriboardDTO pDTO = new PriboardDTO();
			
			pDTO.setPri_business_board_no(nSeq);
			
			priboardservice.deletePriboardInfo(pDTO);
			
			msg = "삭제되었습니다.";
			
			pDTO = null;
		} catch (Exception e) {
			msg = "실패하였습니다. : " + e.toString();
			log.info(e.toString());
			e.printStackTrace();
		} finally {
			log.info(this.getClass().getName() + ".PriboardDelete end!");
			
			model.addAttribute("msg", msg);
		}
		return "/privateBoard/privateBoardTable";
	}
	
	// 정부사업게시판
	@RequestMapping(value = "/governmentBoard/governmentBoardList")
	public String governmentBoardList() {
		log.info(this.getClass());

		return "/governmentBoard/governmentBoardList";
	}
	
}
