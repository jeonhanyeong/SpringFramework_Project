package poly.controller;

import java.util.HashMap;
import java.util.List;
import java.util.Locale;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;

import org.apache.log4j.Logger;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import poly.dto.EmpDTO;
import poly.service.IEmpService;

@Controller
public class AJaxController {

	/*
	 * Logger log = Logger.getLogger(this.getClass());
	 * 
	 * @Resource(name ="EmpService") IEmpService empService;
	 * 
	 * @RequestMapping(value = "/businessLog", method = RequestMethod.POST)
	 * 
	 * @ResponseBody public HashMap <String, Object> businessLog(Locale locale,
	 * Model model, HttpServletRequest request) { HashMap<String, Object> result =
	 * new HashMap <String,Object>();
	 * 
	 * 
	 * //EmpDTO emp = new EmpDTO();
	 * 
	 * 
	 * log.info("empList start!!"); List<EmpDTO> logList =
	 * empService.businessList();
	 * 
	 * if ( logList.isEmpty() ) { String Msg = "이력이 없습니다."; String Code = "1";
	 * 
	 * result.put("Msg", Msg); result.put("Code", Code);
	 * 
	 * return result; } else { String Msg = "성공"; String Code = "0";
	 * 
	 * result.put("Msg", Msg); result.put("Code", Code); result.put("data",
	 * logList);
	 * 
	 * return result; } }
	 */

	
	Logger log = Logger.getLogger(this.getClass());

	@Resource(name = "EmpService")
	IEmpService empService;

	@RequestMapping(value = "/businessLog", method = RequestMethod.POST)

	@ResponseBody
	public String businessLog(Locale locale, Model model, HttpServletRequest request) {
		//테스트하고있었음
		// EmpDTO emp = new EmpDTO();

		log.info("empList start!!");
		return "44";

	}

}
