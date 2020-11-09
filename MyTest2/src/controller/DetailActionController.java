package controller;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.mvc.Controller;

import lee.BoardDAO;
import lee.DetailDAO;

public class DetailActionController implements Controller {

	DetailDAO dao; //상품상세페이지
	BoardDAO dao2; //후기게시판
	
	public void setDao(DetailDAO dao) {
		this.dao=dao;
		System.out.println("DetailActionController의 DetailDAO의 setDao() 호출(dao)=>"+dao);
	}
	public void setDao(BoardDAO dao2) {
		this.dao2=dao2;
		System.out.println("DetailActionController의 BoardDAO의 setDao() 호출(dao2)=>"+dao2);
	}

	@Override
	public ModelAndView handleRequest(HttpServletRequest request, 
			                                              HttpServletResponse response) throws Exception {
		
		// TODO Auto-generated method stub
		System.out.println("DetailActionController의 handleRequest() 호출");
		List list2=dao.list2();
		System.out.println("detail 1");
		
		ModelAndView mav=new ModelAndView();
		System.out.println("detail 2");
		
		mav.setViewName("detail");
		System.out.println("detail 3");
		
		mav.addObject("list2",list2);
		System.out.println("DetailActionController의 list2"+list2);
		
		return mav;
	}
}
