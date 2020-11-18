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

public class DetailController implements Controller {
	@Autowired
	DetailDAO detailDAO;
	@Autowired
	BoardDAO boardDAO;
	
	@Override
	public ModelAndView handleRequest(HttpServletRequest request, 
			                                              HttpServletResponse response) throws Exception {
		// TODO Auto-generated method stub
		System.out.println("DetailController의 handleRequest() 호출");
		
		//상품 id를 main으로부터 받아옴
		String prd_id=request.getParameter("prd_id");
		System.out.println("DetailController의 prd_id=>"+prd_id);
		
		//BoardDAO와 DetailDAO의 메서드에 상품id를 넘겨줌
		DetailCommand prd=(DetailCommand)detailDAO.prd(prd_id);
		List PrdBoardList=boardDAO.PrdBoardList(prd_id);
		System.out.println("DetailController의 PrdBoardList"+PrdBoardList);
		
		ModelAndView mav=new ModelAndView();
		mav.setViewName("detail");
		mav.addObject("prd",prd); //Sf상품정보
		mav.addObject("PrdBoardList",PrdBoardList); //Sf상품후기 게시글 리스트
		
		System.out.println("DetailController의 prd="+prd);
		return mav;
	}
}
