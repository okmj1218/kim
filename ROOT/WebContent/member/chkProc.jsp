<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ page import = "java.sql.*, it.util.*" %>
<%
	//request �м��ϰ�,
	String chk = request.getParameter("chk");
	//DB �� �۾��� �Ͼ��,
	boolean rst = false;
	try{
		Connection conn = ConnUtil.open();
		String sql = "select*from member where id=?";
		//=>���̵� Ȥ�� ��й�ȣ�� ��ġ���� �ʽ��ϴ�.
		//select*from member where id=?
		//=>���̵� ����, ��� ����ġ, ����
		PreparedStatement ps = conn.prepareStatement(sql);
		ps.setString(1, chk);
		ResultSet rs=ps.executeQuery(); //select���� executeQuery
		//insert, update, delete ���� executeUpdate
		if(rs.next()) {
			rst=true;
		}
		rs.close();
		ps.close();
		conn.close();
	} catch (Exception e) {
		e.printStackTrace();
	}
	
	//�װ� ���� �� �並 �ٹ̰ų� �ٸ� �������� �̵��� ��Ŵ
	String val;
	if(rst){
		//�ش� ���̵��� �ִ�. => ���Ұ���
		val="���Ұ���";
	}else{
		//�ش� ���̵��� ����.=> ��밡��
		val = "��밡��";
	}
%>
<html>
<title>ID CHECK</title>
<body>
	[<%=chk %>] ��/�� 
	<%=val %> 
	�Դϴ�.
	<input type="button" value="�ݱ�" onclick="self.close()"/>
</body>
</html>