package controller;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.mvc.Controller;

import lee.BoardDAO;

public class ListActionController implements Controller {
	
	BoardDAO dao;//BoardDAO dao=new BoardDAO();
	
	public void setDao(BoardDAO dao) {//<property name="dao"><ref bean="id紐�" />~
		this.dao=dao;
		System.out.println("ListActionController�� setDao()ȣ�� (dao)=>"+dao);
	}

	@Override
	public ModelAndView handleRequest(HttpServletRequest request, 
			                                              HttpServletResponse response) throws Exception {
		
		// TODO Auto-generated method stub
		System.out.println("ListActionController handleRequest() ȣ��");
		List list=dao.list();
		ModelAndView mav=new ModelAndView();
		mav.setViewName("list");
		mav.addObject("list",list);
		return mav;
	}
}





