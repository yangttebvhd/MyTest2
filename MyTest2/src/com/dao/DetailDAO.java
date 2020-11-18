package com.dao;

import java.util.List;

import org.springframework.dao.DataAccessException;

import com.dto.DetailCommand;

public interface DetailDAO {
	//0. 전체 리스트보기
	public List prd_list() throws DataAccessException;
	
	//1.상품 상세 페이지 보기
	public DetailCommand prd(String prd_id) throws DataAccessException;
}
