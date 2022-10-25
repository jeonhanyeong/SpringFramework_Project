package poly.controller;

import java.util.List;

import javax.annotation.Resource;

import org.apache.log4j.Logger;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import poly.dto.EmpDTO;
import poly.dto.GovPublicOfficialDTO;
import poly.service.IMyPageService;

@Controller
public class MypageController {
	private Logger log = Logger.getLogger(this.getClass());
	
	  
	  @Resource(name ="MyPageService") 
	  IMyPageService mypageService;
	  

	// 마이페이지
	@RequestMapping(value = "/mypage/mypage")
	public String mypage() {
		log.info(this.getClass());

		return "/mypage/mypage";
	}

	// 개인정보수정 페이지
	@RequestMapping(value = "/mypage/mypageModify")
	public String mypageModify() {
		log.info(this.getClass());

		return "/mypage/mypageModify";
	}
	
	// 비밀번호변경 페이지
	@RequestMapping(value = "/mypage/mypageChangePW")
	public String mypageChangePW() {
		log.info(this.getClass());

		return "/mypage/mypageChangePW";
	}
	
	// 회원탈퇴 페이지
	@RequestMapping(value = "/mypage/mypageDelete")
	public String mypageDelete() {
		log.info(this.getClass());

		return "/mypage/mypageDelete";
	}
	
	
	  @RequestMapping("/ajaxBusinessList.do")
	  public @ResponseBody List<GovPublicOfficialDTO> ajaxList(){
		  List<GovPublicOfficialDTO> list = mypageService.getATListOne();
		  return list;
	  }
	  @RequestMapping("/ajaxBusinessList2.do")
	  public @ResponseBody List<GovPublicOfficialDTO> ajaxListTwo(){
		  List<GovPublicOfficialDTO> list = mypageService.getATListTwo();
		  return list;
	  }
	  @RequestMapping("/ajaxBusinessList3.do")
	  public @ResponseBody List<GovPublicOfficialDTO> ajaxListThree(){
		  List<GovPublicOfficialDTO> list = mypageService.getATListThree();
		  return list;
	  }
	  
	
	
}
