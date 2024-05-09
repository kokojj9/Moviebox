<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import = "java.util.ArrayList, com.kh.common.model.vo.Location"%>
    
   
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>

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

        .content_2_top{
            padding: 20px 0px 0px 40px;
            height: 80px;
            width: 880px;
            border-bottom: 2px solid lightgray;
            
        }
        .menu {
            width: 200px;
            overflow: hidden;
            margin: 20px auto;
            padding: 0%;
            height: 500px;
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
            display : block;
        }


        .menu a:hover {
            color: #1A1A1A;
            text-decoration: none;
        }
        .submenu > li {
            line-height: 57px;
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


     
     #select{
        
        display: inline;
     }
       
       

      
       

       
       #btn1{
        width: 100px;
        border: none;
        font-size: 14px;
        height: 35px;
        border-radius: 8px;
        
        background-color: #FFC145;
      }

      #btn1:hover{
        box-shadow: 10px;
      }


       #btn{
        height: 31px;
        width: 35px;
        border: none;
        border-radius: 5px;
        margin-right: 0px;
       }

       #delete{
        float: right;
        width: 100px;
        height: 50px;
        
       }

       #content_2_content{
        height: 500px;
        width: 880px;
        margin-top: 110px;
        
       
       }
       #content_2_content> div {
     
        
        height: 40px;
      
        margin: 20px 0px 20px;
       
       }
     

      
      .input{
       float: right;
       text-align: center;
       height: 39px;
       width: 650px;
       border-radius: 5px;
       font-size: 15px;
       border: 1px solid white;
       color: dimgray;
       
    }

    .input1{
        float: right;
        text-align: center;
        height: 39px;
        width: 527px;
        font-size: 15px;
        border-radius: 5px;
        margin-left: 25px;
        border: 1px solid white;
        color: dimgray
     

    }

    .input2{
        float: right;
        text-align: center;
        height: 39px;
        width: 99px;
        font-size: 15px;
        border-radius: 5px;
        margin-left: 25px;
        border: 1px solid #fff;
        color: dimgray
      
    }
    .name {
        font-size: 20px;
        font-weight:600;
        color: white;
        margin-left: 15px;
    }

    #address{
        width: 200px;
        display: inline;
        
    }
    
    #map {
    
     	float: right;
        text-align: center;
        height: 39px;
        width: 650px;
        font-size: 15px;
        border-radius: 5px;
        margin-left: 25px;
        border: 1px solid #fff;
        color: dimgray;
       	background-color:white;
    
    
    
    }

    

       
     

     


    </style>
</head>

<!-- 여기까지가 헤더 -->

<body>
<%@ include file = "/views/common/header.jsp" %>
    <div id="wrap">
    
    
        <!-- jsp에서 header include하기 -->
    
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
                        <a href="${path }/checkAdmin.cm">영화관 관리</a>
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
            <div class="content_2">
                <h2>영화관 관리 〉영화관 등록</h2>
                <div class="content_2_top">
                
            </div>
             <form action="${ path }/enroll.cm" method="post"> 
            
            
            <div id="content_2_content" >
                
               
               
                <div> 
                
                    <span class="name" id="region">지역</span>
                     
                    <select name="region" class="input" style="width: 650px; height: 39px;">
                     
                      
                      <c:forEach var="l" items="${location }"> 
                       <option value="${l.locationCode }">
                       ${l.locationName }
                       </option>
                    </c:forEach>   
                    </select>
                	
                </div>
                <div>
                    <span class="name">영화관 이름</span>
                    <input type="text" class="input" placeholder="영화관 이름을 입력하시오" name="cinemaname">
                </div>
              
                <div><span class="name">주소</span>
                    
                        <input type="text" class="input" placeholder="상세주소를 입력해주시오" name="address">
					</div>
                   
				  <div>
                    <span class="name">지도</span>
                     <textarea name="link" id="map" cols="30" rows="10"></textarea>
                </div>
                   
	 			<div></div>
                <div id="delete" >
                    <input type="submit" id="btn1" value="등록"></button>
                </div>
                    </form>
                     
                </div>

                </div>
              
               
                
              
                
            </div>
                 
                </div>
       
                </div>
                      
                </div>

       

               </div > 
                
             






</body>
</html>