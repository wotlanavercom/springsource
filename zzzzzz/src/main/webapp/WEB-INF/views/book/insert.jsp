<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@include file="../include/header.jsp"%>

<h1>도서 정보 입력</h1>
<form action='<c:url value="/book/insert" />' method="post">
	<div class="mb-3">
		<label for="code" class="form-label">code</label>
		<input type="text" class="form-control" id="code" name="code" placeholder="도서코드">
	</div>
	<div class="mb-3">
		<label for="title" class="form-label">title</label>
		<input type="text" class="form-control" id="title" name="title" placeholder="도서명">
	</div>
	<div class="mb-3">
		<label for="writer" class="form-label">writer</label>
		<input type="text" class="form-control" id="writer" name="writer" placeholder="저자명">
	</div>
	<div class="mb-3">
		<label for="price" class="form-label">price</label>
		<input type="text" class="form-control" id="price" name="price" placeholder="도서가격">
	</div>
	<div class="mb-3">
		<label for="description" class="form-label">description</label>
		<textarea class="form-control" id="description" name="description" placeholder="상세정보"></textarea>
	</div>
	<button type="submit" class="btn btn-primary">저장</button>
	<button type="button" class="btn btn-success">목록으로</button>
</form>
<script>
	const path = '<c:url value="/book/list"/>'; 
</script>
<script src='<c:url value = "/resources/js/insert.js"/>'></script>
<style>
		@keyframes move{
			0%{width:0;}
			100%{width: 100%;}
		}
		.video-wrap{position:relative;padding-bottom:56.25%;padding-top:30px;height:0;overflow:hidden;}
		.video-wrap iframe,
		.video-wrap object,
		.video-wrap embed{position:absolute;top:0;left:0;width:100%;height:100%;}
		#mainContainerM .main_mocont h3 a:after{display:none !important;}
		#mainContainerM .main_mocont h3 a.on:after{display:block !important;}
		.main_mo #gnbCommon .layer .photo .name{text-indent:-9999px}
		#otherleft .good, #othermid .good, #otherright .good{position:absolute;right:16px;top:14px;width:31px;height:31px;text-indent:-9999px;background:url(../resources/images/main/icon_good.png) no-repeat;}
		#otherleft .good.on, #othermid .good.on, #otherright .good.on{background-position:0 -31px}
		.article .mdu_txt2row2 > ul li,
		.article .mdu_imgTit2 .imgView,
		.article .mdu_img2colRd2 li{position:relative;}
		.main_showcase{transition:all .5s}
		.main_showcase .swiper-progress-bar .slide_progress-bar:after{display:none !important}
		.main_showcase .swiper-progress-bar .slide_progress-bar .fill{position:absolute;top:0;left:0;background:#000;height:100%}
		.main_showcase .swiper-progress-bar.animate .slide_progress-bar .fill{transition:none;animation:move 5s linear;animation-fill-mode:forwards}
		.main_showcase.active .swiper-progress-bar.animate .slide_progress-bar .fill{animation-play-state:paused}
	</style>
<link rel="stylesheet" type="text/css" href="https://1330chat.visitkorea.or.kr/ttalk/css/ttalk-import.css"><meta http-equiv="origin-trial" content="AymqwRC7u88Y4JPvfIF2F37QKylC04248hLCdJAsh8xgOfe/dVJPV3XS3wLFca1ZMVOtnBfVjaCMTVudWM//5g4AAAB7eyJvcmlnaW4iOiJodHRwczovL3d3dy5nb29nbGV0YWdtYW5hZ2VyLmNvbTo0NDMiLCJmZWF0dXJlIjoiUHJpdmFjeVNhbmRib3hBZHNBUElzIiwiZXhwaXJ5IjoxNjk1MTY3OTk5LCJpc1RoaXJkUGFydHkiOnRydWV9"></head>


