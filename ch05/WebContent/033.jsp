<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%
	// 리다이렉트를 시키는 또 다른 방법  .  by javascript
	int n=1;
	if(n>0) {
%>
<script>
	alert("회원가입 성공..!!");
	location.href="main.jsp";
</script>
<%}else { %>
<script>
	alert("가입 처리중 오류 발생.!!");
	location.href="reg.jsp";
</script>
<%} %>    
    