package com.pos.dao;

import java.util.List;

import org.springframework.data.repository.CrudRepository;

import com.pos.entity.UserDetail;
import com.pos.entity.UserTags;

public interface UserTagsDAO   extends CrudRepository<UserTags, Long>{

	List<UserTags> findByUsername(String userName);

}
