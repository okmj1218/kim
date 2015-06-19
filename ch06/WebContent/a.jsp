<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<%
	String z ="part.jsp";
%>
<%@ include file="part.jsp"%>
<%--		jsp 주석 적용
	 <%@ ~~ 로 시작하는 애들
	 directive  지시어  ( 종류 : page, include , +@ )
	 include 지시어를 사용한 페이지 포함을 정적인 포함.
 --%>
<%
	//	int m = 5;
%>
<html>
<body>
	<h3>WEB APPLICATION ..</h3>
	<!--
		 markup Language 주석 
	-->
	<%=m%>
</body>
</html>