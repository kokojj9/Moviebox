<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
    <style>
        * {
            box-sizing: border-box;
            margin: 0;
            padding: 0;
        }

        body {
            background-color: #1A1A1A
        }

        .content {
            width: 500px;
            margin: auto;
            height: 400px;
            margin-top: 50px;
            margin-bottom: 120px;
        }

        .title-area {
            width: 100%;
            height: 50px;
            margin-bottom: 25px;
        }

        .title-content {
            float: left;
            width: 40%;
            height: 100%;
        }

        .tit {
            font-size: 30px;
            color: white;
            font-weight: bold;
            padding-bottom: 7px;
            border-bottom: 4px solid#FFC145;
        }
        #input-list{
            height: 320px;
            width: 100%;

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
            font-size: 12px;
            font-weight: bold;
            padding-left: 10px;
            

        }

        .input-span {
            color: rgb(158, 158, 158);
            font-size: 12px;
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
        #idSearch{
            float: left;
            height: 100%;
            width: 100%;
            text-align: center;
            text-align: center;
            border: none;
            border-radius: 8px;
            font-size: 12px;
            font-weight: bold;
            line-height: 50px;
            background-color: #FFC145;
            
        }
        .tit:hover{
            color: white;
            text-decoration: none;
        }
    </style>

</head>

<body>
	<jsp:include page="/views/common/header.jsp"></jsp:include>
<c:set var="path" value="${ pageContext.request.contextPath }"/>

    <div class="content">
        <div class="title-area">
            <div class="title-content"><a class="tit" style="color: white;">아이디 찾기</a></div>
            <div class="title-content" ><a href="${ path }/pwdSearchForm.me" class="tit" style="border-bottom: none;">비밀번호 찾기</a></div>
        </div>
        <div id="input-list">
            <form action="${ path }/idSearch.me" method="post">
                <div class="inputdiv">
                    <span class="input-span">이름</span><br>
                    <input type="text" class="input-text" name="memberName" placeholder="이름" required>
                </div>

                <div class="inputdiv">
                    <span class="input-span">생년월일</span><br>
                    <input type="text" class="input-text" name="birthday" placeholder="생년월일" required>
                </div>

                <div class="inputdiv">
                    <span class="input-span">전화번호</span><br>
                    <input type="text" class="input-text" name="phone" placeholder="전화번호" required>
                </div>

                <div class="input-button">
					<input id="idSearch" type="submit" value="아이디 찾기">
				</div>

            </form>

        </div>
    </div>
    
    <jsp:include page="/views/common/footer.jsp" />




</body>

</html>