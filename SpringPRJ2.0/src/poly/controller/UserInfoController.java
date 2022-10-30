
package poly.controller;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.apache.log4j.Logger;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import poly.dto.GovPublicOfficialDTO;
import poly.dto.LandscapingDTO;
import poly.dto.PriEnterpriseDTO;
import poly.dto.UserInfoDTO;
import poly.service.IUserInfoService;
import poly.service.impl.LoginService;
import poly.util.CmmUtil;
import poly.util.EncryptUtil;

@Controller
public class UserInfoController {
	private Logger log = Logger.getLogger(this.getClass());
	
    @Autowired
    private LoginService loginservice;
    
	@RequestMapping(value="login")
	public String Login() {
		log.info(this.getClass());
		
		return "/user/login";
	}
	
	@RequestMapping(value="index")
	public String Index() {
		log.info(this.getClass());
		
		return "/index";
	}
	// 조경원예기업 로그인
	
	@RequestMapping(value = "landloginSuccess" , method = RequestMethod.POST)
	public String landJoin(@RequestParam("landscaping_enterprise_id") String landscaping_enterprise_id, 
			@RequestParam("landscaping_enterprise_pw") String landscaping_enterprise_pw, HttpSession session) throws Exception{
		log.info(this.getClass());
		
        String path = "";


        LandscapingDTO dto = new LandscapingDTO();

        dto.setLandscaping_enterprise_id(landscaping_enterprise_id);
        dto.setLandscaping_enterprise_pw(landscaping_enterprise_pw);

        Integer result = loginservice.LandLogin(dto);

        if(result == 1) {
        	session.setAttribute("sessionID", dto.getLandscaping_enterprise_id());
        	session.setAttribute("sessionPart", "land");
            path = "/index";
        } else {
           // path = "/user/login";
        	path ="/user/login";
        	
        }

        return path;
	}
	// 공무원 로그인
	@RequestMapping(value = "govloginSuccess" , method = RequestMethod.POST)
	public String govJoin(@RequestParam("public_official_id") String public_official_id, 
			@RequestParam("password") String password, HttpSession session) throws Exception{
		log.info(this.getClass());
		
        String path = "";

        GovPublicOfficialDTO dto = new GovPublicOfficialDTO();

        dto.setPublic_official_id(public_official_id);
        dto.setPassword(password);

        Integer result = loginservice.GovLogin(dto);

        if(result == 1) {
        	session.setAttribute("sessionID", dto.getPublic_official_id());
        	session.setAttribute("sessionPart", "gov");
            path = "/indexOficial";
        } else {
        	path ="/user/login";
        }

        return path;
	}
	// 민간기업 로그인
	@RequestMapping(value = "priloginSuccess" , method = RequestMethod.POST)
	public String priJoin(@RequestParam("pri_enterprise_id") String pri_enterprise_id, 
			@RequestParam("pri_enterprise_password") String pri_enterprise_password, HttpSession session) throws Exception{
		log.info(this.getClass());
		
        String path = "";

        PriEnterpriseDTO dto = new PriEnterpriseDTO();

        dto.setPri_enterprise_id(pri_enterprise_id);
        dto.setPri_enterprise_password(pri_enterprise_password);

        Integer result = loginservice.PriLogin(dto);

        if(result == 1) {
        	session.setAttribute("sessionID", dto.getPri_enterprise_id());
        	session.setAttribute("sessionPart", "pri");
            path = "/index";
        } else {
        	path ="/user/login";
        }

        return path;
	}
	
	@RequestMapping(value = "landJoin")
	public String Join() {
		log.info(this.getClass());

		return "/user/landJoin";
	}
	
	@RequestMapping(value = "findPassword")
	public String findPassword() {
		log.info(this.getClass());

		return "/user/findPassword";
	}
	
	
	@RequestMapping(value = "/logout" , method = RequestMethod.GET)
	public String logout(HttpServletRequest request)throws Exception {
		log.info(this.getClass());
		
		HttpSession session = request.getSession();
		session.invalidate();

		return "/user/login";
	}
	
	@Resource(name = "UserInfoService")
	private IUserInfoService userInfoService;
	
	@RequestMapping(value="private-join")
	public String private_join() {
		log.info(this.getClass().getName() + "./private-join ok!");
		
		return "/private-join";
	}
	
	/*로직*/
	@RequestMapping(value="/insertUserInfo", method = RequestMethod.POST)
	public String insertUserInfo(HttpServletRequest request, HttpServletResponse response,
            ModelMap model) throws Exception{
		
		log.info(this.getClass().getName()+".insertUserInfo start");
		
		String msg = "";
		
		System.out.println("회원가입 컨트롤러옴");
		
		UserInfoDTO pDTO = null;
		
		try {
			String id = CmmUtil.nvl(request.getParameter("landscaping_enterprise_id"));
			String pw = CmmUtil.nvl(request.getParameter("landscaping_enterprise_pw"));
			String name = CmmUtil.nvl(request.getParameter("company_name"));
			String tel = CmmUtil.nvl(request.getParameter("company_tel"));
			String Bnumber = CmmUtil.nvl(request.getParameter("business_registration_number"));
			
			log.info("id = " + id);
			log.info("pw = " + pw);
			log.info("name = " + name);
			log.info("tel = " + tel);
			log.info("Bnumber = " + Bnumber);
			
			pDTO = new UserInfoDTO();
			
			pDTO.setLandscaping_enterprise_id(id);
			pDTO.setLandscaping_enterprise_pw(EncryptUtil.encHashSHA256(pw));
			pDTO.setCompany_name(name);
			pDTO.setCompany_tel(tel);
			pDTO.setBusiness_registration_number(Bnumber);
			
			
			/**
			 * 회원가입
			 */
			int res = userInfoService.insertUserInfo(pDTO);
			
			if(res==1) {
				msg="회원가입 완료";
			}else if(res==2) {
				msg ="이미 가입된 이메일 주소입니다";
			}else {
				msg = "오류로 회원가입 실패";
			}
			
		}catch(Exception e) {
			msg ="실패 : " +e.toString();
			log.info(e.toString());
			e.printStackTrace();
		}finally {
			log.info(this.getClass().getName()+".insertUserInfo end");
			
			model.addAttribute("msg", msg);
			model.addAttribute("pDTO", pDTO);
			
			//변수 초기화
			pDTO = null;
		}
		return "/user/login";
	}
	

}
