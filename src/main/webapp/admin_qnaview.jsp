<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>   
<!DOCTYPE html>
<html style="font-size: 16px;" lang="en"><head>
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta charset="utf-8">
    <meta name="keywords" content="">
    <meta name="description" content="">
    <title>문의게시판</title>
    <link rel="stylesheet" href="css/summernote-lite.css"/>
    <link rel="stylesheet" href="css/nicepage.css" media="screen">
<link rel="stylesheet" href="css/qnaview.css" media="screen">
<link rel="stylesheet" href="https://code.jquery.com/ui/1.13.2/themes/base/jquery-ui.css">
    <script class="u-script" type="text/javascript" src="jquery.js" defer=""></script>
    <script class="u-script" type="text/javascript" src="nicepage.js" defer=""></script>
    <meta name="generator" content="Nicepage 5.9.10, nicepage.com">
    <link id="u-theme-google-font" rel="stylesheet" href="https://fonts.googleapis.com/css?family=Roboto:100,100i,300,300i,400,400i,500,500i,700,700i,900,900i|Open+Sans:300,300i,400,400i,500,500i,600,600i,700,700i,800,800i">
    
    
    <script type="application/ld+json">{
		"@context": "http://schema.org",
		"@type": "Organization",
		"name": ""
}</script>
    <head>
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta charset="utf-8">
    <meta name="keywords" content="Contact, ​We’d love to hear from you, ​Visit Our Office">
    <meta name="description" content="">
    <title>main</title>
    <link rel="stylesheet" href="nicepage.css" media="screen">
<link rel="stylesheet" href="main.css" media="screen">
    <script class="u-script" type="text/javascript" src="jquery.js" defer=""></script>
    <script class="u-script" type="text/javascript" src="nicepage.js" defer=""></script>
    <meta name="generator" content="Nicepage 5.9.10, nicepage.com">
    <link id="u-theme-google-font" rel="stylesheet" href="https://fonts.googleapis.com/css?family=Roboto:100,100i,300,300i,400,400i,500,500i,700,700i,900,900i|Open+Sans:300,300i,400,400i,500,500i,600,600i,700,700i,800,800i">
    
    
    
    <script type="application/ld+json">{
		"@context": "http://schema.org",
		"@type": "Organization",
		"name": "",
		"logo": "images/pickm22.png",
		"sameAs": [
				"https://facebook.com/name",
				"https://twitter.com/name",
				"https://instagram.com/name"
		]
}</script>
    <meta name="theme-color" content="#478ac9">
    <meta name="twitter:site" content="@">
    <meta name="twitter:card" content="summary_large_image">
    <meta name="twitter:title" content="main">
    <meta name="twitter:description" content="">
    <meta property="og:title" content="main">
    <meta property="og:type" content="website">
  <meta data-intl-tel-input-cdn-path="intlTelInput/"></head>
  <body class="u-body u-xl-mode" data-lang="en"><header class="u-clearfix u-header u-palette-5-light-2 u-sticky" id="sec-0db4" data-animation-name="" data-animation-duration="0" data-animation-delay="0" data-animation-direction=""><div class="u-clearfix u-sheet u-sheet-1">
        <nav class="u-menu u-menu-one-level u-offcanvas u-menu-1">
          <div class="menu-collapse" style="font-size: 1rem; letter-spacing: 0px; font-weight: 700; text-transform: uppercase;">
            <a class="u-button-style u-custom-active-border-color u-custom-active-color u-custom-border u-custom-border-color u-custom-borders u-custom-hover-border-color u-custom-hover-color u-custom-left-right-menu-spacing u-custom-padding-bottom u-custom-text-active-color u-custom-text-color u-custom-text-hover-color u-custom-top-bottom-menu-spacing u-nav-link u-text-active-palette-1-base u-text-hover-palette-2-base" href="#">
              <svg class="u-svg-link" viewBox="0 0 24 24"><use xmlns:xlink="http://www.w3.org/1999/xlink" xlink:href="#menu-hamburger"></use></svg>
              <svg class="u-svg-content" version="1.1" id="menu-hamburger" viewBox="0 0 16 16" x="0px" y="0px" xmlns:xlink="http://www.w3.org/1999/xlink" xmlns="http://www.w3.org/2000/svg"><g><rect y="1" width="16" height="2"></rect><rect y="7" width="16" height="2"></rect><rect y="13" width="16" height="2"></rect>
