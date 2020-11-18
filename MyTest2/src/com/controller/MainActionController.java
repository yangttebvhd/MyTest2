package com.controller;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.mvc.Controller;

import com.dao.DetailDAO;

public class MainActionController implements Controller {

	DetailDAO dao;//BoardDAO dao=new BoardDAO();
	
	public void setDao(DetailDAO dao) {
		this.dao=dao;
		System.out.println("MainActionController�쓽 setDao() �샇?���?(dao)=>"+dao);
	}

	@Override
	public ModelAndView handleRequest(HttpServletRequest request, 
			                                              HttpServletResponse response) throws Exception {
		
		// TODO Auto-generated method stub
		System.out.println("MainActionController�쓽 handleRequest() �샇?���?");
		List prd_list=dao.prd_list();
		ModelAndView mav=new ModelAndView();
		mav.setViewName("main");
		mav.addObject("prd_list",prd_list);
		return mav;
	}
}
