<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>   
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
    

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>MOVIE BOX</title>
<link rel="stylesheet" href="https://unpkg.com/swiper@8/swiper-bundle.min.css" />
<script src="https://unpkg.com/swiper@8/swiper-bundle.min.js"></script>
<style>

    #main-cotent{
        height: auto;
        margin: auto;
    }
    #content_1{
        height: 350px;
        padding: 25px 100px;
        width: 1200px;
        margin: auto;
        
    }
    .movie-chart-content{
        height: 400px;
        width: 1200px;
        margin: auto;
    }
    .movie-genre-content{
        margin: auto;
        height: 290px;
        background-color: #FFC145;
        width: 1200px;
        margin: auto;
        padding: 40px 100px;
        display: flex;
        justify-content : space-between
        
    }
    .main-board-content{
        height: 460px;
        padding: 105px 120px;
        width: 1200px;
        margin: auto;
    }
    
    
    .movie-title{
        height: 90px;
        width: 100%;
        padding: 45px 0 0 100px;

    }
    .movie-chart{
        height: 260px;
        width: 100%;
        padding: 0 100px;
        display: flex;
        justify-content : space-between;
        
    }
    .movie-chart > div{
        width: 170px;
        height: 100%;
    }

    .genre-content{
        width: 190px;
        height: 100%;
        padding: 35px 0px;
        font-size: 32px;
    }
    .genre-content-img{
        width: 100%;
        height: 100%;
        text-align: center;
        font-size: 20px;
        font-weight: bold;
        line-height: 50px;
    }
    .genre-content-img > img{
        display: block;
        margin: auto;
        width: 92px;
        height: 92px;
    }

    .main-board-content > div{
        float: left;
        height: 100%;
    }
    .center-number{
        background-color: white;
        border-radius: 8px;
        padding: 70px 40px;    
    	width: 40%;
    }
    .board-content{
        background-color: white;
        border-radius: 8px;
        padding: 30px;
        float: left;
        margin-left: 5%;
        width: 55%;
    }
    .tit{
        color: #FFC145;
        font-size: 32px;
    }
    .board-area{
        font-size: 16px;
    }
    .board-content table{
        width: 100%;
        border-collapse: collapse;
    }
    .board-content thead{
        height: 65px;
    }
    .tit{
        text-align: left;
        vertical-align: top;
    }
    .board-content td{
        height: 30px;
    }
    .board-area td:first-child {
    text-align: left;
    }
    .board-area td:last-child {
    text-align: right;
    }
    .number-area{
        float: left;
        width: 65%;
        height: 100%;
        position: relative;
    }
    .phone-img{
        float: left;
        width: 35%;
        height: 100%;
    }
    .phone-title{
        font-size: 32px;
        font-weight: bold;
        position: absolute;
        top: 0;
    }
    .phone-number{
        color: #FFC145;
        font-size: 36px;
        font-weight: bold;
        position: absolute;
        bottom: 0;
    }
    .phone-img {
        display: flex;
        justify-content: center; 
        align-items: center; 
        height: 100%; 
    }
    .phone-img > img{
        width: 90px;
        height: 90px;
    }
    .movie-chart img{
        width: 100%;
        height: 100%;
    }
    /* 이미지 영역 사이즈 조절 */
    .swiper {
        width: 100%;
        height: 100%;
    }

    /* 이미지 사이즈 조절 */
    .swiper-slide>img {
        width : 100%;
        height : 100%;
    }

    /* 화살표 버튼색 변경 (기본색은 파란색) */
    div[class^=swiper-button] {
        color : white;
        /* display : none; */ /* 아니면 안보이게 숨기기도 가능 */
    }
    .movie-title > div{
        color:white;
        font-size: 20px;
        font-weight: bold;
    }
    .long-div{
    	margin:auto;
    	width: 1200px;
        height: 290px;
        background-color: #FFC145;
        
    }
    img:hover{
    	cursor : pointer;
    }
    </style>
