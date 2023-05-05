package org.zerock.wego.controller;

import java.util.List;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;
import org.zerock.wego.domain.info.SanInfodeVO;
import org.zerock.wego.domain.party.PartyViewVO;
import org.zerock.wego.exception.ControllerException;

import org.zerock.wego.service.info.SanInfodeService;

import lombok.RequiredArgsConstructor;
import lombok.extern.log4j.Log4j2;

@Log4j2
@RequiredArgsConstructor

@RequestMapping("/info")
@Controller
public class SanInfodeController {
   
   private final SanInfodeService sanInfodeService;

   
   @GetMapping("/{sanInfoId}")
   public String showDetail(@PathVariable("sanInfoId")Integer sanInfoId, Model model) throws ControllerException {
      log.info("showDetail.......... ");
      
    try {
      	SanInfodeVO sanInfode = this.sanInfodeService.getById(sanInfoId);
//    	ModelAndView mv1 = new ModelAndView("info/infode1");
      	model.addAttribute("sanInfode", sanInfode);
      	
      	return "/info/infode1";
    }catch (Exception e) {
		throw new ControllerException(e);
	} // try-catch
   }
    @GetMapping("/{sanInfoId}/information")
    public String showInfor(@PathVariable("sanInfoId")Integer sanInfoId, Model model) throws ControllerException {
        log.info("showInfor.......... ");
        
        SanInfodeVO sanInfode = this.sanInfodeService.getById(sanInfoId);
//   	ModelAndView mv1 = new ModelAndView("info/infode1");
     	model.addAttribute("sanInfode", sanInfode);
      	
      	return "/info/SanInfo1";
    
      	  
      
 
   }
   
   
   
	  
	   
	   
	   

   
   @GetMapping("/{sanInfoId}/Sandeail")
   public String showSandeail(@PathVariable("sanInfoId")Integer sanInfoId, Model model) throws ControllerException {
       log.info("showSandeail.......... ");
       
       SanInfodeVO sanInfode = this.sanInfodeService.getById(sanInfoId);
//   	ModelAndView mv1 = new ModelAndView("info/infode1");
     	model.addAttribute("sanInfode", sanInfode);
     	
     	return "/info/SanInfo2";
   
     	  
     

  }
   
   
   @GetMapping("/{sanInfoId}/SanWeather")
   public String showSanWeather(@PathVariable("sanInfoId")Integer sanInfoId, Model model) throws ControllerException {
       log.info("showSanWeather.......... ");
       
       SanInfodeVO sanInfode = this.sanInfodeService.getById(sanInfoId);
//  	ModelAndView mv1 = new ModelAndView("info/infode1");
    	model.addAttribute("sanInfode", sanInfode);
     	
     	return "/info/SanInfo3";
   
     	  
     

  }
   
   
   @GetMapping("/{sanInfoId}/SanKakaoMap")
   public String showSanKakaoMap(@PathVariable("sanInfoId")Integer sanInfoId, Model model) throws ControllerException {
       log.info("showSanKakaoMap.......... ");
       
       SanInfodeVO sanInfode = this.sanInfodeService.getById(sanInfoId);
//  	ModelAndView mv1 = new ModelAndView("info/infode1");
    	model.addAttribute("sanInfode", sanInfode);
     	
     	return "/info/SanInfo4";
   
     	  
     

  }
   
}
   
  
    	 
   
  