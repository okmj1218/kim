<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<%
	// request  에   setAttribute 시켜둔 값들은
		// getAttribute 로 뽑아다 사용이 가능하다   => 
				// 키값은 String,  값은 Object 로 설정이 되어있어서
				// 원래 타입으로 casting을 해서 사용하여야 한다.
		String s = (String)request.getAttribute("str");
		String[] a = (String[])request.getAttribute("data");
%>
<html>
<body>
	<div align="right">
		<h2>this page is</h2>
		<hr color="black"/>
		<marquee>
			<b><i>dst.jsp</i></b>
		</marquee>
	</div>
	<hr color="black"/>
	<div align="center">
		lecture by SALZ	     
		<br/>
		리퀘스트에서 str이라는 이름으로 심어진 값 : <%=s %>
	</div>
</body>
</html>