</head>
<body>

    <jsp:include page="common/header.jsp" />
    
    <div id="main-cotent">
        <div id="content_1">
            <!-- Slider main container -->
            <div class="swiper">
                <!-- Additional required wrapper -->
                <div class="swiper-wrapper" >
                    <!-- Slides -->
                    
                </div>
            
                <!-- If we need pagination -->
                <div class="swiper-pagination"></div>
            
                <!-- If we need navigation buttons -->
                <div class="swiper-button-prev"></div>
                <div class="swiper-button-next"></div>
            
                <!-- If we need scrollbar -->
                <div class="swiper-scrollbar"></div>
            </div>
        </div>
    
        <script>
            
        </script>
        
        <div class="movie-chart-content">
            <div class="movie-title">
                <div>무비차트</div>
            </div>
            <div class="movie-chart">
                
            </div>
        </div>
        <div class="long-div">
            <div class="movie-genre-content">
                <div class="genre-content">
                    <div class="genre-content-img"><img src="${ sessionScope.path }/resources/img/action.png" alt="">액션</div>
                </div>
                <div class="genre-content">
                    <div class="genre-content-img"><img src="${ sessionScope.path }/resources/img/couple.png" alt="">로맨스</div>
                </div>
                <div class="genre-content">
                    <div class="genre-content-img"><img src="${ sessionScope.path }/resources/img/fear.png" alt="">공포/스릴러</div>
                </div>
                <div class="genre-content">
                    <div class="genre-content-img"><img src="${ sessionScope.path }/resources/img/comedy.png" alt="">코미디</div>
                </div>
                <div class="genre-content">
                    <div class="genre-content-img"><img src="${ sessionScope.path }/resources/img/cartoon.png" alt="">애니</div>
                </div>
                <div class="genre-content">
                    <div class="genre-content-img"><img src="${ sessionScope.path }/resources/img/fantasy-movie.png" alt="">판타지</div>
                </div>
            </div>
        </div>

        <div class="main-board-content">
            <div class="center-number">
                <div class="number-area">
                    <div class="phone-title">고객센터</div>
                    <div class="phone-number">1588-8888</div>
                </div>
                <div class="phone-img">

                    <img src="${ sessionScope.path }/resources/img/telephone.png" alt="">

                </div>
            </div>
            <div class="board-content">
                <table>
                    <thead>
                        <tr>
                            <th class="tit">공지사항</th>
                        </tr>
                    </thead>
                    <tbody>
                        
                        
                    </tbody>
                </table>
            </div>
        </div>

    </div>
    <script>
    $('.genre-content-img').on('click',function(){

    	location.href = '${ sessionScope.path }/selectGenre.movie?type=genre&genre=' + $(this).text();

    });
    	
    </script>
    <script>
    window.onload = function(){
        $.ajax({
            url : 'ad.main',
            type : 'get',
            success : function(result) {

				let resultStr = '';
				for(let i = 0; i < result.length; i++){
					resultStr += '<div class="swiper-slide" ><img class="'+  result[i].movieNo  +'" src="${ sessionScope.path }/' + result[i].filePath +'/'+ result[i].changeName+'"' +'/></div>'; 
				}

				$('.swiper-wrapper').html(resultStr);
				
            },
            async : false
        });
        
        $.ajax({
        	url : 'chart.main',
        	type : 'get',
        	success : function(result) {

                let resultStr = '';
				for(let i = 0; i < result.length; i++){
					if(i==5) break;

					resultStr += '<div><img class="'+   result[i].movieNo  +'" src="${ sessionScope.path }/' + result[i].filePath +'/'+ result[i].changeName+'"' +'/></div>'; 

				}
				
				$('.movie-chart').html(resultStr);
				for(let i = 0; i < result.length; i++){
					$('.' + result[i].movieNo).on('click',function(){

						location.href = '${ sessionScope.path }/detail.movie?movieNo=' + result[i].movieNo;

					});
				}
            },
            async : false
        });
        
        $.ajax({
        	url : 'board.main',
        	type : 'get',
        	success : function(result) {

                let resultStr = '';
        		for(let i = 0;i< result.length; i++){

        			if(i==4) break;

        			resultStr += '<tr class="board-area"> <td "> ' + result[i].noticeTitle + '</td><td> ' + result[i].createDate + '</td> </tr>';
        		}
        		
        		$('.board-content tbody').html(resultStr);
        	},
        	async : false
        });
        
     // 슬라이더 동작 정의
        const swiper = new Swiper('.swiper', {
            autoplay : {
                delay : 10000 // 3초마다 이미지 변경
            },
            loop : true, //반복 재생 여부
            slidesPerView : 1, // 이전, 이후 사진 미리보기 갯수
            pagination: { // 페이징 버튼 클릭 시 이미지 이동 가능
                el: '.swiper-pagination',
                clickable: true
            },
            navigation: { // 화살표 버튼 클릭 시 이미지 이동 가능
                prevEl: '.swiper-button-prev',
                nextEl: '.swiper-button-next'
            }
        }); 
    }
    
    </script>
    
    <jsp:include page="common/footer.jsp" />
</body>
</html>