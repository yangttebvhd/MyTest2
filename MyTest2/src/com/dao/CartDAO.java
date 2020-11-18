package com.dao;

import java.util.List;

import org.springframework.dao.DataAccessException;
import org.springframework.stereotype.Repository;

import com.dto.CartCommand;

public interface CartDAO {
	//카트의 전체 리스트 로드
	public List<CartCommand> list() throws DataAccessException;
	
	//카트의 최대값 구함
	public int getNewSeq();
	
	//카트에 값을 저장
	public void insert(CartCommand command) throws DataAccessException;
	
	//카트 삭제
	public void deleteCart(int cart_num) throws DataAccessException;
}