</g></svg>
            </a>
          </div>
          <div class="u-custom-menu u-nav-container">
            <ul class="u-nav u-spacing-30 u-unstyled u-nav-1"><li class="u-nav-item"><a class="u-border-2 u-border-active-grey-90 u-border-hover-grey-50 u-border-no-left u-border-no-right u-border-no-top u-button-style u-nav-link u-text-active-grey-90 u-text-grey-90 u-text-hover-grey-90" href="Controller_admin?type=admin_login" style="padding: 10px 0px;">logout</a>
</li></ul>
          </div>
          <div class="u-custom-menu u-nav-container-collapse">
            <div class="u-black u-container-style u-inner-container-layout u-opacity u-opacity-95 u-sidenav">
              <div class="u-inner-container-layout u-sidenav-overflow">
                <div class="u-menu-close"></div>
                <ul class="u-align-center u-nav u-popupmenu-items u-unstyled u-nav-2"><li class="u-nav-item"><a class="u-button-style u-nav-link" href="Controller_admin?type=admin_login">logout</a>
</li></ul>
              </div>
            </div>
            <div class="u-black u-menu-overlay u-opacity u-opacity-70"></div>
          </div>
        </nav>
        <nav class="u-menu u-menu-one-level u-offcanvas u-menu-2">
          <div class="menu-collapse u-custom-font" style="font-size: 2.25rem; letter-spacing: 0px; font-family: &quot;Baloo Bhai 2&quot;; font-weight: 700; text-transform: uppercase;">
            <a class="u-button-style u-custom-active-border-color u-custom-active-color u-custom-border u-custom-border-color u-custom-border-radius u-custom-borders u-custom-hover-border-color u-custom-hover-color u-custom-left-right-menu-spacing u-custom-text-active-color u-custom-text-color u-custom-text-decoration u-custom-text-hover-color u-custom-top-bottom-menu-spacing u-nav-link" href="#">
              <svg class="u-svg-link" viewBox="0 0 24 24"><use xmlns:xlink="http://www.w3.org/1999/xlink" xlink:href="#svg-5013"></use></svg>
              <svg class="u-svg-content" version="1.1" id="svg-5013" viewBox="0 0 16 16" x="0px" y="0px" xmlns:xlink="http://www.w3.org/1999/xlink" xmlns="http://www.w3.org/2000/svg"><g><rect y="1" width="16" height="2"></rect><rect y="7" width="16" height="2"></rect><rect y="13" width="16" height="2"></rect>
</g></svg>
            </a>
          </div>
          <div class="u-custom-menu u-nav-container">
            <ul class="u-custom-font u-nav u-spacing-30 u-unstyled u-nav-3"><li class="u-nav-item"><a class="u-border-2 u-border-active-grey-90 u-border-hover-grey-50 u-border-no-left u-border-no-right u-border-no-top u-button-style u-nav-link u-text-active-grey-90 u-text-grey-90 u-text-hover-grey-90" href="Controller_admin?type=member" style="padding: 10px 0px;">회원관리</a>
