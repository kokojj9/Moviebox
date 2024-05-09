<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import="com.kh.movie.model.vo.Movie,java.util.List,java.util.ArrayList,com.kh.theater.model.vo.Screen,com.kh.theater.model.vo.Theater,java.text.SimpleDateFormat,java.util.Date,com.kh.movie.model.vo.Movie"%>
    
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>


<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>상영관 상세관리</title>
<link rel="stylesheet" href="resources/css/admin/adminDetailTheater.css">
</head>
<body>
	<!-- 헤더 -->
   <jsp:include page="/views/common/header.jsp"></jsp:include>

	<c:choose>
		<c:when test="${ loginUser eq null }">
			
			<script>
				location.href = ('${ path }/loginForm.me');
			</script>
			
		</c:when>
		<c:when test='${ loginUser.privilege eq "N" }'>
			<script>
				location.href = ('${ path }');
			</script>
		</c:when>
		<c:otherwise>

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
                        <a href="${ path }/selectAdmin.mb">회원 관리</a>
                        <ul class="submenu">

                        </ul>
                    </li>
                    <li>
                        <a href="${ path }/adminScreenList.admin">상영관 관리</a>
                        <ul class="submenu" >

                        </ul>
                    </li>
                    <li>
                        <a href="${ path }/adminMovieCheck.admin?currentPage=1">영화 관리</a>
                        <ul class="submenu" >

                        </ul>
                    </li>
                    <li>
                        <a href="${ path }/checkAdmin.cm">영화관 관리</a>
                        <ul class="submenu">

                        </ul>
                    </li> 
                    <li class="post">
                        <a href="#">게시글 관리</a>
                        <ul class="submenu">
                        <li><a href="${ path }/adminBoardCheck.admin?currentPage=1">공지 관리</a></li>
                        <li><a href="${ path }/adminQnACheck.admin?currentPage=1">문의 게시글 관리</a></li>
                        </ul>
                    </li>
                </ul>    
            </div>

            <!------------------------------------------------------------>

            <div class="content_2"><!--content_2 시작-->
                <div class="date-area">
                    ${ theater.theaterName }
                    <input type="date" id="today">
                </div>

                <div id="screenList-top">
                <c:choose>
                	<c:when test="${!empty screenList }">
                	<div class="row" >
                		<c:forEach var="i" begin="0" end="3">
                			<div class="screenList col-sm-6 " style="height: 250px;margin-top: 40px">
                        
	                            <div class="screenList-title">${ screenList[i].screenName }관</div>
	                            <c:set var="movieList" value="${ screenList[i].movieList }"/>
	                            <c:forEach var="j" begin="0" end="${ movieList.size()-1 }" >
	                            	<div>
	                            		 <select name="movie" id="${ movieList[j].screenNo }">
	                            		 <c:forEach var="m" items="${ movieNameList }">
	                            		 	<option value="${ m.movieNo }">${ m.movieTitle }</option>	
	                            		 </c:forEach>
	                            		 
	                            		 </select>
	                            		 <input type="time" value="${ movieList[j].watchDate }">
	                            		 
	                            		  <script>
	                            		  	$('#${ movieList[j].screenNo }').val('${ movieList[j].movieNo }').prop("selected",true);
			                              </script>
	                            	</div>
	                            </c:forEach>

	          
                           </div>
                		</c:forEach>
                	
                	
                	</div>
                	</c:when>
                </c:choose>
                
                </div>
				<div id="insertScreen-area">
					<select id="screenName">
						<c:forEach var="i" begin="1" end="4">
							<option value="${ i }">${ i }관</option>
						</c:forEach>
						
					</select>
					<select id="selectMovie" >
						<c:forEach var="m" items="${ movieNameList }">
                           	<option value="${ m.movieNo }">${ m.movieTitle }</option>
 
                       	</c:forEach>
					</select>
					<select id="watchTime">
						<option>01:00</option>
						<option>07:00</option>
						<option>10:00</option>
						<option>13:00</option>
						<option>16:00</option>
						<option>19:00</option>
						<option>21:00</option>
					</select>
					<button id="insertScreen">추가</button>
				</div>
            </div><!--content_2끝-->
        </div>

    </div>
		</c:otherwise>
		
	</c:choose>
	
    
    
    <script>
    const theaterNo = ${ theater.theaterNo };
    </script>
	<script src="resources/js/admin/adminDetailTheater.js"></script>
 	<jsp:include page="/views/common/footer.jsp"></jsp:include>
 	<!-- 푸터 -->

</body>
</html>