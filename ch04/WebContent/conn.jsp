<%@ page contentType="text/html; charset=Euc-kr"
	pageEncoding="EUC-KR"%>
<%@ page import="java.sql.*" %>
<%
	// conn.jsp 로 요청이 들어왔고
	// 웹에서 DB 연동한 작업을 해야되는 상황이다.
	// DB 서버에 연결이 되는지부터 확인을 해야된다.
	// DB 연동 작업에서 사용되는 클래스들이 있는데, java.sql. 패키지에 포함되어 있다.
	// throws Exception이 걸려있는 메서드가 대부분이다 (예외 전가)
				//  -> try ~ catch 하고 작업이 필수이다.
	try {
		// 해당 DBMS 와 연결을 지원해주는 드라이버 로딩
		Class.forName("oracle.jdbc.driver.OracleDriver");
		
		// DB 에 연결부터 확인해보자.
		// DB 서버 경로 , 계정명 , 계정패스워드
		String url ="jdbc:oracle:thin:@192.168.10.1:1521:xe";
		String user ="jsp";
		String password="1111";
		
		Connection conn =DriverManager.getConnection(url, user, password);
		out.println("DB 연동 잘됨.!");
		
		//==================================================
		// 실제 작업을 진행해보자
		// 사용자가  => 닉넴 , 이름, 나이  이정보를 보낸 상황이고, 그걸
			// DB  info 테이블에 등록되게
		String nick ="부살";
		String name="윤형호";
		int age = 24;
		
		// 수행해야될 명령문을 문자열로 준비 - 변수 부분을 바인드처리해두고, 나중에 채우거나
		// insert into info values('사안수', '윤형호', 24)
		String sql = "insert into info values(?, ?, ?)";
	//	String sql2 = "insert into info values('"+nick+','"')"
		
		// 연결통로에다가 올려두고 
		PreparedStatement ps  = conn.prepareStatement(sql);
		// 수행해야될 명령문에 ??? 처리해둔 부분이 있다면, 값을 설정해주자.
		ps.setString(1, nick);
		ps.setString(2, name);
		ps.setInt(3, age);
		
	//	ps.setDouble();
	
	
		out.println("준비 끝!..");
		// 준비가 끝났다면..
		int m = ps.executeUpdate();		// 숫자가 하나 발생하는데, 조작된 데이터 행의 개수
		out.println("처리 완료!..");
				
				
		
	}catch(Exception e) {
		e.printStackTrace();
		out.println("DB 작업중 문제 발생..!");
	}
		
	
				
	
%>





