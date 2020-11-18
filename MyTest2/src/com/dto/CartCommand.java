package com.dto;

public class CartCommand {
	
	String mem_id, prd_id, cart_cancle, cart_takedate, cart_cycle;
	int cart_num;
	
	public DetailCommand detailCommand;
	
	public DetailCommand getDetailCommand() {
		return detailCommand;
	}
	public void setDetailCommand(DetailCommand detailCommand) {
		this.detailCommand = detailCommand;
	}
	public String getMem_id() {
		return mem_id;
	}
	public void setMem_id(String mem_id) {
		this.mem_id = mem_id;
	}
	public String getPrd_id() {
		return prd_id;
	}
	public void setPrd_id(String prd_id) {
		this.prd_id = prd_id;
	}
	public String getCart_cancle() {
		return cart_cancle;
	}
	public void setCart_cancle(String cart_cancle) {
		this.cart_cancle = cart_cancle;
	}
	public String getCart_takedate() {
		return cart_takedate;
	}
	public void setCart_takedate(String cart_takedate) {
		this.cart_takedate = cart_takedate;
	}
	public String getCart_cycle() {
		return cart_cycle;
	}
	public void setCart_cycle(String cart_cycle) {
		this.cart_cycle = cart_cycle;
	}
	public int getCart_num() {
		return cart_num;
	}
	public void setCart_num(int cart_num) {
		this.cart_num = cart_num;
	}
	
	
}
