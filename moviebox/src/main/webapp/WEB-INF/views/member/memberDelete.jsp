<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
	<style>
    	
    	a{
            text-decoration: none;
        }

        #info-header{
            width: 100%;
            height: 175px;
            margin-bottom: 50px;
        }
        #info-title{
            width: 100%;
            height: 100px;
        }
        .title{
            display: block;
            width: 100%;
            height: 100%;
            font-size: 30px;
            font-weight: bold;
            line-height: 100px;
            text-align: center;
            color: white;
        }
        #info-header-navi{
            width: 1050px;
            height: 75px;
            margin : auto;
        }
        #info-header-navi ul{
            list-style-type: none;
            display: flex;
            justify-content: center;
            width: 100%;
            height: 100%;
            padding: 0;
            margin: 0;
        }
        #info-header-navi li{
            width: 50%;
            height: 100%;
            display: flex;
            justify-content: center;
            align-items: center;
            
        }
        .info-navi{
            border-top: 1px solid lightgray;
            border-bottom: 1px solid lightgray;
        }
        .info-my{
            color: black;
            text-decoration: none;
            font-weight: bold;
            width: 100%;
            height: 100%;
            text-align: center;
            padding-top: 25px;
        }
        .info-list{
            color: #FFC145;
            font-weight: bold;
            width: 100%;
            height: 100%;
            text-align: center;
            padding-top: 25px;
        }
        .info-navi > a{
        	text-decoration: none;
        }
        
        
        #info-navi-first{
            background-color: #FFC145;
        }
        #info-navi-second{
            background-color: #1A1A1A;
        }
        .info-my:hover{
            text-decoration: none;
            color: black;
            
        }
        .info-list:hover{
            text-decoration: none;  
            color: #FFC145;   
        }

        .delete-area{
            width: 500px;
            height: 1000px;
            margin: auto;
            margin-bottom: 50px;
        }
        .input-title{
            height: 10%;
            width: 100%; 
        }
        .tit{
            font-size: 30px;
            color: white;
            font-weight: bold;
            border-bottom: 4px solid#FFC145;
        }
        .delete-text-area{
            width: 100%;
            height: 118px;
            border-radius: 8px;
            background-color: rgb(33, 33, 33);
            color: white;
            text-align: center;
            font-size: 18px;
            line-height: 50px;
            margin-bottom: ;
        }
        .inputdiv {
            position: relative;
            width: 100%;
            height: 75px;
            margin: auto;
            margin-bottom: 10px;
        }

        .inputdiv input {
            margin: 0;
            position: absolute;
            bottom: 0;
            font-size: 14px;
            font-weight: bold;
            padding-left: 10px;
            

        }

        .input-span {
            color: rgb(158, 158, 158);
            font-size: 14px;
            font-weight: bold;
            width: 70%;
            float: left;
            margin-right: 2%;
        }

        .input-text {
            width: 100%;
            height: 50px;
            border-radius: 8px;
            border: none;
            margin-top: 2px;
        }
        .input-button{
            
            width: 500px;
            height: 50px;
            margin: auto;
            margin-top: 25px;
            
            
        }
        

        #edit, #secession{
            float: left;
            height: 100%;
            width: 49%;
            text-align: center;
            text-align: center;
            border: none;
            border-radius: 8px;
            font-size: 14px;
            font-weight: bold;

            
        }

        #secession{
            display: block;
            background-color: white;
            color: black;
            line-height: 50px;
        }
        #edit{
            margin-left: 2%;
            line-height: 50px;
            background-color: #FFC145;
        }
        #secession:hover{
        	text-decoration: none;
        }

    </style>
</head>
<body>
<jsp:include page="/views/common/header.jsp"></jsp:include>
	<c:set var="path" value="${ pageContext.request.contextPath }"/>
	
		<c:when test="${ loginUser eq null }">
			
			<script>
				location.href = ('${ path }/loginForm.me');
			</script>
			
		</c:when>
	<c:otherwise>
	
	<div id="info-header">
        <div id="info-title">
            <span class="title">마이페이지</span>
        </div>
        <div id="info-header-navi">
            
            <ul class="info-navi">
                <li id="info-navi-first">
                    <a href="${ path }/mypage.me" class="info-my">회원정보</a>
                </li>
                <li id="info-navi-second">
                    <a href="${ path }/resList.me" class="info-list">예매내역</a>
                </li>
            </ul>
        </div>

    </div>

    <div class="delete-area">
        <div class="input-title"><span class="tit">회원 탈퇴</span></div>
        <div class="delete-text-area">
            주의하세요<br>

            한번 삭제된 정보는 복구가 불가능합니다

        </div>
        <form action="${ path }/delete.me" >
            <div class="inputdiv">
                <span class="input-span">비밀번호</span><br>
                <input type="password" class="input-text" name="memberPwd" placeholder="비밀번호" required>
            </div>
            <div class="input-button">
                <a id="secession" href="${ path }/Updateform.me">취소</a>
                <input id="edit" type="submit" value="회원 탈퇴">
            </div>
        </form>
    </div>
    
    </c:otherwise>

    <jsp:include page="/views/common/footer.jsp" />





</body>
</html>