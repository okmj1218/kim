<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<html>
<head>
</head>
<body>
	<!-- 로그인 화면 / 미완성, action , name, 설정 X-->
	<div align="right">
		<form action="/log/loginProc.jsp" method="post">
			<b>ID</b> <input type="text" size="10" name="logId"/>
				<input type="checkbox"/>
			<b>PASS</b> <input type="password" size="12" name="logPass"/>
			<input type="submit" value="로그인"/>
			<input type="button" value="회원가입" 
				onclick="location.href='/member/reg.jsp'"/>
		</form>
	</div>
</body>
</html>












