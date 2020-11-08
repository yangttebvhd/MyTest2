package controller;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.mvc.Controller;

import lee.DetailDAO;


public class MainActionController implements Controller {

	DetailDAO dao;//BoardDAO dao=new BoardDAO();
	
	public void setDao(DetailDAO dao) {
		this.dao=dao;
		System.out.println("DetailActionController의 setDao() 호출(dao)=>"+dao);
	}

	@Override
	public ModelAndView handleRequest(HttpServletRequest request, 
			                                              HttpServletResponse response) throws Exception {
		
		// TODO Auto-generated method stub
		System.out.println("DetailActionController의 handleRequest() 호출");
		List Sf=dao.Sf();
		System.out.println("detail 1");
		
		ModelAndView mav=new ModelAndView();
		System.out.println("detail 2");
		
		mav.setViewName("detail");
		System.out.println("detail 3");
		
		mav.addObject("Sf",Sf);
		System.out.println("DetailActionController의 Sf"+Sf);
		
		return mav;
	}
}