</li><li class="u-nav-item"><a class="u-border-2 u-border-active-grey-90 u-border-hover-grey-50 u-border-no-left u-border-no-right u-border-no-top u-button-style u-nav-link u-text-active-grey-90 u-text-grey-90 u-text-hover-grey-90" href="Controller_admin?type=admin_product" style="padding: 10px 0px;">상품관리</a>
</li><li class="u-nav-item"><a class="u-border-2 u-border-active-grey-90 u-border-hover-grey-50 u-border-no-left u-border-no-right u-border-no-top u-button-style u-nav-link u-text-active-grey-90 u-text-grey-90 u-text-hover-grey-90" href="Controller_admin?type=admin_qna" style="padding: 10px 0px;">문의게시판</a>
</li></ul>
          </div>
          <div class="u-custom-menu u-nav-container-collapse">
            <div class="u-black u-container-style u-inner-container-layout u-opacity u-opacity-95 u-sidenav">
              <div class="u-inner-container-layout u-sidenav-overflow">
                <div class="u-menu-close"></div>
                <ul class="u-align-center u-nav u-popupmenu-items u-unstyled u-nav-4"><li class="u-nav-item"><a class="u-button-style u-nav-link" href="Controller_admin?type=member">회원관리</a>
</li><li class="u-nav-item"><a class="u-button-style u-nav-link" href="Controller_admin?type=admin_product">상품관리</a>
</li><li class="u-nav-item"><a class="u-button-style u-nav-link" href="Controller_admin?type=admin_qna">문의게시판</a>
</li></ul>
              </div>
            </div>
            <div class="u-black u-menu-overlay u-opacity u-opacity-70"></div>
          </div>
        </nav>
        <a href="Controller_admin?type=main" class="u-hover-feature u-image u-image-default u-logo u-image-1" data-image-width="506" data-image-height="336" title="Main" data-animation-name="customAnimationIn" data-animation-duration="1000">
          <img src="images/pickm22.png" class="u-logo-image u-logo-image-1">
        </a>
      </div></header>
          
       
      
    <section class="u-clearfix u-section-1" id="sec-f563">
      <div class="u-clearfix u-sheet u-sheet-1">
      
       <div id="bbs">
		<form action="Controller?type=admin_qnawritecomplete" method="post">
		<table summary="QnA 보기">
			<caption class="caption">QnA 보기</caption>
			<thead>
				<c:set var="bvo" value="${requestScope.vo }"></c:set>
				<tr class="title">
					<th class="subject">제목</th>
					<th class="blank"></th>
					<th colspan="9" class="subject2">${bvo.q_title }</th>
				</tr>
				<tr>
					<td colspan="11" class="underthead"></td>
				
				</tr>
				<tr>
					<th class="writer">글쓴이</th>
					<th class="blank"></th>
					<th class="writer2">${bvo.m_id }</th>
					<th class="blank"></th>
					<th class="hit">조회수</th>
					<th class="blank"></th>
					<th class="hit2">${bvo.q_hit }</th>
					<th class="blank"></th>
					<th class="date">날짜</th>
					<th class="blank"></th>
					<th class="date2">${bvo.q_date }</th>
				</tr>
			</thead>
			<tbody>	
				<tr>
					<td colspan="11" class="underthead"></td>
				</tr>
				<tr>
					<td colspan="11" id="contentarea">${bvo.q_content }</td>
				</tr>
				
				
			</tbody>
		</table>
			<p>
				<button type="button" id="cancel" onclick="javascript:location.href='Controller?type=admin_qna'">목록</button>
				<button type="button" id="edit" onclick="edit1()">수정</button>
				<button type="button" id="delete" onclick="delBbs()">삭제</button>
			</p>
		</form>
		
		<form action="Controller" method="post" name="frm2">
		<input type="hidden" name="type"/>
			<table id="commentable">
				<tbody>
					<c:forEach var="bvo2" items="${requestScope.cvo}">
						<tr>
							<td id="commentwriter">${bvo2.getMvo().m_id }</td>
							<td id="commentcontent">${bvo2.getC_content() }<br/><br/><br/></td>
							<td id="commentbutton">
								<button type="button" id="editecomment${bvo2.getC_idx()}" class="commentbutton"  onclick="editecomment('${bvo2.getC_idx() }')">수정</button>
								<button type="button" id="deletecomment${bvo2.getC_idx()}" class="commentbutton" onclick="deletecomment('${bvo2.getC_idx() }')">삭제</button>
							</td>
						</tr>
						<tr>
							<td colspan="3" class="underthead"></td>
						</tr>
					</c:forEach>
				</tbody>
			</table>
		</form>	
		
		<form action="Controller_admin?type=admin_qnacommentwrite" method="post">
			<input type="hidden" name="q_idx" value="${bvo.q_idx }"/>
			<input type="hidden" name="m_idx" value="${mvo.m_idx }"/>
			<input type="hidden" name="q_pw" value="${bvo.q_pw }"/>
			<textarea name="content" cols="80" rows="10" id="content" data-str="내용" style="width: 1135px; height: 296px;"></textarea>
			<button type="button" id="savebut" onclick="sendData(this.form)">댓글 저장</button>
		</form>
	</div>
      
      </div>
    </section>
    
    
   
			
   <footer class="u-align-center u-clearfix u-footer u-grey-80 u-footer" id="sec-c5d8"><div class="u-clearfix u-sheet u-sheet-1">
        <div class="u-social-icons u-spacing-10 u-social-icons-1">
          <a class="u-social-url" title="facebook" target="_blank" href="https://facebook.com/name"><span class="u-icon u-social-facebook u-social-icon u-icon-1"><svg class="u-svg-link" preserveAspectRatio="xMidYMin slice" viewBox="0 0 112 112" style=""><use xmlns:xlink="http://www.w3.org/1999/xlink" xlink:href="#svg-8d68"></use></svg><svg class="u-svg-content" viewBox="0 0 112 112" x="0" y="0" id="svg-8d68"><circle fill="currentColor" cx="56.1" cy="56.1" r="55"></circle><path fill="#FFFFFF" d="M73.5,31.6h-9.1c-1.4,0-3.6,0.8-3.6,3.9v8.5h12.6L72,58.3H60.8v40.8H43.9V58.3h-8V43.9h8v-9.2
