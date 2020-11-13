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
	
	@Override
	public ModelAndView handleRequest(HttpServletRequest request, 
			                                              HttpServletResponse response) throws Exception {
		// TODO Auto-generated method stub
		System.out.println("DetailSfController의 handleRequest() 호출");
		
		//상품 id를 main으로부터 받아옴
		String prd_id=request.getParameter("prd_id");
		System.out.println("DetailSfController의 prd_id=>"+prd_id);
		
		//BoardDAO와 DetailDAO의 메서드에 상품id를 넘겨줌
		DetailCommand Sf=(DetailCommand)detailDAO.Sf(prd_id);
		List SfBoardList=boardDAO.SfBoardList(prd_id);
		System.out.println("DetailSfController의 SfBoardList"+SfBoardList);
		
		ModelAndView mav=new ModelAndView();
		mav.setViewName("detail");
		mav.addObject("Sf",Sf); //Sf상품정보
		mav.addObject("SfBoardList",SfBoardList); //Sf상품후기 게시글 리스트
		
		System.out.println("DetailSfController의 Sf="+Sf);
		return mav;
	}
}
