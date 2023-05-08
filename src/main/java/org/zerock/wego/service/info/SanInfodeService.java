package org.zerock.wego.service.info;

import java.util.List;

import org.springframework.stereotype.Component;
import org.springframework.stereotype.Service;
import org.zerock.wego.domain.info.SanInfodeVO;
import org.zerock.wego.exception.ServiceException;
import org.zerock.wego.mapper.SanInfodeMapper;

import lombok.RequiredArgsConstructor;
import lombok.extern.log4j.Log4j2;

@Log4j2
@RequiredArgsConstructor


@Service
public class SanInfodeService {
   
   private final SanInfodeMapper sanInfodeMapper;
   public SanInfodeVO getById(Integer sanInfoId) throws ServiceException{
      
      log.trace("getById() invoked");
      
      try {
    	  return this.sanInfodeMapper.selectById(sanInfoId);
		} catch (Exception e) {
			throw new ServiceException(e);
		} // try-catch
      
      }//select
   
   public Integer getByLat(Integer lat) {
	   log.trace("getByLat() invoked.");
	   
	   try {
		   return this.sanInfodeMapper.selectByLat(lat);
		   
	   }catch(Exception e) {
		   throw new ServiceException(e);
	   }
   }
   
   public String getByLon(Integer lon) {
	   log.trace("getByLon() invoked.");
	   
	   try {
		   return this.sanInfodeMapper.selectByLon(lon);
		   
	   }catch(Exception e) {
		   throw new ServiceException(e);
	   }
   }
   
   
   
   

   
} // end class