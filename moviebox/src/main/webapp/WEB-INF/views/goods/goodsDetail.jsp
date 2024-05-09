<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>

    <style>

        body{
            background-color: #ecedee;
        }

        div{
            box-sizing: border-box;
        }

        .card{
            border: none;
            overflow: hidden;
        }

        .main_image{
            display: flex;
            justify-content: center;
            align-items: center;
            border-bottom: 1px solid #eee;
            height: 400px;
            width: 100%;
            overflow: hidden;
        }

        .heart{
            height: 29px;
            width: 29px;
            background-color: #eaeaea;
            border-radius: 50%;
            display: flex;
            justify-content: center;
            align-items: center;
        }

        .content-info p{
            margin-top: 10px;
            font-size: 16px;
        }

        .ratings span{
            font-size: 18px;
            margin-left: 12px;
        }

        .right-side{
            position: relative;
            margin-top: 50px;
        }

        .buttons{
            height: 50px;
            width: 300px;
        }

        #btn-buy{
            border: 2px solid rgb(255, 193, 69);
            font-weight: 500;
            width: 150px;
            border-radius: 0;
        }

        #btn-back{
            background-color: rgb(255, 193, 69);
            font-weight: 500;
            width: 150px;
            border-radius: 0;
        }

        .bx-num{
            display: flex;
            justify-content: center;
            align-items: center;
            margin-top: 10px;
            width: 300px;
            height: 50px;
        }

        #txt-num{
            height: 40px;
            width: 220px;
            border-top: 1px solid gray;
            border-bottom: 1px solid gray;
            border-left: 0;
            border-right: 0;
            text-align: center;
            line-height: 38px;
            font-size: 20px;
            font-weight: 400;
        }

        #btn-mins, #btn-plus{
            font-size: 26px;
            width: 40px;
            height: 40px;
            background-color: white;
            line-height: 36px;
            font-weight: 400;
        }

        #btn-mins{
            border-left: 1px solid gray;
            border-top: 1px solid gray;
            border-bottom: 1px solid gray;
            border-right: 0;
        }

        #btn-plus{
            border-right: 1px solid gray;
            border-top: 1px solid gray;
            border-bottom: 1px solid gray;
            border-left: 0;
        }

        #txt-price{
            margin-left: 100px;
            font-weight: 400;
        }

        .txt-total{
            margin-left: 10px;
            font-size: 24px;
            font-weight: 700;
            color: crimson;
        }

        .txt-total > span{
            font-size: 16px;
        }



    </style>
<body>

    <jsp:include page="/views/common/header.jsp" />

    <!-- 구매는 로그인해야함!-->
    <div class="container mt-5 mb-5" style="width: 800px;">	
        <div class="card">	
            <div class="row g-0">	
                <div class="col-md-6 border-end">	
                    <div class="d-flex flex-column justify-content-center">	
                        <div class="main_image">	
                            <img src="https://cf.lottecinema.co.kr//Media/WebAdmin/70fc20fe998a4ab7b44d1bfa0d1440e4.jpg" id="main_product_image" width="350">	
                        </div>	
                    </div>	
                </div>	
                <div class="col-md-6">	
                    <div class="p-3 right-side">	
                        <div class="d-flex justify-content-between align-items-center">	
                            <h3>오리지널팝콘L</h3>	
                        </div>	
                        <div class="mt-2 pr-3 content-info">	
                            <p>캡짱 맛있는 팝콘</p>	
                        </div>	
                        <h3>9,000원</h3>	
                        <div class="bx-num">
                            <button id="btn-mins">-</button>
                            <div id="txt-num">1</div>
                            <button id="btn-plus">+</button>
                        </div>
                        <div id="txt-price">
                            총 상품 금액
                            <strong class="txt-total">18,000<span>원</span></strong>
                        </div>
                        <div class="buttons d-flex flex-row gap-3">	
                            <button class="btn" id="btn-buy">바로 구매</button>	
                            <button class="btn" id="btn-back">장바구니에 넣기</button>	
                        </div>	
                    </div>	
                </div>	
            </div>	
        </div> 
    </div>

    <jsp:include page="/views/common/footer.jsp" />


    <script>
        let productNum = 1; //상품개수
        // 상품개수 동작기능
        $('#btn-mins').on('click', function(){
            productNum = Number($('#txt-num').html());

            if(productNum != 1) {
                productNum -= 1;
            }

            $('#txt-num').html(productNum);
        });

        $('#btn-plus').on('click', function(){
            productNum = Number($('#txt-num').html());

            if(productNum != 10) {
                productNum += 1;
            }

            $('#txt-num').html(productNum);
        });

    </script>




</body>
</html>