c0-6.7,3.1-17,17-17h12.5v13.9H73.5z"></path></svg></span>
          </a>
          <a class="u-social-url" title="twitter" target="_blank" href="https://twitter.com/name"><span class="u-icon u-social-icon u-social-twitter u-icon-2"><svg class="u-svg-link" preserveAspectRatio="xMidYMin slice" viewBox="0 0 112 112" style=""><use xmlns:xlink="http://www.w3.org/1999/xlink" xlink:href="#svg-42c2"></use></svg><svg class="u-svg-content" viewBox="0 0 112 112" x="0" y="0" id="svg-42c2"><circle fill="currentColor" class="st0" cx="56.1" cy="56.1" r="55"></circle><path fill="#FFFFFF" d="M83.8,47.3c0,0.6,0,1.2,0,1.7c0,17.7-13.5,38.2-38.2,38.2C38,87.2,31,85,25,81.2c1,0.1,2.1,0.2,3.2,0.2
c6.3,0,12.1-2.1,16.7-5.7c-5.9-0.1-10.8-4-12.5-9.3c0.8,0.2,1.7,0.2,2.5,0.2c1.2,0,2.4-0.2,3.5-0.5c-6.1-1.2-10.8-6.7-10.8-13.1
c0-0.1,0-0.1,0-0.2c1.8,1,3.9,1.6,6.1,1.7c-3.6-2.4-6-6.5-6-11.2c0-2.5,0.7-4.8,1.8-6.7c6.6,8.1,16.5,13.5,27.6,14
c-0.2-1-0.3-2-0.3-3.1c0-7.4,6-13.4,13.4-13.4c3.9,0,7.3,1.6,9.8,4.2c3.1-0.6,5.9-1.7,8.5-3.3c-1,3.1-3.1,5.8-5.9,7.4
c2.7-0.3,5.3-1,7.7-2.1C88.7,43,86.4,45.4,83.8,47.3z"></path></svg></span>
          </a>
          <a class="u-social-url" title="instagram" target="_blank" href="https://instagram.com/name"><span class="u-icon u-social-icon u-social-instagram u-icon-3"><svg class="u-svg-link" preserveAspectRatio="xMidYMin slice" viewBox="0 0 112 112" style=""><use xmlns:xlink="http://www.w3.org/1999/xlink" xlink:href="#svg-7895"></use></svg><svg class="u-svg-content" viewBox="0 0 112 112" x="0" y="0" id="svg-7895"><circle fill="currentColor" cx="56.1" cy="56.1" r="55"></circle><path fill="#FFFFFF" d="M55.9,38.2c-9.9,0-17.9,8-17.9,17.9C38,66,46,74,55.9,74c9.9,0,17.9-8,17.9-17.9C73.8,46.2,65.8,38.2,55.9,38.2
