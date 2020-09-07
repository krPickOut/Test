<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style>
	table{
		width:300px;
		margin:auto;
		padding:auto;
		margin-top: 30px;
		text-align: center;
		height: 300px;	
	}
	td{
		border: 1px solid gray;
	}
	
</style>
</head>
<body>
<form action="inputReg.jsp" method="post" name="input">
<table>
	<tr>
		<td><label for="id">회원 ID</label></td>
		<td><input type="text" id="id" name="id"/></td>
	</tr>
	<tr>
		<td><label for="name">이름</label></td>
		<td><input type="text" id="name" name="name"/></td>
	</tr>
	<tr>
		<td><label for="tel">전화</label></td>
		<td><input type="text" id="tel" name="tel"/></td>
	</tr>
	<tr>
		<td><label for="addr">주소</label></td>
		<td><input type="text" id="addr" name="addr"/></td>
	</tr>
	<tr>
		<td><label for="hobby">취미</label></td>
		<td>
			<input type="checkbox" id="hobby" name="hobby" value="독서"/>독서
			<input type="checkbox" id="hobby" name="hobby" value="드라이브"/>드라이브
			<br>			
			<input type="checkbox" id="hobby" name="hobby" value="영화"/>영화
			<input type="checkbox" id="hobby" name="hobby" value="요리"/>요리&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
			<br>
			<input type="checkbox" id="hobby" name="hobby" value="여행"/>여행
			<input type="checkbox" id="hobby" name="hobby" value="운동"/>운동&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
		
		</td>
	</tr>
	<tr>
		<td colspan="2" align="center">
			<input type="submit" value="등록">&nbsp;&nbsp;
			<input type="reset" value="취소">
		</td>
	</tr>
</table>
</form>
</body>
</html>