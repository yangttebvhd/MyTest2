<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@page import="java.util.*,lee.*" %>
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
<%
	DetailCommand Sf=(DetailCommand)request.getAttribute("Sf"); //${list}
    System.out.println("detail.jsp의 Sf=>"+Sf);
    
    		String prd_id=Sf.getPrd_id();
    			System.out.println("detail.jsp의 prd_id=>"+prd_id);
    		String prd_name=Sf.getPrd_name();
    		String prd_img=Sf.getPrd_img();
    		String prd_intrdc=Sf.getPrd_intrdc();
    		int prd_price=Sf.getPrd_price();
%>
	<tr>
		<td align="center"><%=prd_id %></td>
		<td><a href="toBuy.do?prd_id=<%=prd_name %>"><%=prd_name %></a></td>
		<td><%=prd_img %></td>
		<td><%=prd_intrdc %></td>
		<td><%=prd_price%></td>
	</tr>
</table>
<table border="3" cellpadding="10" cellspacing="10">
	<tr>
		<!-- <td stlye="background-image:url('C:\webtest\0.project\image\상품\product1.jpg')">1</td> -->
		<!-- <td background="C:\webtest\0.project\image\상품\product1.jpg">1</td> -->
		<!-- <td><img src="./image/product1.jpg" height = "100%"></td> -->
		<td height="0"><div style="height:50px"><img src="../image/product1.jpg" height = "100%"></div></td>
		<td bgcolor="red">2</td>
	</tr>
	<tr>
		<td>1</td>
		<td>2</td>
	</tr>
</table>

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
    ArrayList list=(ArrayList)request.getAttribute("SfBoardList"); //${list}
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

<div>
<img src="C:\webtest\0.project\image\상품\product1.jpg" height = "500px">
</div>

<img src="C:/webtest/0.project/image/상품/product1.jpg" width="300" height="309" border="0" alt="">
<img src="C:\webtest\0.project\image\상품\product1.jpg" width="300" height="300" border="0" alt="">
<img src="http://localhost:8090/C://webtest//0.project//image//상품//product1.jpg" width="300" height="300" border="0" alt="">

<img src="file:///C:/webtest/0.project/image/%EC%83%81%ED%92%88/product1.jpg" width="300" height="300" border="0" alt="">

</body></html>
