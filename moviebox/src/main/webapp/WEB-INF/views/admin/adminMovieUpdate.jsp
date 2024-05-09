<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.util.ArrayList, com.kh.common.model.vo.Genre, com.kh.common.model.vo.PageInfo, com.kh.movie.model.vo.Movie" %>    

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %> 

<%
	Movie m =(Movie) request.getAttribute("movie");
	String cast = (String) request.getAttribute("cast");
	ArrayList<Genre> genrelist = (ArrayList<Genre>)request.getAttribute("genreList");
%>







<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>영화관리 → 영화수정</title>

    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.7.1/jquery.min.js"></script>
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/css/bootstrap.min.css">
    <script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.1/dist/umd/popper.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/js/bootstrap.bundle.min.js"></script>




    <style>

        
        div{
           /* border : 1px solid red;  */
            box-sizing : border-box;
            background-color: #1a1a1a;
        }

        /* 전체를 감싸는 #wrap div */
        #wrap{
            /*width: 1200px;*/
            margin: 0 auto;
 			/* border : 1px solid red;  */
        }

        #top_wrap{
            width: 1200px;
            height : 150px;
            margin: 0 auto;
            background-color: #212121;
        }

        .top_1{
            display: inline-block;
            width: 200px;
            height: 150px;
            background-color: #212121;
        }



        #content{
            width: 1200px;
            height : 800px;
            margin: 0 auto;


        }

        .content_1{
            display: inline-block;
            vertical-align: top;
            width : 200px;
            height : 800px;
            padding-top: 20px;
            background-color: #323232;


        }

        .content_2{
            display: inline-block;
            vertical-align: top;
            width : 880px;
            height : 800px;
            padding-left: 50px;
            padding-top: 20px;

        }



        .menu {
            width: 200px;
            overflow: hidden;
            margin: 20px auto;
            padding: 0%;
            
        }

        .menu > li {
            width: 198px;
            text-align: center; /*텍스트 중앙에 배치*/
            line-height: 40px;
            background-color: #323232;
            list-style: none;

        }


        .menu a {
            color: #fff;
            text-decoration: none;
            font-weight: bold;
            display : block; /* 인라인 요소를 블럭요소로 바꿔줌 */
        }

        .menu a:hover {
            color: #1a1a1a;
            text-decoration: none;
            
        }


        .submenu > li { /*게시글관리 - 공지관리/문의 게시글 관리*/
            line-height: 50px;
            background-color: #FFC145;
            list-style: none;
            
        }

        .submenu {
            height: 0; /*ul의 높이를 안보이게 처리*/
            overflow: hidden;
            
        }

        .menu > li:hover {
            background-color: #FFC145;
            transition-duration: 0.5s;
        }


        .menu > li.post:hover .submenu {
            height: 100px; /*서브메뉴 li한개의 높이 50*5*/
            transition-duration: 1s;
        }




        .top_1 > h1{
            color: #FFC145;
            text-align: center;
            line-height: 150px;
        }



        .menu .submenu{
            padding-left: 0;
        } 


        /*-----------------------여기까지는 테두리------*/


        /* -------------------------------------------*/

        #content_2_box { /*컨텐트2 전체 div*/
            width: 770px;
            height: 690px;
            /* border : 1px solid rgb(255, 150, 79); */
        }


        #p{
            margin-top: 24px;
            margin-bottom: 30px;
            font-size: x-large;
            font-weight: bold;
            color: #ffffff;
        }  

        /* -------------------------------------------*/

        .title-file{
            /* border: 1px solid rgb(172, 0, 0); */
            width: 170px;
            height: 100px;
            font-size: 15px;
            font-weight: bold;
            line-height: 100px;
            color:#ffffff;
            text-align: right;
            padding-right: 30px;
            
        }
        .title{
            /* border: 1px solid rgb(172, 0, 0); */
            width: 170px;
            height: 50px;
            font-size: 15px;
            font-weight: bold;
            line-height: 60px;
            color:#ffffff;
            text-align: right;
            padding-right: 30px;
        }


        .title-story{
            /* border: 1px solid rgb(172, 0, 0); */
            width: 170px;
            height: 80px;
            font-size: 15px;
            font-weight: bold;
            line-height: 80px;
            color:#ffffff;
            text-align: right;
            padding-right: 30px;
        }

        .title-trailer{
            /* border: 1px solid rgb(172, 0, 0); */
            width: 170px;
            height: 50px;
            font-size: 15px;
            font-weight: bold;
            line-height: 50px;
            color:#ffffff;
            text-align: right;
            padding-right: 30px;
        }

        #box_1     
        {
            /* border: 1px solid rgb(245, 191, 229); */
            width: 170px;
            height: 690px;
            float: left;
        }

        #box_2 {
            /* border: 1px solid rgb(0, 16, 158); */
            width: 580px;
            height: 690px;
            float: left;
        }

        #sub_1 {
            /* border: 1px solid rgb(0, 236, 39); */
            width: 580px;
            height: 100px;
            float: left;
        }

        #sub_2 {
            /* border: 1px solid rgb(0, 155, 216); */
            width: 580px;
            height: 50px;
            float: left;
        }

        #sub_3 {
            /* border: 1px solid rgb(223, 145, 0); */
            width: 580px;
            height: 50px;
            float: left;
        }

        #sub_4 {
            /* border: 1px solid rgb(223, 0, 93); */
            width: 580px;
            height: 50px;
            float: left;
        }

        #sub_5 {
            /* border: 1px solid rgb(255, 57, 255); */
            width: 580px;
            height: 50px;
            float: left;
        }
        #sub_6 {
            /* border: 1px solid rgb(34, 156, 255); */
            width: 580px;
            height: 50px;
            float: left;
        }
        #sub_7 {
            /* border: 1px solid rgb(63, 243, 78); */
            width: 580px;
            height: 50px;
            float: left;
        }

        #sub_8 {
            /* border: 1px solid rgb(63, 111, 243); */
            width: 580px;
            height: 50px;
            float: left;
        }

        #sub_9 {
            /* border: 1px solid rgb(236, 193, 0); */
            width: 580px;
            height: 80px;
            float: left;
        }

        #sub_10{
            /* border: 1px solid rgb(63, 111, 243); */
            width: 530px;
            height: 30px;
            float: left;
            margin-top: 5px;
        }

        #sub_11 {
            /* border: 1px solid rgb(236, 193, 0); */
            width: 580px;
            height: 50px;
            float: left;
            margin-top: 3px;
        }

        /*-------------------------------------------------------*/
        #file { 
            display: none;
            display: inline;
            float: left;
            color:#ffffff;/*첨부파일색상*/
        }

        .fileBox{ /*파일선택버튼*/
            width: 135px;
            height: 40px;
            float: left;
            font-size: small;
            padding-top: 2px;

        }
        
        .fileBox_2{/*파일명 박스*/
            border: 1px solid lightgray;
            width: 400px;
            height: 40px;
            float: left;
            margin-top: 10px;
            border-radius: 8px;
        }
        input[type=file]::file-selector-button {
            width: 80px;
            height: 27px;
            background-color: #FFC145;
            border: 1px solid lightgray;;
            border-radius: 5px;
            cursor: pointer;
            margin-top: 2px;

            
            
        }

        /*---------------------------------------*/


        #movieTitle, /*제목입력창*/
        #runningTime, /*러닝타임입력창*/
        #rating, /*관람등급입력창*/
        #director_name,/*감독입력창*/
        #cast, /*출연진입력창*/
        #trailer/*예고편링크입력창*/
        { 
            width: 533px;
            height: 40px;
            border-radius: 8px;
            border: 1px solid lightgray;
            font-size: 15px;
            margin-top: 4px;
            color: #727272;
        }

        #plot{ /*줄거리 입력창*/
            width: 533px;
            height: 75px;
            border-radius: 8px;
            border: 1px solid lightgray;
            font-size: 15px;
            margin-top: 3px;
            color: #727272;
            padding-left: 7px;
            padding-top: 7px;
            resize: none;
            
        }

        #select_1{ /*장르셀렉박스*/
            border: 1px solid gainsboro;
            border-radius: 8px;
            width: 533px;
            height: 40px;
            font-size: 15px;
            margin-top: 4px;
            margin-right: 14px;
            color: #727272;
            padding-left: 7px;

        }



        #date{ /*개봉일 선택창*/
            width: 533px;
            height: 40px;
            border-radius: 8px;
            border: 1px solid lightgray;
            font-size: 15px;
            margin-top: 4px;
            color: #727272;
            padding-left: 7px;
        }

        input::placeholder{
            padding-left: 7px;
            
        }
        input{
            padding-left: 5px;
            
        }




    </style>
    
    
