<!DOCTYPE HTML>
<%@ page contentType="text/html;charset=euc-kr"%>
<html><head>
<title>JSP World</title>
<meta name="viewport" content="width=device-width, initial-scale=1">
<!-- jQuery/jQuery Mobile 라이브러리 사용 -->
<%@ include file="../jQueryMobile.inc" %>
<script type="text/javascript">
// 웹문서 로딩이 완료된 후에 실행할 함수 정의 
$(function() {
    // HTML DOM Tree 구조에 따라 <ul>, <li>, <a> 엘리먼트가 클릭되면 실행될 함수 정의
	$('ul li a').click(function() {
	    ///// page1 /////
	    // 클릭된 개체(this) 내의 각 엘리먼트를 찾아(find), 그 속성(attr) 또는 데이터(text) 인식
		var imageSrc   = $(this).find('img').attr('src');
		var imageTitle = $(this).find('h3').text();	
		var imageDesc  = $(this).find('p').text();

		///// page2 /////
		// id를 이용한 개체 인식 및 값 할당
		// 이미지 소스 변경
		$("#p2_image").attr('src', imageSrc);	
		// 개체에 HTML 문자로 쓰기
		$("#p2_title").html(imageTitle);	
		$("#p2_desc").html(imageDesc);	
	});
});
</script>
</head>
<body>
<!-- 첫 번째 페이지: 시작 -->
<section data-role="page" id="page1">
	<!-- 1. 헤더 -->
	<header data-role="header" data-theme="b">
		<!-- 헤더 타이틀 -->
		<h1>사진 목록</h1>
	</header> 
	<!-- 2. 본문 -->
	<section data-role="content"> 
		<%
		// 이미지 배열
		String[] title       = {"콜로세움", "에펠탑", "비너스상"};
		String[] image_name  = {"coloseum.jpg", "eiffel_tower.jpg", "venus.jpg"};
		String[] description = {"이탈리아 로마", "프랑스 파리", "프랑스 루브르미술관"};
		%>
	    <!-- 목록 -->
		<ul data-role="listview" data-inset="true" data-theme="e"> 
			<!-- 목록 아이템 1 -->
			<li>
			<a href="#page2" data-rel="dialog" data-transition="pop">
			<!-- 이미지: 소스, 제목, 설명 -->
			<img src="../image/<%= image_name[0] %>" width=100% height=100%>
			<h3><%= title[0] %></h3>
			<p><%= description[0] %></p>
		</a>
	</li>				
			
			<!-- 목록 아이템 2 -->
			<li>
			<a href="#page2" data-rel="dialog" data-transition="pop">
			<!-- 이미지: 소스, 제목, 설명 -->
			<img src="../image/<%= image_name[1] %>" width=100% height=100%>
			<h3><%= title[1] %></h3>
			<p><%= description[1] %></p>
		</a>
	</li>				

			<!-- 목록 아이템 3 -->
			<li>
			<a href="#page2" data-rel="dialog" data-transition="pop">
			<!-- 이미지: 소스, 제목, 설명 -->
			<img src="../image/<%= image_name[2] %>" width=100% height=100%>
			<h3><%= title[2] %></h3>
			<p><%= description[2] %></p>
		</a>
	</li>				
	</ul>
	</section> 
	<!-- 3. 푸터 -->
	<footer data-role="footer" data-theme="a" data-position="fixed">
        <%@ include file="../businessInfo.inc" %>
	</footer>

</section>
<!-- 첫 번째 페이지: 시작 -->

<!-- 두 번쩨 페이지: 시작 -->
<section data-role="page" id="page2">
	<!-- 1. 헤더 -->
	<header data-role="header" data-theme="b">
		<!-- 이미지 제목 -->
		<h1 id="p2_title"></h1>
	</header> 
	<!-- 2. 본문 -->
	<section data-role="content"> 
        <!-- 이미지 소스 --> 
		<img id="p2_image" width="100%">
		
		<!-- 이미지 설명 -->
		<p id="p2_desc"></p> 
	</section> 
</section> 
<!-- 두 번째 페이지: 끝 -->
</body>
</html>