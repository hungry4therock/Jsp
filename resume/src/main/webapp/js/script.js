//상단 메뉴바
$(".menu>li").mouseover(function(){
	$(this).children(".submenu").stop().slideDown();
});

$(".menu>li").mouseleave(function(){
	$(this).children(".submenu").stop().slideUp();
});


//이미지 슬라이드
var imgs=4;//최대값 설정
var now=0;
start();
function start() {
	$(".imgs>img").eq(0).siblings().css("display","none");
	setInterval(function(){slide();},2000);
}
function slide() {
	if(imgs==now){
		now=0;
	}
	else{
		now++;
	}
	$(".imgs>img").eq(now-1).css("display","none");
	$(".imgs>img").eq(now).css("display","block");
}

//팝업
$(".partner").click(function () {
	$(".partner_up").addClass("active");
})

$(".partner_up .btnClose").click(function () {
	$(".partner_up").removeClass("active");
})