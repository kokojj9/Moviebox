<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import="java.util.Date,java.text.SimpleDateFormat,com.kh.reservation.model.vo.Seat,com.kh.common.model.vo.Price,java.util.ArrayList,com.kh.member.model.vo.MemberGenre,java.util.List,com.kh.common.model.vo.Reservation,com.kh.movie.model.vo.Movie"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
    <%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html>
<%
%>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
	    <style>
    	.wrap{
            width: 1200px;
            height: auto;
            margin: auto;
        }
    	a{
            text-decoration: none;
        }
        #info-header{
            width: 100%;
            height: 175px;
        }
        #info-title{
            width: 100%;
            height: 100px;
        }
        .title{
            display: block;
            width: 100%;
            height: 100%;
            font-size: 30px;
            font-weight: bold;
            line-height: 100px;
            text-align: center;
            color: white;
        }
        #info-header-navi{
            width: 1050px;
            height: 75px;
            margin : auto;
        }
        #info-header-navi ul{
            list-style-type: none;
            display: flex;
            justify-content: center;
            width: 100%;
            height: 100%;
            padding: 0;
            margin: 0;
        }
        #info-header-navi li{
            width: 50%;
            height: 100%;
            display: flex;
            justify-content: center;
            align-items: center;
            
        }
        .info-navi{
            border-top: 1px solid lightgray;
            border-bottom: 1px solid lightgray;
        }
        .info-my{
        	color: #FFC145;
            
            text-decoration: none;
            font-weight: bold;
            width: 100%;
            height: 100%;
            text-align: center;
            padding-top: 25px;
        }
        .info-list{
            color: black;
            font-weight: bold;
            width: 100%;
            height: 100%;
            text-align: center;
            padding-top: 25px;
        }
        .info-navi > a{
        	text-decoration: none;
        }
        
        
        #info-navi-first{
        	background-color: #1A1A1A;
            
        }
        #info-navi-second{
            background-color: #FFC145;
        }
        .info-my:hover{
            text-decoration: none;
            color: #FFC145;
            
        }
        .info-list:hover{
            text-decoration: none;  
             
            color: black;  
        }
        #reservationList{
            width: 100%;
            height: auto;
            padding-top: 50px;
        }
        #reservationList > div{
            width: 950px;
            height: 200px;
            margin: auto;
            margin-bottom: 50px;
            background-color: rgb(33, 33, 33);
            border-radius: 8px;
        }

        #reservationList-content > div{
            float: left;
            height: 100%;
        }
        .res-img{
            width: 18%;
            padding: 15px 20px 15px 30px;
        }
        .res-content{
            width: 44%;
            padding: 40px 20px 40px 10px;
        }
        .res-btn{
            width: 10%;
            padding-top: 5px;
            
        }
        .res-result{
            width: 28%;
            padding: 10px 10px 10px 10px;
        }
        .res-img > div{
            width: 100%;
            height: 100%;
        }
        .res-content > div{
            width: 100%;
            height: 100%;
        }
        .res-btn > div{
            margin: auto;
            width: 75px;
        }

        .res-result > div{
            width: 100%;
            height: 100%;
            color: white;
        }
        .totalCount, .totalPrice{
            width: 100%;
            height: 25%;
            padding: 10px 0px 10px 5px;
        }
        .countPrice{
            width: 100%;
            height: 50%;
            padding: 18px 0px 18px 5px;
            border-top: 1px solid lightgray;
            border-bottom: 1px solid lightgray;
        }
        #contentTable{
            color: white;
            width: 100%;
        }
        #contentTable td{
            font-size: 13px;
            font-weight: bold;
        }
        .res-result h6{
            margin: 0;
        }
        #studentText{
            margin-bottom: 10px;
        }
        #poster{
        	width: 100%;
            height: 100%;
        }

        #noData h3{
        	text-align: center; 
        	color: white;
        	line-height: 200px;
        }
    </style>    
