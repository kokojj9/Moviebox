<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<%@ page import="com.kh.movie.model.vo.*, java.util.ArrayList" %>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>영화 목록</title>

<script src="https://unpkg.com/swiper@8/swiper-bundle.min.js"></script>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.7.1/jquery.min.js"></script>

    <style>
        body{
            background-color: #1A1A1A;
        }

        div{
            box-sizing: border-box;
        }

        .wrap{
            width: 1200px;
            margin: 0 auto;
        }

        /* 영화 리스트 전체 감싸는 div */
        #movie-list{
            width: 1200px;
            height: auto;
            margin: 0 auto;
            position: relative;
        }

        #movie-list-header{
            width: 1200px;
            height: 100px;
            margin-top: 10px;
            margin-bottom: 10px;
        }

        #movie-list-category{
            width: 940px;
            height: 100px;
            padding-top: 13px;
            float: left;
        }
        
        #movieCategory{
        	width:600px;
        }

        #movie-list-genre{
            width: 70px;
            height: 70px;
            color: white;
            text-align: center;
            font-size: 20px;
            font-weight: bold;
            float: left;
            padding-top: 20px;
            cursor: pointer;
        }


        #movie-list-genre:hover{
            background-color: #FFC145;
            border-radius: 25px;
            color: #1A1A1A;
            font-weight: bold;
        }


        /* 정렬 / 검색창 */
        #searchalign{
            width: 250px;
            height: 100px;
            float: left;
            padding-top: 13px;
            color: #808080;
        }

        .align-a{
            color: white;
            cursor: pointer;
            font-size: 15px;
        }

        .align-a:hover{
            color: #FFC145;
        }

        #movie-list-search{
            width: 180px;
            height: 27px;
            border-radius: 7px;
            margin-right: 7px;
            margin-top: 10px;
        }
        
        #search-img{
            width: 30px;
            margin-left: 5px;
            margin-right: 5px;
            margin-top: 10px;
            float: left;
        }

        #search-img > img{
            width: 30px;
            height: 30px;
        }

        #movie-list-input::placeholder{
            padding-left: 7px;
            font-size: 15px;
        }

        /* 영화 목록 부분 */
        #movie-content-body{
            width: 1200px;
            height: auto;
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
        

    </style>
</head>
<body>
	<jsp:include page="/views/common/header.jsp"></jsp:include>
    
    <div id="wrap">
        <div id="movie-list">

            <div id="movie-list-header">
            <!-- 카테고리 시작 -->
                <div id="movie-list-category">
                	<div id="movieCategory">
	                    <div id="movie-list-genre">전체</div>
	                    <div id="movie-list-genre">액션</div>
	                    <div id="movie-list-genre">로맨스</div>
	                    <div id="movie-list-genre" style="width:130px;">공포/스릴러</div>
	                    <div id="movie-list-genre">코미디</div>
	                    <div id="movie-list-genre">애니</div>
	                    <div id="movie-list-genre">판타지</div>
                    </div>
                </div>
                
                <!-- 장르 버튼 -->
                <form id="selectGenreForm" action="${ path }/selectGenre.movie" method="get">
                	<input id="selectTypeGenre" type="hidden" name="type" value="genre">
                	<input id="genreInput" type="hidden" name="genre">
                </form>

                <!-- 정렬 / 검색창 -->
                <div id="searchalign">
                    <div id="movie-list-align">
                        <a class="align-a">개봉일순</a> | <a class="align-a">가나다순</a>
                    </div>

                     <div id="search-img">
                       <img src="${ path }/resources/img/search.PNG" alt="검색 아이콘">
                    </div>
                    <div id="movie-list-input">
                        <input type="text" id="movie-list-search" placeholder="검색창" name="movieSearch">
                    </div>
                </div>
            </div> <!-- movie-list-header -->

            <div id="movie-content-body">
	            <c:choose>
	            	<c:when test="${ empty movieList }">
						<a style="color: white;">등록된 영화가 존재하지 않습니다.</a> <br>
					</c:when>
					<c:otherwise>
						<c:forEach var="m" items="${ movieList }">
		                    <div class="movie-content">
		                    	<input type="hidden" id="inputId" name="movieNo" value="${ m.movieNo }" />
		                    	
		                        <div class="movie-list-img"> <!-- 포스터 -->
		                        	<a href="${ path }/detail.movie?movieNo=${ m.movieNo }">
		                        		<img src="${ m.filePath }/${ m.changeName }" width="232" height="300">
		                        	</a>
		                        </div>
		                        
		                        <div class="movie-list-title">${ m.movieTitle }</div>
		                        <div id="movie-content-btn1">
			                        <a href="${ path }/detail.movie?movieNo=${ m.movieNo }" id="detailbtn">상세정보</a>
		                        </div>
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
	                 </c:otherwise>
				</c:choose>
            </div>

        </div> <!-- movie-list -->
    </div> <!-- wrap -->
    
	<jsp:include page="/views/common/footer.jsp"></jsp:include>
    
</body>
	
    <script>

    	// 비회원 상태에서 예매하기 버튼 클릭 시
		function noMember(){
			alert('로그인이 필요한 서비스 입니다.');
			location.href = ('${ path }/loginForm.me');
		}
		
    	// 예매하기 버튼 -> 예매 페이지
    	function reservationPage(){
    		location.href = '${ path }/movie.reservation';
    	}
    	
    	// 카테고리 네비 바
		document.getElementById('movieCategory').addEventListener('click', function(e) {
		    document.getElementById('genreInput').value = e.target.textContent;
		    document.getElementById('selectGenreForm').submit();
		});
		
    	// 검색
    	$(document).ready(function(){
    		$("#movie-list-search").keyup(function(){
    			var k = $(this).val();
    			$("#movie-content-body").hide();
    			var temp = $("#movie-content-body:contains('" + k + "')");
    			$(temp).show();
    		});
    		
    	});
    	


    	
	</script>
</html>