<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="com.kh.movie.model.vo.Movie, java.util.ArrayList, com.kh.common.model.vo.PageInfo" %>
  
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
  

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>영화목록</title>
	<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.7.1/jquery.min.js"></script>
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/css/bootstrap.min.css">
    <script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.1/dist/umd/popper.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/js/bootstrap.bundle.min.js"></script>




    <style>

        
        div{
           /* border : 1px solid red;  */
            box-sizing : border-box;
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

        #select{ /*셀렉박스*/
            border: 1px solid gainsboro;
            border-radius: 5px;
            width: 150px;
            height: 35px;
            font-size: 15px;
        }

        #searchTitle { /*검색창*/
            width: 300px;
            height: 35px;
            border-radius: 5px;
            border: 1px solid lightgray;
            font-size: 15px;
			margin-left: 100px;/*셀렉창 지워서 검색창 중앙으로 배치*/
			padding-left: 7px;
        }



       #btn{
        height: 31px;
        width: 50px;
        border: none;
        border-radius: 5px;
        margin-right: 0px;
       }




        /* -------------------------------------------*/

        #content_2_box { /*컨텐트2 전체 div*/
            width: 770px;
            height: 700px;
            /* border : 1px solid rgb(255, 150, 79); */
        }
        
        #cnt2_box_wrap { /*셀렉,인풋,버튼 div*/
            width: 540px;
            height: 40px;
            /* border : 1px solid blue; */
            margin: 0 auto;
            margin-top: 20px;
            margin-bottom: 10px;
        }








        #cnt2_btn {   /*버튼 div*/
            width: 160px;
            height: 40px;
            /* border : 1px solid rgb(0, 255, 55); */
            float: right;
            margin-top: 5px;
            margin-right: 19px;
        }

        .btn-outline-secondary:hover{
            background-color: #dddddd;
            border-color: #c2c2c2;
            color: #212121;
        }

        .btn-outline-secondary {
            border-color: #c2c2c2;
            color: #212121;
        }
        
        #cnt2_post {
            width: 770px;
            height: 500px;
            /* border : 1px solid rgb(255, 0, 200); */
            margin: 0 auto;
            margin-top: 10px;
            display: inline-block;
        }

        #cnt2_paging-area {
            width: 720px;
            height: 40px;
            /* border : 1px solid rgb(0, 245, 225); */
            margin: 0 auto;
            margin-left: 25px;
            margin-top: 5px;
            display: inline-block;
            padding-left: 155px;
        }

        .page-link{
            color: #212121;
        }

        #inputBox-2 {
            width: 280px;
            height: 40px;
            margin-left: 10px;
        }
        #p{
            margin-top: 24px;
            margin-bottom: 30px;
            font-size: x-large;
            font-weight: bold;
            color: #ffffff;
        }  

        td{
            color: #ffffff;
        }


		tr:hover td {
		    background-color: #2c2c2c; 
		    color: #ffffff;
		}

    </style>
