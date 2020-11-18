<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@page import="java.util.*,com.dto.*" %>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<html><body>
<table border="1">
	<tr>
	  <td align="center" colspan="5">
		*** 상품 상세 페이지 ***&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
		<a href="writeui.do">카트에 담기</a>
		<a href="writeui.do">구매하기</a>
	  </td>
	</tr>
	<tr>
<th>상품 아이디</th><th>상품명</th><th>상품사진</th><th>상품소개</th><th>상품가격</th>
</tr>
<%-- <c:forEach var="article" items="${prd}">
	<tr>
		<td align="center">${prd_id}</td>
		<td><a href="toBuy.do?prd_id=${prd_name}">${prd_name}</a></td>
		<td>${prd_img}</td>
		<td>${prd_intrdc}</td>
		<td>${prd_price}</td>
	</tr>
</c:forEach> --%>
<%
	DetailCommand prd=(DetailCommand)request.getAttribute("prd"); //${list}
    System.out.println("detail.jsp의 prd=>"+prd);
    
    		String prd_id=prd.getPrd_id();
    			System.out.println("detail.jsp의 prd_id=>"+prd_id);
    		String prd_name=prd.getPrd_name();
    		String prd_img=prd.getPrd_img();
    		String prd_intrdc=prd.getPrd_intrdc();
    		int prd_price=prd.getPrd_price();
%>
	<tr>
		<td align="center"><%=prd_id %></td>
		<td><a href="toBuy.do?prd_id=<%=prd_name %>"><%=prd_name %></a></td>
		<td><%=prd_img %></td>
		<td><%=prd_intrdc %></td>
		<td><%=prd_price%></td>
	</tr>
</table>

<!-- /////////////////////////테이블에 이미지 넣기 테스트//////////////////////// -->
<table border="3" cellpadding="10" cellspacing="10">
	<tr>
		<td height="0"><div style="height:50px"><img src=<%=prd_img %> height = "100%"></div></td>
		<td bgcolor="red">2</td>
	</tr>
	<tr>
		<td>1</td>
		<td>2</td>
	</tr>
</table>

	<div style="background-color:#f2f2f2; width: 940px; height: 100px;">
	
<!-- //////////////////////상품 카트에 추가하기///////////////////////////////////// -->
<form name="frm" method="post" action="cart.do">

	<input type="hidden" name="mem_id" value="test1">
	<input type="hidden" name="prd_id" value=<%=prd_id %>>

			최초수령일 <input required type="date" name="cart_takedate">
			<p />
			구독주기 <select required name="cart_cycle">
						<option value="2">2주</option>
						<option value="4">4주</option>
						<option value="6">6주</option>
					</select>
		<input type="submit" value="카트에 담기" formaction="cart.do">
		<input type="submit" value="구매하기" formaction="pay.do">
		</form>
	</div>

	<!--//////////////////후기게시판추가//////////////-->
<table border="1">
	<tr>
	  <td align="center" colspan="5">
		*** 게시판 목록 ***
	  </td>
	</tr>
	<tr>
<th>번호</th><th>제목</th><th>작성자</th><th>작성일</th>
</tr>
<%
    List list=(List)request.getAttribute("PrdBoardList"); 
	System.out.println("detail.jsp의 list"+list);
    if(list!=null){ //데이터가 존재한다면
    	Iterator iter=list.iterator();//ArrayList->iterator()이용,Enumeration객체
    	while(iter.hasNext()){//꺼낼 데이터가 존재한다면
    		//Board data=(Board)iter.next();//Object->(Board)형으로 형변환
    		BoardCommand data=(BoardCommand)iter.next();
    		int num=data.getAft_num();
    		String title=data.getAft_title();
    		String author=data.getMem_id(); //작성자
    		String content=data.getAft_content();//글 내용
    		String writeday=data.getAft_date();
%>
	<tr>
		<td align="center"><%= num %></td>
		<td><a href="retrieve.do?num=<%= num %>"><%= title %></a></td>
		<td><%= author %></td>
		<td><%= writeday.substring(0,10)%></td>
	</tr>
<%
	}//end while
}//end if
%>
</table>
<!--//////////////////////////////////////////-->

<div style="
background-image: url(./image/product1.jpg);
height:150px;
width:100px;
">
</div>

</body></html>
