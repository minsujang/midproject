<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<link rel = "stylesheet" type = "text/css" href = "../m.css">
</head>
<body>

<form action="write.do" method="post">
<input type = "hidden" name = "bno" value = "${bno}">
<input type = "hidden" name = "pageNum" value = "${pageNum}">
	<table>
		<caption>글쓰기</caption>
		<tr><th>제목</th>
			<td><input type = "text" name = "subject"
			required="required"></td></tr>
		<tr><th>작성자</th>
			<td><input type = "text" name = "writer"
			required="required"></td></tr>
		<tr><th>내용</th>
			<td><textarea rows="10" cols="50"
			required="required" name = "content"></textarea></td></tr>
		<tr><th colspan = "2">
			<input type = "submit" value = "확인">
			</th></tr>
	</table>
	<button onclick="location.href='list.do'">글 목록보기</button>
</form>
</body>
</html>