<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %> 
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>   
    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>스토어</title>

<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/css/bootstrap.min.css">
<script src="https://cdn.jsdelivr.net/npm/jquery@3.7.1/dist/jquery.slim.min.js"></script>
<script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.1/dist/umd/popper.min.js"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/js/bootstrap.bundle.min.js"></script>

<style>

    .container{
        width: 900px;
    }

    .card{
        background-color: #fff;
        border:none;
        border-radius: 10px;
        height: 280px;
        width: 190px;
        box-shadow: 0 4px 8px 0 rgba(0, 0, 0, 0.2), 0 6px 20px 0 rgba(0, 0, 0, 0.19);
    }

    .image-container{
        position: relative;
    }

    .thumbnail-image{
        border-radius: 10px !important;
    }

    .discount{
        background-color: red;
        padding-top: 1px;
        padding-bottom: 1px;
        padding-left: 4px;
        padding-right: 4px;
        font-size: 10px;
        border-radius: 6px;
        color: #fff;
    }

    .wishlist{
        height: 25px;
        width: 25px;
        background-color: #eee;
        display: flex;
        justify-content: center;
        align-items: center;
        border-radius: 50%;
        box-shadow:  0 4px 8px 0 rgba(0, 0, 0, 0.2), 0 6px 20px 0 rgba(0, 0, 0, 0.19);
    }

    .first{
        position: absolute;
        width: 100%;
        padding: 9px;
    }

    .dress-name{
        font-size: 13px;
        font-weight: bold;
        width: 75%;
    }

    .new-price{
        font-size: 13px;
        font-weight: bold;
        color: red;
    }

    .old-price{
        font-size: 8px;
        font-weight: bold;
        color: grey;
    }

    .btn{
        width: 14px;
        height: 14px;
        border-radius: 50%;
        padding: 3px;
    }

    .creme{
        background-color: #fff;
        border: 2px solid grey;
    }

    .creme:hover {
        border: 3px solid grey;
    }

    .creme:focus {
        background-color: grey;
    }

    .red{
        background-color: #fff;
        border: 2px solid red;

    }

    .red:hover {
        border: 3px solid red;
    }

    .red:focus {
        background-color: red;
    }

    .blue{
        background-color: #fff;
        border: 2px solid #40C4FF;
    }

    .blue:hover {
        border: 3px solid #40C4FF;
    }

    .blue:focus {
        background-color: #40C4FF;
    }

    .darkblue{
        background-color: #fff;
        border: 2px solid #01579B;
    }

    .darkblue:hover {
        border: 3px solid #01579B;
    }

    .darkblue:focus {
        background-color: #01579B;
    }

    .yellow{
        background-color: #fff;
        border: 2px solid #FFCA28;
    }

    .yellow:hover {
        border-radius: 3px solid #FFCA28;
    }

    .yellow:focus {
        background-color: #FFCA28;
    }

    .item-size{
        width: 15px;
        height: 15px;
        border-radius: 50%;
        background: #fff;
        border: 1px solid grey;
        color: grey;
        font-size: 10px;
        text-align: center;
        align-items: center;
        display: flex;
        justify-content: center;
    }

    .rating-star{
        font-size: 10px !important;
    }

    .rating-number{
        font-size: 14px;
        color: grey;
    }

    .buy{
        font-size: 14px;
        color: purple;
        font-weight: 500;
    }

    .voutchers{
        background-color: #fff;
        border:none;
        border-radius: 10px;
        width: 190px;
        box-shadow: 0 4px 8px 0 rgba(0, 0, 0, 0.2), 0 6px 20px 0 rgba(0, 0, 0, 0.19);
        overflow: hidden;
    }

    .voutcher-divider{
        display: flex;
    }

    .voutcher-left{
        width: 60%
    }

    .voutcher-name{
        color: grey;
        font-size: 9px;
        font-weight: 500;
    }

    .voutcher-code{
        color: red;
        font-size: 11px;
        font-weight: bold;
    }

    .voutcher-right{
        width: 40%;	 
        background-color: purple;
        color: #fff;
    }

    .discount-percent{
        font-size: 12px;
        font-weight: bold;
        position: relative;
        top: 5px;
    }

    .off{
        font-size: 14px;
        position: relative;
        bottom: 5px;
    }

    .product-detail-container{
        margin-top: 5px;
        position: absolute;
        bottom: 3px;
        width: 100%;
    }

    .buy:hover, .rating-number:hover, .image-container:hover, .dress-name:hover{
        cursor: pointer;
    }

    #goodslist-content{
        padding-top: 80px;
        width: 1100px;
        height: auto;
        margin: auto;
        display: flex;
  		flex-wrap: wrap;
    }

    .goods-container{
        width: 20%;
        padding: 20px;
        position: relative;
    }
    
    .image-container > img{
        margin: auto;
        width: 100%;
    }
    .pagination-container{
        width: 800px;
        margin: auto;
        margin-bottom: 50px;
        display: flex;
        justify-content: center;
        justify-items: center;
    }

    .pagination{
        width: 100%;
    }


