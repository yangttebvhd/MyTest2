package com.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.mvc.Controller;

import com.dao.CartDAO;

public class CancleActionController implements Controller {
	CartDAO cartDAO;
	public void setCartDAO(CartDAO cartDAO) {
		this.cartDAO=cartDAO;
		System.out.println("CancleActionControllerÀÇ setDao() =>"+cartDAO);
	}
	
	public ModelAndView handleRequest(HttpServletRequest request, HttpServletResponse response) throws Exception {
		System.out.println("CancleActionControllerÀÇ handleRequest½ÇÇà");
		int cart_num=Integer.parseInt(request.getParameter("cart_num"));
		System.out.println("CancleActionControllerÀÇ cart_num=>"+cart_num);
		
		cartDAO.deleteCart(cart_num);
		ModelAndView mav = new ModelAndView();
		mav.setViewName("redirect:/cart.do");
		return(mav);
	}
}