</head>
<body>
	<jsp:include page="/views/common/header.jsp"></jsp:include>
	

	
	<c:choose>
		<c:when test="${ loginUser eq null }">
			
			<script>
				location.href = ('${ path }/loginForm.me');
			</script>
			
		</c:when>
		<c:otherwise>
			<div class="wrap">
	    <div id="info-header">
            <div id="info-title">
            <span class="title">마이페이지</span>
            </div>
            <div id="info-header-navi">
                <ul class="info-navi">
                    <li id="info-navi-first">
                        <a href="${ path }/mypage.me" class="info-my">회원정보</a>
                    </li>
                    <li id="info-navi-second">
                        <a href="#" class="info-list">예매내역</a>
                    </li>

                </ul>
            </div>

        </div>

        <div id="reservationList">
        <c:choose>
        	<c:when test="${empty list }">
        		<div id="noData">
					<h3> 예매내역이 존재하지 않습니다.</h3>
            	</div>
        	</c:when>
        	<c:otherwise>
        		<c:forEach var="i" begin="0" end="${ list.size()-1}">
        			<div id="reservationList-content">
        				<div class="res-img">
        					<div><img id="poster" src="${ path }/${ movieList[i].filePath }/${ movieList[i].changeName }" alt=""></div>
        				</div>
        				<div class="res-content">
        					<div>
        						<table id="contentTable">
		                            <thead>
		                                <tr>
		                                    <th colspan="4">${ list[i].movieTitle }</th>
		                                </tr>
		                            </thead>
		                            <tbody>
		                                <tr>
		                                    <td>예약번호</td>
		                                    <td>${ list[i].ticketNo }</td>
		                                    <td>상영관</td>
		                                    <td>${ list[i].screenName }관</td>
		                                </tr>
		                                <tr>
		                                    <td>극장</td>
		                                    <td>${ list[i].theaterName }</td>
		                                    <td>시간</td>
		                                    <td>${ list[i].runningTime }</td>
		                                </tr>
		                                <tr>
		                                    <td>날짜</td>
		                                    <td>${ list[i].watchDate }</td>
		                                    <td>좌석</td>
		                                    <td style="font-size: 10px;">
		                                    <c:forEach var="seat" items="${ list[i].seatList }">
		                                    	${ seat.seatNo }
		                                    </c:forEach>
		                                    </td>
		                                </tr>
		                                <tr>
		                                    <td>인원</td>
		                                    <td>
		                                    <c:choose>
		                                    	<c:when test="${ list[i].price.studentCount > 0 }">
		                                    		청소년 ${ list[i].price.studentCount }명
		                                    	</c:when>
		                                    </c:choose>
		                                    <c:choose>
		                                    	<c:when test="${ list[i].price.commonCount > 0 }">
		                                    		성인 ${ list[i].price.commonCount }명
		                                    	</c:when>
		                                    </c:choose>
		                                    		
		                                    </td>
		                                    <td>예매일시</td>
		                                    <td>${ list[i].reservationDate }</td>   
		                                </tr>
		                            </tbody>
		                        </table>
        					</div>
        				</div>
        				<div class="res-btn">


        				<c:choose>
        					<c:when test='${ list[i].status eq "Y" }'>
        							<c:choose>
        								<c:when test="${ list[i].beforeCurrent}">
        									<div><button type="button" id="${ list[i].ticketNo }" class="btn btn-warning" disabled style="width: 100%; height: 30px; color: black; font-size: 15px; font-weight: bold; padding: 0; background: gray; border:none" >취소불가</button></div>
        								</c:when>
        								<c:otherwise>
        									<div><button style="width: 100%; height: 30px; color: black; font-size: 15px; font-weight: bold; padding: 0;" type="button" id="${ list[i].ticketNo }" class="btn btn-warning" >취소</button><input type="hidden" id="ticketNo" value="${ list[i].ticketNo }"></div>
        								</c:otherwise>
        							</c:choose>	
        					</c:when>
        					<c:otherwise>
        						<div><button type="button" id="${ list[i].ticketNo }" class="btn btn-warning" disabled style="width: 100%; height: 30px; color: black; font-size: 15px; font-weight: bold; padding: 0; background: gray; border:none">취소됨</button></div>
        					</c:otherwise>
        				</c:choose>
		                   
		                </div>
		                <div class="res-result">
		                    <div>
		                        <div class="totalCount">
		                            <h6>총 인원 : ${ list[i].price.studentCount + list[i].price.commonCount} 명</h6>
		                        </div>
		                        <div class="countPrice">
		                            <h6 id="studentText">청소년 : ${ list[i].price.studentCount } X 11000  = ${ list[i].price.studentPrice }</h6>
		                            <h6>성인 : ${ list[i].price.commonCount } X 13000  = ${ list[i].price.commonPrice }</h6>
		                        </div>
		                        <div class="totalPrice">
		                            <h6>총 가격 : ${ list[i].price.totalPrice } 원</h6>
		                        </div>
		                    </div>
		                </div>
        			</div>
        		</c:forEach>
        	</c:otherwise>
        </c:choose>
		
         
            
        </div>
    </div>
		</c:otherwise>
	</c:choose>

	<script>
		$('.res-btn button').click(function(){
			const $ticketNo = $(this);
			const value = confirm('예매취소를 원하신다면 확인버튼을 눌러주세요.');
			
			if(value){
				$.ajax({
					url : 'reservationCancel.me',
					data : {
						cancelKey : $ticketNo.attr('id')
					},
					success : function(result) {
						if (result == 'Y') {
							$ticketNo.css('background', 'gray').css('border','none');
							$ticketNo.html('취소됨');
							$ticketNo.attr('disabled',true);
						}
					},
					error : function() {
						console.log('AJAX통신 실패');
					}
				});
			
			}
			
		})
					
				</script>
	<jsp:include page="/views/common/footer.jsp" />
</body>
</html>