z M55.9,66.4c-5.7,0-10.3-4.6-10.3-10.3c-0.1-5.7,4.6-10.3,10.3-10.3c5.7,0,10.3,4.6,10.3,10.3C66.2,61.8,61.6,66.4,55.9,66.4z"></path><path fill="#FFFFFF" d="M74.3,33.5c-2.3,0-4.2,1.9-4.2,4.2s1.9,4.2,4.2,4.2s4.2-1.9,4.2-4.2S76.6,33.5,74.3,33.5z"></path><path fill="#FFFFFF" d="M73.1,21.3H38.6c-9.7,0-17.5,7.9-17.5,17.5v34.5c0,9.7,7.9,17.6,17.5,17.6h34.5c9.7,0,17.5-7.9,17.5-17.5V38.8
C90.6,29.1,82.7,21.3,73.1,21.3z M83,73.3c0,5.5-4.5,9.9-9.9,9.9H38.6c-5.5,0-9.9-4.5-9.9-9.9V38.8c0-5.5,4.5-9.9,9.9-9.9h34.5
c5.5,0,9.9,4.5,9.9,9.9V73.3z"></path></svg></span>
          </a>
        </div>
        <p class="u-text u-text-default u-text-1"><span class="u-icon u-icon-4"><svg class="u-svg-content" viewBox="0 0 52 52" x="0px" y="0px" style="width: 1em; height: 1em;"><path style="fill:currentColor;" d="M38.853,5.324L38.853,5.324c-7.098-7.098-18.607-7.098-25.706,0h0
	C6.751,11.72,6.031,23.763,11.459,31L26,52l14.541-21C45.969,23.763,45.249,11.72,38.853,5.324z M26.177,24c-3.314,0-6-2.686-6-6
	s2.686-6,6-6s6,2.686,6,6S29.491,24,26.177,24z"></path></svg></span>&nbsp;지구 동아시아 대한민국 서울특별시 구로구
        </p>
        <a href="https://nicepage.com/joomla-page-builder" class="u-active-none u-bottom-left-radius-0 u-bottom-right-radius-0 u-btn u-btn-rectangle u-button-style u-hover-none u-none u-radius-0 u-top-left-radius-0 u-top-right-radius-0 u-btn-1"><span class="u-icon"><svg class="u-svg-content" viewBox="0 0 405.333 405.333" x="0px" y="0px" style="width: 1em; height: 1em;"><path d="M373.333,266.88c-25.003,0-49.493-3.904-72.704-11.563c-11.328-3.904-24.192-0.896-31.637,6.699l-46.016,34.752    c-52.8-28.181-86.592-61.952-114.389-114.368l33.813-44.928c8.512-8.512,11.563-20.971,7.915-32.64    C142.592,81.472,138.667,56.96,138.667,32c0-17.643-14.357-32-32-32H32C14.357,0,0,14.357,0,32    c0,205.845,167.488,373.333,373.333,373.333c17.643,0,32-14.357,32-32V298.88C405.333,281.237,390.976,266.88,373.333,266.88z"></path></svg></span>&nbsp;+82 (02) 567-8910
        </a>
        <p class="u-small-text u-text u-text-variant u-text-2"> © 2023 Pick M2 Gallery - All Rights Reserved</p>
      </div></footer>
    <section class="u-backlink u-clearfix u-grey-80">
      <a class="u-link" href="https://nicepage.com/templates" target="_blank">
        <span>Template</span>
      </a>
      <p class="u-text">
        <span>created with</span>
      </p>
      <a class="u-link" href="https://nicepage.online" target="_blank">
        <span>Website Builder</span>
      </a>. 
    </section>
