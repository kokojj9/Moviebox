<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import = " java.util.ArrayList, com.kh.member.model.vo.Member" 
    %>
  

    <!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>

    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.7.1/jquery.min.js"></script>
    
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
            color : white;
            
        }

        .content_2_top{
            padding: 20px 0px 0px 40px;
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
            border: 1px solid lightpink;
        }

        #table > tr,td {
            height: 50px;
            width: 250px;
           
            text-align: center;
            margin-top: 10px;
            margin-right: 10px;
            color: white;
            border-bottom: 1px solid gray;
            
            
        }
        
       .num{
        width: 80px;
       }
      

        
       
      
            
      

       #select{
        border: 1px solid white;
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

       #table tr{
        border-bottom: 2px solid lightgray;
        
       
       }

       .check{
        height: 20px;
        width: 20px;
       

       }

       #btn1{
        width: 70px;
        border: none;
        font-size: 12px;
        height: 25px;
        border-radius: 5px;
        
        background-color: rgb(189, 187, 187);
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
        width: 90px;
        
       margin-top: 18px;
       }

       #cnt2_paging-area {
            width: 825px;
            height: 40px;
            /* border : 1px solid rgb(0, 245, 225); */
            margin: 0 auto;
            margin-top: 0px;
            display: inline-block;
            padding-left: 195px;
        }

        .page-link{
            color: white;
            background-color: #212121;
            border: 1px solid white;
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

        }

		
		
        #content2{
        height: 800px;
        width: 995.6px;
        display: inline;
        background-color: #1A1A1A;
        
       }
		
     	.page-item{
     	background-color: black;
     	}


    </style>
</head>



<body>

 <%@ include file = "/views/common/header.jsp" %>
<!-- 여기까지가 헤더 -->

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
                        <li><a href="${path }/adminBoardCheck.admin?currentPage=1">공지 관리</a></li>
                        <li><a href="${path }/adminQnACheck.admin?currentPage=1">문의 게시글 관리</a></li>
                        </ul>
                    </li>
                </ul>    
            </div>
             <div id="content2"></div>
            <div class="content_2">
                <h2>회원 관리</h2>
                <div class="content_2_top">

                 
                 <form action="search.mb" method="get">
                   <select name="category" id="select" >
                    
                    <option value="name">이름</option>
                    <option value="enrollDate">가입일</option>
                    <option value="status">활동여부</option>
                   </select>
                    <input type="text" id="find" name="finding" placeholder="키워드를 입력해주세요" >
                    <button type="submit" id="btn" style="background-color: #FFC145;">

                        <svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" fill="currentColor" class="bi bi-search" viewBox="0 0 16 16">
                            <path d="M11.742 10.344a6.5 6.5 0 1 0-1.397 1.398h-.001q.044.06.098.115l3.85 3.85a1 1 0 0 0 1.415-1.414l-3.85-3.85a1 1 0 0 0-.115-.1zM12 6.5a5.5 5.5 0 1 1-11 0 5.5 5.5 0 0 1 11 0"/>
                          </svg>
                    </button>

				</form>

                </div>
                <div id="delete" >
               
                </div>

                <div id="cnt2_post"><!--게시판-->

                    <div class="container">


                        <table class="table table-hover" style="text-align: center; font-size: small;">
                          <thead>
                            <tr style="background-color: #eaeaea; margin-top: 0; height: 40px; color: #212121; border: 0px solid #cfcfcf; opacity: 0.8; text-align: center;">
                          <!--       <th ><input type="checkbox" name="check" value="check" id="check" checked></th>  -->
                                <th>회원번호</th>
                                <th>이름</th>
                                <th>가입일</th>
                                <th>활동여부</th> 
                                <th>전화번호</th>
                            </tr>
                          </thead>
                          <tbody>
                       
                       		<c:forEach var="m" items="${ member}">
                                
                                <tr class="member">
                                <td>${m.memberNo }</td>
                                <td>${m.memberName }</td>
                                <td>${m.enrollDate }</td>
                                <td>${m.status }</td>
                                <td>${m.phone }</td>
                                
                            </tr>
                           </c:forEach>
                            
                          </tbody>
                        </table>
                      </div>
                      </div>
                      
                      <script> 
                   
                    	
                      $(function(){
                    	  
								$('.member').click(function(){
                    			const memberNo = $(this).children().eq(0).text();
                    			location.href='${path }/modifyAdmin.mb?memberNo=' + memberNo;
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
				</div>

                </div>
	 	
              
           

              

              
                
             



<%@ include file="/views/common/footer.jsp" %>


</body>
</html>