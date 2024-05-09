<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>헤더</title>

<link rel="preconnect" href="https://fonts.googleapis.com">
<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
<link rel="stylesheet" href="https://fonts.googleapis.com/css2?family=Noto+Sans+KR:wght@100..900&display=swap">
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/css/bootstrap.min.css">
<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css">   

    <script src="https://cdn.jsdelivr.net/npm/jquery@3.7.1/dist/jquery.min.js"></script>
    <script rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/js/bootstrap.bundle.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.1/dist/umd/popper.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/js/bootstrap.bundle.min.js"></script>
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.7.1/jquery.min.js"></script>
    
    <style>
    
        * {
            box-sizing: border-box;
  			font-family: "Noto Sans KR", sans-serif;
        }
        
        .content{
            height: auto;
            width: 500px;
            margin: auto;
            margin-top: 50px;
            margin-bottom: 50px;
        }

        body {
            background-color: #1A1A1A;

        }

        .header {
            width: 1200px;
            height: 200px;
            margin: auto;
            border-bottom: 1px solid lightgray;

        }
        .header-line{
        	width: 100%;
        	height: 75px;
        	border-bottom: 1px solid lightgray;
        }

        .top-header {
        	margin:auto;
        	width: 1200px;
            height: 75px;
            position: relative;
            
        }

        .login-area {
            position: absolute;
            right: 30px;
            top: 20px;
        }

        .login-area>a {
            display: block;
            float: right;
            text-decoration-line: none;
            color: white;
            font-size: 16px;
            margin-left: 30px;
            font-weight: bold;
        }

        #header-navigator {
        	margin: auto;
        	width: 1200px;
            height: 125px;
        }

        #logo-div {
            position: relative;
            float: left;
            height: 100%;
            width: 30%;
        }

        #logo {
            position: absolute;
            top: 50%;
            margin-top: -25px;
            width: 100%;
            height: 50px;
            font-size: 36px;
            font-weight: bold;
            color: #FFC145;
            line-height: 45px;
            text-align: center;
        }

        a {
            text-decoration-line: none;
        }

        #logo>a {
            text-decoration-line: none;
            color: #FFC145;
        }

        #navigator {
            float: right;
            width: 68%;
            height: 100%;
        }

        .navi {
            float: left;
            width: 20%;
            height: 100%;
            text-align: center;
            margin: 0 auto;
        }

        .navi>a {

            display: block;
            text-align: center;
            width: auto;
            height: 100%;
            color: white;
            text-decoration-line: none;
            line-height: 125px;
            font-size: 18px;
            font-weight: bold;
        }
        .nav{
            height: 100%;
            width: 100%;
        }
        .nav li{
            overflow: auto;
            
        }
        .nav a{
            padding: 0;
            padding-left: 40px;
            padding-right: 40px;
            height: 100%;
            position: relative;
        }
        .nav span{
            text-align: center;
            line-height: 118px;
            font-size: 19px;
            list-style: none;
            color: white;
            font-weight: bold;
        }
        .img-concert{
            width: 80%;
            height: 80%;
        }


    </style>
</head>
<body>

	<c:set var="path" value="${ pageContext.request.contextPath }" scope="session"/>
	
	<script>
		const msg = '${ alertMsg }';
		
		if(msg != 'null' && msg != ''){
			alert(msg);
            <c:remove var="alertMsg"/>
		}
	</script>

	<div class="header">
		<div class="header-line">
			<div class="top-header">
				<div class="login-area">
				
				<c:choose>
					<c:when test="${ loginUser eq null }">
						<a href="insertForm.me" class="member">회원가입</a>
	                	<a href="loginForm.me" class="member">로그인</a>
                	</c:when>
                	<c:otherwise>
                        <c:if test="${ loginUser.privilege == 'Y'}">
                            <a href="adminMain.me" class="member">관리자 기능</a>
                        </c:if>
                            <a href="logout.me" class="member">로그아웃</a>
                    </c:otherwise>

				</c:choose>
				
				</div>
			</div>
		</div>
		<div id="header-navigator">
            <div id="logo-div">
                <div id="logo"><a href="${ sessionScope.path }"><img class="img-concert" src="${ path }/resources/img/4.png"/></a></div>
            </div>
            
            <div id="navigator">
                <ul class="nav">
                    <li class="nav-item">
                    	
                    	<c:choose>
	                    	<c:when test="${ loginUser eq null }">
	                        
	                        	<a class="nav-link" onclick="nologin();" href="${ sessionScope.path }/loginForm.me"><span>예매</span></a>
	                        
	                        </c:when>
							<c:otherwise>                        
	                        
	                        	<a class="nav-link" href="movie.reservation"><span>예매</span></a>
	   						
	   						</c:otherwise>
                        </c:choose>
                        
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" href="${ sessionScope.path }/list.goods?currentPage=1"><span>스토어</span></a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" href="${ path }/list.movie"><span>영화</span></a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" href="${ path }/search.theater"><span>영화관</span></a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" href="${ path }/list.notice?currentPage=1"><span>고객센터</span></a>
                    </li>
                    <li class="nav-item">
       					
       					<c:choose>
							<c:when test="${ loginUser eq null }">       					
	                        	<a class="nav-link" onclick="nologin();" href="${ path }/loginForm.me"><span>마이페이지</span></a>
							</c:when>
							<c:otherwise>
	                        	<a class="nav-link" href="${ path }/mypage.me"><span>마이페이지</span></a>
	                        </c:otherwise>
                        </c:choose>
                        
                    </li>
                </ul>
            </div>
            <script>
            	function nologin() {
					alert('로그인이 필요한 서비스입니다');
				}
            </script>
        </div>
	</div>


</body>


</html>