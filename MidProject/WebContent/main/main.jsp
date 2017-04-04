<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" type="text/css" href="../main.css">
</head>
<body>
	<%
		String pgm = request.getParameter("pgm");
		if (pgm == null) {
			pgm = "index.jsp";
		}
	%>
	<header>
		
		<nav>
			<ul>
				<li>
					<button onclick="location.href ='login.jsp'">로그인</button>
				</li>
				<li><button onclick="location.href='join.jsp'">회원가입</button>
			</ul>
		</nav>
		
	</header>

	<jsp:include page="../module/top.jsp"></jsp:include>
	<article>
		<%
			if (pgm.equals("index.jsp")) {
		%>
		<jsp:include page="../module/top2.jsp"></jsp:include>
		<%
			}
		%>

	</article>
	<article>
		<jsp:include page="<%=pgm%>"></jsp:include></article>

	<footer>
		<jsp:include page="../module/footer.jsp"></jsp:include>
	</footer>

</body>
</html>