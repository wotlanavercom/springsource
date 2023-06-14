<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<title>sol 투어</title>

<style>

        #movemove.visible1 {
            opacity: 1;
            pointer-events: auto;
        }
</style>





<header id="gnbCommon" class="service_gnb" style="height: 90px;">
<div class="gnb">
	<div class="search">
	
	
	<!-- 로고자리 -->
		<h1 class="logo">
			<a class="svgLogo" href="/main/main.do">대한민국구석구석<svg id="pathicon1" version="1.1" xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink" x="0px" y="0px" width="510px" height="86px" viewBox="0 0 510 86" style="enable-background:new 0 0 510 86;" xml:space="preserve"><path class="text-path" d="M483.7,49.5h-39.2c-0.9,0-1.7,0.7-1.7,1.7c0,0.9,0.7,1.7,1.7,1.7h28.3v17c0,0.9,0.8,1.7,1.7,1.7c5.8,0,10.4-4.7,10.4-10.4V50.6C484.8,50,484.3,49.5,483.7,49.5z M453,41.3c3.3,3.8,8,5.4,13.7,5.4h1.8c0.9,0,1.7-0.7,1.7-1.7c0-0.9-0.7-1.7-1.7-1.7h0c-4.6,0-9.4-2.4-9.4-7.7V20.8c0-0.9-0.8-1.7-1.7-1.7h-8.7c-0.9,0-1.7,0.8-1.7,1.7v14.7c0,5.4-4.8,7.7-9.4,7.7h0c0,0-18.7,0-18.7,0c4.8-2,10.7-6.4,10.7-15.6v-6.8c0-0.9-0.8-1.7-1.7-1.7h-33.7c-0.9,0-1.7,0.7-1.7,1.7c0,0.9,0.7,1.7,1.7,1.7h23.3v5.2c0,15.3-7.7,15.6-7.7,15.6h-24.5c-0.9,0-1.7,0.7-1.7,1.7c0,0.9,0.7,1.7,1.7,1.7h19.7v23.2c0,0.9,0.8,1.7,1.7,1.7c5.8,0,10.4-4.7,10.4-10.4V46.6h22.3C445,46.6,449.7,45,453,41.3z M483.1,19.1h-8.7c-0.9,0-1.7,0.8-1.7,1.7v8.1h-4c-0.9,0-1.7,0.7-1.7,1.7s0.7,1.7,1.7,1.7h4v12.7c0,0.9,0.8,1.7,1.7,1.7h8.7c0.9,0,1.7-0.8,1.7-1.7V20.8C484.8,19.9,484.1,19.1,483.1,19.1z M467.1,0H351.6c-23.1,0-42,18.3-43,41.2H272C271,18.3,252.1,0,229,0c-23.7,0-43,19.3-43,43c0,23.7,19.3,43,43,43c23.1,0,42-18.3,43-41.2h36.6c1,22.9,19.9,41.2,43,41.2h115.5c23.7,0,43-19.3,43-43C510.1,19.3,490.8,0,467.1,0z M229,82.3c-21.7,0-39.3-17.6-39.3-39.3c0-21.7,17.6-39.3,39.3-39.3c21.7,0,39.3,17.6,39.3,39.3C268.3,64.7,250.7,82.3,229,82.3z M467.1,82.3H351.6c-21.7,0-39.3-17.6-39.3-39.3c0-21.7,17.6-39.3,39.3-39.3h115.5c21.7,0,39.3,17.6,39.3,39.3C506.4,64.7,488.7,82.3,467.1,82.3z M347.5,41.3c3.3,3.8,8,5.4,13.7,5.4h1.8c0.9,0,1.7-0.7,1.7-1.7c0-0.9-0.7-1.7-1.7-1.7h0c-4.6,0-9.4-2.4-9.4-7.7V20.8c0-0.9-0.8-1.7-1.7-1.7h-8.7c-0.9,0-1.7,0.8-1.7,1.7v14.7c0,5.4-4.8,7.7-9.4,7.7h0c-0.9,0-1.7,0.7-1.7,1.7c0,0.9,0.7,1.7,1.7,1.7h1.8C339.4,46.6,344.1,45,347.5,41.3z M377.6,19.1h-8.7c-0.9,0-1.7,0.8-1.7,1.7v8.1h-4c-0.9,0-1.7,0.7-1.7,1.7s0.7,1.7,1.7,1.7h4v12.7c0,0.9,0.8,1.7,1.7,1.7h8.7c0.9,0,1.7-0.8,1.7-1.7V20.8C379.3,19.9,378.5,19.1,377.6,19.1z M254.8,43.3h-18c4.8-2,10.7-6.4,10.7-15.7v-6.8c0-0.9-0.8-1.7-1.7-1.7h-33.7c-0.9,0-1.7,0.7-1.7,1.7c0,0.9,0.7,1.7,1.7,1.7h23.3v5.2c0,15.3-7.7,15.7-7.7,15.7h-24.5c-0.9,0-1.7,0.7-1.7,1.7c0,0.9,0.7,1.7,1.7,1.7h19.7v23.2c0,0.9,0.8,1.7,1.7,1.7c5.8,0,10.4-4.7,10.4-10.4V46.6h19.7c0.9,0,1.7-0.7,1.7-1.7C256.4,44,255.7,43.3,254.8,43.3z M378.1,49.5h-39.2c-0.9,0-1.7,0.7-1.7,1.7c0,0.9,0.7,1.7,1.7,1.7h28.3v17c0,0.9,0.8,1.7,1.7,1.7c5.8,0,10.4-4.7,10.4-10.4V50.6C379.3,50,378.8,49.5,378.1,49.5z" stroke="undefined" stroke-width="1"></path><path class="text-path" d="M66.2,35.2c0-3.3-1.4-6.2-4.2-8h4.1c0.8,0,1.5-0.7,1.5-1.5c0-0.8-0.7-1.5-1.5-1.5h-7.4v-4c0-0.6-0.5-1.1-1.1-1.1H53c-0.6,0-1.1,0.5-1.1,1.1v4h-7.4c-0.8,0-1.5,0.7-1.5,1.5c0,0.8,0.7,1.5,1.5,1.5h4.2c-2.7,1.8-4.2,4.7-4.2,8c0,5.4,3.9,9.8,10.9,9.8C62.4,45.1,66.2,40.7,66.2,35.2z M51.2,35.2c0-3.8,1.5-6.8,4.2-6.8c2.7,0,4.2,3.1,4.2,6.8c0,3.8-1.5,6.8-4.2,6.8C52.7,42.1,51.2,39,51.2,35.2z M35.4,19.6H31c-0.6,0-1.1,0.5-1.1,1.1v10.4h-4.2V21.1c0-0.6-0.5-1.1-1.1-1.1h-4.4c-0.6,0-1.1,0.5-1.1,1.1v21.8c-0.6,0.2-1.3,0.5-2.1,0.6c-0.9,0.2-1.9,0.3-3.1,0.3h-7V24.3H14c0.8,0,1.5-0.7,1.5-1.5c0-0.8-0.7-1.5-1.5-1.5H1c-0.6,0-1.1,0.5-1.1,1.1v23.4c0,0.6,0.5,1.1,1.1,1.1h12.6c1.3,0,2.4-0.1,3.3-0.4c0.9-0.3,1.6-0.6,2.2-1.1v15c0,0.6,0.5,1.1,1.1,1.1H22c2.1,0,3.7-1.6,3.7-3.7V35.1h4.2v25.9c0,0.6,0.5,1.1,1.1,1.1h1.8c2.1,0,3.7-1.6,3.7-3.7V20.7C36.5,20.1,36,19.6,35.4,19.6z M78.5,59H57.8v-9.6c0-0.6-0.5-1.1-1.1-1.1h-4.8c-0.6,0-1.1,0.5-1.1,1.1v11.5c0,0.6,0.5,1.1,1.1,1.1h26.6c0.8,0,1.5-0.7,1.5-1.5C80,59.7,79.3,59,78.5,59z M119,51h1.4c2.5,0,4.5-2,4.5-4.4V20.7c0-0.6-0.5-1.1-1.1-1.1H119c-0.6,0-1.1,0.5-1.1,1.1v29.1C117.9,50.5,118.4,51,119,51z M168.8,36h-5.3c0.5-0.6,0.9-1.6,1.2-3c0.3-1.4,0.5-2.6,0.5-3.8v-6.9c0-0.6-0.5-1.1-1.1-1.1h-27.3c-0.8,0-1.5,0.7-1.5,1.5c0,0.8,0.7,1.5,1.5,1.5h21.4v5.2c0,1.2-0.1,2.4-0.2,3.5c-0.1,1.2-0.3,2.2-0.7,3.1H132c-0.8,0-1.5,0.7-1.5,1.5c0,0.8,0.7,1.5,1.5,1.5h14.7v7.7h-10.1c-0.8,0-1.5,0.7-1.5,1.5c0,0.8,0.7,1.5,1.5,1.5h21.5v11.3c0,0.6,0.5,1.1,1.1,1.1h1.4c2.5,0,4.5-2,4.5-4.4v-9.9c0-0.6-0.5-1.1-1.1-1.1h-10.3v-7.7h15c0.8,0,1.5-0.7,1.5-1.5C170.3,36.6,169.6,36,168.8,36z M84,30.3h-5.5v-9.6c0-0.6-0.5-1.1-1.1-1.1h-4.8c-0.6,0-1.1,0.5-1.1,1.1v29.1c0,0.6,0.5,1.1,1.1,1.1H74c2.5,0,4.5-2,4.5-4.4V33.3H84c0.8,0,1.5-0.7,1.5-1.5C85.5,31,84.8,30.3,84,30.3z M124.8,59h-21.7V48.6c0-0.6-0.5-1.1-1.1-1.1h-4.8c-0.6,0-1.1,0.5-1.1,1.1v12.3c0,0.6,0.5,1.1,1.1,1.1h27.6c0.8,0,1.5-0.7,1.5-1.5C126.3,59.7,125.6,59,124.8,59z M111.8,38.5V22.3c0-0.6-0.5-1.1-1.1-1.1H90.9c-0.6,0-1.1,0.5-1.1,1.1v19.6c0,0.6,0.5,1.1,1.1,1.1h16.4C109.8,42.9,111.8,41,111.8,38.5z M104.8,40h-8V24.2h8V40z" stroke="undefined" stroke-width="1"></path></svg></a>
		</h1>
	<!-- 로고자리 -->
		<div class="mo">
			<button type="button" class="m_menu">메뉴</button>
			<div class="layer">
				<div class="cont">
					<strong class="logo svgLogo">대한민국구석구석<svg id="pathicon1" version="1.1" xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink" x="0px" y="0px" width="510px" height="86px" viewBox="0 0 510 86" style="enable-background:new 0 0 510 86;" xml:space="preserve"><path class="text-path" d="M483.7,49.5h-39.2c-0.9,0-1.7,0.7-1.7,1.7c0,0.9,0.7,1.7,1.7,1.7h28.3v17c0,0.9,0.8,1.7,1.7,1.7c5.8,0,10.4-4.7,10.4-10.4V50.6C484.8,50,484.3,49.5,483.7,49.5z M453,41.3c3.3,3.8,8,5.4,13.7,5.4h1.8c0.9,0,1.7-0.7,1.7-1.7c0-0.9-0.7-1.7-1.7-1.7h0c-4.6,0-9.4-2.4-9.4-7.7V20.8c0-0.9-0.8-1.7-1.7-1.7h-8.7c-0.9,0-1.7,0.8-1.7,1.7v14.7c0,5.4-4.8,7.7-9.4,7.7h0c0,0-18.7,0-18.7,0c4.8-2,10.7-6.4,10.7-15.6v-6.8c0-0.9-0.8-1.7-1.7-1.7h-33.7c-0.9,0-1.7,0.7-1.7,1.7c0,0.9,0.7,1.7,1.7,1.7h23.3v5.2c0,15.3-7.7,15.6-7.7,15.6h-24.5c-0.9,0-1.7,0.7-1.7,1.7c0,0.9,0.7,1.7,1.7,1.7h19.7v23.2c0,0.9,0.8,1.7,1.7,1.7c5.8,0,10.4-4.7,10.4-10.4V46.6h22.3C445,46.6,449.7,45,453,41.3z M483.1,19.1h-8.7c-0.9,0-1.7,0.8-1.7,1.7v8.1h-4c-0.9,0-1.7,0.7-1.7,1.7s0.7,1.7,1.7,1.7h4v12.7c0,0.9,0.8,1.7,1.7,1.7h8.7c0.9,0,1.7-0.8,1.7-1.7V20.8C484.8,19.9,484.1,19.1,483.1,19.1z M467.1,0H351.6c-23.1,0-42,18.3-43,41.2H272C271,18.3,252.1,0,229,0c-23.7,0-43,19.3-43,43c0,23.7,19.3,43,43,43c23.1,0,42-18.3,43-41.2h36.6c1,22.9,19.9,41.2,43,41.2h115.5c23.7,0,43-19.3,43-43C510.1,19.3,490.8,0,467.1,0z M229,82.3c-21.7,0-39.3-17.6-39.3-39.3c0-21.7,17.6-39.3,39.3-39.3c21.7,0,39.3,17.6,39.3,39.3C268.3,64.7,250.7,82.3,229,82.3z M467.1,82.3H351.6c-21.7,0-39.3-17.6-39.3-39.3c0-21.7,17.6-39.3,39.3-39.3h115.5c21.7,0,39.3,17.6,39.3,39.3C506.4,64.7,488.7,82.3,467.1,82.3z M347.5,41.3c3.3,3.8,8,5.4,13.7,5.4h1.8c0.9,0,1.7-0.7,1.7-1.7c0-0.9-0.7-1.7-1.7-1.7h0c-4.6,0-9.4-2.4-9.4-7.7V20.8c0-0.9-0.8-1.7-1.7-1.7h-8.7c-0.9,0-1.7,0.8-1.7,1.7v14.7c0,5.4-4.8,7.7-9.4,7.7h0c-0.9,0-1.7,0.7-1.7,1.7c0,0.9,0.7,1.7,1.7,1.7h1.8C339.4,46.6,344.1,45,347.5,41.3z M377.6,19.1h-8.7c-0.9,0-1.7,0.8-1.7,1.7v8.1h-4c-0.9,0-1.7,0.7-1.7,1.7s0.7,1.7,1.7,1.7h4v12.7c0,0.9,0.8,1.7,1.7,1.7h8.7c0.9,0,1.7-0.8,1.7-1.7V20.8C379.3,19.9,378.5,19.1,377.6,19.1z M254.8,43.3h-18c4.8-2,10.7-6.4,10.7-15.7v-6.8c0-0.9-0.8-1.7-1.7-1.7h-33.7c-0.9,0-1.7,0.7-1.7,1.7c0,0.9,0.7,1.7,1.7,1.7h23.3v5.2c0,15.3-7.7,15.7-7.7,15.7h-24.5c-0.9,0-1.7,0.7-1.7,1.7c0,0.9,0.7,1.7,1.7,1.7h19.7v23.2c0,0.9,0.8,1.7,1.7,1.7c5.8,0,10.4-4.7,10.4-10.4V46.6h19.7c0.9,0,1.7-0.7,1.7-1.7C256.4,44,255.7,43.3,254.8,43.3z M378.1,49.5h-39.2c-0.9,0-1.7,0.7-1.7,1.7c0,0.9,0.7,1.7,1.7,1.7h28.3v17c0,0.9,0.8,1.7,1.7,1.7c5.8,0,10.4-4.7,10.4-10.4V50.6C379.3,50,378.8,49.5,378.1,49.5z" stroke="undefined" stroke-width="1"></path><path class="text-path" d="M66.2,35.2c0-3.3-1.4-6.2-4.2-8h4.1c0.8,0,1.5-0.7,1.5-1.5c0-0.8-0.7-1.5-1.5-1.5h-7.4v-4c0-0.6-0.5-1.1-1.1-1.1H53c-0.6,0-1.1,0.5-1.1,1.1v4h-7.4c-0.8,0-1.5,0.7-1.5,1.5c0,0.8,0.7,1.5,1.5,1.5h4.2c-2.7,1.8-4.2,4.7-4.2,8c0,5.4,3.9,9.8,10.9,9.8C62.4,45.1,66.2,40.7,66.2,35.2z M51.2,35.2c0-3.8,1.5-6.8,4.2-6.8c2.7,0,4.2,3.1,4.2,6.8c0,3.8-1.5,6.8-4.2,6.8C52.7,42.1,51.2,39,51.2,35.2z M35.4,19.6H31c-0.6,0-1.1,0.5-1.1,1.1v10.4h-4.2V21.1c0-0.6-0.5-1.1-1.1-1.1h-4.4c-0.6,0-1.1,0.5-1.1,1.1v21.8c-0.6,0.2-1.3,0.5-2.1,0.6c-0.9,0.2-1.9,0.3-3.1,0.3h-7V24.3H14c0.8,0,1.5-0.7,1.5-1.5c0-0.8-0.7-1.5-1.5-1.5H1c-0.6,0-1.1,0.5-1.1,1.1v23.4c0,0.6,0.5,1.1,1.1,1.1h12.6c1.3,0,2.4-0.1,3.3-0.4c0.9-0.3,1.6-0.6,2.2-1.1v15c0,0.6,0.5,1.1,1.1,1.1H22c2.1,0,3.7-1.6,3.7-3.7V35.1h4.2v25.9c0,0.6,0.5,1.1,1.1,1.1h1.8c2.1,0,3.7-1.6,3.7-3.7V20.7C36.5,20.1,36,19.6,35.4,19.6z M78.5,59H57.8v-9.6c0-0.6-0.5-1.1-1.1-1.1h-4.8c-0.6,0-1.1,0.5-1.1,1.1v11.5c0,0.6,0.5,1.1,1.1,1.1h26.6c0.8,0,1.5-0.7,1.5-1.5C80,59.7,79.3,59,78.5,59z M119,51h1.4c2.5,0,4.5-2,4.5-4.4V20.7c0-0.6-0.5-1.1-1.1-1.1H119c-0.6,0-1.1,0.5-1.1,1.1v29.1C117.9,50.5,118.4,51,119,51z M168.8,36h-5.3c0.5-0.6,0.9-1.6,1.2-3c0.3-1.4,0.5-2.6,0.5-3.8v-6.9c0-0.6-0.5-1.1-1.1-1.1h-27.3c-0.8,0-1.5,0.7-1.5,1.5c0,0.8,0.7,1.5,1.5,1.5h21.4v5.2c0,1.2-0.1,2.4-0.2,3.5c-0.1,1.2-0.3,2.2-0.7,3.1H132c-0.8,0-1.5,0.7-1.5,1.5c0,0.8,0.7,1.5,1.5,1.5h14.7v7.7h-10.1c-0.8,0-1.5,0.7-1.5,1.5c0,0.8,0.7,1.5,1.5,1.5h21.5v11.3c0,0.6,0.5,1.1,1.1,1.1h1.4c2.5,0,4.5-2,4.5-4.4v-9.9c0-0.6-0.5-1.1-1.1-1.1h-10.3v-7.7h15c0.8,0,1.5-0.7,1.5-1.5C170.3,36.6,169.6,36,168.8,36z M84,30.3h-5.5v-9.6c0-0.6-0.5-1.1-1.1-1.1h-4.8c-0.6,0-1.1,0.5-1.1,1.1v29.1c0,0.6,0.5,1.1,1.1,1.1H74c2.5,0,4.5-2,4.5-4.4V33.3H84c0.8,0,1.5-0.7,1.5-1.5C85.5,31,84.8,30.3,84,30.3z M124.8,59h-21.7V48.6c0-0.6-0.5-1.1-1.1-1.1h-4.8c-0.6,0-1.1,0.5-1.1,1.1v12.3c0,0.6,0.5,1.1,1.1,1.1h27.6c0.8,0,1.5-0.7,1.5-1.5C126.3,59.7,125.6,59,124.8,59z M111.8,38.5V22.3c0-0.6-0.5-1.1-1.1-1.1H90.9c-0.6,0-1.1,0.5-1.1,1.1v19.6c0,0.6,0.5,1.1,1.1,1.1h16.4C109.8,42.9,111.8,41,111.8,38.5z M104.8,40h-8V24.2h8V40z" stroke="undefined" stroke-width="1"></path></svg></strong>
					<div class="profile" id="mo_profile"><div class="photo"></div><div class="info"><button type="button" onclick="showLogin(2);"><strong>로그인</strong> 하세요</button><p>로그인을 하시면 <br>더많은서비스를 이용하실 수 있습니다. </p></div></div>
					<div class="s_menu">
						<ul>
							<li class="icon1 on"><a href="/main/main.do#home">홈</a></li>
							<li class="icon2"><a href="/main/theme.do">테마</a></li>
							<li class="icon3"><a href="/main/area.do">지역</a></li>
							<li class="icon4">
								<a href="javascript:;">여행콕콕</a>
								<ul>
									<li><a href="/main/cr_main.do?type=place">핫플콕콕</a></li>
									<li><a href="/main/cr_main.do?type=abc">AI콕콕 플래너</a></li>
									<li><a href="/main/cr_main.do?type=ai">AI콕콕</a></li>
								</ul>
							</li>
							<li class="icon5"><a href="/tgpr/tgpr_main.do">여행상품 홍보관</a></li>
							<li class="icon6">
								<a href="javascript:;">여행정보</a>
								<ul>
									<li><a href="/list/travelinfo.do?service=ms">여행지</a></li>
									<li><a href="/list/travelinfo.do?service=rem">여행기사</a></li>
									<li><a href="/list/travelinfo.do?service=cs">여행코스</a></li>
									<li><a href="https://korean.visitkorea.or.kr/kfes/list/wntyFstvlList.do">축제</a></li>
									<li><a href="/list/travelinfo.do?service=show">공연 / 행사</a></li>
									<li><a href="/list/travelinfo.do?service=event">이벤트</a></li>
									<li><a href="/list/travelinfo.do?service=trss">가볼래-터</a></li>
									<li><a href="/list/travelinfo.do?service=digt">디지털관광주민증</a></li>
								</ul>
							</li>
							<li class="icon7"><a href="/mylocation/mylocation.do">여행지도</a></li>
						</ul>
					</div>
				</div>
				<button type="button" class="close">닫기</button>
			</div><div class="search_form">	<div class="header">		<button type="button" onclick="closeSearchForm();" class="back_btn">뒤로</button>	</div>	<div class="search">		<span>			<input type="text" id="inp_search" placeholder="" onkeyup="completechk();" title="검색">			<a href="javascript:btnGnbSearch();" class="btn_search">검색</a>		</span>	</div>	<div class="search">		<div class="area_keyword">			<h2>어제의 인기 검색어</h2>			<ul id="m_search_hd1"></ul>			<ul id="m_search_hd2"></ul>		</div>	</div> 	<div class="words_list">		<ul></ul>	</div>	<div class="search_tag"><h2>대한민국 구석구석 추천 태그</h2><ul><li><a href="javascript:goAlllist('','');" class="all">전체</a></li><li><a href="javascript:goAlllist('08b47590-4b3f-4b4f-91b2-8fd143e0fa88','여행구독');">#여행구독</a></li><li><a href="javascript:goAlllist('627d7664-a686-440f-a5f1-0413cae679bc','테마여행');">#테마여행</a></li><li><a href="javascript:goAlllist('62492549-e40b-4f9d-8f79-48f9eb50d39b','부산가볼만한곳');">#부산가볼만한곳</a></li><li><a href="javascript:goAlllist('00bb51f9-922d-46f4-83e5-3db360575b96','야경');">#로맨틱_야경</a></li><li><a href="javascript:goAlllist('e378af13-f6d1-11e8-9488-02001c6b0001','한국관광품질인증업소');">#한국관광품질인증업소</a></li><li><a href="javascript:goAlllist('a1b889a6-3395-4c1e-bad1-6226268bffd8','제주도');">#제주도여행추천</a></li><li><a href="javascript:goAlllist('898aa43b-9714-11e8-8165-020027310001','아이와함께');">#아이와함께</a></li><li><a href="javascript:goAlllist('01161a8e-fbe7-40b7-a0ba-54aace3144ab','당일치기여행');">#당일치기여행</a></li><li><a href="javascript:goAlllist('c2d6e663-6186-11eb-b08c-0050569dc2b9','꿀잼_액티비티');">#꿀잼_액티비티</a></li><li><a href="javascript:goAlllist('2960e58d-3e0b-4bf6-8099-2e002d5fe9f1','23_24한국관광100선');">#23_24한국관광100선</a></li><li><a href="javascript:goAlllist('e36a319c-7cf2-11e9-9488-02001c6b0001','반려견동반여행지');">#반려견동반여행지</a></li><li><a href="javascript:goAlllist('423a9351-bb43-45b8-97d9-2ca01b96bd10','가족과함께');">#가족과함께</a></li><li><a href="javascript:goAlllist('af5e51e3-83df-11e8-8165-020027310001','역사여행');">#역사여행</a></li><li><a href="javascript:goAlllist('07ffcaf5-a05b-11e8-8165-020027310001','공공누리');">#공공누리</a></li></ul><div class="more" id="tagBtn"><button type="button" onclick="tagBtn();">더보기</button></div></div></div>
		</div>
		<div class="form mo"><span class="input" id="placeHolder">		<!-- 크롬 아이디 자동완성 기능 방지용 -->	<input type="text" style="display:none">		<input type="password" style="display:none">		<!-- //크롬 아이디 자동완성 기능 방지용 -->			<input type="text" placeholder="어디로, 어떤 여행을 떠날 예정인가요?" title="검색" id="inp_search_mo" onkeyup="completechk();" autocomplete="off">			<input type="text" aria-hidden="true" tabindex="-1" style="width:0;height:0;position:absolute;top:-9999px">		<a href="javascript:btnGnbSearch();" class="btn_search">검색</a></span>
			<span class="profile" id="mo_profile2"><a href="javascript:showLogin(2);"></a></span>
		</div>
	</div>

	<div class="menu">
		<div class="depth1">
			<div class="swiper-container swiper-container-initialized swiper-container-horizontal">
				<ul class="swiper-wrapper">
					<li class="swiper-slide on swiper-slide-active" onclick="changetab('/main/main.do','all');"><a href="/main/main.do">홈</a></li>
					<li class="swiper-slide swiper-slide-next" onclick="changetab('/main/theme.do','all');"><a href="/main/theme.do">테마</a></li>
					<li class="swiper-slide" onclick="changetab('/main/area.do','all');"><a href="/main/area.do">지역</a></li>
					<li class="swiper-slide" onclick="changetab('/main/cr_main.do?type=place','mobile');">
						<a href="javascript:;">여행콕콕</a>
						<div class="depth2 smenu1">
							<ul>
								<li id="top_menu_place" onclick="changetab('/main/cr_main.do?type=place','all');"><a href="/main/cr_main.do?type=place">핫플콕콕</a></li>
								<li id="top_menu_abc" onclick="changetab('/main/cr_main.do?type=abc','all');"><a href="/main/cr_main.do?type=abc">AI콕콕 플래너</a></li>
								<li id="top_menu_ai" onclick="changetab('/main/cr_main.do?type=ai','all');"><a href="/main/cr_main.do?type=ai">AI콕콕</a></li>
							</ul>
						</div>
					</li>
					<li class="swiper-slide" onclick="changetab('/tgpr/tgpr_main.do','all');"><a href="/tgpr/tgpr_main.do">여행상품 홍보관</a></li>
					<li class="swiper-slide" onclick="changetab('/list/travelinfo.do?service=ms','mobile');">
						<a href="javascript:;">여행정보</a>
						<div class="depth2 smenu2">
							<ul>
								<li id="top_menu_ms" onclick="changetab('/list/travelinfo.do?service=ms','all');"><a href="/list/travelinfo.do?service=ms">여행지</a></li>
								<li id="top_menu_rem" onclick="changetab('/list/travelinfo.do?service=rem','all');"><a href="/list/travelinfo.do?service=rem">여행기사</a></li>
								<li id="top_menu_cs" onclick="changetab('/list/travelinfo.do?service=cs','all');"><a href="/list/travelinfo.do?service=cs">여행코스</a></li>
								<li id="top_menu_fes" onclick="changetab('https://korean.visitkorea.or.kr/kfes/list/wntyFstvlList.do','all');"><a href="https://korean.visitkorea.or.kr/kfes/list/wntyFstvlList.do">축제</a></li>
								<li id="top_menu_show" onclick="changetab('/list/travelinfo.do?service=show','all');"><a href="/list/travelinfo.do?service=show">공연 / 행사</a></li>
								<li id="top_menu_event" onclick="changetab('/list/travelinfo.do?service=event','all');"><a href="/list/travelinfo.do?service=event">이벤트</a></li>
								<li id="top_menu_trss" onclick="changetab('/list/travelinfo.do?service=trss','all');"><a href="/list/travelinfo.do?service=trss">가볼래-터</a></li>
								<li id="top_menu_digt" onclick="changetab('/list/travelinfo.do?service=digt','all');"><a href="/list/travelinfo.do?service=digt">디지털관광주민증</a></li>
							</ul>
						</div>
					</li>
					<li class="swiper-slide" onclick="changetab('/mylocation/mylocation.do','all');"><a href="/mylocation/mylocation.do">여행지도</a></li>
				</ul>
			<span class="swiper-notification" aria-live="assertive" aria-atomic="true"></span></div>
		</div>
	</div>
	<div class="form pc">
		<div class="search_form_box" style="display: none;"><div class="area_keyword" style="display:none" tabindex="0">	<h2>어제의 인기 검색어</h2>	<ul id="p_search_hd1"></ul>	<ul id="p_search_hd2"></ul>	<div class="close"><button type="button">닫기</button></div></div><div class="words_list">	<ul></ul>	<div class="close"><button type="button">닫기</button></div></div></div>
		<span class="profile" id="pc_profile"><a href="javascript:showLogin(2);"></a></span>
	</div>
