<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html style="font-size: 16px;" lang="en">
<head>
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<meta charset="utf-8">
<meta name="keywords" content="아이디">
<meta name="description" content="">
<title>modify</title>
<link rel="stylesheet" href="css/nicepage.css" media="screen">
<link rel="stylesheet" href="css/modify.css" media="screen">
<script class="u-script" type="text/javascript" src="js/jquery.js" defer=""></script>
<script class="u-script" type="text/javascript" src="js/nicepage.js"
	defer=""></script>
<meta name="generator" content="Nicepage 5.9.10, nicepage.com">
<meta name="referrer" content="origin">
<link id="u-theme-google-font" rel="stylesheet"
	href="https://fonts.googleapis.com/css?family=Roboto:100,100i,300,300i,400,400i,500,500i,700,700i,900,900i|Open+Sans:300,300i,400,400i,500,500i,600,600i,700,700i,800,800i">


<script type="application/ld+json">{
		"@context": "http://schema.org",
		"@type": "Organization",
		"name": "",
		"logo": "images/default-logo.png"
}</script>
<meta name="theme-color" content="#478ac9">
<meta property="og:title" content="modify">
<meta property="og:type" content="website">
<meta data-intl-tel-input-cdn-path="intlTelInput/">
</head>
<body class="u-body u-xl-mode" data-lang="en">
	<header class="u-clearfix u-header" id="sec-fba2" data-animation-name="" data-animation-duration="0" data-animation-delay="0" data-animation-direction=""><div class="u-clearfix u-sheet u-sheet-1">
        <nav class="u-menu u-menu-one-level u-offcanvas u-menu-1">
          <div class="menu-collapse" style="font-size: 1rem; letter-spacing: 0px;">
            <a class="u-button-style u-custom-left-right-menu-spacing u-custom-padding-bottom u-custom-top-bottom-menu-spacing u-nav-link u-text-active-palette-1-base u-text-hover-palette-2-base" href="#">
              <svg class="u-svg-link" viewBox="0 0 24 24"><use xmlns:xlink="http://www.w3.org/1999/xlink" xlink:href="#menu-hamburger"></use></svg>
              <svg class="u-svg-content" version="1.1" id="menu-hamburger" viewBox="0 0 16 16" x="0px" y="0px" xmlns:xlink="http://www.w3.org/1999/xlink" xmlns="http://www.w3.org/2000/svg"><g><rect y="1" width="16" height="2"></rect><rect y="7" width="16" height="2"></rect><rect y="13" width="16" height="2"></rect>
</g></svg>
            </a>
          </div>
          <div class="u-custom-menu u-nav-container">
            <ul class="u-nav u-unstyled u-nav-1"><li class="u-nav-item"><a class="u-button-style u-nav-link u-text-active-palette-1-base u-text-hover-palette-2-base" href="Controller?type=home" style="padding: 10px 20px;">Home</a>
</li><li class="u-nav-item"><a class="u-button-style u-nav-link u-text-active-palette-1-base u-text-hover-palette-2-base" href="Controller?type=sale" style="padding: 10px 20px;">판매중</a>
</li><li class="u-nav-item"><a class="u-button-style u-nav-link u-text-active-palette-1-base u-text-hover-palette-2-base" href="Controller?type=hold" style="padding: 10px 20px;">판매대기</a>
</li><li class="u-nav-item"><a class="u-button-style u-nav-link u-text-active-palette-1-base u-text-hover-palette-2-base" href="Controller?type=qna" style="padding: 10px 20px;">문의게시판</a>
</li><li class="u-nav-item"><c:if test="${sessionScope.mvo !=null }"><a class="u-button-style u-nav-link u-text-active-palette-1-base u-text-hover-palette-2-base" href="Controller?type=check" style="padding: 10px 20px;">마이페이지</a></c:if>
							<c:if test="${sessionScope.mvo ==null }"><a class="u-button-style u-nav-link u-text-active-palette-1-base u-text-hover-palette-2-base" href="login.jsp" style="padding: 10px 20px;">마이페이지</a></c:if>
