<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<style>

    .content2 {
            width: 570px;
            margin: auto;
            height: auto;
            margin-bottom: 120px;
            color: white;
    }
    .img-area{
        width: 100%;
        height: 250px;
        padding: 75px 230px 75px 230px;
    }
    .content-area{
        width: 100%;
        height: auto;
    }
    .img, img{
        width: 100%;
        height: 100%;
    }
    .text-area{
        width: 100%;
        height: 50px;
        margin-bottom: 70px;
        font-size: 30px;
        text-align: center;
    }
    .result{
        width: 100%;
        height: 90px;
        margin-bottom: 70px;
        font-size: 30px;
        font-weight: bold;
        text-align: center;
        line-height: 90px;
        background-color: rgb(33, 33, 33);
        border-radius: 8px;
        

    }
    .loginButton{
        width: 100%;
        height: 70px;
        font-size: 30px;
        font-weight: bold;
        text-align: center;
        line-height: 70px;
        background-color: #FFC145;
        border-radius: 8px;
    }
    .result span{
        display: block;
        float: left;
        width: 50%;
        height: 100%;
    }
    .loginButton > a{
        display: block;
        width: 100%;
        height: 100%;
        color: black;
    }
    .loginButton > a:hover{
        color: black;
        text-decoration: none;
    }

</style>
<title>Insert title here</title>
</head>
<body>
	<jsp:include page="/views/common/header.jsp"></jsp:include>
	<c:set var="path" value="${ pageContext.request.contextPath }"/>

    <div class="content2">
        <div class="img-area"><div class="img"><img src="${ path }/resources/img/check.png" alt=""></div></div>
            
        <div class="content-area">
            <div class="text-area">    
                입력하신 정보와 일치하는 결과입니다.
            </div>
            <div class="result">
                <span style="color: #FFC145;">MOVIE BOX ID</span><span>${ memberId }</span>
            </div>
            <div class="loginButton">
                <a href="${ path }/loginForm.me">로그인 하러가기</a>
            </div>
        </div>

    </div>

	<jsp:include page="/views/common/footer.jsp" />

</body>
</html>