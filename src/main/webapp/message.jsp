<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>쪽지함</title>
<link rel="stylesheet" href="//cdn.jsdelivr.net/npm/xeicon@2.3.3/xeicon.min.css">
<style>
body {
	margin: 0;
	padding: 0;
	}
.wrap {
	width: 100%;
	height: 100vh;
	display: flex;
}
.menu {
	width: auto;
	height: 100vh;
	background-color: #fae100;
	overflow: hidden;
}
.main{
	width: 100%;
	height: 100vh;
	background-color: #333333;
	color: white;
	padding-left: 20px;
}
nav{
	margin-top: 50px;
}
nav ul{
	margin: 0;
	padding: 0;
	list-style: none;
	overflow: hidden;
}
nav > ul > li {
	margin: 0;
	padding: 0;
	margin: 5px 10px;
	padding: 10px 0px;
	text-align: left;
	padding-left: 5px;
	width: 150px;
	overflow: hidden;
}
nav > ul > li:hover{
	background-color: #333333;
	color: white; 
}
</style>
</head>
<body>
	<div class="wrap">
		<div class="menu">
			<nav>
				<ul>
					<li onclick="url('./messagewrite')">쪽지 쓰기</li>
					<li onclick="url('./members')">받은 쪽지함</li>
					<li onclick="url('./board')">보낸 쪽지함</li>
					<li onclick="url('./comments')">휴지통</li>
				</ul>
			</nav>
		</div>
		<div class="main">
			<article>
				<h2>받은 쪽지함</h2>
				<table>
					<thead>
						<tr>
							<td>보낸 이</td>
							<td>내용</td>
							<td>날짜</td>
						</tr>
					</thead>
					<tbody>
						<tr>
							<td>홍길동</td>
							<td>안녕하세요. 잘 되나요?</td>
							<td>2024-01-29</td>
						</tr>
					</tbody>
				</table>
				<h2>보낸 쪽지함</h2>
				<table>
					<thead>
						<tr>
							<td>받는 이</td>
							<td>내용</td>
							<td>날짜</td>
						</tr>
					</thead>
					<tbody>
						<tr>
							<td>포세이돈</td>
							<td>이건 내가 보낸 쪽지야</td>
							<td>2024-01-24</td>
						</tr>
					</tbody>
				</table>
			</article>
		</div>
	</div>
</body>
</html>