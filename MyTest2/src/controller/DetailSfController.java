package controller;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.mvc.Controller;

import lee.DetailCommand;
import lee.DetailDAO;

public class DetailSfController implements Controller {
	DetailDAO dao;
	public void setDao(DetailDAO dao) {
		this.dao=dao;
		System.out.println("DetailSfController의 setDao() 호출(dao)=>"+dao);
	}

	@Override
	public ModelAndView handleRequest(HttpServletRequest request, 
			                                              HttpServletResponse response) throws Exception {
		// TODO Auto-generated method stub
		System.out.println("DetailSfController의 handleRequest() 호출");
		
		String Sf_prd_id=request.getParameter("prd_id");
		System.out.println("DetailSfController의 Sf_prd_id=>"+Sf_prd_id);
		DetailCommand Sf=(DetailCommand)dao.Sf(Sf_prd_id);
		ModelAndView mav=new ModelAndView();
		mav.setViewName("detail");
		mav.addObject("Sf",Sf);
		
		System.out.println("DetailSfController의 Sf="+Sf);
		return mav;
	}
}
