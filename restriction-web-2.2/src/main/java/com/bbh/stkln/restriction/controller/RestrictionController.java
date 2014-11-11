package com.bbh.stkln.restriction.controller;

import java.util.ArrayList;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import com.bbh.stkln.restriction.dto.RestrictionDTO;
import com.bbh.stkln.restriction.dto.SearchForm;

@Controller("restrictionController")
public class RestrictionController {
	
	/*@RequestMapping(value = "/restrictions", method = RequestMethod.GET)
	@ResponseBody
	public ResponseEntity<Map<String, List<RestrictionDTO>>> listEmployees(){
		List<RestrictionDTO>  restrictions = new ArrayList<RestrictionDTO>();
		RestrictionDTO restriction = new RestrictionDTO();
		restriction.setRestrictionId("RES1");
		restriction.setRestrictionType("RS");
		restriction.setFundMajor("MIFL");
		restriction.setUserSecurity("SL");
		
		restrictions.add(restriction);
		restriction = new RestrictionDTO();
		restriction.setRestrictionId("RES2");
		restriction.setRestrictionType("IN");
		restriction.setFundMajor("MIFL");
		restriction.setUserSecurity("SS");
		restrictions.add(restriction);
		
		Map<String, List<RestrictionDTO>> empMap = new HashMap<String, List<RestrictionDTO>>();
		empMap.put("restrictions", restrictions);
        return new ResponseEntity<Map<String,List<RestrictionDTO>>>(empMap, HttpStatus.OK);
	}*/
	
	@RequestMapping(value = "/restrictions", method = RequestMethod.GET)
    public ModelAndView getRestrictions(HttpServletRequest request,HttpSession session , @ModelAttribute("searchForm") final  SearchForm searchForm) {
		//SearchForm searchForm = new SearchForm();
	  List<RestrictionDTO>  restrictions = new ArrayList<RestrictionDTO>();
	  String pgnStats = "";
	  RestrictionDTO restriction = new RestrictionDTO();
		restriction.setRestrictionId("RES1");
		restriction.setRestrictionType("RS");
		restriction.setFundMajor("MIFL");
		restriction.setUserSecurity("SL");
		
		restrictions.add(restriction);
		restriction = new RestrictionDTO();
		restriction.setRestrictionId("RES2");
		restriction.setRestrictionType("IN");
		restriction.setFundMajor("MIFL");
		restriction.setUserSecurity("SS");
		restrictions.add(restriction);
		ModelAndView mv = new ModelAndView();
		
		ModelMap model = new ModelMap();
		model.addAttribute("restrictions", restrictions);
		model.addAttribute("searchForm",searchForm);
		model.addAttribute("startPage",0);
		model.addAttribute("endPage",5);
		model.addAttribute("noOfPages",10);
		model.addAttribute("pgnStats","1 out of 10");
		
		
		mv.addAllObjects(model);
	    mv.setViewName("/restrictions");
		
	    return mv;
    }
	
	

}
