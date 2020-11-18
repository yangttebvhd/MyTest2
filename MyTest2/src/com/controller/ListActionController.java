package com.controller;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.mvc.Controller;

import com.dao.BoardDAO;

public class ListActionController implements Controller {
	
	BoardDAO dao;//BoardDAO dao=new BoardDAO();
	
	public void setDao(BoardDAO dao) {//<property name="dao"><ref bean="idï§ï¿½" />~
		this.dao=dao;
		System.out.println("ListActionControllerÀÇ setDao()È£Ãâ (dao)=>"+dao);
	}

	@Override
	public ModelAndView handleRequest(HttpServletRequest request, 
			                                              HttpServletResponse response) throws Exception {
		
		// TODO Auto-generated method stub
		System.out.println("ListActionController handleRequest() È£Ãâ");
		List list=dao.list();
		ModelAndView mav=new ModelAndView();
		mav.setViewName("list");
		mav.addObject("list",list);
		return mav;
	}
}