</div>
<div class="main_quick" id="chattingbanner" style="display : none;">
	<div class="inr">
		<a href="javascript:;" id="consultingBtn" class="btn_go">상담하기</a>
		<button type="button" id="mainQuickClose">닫기</button>
		<!-- 레이어 -->
		<div class="layer-talk-menu">
			<h1>실시간 문자채팅 관광안내</h1>
			<button class="close">닫기</button>
			<div class="group-talk-menu is-ttalk">
				<a class="tooltip1" href="javascript:void(0);" onclick="openTtalk2();" title="새창열림">
					<img id="ttalk_quick" style="height: 65px;" src="https://cdn.visitkorea.or.kr/resources/images/main/ttalk.png" alt="관광공사 웹쳇으로 상담하시려면 버튼을 클릭하세요.">
				</a>
				<p>바로 채팅창 열기<span>(바로실행 / 다운로드 불필요)</span></p>
			</div>
			<div class="group-talk-menu is-ttalk">
				<a class="tooltip1" href="javascript:void(0);" onclick="openKakao();" title="새창열림">
					<img id="ktalk_quick" style="height: 65px;" src="https://cdn.visitkorea.or.kr/resources/images/main/kakao.png" alt="카카오톡으로 상담하시려면 버튼을 클릭하세요.">
				</a>
				<p>카카오톡 메신저앱 열기<span>(해당앱이 설치되어 있어야 함)</span></p>
			</div>
			<!-- Your Chat Plugin code -->
			<div class="fb-customerchat" attribution="setup_tool" page_id="102691528386100"></div>
			<button class="close">닫기</button>
		</div>
		<!-- //레이어 -->
	</div>
