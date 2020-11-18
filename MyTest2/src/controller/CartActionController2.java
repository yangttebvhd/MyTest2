package controller;

import java.util.Collections;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import lee.CartCommand;
import lee.CartDAO;
import lee.DetailCommand;
import lee.DetailDAO;

@Controller
public class CartActionController2 {
	@Autowired
	CartDAO cartDAO;
	@Autowired
	DetailDAO detailDAO;
	
	@RequestMapping(value="/cart.do")
	public ModelAndView submit(@ModelAttribute("command") CartCommand command) {
		System.out.println("CartAcitonController�� submit() ����");
		
		//prd_id�� ����Ͽ� prd���̺��� prd_name, prd_img, prd_price�� ��������
		System.out.println("command��ü�� prd_id�� �Ѿ�Դ��� Ȯ��=>"+command.getPrd_id()); //Sf
		String prd_id=command.getPrd_id();
		DetailCommand prd=(DetailCommand)detailDAO.prd(prd_id);
		
		//Date�� �Ѿ�� �� ����
		System.out.println("cart_takedate ����=>"+command.getCart_takedate());
		
		int count=cartDAO.getNewSeq(); //�ѷ��ڵ� ���� ���ؿ�
		
		//List ��ü list�� ������ ��ƿ�
		List<CartCommand> list=null;
		if(count>0) {
			list=cartDAO.list();
		}else { //0�̶�� 
			list=Collections.EMPTY_LIST; //�ƹ��͵� ����
		}
		
		//���ο� ��ٱ��� �׸��� �߰���
		//�ִ� �۹�ȣ+1
		int newSeq=cartDAO.getNewSeq()+1;
			System.out.println("cart_num�� �ִ밪+1 �ε�=>"+newSeq);
		//dto�� +1�� cart_num�� ����
		command.setCart_num(newSeq);
		command.setCart_cancle("0");
		//insert ȣ��
		cartDAO.insert(command); //DB�� �ݿ�
		
		ModelAndView mav=new ModelAndView("cart"); //"�̵���������"
		mav.addObject("count",count); //�ѷ��ڵ��
		mav.addObject("list",list); //��ٱ��� ����Ʈ
		mav.addObject("prd",prd);
		return mav;
	}

}
