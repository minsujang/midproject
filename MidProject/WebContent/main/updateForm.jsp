<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
	<form action="update.do" method="post">
		<table>
			<caption>식당 등록</caption>
			<tr>
				<th>식당 이름</th><td><input type="text" name="rname" required="required">
				</td>
			</tr>
			<tr>
				<th>식당 연락처</th>
				<td><input type="text" name="rtel" required="required">
				</td>
			</tr>
			<tr>
				<th>음식 종류</th>
				<td><input type="text" name="kind" required="required">
				</td>
			</tr>
			<tr>
				<th>식당 소개</th>
				<td><textarea rows="6" cols="30" name="r_info"
						required="required"></textarea></td>
			</tr>
			<tr>
				<th>식당 위치</th>
				<td><input type="number" name="floor" required="required">
				</td>
			</tr>
			<tr>
				<th>식당 호수</th>
				<td><input type="text" name="loc" required="required">
				</td>
			</tr>
			<tr>
				<td>이미지</td>
				<td><input type="file" name="img"></td>
			</tr>
			<tr>
				<th colspan="2"><input type="submit" value="확인"></th>
			</tr>
		</table>

	</form>
</body>
</html>