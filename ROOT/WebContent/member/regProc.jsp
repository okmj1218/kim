<%@ page import="it.util.*, java.sql.*"%>
<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%
	// 클라이언트쪽으로 전달받는 파람값 중에 한글이 있다면
	// request 객체에 설정을 해주셔야한다.
	request.setCharacterEncoding("euc-kr");
	String id = request.getParameter("id");
	String pass= request.getParameter("pass");
	String name= request.getParameter("name");
	String gender= request.getParameter("gender");
	int birth = Integer.parseInt(request.getParameter("birth"));
	String address = request.getParameter("address");
	String info = request.getParameter("info");
	
	//===================
	int rst =0;
	try {
		Connection conn = ConnUtil.open();
		String sql = "insert into member values(?, ?, ? , ? , ?, ? , ?)";
		PreparedStatement ps = conn.prepareStatement(sql);
		ps.setString(1, id);
		ps.setString(2, pass);
		ps.setString(3, name);
		ps.setString(4, gender);
		ps.setInt(5, birth);
		ps.setString(6, address);
		ps.setString(7, info);
		rst = ps.executeUpdate();
		ps.close();
		conn.close();
	}catch(Exception e) {
		e.printStackTrace(); 
	}
	//============================================
	if(rst >0) {%>
<script>
	alert("회원 가입 성공");
	location.href="/index.jsp";
</script>	
<%}else { %>	
<script>
	alert("가입 처리중 오류 발생");
	location.href="/member/reg.jsp";
</script>			
<%	}
%>