</div>

<script src="../resources/js/header.js?v=202010281de9ecd1-a113-4969-bdcb-531199e03ee7"></script>
 
<script>
	ViewBottomMenubar();
	function ViewBottomMenubar(){

		if(!smallerThanTablet()){
			$('#quick_menu_mo').hide();
			return;
		} else{
			if($('#quick_menu_mo').length > 0){
				$('#quick_menu_mo').show();
				return;
			}
		}

		let strhtml = '';
		strhtml += '<div class="main_mo " id="quick_menu_mo">';
		strhtml += '	<div class="menu">';
		strhtml += `		<div class="quick_menu ">`;
		strhtml += '			<div class="menu">';
		strhtml += '				<ul>';
		strhtml += '					<li><a href="/main/main.do" class="home">홈</a></li>';
		strhtml += '					<li><a href="javascript:openSearchForm();" class="search">검색</a></li>';
		strhtml += '					<li><a href="/mylocation/mylocation.do" class="map">여행지도</a></li>';
		strhtml += '					<li id="quick_login_tab"></li>';
		strhtml += '				</ul>';
		strhtml += '			</div>';
		strhtml += '		</div>';
		strhtml += '	</div>';
		strhtml += '</div>';
		$('#gnbCommon').after(strhtml);
	}
</script>


</header>
