<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%@ page import="com.kh.board.model.vo.Board,
				 com.kh.common.model.vo.PageInfo,
 				 java.util.ArrayList"%>
 				 
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>고객센터 Q&A</title>

    <style>
        body{
            background-color: #1A1A1A;
            margin: 0;
        }

        div{
            box-sizing: border-box;
        }

        .wrap{
            width: 1200px;
            margin: 0 auto;
        }

        /* 전체 감싸는 부분 */
        #board-list{
            width: 1200px;
            margin: 0 auto;
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
        

        /* 검색 */
        #search-notice{
            width: 480px;
            height: 55px;
            margin: 0 auto;
            margin-top: 30px;
            margin-bottom: 30px;
            padding-top: 5px;
        }

        #search-img{
            width: 40px;
            height: 30px;
            float: left;
            margin-left: 10px;
            cursor: pointer;
        }

        #input-notice{
            width: 400px;
            height: 45px;
            border: none;
            float: left;
            border-radius: 8px;
            margin-left: 10px;
            background: none;
            color: white;
            padding-left: 8px;
            border: 1px solid #8a8a8a;
        }

        #input-notice::placeholder{
            font-size: 15px;
            color: #FFC145;
        }


        /* 게시판 */

        table{
            border-collapse: separate;
            border-spacing: 0;
            font-size: 15px;
            color: white;
        }
        

        .table-hover{
        	color: #ffffff;
        }

        th{
            background-color: #bbbbbb;
            color: #1A1A1A;
            font-weight: bold;
            font-size: 16px;
            border-bottom: none;
            line-height: 50px;
        }

        td{
            line-height: 40px;
        }

        tr:hover td{
            color: white;
            background-color: #d1d1d11f;
        }

  

        /* 게시판 너비 */
        
        #list-th{
        	color: 1A1A1A;
        	border-bottom: 1px solid #bbbbbb46;
        }
        
        #list-no{
            width: 70px;
            text-align: center;
            color: white;
            border-bottom: 1px solid #bbbbbb46;
        }

        #list-ca{
            width: 100px;   
            text-align: center;
            color: white;
            border-bottom: 1px solid #bbbbbb46;
        }

        #list-title{
            width: 700px;
            color: white;
            border-bottom: 1px solid #bbbbbb46;
        }

        #list-date{
            width: 110px;
            text-align: center;
            color: white;
            border-bottom: 1px solid #bbbbbb46;
        }

        #list-count{
            width: 80px;
            text-align: center;
            color: white;
            border-bottom: 1px solid #bbbbbb46;
        }
        
        #list-th-i{
        	width: 100px;
        	text-align: center;
        	border-bottom: 1px solid #bbbbbb46;
        }

        /* 페이징바 */
        .btn-outline-danger:hover{
            background-color: #FFC145;
            border: none;
        }

        #page{
            width: 1200px;
            margin-top: 40px;
            margin-bottom: 40px;
        }
        
        
        /* 글쓰기 버튼 */
        #qna-insert-btn{
            width: 100px;
            height: 40px;
            float: right;
            border: none;
            border-radius: 8px;
            margin-right: 44px;
            margin-bottom: 15px;
            font-size: 15px;
            font-weight: bold;
            background-color: #FFC145;
        }


    </style>
