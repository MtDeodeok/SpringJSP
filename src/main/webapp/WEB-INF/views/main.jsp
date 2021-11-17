<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page session="true"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	메인페이지
	<div>
		<c:choose>
			<c:when test="${sessionScope.memberID eq null}">
			<p>Guest님 환영합니다.</p>
		</c:when>
			<c:otherwise>
				<p>${memberID}님 환영합니다.</p>
			</c:otherwise>
		</c:choose>
	</div>
	<div>
		<a href="/board">게시판</a>
		<c:choose>
			<c:when test="${sessionScope.memberID eq null}">
				<a href="/login">Login</a>
			</c:when>
			<c:otherwise>
				<a href="/logout">LogOut</a>
			</c:otherwise>
		</c:choose>
	</div>
</body>
</html>