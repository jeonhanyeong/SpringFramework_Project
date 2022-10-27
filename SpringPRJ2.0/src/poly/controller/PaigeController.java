package poly.controller;



import org.apache.log4j.Logger;
import org.springframework.stereotype.Controller;

import org.springframework.web.bind.annotation.RequestMapping;

/*
 * Controller 선언해야만 Spring 프레임워크에서 Controller인지 인식 가능
 * 자바 서블릿 역할 수행
 * */
@Controller
public class PaigeController {
	private Logger log = Logger.getLogger(this.getClass());
	
	//임시로 페이지만 여는 파일

	//공지사항
	@RequestMapping(value="/notice/notice")
	public String notice() {
		log.info(this.getClass());
		
		return "/notice/notice";
	}
	
	//공지사항 작성
		@RequestMapping(value="/notice/noticeWriting")
		public String noticeWriting() {
			log.info(this.getClass());
			
			return "/notice/noticeWriting";
		}
		

	
	
	
}
