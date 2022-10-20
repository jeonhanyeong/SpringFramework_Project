package poly.controller;

import org.apache.log4j.Logger;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class MypageController {
	private Logger log = Logger.getLogger(this.getClass());

	// 임시로 페이지만 여는 파일

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
}
