package controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.mvc.Controller;

import lee.BoardCommand;
import lee.BoardDAO;

public class RetrieveActionController implements Controller {
	
	BoardDAO dao;
	
	public void setDao(BoardDAO dao) {
		this.dao=dao;
		System.out.println("RetrieveActionController.java�� setDao()����� (dao)=>"+dao);
	}

	@Override
	public ModelAndView handleRequest(HttpServletRequest request, 
			                                              HttpServletResponse response) throws Exception {
		
		// TODO Auto-generated method stub
		System.out.println("RetrieveActionController�� handleRequest()�����");
		
		//��ȸ�� ����� �����Ƿ� ����
		//�ƴϴ� �̰Ŵ� ��ȸ���� �ƴ϶� �۹�ȣ����
		String num=request.getParameter("num");
		//dao.updateReadcnt(num);//readcnt=readcnt+1
		BoardCommand data=dao.retrieve(num);
		ModelAndView mav=new ModelAndView("retrieve");
		mav.addObject("data",data);
		return mav; 
	}
}





