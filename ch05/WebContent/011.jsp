<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%
	// 작업이 막.... 일어난 후...
	
	// ..
	
	// request 영역 안에  데이터를 저장할수 있게 해둔 공간이 있는데 .. 
		// Map 형태이고,  키값은 String,   밸류값은 Object 로 제너릭(저장형태)설정되어있다.
		
	request.setAttribute("str", "문자열");
	
	String[] ar = new String[]{"jsp", "php", "asp" };
	request.setAttribute("data", ar);
	
	
	response.sendRedirect("dst.jsp");
%>