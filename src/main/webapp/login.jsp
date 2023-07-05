<%@page import="dao.MinDAO"%>
<%@page import="vo.MemVO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html style="font-size: 16px;" lang="en">
<head>
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<meta charset="utf-8">
<meta name="keywords" content="ë¡ê·¸ì¸â">
<meta name="description" content="">
<title>login</title>
<link rel="stylesheet" href="css/nicepage.css" media="screen">
<link rel="stylesheet" href="css/login.css" media="screen">
<script class="u-script" type="text/javascript" src="js/jquery.js"
	defer=""></script>
<script class="u-script" type="text/javascript" src="js/nicepage.js"
	defer=""></script>
<meta name="generator" content="Nicepage 5.9.10, nicepage.com">
<meta name="referrer" content="origin">
<link id="u-theme-google-font" rel="stylesheet"
	href="https://fonts.googleapis.com/css?family=Roboto:100,100i,300,300i,400,400i,500,500i,700,700i,900,900i|Open+Sans:300,300i,400,400i,500,500i,600,600i,700,700i,800,800i">


<script type="application/ld+json">{
		"@context": "http://schema.org",
		"@type": "Organization",
		"name": ""
}</script>
<meta name="theme-color" content="#478ac9">
<meta property="og:title" content="login">
<meta property="og:type" content="website">
<meta data-intl-tel-input-cdn-path="intlTelInput/">
</head>
<body class="u-body u-xl-mode" data-lang="en">
	<header class="u-clearfix u-header" id="sec-fba2"
		data-animation-name="" data-animation-duration="0"
		data-animation-delay="0" data-animation-direction="">
		<div class="u-clearfix u-sheet u-sheet-1">
			<!-- header -->

			<nav class="u-menu u-menu-one-level u-offcanvas u-menu-1">
				<div class="menu-collapse"
					style="font-size: 1rem; letter-spacing: 0px;">
					<a
						class="u-button-style u-custom-left-right-menu-spacing u-custom-padding-bottom u-custom-top-bottom-menu-spacing u-nav-link u-text-active-palette-1-base u-text-hover-palette-2-base"
						href="#"> <svg class="u-svg-link" viewBox="0 0 24 24">
							<use xmlns:xlink="http://www.w3.org/1999/xlink"
								xlink:href="#menu-hamburger"></use></svg> <svg class="u-svg-content"
							version="1.1" id="menu-hamburger" viewBox="0 0 16 16" x="0px"
							y="0px" xmlns:xlink="http://www.w3.org/1999/xlink"
							xmlns="http://www.w3.org/2000/svg">
							<g>
							<rect y="1" width="16" height="2"></rect>
							<rect y="7" width="16" height="2"></rect>
							<rect y="13" width="16" height="2"></rect>
