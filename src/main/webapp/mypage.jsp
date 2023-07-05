<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<!DOCTYPE html>
<html style="font-size: 16px;" lang="en">
<head>
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<meta charset="utf-8">
<meta name="keywords" content="">
<meta name="description" content="">
<title>mypage</title>
<style type="text/css">
/* paging */
table tfoot ol.paging {
	list-style: none;
}

table tfoot ol.paging li {
	float: left;
	margin-right: 8px;
}

table tfoot ol.paging li a {
	display: block;
	padding: 3px 7px;
	border: 1px solid #00B3DC;
	color: #2f313e;
	font-weight: bold;
	text-decoration: none
}

table tfoot ol.paging li a:hover {
	background: #00B3DC;
	color: white;
	font-weight: bold;
	text-decoration: none
}

.disable {
	padding: 3px 7px;
	border: 1px solid silver;
	color: silver;
}

.now {
	padding: 3px 7px;
	border: 1px solid #ff4aa5;
	background: #ff4aa5;
	color: white;
	font-weight: bold;
}

.empty {
	height: 50px;
	color: #ababab;
}
</style>
<link rel="stylesheet" href="css/nicepage.css" media="screen">
<link rel="stylesheet" href="css/mypage.css" media="screen">
<script class="u-script" type="text/javascript" src="js/jquery.js"
	defer=""></script>
<script class="u-script" type="text/javascript" src="js/nicepage.js"
	defer=""></script>
<meta name="generator" content="Nicepage 5.9.10, nicepage.com">
<link id="u-theme-google-font" rel="stylesheet"
	href="https://fonts.googleapis.com/css?family=Roboto:100,100i,300,300i,400,400i,500,500i,700,700i,900,900i|Open+Sans:300,300i,400,400i,500,500i,600,600i,700,700i,800,800i">


