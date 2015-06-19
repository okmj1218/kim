<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<%
	// jsp:include 태그를 이용한  페이지 포함은  
	// 전체 웹어플리케션에 고정틀(레이아웃/템플릿/template- 틀, 도장) 을 적용시킬때 사용.
	String top = "";
	String left = "";
	String center = "";
%>
<html>
<body>
	<table width="100%" height="100%" border="1">
		<tr height="15%">
			<td colspan="2"><jsp:include page="<%=top%>" /></td>
		</tr>
		<tr>
			<td width="20%"><jsp:include page="<%=left%>" /></td>
			<td width="80%"><jsp:include page="<%=center%>" /></td>
		</tr>
	</table>
</body>
</html>