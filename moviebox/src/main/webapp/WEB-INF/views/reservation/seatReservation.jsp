<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %> 

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>좌석 선택</title>

<link rel="stylesheet" href="resources/css/reservation/seatReservation.css">

<script src="https://unpkg.com/swiper@8/swiper-bundle.min.js"></script>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.7.1/jquery.min.js"></script>
<script src="https://cdn.jsdelivr.net/npm/jquery@3.7.1/dist/jquery.min.js"></script>
<script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.1/dist/umd/popper.min.js"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/js/bootstrap.bundle.min.js"></script>

</head>

<body>

	<jsp:include page="../common/header.jsp"></jsp:include>
	
	<c:choose>
		<c:when test="${ loginUser eq null }">
			
			<script>
				location.href = ('${ sessionScope.path }/loginForm.me');
			</script>
			
		</c:when>
		<c:otherwise>
		
			<div id="wrap">
		        <div id="title">영화 예매</div>
		        <div id="selectPersonArea">
		            <div id="selectText">
						인원 선택
		                <div style="color:rgb(148, 145, 145); font-size: 16px;">
							최대 8명까지 선택 가능
		                </div>
		            </div>
		            <div id="movie-info">${ requestScope.movieTitle } ${ requestScope.theaterName } ${ requestScope.screenName } ${ requestScope.screenDate }</div>
		            <div id="select-wrap">
		                <div class="selectAge">
		                    <button class="people-teen ageBtn" style="cursor: auto;">청소년</button>
		                </div>
		                <div id="selectPerson">
							<c:forEach var="i" begin="1" end="8">
		                    	<button class="people-Count teenBtn">${ i }</button>
		                    </c:forEach>
		                </div>
		                <div class="selectAge">
		                    <button class="people-adult ageBtn" style="cursor: auto;">성인</button>
		                </div>
		                <div id="selectPerson">
		               		<c:forEach var="i" begin="1" end="8">
		                    	<button class="people-Count adultBtn">${ i }</button>
		                    </c:forEach>
		                </div>
		            </div>
		            <div id="select-people"></div>
		        </div>
		        <div id="seat-wrap">
		            <div id="seat-title"> 좌석 선택 </div>
		            <div id="seat-arrange">
		                <div class="screen-wrap">
		                    <div class="screen rotate"></div>
		                </div>
		                <div id="a-line" class="line">
		                    <div id="a-line-wrap" class="line-wrap">
		                        <c:forEach var="i" begin="1" end="12">
		                        	<div class="a-seat seats">A${ i }</div>
		                        </c:forEach>
		                    </div>
		                </div>
		                <div id="b-line" class="line">
		                    <div id="b-line-wrap" class="line-wrap">
		                        <c:forEach var="i" begin="1" end="12">
		                        	<div class="a-seat seats">B${ i }</div>
		                        </c:forEach>
		                    </div>
		                </div>
		                <div id="c-line" class="line">
		                    <div id="c-line-wrap" class="line-wrap">
		                         <c:forEach var="i" begin="1" end="12">
		                        	<div class="a-seat seats">C${ i }</div>
		                        </c:forEach>
		                    </div>
		                </div>
		                <div id="d-line" class="line">
		                    <div id="d-line-wrap" class="line-wrap">
		                         <c:forEach var="i" begin="1" end="12">
		                        	<div class="a-seat seats">D${ i }</div>
		                        </c:forEach>
		                    </div>
		                </div>
		                <div id="e-line" class="line">
		                    <div id="e-line-wrap" class="line-wrap">
		                        <c:forEach var="i" begin="1" end="12">
		                        	<div class="a-seat seats">E${ i }</div>
		                        </c:forEach>
		                    </div>
		                </div>
		                <div id="f-line" class="line">
		                    <div id="e-line-wrap" class="line-wrap">
		                         <c:forEach var="i" begin="1" end="12">
		                        	<div class="a-seat seats">F${ i }</div>
		                        </c:forEach>
		                    </div>
		                </div>
		            </div>
		        </div>
		        <div id="select-btn">
		            <button id="print-resv-info" >좌석 선택</button>
		        </div>
		        <div id="check-area" hidden>
					
					<div id="check-reservation">
						<div id="check-movie">
							<div id="poster-select">
								<img style="width: 100%; height: 100%;" src="" alt="영화포스터">
							</div>
							<div id="movie-select">
								<div style="font-size:20px; font-weight: 700; margin-top: 5px; margin-bottom: 5px;"></div>
								<div></div>
								<div></div>
							</div>
						</div>
					</div>
					<div id="check-info">
						<div id="reservation-info">
							<div>
								<div class="select-info">상영일시</div>
								<div class="select-info">관람극장</div>
								<div class="select-info">상영관</div>
								<div class="select-info">관람인원</div>
								<div class="select-info">선택좌석</div>
								<div class="select-info" style="margin-top: 50px;">결제금액</div>
							</div>
							<div id="print-reservation-info">
								
								<c:forEach var="i" begin="1" end="6">
									<div class="print-info"></div>							
								</c:forEach>
								
							</div>
						</div>
						<form id="payment-form" action="payment.reservation" method="post">
							<input type="hidden" name="movieNo" value="">
							<input type="hidden" name="screenNo" value="">
							<input type="hidden" name="memberNo" value="">
							<input type="hidden" name="teenPersonNo" value="">
							<input type="hidden" name="adultPersonNo" value="">
							<input type="hidden" name="seatNo" value="">
							<button type="submit" id="payment-btn" onclick="return payment">결제 하기</button>
						</form>
					</div>
		        </div>
			</div>

    	</c:otherwise>
	</c:choose>

    <jsp:include page="../common/footer.jsp" />

    <script>
        let path = '${ sessionScope.path }';
    	let memberNo = ${ sessionScope.loginUser.memberNo };
		let selectScreenNo = ${ requestScope.screenNo };
		let selectMovieNo = ${ requestScope.movieNo };
    </script>

    <script src="resources/js/reservation/seatReservation.js"></script>

</body>
</html>