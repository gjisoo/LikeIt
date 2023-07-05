<%@page import="vo.QnaVO"%>
<%@page import="util.Paging"%>
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
    <link rel="stylesheet" href="css/nicepage.css" media="screen">
<link rel="stylesheet" href="css/qna.css" media="screen">
    <script class="u-script" type="text/javascript" src="js/jquery.js" defer=""></script>
    <script class="u-script" type="text/javascript" src="js/nicepage.js" defer=""></script>
    <meta name="generator" content="Nicepage 5.9.10, nicepage.com">
    <link id="u-theme-google-font" rel="stylesheet" href="https://fonts.googleapis.com/css?family=Roboto:100,100i,300,300i,400,400i,500,500i,700,700i,900,900i|Open+Sans:300,300i,400,400i,500,500i,600,600i,700,700i,800,800i">
    
    
    <script type="application/ld+json">{
		"@context": "http://schema.org",
		"@type": "Organization",
		"name": ""
}</script>
    <meta name="theme-color" content="#478ac9">
    <meta property="og:title" content="문의게시판">
    <meta property="og:type" content="website">
  <meta data-intl-tel-input-cdn-path="intlTelInput/"></head>
  <body class="u-body u-xl-mode" data-lang="en"><header class="u-clearfix u-header" id="sec-fba2" data-animation-name="" data-animation-duration="0" data-animation-delay="0" data-animation-direction=""><div class="u-clearfix u-sheet u-sheet-1">
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
      
    <section class="u-clearfix u-section-1" id="sec-f563">
      <div class="u-clearfix u-sheet u-sheet-1">
      
       <div id="bbs">
		<table summary="게시판 목록">
			<caption class="caption">문의 게시판</caption>
			<thead>
				<tr class="title">
					<th class="no">번호</th>
					<th class="subject">제목</th>
					<th class="writer">글쓴이</th>
					<th class="reg">조회수</th>
					<th class="hit">날짜</th>
				</tr>
			</thead>
				
				
				<c:forEach var="bvo" items="${requestScope.ar }" varStatus="st">
					<tr>
						<td>${page.totalRecord - ((page.nowPage-1)*page.numPerPage+st.index) }</td>
						<td>${bvo.q_title }</td>
						<td>${bvo.q_ip }</td>
						<td>${bvo.q_hit }</td>
						<td>${bvo.q_date }</td>
					</tr>
				</c:forEach>
			<tfoot>
					<tr>
						<td colspan="5">
						
						<ol class="paging">
							<c:if test="${page.startPage < page.pagePerBlock }">
								<li class="disable">&lt;</li>
							</c:if>
							<c:if test="${page.startPage >= page.pagePerBlock }">
								<li><a href="Controller?type=search&cPage=${page.startPage-page.pagePerBlock }">&lt;</li>
							</c:if>
							<c:forEach begin="${page.startPage }" end="${page.endPage }" varStatus="st">
								<c:if test="${page.nowPage eq st.index }">
									<li class="now">${st.index }</li>	
								</c:if>
								<c:if test="${page.nowPage ne st.index }">
									<li><a href="Controller?type=search&cPage=${st.index }&searchType=${param.searchType }&searchValue=${param.searchValue }">${st.index }</a></li>
								</c:if>
							</c:forEach>	
							<c:if test="${page.endPage < page.totalPage }">
								<li><a href="Controller?type=search&cPage=${page.startPage+page.pagePerBlock }">&gt;</li>
							</c:if>
							<c:if test="${page.endPage == page.totalPage }">
								<li class="disable">&gt;</li>
							</c:if>
						</ol>
						</td>
					</tr>
					<tr>
					</tr>
				</tfoot>
		</table>
		
	<div id="search_popup" class="popup" title="글검색">
		<button type="button" id="write" onclick="javascript:location.href='Controller?type=qnawrite'">글쓰기</button>
		<form action="Controller" method="post">
			<input type="hidden" name="type" value="search"/>
			<select id="searchType" name="searchType">
				<option value="0">제목</option>
				<option value="1">내용</option>
			</select>
			<input type="text" id="searchValue" name="searchValue"/><br/>
			<input type="button" value="검색" id="searchButton" onclick="search(this.form)"/>
		</form>
	</div>
	
		
	</div>
      
	</div>
    </section>
    
   
			
    
    <footer class="u-align-center u-clearfix u-footer u-grey-80 u-footer" id="sec-d5df"><div class="u-clearfix u-sheet u-valign-middle u-sheet-1">
        <p class="u-small-text u-text u-text-variant u-text-1">Sample text. Click to select the Text Element.</p>
      </div></footer>
    <section class="u-backlink u-clearfix u-grey-80">
      <a class="u-link" href="https://nicepage.com/website-templates" target="_blank">
        <span>Website Templates</span>
      </a>
      <p class="u-text">
        <span>created with</span>
      </p>
      <a class="u-link" href="" target="_blank">
        <span>WYSIWYG Web Builder</span>
      </a>. 
    </section>
  
</body>

<script>
	
function search(frm){
	
	//유효성 검사
	var value = $("#searchValue").val();
	
	if(value.trim().length < 1){
		alert("검색단어를 입력하세요");
		$("#searchValue").focus();
		return;
	}
	frm.submit();
}
	
</script>

</html>