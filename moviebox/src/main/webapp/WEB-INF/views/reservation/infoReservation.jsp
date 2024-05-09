<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>   

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>예매 완료</title>

<link rel="stylesheet" href="resources/css/reservation/infoReservation.css">

<script src="https://unpkg.com/swiper@8/swiper-bundle.min.js"></script>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.7.1/jquery.min.js"></script>

</head>

<body>

    <jsp:include page="../common/header.jsp"></jsp:include>
	
	<c:set var="path" value="${ pageContext.request.contextPath }"/>
    
    <c:choose>
		<c:when test="${ loginUser eq null }">
			
			<script>
                alert('잘못된 요청입니다.');
				location.href = ('${ path }');
			</script>
			
		</c:when>
		<c:otherwise>
		
		    <div id="wrap">
		        <div id="title">예매 완료</div>
		        <div id="content-info">
		            <div id="print-info-area">
		                <div id="movie-info-area">
		                    <div id="movie-poster"></div>
		                    <div id="movie-info">
		                        <div class="movie-detail-info" style="font-size: 24px; margin-top: 10px;">제목</div>
		                        <div class="movie-detail-info">개봉일</div>
		                        <div class="movie-detail-info">장르</div>
		                    </div>
		                </div>
		                <div id="reservation-info-area">
		                    <div id="reservation-info">
		                        <div>
		                            <div class="select-info">티켓번호</div>
		                            <div class="select-info">상영일시</div>
		                            <div class="select-info">관람극장</div>
		                            <div class="select-info">상영관</div>
		                            <div class="select-info">관람인원</div>
		                            <div class="select-info">선택좌석</div>
		                            <div class="select-info" style="margin-top: 50px;">결제금액</div>
		                        </div>
		                        <div id="print-reservation-info">
		                            <div class="print-info"></div>
		                            <div class="print-info"></div>
		                            <div class="print-info"></div>
		                            <div class="print-info"></div>
		                            <div class="print-info"></div>
		                            <div class="print-info"></div>
		                            <div class="print-info" style="margin-top: 50px;"></div>
		                        </div>
		                    </div>
		                </div>
		                <button id="check-btn"><a href="${ path }/index.jsp">메인으로</a></button>
		            </div>
		        </div>
		    </div>

    	</c:otherwise>
	</c:choose>

    <jsp:include page="../common/footer.jsp" />

    <script>

        let path = '${ path }';
    	let selectTicketNo = ${ ticketNo };
    	
    </script>

    <script src="resources/js/reservation/InfoReservation.js"></script>

</body>
</html>