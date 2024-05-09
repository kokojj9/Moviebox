<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>   

<!DOCTYPE html>
<html lang="en">
<head>

    <style>
        *{
            box-sizing: border-box;
            margin: 0;
            padding: 0;
        }
        body{
            background-color: #1A1A1A
        }
        a{
            text-decoration: none;
        }
        div{
        }
        .content{
            height: auto;
            width: 500px;
            margin: auto;
            margin-top: 50px;
            margin-bottom: 120px;
            
        }
        .title-area{
            
            height: auto;
            width: 100%;
            margin-bottom: 25px;
        }
        .mini-tit{
            color: white;
            font-weight: bold;
        }
        .tit{
            font-size: 30px;
            color: white;
            font-weight: bold;
            border-bottom: 4px solid#FFC145;
            
        }
        .info-area{
            height: 170px;
            margin-bottom: 20px;
            padding: 30px;
            color: white;
            font-weight: bold;
            background-color: rgb(33, 33, 33);
            border-radius: 8px;
            position: relative;
        }
        .history-area{
            height: 110px;
            margin-bottom: 20px;
            background-color: rgb(33, 33, 33);
            border-radius: 8px;
            padding-left: 15px;
            padding-right: 15px;
        }
        .QNA-area , .store-area{ 
            height: 110px;
            padding: 15px;
            margin-bottom: 20px;
            background-color: rgb(33, 33, 33);
            border-radius: 8px;
        }
        

        .content > div{
            width: 100%;
        }
        .info-area-content{
            height: 100%;
            width: 70%;
        }
        .info-name{
            font-size: 30px;
        }
        #btn1{
            background-color: #FFC145;
            position: absolute;
            font-size: 14px;
            font-weight: bold;
            top: 10px;
            right: 10px;
            color: black;

        }
        
        .info-content1{          
            float: left;
            width: 100%;
            height: 100%;
            position: relative;
            padding: 10px;
            background-color: rgb(33, 33, 33);
        }
        .info-name{
            position: relative;
            font-size: 30px;
            width: 100%;
        }
        .info-id{
            position: absolute;
            top: 8px;
            right:20px;
            font-size: 20px;
            color: white;
        }
        .info-address, .info-email{
            font-size: 12px;
            position: absolute;
            color: white;
            left: 10px;
        }
        .info-genre{
        	font-size: 12px;
            position: absolute;
            color: white;
            bottom: 12px;
            right: 31px;
        }
        .info-address{
            top: 60px;
        }
        .info-email{
            bottom: 10px;
        }
        .history-area-image{
            float: left;
            height: 100%;
            width: 18%;
            


        }
        .history-area-list{
            float:left;
            height: 100%;
            width: 55%;
            padding-top: 15px;
            padding-bottom: 15px;
        }
        .history-area-list > div{
            font-weight: bold;
            font-size: 12px;
            margin-left: 20px;
        }
        .history-area-price{
            float:right;
            height: 100%;
            width: 25%;
            border-radius: 5px;
            padding-top: 15px;
            padding-bottom: 15px;

        }
        .history-area-price > div{
            font-size: 12px;
            font-weight: bold;
            width: 100%;
            background-color: rgb(33, 33, 33);
           
        }
        .count{
            border-bottom: 1px solid white;
            border-top: 1px solid white;
            height: 100%;
        }
        .history-area-price span{
            padding-top: 3px;
            padding-left: 3px;
            display: block;
            color: white;
        }
        .history-area-content{
            width: 100%;
            height: 100%;
            border-radius: 5px;
            color: white;
            background-color: rgb(33, 33, 33);
            padding: 5px;
        }
        .store-area-content{
        	width: 100%;
            height: 100%;
            border-radius: 5px;
            background-color: rgb(33, 33, 33);
            padding: 5px;
            border: 1px solid rgb(158, 157, 157);
        }
        .QNA-area-content{
            width: 100%;
            height: 100%;
            border-radius: 5px;
            background-color: rgb(33, 33, 33);
            border: 1px solid rgb(158, 157, 157);
            color: white;
        }
        .QNA-area-list{
            height: 50%;
            width: 100%;
        }
        .QNA-area-list > div{
            float: left;
            height: 100%;
            text-align: center;
            line-height: 40px;
            font-size: 16px;
            color: white;
        }
        #QNA-title{   
            width: 60%;
        }
        #QNA-createDate{
            width: 30%;
        }
        #QNA-yn{
            width: 10%;
        }
        .store-area-list{
            float: left;
            width: 100%;
            height: 100%;
            color: white;
            background: rgb(33, 33, 33);
          
        }
        .store-area-list2{
            float: right;
            width: 48%;
            height: 100%;
        }
        #poster{
        	width: 100%;
        	height: 100%;
        }
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
        
        .store-area-content div{
        	float: left;
            height: 100%;
            padding: 5px 5px 5px 5px;
        	
        }
        .store-area{
            font-size: 12px;
        }
        .store-content{
             width: 100%;

        }
        table td{
        }
        .menu{
            text-align: center;
        }
        .price{
            text-align: center;
        }
        table{
        	float:left;
        	width: 40%;
        	margin: auto;
        }
        

    </style>
    <title>마이페이지</title>