</body>

<form name="frm" action="Controller" method="post">
	<input type="hidden" name="type"/>
	<input type="hidden" name="q_idx" value="${bvo.q_idx }"/>
	<input type="hidden" name="c_idx" value="${bvo2.getC_idx() }"/>
								
</form>


<script src="https://code.jquery.com/jquery-3.6.4.min.js" integrity="sha256-oP6HI9z1XaZNBrJURtCoUT5SUnxFr8s3BzRl+cbzUq8=" crossorigin="anonymous"></script>
<script src="https://code.jquery.com/ui/1.13.2/jquery-ui.js"></script>
<script src="js/summernote-lite.js"></script>
<script src="js/lang/summernote-ko-KR.js"></script>
<script>

	$(function(){
		$("#content").summernote({
			height: 100,
			width: 1136,
			leng: "ko-KR",
			callbacks:{
				// 이미지가 에디터에 삽입될 때 자동으로 호출되는 함수!
				onImageUpload:function(files, editor){
					// 이미지가 에디터에 추가될 때마다 수행하는 곳!
					// (추가되는 이미지는 배열로 인식된다! 
					//		하나만 추가해도 1개짜리 배열로 인식)
					for(let i=0; i<files.length; i++)
						sendImage(files[i], editor);// 비동기식 통신을 이용하여
							// 서버로 이미지를 보내는 함수 호출!
				}
			}
			
		});
	});

	function sendImage(file, editor){
		// 파일을 서버로 보낼 때는 일반적인 form으로 보내지 못한다.
		// 즉, form-data를 활용해야 함!
		let frm = new FormData();
		
		// 서버로 보내고자 하는 파일을 파라미터로 지정한다.
		frm.append("img", file);
		
		//비동기식 통신을 이용하여 파일을 서버로 보낸다.
		$.ajax({
			url: "Controller?type=admin_qnacommentsaveImg",
			data: frm,// 파라미터(파일일 담긴 폼)
			type: "post", //전송방식
			contentType: false,
			processData: false,
			cache: false,
			dataType: "json", // 서버로부터 받을 데이터 형식
		}).done(function(data){
			$("#content").summernote("editor.insertImage", data.url);
		}).fail(function(err){
			// 서버에서 오류가 발생 시
		});
	}
	
	function sendData(frm){
		if($("#content").val() == ""){
			alert($("#content").data("str")+"를 입력하세요");
			return;
		}
		frm.submit();
	}
	
	function delBbs(){
		let res = confirm("삭제하시겠습니까?");
		if(res){
			document.frm.type.value="admin_qnadel";
			document.frm.submit();
		}
	}
	
	function edit1(){
		document.frm.type.value="admin_qnaedit";
		document.frm.submit();
	}
	
	
	
	function deletecomment(cIdx){
		let res = confirm("삭제하시겠습니까?");
		if(res){
			document.frm.type.value="admin_qnacommentdel";
			document.frm.c_idx.value=cIdx;
			document.frm.submit();
		}
	}
	
	function editecomment(cIdx){
		document.frm.type.value="admin_qnacommentedit";
		document.frm.c_idx.value=cIdx;
		document.frm.submit();
	}

</script>
</html>