</li></ul>
          </div>
          <div class="u-custom-menu u-nav-container-collapse">
            <div class="u-black u-container-style u-inner-container-layout u-opacity u-opacity-95 u-sidenav">
              <div class="u-inner-container-layout u-sidenav-overflow">
                <div class="u-menu-close"></div>
                <ul class="u-align-center u-nav u-popupmenu-items u-unstyled u-nav-2"><li class="u-nav-item"><a class="u-button-style u-nav-link" href="#">Home</a>
</li><li class="u-nav-item"><a class="u-button-style u-nav-link" href="#">판매중</a>
</li><li class="u-nav-item"><a class="u-button-style u-nav-link" href="#">판매대기</a>
</li><li class="u-nav-item"><a class="u-button-style u-nav-link" href="#">문의게시판</a>
</li><li class="u-nav-item"><a class="u-button-style u-nav-link">마이페이지</a>
</li></ul>
              </div>
            </div>
            <div class="u-black u-menu-overlay u-opacity u-opacity-70"></div>
          </div>
        </nav>
       <c:if test="${sessionScope.mvo == null }" >
        	<a href="login.jsp" class="u-border-2 u-border-hover-palette-1-base u-border-palette-1-base u-btn u-btn-round u-button-style u-hover-palette-1-base u-none u-radius-50 u-btn-1">
        		login
        	</a>
        </c:if>
        
       <c:if test="${sessionScope.mvo != null }" >
        <a href="Controller?type=logout" class="u-border-2 u-border-hover-palette-1-base u-border-palette-1-base u-btn u-btn-round u-button-style u-hover-palette-1-base u-none u-radius-50 u-btn-1">
        		logout
        	</a>
       </c:if>
       
       <c:if test="${sessionScope.mvo == null }" >
       	 <a href="join.jsp" class="u-border-2 u-border-hover-palette-1-base u-border-palette-1-base u-btn u-btn-round u-button-style u-hover-palette-1-base u-none u-radius-50 u-btn-2">
       	 	join
       	 </a>
       </c:if>
       
      </div></header>
	<section class="u-align-center u-clearfix u-grey-15 u-section-1"
		id="sec-f84b">
		<div class="u-clearfix u-sheet u-sheet-1">
			<div
				class="u-expanded-width u-tab-links-align-justify u-tabs u-tabs-1">
				<ul class="u-tab-list u-unstyled" role="tablist">
					<li class="u-tab-item" role="presentation"><a
						class="active u-active-white u-button-style u-tab-link u-tab-link-1"
						id="link-tab-0da5" href="#tab-0da5" role="tab"
						aria-controls="tab-0da5" aria-selected="true">개인 정보 수정</a></li>
				</ul>
				<div class="u-tab-content">
					<div
						class="u-container-style u-tab-active u-tab-pane u-white u-tab-pane-1"
						id="tab-0da5" role="tabpanel" aria-labelledby="link-tab-0da5">
						<div class="u-container-layout u-container-layout-1">
							<div class="u-form u-grey-5 u-radius-50 u-form-1">
								<form action="Controller"
									class="u-clearfix u-form-spacing-50 u-form-vertical u-inner-form"
									source="email" name="form" style="padding: 50px;" method="post">
									<div class="u-form-group u-form-name u-label-left">
										<label for="name-b6da" class="u-label u-spacing-50 u-label-1"
											style="width: 200px;">아이디</label> <input
											style="background-color: #e2e2e2; font-weight: bold;"
											disabled="disabled" type="text"
											value="${requestScope.mvo.m_id}" id="name-b6da" name="name"
											class="u-input u-input-rectangle u-radius-10 disabledinput"
											required="">
									</div>
									<div class="u-form-email u-form-group u-label-left">
										<label for="email-b6da" class="u-label u-spacing-50 u-label-2"
											style="width: 200px;">이름</label> <input type="text"
											style="background-color: #e2e2e2; font-weight: bold;"
											disabled="disabled" 
											value="${requestScope.mvo.m_name}" id="email-b6da"
											name="name" class="u-input u-input-rectangle u-radius-10"
											required="">
									</div>
									<div class="u-form-group u-label-left u-form-group-3">
										<label for="password" class="u-label u-spacing-50 u-label-3"
											style="width: 200px;">비밀번호</label> <input type="password"
											placeholder="****" id="password" name="pass"
											class="u-input u-input-rectangle u-radius-10">
									</div>
									<div class="u-form-group u-label-left u-form-group-3">
										<label for="password_chk"
											class="u-label u-spacing-50 u-label-4" style="width: 200px;">비밀번호
											확인</label> <input type="password" placeholder="****"
											id="password_chk" name="pass2"
											class="u-input u-input-rectangle u-radius-10">
									</div>
									<div class="u-form-group u-label-left u-form-group-4">
										<label for="text-ad55" class="u-label u-spacing-50 u-label-5"
											style="width: 200px;">연락처</label> <input type="text"
											value="${requestScope.mvo.m_phone}" id="phone"
											name="phone" class="u-input u-input-rectangle u-radius-10">
									</div>
									<div class="u-form-group u-label-left u-form-group-5">
										<label for="text-e2f0" class="u-label u-spacing-50 u-label-6"
											style="width: 200px;">이메일</label> <input type="text"
											value="${requestScope.mvo.m_email}" id="email"
											name="email" class="u-input u-input-rectangle u-radius-10">
									</div>
									<div class="u-form-group u-form-submit u-label-left">
										<label class="u-label u-spacing-50 u-label-7"></label>
										<div class="u-align-center u-btn-submit-container">
											<button id="subbtn" type="button"
												class="u-border-2 u-border-palette-1-light-1 u-btn u-btn-round u-btn-submit u-button-style u-hover-palette-1-light-1 u-none u-radius-50 u-text-hover-palette-1-light-3 u-text-palette-1-light-2 u-btn-1">수정</button>
										</div>
									</div>
									<input type="hidden" value="" name="recaptchaResponse">
									<input type="hidden" value="modify" name="type"> <input
										type="hidden" value="${requestScope.idx}" name="idx">
									<input type="hidden" name="formServices"
										value="8d7513d1aa0cadabf4cec34e8ba23d94">
								</form>
							</div>
							<a href="javascript:history.back();"
								class="u-border-2 u-border-palette-1-light-1 u-btn u-btn-round u-button-style u-hover-palette-1-light-1 u-none u-radius-50 u-text-hover-palette-1-light-3 u-text-palette-1-light-2 u-btn-2"
								data-animation-name="" data-animation-duration="0"
								data-animation-delay="0" data-animation-direction="">취소</a>
						</div>
					</div>
				</div>
			</div>
		</div>
	</section>


	<footer class="u-align-center u-clearfix u-footer u-grey-80 u-footer"
		id="sec-3511">
		<div class="u-clearfix u-sheet u-sheet-1">
			<p class="u-small-text u-text u-text-variant u-text-1">Sample
				text. Click to select the Text Element.</p>
		</div>
	</footer>
	<section class="u-backlink u-clearfix u-grey-80">
		<a class="u-link" href="https://nicepage.com/website-templates"
			target="_blank"> <span>Free Website Templates</span>
		</a>
		<p class="u-text">
			<span>created with</span>
		</p>
		<a class="u-link" href="https://nicepage.cc" target="_blank"> <span>Website
				Builder</span>
		</a>.
	</section>
	<script src="https://code.jquery.com/jquery-3.7.0.min.js"
		integrity="sha256-2Pmvv0kuTBOenSvLm6bvfBSSHrUJ+3A7x6P5Ebd07/g="
		crossorigin="anonymous"></script>
	<script>
		$(function() {
			$("#subbtn").bind("click", function() {
				if ($("#password").val().trim().length < 1 || $("#password_chk").val().trim().length < 1 || $("#password").val() != $("#password_chk").val())
					alert("비밀번호를 확인해주세요.");
				else if($("#email").val().trim().length < 1 )
					alert("이메일을 입력하세요");
				else if($("#phone").val().trim().length < 11 )
					alert("연락처를 입력하세요");
				else {
					form.submit();
					alert("수정되었습니다.");
				}
				
			})
		});
	</script>
</body>
</html>