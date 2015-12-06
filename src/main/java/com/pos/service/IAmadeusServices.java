package com.pos.service;

import java.util.List;

import com.pos.dto.QRResponse;
import com.pos.entity.Analytics;
import com.pos.entity.UserDetail;
import com.pos.entity.UserTags;

import io.swagger.client.ApiException;
import io.swagger.client.model.HotelSearchResponse;

public interface IAmadeusServices {

	HotelSearchResponse findHotels(String latitude, String longitude,
			String checkIn, String checkOut) throws ApiException;

	List<Analytics> getAnalyticsResult(String propertyCode);

	String setThreshold(String price, String propertyCode, String username);

	String getQRCode(String userName);


	void performThresholdAnalytics();

	void saveUser(UserDetail userDetail);

	void saveUserTags(List<UserTags> userTags);

	QRResponse scanQRCode(String code);

	void performUserAnalytics();

}
