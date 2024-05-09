<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%@ page import="com.kh.board.model.vo.*" %>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>문의사항 상세보기</title>

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

        
        /* 내용 입력 */
        .notice-content{
            width: 1200px;
            height: auto;
            /* border: 1px solid pink; */
            color: white;
            margin-top: 30px;
        }

        .detail-box1{
            width: 1200px;
            /* border: 1px solid #FFC145; */
        }

        .detail-box2{
            width: 1200px;
            /* border: 1px solid red; */
        }

        .detail-title-box1{
            width: 1200px;
            padding-top: 20px;
            border-top: 1px solid #3f3f3f;
        }

        .detail-title-box2{
            width: 1200px;
            padding-bottom: 20px;
            border-bottom: 1px solid #3f3f3f;
        }


        .detail-category{
            width: 170px;
            height: 60px;
            line-height: 55px;
            font-size: 20px;
            font-weight: bold;
            padding-left: 10px;
            float: left;
        }

        .detail-title{
            width: 1030px;
            height: 60px;
            line-height: 55px;
            font-size: 20px;
            font-weight: bold;
            display: inline-block;
            
        }

        .detail-date{
            width: 170px;
            height: 30px;
            line-height: 25px;
            float: left;
            color: #8a8a8a;
            padding-left: 10px;
        }

        .detail-count{
            width: 1030px;
            height: 30px;
            line-height: 25px;
            color: #8a8a8a;
            display: inline-block;
        }

        /* 글 내용 */
        .detail-content-box{
            width: 1200px;
            height: auto;
        }

        .detail-content{
            padding: 10px;
            padding-top: 20px;
            padding-bottom: 25px;
            border-bottom: 1px solid #3f3f3f;
        }

        .detail-content-a-box{
            width: 1200px;
            height: auto;
            color: white;
        }

        .detail-a{
            padding: 10px;
            padding: 20px;
            padding-bottom: 50px;
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
            margin-top: 30px;
            margin-bottom: 30px;
        }

        .board-detail-btn{
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
        
        /* 댓글 */
        #answerContent{
            width: 950px;
            height: 100px;
            padding: 10px;
            border-radius: 8px;
            background-color: #1A1A1A;
            resize: none;
            margin-left: 20px;
            color: white;
            font-size: 15px;
            margin-top:20px;
        }
        
        #answerContent-else{
        	width: 950px;
            height: 100px;
            padding: 10px;
            border-radius: 8px;
            background-color: #1A1A1A;
            resize: none;
            margin-left: 20px;
            color: white;
            font-size: 15px;
            margin-top:20px;
        }

        #answerSubmit{
            width: 80px;
            height: 50px;
            margin-left: 20px;
            border-radius: 8px;
            border: none;
            font-weight: bold;
            background-color: #FFC145;
            font-size: 20px;
        }
        
        #answerSubmit-else{
            width: 80px;
            height: 50px;
            margin-left: 20px;
            border-radius: 8px;
            border: none;
            font-weight: bold;
            background-color: #FFC145;
            font-size: 20px;
        }
        
        #answerWriter{
        	width: 130px;
        	font-size: 18px;
        	color: #FFC145;
        	font-weight: bold;
        	text-align: center;
        }
        
        #answerContent2{
        	width: 950px;
        	padding: 20px;

        }
        
        #preA {
        	width: 950px;
        	color: white;
        	font-size: 20px;
        	font-family: "Noto Sans KR", sans-serif;
        	margin-bottom: 0px;
        	white-space: pre-wrap;
        }
        
        tbody > tr{
         	border-bottom: 1px solid #3f3f3f;
        }
        
        #answercreateDate{
        	width: 100px;
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

                <div class="notice-content">
                    <div class="detail-box1">
                        <div class="detail-title-box1">
                            <div class="detail-category"><span>No.${ board.boardNo } [${ board.boardCategory }]</span></div>
                            <div class="detail-title"><span>${ board.boardTitle }</span></div>
                        </div>
                    </div>
                    <div class="detail-box2">
                        <div class="detail-title-box2">
                            <div class="detail-date"><a>${ board.createDate }</a></div>
                            <div class="detail-count"><a>작성자 : ${ board.boardWriter }</a></div>
                        </div>
                    </div>
                    <div class="detail-content-box">
                        <div class="detail-content">
                        	${ board.boardContent }
                        </div>
                    </div>
                </div> <!-- notice-content -->

                <div id="a-title">답변</div>
                <div class="detail-content-a-box">
                    <div class="detail-a">
		                        <table>
		                            <thead>
		                                <tr>
		                                    <c:choose>
		                                    	<c:when test="${!empty sessionScope.loginUser and sessionScope.loginUser.memberNo eq 1}">
		                                	<th style="text-align:center;">답변</th>
				                                        <td>
				                                            <textarea id="answerContent"></textarea>
				                                        </td>
				                                        <td><button onclick="insertAnswer();" id="answerSubmit">등록</button></td>
		                                    	</c:when>
		                                    	<c:otherwise>
			                                        <td>
			                                        </td>
			                                        <td></td>
		                                    	</c:otherwise>
											</c:choose>
		                                </tr>
		                            </thead>
		                            <tbody id="answer">
		                            </tbody>
		                        </table>
                    </div>
                    
                    <script>
                    
                    function selectAnswerList(){
                    	$.ajax({
                    		url : 'answerList.board',
                    		data : {boardNo : ${ board.boardNo }},
                    		success : function(result){
                    			let resultStr = '';
                    			for(let i in result){
                    				resultStr += '<tr>'
                    						   + '<td id="answerWriter">' + result[i].answerWriter + '</td>'
                    						   + '<td id="answerContent2"><pre id="preA">' + result[i].answerContent + '</pre></td>'
                    						   + '<td id="answercreateDate">' + result[i].createDate + '</td>'
                    						   + '</tr>'
                    			};
                    			$('#answer').html(resultStr);
                    		},
        					error : function(e){
        						console.log(e);
        					}
                    	});
                    }
                    
            		$(function(){
            			selectAnswerList();
            			setInterval(selectAnswerList, 1000);
            		});
            	
                    function insertAnswer(){
        				$.ajax({
        					url : 'answerInsert.board',
        					type : 'post',
        					data : {
        						answerContent : $('#answerContent').val(),
        						boardNo : ${ board.boardNo }
        					},
        					success : function(result){
        						if(result == 'success'){
        							$('#answerContent').val('');
        							selectAnswerList();
        						};
        					}
        				});
        			}
                    </script>
                </div>
            </div> <!-- notice-content -->
                <div class="notice-btn" align="center">
                    <button class="board-detail-btn" onclick="backPage();">목록</button>
                    
                    
                    <c:if test="${ loginUser ne null and loginUser.memberNo eq board.userNo}">
                    <!-- < % if(loginUser != null && loginUser.getMemberNo() == board.getUserNo()) { %> -->
	                    <button class="board-detail-btn" onclick="boardUpdatePage();">수정</button> 
	                    <button class="board-detail-btn" onclick="boardDelete();">삭제</button>
	                </c:if>
                </div>
        </div> <!-- notice-detail -->
	</div>

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

    		function boardUpdatePage(){
    			location.href = '${ path }/updateForm.board?boardNo=${ board.boardNo }';
    		}
    		
    		function boardDelete(){
    			const result = confirm('문의글을 삭제하시겠습니까?');
                if(result){
                	location.href = '${ path }/delete.board?boardNo=${ board.boardNo }';
                } 
                else{
            		$('tbody > tr.list').click(function(){
            			const boardNo = $(this).children().eq(0).text();
            			location.href = '${ path }/detail.board?boardNo=' + boardNo;
                    });
                }
    		}

    	
    	</script>
    
</body>
</html>