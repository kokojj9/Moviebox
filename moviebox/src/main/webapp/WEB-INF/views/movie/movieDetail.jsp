<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%@ page import="java.util.ArrayList, com.kh.movie.model.vo.*, com.kh.common.model.vo.*" %>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>영화 상세정보</title>

  <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/css/bootstrap.min.css">
  <script src="https://cdn.jsdelivr.net/npm/jquery@3.7.1/dist/jquery.slim.min.js"></script>
  <script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.1/dist/umd/popper.min.js"></script>
  <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/js/bootstrap.bundle.min.js"></script>

    <style>
        body{
            background-color: #1A1A1A;
        }

        div{
            /* border: 1px solid red; */
            box-sizing: border-box;
        }

        .wrap{
            width: 1200px;
            margin: 0 auto;
        }

        /* 전체 컨텐츠 영역 */
        #movie-detail{
            width: 1200px;
            margin: 0 auto;
            color: white;
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
        }


        /* 영화 상세정보(줄거리 등) */
        #movie-detail-box{
            width: 1200px;
            height: 470px;
            margin-top: 20px;
            color: white;
            position: relative;
        }

        #movie-detail-poster{
            position: absolute;
            width: 300px;
            height: 422px;
            left: 0;
            margin: 20px;
        }

        #movie-detail-content{
            position: absolute;
            width: 850px;
            right: 0;
            padding: 10px;
            margin: 20px;
        }

        #movie-detail-title{
            width: 830px;
            height: 60px;
            line-height: 60px;
            font-size: 25px;
            font-weight: bold;
            padding-left: 10px;
        }

        #movie-detail-etc{
            width: 830px;
            height: 40px;
            line-height: 40px;
            padding-left: 10px;
            margin-bottom: 10px;
        }

        #movie-detail-director{
            width: 830px;
            height: 40px;
            line-height: 40px;
            padding-left: 10px;
        }

        #movie-detail-actor{
            width: 830px;
            height: 40px;
            line-height: 40px;
            padding-left: 10px;
            margin-bottom: 10px;
        }

        #movie-detail-story{
            width: 830px;
            height: 130px;
            padding: 10px;
            margin-bottom: 15px;
        }
        
        #movie-story{
        	width: 830px;
        	height: 120px;
        	border-radius: 8px;
        	background-color: #1a1a1a;
        	color: white;
        	padding: 10px;
        	border: 1px solid #383838;
        	resize:none;
        }
        
        /* 스크롤바 */
        textarea {
		  scrollbar-width: thin;
		  scrollbar-color: #383838 transparent;
		}

        #movie-detail-btn{
            width: 300px;
            height: 45px;
            border: none;
            border-radius: 8px;
            font-size: 19px;
            font-weight: bold;
            margin-left: 10px;
            margin-top: 10px;
            background-color: #FFC145;
        }
        

        /* 영화 예고편 */
        #movie-detail-video{
            width: 1200px;
            margin-top: 20px;
        }

        h1{
            padding-left: 20px;
        }

        #detail-video{
            width: 1100px;
            padding-left: 50px;
        }

        /* 영화 스틸컷*/
        #movie-detail-still{
            width: 1200px;
            height: auto;
            color: pink;
            margin-bottom: 50px;
        }
        
        #stilTitle{
        	margin-top: 20px;
        	font-size: 30px;
        	color: white;
        	font-weight: bold;
        }
        
        #video-src{
        	margin-bottom: 30px;
        	padding-top: 20px;
        	padding-bottom: 20px;
        }
        
        #videoTitle{
        	margin-top: 20px;
        	font-size: 30px;
        	color: white;
        	font-weight: bold;
        }
        
        .carousel-inner{
        	margin-top: 30px;
        }
        
		.carousel-inner img {
		    width: 1200px;
		    height: auto;
	    }


    </style>
    
</head>
<body>

<body>

    <%@ include file="/views/common/header.jsp" %>
	<div id="wrap">
		<div id="movie-detail">
	<c:choose>
		<c:when test="${ movie.movieTitle eq null }">
			<div id="noMovieList">
				<a id="noMovie">조회 된 영화가 없습니다.</a>
			</div>
		</c:when>
		<c:otherwise>
            <div id="movie-detail-box">
                <div id="movie-detail-poster">
                    <img src="${ movie.filePath }/${ movie.changeName }" width="300" height="422">
                </div>

                <div id="movie-detail-content">
                    <div id="movie-detail-title">${ movie.movieTitle }</div>
                    <div id="movie-detail-etc">
                        <a>${ movie.genreName }</a> | <a>${ movie.movieRt }분</a> | <a>${ movie.movieRated }이상 관람가</a> | <a>${ movie.movieRelease } 개봉</a>
                    </div>
                    <div id="movie-detail-director">감독 | ${ movie.directorName }</div>
                    
                    <c:choose>
                    	<c:when test="${ empty cast }">
                    		<div id="movie-detail-actor">출연진 | 없음</div>
                    	</c:when>
                    	<c:otherwise>
                    		<div id="movie-detail-actor">출연진 | ${ cast }</div>
                    	</c:otherwise>
                    </c:choose>
                    
                    <div id="movie-detail-story"><textarea id="movie-story" readonly>${ movie.movieStory }</textarea>
                    </div>
                    
                   <c:choose>
	                   <c:when test="${ empty loginUser }">
	                    	<button id="movie-detail-btn" onclick="noMember();">예매하기</button>
	                   </c:when>
		               <c:otherwise>
	                		<button id="movie-detail-btn" onclick="reservationPage();">예매하기</button>
				      </c:otherwise>
                	</c:choose>
                
                </div>
            </div>

            <div id="movie-detail-video">
                <a id="videoTitle">예고편</a>
                
                <div id="video-src">
                    <iframe width="1200" height="600" src="${ movie.trailerVideo }"></iframe>
                </div>
            </div>
            
             <div id="movie-detail-still">
                <a id="stilTitle">스틸컷</a>

				<div id="demo" class="carousel slide" data-ride="carousel">
				
				  <!-- Indicators -->
				  <ul class="carousel-indicators">
				    <li data-target="#demo" data-slide-to="0"></li>
				    <li data-target="#demo" data-slide-to="1"></li>
				    <li data-target="#demo" data-slide-to="2"></li>
				    <li data-target="#demo" data-slide-to="3"></li>
				  </ul>
				  
				  <!-- The slideshow -->
		   	      <div class="carousel-inner">
				      <c:forEach var="attachment" items="${stilCut}" varStatus="loop">
			              <div class="carousel-item <c:if test="${loop.index == 0}">active</c:if>">
						  	<img src="${attachment.filePath}/${attachment.changeName}" alt="Image">
						  </div>
					  </c:forEach>
				  </div>
				  
				  <!-- Left and right controls -->
				  <a class="carousel-control-prev" href="#demo" data-slide="prev">
				    <span class="carousel-control-prev-icon"></span>
				  </a>
				  <a class="carousel-control-next" href="#demo" data-slide="next">
				    <span class="carousel-control-next-icon"></span>
				  </a>
				</div>
 
            </div>
    	</c:otherwise>
    </c:choose>
    	</div> <!-- movie-detail-->
    </div> <!-- wrap -->
    
    
        <%@ include file="/views/common/footer.jsp" %>
        
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

</body>
</html>