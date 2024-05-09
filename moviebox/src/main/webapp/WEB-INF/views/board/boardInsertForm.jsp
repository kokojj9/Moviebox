<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<%@ page import="com.kh.board.model.vo.Category, java.util.ArrayList" %>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>문의글 등록</title>
    <style>
        body{
            background-color: #1A1A1A;
            margin: 0;
        }

        div{
            /* border: 1px solid red; */
            box-sizing: border-box;
        }

        .wrap{
            width: 1200px;
            margin: 0 auto;
        }

        /* 전체 감싸는 부분 */
        #notice-list{
            width: 1200px;
            margin: 0 auto;
            /*border: 1px solid pink;*/
        }

        /* 타이틀 */
        #title{
            text-align: center;
            color: white;
            padding-top: 50px;
            padding-bottom: 50px;
            font-size: 30px;
            font-weight: bold;
        }

        /* 카테고리*/
        #board-category{
            width: 1200px;
            height: 92px;
            text-align: center;
            line-height: 90px;
            font-size: 20px;
            font-weight: bold;
            color: white;
            border-top: 1px solid #8a8a8a;
            border-bottom: 1px solid #8a8a8a;
        }

        .notice-tap{
            width: 600px;
            height: 90px;
            float: left;
            font-weight: bolder;
            cursor: pointer;
            color: #FFC145;
        }
        
        .qna-tap{
            width: 600px;
            height: 90px;
            color: #1A1A1A;
            display: inline-block;
            left: 0;
            cursor: pointer;
            background-color: #FFC145;
        }

        .notice-tap:hover{
            background-color: #FFC145;
            color: #1A1A1A;
        }
        
        /* insert-title */
        #insert-title{
            width: 1200px;
            font-size: 25px;
            color: white;
            font-weight: bold;
            text-align: center;
            padding-top: 50px;
            padding-bottom: 5%;
            border-bottom: 1px solid #3f3f3f;

        }

        /* 내용 입력 */
        .notice-content{
            width: 1200px;
            height: auto;
            /* border: 1px solid pink; */
            color: white;
            margin-top: 20px;
        }

        .detail-box1{
            width: 1200px;
            /* border: 1px solid #FFC145; */
        }

        .detail-title-box1{
            width: 670px;
            padding-bottom: 20px;
            font-size: 20px;
            font-weight: bold;
            text-align: center;
        }


        /* 글 내용 */
        .detail-content-box{
            width: 1200px;
            margin-bottom: 40px;
            border-top: 1px solid #3f3f3f;
        }

        #insert-box{
            width: 670px;
            margin: 0 auto;
        }

        #category-box{
            height: auto;
            line-height: 35px;
            margin-top: 20px;
        }

        #title-box{
            width: 1200px;
            height: 40px;
            line-height: 35px;
            margin-top: 20px;
        }

        #content-box{
            line-height: 35px;
            margin-top: 20px;
            margin-bottom: 20px;
        }

        #box-name{
            width: 100px;
            float: left;
            padding-left: 20px;
        }

        #select-category{
            width: 200px;
            height: 40px;
            padding-left: 10px;
            border-radius: 10px;
        }

        .detail-content-a-box{
            width: 1200px;
            height: auto;
            color: white;
        }

        #select-title{
            width: 500px;
            height: 40px;
            padding-left: 10px;
            border-radius: 10px;
        }

        #select-content{
            width: 500px;
            height: 300px;
            padding-left: 10px;
            border-radius: 10px;
            padding-top: 10px;
        }

        .detail-a{
            padding: 10px;
            padding: 20px;
            border: 1px solid #3f3f3f;
        }

        #a-title{
            width: 1200px;
            font-size: 20px;
            color: white;
            font-weight: bold;
            padding-top: 50px;
            padding-bottom: 20px;
        }

        /* 버튼 */
        .notice-btn{
            width: 670px;
            margin-top: 30px;
            margin-bottom: 30px;
        }

        .notice-detail-btn{
            width: 80px;
            padding: 8px;
            font-size: 20px;
            font-weight: bold;
            border: none;
            border-radius: 10px;
            background-color: #FFC145;
            text-decoration: none;
            color: #1A1A1A;
            margin-right: 10px;
        }

        .notice-detail-btn1{
            width: 80px;
            padding: 8px;
            font-size: 20px;
            font-weight: bold;
            border: none;
            border-radius: 10px;
            background-color: #ffffff;
            text-decoration: none;
            color: #1A1A1A;
            margin-right: 10px;
        }

    </style>

</head>
<body>
	<jsp:include page="/views/common/header.jsp"></jsp:include>
	
    <div id="wrap">
        <div id="notice-detail">
            <!-- 전체 감싸는 부분 -->
            <div id="notice-list">

                <div id="title">고객센터</div>
        
                <!-- 카테고리 -->
                <div id="board-category">
	                <div class="notice-tap" onclick="openNoticePage();">공지사항</div>
	                <div class="qna-tap" onclick="openQnaPage();">QnA</div>
                </div> <!-- board-category -->

                <div id="insert-title">고객 문의사항</div>

                <div class="notice-content">
                    <div class="detail-box1">
                        <div class="detail-title-box1">
                            <div class="detail-category"><span>문의사항 작성</span></div>
                        </div>
                    </div>


                    <div class="detail-content-box">
	                    <form action="${ path }/insert.board" method="post" id="insert-box">
	                    
	                    <input type="hidden" name="userNo" value="${ loginUser.memberNo }" />
	                    
                            <div id="category-box">
                                <div id="box-name">분류</div>
                                
                                <select name="category" id="select-category">
                                
                                <c:forEach var="c" items="${ requestScope.category}">
									<option value="${ c.categoryNo }">
										${ c.categoryName } 문의
									</option>
								</c:forEach>
								
                                </select>
                           	</div> 

                            <div id="title-box">
                                <div id="box-name">제목</div>
                                <input type="text" id="select-title" name="title">
                            </div>

                            <div id="content-box">
                                <div id="box-name">내용</div>
                                <textarea id="select-content" cols="30" rows="10" name="content"></textarea>
                            </div>
	
	
	                        <div id="insert-btn" align="center">
	                            <button class="notice-detail-btn">등록</button>
                				<button type="button" class="notice-detail-btn1" onclick="history.back()">취소</button>
	                        </div>
						</form>
                    </div> <!-- detail-content-box -->


                </div> <!-- notice-content -->

            </div> <!-- notice-list -->
        </div> <!-- notice-detail -->
    </div> <!-- wrap -->

	<jsp:include page="/views/common/footer.jsp"></jsp:include>
	
	    	<script>
			function openNoticePage(){
				location.href = '${ path }/list.notice?currentPage=1';
			}
			
			function openQnaPage(){
				location.href = '${ path }/list.board?currentPage=1';
			}
			
    		function backPage(){
    			location.href = '${ path }/list.board?currentPage=1';
    		}

    	
    	</script>
	
	
</body>
</html>