</head>
<body>

	


	<jsp:include page="/views/common/header.jsp"></jsp:include>
	
	<c:set var="path" value="${ pageContext.request.contextPath }"/>
	<div id="info-header">
        <div id="info-title">
            <span class="title">마이페이지</span>
        </div>
        <div id="info-header-navi">
            
            <ul class="info-navi">
                <li id="info-navi-first">
                    <a href="#" class="info-my">회원정보</a>
                </li>
                <li id="info-navi-second">
                    <a href="${ path }/resList.me" class="info-list">예매내역</a>
                </li>
            </ul>
        </div>

    </div>
	
	<c:choose>
		<c:when test="${ loginUser eq null }">
			
			<script>
				location.href = ('${ path }/loginForm.me');
			</script>
			
		</c:when>
		<c:otherwise>

	

    <div class="content">
        <div class="title-area">
            <span class="tit">회원정보</span>
        </div>
        <div class="info-area">
            <a class="btn btn-warning" id="btn1" href="${ path }/pwdCheckForm.me">정보수정</a>
            <div class="info-area-content">
                <div class="info-content1">
                    <div class="info-name">${ sessionScope.loginUser.memberName } 님 <div class="info-id">${ sessionScope.loginUser.memberId }</div></div>
                    <div class="info-address">${ sessionScope.loginUser.localCode } ${ sessionScope.loginUser.address }</div>
                    <div class="info-email">${ sessionScope.loginUser.email }</div>
                    <div class="info-genre">

                    <c:choose>
                    	
                    	<c:when test="${!empty sessionScope.loginUser.genreList }">
                    	
                    		<c:forEach var="genre" items="${ sessionScope.loginUser.genreList }">
                    			${ genre.genreCode }
                    		</c:forEach>
                    	</c:when>
                    </c:choose>
                    </div>
                </div>
                
                <div class="info-content2">

                </div>
            </div>
        </div>
        <div class="mini-tit">MY 예매내역</div>
        <div class="history-area">
            <div class="history-area-content">
            <c:choose>
            	<c:when test="${ empty requestScope.list }">
            		<h5 align="center">고객님의 최근 예매 내역이 존재하지 않습니다.</h5>
            	</c:when>
            	<c:otherwise>
            		<div class="history-area-image"><img id="poster" src="${ path }/${ requestScope.movieList[0].filePath }/${ requestScope.movieList[0].changeName}"></div>
                		<div class="history-area-list">
                			
		                    <div>영화&emsp;${ requestScope.list[0].movieTitle }</div>
		                    <div>날짜&emsp;${ requestScope.list[0].watchDate }</div>
		                    <div>극장&emsp;${ requestScope.list[0].theaterName }</div>
		                    <div>인원&emsp;&emsp;${ requestScope.list[0].price.studentCount + requestScope.list[0].price.commonCount }명</div>
		                </div>
		                <div class="history-area-price">
		                    <div class="count">
		                    <span>청소년 :&nbsp;${ requestScope.list[0].price.studentCount }&emsp;${ requestScope.list[0].price.studentPrice }원</span>
		                    <span>성인 :&nbsp;${ requestScope.list[0].price.commonCount }&emsp;&emsp;${ requestScope.list[0].price.commonPrice }원</span>
		                    <span style="border-top: 1px solid rgb(158, 157, 157);">금액 :&emsp;&emsp;&nbsp;&nbsp;&nbsp;${ requestScope.list[0].price.totalPrice }원</span></div>
                		</div>
            	</c:otherwise>
            	
            </c:choose>
            </div>

        </div>
        <div class="mini-tit">MY 문의글내역</div>
        <div class="QNA-area">
            <div class="QNA-area-content">
            <c:choose>
            	<c:when test="${ empty requestScope.boardList }">
            		<h5 align="center">고객님의 최근 문의 내역이 존재하지 않습니다.</h5>
            	</c:when>
            	<c:otherwise>
            		<c:forEach var="i" begin="0" end="1" >
            			<div class="QNA-area-list" style="border-bottom: 1px solid rgb(158, 157, 157);">
                    		<div id="QNA-title">
                    		<c:choose>
                    		<c:when test="${ requestScope.boardList[i].boardTitle.length() gt 20 }">
                    			<c:set var="boardTitle" value='${ requestScope.boardList[i].boardTitle.substring(0,20).concat("...") }'/>
                    		</c:when>
                    		<c:otherwise>
                    			<c:set var="boardTitle" value="${ requestScope.boardList[i].boardTitle }"/>
                    		</c:otherwise>
                    		
                    		</c:choose>
                    		${ boardTitle }
                    		

                    </div>
                    <div id="QNA-createDate">${ requestScope.boardList[i].createDate }</div>
                    
                    <c:choose>
                    	<c:when test="${empty requestScope.answerList }">
                    		<div id="QNA-yn">N</div>
                    	</c:when>
                    	<c:otherwise>
                    		<div id="QNA-yn">Y</div>	
                    	</c:otherwise>
                    </c:choose>
                </div>
            		
            		</c:forEach>
            	</c:otherwise>
            
            </c:choose>
            	
            </div>
        </div>
        <div class="mini-tit">MY 상품구매내역</div>
            
        <div class="store-area">
            <div class="store-area-list">
                	<div class="store-img"></div>
                	<div class="store-content">
                	<c:choose>
                		<c:when test="${ empty requestScope.orderList }">
                			<h5 align="center">고객님의 최근 구매 내역이 존재하지 않습니다.</h5>
                		</c:when>
                		<c:otherwise>
                			<table>
                            <thead>
                                <tr>
                                    <th colspan="3">주문번호 ${ requestScope.orderList[0].orderNo }</th>
                                </tr>
                            </thead>
                            <tbody>
                                <tr>
                                    <td class="menu">메뉴</td>
                                    <c:choose>
                                    	<c:when test="${ !empty requestScope.orderList[0].goodsList }">
                                    		<c:forEach var='g' items="${ requestScope.orderList[0].goodsList }">
                                    			<td class="menu">${ g.goodsName }</td>
                                    		</c:forEach>
                                    	</c:when>
                                    </c:choose>
                                    
                                </tr>
                                <tr>
                                    <td class="menu">개수</td>
                                   <c:choose>
                                    	<c:when test="${ !empty requestScope.orderList[0].goodsList }">
                                    		<c:forEach var='g' items="${ requestScope.orderList[0].goodsList }">
                                    			<td class="menu">${ g.qty }</td>
                                    		</c:forEach>
                                    	</c:when>
                                    </c:choose>
                                </tr>
                                <tr>
                                    <td class="menu">비용</td>
                                    <c:choose>
                                    	<c:when test="${ !empty requestScope.orderList[0].goodsList }">
                                    		<c:forEach var='g' items="${ requestScope.orderList[0].goodsList }">
                                    			<td class="menu">${ g.goodsPrice }</td>
                                    		</c:forEach>
                                    	</c:when>
                                    </c:choose>
                                </tr>
                            </tbody>
                        </table>
                		</c:otherwise>
                	</c:choose>
                	
                    </div>
            </div>
            
        </div>
    </div>
		</c:otherwise>
	</c:choose>
	<jsp:include page="/views/common/footer.jsp" />
</body>
</html>