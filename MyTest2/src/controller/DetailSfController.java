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
		System.out.println("DetailSfController�� handleRequest() ȣ��");
		
		//��ǰ id�� main���κ��� �޾ƿ�
		String prd_id=request.getParameter("prd_id");
		System.out.println("DetailSfController�� prd_id=>"+prd_id);
		
		//BoardDAO�� DetailDAO�� �޼��忡 ��ǰid�� �Ѱ���
		DetailCommand Sf=(DetailCommand)detailDAO.Sf(prd_id);
		List SfBoardList=boardDAO.SfBoardList(prd_id);
		System.out.println("DetailSfController�� SfBoardList"+SfBoardList);
		
		ModelAndView mav=new ModelAndView();
		mav.setViewName("detail");
		mav.addObject("Sf",Sf); //Sf��ǰ����
		mav.addObject("SfBoardList",SfBoardList); //Sf��ǰ�ı� �Խñ� ����Ʈ
		
		System.out.println("DetailSfController�� Sf="+Sf);
		return mav;
	}
}
