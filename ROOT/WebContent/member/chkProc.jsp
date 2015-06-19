<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ page import = "java.sql.*, it.util.*" %>
<%
	//request 분석하고,
	String chk = request.getParameter("chk");
	//DB 쪽 작업이 일어나고,
	boolean rst = false;
	try{
		Connection conn = ConnUtil.open();
		String sql = "select*from member where id=?";
		//=>아이디 혹은 비밀번호가 일치하지 않습니다.
		//select*from member where id=?
		//=>아이디 없음, 비번 불일치, 성공
		PreparedStatement ps = conn.prepareStatement(sql);
		ps.setString(1, chk);
		ResultSet rs=ps.executeQuery(); //select문은 executeQuery
		//insert, update, delete 문은 executeUpdate
		if(rs.next()) {
			rst=true;
		}
		rs.close();
		ps.close();
		conn.close();
	} catch (Exception e) {
		e.printStackTrace();
	}
	
	//그걸 토대로 한 뷰를 꾸미거나 다른 뷰쪽으로 이동을 시킴
	String val;
	if(rst){
		//해당 아이디값이 있다. => 사용불가능
		val="사용불가능";
	}else{
		//해당 아이디값이 없다.=> 사용가능
		val = "사용가능";
	}
%>
<html>
<title>ID CHECK</title>
<body>
	[<%=chk %>] 은/는 
	<%=val %> 
	입니다.
	<input type="button" value="닫기" onclick="self.close()"/>
</body>
</html>