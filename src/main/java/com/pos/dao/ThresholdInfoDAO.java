package com.pos.dao;

import java.util.List;

import org.springframework.data.repository.CrudRepository;

import com.pos.entity.Analytics;
import com.pos.entity.ThresholdInfo;

public interface ThresholdInfoDAO  extends CrudRepository<ThresholdInfo, Long>{

	List<ThresholdInfo> findAllByStatus(String string);

}
