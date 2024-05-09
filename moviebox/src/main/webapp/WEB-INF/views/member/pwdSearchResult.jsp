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
            height: auto;
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
        #idSearch{
            float: left;
            height: 100%;
            width: 100%;
            text-align: center;
            border: none;
            border-radius: 8px;
            font-size: 16px;
            font-weight: bolder;
            line-height: 50px;
            background-color: #FFC145;
            
        }
        .search{
            float: left;
            width: 49%;
            height: 100%;
            text-align: center;
            line-height: 50px;

        }
        .find_text{
            display: block;
            width: 100%;
            height: 100%;
            
        }
        .regis, .register{
            float: left;
            height: 100%;
            text-align: center;
            line-height: 50px;
        }

        .regis{
            width: 60%;
        }
        .register{
            width: 40%;
        }
        .colorWhite, .colorWhite a{
            color: white;
            font-size: 14px;
            font-weight: bold;
        }
        .find_text:hover{
            text-decoration: none;
            color: white;
        }
        .text-area{
            width: 100%;
            height: 30px;
            line-height: 30px;
            text-align: center;
            color: rgb(158, 158, 158);
            font-size: 14px;
        }

    </style>

</head>
	

<body>

	<jsp:include page="/views/common/header.jsp"></jsp:include>
	
    <div class="content">
        <div class="title-area">
            <div class="title-content"><span class="tit">비밀번호 재설정</span></div>
        </div>
        <div id="input-list">
            <form action="${ path }/pwdSearchUpdate.me" method="post">
                <div class="inputdiv">
                    <span class="input-span">새 비밀번호</span><br>
                    <input type="password" class="input-text" name="memberPwd" placeholder="새 비밀번호" required>
                    <input type="hidden" name="memberNo" value="${ memberNo }">
                </div>

                <div class="inputdiv">
                    <span class="input-span">새 비밀번호 확인</span><br>
                    <input type="password" class="input-text" placeholder="비밀번호" required>
                </div>

                <div class="text-area">입력하신 새로운 비밀번호로 변경하시겠습니까?</div>

                <div class="input-button">
					<input id="idSearch" type="submit" value="확인">
				</div>

            </form>

        </div>
    </div>



<jsp:include page="/views/common/footer.jsp" />
</body>

</html>