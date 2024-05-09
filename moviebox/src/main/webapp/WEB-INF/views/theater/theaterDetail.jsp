<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%@ page import="com.kh.theater.model.vo.*, java.util.ArrayList,
				 com.kh.movie.model.vo.*, com.kh.common.model.vo.*" %>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>영화관 정보</title>

    <style>
        body{
            background-color: #1A1A1A;
            color: white;
        }

        div{
            /* border: 1px solid red; */
            box-sizing: border-box;
        }

        #wrap{
            width: 1200px;
            margin: 0 auto;
        }

        h1{
            padding-left: 5px;
            color: white;
            font-size: 15px;
        }
        

        /* 영화관 안내 전체 박스 */
        #theater-header{
            margin-top: 30px;
            margin-bottom: 30px;
            padding-bottom: 30px;
            color: #1A1A1A;
            border-bottom: 1px solid #8A8A8A;
        }

        #theater-content{
            color: #a7a7a7;
        }

        /* 항목별 글씨 */
		#theaterTitle{
			font-size: 35px;
			color: #FFC145;
			font-weight: bold;
		}
		
		#theaterSubTitle1{
			font-size: 30px;
			color: white;
			font-weight: bold;
		}
		
		#theaterSubTitle2{
			font-size: 30px;
			color: white;
			font-weight: bold;
		}
		
		/* 조회 결과 없을 때 */
        #noMovieList{
        	width:1200px;
        	height: 500px;
        	text-align: center;
        	line-height: 490px;
        }
        
        #noMovie{
        	width: 1200px;
        	font-size: 20px;
        	text-align: center;
        	color:white;
        }
		
        /* 현재 상영작 목록 */
        #movie-content-body{
            width: 1200px;
            height: auto;
            margin-top: 30px;
            margin-bottom: 30px;
        }

        .movie-content{
            width: 235px;
            height: auto;
            color: white;
            display: inline-block;
            margin-bottom: 20px;
            border: 1px solid #383838;
            padding-bottom: 10px;
        }

        .movie-conten1{
            width: 1200px;
        }

        .movie-list-img{
            height: 300px;
        }

        .movie-list-title{
            height: 70px;
            text-align: center;
            font-size: 20px;
            font-weight: bold;
            padding-top: 6px;
            color: white;
        }

        #movie-content-btn1{
        	width: 100px;
        	height: 35px;
        	float:left;
            margin-right: 10px;
            margin-left: 10px;
            border-radius: 8px;
            background-color: white;
            text-align: center;
            line-height: 32px;
        }
        
        #detailbtn{
        	text-decoration: none;
        	color: black;
        	font-size: 15px;
        	font-weight: bold;
        	display: block;
        }

        #movie-content-btn2{
            width: 100px;
            height: 35px;
            border-radius: 8px;
            background-color: #FFC145;
            font-weight: bold;
            font-size: 15px;
            border: none;
        }

        .movie-conten1{
            height: 400px;
            margin-top: 20px;
        }

        /* 오시는 길 */
        #theater-map{
            width: 1200px;
            border-top: 1px solid #8A8A8A;
            padding-top: 25px;
            margin-top: 30px;
            color: #a7a7a7;;
        }

        #detail-map{
            padding-bottom: 20px;
            margin-top: 30px;
        }
        
        #theater-address{
        	margin-top: 20px;
        	margin-bottom: 30px;	
        	font-size: 20px;
        }
        
        #theater-mapLink{
        	margin-top: 20px;
        	margin-bottom: 50px;
        }
        
        #theaterAddress{
        	color: #cccccc;
        	font-size: 18px;
        }
        
    </style>
    
</head>
<body>
<jsp:include page="/views/common/header.jsp"></jsp:include>

    <div id="wrap">

        <!-- 영화관 안내 전체 박스 -->
        <c:choose>
        	<c:when test="${ empty theater }">
				<div id="noMovieList">
					<a id="noMovie">영화관이 존재하지 않습니다.</a>
				</div>
       	 	</c:when>
       	 	<c:otherwise>

        <div id="theater-header">
			    <a id="theaterTitle">${ theater[0].theaterName }</a>
        </div>

        <!-- 현재 상영작 -->
        <div id="theater-movie-now">
            <a id="theaterSubTitle1">현재 상영작</a>
            <!-- 현재 상영작 목록 -->
            
            <div id="movie-content-body">

               <!-- <div class="movie-conten1"> -->
               <c:forEach var="t" items="${ requestScope.theater }">
                    <div class="movie-content">
                    	<input type="hidden" id="inputId" name="movieNo" value="${ t.movieNo }" />
                    	
                        <div class="movie-list-img">
                        	<a href="${ path }/detail.movie?movieNo=${ t.movieNo }"><img src="${ t.filePath }/${ t.changeName }" width="232" height="300"></a>
                        </div>
                    
                        <div class="movie-list-title">${ t.movieTitle }</div>
                        
                        <div id="movie-content-btn1"><a href="${ path }/detail.movie?movieNo=${ t.movieNo }" id="detailbtn">상세정보</a></div>
	                    <c:choose>
	                    	<c:when test="${ empty loginUser }">
	                    		<button id="movie-content-btn2" onclick="noMember();">예매하기</button>
	                    	</c:when>
	                		<c:otherwise>
	                			<button id="movie-content-btn2" onclick="reservationPage();">예매하기</button>
	                		</c:otherwise>
	                	</c:choose>
                    </div>
        		 </c:forEach>
            </div>
        </div>

        <!-- 오시는 길 -->
        <div id="theater-map">

            <a id="theaterSubTitle2">오시는 길</a>
            <div id="theater-address">
                <a id="theaterAddress">${ theater[0].theaterAddr }</a>
            </div>
            <div id="theater-mapLink">${ theater[0].mapLink }</div>
        </div>
			</c:otherwise>
		</c:choose>
	
    </div> <!-- wrap -->

<jsp:include page="/views/common/footer.jsp"></jsp:include>

        
    <script>
		function noMember(){
			alert('로그인이 필요한 서비스 입니다.');
			location.href = ('${ path }/loginForm.me');
		}
    	// 예매하기 버튼 -> 예매 페이지
    	function reservationPage(){
    		location.href = '${ path }/movie.reservation';
    	}

	</script>
    
</body>
</html>