</head>
<body>

	<!-- 헤더 -->
    <jsp:include page="/views/common/header.jsp"></jsp:include>
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
                        <a href="${ path }/adminScreenList.admin">예매 관리</a>
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
            <div class="content_2">
                <p id="p">영화 관리</p>
                <div id="content_2_box"><!--컨텐트2 전체박스-->
                    

                    <div id="cnt2_box_wrap"> <!-- 셀렉, 인풋, 버튼 전체 -->
                            <input type="text" id="searchTitle" placeholder="영화 제목을 입력해 주세요.">
                            <button type="button" id="btn" style="background-color: #FFC145; height: 35px;" class="keyword">
                                <svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" fill="currentColor" class="bi bi-search" viewBox="0 0 16 16">
                                    <path d="M11.742 10.344a6.5 6.5 0 1 0-1.397 1.398h-.001q.044.06.098.115l3.85 3.85a1 1 0 0 0 1.415-1.414l-3.85-3.85a1 1 0 0 0-.115-.1zM12 6.5a5.5 5.5 0 1 1-11 0 5.5 5.5 0 0 1 11 0"/>
                                </svg>
                            </button>
                            
                    </div><!-- 셀렉, 인풋, 버튼 전체 -->


                    <div id="cnt2_btn"><!--등록 버튼-->
                        <button type="button" class="btn btn-warning" style="height: 30px; font-size: 12px; background-color: #FFC145; float: right;" onclick="insertButton()";
                        >등록</button>

                    </div><!--등록 버튼-->
                




                    <div id="cnt2_post"><!--게시판-->

                        <div class="container">

    
                            <table class="table table-hover" style="text-align: center; font-size: small;">
                              <thead>
                                <tr style="background-color: #eaeaea; margin-top: 0; height: 40px; color: #212121; border: 0px solid #cfcfcf; opacity: 0.8; text-align: center;">
                                    <th>번호</th>
                                    <th>개봉일</th>
                                    <th>영화 제목</th>
                                    <th>장르</th>
                                    <th>관람등급</th>
                                    <th>등록일</th>
                                </tr>
                              </thead>
				                    <tbody id="tbody">
	                              	<c:choose>
				                    	<c:when test="${ empty adminMovieCheckList }"></c:when>
									 <c:otherwise>
									 	<c:forEach var="m" items="${ requestScope.adminMovieCheckList }">
											<tr>
			                                    <td>${ m.movieNo }</td>
			                                    <td>${ m.movieRelease }</td>
			                                    <td>${ m.movieTitle }</td>
			                                    <td>${ m.genreNo }</td>
			                                    <td>${ m.movieRated }</td>
			                                    <td>${ m.movieUpdate }</td>

			                                </tr>
		                                </c:forEach>
	                                </c:otherwise>
			                     </c:choose>
                              </tbody>
                            </table>
                          </div>


                          
                    </div><!--게시판끝-->

					
                    
                    <div class="paging-area" align="center" style="margin-top:12px;">
                    	
                    	<c:if test="${ pageInfo.currentPage > 1 }">
	                    	<button class="btn btn-outline-secondary" style="color:white; border: 1px solid white;"
						        onclick="location.href='${path}/adminMovieCheck.admin?currentPage=${pageInfo.currentPage - 1}'"> < </button>
                    	</c:if>
                    	
                    	<c:forEach var="i" begin="${pageInfo.startPage}" end="${pageInfo.endPage}" >
                    	
                    		<c:choose>
                    			<c:when test="${ pageInfo.currentPage ne i }">
									<button class="btn btn-outline-secondary" style="color:white; border: 1px solid white;"
							        onclick="location.href='${path}/adminMovieCheck.admin?currentPage=${i}'">${i}</button>
		                        </c:when>
		                        <c:otherwise>
									 <button disabled class="btn btn-outline-secondary" style="color:#ffffff">
									 ${i}</button>                       
		                        </c:otherwise>
	                        </c:choose>
                        </c:forEach>
                        
                        <c:if test="${ pageInfo.currentPage ne pageInfo.maxPage }">
	                        <button class="btn btn-outline-secondary" style="color:white; border: 1px solid white;"
						        onclick="location.href='${path}/adminMovieCheck.admin?currentPage=${pageInfo.currentPage + 1}'"> > </button>
						</c:if>
                    </div>
                    <!--페이지 숫자-->




                </div><!--content_2_box끝 컨텐트2 전체박스임-->





            </div>
        </div>

    </div>
 	
 	    <jsp:include page="/views/common/footer.jsp"></jsp:include>
 	<!-- 푸터 -->
 	
 	<script>
 		function insertButton(){
 			location.href = '${path}/adminMovieInsert.admin';
 		}
 		
 		$('#tbody').on('click', 'tr', function(){
 		    const children = $(this).children();
 		    
 		    if (children.length === 0) {
 		        return;
 		    }
 		    
 		    const movieNo = children.eq(0).text();
		    
			location.href='${path}/adminMovieDetail.admin?movieNo=' + movieNo;
 		});
    	
    	$('.keyword').on('click', function(){
    		console.log( $('#searchTitle').val());
    		$.ajax({
				url : 'searchTitle',
				//		name		value(input일때)
				data : {keyword : $('#searchTitle').val(),
					currentPage : 1},
				type : 'get',
				success : function(result){
					console.log(result);
					$('#tbody').html('');	
					let resultStr = '';
					for(let i = 0; i < result.length; i++) {
						
						resultStr += '<tr>'
								  + '<td>' + result[i].movieNo + '</td>'
								  + '<td>' + result[i].movieRelease + '</td>'
								  + '<td>' + result[i].movieTitle + '</td>'
								  + '<td>' + result[i].genreNo + '</td>'
								  + '<td>' + result[i].movieRated + '</td>'
								  + '<td>' + result[i].movieUpdate + '</td>'
								  + '</tr>'
								  
					};
					
					$('#tbody').html(resultStr);	
				}
    		});
    	})
	</script>
</body>
</html>