<script type="application/ld+json">{
		"@context": "http://schema.org",
		"@type": "Organization",
		"name": "",
		"logo": "images/default-logo.png"
}</script>
<meta name="theme-color" content="#478ac9">
<meta property="og:title" content="mypage">
<meta property="og:type" content="website">
<meta data-intl-tel-input-cdn-path="intlTelInput/">
</head>
<body class="u-body u-xl-mode" data-lang="en">
	<header class="u-clearfix u-header" id="sec-fba2"
		data-animation-name="" data-animation-duration="0"
		data-animation-delay="0" data-animation-direction="">
		<div class="u-clearfix u-sheet u-sheet-1">
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
							href="Controller?type=qna" style="padding: 10px 20px;">문의게시판</a></li>
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
	<section class="u-align-center u-clearfix u-grey-15 u-section-1"
		id="sec-f84b">
		<div class="u-clearfix u-sheet u-sheet-1">
			<div
				class="u-expanded-width u-tab-links-align-justify u-tabs u-tabs-1">
				<ul class="u-tab-list u-unstyled" role="tablist">
					<li class="u-tab-item" role="presentation"><a
						class="active u-active-white u-button-style u-tab-link u-tab-link-1"
						id="link-tab-info" href="#tab-info" role="tab"
						aria-controls="tab-info" aria-selected="false" onclick="tab1()">내
							정보 관리</a></li>
					<li class="u-tab-item" role="presentation"><a
						class="u-active-white u-button-style u-tab-link u-tab-link-2"
						id="link-tab-qna" href="#tab-qna" role="tab"
						aria-controls="tab-qna" aria-selected="false" onclick="tab2()">나의
							문의</a></li>
					<li class="u-tab-item" role="presentation"><a
						class="u-active-white u-button-style u-tab-link u-tab-link-3"
						id="link-tab-buy" href="#tab-buy" role="tab"
						aria-controls="tab-buy" aria-selected="false" onclick="tab3()">구매한
							작품</a></li>
					<li class="u-tab-item" role="presentation"><a
						class="u-active-white u-button-style u-tab-link u-tab-link-4"
						id="link-tab-sale" href="#tab-sale" role="tab"
						aria-controls="tab-sale" aria-selected="true" onclick="tab4()">판매한
							작품</a></li>
				</ul>
				<input type="hidden" id="sel" value="${param.sel }" />
				<div class="u-tab-content">
					<div
						class="u-container-style u-tab-active u-tab-pane u-white u-tab-pane-1"
						id="tab-info" role="tabpanel" aria-labelledby="link-tab-info">
						<div class="u-container-layout u-container-layout-1">
							<div class="u-table u-table-responsive u-table-1">
								<table class="u-table-entity">
									<colgroup>
										<col width="23.7%">
										<col width="76.3%">
									</colgroup>
									<tbody
										class="u-align-right u-table-body u-table-valign-bottom u-table-body-1">

										<tr style="height: 100px;">
											<td
												class="u-align-left u-border-2 u-border-grey-50 u-border-no-left u-border-no-right u-first-column u-table-cell u-table-cell-1">아이디</td>
											<td class="u-table-cell">${sessionScope.myvo.m_id}</td>
										</tr>
										<tr style="height: 117px;">
											<td
												class="u-align-left u-border-2 u-border-grey-50 u-border-no-left u-border-no-right u-first-column u-table-cell u-table-cell-3">이름</td>
											<td class="u-table-cell">${sessionScope.myvo.m_name}</td>
										</tr>
										<tr style="height: 117px;">
											<td
												class="u-align-left u-border-2 u-border-grey-50 u-border-no-left u-border-no-right u-first-column u-table-cell u-table-cell-5">연락처</td>
											<td class="u-table-cell">${sessionScope.myvo.m_phone}</td>
										</tr>
										<tr style="height: 117px;">
											<td
												class="u-align-left u-border-2 u-border-grey-50 u-border-no-left u-border-no-right u-first-column u-table-cell u-table-cell-7">이메일</td>
											<td class="u-table-cell">${sessionScope.myvo.m_email}</td>
										</tr>
										<tr style="height: 117px;">
											<td
												class="u-align-left u-border-2 u-border-grey-50 u-border-no-left u-border-no-right u-table-cell u-table-cell-9">가입일</td>
											<td class="u-table-cell">${sessionScope.myvo.m_joindate}</td>

										</tr>
									</tbody>
								</table>
							</div>
							<form action="Controller" method="post">
								<input type="hidden" name="type" value="del"> <input
									type="hidden" name="idx" value="${sessionScope.myvo.m_idx}">
								<button type="button" onclick="del(this.form)" id="delbtn"
									class="u-border-2 u-border-active-palette-2-dark-1 u-border-hover-palette-2-base u-border-no-left u-border-no-right u-border-no-top u-border-palette-2-base u-btn u-button-style u-none u-text-hover-palette-2-base u-text-palette-2-base u-btn-1">회원탈퇴</button>
							</form>
							<a href="Controller?type=mypage&idx=${sessionScope.myvo.m_idx}"
								class="u-border-2 u-border-black u-btn u-button-style u-hover-black u-none u-text-black u-text-hover-white u-btn-2">수정</a>
						</div>
					</div>
					<div class="u-container-style u-tab-pane u-white u-tab-pane-2"
						id="tab-qna" role="tabpanel" aria-labelledby="link-tab-qna">
						<div class="u-container-layout u-container-layout-2">
							<div
								class="u-expanded-width u-table u-table-responsive u-table-2">
								<table class="u-table-entity">
									<colgroup>
										<col width="70%">
										<col width="20%">
										<col width="10%">
									</colgroup>
									<thead
										class="u-align-left u-grey-50 u-table-header u-table-header-1">
										<tr style="height: 36px;">
											<th class="u-border-1 u-border-grey-50 u-table-cell">제목</th>
											<th class="u-border-1 u-border-grey-50 u-table-cell">작성일</th>
											<th class="u-border-1 u-border-grey-50 u-table-cell">조회수</th>
										</tr>
									</thead>
									<tbody
										class="u-align-left u-table-body u-table-valign-middle u-table-body-2">

										<c:forEach var="qvo" items="${requestScope.ar }">
											<tr style="height: 47px;">
												<td
													class="u-border-1 u-border-grey-75 u-border-no-left u-border-no-right u-table-cell">
													<a href="javascript:exe('${qvo.q_pw }', '${qvo.q_idx}')">${qvo.q_title }</a>
													<c:if test="${qvo.comm_count != 0}">[${qvo.comm_count }]</c:if>
												</td>
												<td
													class="u-border-1 u-border-grey-75 u-border-no-left u-border-no-right u-table-cell">${qvo.q_date }</td>
												<td
													class="u-border-1 u-border-grey-75 u-border-no-left u-border-no-right u-table-cell">${qvo.q_hit }</td>
											</tr>
											<input type="hidden" name="q_idx" value="${qvo.q_idx }">
										</c:forEach>

									</tbody>
									<tfoot>
										<tr>
											<td colspan="4">

												<ol class="paging">
													<c:if test="${page1.startPage < page1.pagePerBlock }">
														<li class="disable">&lt;</li>
													</c:if>
													<c:if test="${page1.startPage >= page1.pagePerBlock }">
														<li><a
															href="Controller?type=check&sel=qna&cPage1=${page1.startPage-page1.pagePerBlock }">&lt;</a></li>
													</c:if>
													<c:forEach begin="${page1.startPage }"
														end="${page1.endPage }" varStatus="st">
														<c:if test="${page1.nowPage eq st.index }">
															<li class="now">${st.index }</li>
														</c:if>
														<c:if test="${page1.nowPage ne st.index }">
															<li><a
																href="Controller?type=check&sel=qna&cPage1=${st.index }">${st.index }</a></li>
														</c:if>
													</c:forEach>
													<c:if test="${page1.endPage < page1.totalPage }">
														<li><a
															href="Controller?type=check&sel=qna&cPage1=${page1.startPage+page1.pagePerBlock }">&lt;</a></li>
													</c:if>
													<c:if test="${page1.endPage == page1.totalPage }">
														<li class="disable">&gt;</li>
													</c:if>
												</ol>

											</td>
										</tr>
									</tfoot>
								</table>
							</div>
						</div>
					</div>
					<div
						class="u-align-left u-container-style u-tab-pane u-white u-tab-pane-3"
						id="tab-buy" role="tabpanel" aria-labelledby="link-tab-buy">
						<div class="u-container-layout u-container-layout-3">
							<div
								class="u-expanded-width u-table u-table-responsive u-table-3">
								<table class="u-table-entity">
									<colgroup>
										<col width="20%">
										<col width="40%">
										<col width="20%">
										<col width="20%">
									</colgroup>
									<thead class="u-grey-50 u-table-header u-table-header-2">
										<tr style="height: 36px;">
											<th class="u-border-1 u-border-grey-50 u-table-cell">이미지</th>
											<th class="u-border-1 u-border-grey-50 u-table-cell">상품명</th>
											<th class="u-border-1 u-border-grey-50 u-table-cell">입찰현황</th>
											<th class="u-border-1 u-border-grey-50 u-table-cell">날짜</th>
										</tr>
									</thead>
									<tbody
										class="u-align-left u-table-body u-table-valign-middle u-table-body-3">

										<c:forEach var="ar2" items="${requestScope.ar2 }">
											<tr style="height: 46px;">
												<td
													class="u-border-2 u-border-grey-75 u-border-no-left u-border-no-right u-table-cell"><a
													href="Controller?type=viewProduct&p_idx=${ar2.pvo.p_idx }"><span
														class="u-file-icon u-icon u-icon-1"><img
															src="image_upload/${ar2.pvo.file_name }"
															style="width: 200px;"></span></a></td>
												<td
													class="u-border-2 u-border-grey-75 u-border-no-left u-border-no-right u-table-cell">${ar2.pvo.p_name }</td>
												<td
													class="u-border-2 u-border-grey-75 u-border-no-left u-border-no-right u-table-cell">
													<c:if test="${ar2.a_status == 1}">
														<b>입찰 중</b>
													</c:if> <c:if test="${ar2.a_status == 2}">
														<b>구매 완료</b>
													</c:if> <c:if test="${ar2.a_status == 3}">
														<b>구매 실패</b>
													</c:if> <br> <c:if test="${ar2.a_status == 2}">구매 금액 :  
													<fmt:formatNumber pattern="#,###" value="${ar2.a_price }" />원</c:if>
													<c:if test="${ar2.a_status == 1}">입찰 금액 :  
													<fmt:formatNumber pattern="#,###" value="${ar2.a_price }" />원</c:if>
												</td>
												<td
													class="u-border-2 u-border-grey-75 u-border-no-left u-border-no-right u-table-cell">
													<c:if test="${ar2.a_status == 1}">입찰일 :
													<br>${ar2.pvo.p_f_date }</c:if> <c:if
														test="${ar2.a_status == 2}">구매완료일 :
													<br>${ar2.pvo.p_f_date }</c:if>
												</td>

											</tr>
										</c:forEach>

									</tbody>
									<tfoot>
										<tr>
											<td colspan="5">

												<ol class="paging">
													<c:if test="${page2.startPage < page2.pagePerBlock }">
														<li class="disable">&lt;</li>
													</c:if>
													<c:if test="${page2.startPage >= page2.pagePerBlock }">
														<li><a
															href="Controller?type=check&sel=buy&cPage2=${page2.startPage-page2.pagePerBlock }">&lt;</a></li>
													</c:if>
													<c:forEach begin="${page2.startPage }"
														end="${page2.endPage }" varStatus="st">
														<c:if test="${page2.nowPage eq st.index }">
															<li class="now">${st.index }</li>
														</c:if>
														<c:if test="${page2.nowPage ne st.index }">
															<li><a
																href="Controller?type=check&sel=buy&cPage2=${st.index }">${st.index }</a></li>
														</c:if>
													</c:forEach>
													<c:if test="${page2.endPage < page2.totalPage }">
														<li><a
															href="Controller?type=check&sel=buy&cPage2=${page2.startPage+page2.pagePerBlock }">&lt;</a></li>
													</c:if>
													<c:if test="${page2.endPage == page2.totalPage }">
														<li class="disable">&gt;</li>
													</c:if>
												</ol>

											</td>
										</tr>
									</tfoot>
								</table>
							</div>
						</div>
					</div>
					<div
						class="u-align-left u-container-style u-tab-pane u-white u-tab-pane-4"
						id="tab-sale" role="tabpanel" aria-labelledby="link-tab-sale">
						<div class="u-container-layout u-container-layout-4">
							<div
								class="u-expanded-width u-table u-table-responsive u-table-4">
								<table class="u-table-entity">
									<colgroup>
										<col width="20%">
										<col width="40%">
										<col width="20%">
										<col width="20%">
									</colgroup>
									<thead class="u-grey-50 u-table-header u-table-header-3">
										<tr style="height: 36px;">
											<th class="u-border-1 u-border-grey-50 u-table-cell">이미지</th>
											<th class="u-border-1 u-border-grey-50 u-table-cell">상품명</th>
											<th class="u-border-1 u-border-grey-50 u-table-cell">판매현황</th>
											<th class="u-border-1 u-border-grey-50 u-table-cell">날짜</th>
										</tr>
									</thead>

									<c:forEach var="ar3" items="${requestScope.ar3 }">
										<tbody
											class="u-align-left u-table-body u-table-valign-middle u-table-body-4">
											<tr style="height: 47px;">
												<td
													class="u-border-2 u-border-grey-75 u-border-no-left u-border-no-right u-table-cell"><a
													href="Controller?type=viewProduct&p_idx=${ar3.pvo.p_idx }"><span
														class="u-file-icon u-icon u-icon-4"><img
															src="image_upload/${ar3.pvo.file_name }"
															style="width: 200px;" alt=""></span></a></td>
												<td
													class="u-border-2 u-border-grey-75 u-border-no-left u-border-no-right u-table-cell">${ar3.pvo.p_name}</td>
												<td
													class="u-border-2 u-border-grey-75 u-border-no-left u-border-no-right u-table-cell">
													<b>판매 완료</b> <br>판매 금액 : <fmt:formatNumber
														pattern="#,###" value="${ar3.a_price }" />원
												</td>
												<td
													class="u-border-2 u-border-grey-75 u-border-no-left u-border-no-right u-table-cell">
													<c:if test="${ar3.pvo.p_status == 3}">판매완료일 : <br>${ar3.pvo.p_f_date }</c:if>
												</td>
											</tr>
									</c:forEach>

									</tbody>
									<tfoot>
										<tr>
											<td colspan="5">

												<ol class="paging">
													<c:if test="${page3.startPage < page3.pagePerBlock }">
														<li class="disable">&lt;</li>
													</c:if>
													<c:if test="${page3.startPage >= page3.pagePerBlock }">
														<li><a
															href="Controller?type=check&sel=sale&cPage3=${page3.startPage-page3.pagePerBlock }">&lt;</a></li>
													</c:if>
													<c:forEach begin="${page3.startPage }"
														end="${page3.endPage }" varStatus="st">
														<c:if test="${page3.nowPage eq st.index }">
															<li class="now">${st.index }</li>
														</c:if>
														<c:if test="${page3.nowPage ne st.index }">
															<li><a
																href="Controller?type=check&sel=sale&cPage3=${st.index }">${st.index }</a></li>
														</c:if>
													</c:forEach>
													<c:if test="${page3.endPage < page3.totalPage }">
														<li><a
															href="Controller?type=check&sel=sale&cPage3=${page3.startPage+page3.pagePerBlock }">&lt;</a></li>
													</c:if>
													<c:if test="${page3.endPage == page3.totalPage }">
														<li class="disable">&gt;</li>
													</c:if>
												</ol>

											</td>
										</tr>
									</tfoot>
								</table>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</section>

	<form action="Controller" method="post" name="frm">
		<input type="hidden" name="type" value="qnaview" /> <input
			type="hidden" name="q_idx" value="q_idx" /> <input type="hidden"
			name="q_pw" value="q_pw" />
	</form>


	<footer class="u-align-center u-clearfix u-footer u-grey-80 u-footer"
		id="sec-3511">
		<div class="u-clearfix u-sheet u-sheet-1">
			<p class="u-small-text u-text u-text-variant u-text-1">Sample
				text. Click to select the Text Element.</p>
		</div>
	</footer>
	<section class="u-backlink u-clearfix u-grey-80">
		<a class="u-link" href="https://nicepage.com/website-templates"
			target="_blank"> <span>Website Templates</span>
		</a>
		<p class="u-text">
			<span>created with</span>
		</p>
		<a class="u-link" href="" target="_blank"> <span>Website
				Builder Software</span>
		</a>.
	</section>


	<script src="https://code.jquery.com/jquery-3.7.0.min.js"
		integrity="sha256-2Pmvv0kuTBOenSvLm6bvfBSSHrUJ+3A7x6P5Ebd07/g="
		crossorigin="anonymous"></script>
	<script>
		function exe(q_pw, q_idx) {
			document.frm.q_pw.value = q_pw;
			document.frm.q_idx.value = q_idx;

			document.frm.submit();
		}

		$(function() {
			let sel_val = $("#sel").val();

			if (sel_val == "qna") {
				$("#link-tab-info").removeClass("active");
				$("#link-tab-qna").addClass("active");
				$("#link-tab-buy").removeClass("active");
				$("#link-tab-sale").removeClass("active");

				$("#tab-info").css('display', 'none');
				$("#tab-qna").css('display', 'block');
				$("#tab-buy").css('display', 'none');
				$("#tab-sale").css('display', 'none');
			} else if (sel_val == "buy") {
				$("#link-tab-info").removeClass("active");
				$("#link-tab-qna").removeClass("active");
				$("#link-tab-buy").addClass("active");
				$("#link-tab-sale").removeClass("active");

				$("#tab-info").css('display', 'none');
				$("#tab-qna").css('display', 'none');
				$("#tab-buy").css('display', 'block');
				$("#tab-sale").css('display', 'none');
			} else if (sel_val == "sale") {
				$("#link-tab-info").removeClass("active");
				$("#link-tab-qna").removeClass("active");
				$("#link-tab-buy").removeClass("active");
				$("#link-tab-sale").addClass("active");

				$("#tab-info").css('display', 'none');
				$("#tab-qna").css('display', 'none');
				$("#tab-buy").css('display', 'none');
				$("#tab-sale").css('display', 'block');
			}

			$("#delbtn").bind("click", function() {

			})
		});

		function del(frm) {
			if (confirm("정말로 탈퇴하시겠습니까?")) {
				alert("그동안 이용해주셔서 감사합니다.");
				frm.submit();
			} else {
				history.go(0);
			}
		}
		function tab1() {
			$("#sel").val('');
			$("#link-tab-info").addClass("active");
			$("#link-tab-qna").removeClass("active");
			$("#link-tab-buy").removeClass("active");
			$("#link-tab-sale").removeClass("active");

			$("#tab-info").css('display', 'block');
			$("#tab-qna").css('display', 'none');
			$("#tab-buy").css('display', 'none');
			$("#tab-sale").css('display', 'none');
		}
		function tab2() {
			$("#sel").val('');
			$("#link-tab-qna").addClass("active");
			$("#link-tab-info").removeClass("active");
			$("#link-tab-buy").removeClass("active");
			$("#link-tab-sale").removeClass("active");

			$("#tab-qna").css('display', 'block');
			$("#tab-info").css('display', 'none');
			$("#tab-buy").css('display', 'none');
			$("#tab-sale").css('display', 'none');
		}
		function tab3() {
			$("#sel").val('');
			$("#link-tab-buy").addClass("active");
			$("#link-tab-qna").removeClass("active");
			$("#link-tab-info").removeClass("active");
			$("#link-tab-sale").removeClass("active");

			$("#tab-buy").css('display', 'block');
			$("#tab-qna").css('display', 'none');
			$("#tab-info").css('display', 'none');
			$("#tab-sale").css('display', 'none');
		}
		function tab4() {
			$("#sel").val('');
			$("#link-tab-sale").addClass("active");
			$("#link-tab-qna").removeClass("active");
			$("#link-tab-info").removeClass("active");
			$("#link-tab-buy").removeClass("active");

			$("#tab-sale").css('display', 'block');
			$("#tab-qna").css('display', 'none');
			$("#tab-info").css('display', 'none');
			$("#tab-buy").css('display', 'none');
		}
	</script>
</body>
</html>