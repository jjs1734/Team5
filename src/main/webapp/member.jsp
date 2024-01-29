<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h1>멤버 테이블</h1>
	<table>
		<tr>
			<th>번호</th>
			<th>아이디</th>
			<th>패스워드</th>
			<th>이름</th>
			<th>가입날짜</th>
			<th>등급</th>
		</tr>
		<c:forEach items="${list }" var="row">
			<tr>
				<td>${row.mno }</td>
				<td>${row.mid }</td>
				<td>${row.mpw }</td>
				<td>${row.mname }</td>
				<td>${row.mdate }</td>
				<td>${row.mgrade }</td>
			</tr>
		</c:forEach>
	</table>
</body>

</body>
</html>