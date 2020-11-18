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
		System.out.println("CartAcitonController의 submit() 실행");
		
		//prd_id를 사용하여 prd테이블에서 prd_name, prd_img, prd_price를 가져오기
		System.out.println("command객체에 prd_id가 넘어왔는지 확인=>"+command.getPrd_id()); //Sf
		String prd_id=command.getPrd_id();
		DetailCommand prd=(DetailCommand)detailDAO.prd(prd_id);
		
		//Date로 넘어온 것 찍어보기
		System.out.println("cart_takedate 찍어보기=>"+command.getCart_takedate());
		
		int count=cartDAO.getNewSeq(); //총레코드 수를 구해옴
		
		//List 객체 list에 내용을 담아옴
		List<CartCommand> list=null;
		if(count>0) {
			list=cartDAO.list();
		}else { //0이라면 
			list=Collections.EMPTY_LIST; //아무것도 없다
		}
		
		//새로운 장바구니 항목이 추가됨
		//최대 글번호+1
		int newSeq=cartDAO.getNewSeq()+1;
			System.out.println("cart_num의 최대값+1 로드=>"+newSeq);
		//dto에 +1된 cart_num을 저장
		command.setCart_num(newSeq);
		command.setCart_cancle("0");
		//insert 호출
		cartDAO.insert(command); //DB에 반영
		
		ModelAndView mav=new ModelAndView("cart"); //"이동페이지명"
		mav.addObject("count",count); //총레코드수
		mav.addObject("list",list); //장바구니 리스트
		mav.addObject("prd",prd);
		return mav;
	}

}
