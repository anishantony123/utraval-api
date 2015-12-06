package com.pos.dao;

import java.util.List;

import org.springframework.data.repository.CrudRepository;
import org.springframework.stereotype.Repository;

import com.pos.entity.Analytics;

@Repository
public interface AnalyticsDAO  extends CrudRepository<Analytics, Long>{
	List<Analytics> findByPropertyCode(String propertyCode);
}
