package com.dao;

import java.util.List;

import org.mybatis.spring.support.SqlSessionDaoSupport;
import org.springframework.dao.DataAccessException;
import org.springframework.stereotype.Repository;

import com.dto.CartCommand;


public class SqlMapCartDao extends SqlSessionDaoSupport implements CartDAO {

	@Override
	public List<CartCommand> list() throws DataAccessException {
		// TODO Auto-generated method stub
		return getSqlSession().selectList("cartlist");
	}
	
	@Override
	public int getNewSeq() {
		// TODO Auto-generated method stub
		int newseq=(Integer)getSqlSession().selectOne("getNewSeq");
		return newseq;
	}

	@Override
	public void insert(CartCommand command) throws DataAccessException {
		// TODO Auto-generated method stub
		command.getCart_takedate().toString();
		getSqlSession().insert("insertCart",command);
	}
	
	@Override
	public void deleteCart(int cart_num) throws DataAccessException {
		// TODO Auto-generated method stub
		getSqlSession().delete("deleteCart",cart_num);
	}

}