</head>
<body>
    
    <jsp:include page="/views/common/header.jsp"></jsp:include>
       	
    <div id="wrap">

        <!-- 전체 감싸는 부분 -->
        <div id="board-list">

            <div id="title"><a>고객센터</a></div>
                
            <!-- 카테고리 -->
            <div id="board-category">
                <div class="notice-tap" onclick="openNoticePage();">공지사항</div>
                <div class="qna-tap" onclick="openQnaPage();">Q&A</div>
            </div> <!-- board-category -->

            <!-- 검색 -->
            <div id="search-notice">

                <div id="search-notice-input">
                    <input id="input-notice" type="text" placeholder="검색어를 입력해 주세요.">
                </div>

                <div id="search-img">
                    <img src="${ path }/resources/img/search.PNG" width="45" height="45">
                </div>

            </div> <!-- search-notice -->
            
            <div id="qna-insert">
            <c:choose>
            	<c:when test="${ empty loginUser }">
                	<button id="qna-insert-btn" onclick="noMember();">글쓰기</button>
                </c:when>
                
                <c:otherwise>
            		<button id="qna-insert-btn" onclick="boardInsert();">글쓰기</button>
            	</c:otherwise>
            </c:choose>
            </div>


            <!-- 게시판 -->
            <div class="container">
                <table class="table table-hover">
                    <thead>
                        <tr>
                            <th id="list-th-i">번호</th>
                            <th id="list-th-i">카테고리</th>
                            <th id="list-th">제목</th>
                            <th id="list-th-i">작성자</th>
                            <th id="list-th-i">작성일</th>
                        </tr>
                    </thead>
                    <tbody>
                    
						<c:choose>
							<c:when test="${ empty boardList }">
							
		                        <tr>
		                            <td colspan="5" style="color: white;">조회 된 문의사항이 없습니다. </td>
		                        </tr>
	                        </c:when>
	                        <c:otherwise>
	                        	<c:forEach var="b" items="${ requestScope.boardList }">
	                        <tr class="board">
	                            <td id="list-no">${ b.boardNo }</td>
	                            <td id="list-ca">${ b.boardCategory }</td>
	                            <td id="list-title">${ b.boardTitle }</td>
	                            <td id="list-count">${ b.boardWriter }</td>
	                            <td id="list-date">${ b.createDate }</td>
	                        </tr>
	                        	</c:forEach>
	                        </c:otherwise>
						</c:choose>
                    </tbody>
                </table>
            </div>

            <div id="page">
                <div class="paging-area" align="center" style="margin-top:12px;">
          			<c:if test="${ pageInfo.currentPage > 1}">
		          			<button class="btn btn-outline-secondary" style="color:white; background: none; border: 1px solid white;"
		          			onclick="location.href='${ path }/list.notice?currentPage=${ pageInfo.currentPage - 1 }'"> < </button>
		          	</c:if>
	                    
	                <c:forEach begin="${ pageInfo.startPage }" end="${ pageInfo.endPage }" var="i" >
	                	<c:choose>
		                	<c:when test="${ pageInfo.currentPage ne i }">
						        <button class="btn btn-outline-secondary" style="color:white; border: 1px solid white;"
						        onclick="location.href='${ path }/list.notice?currentPage=${ i }'">${ i }</button>
						    </c:when>
						    <c:otherwise>
						    	<button disabled class="btn btn-outline-secondary" style="color:white; background-color:#6c757d; border: 1px solid white;">${ i }</button>
						    </c:otherwise>
					    </c:choose>
	                </c:forEach>
	                
	                	<c:if test="${ pageInfo.currentPage ne pageInfo.maxPage }">
			                <button class="btn btn-outline-secondary" style="color:white; background: none; border: 1px solid white;"
			                onclick="location.href='${ path }/list.notice?currentPage=${ pageInfo.currentPage + 1 }'"> > </button>
		            	</c:if>
                </div>
            </div>

        </div>
    </div>

	<jsp:include page="/views/common/footer.jsp"></jsp:include>
   	
 	    <script>
    		function openNoticePage(){
    			location.href = '${ path }/list.notice?currentPage=1';
    		}
    		
    		function openQnaPage(){
    			location.href = '${ path }/list.board?currentPage=1';
    		}
    		
    		function boardInsert(){
    			location.href = '${ path }/enrollForm.board';
    		}
    		
    		$('tbody > tr.board').click(function(){
    			const boardNo = $(this).children().eq(0).text();
    			location.href = '${ path }/detail.board?boardNo=' + boardNo;
            });
    		
    		function noMember(){
    			alert('로그인이 필요한 서비스 입니다.');
    			location.href = ('${ path }/loginForm.me');
    		}
    	
    	</script>


</body>
</html>