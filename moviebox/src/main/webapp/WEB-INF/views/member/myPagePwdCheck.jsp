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
        
        .wrap{
            height: auto;
            width: 500px;
            margin: auto;
            margin-top: 50px;
            margin-bottom: 50px;
        }

        .inputdiv{
            position: relative;
            width: 500px;
            height: 75px;
            margin: auto;
            margin-bottom: 10px;
            
        }
        .inputdiv input {
            margin: 0;
            position: absolute;
            bottom: 0;
            
        }
        .inputdiv button{
            padding: 0;
            position: absolute;
            bottom: 0;
            right: 0;
        }
        .input-span{
            color: rgb(158, 158, 158);
            font-size: 12px;
            
        }
        .input-text{
            width: 100%;
            height: 50px;
            border-radius: 8px;
            border: none;
            margin-top: 2px;
        }
        .checkbox-div-input{
            height: 85px;
            width: 100%;
            border: 1px solid rgb(158, 158, 158);
            border-radius: 8px;
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
            font-size: 12px;
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
        
        .img-area{
        	width: 100%;
        	height: 280px;
            padding: 100px 0px 0px 0px;
            position: relative;
        }
        .lockImg{
            width: 65px;
            height: 65px;
            margin-bottom: 50px;
            margin: auto;
        }
        .img-area-content{
            position: absolute;
            bottom: 0;
            width: 100%;
            text-align: center;
            color: white;
            font-size: 16px;
        }
        #lockImg{
            width: 100%;
            height: 100%;
            color: white;
        }


    </style>
</head>
<body>
	<jsp:include page="/views/common/header.jsp"></jsp:include>
	

	<c:choose>
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
    
    <div class="wrap">
       
        <div id="input-list">
            <form action="${ path }/pwdCheck.me" method="post">
                <div class="img-area">
                    <div class="lockImg"><img id="lockImg" src="${ path }/resources/img/lock.png" alt=""></div>
                    <div class="img-area-content">
                        회원님의 정보를 안전하게 보호하기 위해<br>
                        비밀번호를 다시 한번 확인해 주세요.

                    </div>
                </div>
                
                <div class="inputdiv">
                    <span class="input-span">비밀번호</span><br>
                    <input type="password" class="input-text" name="memberPwd" placeholder="비밀번호" required>
                </div>
                
                <div class="input-button">
                    <a id="secession" href="${ path }/mypage.me">취소</a>
                    <input id="edit" type="submit" value="확인" onclick="return true;">
                </div>
            </form>


        </div>


    </div>
		</c:otherwise>
	</c:choose>
	
	
    <jsp:include page="/views/common/footer.jsp" />
</body>
</html>