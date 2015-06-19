<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<%@ page import="java.sql.*, it.util.*" %>
<%
	// request 분석하고,
	String logId = request.getParameter("logId");
	String logPass = request.getParameter("logPass");
	//  DB 쪽 작업이 일어나고,
	boolean rst = false;
	try {
		Connection conn = ConnUtil.open();
		String sql ="select * from member where id=? and pass=?";
				// => 아이디 혹은 비밀번호가 일치하지 않습니다.
				// select * from member where id=?
				// => 아이디 없음, 비번 불일치 , 성공
		PreparedStatement ps = conn.prepareStatement(sql);
		ps.setString(1, logId);
		ps.setString(2, logPass);
		ResultSet rs =ps.executeQuery();		// select 문은 executeQuery 
											// insert, update, delete 문은  executeUpdate
		if( rs.next() ) {
			rst = true;
		}
		rs.close();
		ps.close();
		conn.close();
	}catch(Exception e) {
		e.printStackTrace();
	}
	// 그걸 토대로 한 뷰를 꾸미거나 다른 뷰쪽으로 이동을 시킴
	if(rst) {
		response.sendRedirect("/index.jsp");
	}else {
		 %>
		 <script>
		 	alert("아이디 또는 비밀번호가 일치하지 않습니다.");
		 	location.href="/index.jsp";
		 </script>
		 <%
	}
%>




