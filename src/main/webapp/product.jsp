<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html>
<html style="font-size: 16px;" lang="en"><head>
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta charset="utf-8">
    <meta name="keywords" content="ìíëª, 12,345,678,910">
    <meta name="description" content="">
    <title>product</title>
    <link rel="stylesheet" href="css/nicepage.css" media="screen">
<link rel="stylesheet" href="css/product.css" media="screen">
    <script class="u-script" type="text/javascript" src="js/jquery.js" defer=""></script>
    <script class="u-script" type="text/javascript" src="js/nicepage.js" defer=""></script>
    <meta name="generator" content="Nicepage 5.9.10, nicepage.com">
    <link id="u-theme-google-font" rel="stylesheet" href="https://fonts.googleapis.com/css?family=Roboto:100,100i,300,300i,400,400i,500,500i,700,700i,900,900i|Open+Sans:300,300i,400,400i,500,500i,600,600i,700,700i,800,800i">
    
    
    
    <style>
       .active {
  		background-color: #478ac9; !important;
  		color: white;
		}
    </style>
    
    
    <script type="application/ld+json">{
		"@context": "http://schema.org",
		"@type": "Organization",
		"name": ""
}</script>
    <meta name="theme-color" content="#478ac9">
    <meta property="og:title" content="product">
    <meta property="og:type" content="website">
  <meta data-intl-tel-input-cdn-path="intlTelInput/"></head>
  <body class="u-body u-xl-mode" data-lang="en"><header class="u-clearfix u-header" id="sec-fba2" data-animation-name="" data-animation-duration="0" data-animation-delay="0" data-animation-direction=""><div class="u-clearfix u-sheet u-sheet-1">      
       
       <!-- header -->
        <!-- 로그인이 되어있다면 obj는 null이 아니다. -->
        
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
    <section class="u-clearfix u-section-1" id="sec-8763">
      <div class="u-clearfix u-sheet u-valign-middle u-sheet-1">
        <img class="u-image u-image-default u-image-1" src="image_upload/${sessionScope.pvo.file_name }" alt="" data-image-width="400" data-image-height="265">
        <div id="btn_color" class="u-palette-2-base u-radius-10 u-shape u-shape-round u-shape-1"></div>
        
        <c:if test="${sessionScope.pvo.p_status == 2 }">
        	<p class="u-align-center u-large-text u-text u-text-variant u-text-white u-text-1">옥션중</p>
        </c:if>
        
        <c:if test="${sessionScope.pvo.p_status == 1 }">
        	<p class="u-align-center u-large-text u-text u-text-variant u-text-white u-text-1" style="background: #478ac9; border-radius: 10px;">판매대기</p>
        </c:if>
        
        <h1 class="u-align-left u-text u-text-2">${sessionScope.pvo.p_name }</h1>
        <p class="u-text u-text-3">by ${sessionScope.pvo.m_id }</p>
        <div class="u-border-3 u-border-grey-dark-1 u-line u-line-horizontal u-line-1"></div><span class="u-file-icon u-icon u-text-grey-25 u-icon-1"><img src="images/159604-b127e638.png" alt=""></span>
        <p class="u-align-left u-small-text u-text u-text-grey-40 u-text-variant u-text-4">${sessionScope.pvo.hit_count } 조회</p>
        <p class="u-align-left u-large-text u-text u-text-palette-2-base u-text-variant u-text-5">
          <span class="u-text-black">
            <span class="u-text-grey-50">판매기간&nbsp;&nbsp;</span>
            <c:if test="${sessionScope.pvo.p_status == 2 }">
            	${sessionScope.pvo.p_s_date } ~ ${sessionScope.pvo.p_f_date }
            </c:if>
            <c:if test="${sessionScope.pvo.p_status == 1 }">
            	판매 대기 상품입니다.
            </c:if>
          </span>
        </p>
        <div class="u-container-style u-grey-5 u-group u-radius-20 u-shape-round u-group-1">
          <div class="u-container-layout u-container-layout-1">
            <div class="u-table u-table-responsive u-table-1">
              <table class="u-table-entity">
                <colgroup>
                  <col width="29.5%">
                  <col width="70.5%">
                </colgroup>
                <tbody class="u-table-body">
                  <tr style="height: 31px;">
                    <td class="u-table-cell u-text-palette-5-dark-2 u-table-cell-1">시작가</td>
                    <td class="u-align-right u-table-cell u-text-palette-5-dark-2 u-table-cell-2"><fmt:formatNumber pattern="#,###" value="${sessionScope.pvo.p_s_price }"/> 원</td>
                  
                  </tr>
                  <tr style="height: 43px;">
                    <td class="u-table-cell u-text-palette-2-base u-table-cell-3">현재가</td>
                  <c:if test="${sessionScope.pvo.p_status == 2 }">
                    <td id="nowPrice" class="u-align-right u-table-cell u-text-palette-2-base u-table-cell-4"><fmt:formatNumber pattern="#,###" value=""/></td>
                  </c:if>
                  </tr>
                </tbody>
              </table>
            </div>
            <c:if test="${sessionScope.mvo != null and sessionScope.pvo.p_status == 2 and requestScope.res == 1 }">
            	<a href="Controller?type=viewForm&p_idx=${param.p_idx}" class="u-border-none u-btn u-btn-round u-button-style u-palette-2-light-1 u-radius-21 u-btn-1">입찰하기</a>
            </c:if>
            <c:if test="${sessionScope.mvo != null and sessionScope.pvo.p_status == 2 and requestScope.res == 0 }">
            	<a onclick="notStart();" class="u-border-none u-btn u-btn-round u-button-style u-palette-2-light-1 u-radius-21 u-btn-1">입찰하기</a>
            </c:if>
            <c:if test="${sessionScope.mvo == null }">
            	<a href="login.jsp" class="u-border-none u-btn u-btn-round u-button-style u-palette-2-light-1 u-radius-21 u-btn-1">입찰하기</a>
            </c:if>
            <c:if test="${sessionScope.pvo.p_status == 1 }">
            	<a onclick="notSale();" class="u-border-none u-btn u-btn-round u-button-style u-palette-2-light-1 u-radius-21 u-btn-1">입찰하기</a>
            </c:if>
          
          </div>
        </div>
      </div>
    </section>
      <c:if test="${sessionScope.mvo == null }" >
	  	<!-- 로그인이 되어 있지 않을때 좋아요버튼-->
    	<section class="u-clearfix u-section-2" id="sec-f476">
	      <div class="u-clearfix u-sheet u-valign-middle u-sheet-1">
	        	<button id="notLogin" type="button" class="u-active-palette-1-base u-border-2 u-border-hover-palette-1-base u-border-palette-1-base u-btn u-btn-round u-button-style u-hover-palette-1-base u-none u-radius-50 u-btn-1">LIKE&nbsp;<span class="u-icon u-icon-1"><svg class="u-svg-content" viewBox="0 0 50 50" x="0px" y="0px" style="width: 1em; height: 1em;"><path style="fill:currentColor;" d="M24.85,10.126c2.018-4.783,6.628-8.125,11.99-8.125c7.223,0,12.425,6.179,13.079,13.543
		c0,0,0.353,1.828-0.424,5.119c-1.058,4.482-3.545,8.464-6.898,11.503L24.85,48L7.402,32.165c-3.353-3.038-5.84-7.021-6.898-11.503
		c-0.777-3.291-0.424-5.119-0.424-5.119C0.734,8.179,5.936,2,13.159,2C18.522,2,22.832,5.343,24.85,10.126z"></path></svg></span>
	        	</button>
	        	<h1 class="u-text u-text-1">${sessionScope.pvo.like_count}</h1>
	      </div>
	     </section>
      </c:if>
     
     <c:if test="${sessionScope.mvo != null }" >
     <!-- 로그인이 되어 있을때 클릭 시  -->
      <section class="u-clearfix u-section-2" id="sec-f476">
	      <div class="u-clearfix u-sheet u-valign-middle u-sheet-1">
	        	<button id="like-button" type="button" class="u-active-palette-1-base u-border-2 u-border-hover-palette-1-base u-border-palette-1-base u-btn u-btn-round u-button-style u-hover-palette-1-base u-none u-radius-50 u-btn-1">LIKE&nbsp;<span class="u-icon u-icon-1"><svg class="u-svg-content" viewBox="0 0 50 50" x="0px" y="0px" style="width: 1em; height: 1em;"><path style="fill:currentColor;" d="M24.85,10.126c2.018-4.783,6.628-8.125,11.99-8.125c7.223,0,12.425,6.179,13.079,13.543
		c0,0,0.353,1.828-0.424,5.119c-1.058,4.482-3.545,8.464-6.898,11.503L24.85,48L7.402,32.165c-3.353-3.038-5.84-7.021-6.898-11.503
		c-0.777-3.291-0.424-5.119-0.424-5.119C0.734,8.179,5.936,2,13.159,2C18.522,2,22.832,5.343,24.85,10.126z"></path></svg></span>
	        	</button>
      		<h1 class="u-text u-text-1">${sessionScope.pvo.like_count}</h1>
	      </div>
	      </section>
     </c:if>
      
      
    <section class="u-clearfix u-section-3" id="sec-8295">
      <div class="u-clearfix u-sheet u-sheet-1">
        <p class="u-large-text u-text u-text-variant u-text-1"> 작품설명<br>
        </p>
      </div>
    </section>
   
	    <section class="u-clearfix u-section-4" id="sec-6593">
	      <div class="u-clearfix u-sheet u-sheet-1">
	        <p class="u-large-text u-text u-text-variant u-text-1">${sessionScope.pvo.p_info }</p>
	      </div>
	    </section>
    
    
    
    
    
    
    <footer class="u-align-center u-clearfix u-footer u-grey-80 u-footer" id="sec-d4a5"><div class="u-clearfix u-sheet u-sheet-1">
        <p class="u-small-text u-text u-text-variant u-text-1">Sample text. Click to select the Text Element.</p>
      </div></footer>
    <section class="u-backlink u-clearfix u-grey-80">
      <a class="u-link" href="https://nicepage.com/website-templates" target="_blank">
        <span>Website Template</span>
      </a>
      <p class="u-text">
        <span>created with</span>
      </p>
      <a class="u-link" href="https://nicepage.com/wysiwyg-html-editor" target="_blank">
        <span>Live HTML editor</span>
      </a>. 
    </section>
    
    <input type="hidden" id="l_status" value="${requestScope.l_status }"/>
    <input type="hidden" id="m_idx" value="${sessionScope.mvo.m_idx}"/>
    <input type="hidden" id="p_status" value="${sessionScope.pvo.p_status }">
    
    <script src="https://code.jquery.com/jquery-3.6.4.min.js" integrity="sha256-oP6HI9z1XaZNBrJURtCoUT5SUnxFr8s3BzRl+cbzUq8=" crossorigin="anonymous"></script>
    <script>
		
    	let button = null;
    	let notLogin = null;
    	
    	$(function(){
    		notLogin = $('#notLogin');
    		button = $('#like-button');
    	
    	
	    	$('#notLogin').click(function() {
	    		notLogin = $(this);
	    		
				location.href="login.jsp";
			});
	    	

			$('#like-button').click(function() {
				  // 버튼 요소와 p_idx 값을 추출
				  button = $(this);
				  const p_idx = ${sessionScope.pvo.p_idx };

				  // 좋아요 요청 전송
				  okLogin(p_idx);
			});
			
			if($("#p_status").val() == '2'){
	    		setInterval(() => {
					
	    			$.ajax({
				      url: "Controller",
				      type: "post",
				      dataType: "json",
				      data: { 'type': 'aucList', 'p_idx': ${param.p_idx} }
				    }).done(function(res){
				    	let str = "";
				    	let nowPrice = "";
				    	
				    	
				    	nowPrice = parseInt(res[0].a_price).toLocaleString('ko-KR')+" 원";
				    	
				    	$("#auc_table tbody").html(str);
				    	$("#nowPrice").text(nowPrice);
					});
	    			
	    			
				}, 1000);
			}
    	});
    	
		
		
		function okLogin(p_idx) {
			
			  //let l_status = ${sessionScope.l_status };
			  //let m_idx = ${sessionScope.mvo.m_idx};
			  let l_status = $("#l_status").val();
			  console.log(l_status);
			  let m_idx = $("#m_idx").val();
			
			  if (l_status == 1) {
			    // 이미 좋아요를 누른 경우 처리할 로직 작성
			  	// 좋아요를 취소한 경우
				  $.ajax({
				      url: "Controller?type=like_del",
				      type: "GET",
				      dataType: "json",
				      data: { p_idx: p_idx, m_idx: m_idx }
				    }).done(function(res){
				    	if(res.cnt == '1') {// cnt가 1일 경우 좋아요 수 적용 완료
				        	location.href="Controller?type=viewProduct&p_idx=${param.p_idx}";
				    	}
					}).fail(function(err){
						// 서버에서 오류가 발생 시
						 alert("실패");
					});
			  } else {
			    // 좋아요를 누르지 않은 경우
			    $.ajax({
			      url: "Controller?type=like",
			      type: "GET",
			      dataType: "json",
			      data: { p_idx: p_idx, m_idx: m_idx }
			    }).done(function(res){
			    	if(res.cnt == '1') {// cnt가 1일 경우 좋아요 수 적용 완료
			        	location.href="Controller?type=viewProduct&p_idx=${param.p_idx}";
			    	}
				}).fail(function(err){
					// 서버에서 오류가 발생 시
					 alert("실패");
				});
			  }
			}
		
		function notStart(){
			alert("아직 경매 시작일이 아닙니다.");
		}
		
		function notSale(){
			alert("판매대기 상품 입니다.");
		}
		
	
    </script>
  
</body></html>