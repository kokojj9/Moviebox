<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<title>Footer</title>
    <style>
        body {
            background-color: #1A1A1A
        }
        div{
            box-sizing: border-box;
        }
        #wrap{
            
            margin: auto;
        }

        #footer{
            width: 1200px;
            height : 250px;
            margin: auto;
            border-top: 1px solid lightgray;
        }

        .corp_area{
            height : 100%;
        }

        #logoText{
            height : 30%;
            color: rgb(255, 193, 69);
            font-size: 50px;
            font-weight: 900;
            padding-left: 15px;
            text-decoration: none;
        }

        #logoText :hover{
            cursor : pointer;
        }

        #corp_item{
            height : 20%;
            padding-top: 12px;
        }

        #corp_info{
            height : 40%
        }
        
        #copyright{
            height : 10%;
        }
        
        #corp_item a{
            color: rgb(200, 200, 200);
            padding-left: 15px;
            text-decoration: none;
            font-size: 20px;
        }

        #corp_info > ul{
            margin: auto;
            list-style: none;
            padding-left: 15px;
            padding-top: 5px;
            vertical-align: middle;
            color: rgb(95, 95, 95);
        }

        #corp_info li{
            padding-top: 5px;
        }

        #copyright > h4{
            margin: 0px;
            padding-left: 15px;
            font-size: 15px;
            font-weight: 600;
            color: rgb(95, 95, 95);
        }

        #corp_logo > hr{
            margin: 0px;
        }
        


    </style>
</head>
<body>
<script>

</script>

	<div id="footer">
		<div class="corp_area">
			<div id="corp_logo">
				<hr>
				<div>
					<a id="logoText" href="#">MOVIE BOX</a>
				</div>
				<div></div>
			</div>
			<div id="corp_item">
				<a href="#">MOVIE BOX 회사소개 </a> <a href="#">이용약관 </a> <a href="#">개인정보처리방침</a>
			</div>
			<div id="corp_info">
				<ul>
					<li>서울특별시 중구 남대문로 120 그레이츠청계(구 대일빌딩) 2F</li>
					<li>대표 이메일 dudghkqhduwh@moviebox.com 고객센터 1544-8855
						(유료)사업자등록번호 00-000-0000 통신판매업신고번호 제0000호</li>
					<li>대표이사 이승철 보호 책임자 이승철 제공자 MOVIE BOX</li>
				</ul>
			</div>
			<div id="copyright">
				<h4>Copyright © MOVIE BOX Cultureworks All Right Reserved.</h4>
			</div>
		</div>
	</div>
    
</body>
</html>