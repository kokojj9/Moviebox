<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import = "com.kh.notice.model.vo.Notice"   
%>
    
<%
	Notice n =(Notice)request.getAttribute("notice");
%>       

         
    
<!DOCTYPE html>
<html lang="en">
<head>
    <title>게시글 공지상세수정페이지</title>

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
            /*border : 1px solid red;*/
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


        #box_wrap{
            /* border: 1px solid rgb(0, 255, 64); */
            width: 500px;
            height: 690px;
            margin: auto;
 
        }
        #box_category{
            /* border: 1px solid rgb(0, 183, 255); */
            width: 480px;
            height: 50px;
            margin: auto;
            float: left;
            padding-top: 5px;
            padding-left: 15px;
        }

        #box_1{
            /* border: 1px solid rgb(255, 0, 149); */
            width: 480px;
            height: 50px;
            margin: auto;
            float: left;
        }

        #box_2{ 
            /* border: 1px solid rgb(255, 0, 149); */
            width: 470px;
            height: 50px;
            float: left;
            padding-left: 17px;
        }

        #box_3{ /*form-control 테두리*/
            /* border: 1px solid rgb(255, 0, 149); */
            width: 470px;
            height: 250px;
            float: left;
            padding-left: 17px;
        }

        .fileBox{ /*form-control 테두리*/
            /* border: 1px solid rgb(0, 47, 255); */
            width: 470px;
            height: 50px;
            float: left;
            padding-left: 17px;
            margin-top: 10px;
        }
        #file {
            display: none;
            display: inline;
            float: left;
        }

        input[type=file]::file-selector-button {
            width: 130px;
            height: 40px;
            background-color: #FFC145;
            border: 1px solid lightgray;;
            border-radius: 8px;
            cursor: pointer;
            text-align: center;
            color: #323232;
        }


        
        .title_p{
            float: left;
            padding-left: 15px;
            font-size: 18px;
            font-weight: bold;
            line-height: 50px;
            color: #ffffff;
        }

        #button{
            /* border: 1px solid rgb(255, 0, 149); */
            width: 470px;
            float: left;
            margin-top: 5px;
        }

        #category{ /*카테고리*/
            border: 1px solid rgb(212, 212, 212);
            border-radius: 8px;
            width: 100px;
            height: 37px;
            font-size: 15px;
            color: #727272;
            padding-left: 7px;

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
                        <a href="${path} /selectAdmin.mb">회원 관리</a>
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
                <p id="p">게시글관리 > 공지수정</p>

            		<form action="${path}/adminBoardUpdate.admin" method="post" id="insert-box">
            			<input type="hidden" name="noticeNo" value="${notice.noticeNo}" />
            			
		            	<div id="content_2_box"><!--컨텐트2 전체박스-->
			                <div id="box_wrap">
			
			                    <div id="box_category">
			                            <select name="category" id="category" >
			                                <option value="1">예매</option>
			                                <option value="2">영화관</option>
			                                <option value="3">굿즈</option>
			                                <option value="4">기타</option>
			                            </select>
			                    </div>
			
			                    <div id="box_1">
			                        <p class="title_p">공지 제목</p>
			                    </div>
			
			                    <div id="box_2">
			                        <input type="text" class="form-control" name="title" style="border-radius: 8px;" value="${notice.noticeTitle}" >
			                    </div>
			
			                    <div id="box_1">
			                        <p class="title_p">공지 내용</p>
			                    </div>
			
			                    <div id="box_3">
			                        <textarea class="form-control" rows="5" name="content" style="resize:none; height: 250px; border-radius: 8px;">${notice.noticeContent}</textarea>
			                    </div>
			
			                    <div id="button"><!--수정 버튼-->
			                        <button type="submit" class="btn btn-warning" style="height: 30px; font-size: 12px; background-color: #FFC145; float: right; margin-right: 5px;">수정</button>
			                        <button type="button" class="btn btn-warning" style="height: 30px; font-size: 12px; background-color: #FFC145; float: right; margin-right: 5px;">목록</button>
			                    </div><!--수정 버튼-->
			                </div>
		                
		               </div><!--컨텐트2 전체박스 끝--> 
		        	</form>
	
            </div><!--content_2끝-->
        </div>

    </div>
    <jsp:include page="/views/common/footer.jsp"></jsp:include>
 	<!-- 푸터 -->
 	
 	<script>

 		window.onload = function() {
 		    var categoryValue = ${notice.categoryNo} // JSP로부터 category 값을 받아옴

 		    // 받아온 category 값에 해당하는 option을 선택
 		    $('#category').val(categoryValue);
 		};
 	
 		function noticeDelete() {
 			const result = confirm('삭제하려면 확인을 눌러주세요.');
 			
 			if(result) {
 				location.href = '${path}/adminBoardDelete.admin?noticeNo=${notice.noticeNo}';	
 			}
 			
 		}
 	</script>
</body>
</html>