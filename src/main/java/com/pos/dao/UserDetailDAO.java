package com.pos.dao;

import java.util.List;

import org.springframework.data.repository.CrudRepository;

import com.pos.entity.ThresholdInfo;
import com.pos.entity.UserDetail;

public interface UserDetailDAO   extends CrudRepository<UserDetail, String>{

	List<UserDetail> findAllByQrCode(String code);

}
