<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%
	// 포워드를 시키는 또 다른 방법     by   action Tag   (jsp 전용태그)
	// jsp를 꾸미는데 있어서 자주 쓰이는 로직같은건 tag 로 구현시켜둔 것들이 있는데
	request.setAttribute("str",  "Dsadsadsadsadsa");
%>
<jsp:forward page="dst.jsp"/>