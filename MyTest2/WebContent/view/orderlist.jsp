<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style type="text/css">
.tg  {border:none;border-collapse:collapse;border-color:#ccc;border-spacing:0;}
.tg td{background-color:#fff;border-color:#ccc;border-style:solid;border-width:0px;color:#333;
  font-family:Arial, sans-serif;font-size:14px;overflow:hidden;padding:20px 19px;word-break:normal;}
.tg th{background-color:#f0f0f0;border-color:#ccc;border-style:solid;border-width:0px;color:#333;
  font-family:Arial, sans-serif;font-size:14px;font-weight:normal;overflow:hidden;padding:20px 19px;word-break:normal;}
.tg .tg-oe15{background-color:#ffffff;border-color:#ffffff;text-align:left;vertical-align:top}
.tg .tg-2egc{background-color:#efefef;border-color:#ffffff;text-align:left;vertical-align:top}
</style>
</head>
<body>
	<table class="tg" border="1">
		<tr>
			<td align="center" colspan="5">*** 주문 목록 ***</td>
		</tr>
		<%-- <%
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
%> --%>
  <tr>
    <th class="tg-2egc" rowspan="2">주문번호<br> 100</th>
    <th  class="tg-oe15" rowspan="2" height="0"><div style="height:50px"><img src="../image/product1.jpg" height = "100%"></div></th>
    <th class="tg-oe15">Sf</th>
    <th class="tg-oe15">80000</th>
    <th class="tg-oe15"><a href="writeui.do">후기작성</a></th>
  </tr>
  <tr>
    <td class="tg-oe15">구매일자</td>
    <td class="tg-oe15">2주</td>
    <td class="tg-oe15"><a href="cancle.do">구독취소</a></td>
  </tr>
		<%-- <%
	}//end while
}//end if
%> --%>

	</table>
</body>
</html>