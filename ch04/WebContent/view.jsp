<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%
	// cate 값에 따라 다른페이지로 포워드
	String c = request.getParameter("cate");
	if(c.equals("all")) {
		RequestDispatcher d = request.getRequestDispatcher("read.jsp");
		d.forward(request, response);
	}else if(c.equals("succ")) {
		%>
		<jsp:forward page="readPass.jsp"/>
		<%
	}
%>