<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%
	request.setAttribute("top", "/log/login.jsp");
	request.setAttribute("center", "/main.jsp");
%>
<jsp:forward page="/template.jsp"/>