package com.pos.service.impl;

import io.swagger.client.ApiException;
import io.swagger.client.api.DefaultApi;
import io.swagger.client.model.HotelPropertyResponse;
import io.swagger.client.model.HotelSearchResponse;

import java.math.BigDecimal;
import java.util.Date;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.pos.dao.AnalyticsDAO;
import com.pos.dao.ThresholdInfoDAO;
import com.pos.dao.UserDetailDAO;
import com.pos.dao.UserTagsDAO;
import com.pos.entity.Analytics;
import com.pos.entity.ThresholdInfo;
import com.pos.entity.UserDetail;
import com.pos.entity.UserTags;
import com.pos.service.IAmadeusServices;

@Service
public class AmadeusServices implements IAmadeusServices{
	DefaultApi defaultApi = new DefaultApi();
	
	String apiKey = "TS909iFOiw10hFrzP8kpxyoqJAEFfBvt";
	
	@Autowired
	AnalyticsDAO analyticsDAO;
	@Autowired
	ThresholdInfoDAO thresholdInfoDAO;
	@Autowired
	UserDetailDAO userDetailDAO;
	@Autowired
	UserTagsDAO userTagsDAO;
	
	@Override
	public HotelSearchResponse findHotels( String latitude, String longitude,String checkIn, String checkOut) throws ApiException{
		Integer radius = 60;
		
		String lang = "EN";
		String currency = "USD";
		String chain = null;
		BigDecimal maxRate =   new BigDecimal(500);
		Integer numberOfResult = 20;
		boolean allRooms = true;
		boolean showSoldOut = true;
		String amenity = null;
		
		
			HotelSearchResponse hotelResponse = defaultApi.hotelGeosearchByCircle(apiKey, new BigDecimal(latitude), new BigDecimal(longitude), radius, checkIn, checkOut, lang, currency, chain, maxRate, numberOfResult, allRooms, showSoldOut, amenity);
			return hotelResponse;
		
	}

	@Override
	public List<Analytics> getAnalyticsResult(String propertyCode) {
		return analyticsDAO.findByPropertyCode(propertyCode);
		
	}

	@Override
	public String setThreshold(String price, String propertyCode, String username) {
		ThresholdInfo thresholdInfo = new ThresholdInfo(); 
		thresholdInfo.setPriceSetted(price);
		thresholdInfo.setSettedDate(new Date());
		thresholdInfo.setUsername(username);
		thresholdInfo.setPropertyCode(propertyCode);
		thresholdInfoDAO.save(thresholdInfo);
		UserDetail uDetail = userDetailDAO.findOne(username);
		return uDetail.getQrCode();
		
	}

	@Override
	public String getQRCode(String userName) {
		UserDetail userDetail = userDetailDAO.findOne(userName);
		return userDetail.getQrCode();
	}

	@Override
	public void performUserAnalytics() {
		List<UserDetail> allUsers = (List<UserDetail>) userDetailDAO.findAll();
		String userLevel = "Normal";
		for(UserDetail userDetail : allUsers){
			String userName = userDetail.getUsername();
			List<UserTags> userTags = userTagsDAO.findByUsername(userName);
			if(userTags.size() >=5){
				userLevel = "Premium";
			}
			userDetail.setUserLevel(userLevel);
			userDetailDAO.save(userDetail);
		}
		
	}

	@Override
	public void performThresholdAnalytics() {
		List<ThresholdInfo> thresholdInfoList = thresholdInfoDAO.findAllByStatus("Pending");
		String lang = "EN";
		String currency = "USD";
		String chain = null;
		BigDecimal maxRate =   new BigDecimal(500);
		Integer numberOfResult = 20;
		boolean allRooms = true;
		boolean showSoldOut = true;
		String amenity = null;
		for(ThresholdInfo thresholdInfo : thresholdInfoList){
			try {
				HotelPropertyResponse hotelResponse = defaultApi.hotelPropertyCodeSearch(apiKey, thresholdInfo.getPropertyCode(), thresholdInfo.getCheckIn(), thresholdInfo.getCheckOut(), lang, currency, allRooms, showSoldOut);
				Double thresholdPrice = Double.parseDouble(thresholdInfo.getPriceSetted());
				Double currentPrice = Double.parseDouble(hotelResponse.getTotalPrice().getAmount());
				if(thresholdPrice>currentPrice){
					thresholdInfo.setStatus("Completed");
				}
				thresholdInfoDAO.save(thresholdInfo);
			} catch (ApiException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
		}
		
	}

	@Override
	public void saveUser(UserDetail userDetail) {
		// TODO Auto-generated method stub
		if(userDetailDAO.findOne(userDetail.getUsername() )==null){
			userDetailDAO.save(userDetail);
		}
		
		
	}

	@Override
	public void saveUserTags(List<UserTags> userTags) {
		// TODO Auto-generated method stub
		for(UserTags userTag : userTags){
			userTagsDAO.save(userTag);
		}
		
	}

	@Override
	public UserDetail scanQRCode(String code) {
		List<UserDetail> userDetails = userDetailDAO.findAllByQrCode(code);
		return userDetails.get(0);
	}
	
	
}
