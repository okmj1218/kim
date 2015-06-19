<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%
	// 사용자가 이쪽 페이지로 요청을 보내고
	
	// 먼가 작업이 일어난 후 ..
	request.setAttribute("str", "문자열");
	
	String[] ar = new String[]{"jsp", "php", "asp" };
	request.setAttribute("data", ar);
	
	 
	RequestDispatcher rd =request.getRequestDispatcher("dst.jsp");
	// 요청이 발생했을때 그녀석으로 먼가를 뽑아낸 후

	rd.forward(request, response);
	// 그걸 작동시키는데,  이 현재 페이지의 request, response 를 같이 전달을 시키면서
	
	
%>