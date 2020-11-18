<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@page import="java.util.*,lee.*"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<html>
<head>
<style type="text/css">
.tg {
	border-collapse: collapse;
	border-spacing: 0;
}

.tg td {
	border-color: black;
	border-style: solid;
	border-width: 1px;
	font-family: Arial, sans-serif;
	font-size: 14px;
	overflow: hidden;
	padding: 10px 5px;
	word-break: normal;
}

.tg th {
	border-color: black;
	border-style: solid;
	border-width: 1px;
	font-family: Arial, sans-serif;
	font-size: 14px;
	font-weight: normal;
	overflow: hidden;
	padding: 10px 5px;
	word-break: normal;
}

.tg .tg-z4i2 {
	border-color: #ffffff;
	text-align: left;
	vertical-align: middle
}

.tg .tg-8n49 {
	background-color: #ffffff;
	border-color: #ffffff;
	text-align: left;
	vertical-align: middle
}
</style>
</head>
<body>
	<table class="tg" border="1">
		<tr>
			<td align="center" colspan="5">*** 장바구니 목록 ***</td>
		</tr>
		<c:if test="${count==0}">
			<tr>
				<td colspan="5" align="center">등록된 게시물이 없습니다.</td>
			</tr>
		</c:if>
		<c:forEach var="article" items="${list}">
			<tr>
				<th class="tg-8n49" rowspan="2">${article.cart_num}</th>
				<th height="0" class="tg-z4i2" rowspan="2"><div style="height:50px"><img src=${article.detailCommand.prd_img} height = "100%"></div></th>
				<th class="tg-z4i2" colspan="3">${article.detailCommand.prd_name}</th>
			</tr>
			<tr>
				<td class="tg-z4i2">최초수령일 : ${fn:substring(article.cart_takedate,0,10)}</td>
				<td class="tg-z4i2">배송 주기 : ${article.cart_cycle}</td>
				<td class="tg-z4i2"><a href="cartCancle.do?cart_num=${article.cart_num}">장바구니에서 삭제</a></td>
			</tr>
						
		</c:forEach>
	</table>
	<a href="pay.do">결제하기</a>
</body>
</html>