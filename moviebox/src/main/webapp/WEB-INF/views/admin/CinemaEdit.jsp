<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import = "com.kh.theater.model.vo.Theater"%>
    
  
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>영화관 정보조회</title>

    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.7.1/jquery.min.js"></script>
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/css/bootstrap.min.css">
    <script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.1/dist/umd/popper.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/js/bootstrap.bundle.min.js"></script>


    <style>
        
 *{
            box-sizing: border-box;
        }
        body {
            background-color: #1A1A1A
        }
      
            div{
                
           /* border : 1px solid red; */
            box-sizing : border-box;
        }
        /* 전체를 감싸는 #wrap div */
        #wrap{
            /*width: 1200px;*/
            margin: 0 auto;
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
        .top_2{
            display: inline-block;
            width: 200px;
            height: 150px;
            background-color: #212121;
            float: right;
            margin-right: 150px;
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
            color: white;
        }
        .menu {
            width: 200px;
            overflow: hidden;
            margin: 20px auto;
            padding: 0%;
        }
        .menu > li {
            width: 198px;
            text-align: center;
            line-height: 40px;
            background-color: #323232;
            list-style: none;
        }
        .menu a {
            color: #fff;
            text-decoration: none;
            font-weight: bold;
        }
        .menu a:hover {
            color: #1A1A1A;
            text-decoration: none;
        }
        .submenu > li {
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
            padding-top: 30px;
        }
        .top_2 > span > a{
            text-decoration: none;
            color: white;
            display: inline-block;
            text-align: center;
        }
        .top_2 {
            line-height: 150px;
            text-align: center;
        }

        .menu .submenu{
            padding-left: 0;
        } 


        .table table-hover{
            
            
            border: 2px solid #eaeaea             
        }

        .title{
            background-color: rgba(211, 211, 211, 0.171);
            width: 120px;
            text-align: center;
            color: white;
            font-size: 14px;
            font-weight: bolder;
            line-height: 80px;
            border-bottom : 1px solid gray;
           
        }

        #table > tr,td {
            height: 10px;
            width: 250px;
            font-size: 14px;
            text-align: left;
            margin-top: 10px;
            margin-right: 10px;
            line-height: 80px;
            border-bottom: 1px solid gray;
            color : white;
            
            
        }
        
        .input1{
        	height: 50px;
            width: 550px;
            font-size: 14px;
            text-align: left;
            margin-top: 10px;
            marin-right : -90px;
            margin-left : 10px;
            line-height: 80px;
           	border : none;
            color : white;
            background-color : #1A1A1A;
        
        }

       
      

       
       
       #buttoon{
        float: right;
        margin-top: 10px;
        margin-right: 30px;
       }
            
       .btn1{
        height: 30px;
        width: 60px;
        background-color: #FFC145;
        color: rgb(77, 77, 77);
        border: gainsboro;
        border-radius: 5px;
        font-size: 12px;
        font-weight: bolder;
        
       } 

       .content_2_top {
        margin-top: 70px;
        height: 550px;
       }
       
       #toptitle{
       margin-bottom : 40px
       }

   



    </style>
</head>
<body>
   <%@ include file = "../common/header.jsp" %>
<!-- 여기까지가 헤더 -->

<body>
    <div id="wrap">
        <!-- jsp에서 header include하기 -->
    
        <div id="top_wrap">
            <div class="top_1">
                <h1>관리자</h1>
            </div>
            <div class="top_2" style="color: white;">
               
            </div>
        </div>
        <div id="content">
           <div class="content_1">
                <ul class="menu">
                    <li>
                        <a href="${ path}/selectAdmin.mb">회원 관리</a>
                        <ul class="submenu">

                        </ul>
                    </li>
                    <li>
                        <a href="${ path}/adminScreenList.admin">예매 관리</a>
                        <ul class="submenu" >

                        </ul>
                    </li>
                    <li>
                        <a href="${ path}/adminMovieCheck.admin?currentPage=1">영화 관리</a>
                        <ul class="submenu" >

                        </ul>
                    </li>
                    <li>
                        <a href="${path }/checkAdmin.cm">영화관 관리</a>
                        <ul class="submenu">

                        </ul>
                    </li> 
                    <li class="post">
                        <a href="#">게시글 관리</a>
                        <ul class="submenu">
                        <li><a href="${ path}/adminBoardCheck.admin?currentPage=1">공지 관리</a></li>
                        <li><a href="${ path}/adminQnACheck.admin?currentPage=1">문의 게시글 관리</a></li>
                        </ul>
                    </li>
                </ul>    
            </div>
            <div class="content_2">
            <form action="${ path }/modify.cm" method="post">
                <div id=toptitle>
                <h2> 영화관 상세 정보</h2>              
                </div>
                    <table class="table table-hover"  style="height: 290px;">
                       
                        
                            <tbody>
                            
                            <tr>
                            <th class="title">영화관 번호</th>
                            <td><input type="text" class="input1" name="theaterNo" value="${theater.theaterNo }"></td>
                        </tr>
                            
                              <tr>
                            <th class="title">영화관 이름</th>
                            <td><input type="text" class="input1" name="name" value="${theater.theaterName }"></td>
                        </tr>
                           
                            <tr>  
                              <th class="title">주소</th>
                              <td><input type="text" class="input1" name="address" value="${theater.theaterAddr }"></td>
                              
                            </tr>
                            <tr>  
                              <th class="title">지도</th>
                              <td>
                              	<a href="${theater.mapLink }">지도보기</a>
                                 <input type="text" id="map" class="input1" name="link" value="${theater.mapLink }"></td>
                            </tr>  
                            <tr>
                              <th class="title">지역</th>
                              <td><input type="text" id="map" class="input1" name="code" value="${theater.locationName }"></td>
                            </tr>
                            <tr>  
                              <th class="title">등록일</th>
                              <td><input type="text" class="input1" name="updateDate" value="${theater.updateDate }"></td>
                            </tr>
                           
                              
                              </table>
                              </tbody>
                              <div id="buttoon">
                   <button type="submit" class="btn1">수정</button>
                    </form>
                   <button type="button" class="btn1" onclick="deleleteCinema();">삭제</button>
                   <button  type="button" class="btn1" onclick="history.back()">닫기</button>
                </div>
                </div>
                </div>
  
                <script>
                
               
                
              
                function deleleteCinema(){
                	location.href = '${ path }/deleteCinema.cm?theaterNo=${theater.theaterNo}';
                }
                
                function check(){
                	location.href = '${ path }/checkAdmin.cm';
                }
  
                </script>
                
          
        </div>
	



<%@ include file = "../common/footer.jsp" %>


</body>
</html>