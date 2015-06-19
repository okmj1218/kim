package it.util;

import java.sql.Connection;
import java.sql.DriverManager;

public class ConnUtil {

	// 디비 연결 작업이 굉장히 자주 일어나는데,
	// 매번 치는게 귀찮을것 같으니까, 연결 객체 생성 부분을 메서드로 구현해두자
	
	public static Connection open() throws Exception {			// ctrl+shift+o  : import
		Class.forName("oracle.jdbc.driver.OracleDriver");
		
		String url ="jdbc:oracle:thin:@192.168.10.1:1521:xe";
		String user ="jsp";
		String password ="1111";
		
		Connection conn = DriverManager.getConnection(url, user, password);
		return conn;
	}
}
