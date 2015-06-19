<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<html>
<head>
<title>qz02form</title>
</head>
<body>
	<h2>합격조회</h2>
	<hr/>
	<!-- 
		form 태그에 post로 설정해서 값을 전달받게 유도하는 상황
		1. 전달값이 url 에 드러나지 않길 원할때 (로그인)
		2. 전달량이 많을때 (회원가입 같은 경우)
		3. 파일 업로드  
		4. 한글값을 전달받기 위한 상황 
	 -->
	<form action="insproc.jsp" method="post">
		아뒤 : <input type="text" name="id"/><br/>
		국어 : <input type="text" name="kor"/><br/>
		영어 : <input type="text" name="eng"/><br/>
		수학 : <input type="text" name="math"/><br/>
		<hr/>
		<input type="submit"/>
	</form>
	* 합격을 할려면, 평균이 60이상이고, 개별점수가 전부 40점 이상은 넘어야 한다.
</body>
</html>





