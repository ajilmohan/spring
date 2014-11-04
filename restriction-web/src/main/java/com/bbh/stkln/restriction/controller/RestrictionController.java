package com.bbh.stkln.restriction.controller;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import com.bbh.stkln.restriction.dto.RestrictionDTO;

@Controller("restrictionController")
public class RestrictionController {
	
	@RequestMapping(value = "/restrictions", method = RequestMethod.GET)
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
	}

}
