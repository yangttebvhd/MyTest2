<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@page import="java.util.*,com.dto.*" %>
<html><body>
<table border="1">
	<tr>
	  <td align="center" colspan="5">
		*** 게시판 목록 ***&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
		<a href="writeui.do">글쓰기</a>
	  </td>
	</tr>
	<tr>
<th>번호</th><th>제목</th><th>작성자</th><th>작성일</th>
</tr>
<%
    ArrayList list=(ArrayList)request.getAttribute("list"); //${list}
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
<!-- 검색 기능 시작 -->
	<tr>
	<td colspan="5" align="center">
		<form action="search.do">
		   <select name="searchName" size="1">
	               <option value="author">작성자</option>
    	          <option value="title">제목</option>
           </select>
		   <input type="text" name="searchValue">
		   <input type="submit" value="검색">
		</form>
	</td>
	</tr>
</table>
</body></html>
