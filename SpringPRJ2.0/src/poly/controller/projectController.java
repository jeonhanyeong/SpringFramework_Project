package poly.controller;

import java.util.ArrayList;
import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import com.sun.istack.internal.logging.Logger;

import jdk.nashorn.internal.ir.RuntimeNode.Request;
import poly.dto.TableDTO;
import poly.service.ITableListService;

@Controller
public class projectController {
	Logger log = Logger.getLogger(this.getClass());

	@Resource(name = "TableService")
	ITableListService tableService;
	
	@RequestMapping(value="business_progress")
	public String business_progress() {

		
		return "/business_progress";
	}
	@RequestMapping(value="boradDetail", method=RequestMethod.GET)
	public String boradDetail(@RequestParam("leid") int Business_progress_no, ModelMap model) {
		
		TableDTO dto = new TableDTO();
		dto.setBusiness_progress_no(Business_progress_no);
		
		tableService.getDetail(dto);
		
		List<TableDTO> tList = tableService.getDetail(dto);
		
		model.addAttribute("tList" , tList);
		
		return "boradDetail";
	}
	

	@RequestMapping(value="boradTable")
	public String boradTable(ModelMap model) {
		log.info("Tableinfo Loading....");
		
		List<TableDTO> rList = tableService.getTableList();
		
		if(rList == null) {
			rList = new ArrayList<>();
		}
		
		for(TableDTO tDTO : rList) {
			log.info("Business_progress_no : " + tDTO.getBusiness_progress_no());
		}
		
		model.addAttribute("rList" , rList);
		
		return "/boradTable";
	}
	
	@RequestMapping(value="boradProgressSubmit", method = RequestMethod.POST)
	public String boradProgressSubmit(@RequestParam("title") String progress_title, @RequestParam("content") String progress_detailed, ModelMap model) {
		log.info("Tableinfo Loading....");
		log.info(progress_title);
		log.info(progress_detailed);
		  TableDTO dto = new TableDTO();
		  
		  dto.setProgress_title(progress_title);
		  dto.setProgress_detailed(progress_detailed);
		  
		  tableService.insertbsiness(dto);
		  List<TableDTO> rList = tableService.getTableList();
		  model.addAttribute("rList" , rList);
		  
		return "/boradTable";
	}
	
	
	@RequestMapping(value = "business_progress_check")
	public String business_progress_check() {
		
		
		return "business_progress_check";
	}
	
}
