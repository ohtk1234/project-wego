package org.zerock.wego.controller;

import java.time.LocalDate;
import java.time.LocalTime;
import java.time.format.DateTimeFormatter;
import java.util.List;

import org.springframework.http.HttpMethod;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.client.RestTemplate;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.util.UriComponentsBuilder;
import org.zerock.wego.domain.info.SanInfodeVO;
import org.zerock.wego.domain.party.PartyViewVO;
import org.zerock.wego.exception.ControllerException;

import org.zerock.wego.service.info.SanInfodeService;

import com.fasterxml.jackson.core.JsonProcessingException;
import com.fasterxml.jackson.databind.JsonMappingException;
import com.fasterxml.jackson.databind.ObjectMapper;

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
   public String showSanWeather(@PathVariable("sanInfoId")Integer sanInfoId, Model model, Integer lat, Integer lon) throws ControllerException, JsonMappingException, JsonProcessingException {
       log.info("showSanWeather.......... ");
       
       RestTemplate restTemplate = new RestTemplate();//json
       String url = "http://apis.data.go.kr/1360000/VilageFcstInfoService/getVilageFcst";
       String serviceKey = "%2BBhELjTRe3NF5V9X4WWmStpdfkepcguhh6zyRDGKrP0wWs6cSNeoptODzAInX9w50uF59MYdXHUaQ7iJVeNTgQ%3D%3D";
       String baseDate = LocalDate.now().format(DateTimeFormatter.ofPattern("yyyyMMdd"));
       String baseTime = LocalTime.now().format(DateTimeFormatter.ofPattern("HHmm"));
       String nx = String.valueOf((int) ((lon - 0.001) / 0.01) + 1);
       String ny = String.valueOf((int) ((lat - 0.001) / 0.01) + 1);

       UriComponentsBuilder builder = UriComponentsBuilder.fromUriString(url)//받아옴
               .queryParam("ServiceKey", serviceKey)
               .queryParam("pageNo", "1")
               .queryParam("numOfRows", "100")
               .queryParam("dataType", "JSON")
               .queryParam("base_date", baseDate)
               .queryParam("base_time", baseTime)
               .queryParam("nx", nx)
               .queryParam("ny", ny);

       ResponseEntity<String> responseEntity = restTemplate.exchange(builder.toUriString(), HttpMethod.GET, null, String.class);
       String response = responseEntity.getBody();

       ObjectMapper objectMapper = new ObjectMapper();//자바 객체로 만들어줌
       WeatherModel weatherModel = objectMapper.readValue(response, WeatherModel.class);//WeatherModel로 만듬
       
       SanInfodeVO sanInfode = this.sanInfodeService.getById(sanInfoId);
//  	ModelAndView mv1 = new ModelAndView("info/infode1");
       
    	model.addAttribute("sanInfode", sanInfode);
    	model.addAttribute("weather", weatherModel);//model에 담아 보냄
     	
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
   
  
    	 
   
  