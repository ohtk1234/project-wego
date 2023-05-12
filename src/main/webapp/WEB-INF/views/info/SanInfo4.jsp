<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
    
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>

 
<script type="text/javascript" src="//dapi.kakao.com/v2/maps/sdk.js?appkey=9d563a431666fc762d165b66fa174cbc"></script>
<div id="map" style="width:100%;height:350px;"></div>

<div class="module1">
	<div class="cotents">
		<div class="content1">
		

	</div>
	</div>
            
            
</div>

<script>
kakao.maps.load(function() {
    var map = new kakao.maps.Map(document.getElementById('map'), {
      center: new kakao.maps.LatLng(${sanInfode.lat}, ${sanInfode.lon}),
      level: 3
    });
    var marker = new kakao.maps.Marker({
      position: new kakao.maps.LatLng(${sanInfode.lat}, ${sanInfode.lon}),
      map: map
    });
  });
</script>













 

	
	