<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ page import="java.text.*, java.util.*" %>
<%
	// java.text.SimpleDateFormat   => 시간을 출력을 할때, yyyy MM 형태 잡아주는 클래스
	SimpleDateFormat sdf = new SimpleDateFormat("yyyy/ MM/ dd (E)");
	
//	sdf.format();		// 시간을 집어넣어주면 => 정해진 포맷형태로 문자열로 만들어준다.\
	Date d = new Date();
	String today1 = sdf.format(d);
	long g = System.currentTimeMillis();	// 현재컴퓨터 시간 .. 
				// 1970/01/01/00:00  GMT 기준으로 밀리세컨드 단위로 1씩
	String today2 = sdf.format(1000*60*60*24*365L);

	System.out.println("d.toString() : " +d.toString());
	System.out.println("today1 : " +today1);
	System.out.println("g : " +g);
	System.out.println("today2 : " +today2);
%>






