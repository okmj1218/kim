<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%
	// menu.jsp?mode=write
	// menu.jsp?mode=view
	// menu.jsp?mode=modify
	
	String str =request.getParameter("mode");
	RequestDispatcher rd =null;	
	if(str.equals("write")) {
		rd = request.getRequestDispatcher("writeForm.jsp");
	}else if(str.equals("view")) {
		rd = request.getRequestDispatcher("view.jsp");
	} else if(str.equals("modify")) {
		rd = request.getRequestDispatcher("modForm.jsp");
	}
	
	rd.forward(request, response);

%>