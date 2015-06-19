<%@ page contentType="text/html; charset=Euc-kr" pageEncoding="EUC-KR"%>
<%@ page import="java.sql.*"%>
<%
	// 파라미터값중에 한글이 포함되어있을때 전달과정에서 영문기반으로 변환하여
	// 전달되게 되있다.
	// 그래서 한글로 재복원을 시켜야 한다.
	request.setCharacterEncoding("euc-kr"); // 한글복원
	// response.setCharacterEncoding("euc-kr");

	String id = request.getParameter("id");
	int kor = Integer.parseInt(request.getParameter("kor"));
	int eng = Integer.parseInt(request.getParameter("eng"));
	int math = Integer.parseInt(request.getParameter("math"));

	double avg = (kor + eng + math) / 3.0;
	String rst;
	if (avg >= 60 && kor >= 40 && eng >= 40 && math >= 40) {
		rst = "합격";
	} else {
		rst = "불합격";
	}
	//======================================================
	int result = 0;
	try {
		Class.forName("oracle.jdbc.driver.OracleDriver");
		String url = "jdbc:oracle:thin:@192.168.10.1:1521:xe";
		String user = "jsp";
		String password = "1111";

		Connection conn = DriverManager.getConnection(url, user,
				password);

		String sql = "insert into score values(?,?,?,?, ?, ?)";
		PreparedStatement ps = conn.prepareStatement(sql);
		// 수행해야될 명령문에 ??? 처리해둔 부분이 있다면, 값을 설정해주자.
		ps.setString(1, id);
		ps.setInt(2, kor);
		ps.setInt(3, eng);
		ps.setInt(4, math);
		ps.setDouble(5, avg);
		ps.setString(6, rst);
		// 준비가 끝났다면..
		result = ps.executeUpdate(); // 숫자가 하나 발생하는데, 조작된 데이터 행의 개수

		ps.close();
		conn.close();
	} catch (Exception e) {
		e.printStackTrace();
		out.println("DB 작업중 문제 발생..!");
	}

	// ==================================================
	if (result > 0) {
		response.sendRedirect("menu.jsp");
	} else {
%>
<script>
	alert("정보 등록 중 오류 발생!!");
	location.href = "insform.jsp";
</script>
<%
	}
%>





