<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@page import="org.apache.catalina.connector.OutputBuffer"%>
<%@ page import="lee.*" %>
<%
     //Board data=(Board)request.getAttribute("data");//${data(키명)}
     BoardCommand data=(BoardCommand)request.getAttribute("data");
     //웹상에서 출력할때에는 Getter Method호출
     
    
     
     int num=data.getAft_num(); //글번호
     int order_no=data.getOrder_no();//글주문번호
     String author=data.getMem_id(); //글작성자
     String title=data.getAft_title(); //글제목
     String aft_date=data.getAft_date();//글작성일
     String content=data.getAft_content(); //글내용
%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<jsp:include page="Header.jsp"/>
</head>
<body>


<div class="row">
	<div class="col-md-2"></div>
    <div class="col-md-8">
    	<h2 class="text-center">상세게시글 보기</h2>
    	<table class="table table-striped">
    		<tr>
                <td>글번호</td>
                <td><%= num %></td>
            </tr>
            <tr>
                <td>주문번호</td>
                <td><%= order_no %></td>
            </tr>
            <tr>
                <td>작성자</td>
                <td><%= author %></td>
            </tr>
            <tr>
                <td>제목</td>
                <td><%= title %></td>
            </tr>
            <tr>
                <td>글작성일</td>
                <td><%= aft_date %></td>
            </tr>
            <tr>
                <td>글내용</td>
                <td><%= num %></td>
            </tr>
            <tr>
                 
                <td colspan="2"  class="text-center">
                    <input type="submit" value="글쓰기" class="btn btn-success">
                    <!-- <input type="reset" value="다시작성" class="btn btn-warning"> -->
                    <button type="button"  class="btn btn-primary"><a href="list.do">목록보기</a></button>
                </td>
            </tr>
             
          </table>
</div>
<jsp:include page="Bottom.jsp"/>

<%--   <form action="update.do">
  <!-- readonly="readonly" (읽기전용) 게시물번호를 전달되는데 임의로 수정하지 못하도록하기위해서
    읽기전용을 하지 않을려면 hidden객체로 게시물번호를 전달해야 된다.  -->
  번 호 : <input type="text" name="num" value="<%= num %>" readonly="readonly" /><br>
  제 목 : <input type="text" name="title" value="<%= title %>"><br>
  작성자:<input type="text" name="author" value="<%= author %>"><br>
  내 용 : <textarea name="content" rows="5" cols="30"><%= content %></textarea><p/>
  <input type="submit" value="수정완료" />&nbsp;&nbsp;&nbsp;&nbsp;
  <a href="delete.do?num=<%= num %>">삭제</a>
  &nbsp;&nbsp;<a href="list.do">목록보기</a>
</form> --%>
</body>
</html>


