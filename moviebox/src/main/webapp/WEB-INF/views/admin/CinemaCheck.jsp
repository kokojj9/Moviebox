<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import = "java.util.ArrayList, com.kh.theater.model.vo.Theater"%>
    
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
    

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
        	
        body 
        	{
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
            color: #323232;
        }

        .content_2_top{
            padding: 20px 0px 0px 40px;
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


        .tableoutline{
            display: inline;
        }

        #table{
            
            width: 800px;
            border: 1px solid lightgray;
        }

        #table > tr,td {
            height: 50px;
            width: 250px;
           
            text-align: center;
            margin-top: 10px;
            margin-right: 10px;
            color : white;
            border-bottom: 1px solid lightgray;
            
            
        }
        
       .num{
        width: 80px;
       }
      

        
       
      
            
      

       #select{
        border: 1px solid gainsboro;
        border-radius: 5px;
        width: 150px;
        height: 35px;
        
        font-size: 14px;
        
       }
   
       #find {
        width: 400px;
        height: 35px;
        border-radius: 5px;
        border: 1px solid lightgray;
        font-size: 14px;
       }

       .content_2_top{
        margin-left: 70px;
       }

       #table {
        border: 2px solid lightgray;
        margin: auto;
        margin-top: 60px;

       }



       .check{
        height: 20px;
        width: 20px;
       

       }

       .btn1{
        width: 70px;
        border: none;
        font-size: 12px;
        height: 25px;
        border-radius: 5px;
        margin-top: 44px;
        float: left;
        background-color: #FFC145;
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
        height: 70px;
        width: 100px;
        
       }

       #cnt2_paging-area {
            width: 825px;
            height: 40px;
            /* border : 1px solid rgb(0, 245, 225); */
            margin: 0 auto;
            margin-top: 0px;
            display: inline-block;
            padding: 17px  190px 0px;
        }

        .page-link{
            color: #FFC145;
        }

        #inputBox-2 {
            width: 280px;
            height: 40px;
            margin-left: 10px;
        }

        #cnt2_post{
            padding-top: 50px;
        }

        #cnt2_post{
            width: 825px;
        }

        .container{
            width: 825px;
            margin-top: -15px;

        }
        
        .test123{
        	width: 70px;
        }
        
        .theatername{
        width: 350px
        }
        
        .code{
        width: 120px
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
                        <a href="${path }/selectAdmin.mb">회원 관리</a>
                        <ul class="submenu">

                        </ul>
                    </li>
                    <li>
                        <a href="${path }/adminScreenList.admin">예매 관리</a>
                        <ul class="submenu" >

                        </ul>
                    </li>
                    <li>
                        <a href="${path }/adminMovieCheck.admin?currentPage=1">영화 관리</a>
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
                        <li><a href="${path }adminBoardCheck.admin?currentPage=1">공지 관리</a></li>
                        <li><a href="${path }/adminQnACheck.admin?currentPage=1">문의 게시글 관리</a></li>
                        </ul>
                    </li>
                </ul>    
            </div>

            <!------------------------------------------------------------>

            

            
                         <div class="content_2">
                <h2 style="color : white;">영화관 관리</h2>
                <div class="content_2_top">
                 <form action="search.cm" method="get">
                   <select name="category" id="select" >
                    <option value="name">영화관 이름</option>
                    <option value="code">지역코드</option>
                    <option value="city">지역</option>
                   </select>
                    <input type="text" id="find" name="find">
                    <button type="submit" id="btn" style="background-color: #FFC145;">
                        <svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" fill="currentColor" class="bi bi-search" viewBox="0 0 16 16">
                            <path d="M11.742 10.344a6.5 6.5 0 1 0-1.397 1.398h-.001q.044.06.098.115l3.85 3.85a1 1 0 0 0 1.415-1.414l-3.85-3.85a1 1 0 0 0-.115-.1zM12 6.5a5.5 5.5 0 1 1-11 0 5.5 5.5 0 0 1 11 0"/>
                          </svg>

                    </button>
					</form>
                    <div id="delete" >
                       <button type="button" class="btn1" onclick="enrollment();">등록</button>
                       <!-- 수정/ 삭제 클릭해서 상세조회에서 함-->
                    </div>
                    
                    <script>
                    	function enrollment(){
                    		location.href = '${ path}/insertAdmin.cm';
                    	}
                    
                    
                    </script>
                    
                    
                </div>
               

                <div id="cnt2_post"><!--게시판-->

                    <div class="container">


                        <table class="table table-hover" style="text-align: center; font-size: small;">
                          <thead>
                            <tr style="background-color: #eaeaea; margin-top: 0; height: 40px; color: #212121; border: 0px solid #cfcfcf; opacity: 0.8; text-align: center;">
                               
                                <th class="num">번호</th>
                                <th>등록일</th>
                                <th class="test123">지역</th>
                                <th class="theatername">영화관 이름</th> 
                                <th class="code">지역코드</th>
              <!--                   <th>지도 링크</th>   -->
                              
                            </tr>
                          </thead>
                          <tbody>
                          
                          <c:forEach var="t" items="${ theater}">
                            <tr class="theater">
                               
                                <td class="num">${t.theaterNo }</td>
                                <td>${t.updateDate }</td>
                                <td class="test123">${t.locationName }</td>
                                <td class="theatername">${t.theaterName }</td>
                                <td class="code">${t.localCode }</td>
                              
                                
                            </tr>
                            
                         </c:forEach>
                            
                          </tbody>
                        </table>
                        
                      </div>
                      </div>
                      	<script>
                      	
                      	$(function(){
                      		$('.theater').click(function(){
                      			const theaterNo = $(this).children().eq(0).text();
                      			location.href='${ path}/editAdmin.cm?theaterNo='+theaterNo;
                      		});
                      	})
                      	
                      	
                      	
                      	
                      	</script>


                      <div id="cnt2_paging-area"> 

                        <ul class="pagination pagination">
                            <li class="page-item"><a class="page-link" href="#"> < </a></li>
                            <li class="page-item"><a class="page-link" href="#">1</a></li>
                            <li class="page-item"><a class="page-link" href="#">2</a></li>
                            <li class="page-item"><a class="page-link" href="#">3</a></li>
                            <li class="page-item"><a class="page-link" href="#">4</a></li>
                            <li class="page-item"><a class="page-link" href="#">5</a></li>
                            <li class="page-item"><a class="page-link" href="#">6</a></li>
                            <li class="page-item"><a class="page-link" href="#">7</a></li>
                            <li class="page-item"><a class="page-link" href="#">8</a></li>
                            <li class="page-item"><a class="page-link" href="#">9</a></li>
                            <li class="page-item"><a class="page-link" href="#">10</a></li>
                            <li class="page-item"><a class="page-link" href="#"> > </a></li>
                        </ul>
        
                </div>
                      
                </div>


                

               
           

              

               </div > 
               
                </div>
             
  

 	<%@ include file="/views/common/footer.jsp" %>
 	<!-- 푸터 -->
   
   
   
   
   
   
   
</body>
</html>