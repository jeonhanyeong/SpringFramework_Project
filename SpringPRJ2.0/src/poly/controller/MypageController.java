package poly.controller;

import java.util.List;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.apache.log4j.Logger;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.config.annotation.EnableWebMvc;

import poly.dto.GovPublicOfficialDTO;
import poly.dto.LandscapingDTO;
import poly.dto.PriEnterpriseDTO;
import poly.service.IMyPageService;

@Controller
@EnableWebMvc
public class MypageController {
	private Logger log = Logger.getLogger(this.getClass());

	@Resource(name = "MyPageService")
	IMyPageService mypageService;

	// 마이페이지
	@RequestMapping(value = "mypage", method = RequestMethod.GET)
	public String mypage(HttpServletRequest request, HttpSession session, ModelMap model) {
		log.info(this.getClass());
		//전 페이지에서 세션값 받아오기
		  String sessionID = (String) request.getSession().getAttribute("sessionID");
		  String sessionPart = (String) request.getSession().getAttribute("sessionPart");
		//전 페이지에서 받아온 세션값 현재 페이지 세션에 저장
		  session.setAttribute("sessionID", sessionID);
		  session.setAttribute("sessionPart", sessionPart);
		  
		  //LandscapingDTO landdto = new LandscapingDTO();
		  //GovPublicOfficialDTO govdto = new GovPublicOfficialDTO();
		  //PriEnterpriseDTO pridto = new PriEnterpriseDTO();
		  
		  
		  //세션값이 land(조경원예기업)일 경우
		  if(sessionPart.equals("land")) {
			  List<LandscapingDTO> landList = mypageService.getlandDetail(sessionID);
			  model.addAttribute("Detail", landList);
			  model.addAttribute("sessionPart", "land");
			  
		  //세션값이 gov(공무원)일 경우  
		  }else if(sessionPart.equals("gov")) {
			  List<GovPublicOfficialDTO> govList = mypageService.getgovDetail(sessionID);
			  model.addAttribute("Detail", govList);
			  model.addAttribute("sessionPart", "gov");
			  
		  //세션값이 pri(민간기업)일 경우   
		  }else {
			  List<PriEnterpriseDTO> priList = mypageService.getpriDetail(sessionID);
			  model.addAttribute("Detail", priList);
			  model.addAttribute("sessionPart", "pri");
		  }

		return "/mypage/mypage";
	}
	
	// 개인정보수정에서 마이페이지가는 메소드
	@RequestMapping(value = "/mypage/mypage", method = RequestMethod.GET)
	public String mypageMypage(HttpServletRequest request, HttpSession session, ModelMap model) {
		log.info(this.getClass());
		//전 페이지에서 세션값 받아오기
		  String sessionID = (String) request.getSession().getAttribute("sessionID");
		  String sessionPart = (String) request.getSession().getAttribute("sessionPart");
		//전 페이지에서 받아온 세션값 현재 페이지 세션에 저장
		  session.setAttribute("sessionID", sessionID);
		  session.setAttribute("sessionPart", sessionPart);
		  
		  //LandscapingDTO landdto = new LandscapingDTO();
		  //GovPublicOfficialDTO govdto = new GovPublicOfficialDTO();
		  //PriEnterpriseDTO pridto = new PriEnterpriseDTO();
		  
		  
		  //세션값이 land(조경원예기업)일 경우
		  if(sessionPart.equals("land")) {
			  List<LandscapingDTO> landList = mypageService.getlandDetail(sessionID);
			  model.addAttribute("Detail", landList);
			  model.addAttribute("sessionPart", "land");
			  
		  //세션값이 gov(공무원)일 경우  
		  }else if(sessionPart.equals("gov")) {
			  List<GovPublicOfficialDTO> govList = mypageService.getgovDetail(sessionID);
			  model.addAttribute("Detail", govList);
			  model.addAttribute("sessionPart", "gov");
			  
		  //세션값이 pri(민간기업)일 경우   
		  }else {
			  List<PriEnterpriseDTO> priList = mypageService.getpriDetail(sessionID);
			  model.addAttribute("Detail", priList);
			  model.addAttribute("sessionPart", "pri");
		  }

		return "/mypage/mypage";
	}

	// 개인정보수정 페이지 안에서 개인정보수정으로 가는 페이지
	@RequestMapping(value = "mypageModify", method = RequestMethod.GET)
	public String mypageModify(HttpServletRequest request, HttpSession session, ModelMap model ) {
		log.info(this.getClass());
		//전 페이지에서 세션값 받아오기
		  String sessionID = (String) request.getSession().getAttribute("sessionID");
		  String sessionPart = (String) request.getSession().getAttribute("sessionPart");
		//전 페이지에서 받아온 세션값 현재 페이지 세션에 저장
		  session.setAttribute("sessionID", sessionID);
		  session.setAttribute("sessionPart", sessionPart);
		  
		  //LandscapingDTO landdto = new LandscapingDTO();
		  //GovPublicOfficialDTO govdto = new GovPublicOfficialDTO();
		  //PriEnterpriseDTO pridto = new PriEnterpriseDTO();
		  
		  
		  //세션값이 land(조경원예기업)일 경우
		  if(sessionPart.equals("land")) {
			  List<String> partList = mypageService.getPartName();
			  List<LandscapingDTO> landList = mypageService.getlandDetail(sessionID);
			  model.addAttribute("landpartList", partList);
			  model.addAttribute("Detail", landList);
			  model.addAttribute("sessionPart", "land");
		  //세션값이 gov(공무원)일 경우  
		  }else if(sessionPart.equals("gov")) {
			  List<GovPublicOfficialDTO> govList = mypageService.getgovDetail(sessionID);
			  model.addAttribute("Detail", govList);
			  model.addAttribute("sessionPart", "gov");
		  //세션값이 pri(민간기업)일 경우   
		  }else {
			  List<PriEnterpriseDTO> priList = mypageService.getpriDetail(sessionID);
			  model.addAttribute("Detail", priList);
			  model.addAttribute("sessionPart", "pri");
		  }
		  
		return "/mypage/mypageModify";
	}
	
