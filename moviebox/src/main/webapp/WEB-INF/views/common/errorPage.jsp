<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	String errorMsg = (String)request.getAttribute("errorMsg");

%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>잘못된 요청</title>
	<style>
		#errorMsg{
			color : rgb(255, 193, 69);
			margin-top : 20px;
			text-align : center;
			font-size : 50px;
			font-weight : bold;
		}

		#msg{
			color : rgb(255, 193, 69);
			margin-top : 80px;
			text-align : center;
			font-size : 24px;
			font-weight : 500;
		}

		#error-a{
			border: 1px solid rgb(255, 193, 69);
			font-size: 30px;
			width: 200px;
			text-align : center;
			margin: auto;
			margin-top: 50px;
			margin-bottom: 100px;
		}
		#error-a > a{
			color : rgb(255, 193, 69);
			text-decoration: none;
		}


	</style>
</head>
<body>

	<%@ include file="header.jsp" %>
	
	<h1 id="errorMsg">페이지를 찾을 수 없습니다.</h1>

	<h4 id="msg">
		페이지가 존재하지 않거나, 사용할 수 없는 페이지 입니다. <br>
		입력하신 주소가 정확한지 다시 한 번 확인해주세요.
	</h4>
	<div id="error-a">
		<a href="\moviebox">메인으로</a>
	</div>

	<%@ include file="footer.jsp" %>

</body>
</html>