</head>
<body>

	<!-- 헤더 -->
    <%@ include file="/views/common/header.jsp" %>
    
    <div id="wrap">

        <div id="top_wrap">
            <div class="top_1">
                <h1>관리자</h1>
            </div>

        </div>

        <div id="content">
            <div class="content_1">
                <ul class="menu">
                    <li>
                        <a href="${path}/selectAdmin.mb">회원 관리</a>
                        <ul class="submenu">

                        </ul>
                    </li>
                    <li>
                        <a href="${path}/adminScreenList.admin">예매 관리</a>
                        <ul class="submenu" >

                        </ul>
                    </li>
                    <li>
                        <a href="${path}/adminMovieCheck.admin?currentPage=1">영화 관리</a>
                        <ul class="submenu" >

                        </ul>
                    </li>
                    <li>
                        <a href="${path}/checkAdmin.cm">영화관 관리</a>
                        <ul class="submenu">

                        </ul>
                    </li> 
                    <li class="post">
                        <a href="#">게시글 관리</a>
                        <ul class="submenu">
                        <li><a href="${path}/adminBoardCheck.admin?currentPage=1">공지 관리</a></li>
                        <li><a href="${path}/adminQnACheck.admin?currentPage=1">문의 게시글 관리</a></li>
                        </ul>
                    </li>
                </ul>    
            </div>

            <!------------------------------------------------------------>

            <div class="content_2"><!--content_2 시작-->
                <p id="p">영화 관리 > 영화 등록</p>
			<!-- /adminMovieInsert.admin 이름을 가진 서블릿으로 폼 데이터를 post방식으로 전달,
					 파일업로드가 있기 때문에 enctype="multipart/form-data"로 전달 -->
			<form action="${path}/adminMovieUpdate.admin" method="post" enctype="multipart/form-data" onsubmit="return validateForm();">
			
				<input type="hidden" name="movieNo" value="${movie.movieNo}" />
			    <div id="content_2_box"><!--컨텐트2 전체박스-->
			        <div id="box_1">
			            <div class="title-file">파일첨부</div>
			            <div class="title">제목</div>
			            <div class="title">장르</div>
			            <div class="title">러닝타임</div>
			            <div class="title">관람등급</div>
			            <div class="title">개봉일</div>
			            <div class="title">감독</div>
			            <div class="title">출연진</div>
			            <div class="title-story">줄거리</div>
                        <div class="title-trailer">예고편</div>
			        </div>
			        <div id="box_2">
			            <div id="sub_1">
			                <div class="fileBox" style="padding-right: 250px;">
			                    <input type="file" id="file" name="upposter" style="padding-top: 35px;" accept="image/*"> <!-- 이미지 파일 전부 받기 -->
                            </div>
			                <div class="fileBox">
			                    <input type="file" id="file" name="stillcut1" style="padding-top: 3px;" accept="image/*"> <!-- 이미지 파일 전부 받기 -->
			                    <input type="file" id="file" name="stillcut2" style="padding-top: 3px;"accept="image/*"> <!-- 이미지 파일 전부 받기 -->
			                    <input type="file" id="file" name="stillcut3" style="padding-top: 3px;" accept="image/*"> <!-- 이미지 파일 전부 받기 -->

                            </div>
			            </div>
			
			            
			            <div id="sub_2">
			                <input type="text" name="title" id="movieTitle" placeholder="영화 제목을 입력해 주세요." value="${movie.movieTitle}"> <!-- 영화제목 = name="title" 로 전달!  -->
			            </div>
									
						<!--장르카테고리-->
			            <div id="sub_3">
						    <select name="genre" id="select_1">
						    	<c:forEach var="g" items="${ requestScope.genreList }">
						            <option value="${g.genreCode}">
						            <c:choose>
						            	<c:when test="${movie.genreNo eq g.genreCode}"> 
						            	selected 
						            	</c:when>
						            </c:choose>
						            	${ g.genreName }
						            </option>
						        </c:forEach>
						    </select>
			            </div>
			
			            <div id="sub_4">
			                <input type="text" name="running_time" id="runningTime" placeholder="러닝타임을 입력해 주세요.(ex - 120)" value="${movie.movieRt}">
			            </div>
			
			            <div id="sub_5">
			                <input type="text" name="rated" id="rating" placeholder="관람 등급을 입력해 주세요.(ex - 12세)" value="${movie.movieRated}">
			            </div>
			
			            <div id="sub_6">
			                <input type="date" name="release_date" id="date" value="">
			            </div>
			
			            <div id="sub_7">
			                <input type="text" name="director_name" id="director_name" placeholder="감독을 입력해 주세요.(ex - 호빵맨, 식빵맨 )" value="${movie.directorName}">
			            </div>
			
			            <div id="sub_8">
			                <input type="text" name="actors" id="cast" placeholder="출연진을 입력해 주세요.(ex - 잉어빵, 붕어빵 )" value="${cast}">
			            </div>
			
			            <div id="sub_9">
			                <textarea name="story" id="plot" cols="30" rows="10" placeholder="줄거리를 입력해 주세요.">${movie.movieStory}</textarea>
			            </div>
			            
			            <div id="sub_11">
			                <input type="text" name="trailer" id="trailer" placeholder="예고편 영상 링크를 입력해 주세요." value="${movie.trailerVideo}">
			            </div>
			
			            <div id="sub_10"><!--수정 버튼-->
			                <input type="submit" class="btn btn-warning" style="height: 30px; font-size: 12px; background-color: #FFC145; float: right;" value="등록">
			            	<button type="button" class="btn btn-warning" style="height: 30px; font-size: 12px; background-color: #FFC145; float: right; margin-right: 5px;" onclick="location.href='${path}/adminMovieCheck.admin?currentPage=1'">목록</button>
			            </div><!--수정 버튼-->
			            
			           
			        </div><!--box2-->
			    </div><!--컨텐트2 전체박스 끝-->
			</form>

            </div><!--content_2끝-->
        </div>

    </div>


    	<jsp:include page="/views/common/footer.jsp"></jsp:include>
 		<!-- 푸터 -->
 	 
 	 
 	<script>
	 	function validateForm() { 

	 		var fileInput = document.getElementById('file');
	 	    var fileName = fileInput.value; 
	 	    if (fileName === "" || fileInput.files.length === 0) {
	 	        alert('포스터 파일을 첨부해 주세요.');
	 	        return false;
	 	    }
	 	    var movieTitle = document.getElementById('movieTitle').value;
	 	    if (movieTitle === "" || movieTitle.length === 0) {
	 	        alert('영화 제목을 입력해 주세요.');
	 	        return false;
	 	    }
   	 	    var runningTime = document.getElementById('runningTime').value;
	 	    if (runningTime === "" || runningTime.length === 0) {
	 	        alert('러닝타임을 입력해 주세요.');
	 	        return false;
	 	    }
   	 	    var rating = document.getElementById('rating').value;
	 	    if (rating === "" || rating.length === 0) {
	 	        alert('관람등급을 입력해 주세요.');
	 	        return false;
	 	    }
   	 	    var date = document.getElementById('date').value;
	 	    if (date === "" || date.length === 0) {
	 	        alert('개봉일을 선택해 주세요.');
	 	        return false;
	 	    }
  	 	    var director_name = document.getElementById('director_name').value;
	 	    if (director_name === "" || director_name.length === 0) {
	 	        alert('감독을 입력해 주세요.');
	 	        return false;
	 	    }
  	 	    var cast = document.getElementById('cast').value;
	 	    if (cast === "" || cast.length === 0) {
	 	        alert('출연진을 입력해 주세요.');
	 	        return false;
	 	    }
  	 	    var plot = document.getElementById('plot').value;
	 	    if (plot === "" || plot.length === 0) {
	 	        alert('줄거리를 입력해 주세요.');
	 	        return false;
	 	    }
	 	    return true;
	 	}
	</script>


</body>
</html>