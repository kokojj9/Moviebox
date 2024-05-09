<%@page import="com.sun.xml.internal.bind.v2.schemagen.xmlschema.List"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="com.kh.theater.model.vo.Theater, java.util.ArrayList"%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<%
	ArrayList<Theater> list = (ArrayList<Theater>)request.getAttribute("list");
	String type = (String)request.getAttribute("type");
    String location = (String)request.getAttribute("location");

%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>영화관 조회</title>
<style>
        body {
            background-color: #1A1A1A
        }

        div{
            box-sizing: border-box;
        }

        #wrap{
            width: 1200px;
            margin: auto;
        }

        #content_searchTheater{
            height: auto;
        }

        #searchTextArea{
            height: 60px;
        }

        #searchBar{
            height: 60px;
        }

        #searchNavi{
            margin-left: 60px;
            margin-right: 60px;
            height: 60px;
        }

        #printTheaterArea{
            margin: auto;
        }
        
        #searchText > p{
            color: rgb(238, 238, 238);
            font-size: 32px;
            font-weight: 700;
            height: 60px;
            margin: 0;
            padding-left: 60px;
            line-height: 55px;
        }

        .searchLocation{
            float: left;
            height: 60px;
            width: 72px;
            text-align: center;
            line-height: 60px;
            color: rgb(238, 238, 238);
            font-size: 24px;
            font-weight: bold;
            border-radius: 15px;
        }

        .searchLocation:hover{
            cursor: pointer;
            background-color: rgb(255, 193, 69);
            color: #1A1A1A;
        }

        #theaterNameInput{
            height: 45px;
            width: 275px;
            border-left: 60px;
            box-sizing: border-box;
            border-radius: 5px;
            font-size: 18px;
        }

        #theaterNameInput:focus{
            outline: 3px solid rgb(255, 193, 69);
        }

        #theaterInputArea{
            padding-top: 5px;
            padding-left: 60px;
            padding-right: 8px;
            float: left;
        }

        #theaterInputBtnArea{
            padding-top: 6px;
            float: left;
        }

        #theaterInputBtn{
            height: 45px;
            width: 50px;
            border: 1px solid rgb(255, 193, 69);
            color: rgb(255, 193, 69);
            background-color: #1A1A1A;
            border-radius: 9px;
            line-height: 0px;
        }
        
        #theaterInputBtn:hover{
            cursor: pointer;
        }

        #printTheater{
            margin: 30px 160px 30px 160px;
        }

        .printTheaterName{
            display: inline-block;
            height: 60px;
            width: 290px;
            padding: 15px 15px 15px 15px;
            font-size: 20px;
            text-align: center;
        }

        .printTheaterName > a{
        	color: rgb(238, 238, 238);
        	text-decoration: none;
            font-weight: 700;
        }
        
        .printTheaterName > a:hover{
			color: rgb(255, 193, 69);
        }
        
        
    </style>
    
</head>
<body>
    
    <jsp:include page="/views/common/header.jsp"></jsp:include>

    <div id="wrap">
        <div id="content_searchTheater">
            <div id="searchTextArea">
                <div id="searchText">
                    <p>영화관 검색</p>
                </div>
            </div>
            <div id="searchBar">
                <div id="theaterInputArea">
                    <form id="nameForm" action="/moviebox/search.theatername" method="get">
                    	<input id="searchTypeName" type="hidden" name="type" value="name">
                        <input id="theaterNameInput" name="theaterName" type="text" placeholder="영화관 이름을 검색해주세요">
                    </form>
                </div>
                <div id="theaterInputBtnArea">
                    <button id="theaterInputBtn" onclick="selectName();"><img style="height: 90%; width: 100%;" src="resources/img/search.PNG" alt="검색"></button>
                </div>
            </div>
            <div id="searchNavi">
                <div class="searchLocation">전체</div>
                <div class="searchLocation">서울</div>
                <div class="searchLocation">경기</div>
                <div class="searchLocation">인천</div>
                <div class="searchLocation">강원</div>
                <div class="searchLocation">대전</div>
                <div class="searchLocation">충남</div>
                <div class="searchLocation">충북</div>
                <div class="searchLocation">대구</div>
                <div class="searchLocation">경북</div>
                <div class="searchLocation">울산</div>
                <div class="searchLocation">부산</div>
                <div class="searchLocation">경남</div>
                <div class="searchLocation">제주</div>
                <div class="searchLocation">광주</div>
            </div>
            <form id="locationForm" action="/moviebox/search.theater" method="get">
            	<input id="searchTypeLocation" type="hidden" name="type" value="location">
            	<input id="locationInput" type="hidden" name="location">
            </form>
            <div id="printTheaterArea">
                <div id="printTheater">
                    
                    <c:forEach var="i" begin="0" end="${ list.size() - 1 }">
                        <div class="printTheaterName">
	                        <a href="#" onclick="goToTheaterDetail('${ list[i].theaterNo }');">
	                        ${ list[i].theaterName }</a>
                        </div>
                    </c:forEach>
                    
                </div>
            </div>
        </div>
    </div>

	<jsp:include page="/views/common/footer.jsp"></jsp:include>

    <script>

        window.onload = function(){
            var typeLocation = document.getElementById('searchTypeLocation');
            var search = document.getElementsByClassName('searchLocation');
            
            if('location' == '${ type }'){
	            for(let i = 0; i < search.length; i++){
                    if(search[i].innerHTML == '${ location }'){
                        search[i].style.color = '#1A1A1A';
                        search[i].style.background = 'rgb(255, 193, 69)';
            		}
                }
            }
        };

        $('.searchLocation').on('click', function(){
                var locationName = this.innerHTML;
                document.getElementById('locationInput').value = locationName;
                document.getElementById('locationForm').submit();
        });

        function selectName(){
            document.getElementById('nameForm').submit();
        };
        
        function goToTheaterDetail(theaterNo) {
            location.href = '${ path }/detail.theater?theaterNo=' + theaterNo;
        };
        
    </script>

</body>
</html>