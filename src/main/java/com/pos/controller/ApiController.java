package com.pos.controller;

import io.swagger.client.ApiException;
import io.swagger.client.model.HotelSearchResponse;

import java.io.IOException;
import java.util.List;

import org.codehaus.jackson.JsonGenerationException;
import org.codehaus.jackson.map.JsonMappingException;
import org.codehaus.jackson.map.ObjectMapper;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RestController;

import com.pos.dto.QRResponse;
import com.pos.entity.Analytics;
import com.pos.entity.UserDetail;
import com.pos.entity.UserTags;
import com.pos.service.IAmadeusServices;
@RestController
@RequestMapping("/api")
public class ApiController {
	@Autowired
	IAmadeusServices amadeusServices;
	
	@RequestMapping(value = "/findHotel/{latitude}/{longitude}/{checkIn}/{checkOut}", method = RequestMethod.GET)
	public String findHotel(@PathVariable("latitude") String latitude,@PathVariable("longitude") String longitude,@PathVariable("checkIn") String checkIn,@PathVariable("checkOut") String checkOut){
		//Tested
		String apiKey = "TS909iFOiw10hFrzP8kpxyoqJAEFfBvt";
		/*String latitude = "36.0857";
		String longitude = "-115.1541";
		String checkIn = "2016-01-14";
		String checkOut = "2016-01-16";*/
		
			try {
			  HotelSearchResponse response =	amadeusServices.findHotels(latitude, longitude, checkIn, checkOut);
			  try {
				return new ObjectMapper().writeValueAsString(response);
			} catch (IOException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
				return "JSON Parsing error";
			}
			} catch (ApiException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
				return e.getMessage();
			}
		
		//return "Hello Man";
	}
	
	@RequestMapping(value = "/searchAnalytics/{propertyCode}", method = RequestMethod.GET)
	public String searchAnalytics(@PathVariable("propertyCode")String propertyCode){
		
		List<Analytics> analyticsList = amadeusServices.getAnalyticsResult(propertyCode);
		String result = null;
		try {
			result =  new ObjectMapper().writeValueAsString(analyticsList);
		} catch (JsonGenerationException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} catch (JsonMappingException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} catch (IOException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return result;
	}
	
	@RequestMapping(value = "/saveUser", method = RequestMethod.POST)
	public String saveUser(@RequestBody UserDetail userDetail){
		userDetail.setUserLevel("Normal");
		userDetail.setQrCode(userDetail.getUsername());
		amadeusServices.saveUser(userDetail);
		return "{\"result\": \"success\"}";
	}
	
	@RequestMapping(value = "/saveUserTags", method = RequestMethod.POST)
	public String saveUser(@RequestBody List<UserTags> userTags){
		amadeusServices.saveUserTags(userTags);
		return "{\"result\": \"success\"}";
	}
	
	@RequestMapping(value = "/setThreshold/{propertyCode}/{userName}", method = RequestMethod.GET)
	public String setThreshold( @PathVariable("propertyCode")String propertyCode, @PathVariable("userName")String userName){
		amadeusServices.setThreshold(null,propertyCode, userName);
		return amadeusServices.setThreshold(null,propertyCode, userName);
	}
	
	@RequestMapping(value = "/getQRCode/{userName}", method = RequestMethod.GET)
	public String setThreshold(@PathVariable("userName")String userName){
		return amadeusServices.getQRCode(userName);
	}
	
	@RequestMapping(value = "/performUserAnalytics", method = RequestMethod.GET)
	public String performUserAnalytics(){
		amadeusServices.performUserAnalytics();
		return "Success";
	}
	
	@RequestMapping(value = "/performThresholdAnalytics", method = RequestMethod.GET)
	public String performThresholdAnalytics(){
		amadeusServices.performThresholdAnalytics();
		return "Success";
	}
	
	@RequestMapping(value = "/scanQRCode/{code}", method = RequestMethod.GET)
	public String scanQRCode(@PathVariable("code") String code) throws JsonGenerationException, JsonMappingException, IOException{
		QRResponse userDetail = amadeusServices.scanQRCode(code);
		return new ObjectMapper().writeValueAsString(userDetail);
	}
}