</g></svg>
					</a>
				</div>
				<div class="u-custom-menu u-nav-container">
					<ul class="u-nav u-unstyled u-nav-1">
						<li class="u-nav-item"><a
							class="u-button-style u-nav-link u-text-active-palette-1-base u-text-hover-palette-2-base"
							href="Controller?type=home" style="padding: 10px 20px;">Home</a>
						</li>
						<li class="u-nav-item"><a
							class="u-button-style u-nav-link u-text-active-palette-1-base u-text-hover-palette-2-base"
							href="Controller?type=sale" style="padding: 10px 20px;">판매중</a></li>
						<li class="u-nav-item"><a
							class="u-button-style u-nav-link u-text-active-palette-1-base u-text-hover-palette-2-base"
							href="Controller?type=hold" style="padding: 10px 20px;">판매대기</a>
						</li>
						<li class="u-nav-item"><a
							class="u-button-style u-nav-link u-text-active-palette-1-base u-text-hover-palette-2-base"
							href="Controller?type=qna" style="padding: 10px 20px;">문의게시판</a>
						</li>
						<li class="u-nav-item"><c:if
								test="${sessionScope.mvo !=null }">
								<a
									class="u-button-style u-nav-link u-text-active-palette-1-base u-text-hover-palette-2-base"
									href="Controller?type=check" style="padding: 10px 20px;">마이페이지</a>
							</c:if> <c:if test="${sessionScope.mvo ==null }">
								<a
									class="u-button-style u-nav-link u-text-active-palette-1-base u-text-hover-palette-2-base"
									href="login.jsp" style="padding: 10px 20px;">마이페이지</a>
							</c:if></li>
					</ul>
				</div>
				<div class="u-custom-menu u-nav-container-collapse">
					<div
						class="u-black u-container-style u-inner-container-layout u-opacity u-opacity-95 u-sidenav">
						<div class="u-inner-container-layout u-sidenav-overflow">
							<div class="u-menu-close"></div>
							<ul
								class="u-align-center u-nav u-popupmenu-items u-unstyled u-nav-2">
								<li class="u-nav-item"><a class="u-button-style u-nav-link"
									href="#">Home</a></li>
								<li class="u-nav-item"><a class="u-button-style u-nav-link"
									href="#">판매중</a></li>
								<li class="u-nav-item"><a class="u-button-style u-nav-link"
									href="#">판매대기</a></li>
								<li class="u-nav-item"><a class="u-button-style u-nav-link"
									href="#">문의게시판</a></li>
								<li class="u-nav-item"><a class="u-button-style u-nav-link">마이페이지</a>
								</li>
							</ul>
						</div>
					</div>
					<div class="u-black u-menu-overlay u-opacity u-opacity-70"></div>
				</div>
			</nav>
			<c:if test="${sessionScope.mvo == null }">
				<a href="login.jsp"
					class="u-border-2 u-border-hover-palette-1-base u-border-palette-1-base u-btn u-btn-round u-button-style u-hover-palette-1-base u-none u-radius-50 u-btn-1">
					login </a>
			</c:if>

			<c:if test="${sessionScope.mvo != null }">
				<a href="Controller?type=logout"
					class="u-border-2 u-border-hover-palette-1-base u-border-palette-1-base u-btn u-btn-round u-button-style u-hover-palette-1-base u-none u-radius-50 u-btn-1">
					logout </a>
			</c:if>

			<c:if test="${sessionScope.mvo == null }">
				<a href="join.jsp"
					class="u-border-2 u-border-hover-palette-1-base u-border-palette-1-base u-btn u-btn-round u-button-style u-hover-palette-1-base u-none u-radius-50 u-btn-2">
					join </a>
			</c:if>

		</div>
	</header>
	<section class="u-clearfix u-section-1" id="sec-2f27">
		<div class="u-clearfix u-sheet u-sheet-1">
			<div
				class="u-align-center u-border-2 u-border-palette-5-light-1 u-container-style u-expanded-width-xs u-group u-radius-12 u-shape-round u-group-1">
				<div class="u-container-layout u-container-layout-1">
					<h1 class="u-text u-text-default u-text-1">로그인</h1>
					<div class="u-form u-form-1">

						<form action="Controller" method="post"
							class="u-clearfix u-form-spacing-15 u-form-vertical u-inner-form"
							style="padding: 15px;" source="email" name="form">
							<div class="u-form-group u-form-name u-label-top">
								<input type="hidden" name="type" value="login" /> <label
									for="m_id" class="u-label">아이디</label> <input type="text"
									placeholder="5자 이상 영문 또는 숫자" id="m_id" name="m_id"
									class="u-input u-input-rectangle" required="">
							</div>
							<div class="u-form-email u-form-group u-label-top">
								<label for="m_pw" class="u-label">비밀번호</label> <input
									type="password"
									placeholder="8자 이상이면서 최소한 숫자 하나와 글자하나를 포함해야 합니다." id="m_pw"
									name="m_pw" class="u-input u-input-rectangle" required="">
							</div>
							<div class="u-align-left u-form-group u-form-submit u-label-top">
								<button type="button" onclick="exe();"
									class="u-btn u-btn-round u-btn-submit u-button-style u-radius-21 u-btn-1">로그인</button>
								<input type="submit" value="submit"
									class="u-form-control-hidden">
							</div>
							<div class="u-form-send-message u-form-send-success">Thank
								you! Your message has been sent.</div>
							<div class="u-form-send-error u-form-send-message">Unable
								to send your message. Please fix errors then try again.</div>
							<input type="hidden" value="" name="recaptchaResponse"> <input
								type="hidden" name="formServices"
								value="a4e7f32e805dd745f9249c7cef4456ee">
						</form>
					</div>
					<p
						class="u-large-text u-text u-text-default u-text-palette-1-base u-text-variant u-text-2">
						<a
							class="u-active-none u-border-none u-btn u-button-link u-button-style u-hover-none u-none u-text-palette-1-base u-btn-2"
							href="join.jsp">아직 계정이 없으신가요? <span style="font-weight: 700;">지금가입하기</span>
						</a>
					</p>
				</div>
			</div>
		</div>
	</section>


	<footer class="u-align-center u-clearfix u-footer u-grey-80 u-footer"
		id="sec-d4a5">
		<div class="u-clearfix u-sheet u-sheet-1">
			<p class="u-small-text u-text u-text-variant u-text-1">Sample
				text. Click to select the Text Element.</p>
		</div>
	</footer>
	<section class="u-backlink u-clearfix u-grey-80">
		<a class="u-link" href="https://nicepage.com/landing-page"
			target="_blank"> <span>Landing Page</span>
		</a>
		<p class="u-text">
			<span>created with</span>
		</p>
		<a class="u-link" href="https://nicepage.com/html-website-builder"
			target="_blank"> <span>HTML Builder</span>
		</a>.
	</section>

	<script src="https://code.jquery.com/jquery-3.6.4.min.js"
		integrity="sha256-oP6HI9z1XaZNBrJURtCoUT5SUnxFr8s3BzRl+cbzUq8="
		crossorigin="anonymous"></script>
	<c:if test="${not empty errorMessage}">
		<script>
			alert("${errorMessage}");
		</script>
	</c:if>

	<script>
		function exe() {

			if ($("#m_id").val() == "") {
				alert("아이디를 입력하세요");
				$("#m_id").focus();
				return;
			}

			if ($("#m_pw").val() == "") {
				alert("비밀번호를 입력하세요");
				$("#m_pw").focus();
				return;
			}

			document.form.submit();
		}
	</script>

</body>
</html>