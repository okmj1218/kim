<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<%@ page import="java.sql.*"%>
<html>
<body>
	<%
		try {
			Class.forName("oracle.jdbc.driver.OracleDriver");

			Connection conn = DriverManager
					.getConnection(
							"jdbc:oracle:thin:@192.168.10.1:1521:xe",
							"jsp", "1111");
			String sql = "select * from score order by id asc";
			PreparedStatement ps = conn.prepareStatement(sql);
			ResultSet rs = ps.executeQuery();
			out.println("<h2>전체 학생정보</h2>");
	%>
	<table border="1">
		<tr>
			<th>아이디</th>
			<th>국 / 영 / 수</th>
			<th>평균</th>
			<th>합격여부</th>
		</tr>
		<%
			while (rs.next()) {
					String id = rs.getString("id");
					String rst = rs.getString("rst");
					int k = rs.getInt("kor");
					int e = rs.getInt("eng");
					int m = rs.getInt("math");
					double a = rs.getDouble("avg");
		%>
		<tr>
			<td><%=id%></td>
			<td><%=k%> / <%=e%> / <%=m%></td>
			<td><%=a%></td>
			<td><%=rst%></td>
		</tr>
		<%
			}
		%>
	</table>
	<%
		// 5. DB 작업시 사용했던 자원을 반환
			rs.close();
			ps.close();
			conn.close();

		} catch (Exception e) {
			e.printStackTrace();
		}
	%>
</body>
</html>