	// 개인정보수정 페이지
	@RequestMapping(value = "/mypage/mypageModify", method = RequestMethod.GET)
	public String mypageMyModify(HttpServletRequest request, HttpSession session, ModelMap model ) {
		log.info(this.getClass());
		//전 페이지에서 세션값 받아오기
		  String sessionID = (String) request.getSession().getAttribute("sessionID");
		  String sessionPart = (String) request.getSession().getAttribute("sessionPart");
		//전 페이지에서 받아온 세션값 현재 페이지 세션에 저장
		  session.setAttribute("sessionID", sessionID);
		  session.setAttribute("sessionPart", sessionPart);
		  
		  //LandscapingDTO landdto = new LandscapingDTO();
		  //GovPublicOfficialDTO govdto = new GovPublicOfficialDTO();
		  //PriEnterpriseDTO pridto = new PriEnterpriseDTO();
		  
		  
		  //세션값이 land(조경원예기업)일 경우
		  if(sessionPart.equals("land")) {
			  List<String> partList = mypageService.getPartName();
			  List<LandscapingDTO> landList = mypageService.getlandDetail(sessionID);
			  model.addAttribute("landpartList", partList);
			  model.addAttribute("Detail", landList);
			  model.addAttribute("sessionPart", "land");
		  //세션값이 gov(공무원)일 경우  
		  }else if(sessionPart.equals("gov")) {
			  List<GovPublicOfficialDTO> govList = mypageService.getgovDetail(sessionID);
			  model.addAttribute("Detail", govList);
			  model.addAttribute("sessionPart", "gov");
		  //세션값이 pri(민간기업)일 경우   
		  }else {
			  List<PriEnterpriseDTO> priList = mypageService.getpriDetail(sessionID);
			  model.addAttribute("Detail", priList);
			  model.addAttribute("sessionPart", "pri");
		  }
		  
		return "/mypage/mypageModify";
	}

	// 비밀번호변경 페이지
	@RequestMapping(value = "/mypage/mypageChangePW")
	public String mypageChangePW(HttpServletRequest request, HttpSession session, ModelMap model) {
		log.info(this.getClass());
		//전 페이지에서 세션값 받아오기
		  String sessionID = (String) request.getSession().getAttribute("sessionID");
		  String sessionPart = (String) request.getSession().getAttribute("sessionPart");
		//전 페이지에서 받아온 세션값 현재 페이지 세션에 저장
		  session.setAttribute("sessionID", sessionID);
		  session.setAttribute("sessionPart", sessionPart);
		  
		return "/mypage/mypageChangePW";
	}

	// 회원탈퇴 페이지
	@RequestMapping(value = "/mypage/mypageDelete")
	public String mypageDelete(HttpServletRequest request, HttpSession session, ModelMap model) {
		log.info(this.getClass());
		//전 페이지에서 세션값 받아오기
		  String sessionID = (String) request.getSession().getAttribute("sessionID");
		  String sessionPart = (String) request.getSession().getAttribute("sessionPart");
		//전 페이지에서 받아온 세션값 현재 페이지 세션에 저장
		  session.setAttribute("sessionID", sessionID);
		  session.setAttribute("sessionPart", sessionPart);
		  
		return "/mypage/mypageDelete";
	}

	@RequestMapping("/ajaxBusinessList.do")
	public @ResponseBody List<GovPublicOfficialDTO> ajaxList() {
		List<GovPublicOfficialDTO> list = mypageService.getATListOne();
		return list;
	}

	@RequestMapping("/ajaxBusinessList2.do")
	public @ResponseBody List<GovPublicOfficialDTO> ajaxListTwo() {
		List<GovPublicOfficialDTO> list = mypageService.getATListTwo();
		return list;
	}

	@RequestMapping("/ajaxBusinessList3.do")
	public @ResponseBody List<GovPublicOfficialDTO> ajaxListThree() {
		List<GovPublicOfficialDTO> list = mypageService.getATListThree();
		return list;
	}
	
	@RequestMapping(value = "/userCheck.do", method = RequestMethod.POST)
	public @ResponseBody String userCheck(@RequestParam(value="id", defaultValue = "1") String id) {

		log.info(id);
		String result ="";
		int count = mypageService.userCheck(id);
		
		if(count == 0) {
			result = "성공";
		}
		else
			result = "실패";
		
		
		return result;
	}

}
