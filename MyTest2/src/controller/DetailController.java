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
		System.out.println("DetailController�� handleRequest() ȣ��");
		
		//��ǰ id�� main���κ��� �޾ƿ�
		String prd_id=request.getParameter("prd_id");
		System.out.println("DetailController�� prd_id=>"+prd_id);
		
		//BoardDAO�� DetailDAO�� �޼��忡 ��ǰid�� �Ѱ���
		DetailCommand prd=(DetailCommand)detailDAO.prd(prd_id);
		List PrdBoardList=boardDAO.PrdBoardList(prd_id);
		System.out.println("DetailController�� PrdBoardList"+PrdBoardList);
		
		ModelAndView mav=new ModelAndView();
		mav.setViewName("detail");
		mav.addObject("prd",prd); //Sf��ǰ����
		mav.addObject("PrdBoardList",PrdBoardList); //Sf��ǰ�ı� �Խñ� ����Ʈ
		
		System.out.println("DetailController�� prd="+prd);
		return mav;
	}
}
