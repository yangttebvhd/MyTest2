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
    ArrayList list2=(ArrayList)request.getAttribute("list2"); //${list}
    System.out.println("list2=>"+list2);
    if(list2!=null){ //데이터가 존재한다면
    	Iterator iter=list2.iterator();//ArrayList->iterator()이용,Enumeration객체
    	while(iter.hasNext()){//꺼낼 데이터가 존재한다면
    		//Board data=(Board)iter.next();//Object->(Board)형으로 형변환
    		DetailCommand data=(DetailCommand)iter.next();
    		String prd_id=data.getPrd_id();
    		String prd_name=data.getPrd_name();
    		String prd_img=data.getPrd_img();
    		String prd_intrdc=data.getPrd_intrdc();
    		int prd_price=data.getPrd_price();
    		System.out.println("prd_id");
%>
	<tr>
		<td align="center"><%=prd_id %></td>
		<td><a href="toBuy.do?prd_id=<%=prd_name %>"><%=prd_name %></a></td>
		<td><%=prd_img %></td>
		<td><%=prd_intrdc %></td>
		<td><%=prd_price%></td>
	</tr>
<%
	}//end while
}//end if
%>
</table>
<!-- 표 안에 이미지 출력하기 예제 -->
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
<div style="
background-image: url(./image/product1.jpg);
height:150px;
width:100px;
">
</div>
<table border="1">
	<tr>
	  <td align="center" colspan="5">
		*** 상품 상세 페이지 ***&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
	  </td>
	</tr>
	<tr>
<th>상품 아이디</th><th>상품명</th><th>상품사진</th><th>상품소개</th><th>상품가격</th>
</tr>
<%
    ArrayList boardlist=(ArrayList)request.getAttribute("list"); //${list}
    System.out.println("boardlist=>"+boardlist);
    if(boardlist!=null){ //데이터가 존재한다면
    	Iterator iter=boardlist.iterator();//ArrayList->iterator()이용,Enumeration객체
    	while(iter.hasNext()){//꺼낼 데이터가 존재한다면
    		//Board data=(Board)iter.next();//Object->(Board)형으로 형변환
    		DetailCommand data=(DetailCommand)iter.next();
    		String prd_id=data.getPrd_id();
    		String prd_name=data.getPrd_name();
    		String prd_img=data.getPrd_img();
    		String prd_intrdc=data.getPrd_intrdc();
    		int prd_price=data.getPrd_price();
    		System.out.println("prd_id");
%>
	<tr>
		<td align="center"><%=prd_id %></td>
		<td><a href="toBuy.do?prd_id=<%=prd_name %>"><%=prd_name %></a></td>
		<td><%=prd_img %></td>
		<td><%=prd_intrdc %></td>
		<td><%=prd_price%></td>
	</tr>
<%
	}//end while
}//end if
%>
</table>

</body></html>
