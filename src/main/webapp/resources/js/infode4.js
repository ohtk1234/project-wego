var mapContainer = document.getElementById('map'),
    mapOption = { 
        center: new kakao.maps.LatLng(33.450701, 126.570667), 
        level: 3 // 지도의 확대 레벨
    };


var map = new kakao.maps.Map(mapContainer, mapOption); 