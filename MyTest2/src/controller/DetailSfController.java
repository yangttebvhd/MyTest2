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
		System.out.println("DetailSfController�� setDao() ȣ��(dao)=>"+dao);
	}

	@Override
	public ModelAndView handleRequest(HttpServletRequest request, 
			                                              HttpServletResponse response) throws Exception {
		// TODO Auto-generated method stub
		System.out.println("DetailSfController�� handleRequest() ȣ��");
		
		String Sf_prd_id=request.getParameter("prd_id");
		System.out.println("DetailSfController�� Sf_prd_id=>"+Sf_prd_id);
		DetailCommand Sf=(DetailCommand)dao.Sf(Sf_prd_id);
		ModelAndView mav=new ModelAndView();
		mav.setViewName("detail");
		mav.addObject("Sf",Sf);
		
		System.out.println("DetailSfController�� Sf="+Sf);
		return mav;
	}
}
