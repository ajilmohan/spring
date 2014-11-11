package com.bbh.stkln.restriction.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import com.bbh.stkln.restriction.dto.SearchForm;

@Controller("homeController")
public class HomeController {
	
	@RequestMapping(value="/home",method=RequestMethod.GET)
    public ModelAndView sayHello(Model model){
        ModelAndView mv = new ModelAndView();
        model.addAttribute("searchForm", new SearchForm()); 
        mv.setViewName("/home");
        return mv;
    }

}
