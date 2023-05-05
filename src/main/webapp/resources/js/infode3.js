$('#item-point').click(function(){
	$ajax({
        type:'get',
        url:'/info/{sanInfoId}'
    });
});

$('#in').click(function(){
	$ajax({
        type:'get',
        url:'/info/{sanInfoId}/SanInformation'
    });
});


$('#wea').click(function(){
	$ajax({
        type:'get',
        url:'/info/{sanInfoId}/weather'
    });
});


$('#food').click(function(){
	$ajax({
        type:'get',
        url:'/info/{sanInfoId}/kakao'
    });
});


	