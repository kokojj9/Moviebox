<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import="java.util.List,java.util.ArrayList,com.kh.common.model.vo.Location"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>예매관리</title>
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
        }


        #p{
            margin-top: 24px;
            margin-bottom: 30px;
            font-size: x-large;
            font-weight: bold;
            
        }  

        /* -------------------------------------------*/

        .theater-area{
            width: 100%;
            height: 100%;
        }

        .theater-location-list{
            width: 100%;
            height: 10%;
        }
        #location-area{
            text-align: center;
           font-size: 20px;
           width: 30%;
           background-color: #FFC145;
           font-weight: bold;
        }
        .theater-content{
            height: 90%;
            width: 100%;
            padding: 20px 20px;
        }
        .printTheaterName{
            float: left;
            height: 60px;
            width: 33%;
            padding: 15px 15px 15px 15px;
            font-size: 20px;
            text-align: center;
            
        }
        .printTheaterName > a{
        	color: rgb(238, 238, 238);
        	text-decoration: none;
            font-weight: 700;
        }
        
        .printTheaterName > a:hover{
			color: rgb(255, 193, 69);
            text-decoration: none;
        }


    </style>
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

            <div class="content_2">
              
                <div class="theater-area">
                    <div class="theater-location-list">
                        <select name="location" id="location-area">

                        </select>

                    </div>
                    <div class="theater-content">
                        
                    </div>


                </div>
            </div>
        </div>
    </div>
		</c:otherwise>
	</c:choose>
    
    

    <script>
    var date = new Date();
    
    var year=date.getFullYear();

    var month= ('0' + (date.getMonth() + 1)).slice(-2);

    var day= ('0' + date.getDate()).slice(-2);
        $(function(){
            
			// 지역 추가
            $.ajax({
                url : 'locationList.admin',   
                success : result => {

                    let value = '';
                    for(let i in result){
                    	
                        value = '<option value=' + result[i].locationCode +'>' + result[i].locationName + '</option>'
                        $('#location-area').append(value);
                    }
                },
                async : false
            });
			// 처음 화면설정
            $.ajax({
                    url : 'selectLocation.admin',
                    type : 'get',
                    data : {
                        locationCode : $('option:selected').val()
                    },
                    success : function(result){
                        var resultStr = '';
                        for(let i = 0; i < result.length; i++){
                            
                            resultStr += '<div class="printTheaterName"><a href="${ path }/adminDetailTheater.admin?theaterNo=' +result[i].theaterNo +'&watchDate='+ year + '-' + month + '-' + day +'">'+ result[i].theaterName +'</a></div>';
                        }
                        $('.theater-content').html(resultStr);
                    }
                    
                });

        });
        // 이후 선택 화면
        $('#location-area').change(function(){
            $.ajax({
                    url : 'selectLocation.admin',
                    type : 'get',
                    data : {
                        locationCode : $('#location-area').val()
                    },
                    success : function(result){
                        var resultStr = '';
						for(let i = 0; i < result.length; i++){
                            console.log(result);
                            resultStr += '<div class="printTheaterName"><a href="${ path }/adminDetailTheater.admin?theaterNo=' +result[i].theaterNo +'&watchDate='+ year + '-' + month + '-' + day +'">'+ result[i].theaterName +'</a></div>';
                        }
                        $('.theater-content').html(resultStr);
                    }
                    
                });
            });

    </script>


 	<jsp:include page="/views/common/footer.jsp" />
 	<!-- 푸터 -->

</body>
</html>