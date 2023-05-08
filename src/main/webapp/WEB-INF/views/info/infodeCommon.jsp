<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>



<!DOCTYPE html>
<html lang="ko">
<head>

<meta charset="UTF-8" />
<title>산정보 페이지</title>
<meta http-equiv="X-UA-Compatible" content="IE=edge" />
<meta name="viewport" content="width=device-width, initial-scale=1.0" />

<link rel="shortcut icon" href="/resources/ico/favicon.ico" type="image/x-icon" />
<link rel="icon" href="/resources/ico/favicon.ico" type="image/x-icon" />

<link rel="stylesheet" href="/resources/css/header.css" />
<link rel="stylesheet" href="/resources/css/final1.css" />
<link rel="stylesheet" href="/resources/css/footer.css" />
<link rel="stylesheet" href="/resources/css/main.css" />

<script src="/resources/js/header.js" defer></script>
<script src="/resources/js/main.js" defer></script>
<script src="/resources/js/favorite.js" defer></script>
<script src="/resources/js/infode1.js" defer></script>

<script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.6.3/jquery.min.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/jquery-migrate/3.4.0/jquery-migrate.min.js"></script>
</head>
<body>
	<div class="total-wrap">
		<%@include file="/WEB-INF/views/common/header.jsp"%>
		
	  <section>
		
		
        
        <div class="container">
        
       
          
            <input type="hidden" id="sanInfo" value="${sanInfode.sanInfoId}">
              <div class="profile">
                  <img class="profile-image" src="./img${sanInfode.img}" alt="">    
              </div>
              <div class="moname">
                  <p class="mimoname">산이름: ${sanInfode.sanName}</p>
              </div>
              <div class="weather">
                <img class="weather-image" src="./svg${sanInfode.weather}">
              </div>
              <div class="moaddress">
                  <p class="mimoaddress">주소: ${sanInfode.address}</p>
              </div>
              <div class="like">
                  <img class="heart" src="./svg/heart.svg">
              </div>
              <div class="num">
                <p class="likenum">1000++</p>
              </div>
        
        
              <div class="content">
                <button id="mozip" onclick="location.href='/party/{partyId}'">등산모집</button>
              </div>
               <div class="hugi">
				<button id="hugis" onclick="location.href='/review/{reviewId}'">등산후기</button>
                </div>
         
        </div>

          
        


      
  



          <div id="content-section">
            <ul class="content-header-menu">
            <li class="content-header-menu-item" id="item-point">
            <a>소개</a>
            </li>
            <li class="content-header-menu-item" id="in">
            <a>등산로 정보</a>
            </li>
            <li class="content-header-menu-item" id="wea">
            <a>날씨</a>
            </li>
            <li class="content-header-menu-item active" id="food">
            <a>주변맛집</a>
            </li>
            </ul>
          </div>

          <div id="module">
	          
	           
         	</div>
      	




		
		
		
        
             
	  </section>
	  <a href="#" class="scrollToTop">
            <img src="/resources/svg/top.svg" />
            </a> 
           

	 
	<%@include file="/WEB-INF/views/common/footer.jsp"%>
	</div>


</body>
</html>