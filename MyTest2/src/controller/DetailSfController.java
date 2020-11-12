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
//		System.out.println("DetailSfController�� DetailDAO setDao() ȣ��(detailDAO)=>"+detailDAO);
//	}
//	public void setDao(BoardDAO boardDAO) {
//		this.boardDAO=boardDAO;
//		System.out.println("DetailSfController�� boardDAO setDao() ȣ��(boardDAO)=>"+boardDAO);
//	}

	@Override
	public ModelAndView handleRequest(HttpServletRequest request, 
			                                              HttpServletResponse response) throws Exception {
		// TODO Auto-generated method stub
		System.out.println("DetailSfController�� handleRequest() ȣ��");
		
		String Sf_prd_id=request.getParameter("prd_id");
		System.out.println("DetailSfController�� Sf_prd_id=>"+Sf_prd_id);
		
		DetailCommand Sf=(DetailCommand)detailDAO.Sf(Sf_prd_id);
			System.out.println("��� �������� Ȯ��!1");
		List SfBoardList=boardDAO.SfBoardList(Sf_prd_id);
		System.out.println("��� �������� Ȯ��!2");
		
		ModelAndView mav=new ModelAndView();
		mav.setViewName("detail");
		mav.addObject("Sf",Sf); //Sf��ǰ����
			System.out.println("��� �������� Ȯ��!3");
		mav.addObject("SfBoardList",SfBoardList); //Sf��ǰ�ı� �Խñ� ����Ʈ
			System.out.println("��� �������� Ȯ��!4");
		
		System.out.println("DetailSfController�� Sf="+Sf);
		return mav;
	}
}
