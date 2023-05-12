package org.zerock.wego.controller;

import lombok.Value;

@Value
public class WeatherModel {
	
	
	 private String baseDate;//
	   private String baseTime;//
	   private String category;//
	   private String fcstDate;//
	   private String fcstTime;//
	   private double fcstValue;//

}
