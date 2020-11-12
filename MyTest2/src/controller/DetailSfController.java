package controller;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.mvc.Controller;

import lee.BoardDAO;
import lee.DetailCommand;
import lee.DetailDAO;

public class DetailSfController implements Controller {
	@Autowired
	DetailDAO detailDAO;
	@Autowired
	BoardDAO boardDAO;
	
//	public void setDao(DetailDAO detailDAO) {
//		this.detailDAO=detailDAO;
//		System.out.println("DetailSfController의 DetailDAO setDao() 호출(detailDAO)=>"+detailDAO);
//	}
//	public void setDao(BoardDAO boardDAO) {
//		this.boardDAO=boardDAO;
//		System.out.println("DetailSfController의 boardDAO setDao() 호출(boardDAO)=>"+boardDAO);
//	}

	@Override
	public ModelAndView handleRequest(HttpServletRequest request, 
			                                              HttpServletResponse response) throws Exception {
		// TODO Auto-generated method stub
		System.out.println("DetailSfController의 handleRequest() 호출");
		
		String Sf_prd_id=request.getParameter("prd_id");
		System.out.println("DetailSfController의 Sf_prd_id=>"+Sf_prd_id);
		
		DetailCommand Sf=(DetailCommand)detailDAO.Sf(Sf_prd_id);
			System.out.println("어디서 뻑나는지 확인!1");
		List SfBoardList=boardDAO.SfBoardList(Sf_prd_id);
		System.out.println("어디서 뻑나는지 확인!2");
		
		ModelAndView mav=new ModelAndView();
		mav.setViewName("detail");
		mav.addObject("Sf",Sf); //Sf상품정보
			System.out.println("어디서 뻑나는지 확인!3");
		mav.addObject("SfBoardList",SfBoardList); //Sf상품후기 게시글 리스트
			System.out.println("어디서 뻑나는지 확인!4");
		
		System.out.println("DetailSfController의 Sf="+Sf);
		return mav;
	}
}
