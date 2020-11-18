package com.dao;

import java.util.List;

import org.springframework.dao.DataAccessException;
import org.springframework.stereotype.Repository;

import com.dto.CartCommand;

public interface CartDAO {
	//īƮ�� ��ü ����Ʈ �ε�
	public List<CartCommand> list() throws DataAccessException;
	
	//īƮ�� �ִ밪 ����
	public int getNewSeq();
	
	//īƮ�� ���� ����
	public void insert(CartCommand command) throws DataAccessException;
	
	//īƮ ����
	public void deleteCart(int cart_num) throws DataAccessException;
}
