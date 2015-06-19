<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<!-- /member/regForm.jsp -->
<html>
<head>
<script>
	function idchk() {
		var url = "/member/chkForm.jsp";
		window.open(url, "chk", "height=200, width=300");
	}
</script>
</head>
<body>
	<h2>회원가입</h2>
	<hr />
	<form action="/member/regProc.jsp" method="post">
		<ul>
			<li>아이디 : <input type="text"  size="15" name="id"/><input type="button"
				value="중복체크"  onclick = "window.open()"/>
				</li>
				<li>비밀번호 : <input type="password"  size="15" name="pass"/>
				</li>
				<li>이름 : <input type="text"  size="15" name="name"/>
				</li>
				<li>성별 : <input type="radio" value="남" name="gender"/>남
					<input type="radio" value="여" name="gender"/>여
				</li>
				<li>생년 : 
					<select name="birth">
						<%for(int i=2015; i>1940; i--){ %>
							<option value="<%=i %>">  <%=i %>년</option>
						<%} %>
					</select>
				</li>
				<li>주소 : <input type="text"  size="30" name="address"/>
				</li>
				<li>소개 : <textarea rows="2" cols="30" name="info"></textarea>
				</li>
		</ul>
		<hr/>
		<input type="submit" value="가입신청"/>
	</form>
</body>
</html>






