<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%-- <%@ include file="../sessionCheck.jsp" %> --%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>게시판</title>
<link rel="stylesheet" type="text/css" href="../m.css">
</head>
<body>
	<c:set value="${number}" var="bno"></c:set>
	<table>
		<caption>게시글 목록</caption>
		<tr>
			<th>번호</th>
			<th>제목</th>
			<th>작성자</th>
			<th>작성일</th>
			<th>조회수</th>
		</tr>
		<c:if test="${not empty list}">
			<c:forEach var="board" items="${list}">
				<tr>
					<td>${bno}</td>
					<c:if test="${board.del=='y'}">
						<td colspan='5'>Data Deleted</td>
					</c:if>
					<c:if test="${board.del!='y'}">
						<td><a href="content.do?bno=${board.bno}&pageNum=${pageNum}">
								${board.subject}</a></td>
						<td>${board.bname}</td>
						<td>${board.reg_date}</td>
						<td>${board.readcount}</td>
				</tr>
		</c:if>
		<c:set var="bno" value="${bno - 1}"></c:set>
		</c:forEach>
		</c:if>
		<c:if test="${empty list}">
			<tr>
				<th colspan="5">Data Not Found</th>
			</tr>
		</c:if>
	</table>
	<div align="center">
		<c:if test="${startPage > PAGEPERBLOCK}">
			<a href="list.do?pageNum=${endPage-PAGEPERBLOCK}">[이전]</a>
		</c:if>
		<c:forEach var="i" begin="${startPage}" end="${endPage}">
			<a href="list.do?pageNum=${i}">[${i}]</a>
		</c:forEach>
		<c:if test="${endPage < totPage}">
			<a href="list.do?pageNum=${startPage+PAGEPERBLOCK}">[다음]</a>
		</c:if>
	</div>
		<button onclick="location.href = 'writeForm.do'">글쓰기</button>
</body>
</html>