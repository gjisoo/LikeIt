<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html style="font-size: 16px;" lang="en"><head>
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta charset="utf-8">
    <meta name="keywords" content="ìíë±ë¡ ìì²­">
    <meta name="description" content="">
    <title>reg</title>
    <link rel="stylesheet" href="css/nicepage.css" media="screen">
<link rel="stylesheet" href="css/reg.css" media="screen">
    <script class="u-script" type="text/javascript" src="js/jquery.js" defer=""></script>
    <script class="u-script" type="text/javascript" src="js/nicepage.js" defer=""></script>
    <meta name="generator" content="Nicepage 5.9.10, nicepage.com">
    <meta name="referrer" content="origin">
    <link id="u-theme-google-font" rel="stylesheet" href="https://fonts.googleapis.com/css?family=Roboto:100,100i,300,300i,400,400i,500,500i,700,700i,900,900i|Open+Sans:300,300i,400,400i,500,500i,600,600i,700,700i,800,800i">
    
    
    <script type="application/ld+json">{
		"@context": "http://schema.org",
		"@type": "Organization",
		"name": ""
}</script>
    <meta name="theme-color" content="#478ac9">
    <meta property="og:title" content="reg">
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
</li><li class="u-nav-item"><a class="u-button-style u-nav-link u-text-active-palette-1-base u-text-hover-palette-2-base" href="Controller?tupe=qna" style="padding: 10px 20px;">문의게시판</a>
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
    <section class="u-align-center u-clearfix u-section-1" id="sec-909a">
      <div class="u-clearfix u-sheet u-sheet-1">
        <h2 class="u-text u-text-default u-text-1">상품등록 요청</h2>
        <div class="u-form u-form-1">
          <form action="Controller?type=reg" method="post" encType="multipart/form-data" class="u-clearfix u-form-spacing-18 u-form-vertical u-inner-form" style="padding: 10px" name="form">
            <div class="u-form-group u-form-name u-label-none">
              <label for="p_name" class="u-label">p_name</label>
              <input type="text" placeholder="상품명" id="p_name" name="p_name" class="u-input u-input-rectangle" required="">
            </div>
            <div class="u-form-email u-form-group u-label-none">
              <label for="p_s_price" class="u-label">start_price</label>
              <input type="text" placeholder="판매시작가" id="p_s_price" name="p_s_price" class="u-input u-input-rectangle" required="">
            </div>
            <p class="u-form-group u-form-text u-label-none u-text u-text-2">판매자: ${sessionScope.mvo.m_id }</p>
            <div class="u-form-group u-form-message u-form-textarea u-label-none u-form-group-4">
              <label for="p_info" class="u-label">p_info</label>
              <textarea rows="4" cols="50" id="p_info" name="p_info" class="u-input u-input-rectangle" required="required" placeholder="상세 정보를 500자 이내로 입력해주세요." maxlength="500"></textarea>
            </div>
            <div class="u-form-group u-form-select u-label-none u-form-group-5">
              <label for="p_goal_like" class="u-label">p_goal_like</label>
              <div class="u-form-select-wrapper">
                <select id="p_goal_like" name="p_goal_like" class="u-input u-input-rectangle">
                  <option value="0" data-calc="0">목표 LIKE</option>
                  <option value="100" data-calc="100">100</option>
                  <option value="200" data-calc="200">200</option>
                  <option value="300" data-calc="300">300</option>
                  <option data-calc="400" value="400">400</option>
                  <option data-calc="500" value="500">500</option>
                  <option data-calc="600" value="600">600</option>
                  <option data-calc="700" value="700">700</option>
                  <option data-calc="800" value="800">800</option>
                  <option data-calc="900" value="900">900</option>
                  <option data-calc="1000" value="1000">1000</option>
                </select>
                <svg class="u-caret u-caret-svg" version="1.1" id="Layer_1" xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink" x="0px" y="0px" width="16px" height="16px" viewBox="0 0 16 16" style="fill:currentColor;" xml:space="preserve"><polygon class="st0" points="8,12 2,4 14,4 "></polygon></svg>
              </div>
            </div>
            <div class="u-form-group u-label-none u-form-group-6">
              
				 <input type="file" name="file" id="file"><br>
			  
            </div>
            <div class="u-align-center u-form-group u-form-submit u-label-none">
              <a onclick="sendData()" class="u-border-none u-btn u-btn-submit u-button-style u-palette-2-base u-btn-1">요청하기</a>
              <input type="submit" value="submit" class="u-form-control-hidden">
            </div>
            <input type="hidden" value="" name="recaptchaResponse">
            <input type="hidden" name="formServices" value="a4e7f32e805dd745f9249c7cef4456ee">
          </form>
        </div>
      </div>
    </section>
    
    
    <footer class="u-align-center u-clearfix u-footer u-grey-80 u-footer" id="sec-d4a5"><div class="u-clearfix u-sheet u-sheet-1">
        <p class="u-small-text u-text u-text-variant u-text-1">Sample text. Click to select the Text Element.</p>
      </div></footer>
    <section class="u-backlink u-clearfix u-grey-80">
      <a class="u-link" href="https://nicepage.com/templates" target="_blank">
        <span>Free Templates</span>
      </a>
      <p class="u-text">
        <span>created with</span>
      </p>
      <a class="u-link" href="https://nicepage.review" target="_blank">
        <span>Free Website Builder</span>
      </a>. 
    </section>
  
  <script src="https://code.jquery.com/jquery-3.6.4.min.js" integrity="sha256-oP6HI9z1XaZNBrJURtCoUT5SUnxFr8s3BzRl+cbzUq8=" crossorigin="anonymous"></script>
  <script>
	  function sendData(){
			// 파일을 서버로 보낼 때는 일반적인 form으로 보내지 못한다.
			// 즉, form-data를 활용해야 함!
			let frm = new FormData();
			
			if($(p_goal_like).val() == 0){
				alert("목표 좋아요 수를 설정해 주세요.");
				return;
			}
			
			frm.append("p_name", $(p_name).val());
			frm.append("p_s_price", $(p_s_price).val());
			frm.append("p_info", $(p_info).val());
			frm.append("p_goal_like",$(p_goal_like).val());
			
			// 서버로 보내고자 하는 파일을 파라미터로 지정한다.
			frm.append("img", $("#file")[0].files[0]);
			
			//비동기식 통신을 이용하여 파일을 서버로 보낸다.
			$.ajax({
				url: "Controller?type=reg",
				data: frm,// 파라미터(파일일 담긴 폼)
				type: "post", //전송방식
				contentType: false,
				processData: false,
				cache: false,
				dataType: "json", // 서버로부터 받을 데이터 형식
			}).done(function(res){
				if(res.cnt == 1){
					alert("요청되었습니다.");
					location.href="Controller?type=hold";
				}
			}).fail(function(err){
				// 서버에서 오류가 발생 시
			});
			
		}
  </script>
  
</body></html>