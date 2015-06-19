<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<%--
	include action tag 를 사용한 포함
 --%>
<%
	String t = "part.jsp";
%>
<jsp:include page="<%=t%>" />
<%
	int m = 5;
%>
<html>
<body>
	<h3>웹 어플리케이션</h3>
</body>
</html>