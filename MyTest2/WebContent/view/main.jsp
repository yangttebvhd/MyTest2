<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@page import="java.util.*,lee.*"%>
<html>
<head>
<title>main</title>
<style>
body {	color: #fefefe}
.prd_box {border: 5px solid black;background-color: white;width: 500px;height: 250px}
.btn {border: 1px solid grey;	border-radius: 5px;	background-color: yellow;	width: 150px;
	height: 50px;}
</style>
</head>
<body>
	<a href="writeui.do">로그인하기</a>
	<a href="writeui.do">회원가입하기</a>
	<a href="writeui.do">FAQ</a>
<%
	/* 전체 테이블의 레코드 로드 */
    ArrayList prd_list=(ArrayList)request.getAttribute("prd_list");
    System.out.println("main.jsp의 prd_list=>"+prd_list);
    if(prd_list!=null){
    	Iterator iter=prd_list.iterator();
    	while(iter.hasNext()){
    		DetailCommand data=(DetailCommand)iter.next();
    		String prd_id=data.getPrd_id();
    		String prd_name=data.getPrd_name();
    		System.out.println("main.jsp의 prd_id=>"+prd_id);

%>
	<div class="prd_box">
		<div class="btn">
			<a href="to<%=prd_id%>.do?prd_id=<%=prd_id%>"><%=prd_name %>상품으로 이동</a>
		</div>
	</div>
<%
	} //end while
} //end if
%>

</body>
</html>