</style>
</head>
<body>

 	<jsp:include page="/views/common/header.jsp" />
 	 	
    <div id="wrap" style="padding-bottom: 50px;">
        <h1 align="center" style="margin-top:50px; color:crimson;">
            <img style="height: 210px; width: 1200px; border:rgba(252, 252, 252, 0.15);" src="https://cf.lottecinema.co.kr//Media/WebAdmin/f04df114813f45b18e63e06308211d0f.jpg" alt="스토어상품이미지">
        </h1>

        <div id="goodslist-content">

        <c:choose>
        	<c:when test="${ not empty goodsList }">
            	<c:forEach var="goods" begin="0" end="${ fn:length(goodsList) - 1 }">
                       
	                <div class="goods-container">
	                    <div class="card">
	                        <div class="image-container">
	                            <div class="first">
	                                <div class="d-flex justify-content-between align-items-center">
	                                </div>
	                            </div>
	                            <img src="${ sessionScope.path }/${ goodsList[goods].filePath }/${ goodsList[goods].changeName }" class="img-fluid rounded thumbnail-image">
	                        </div>
	                        <div class="product-detail-container p-2">
	                            <div class="d-flex justify-content-between align-items-center">
	                                <h5 class="dress-name" style="text-shadow: 0px 1px 2px lightgray;">${ goodsList[goods].goodsName }</h5>
	                                <div class="d-flex flex-column mb-2">
	                                    <span class="new-price"><strong>￦${ goodsList[goods].goodsPrice }</strong></span>
	                                </div>
	                            </div>
	                            <div class="d-flex justify-content-between align-items-center pt-1">
	                            </div>
	                            <div class="d-flex justify-content-between align-items-center pt-1">
	                                <div>
	                                    <span class="rating-number">장바구니</span>
	                                </div>
	                                <span class="buy">구매</span>
	                            </div>
	                        </div>
	                    </div>
	                </div>

				</c:forEach>
            </c:when>
            <c:otherwise>
            
                <h1>조회된 상품이 없습니다.</h1>
                
            </c:otherwise>
        </c:choose>
        
        </div>
    </div>
   
    <div class="paging-area" align="center">
        <c:if test="${pageInfo.currentPage > 1}">
            <button class="btn btn-outline-danger" style="color:rgb(255, 193, 69);" onclick="goToPage(${pageInfo.currentPage - 1})">이전</button>
        </c:if>
        <c:forEach var="i" begin="${pageInfo.startPage}" end="${pageInfo.endPage}">
            <c:choose>
                <c:when test="${pageInfo.currentPage != i}">
                    <button class="btn btn-outline-danger" style="color:rgb(255, 193, 69);" onclick="goToPage(${i})">${i}</button>
                </c:when>
                <c:otherwise>
                    <button disabled class="btn btn-danger">${i}</button>
                </c:otherwise>
            </c:choose>
        </c:forEach>
        <c:if test="${pageInfo.currentPage != maxPage}">
            <button class="btn btn-outline-danger" style="color:rgb(255, 193, 69);" onclick="goToPage(${pageInfo.currentPage + 1})">다음</button>
        </c:if>
    </div>
	
	<jsp:include page="/views/common/footer.jsp" />
    
    <script>
        
        function goToPage(page) {
            $.ajax({
                url: '/list.goodsAjax',
                type: 'GET',
                data: {
                    currentPage: page
                },
                success: function(pi) {
                    $('.paging-area').html(pi);
                },
                error: function() {

                }
            });
        };

    </script>


</body>
</html>