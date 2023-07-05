<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html style="font-size: 16px;" lang="en"><head>
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta charset="utf-8">
    <meta name="keywords" content="íìê°ì">
    <meta name="description" content="">
    <title>join</title>
    <link rel="stylesheet" href="css/nicepage.css" media="screen">
<link rel="stylesheet" href="css/join.css" media="screen">
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
    <meta property="og:title" content="join">
    <meta property="og:type" content="website">
  <meta data-intl-tel-input-cdn-path="intlTelInput/"></head>
  <body class="u-body u-xl-mode" data-lang="en"><header class="u-clearfix u-header" id="sec-fba2" data-animation-name="" data-animation-duration="0" data-animation-delay="0" data-animation-direction=""><div class="u-clearfix u-sheet u-sheet-1">
        <!-- header -->
        
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
    <section class="u-clearfix u-section-1" id="sec-d435">
      <div class="u-clearfix u-sheet u-sheet-1">
        <div class="u-align-center u-border-2 u-border-palette-5-light-1 u-container-style u-expanded-width-xs u-group u-palette-1-light-3 u-radius-19 u-shape-round u-group-1">
          <div class="u-container-layout u-container-layout-1">
            <h1 class="u-text u-text-default u-text-1">회원가입</h1>
            <div class="u-form u-form-1">
              <form action="Controller" class="u-clearfix u-form-spacing-15 u-form-vertical u-inner-form" style="padding: 15px;" source="email" name="form" method="post">
                <div class="u-form-group u-label-top u-form-group-1">
                
                  <label for="rg_id" class="u-label">아이디</label>
                  <input type="text" id="rg_id" name="m_id" class="u-input u-input-rectangle" placeholder="5자 이상 영문 또는 숫자">
                  <span id="box"></span> 
                </div>
                <div class="u-form-group u-form-name u-label-top">
                  <label for="rg_pw" class="u-label">비밀번호</label>
                  <input type="password" placeholder="8자 이상이면서 최소한 숫자 하나와 글자 하나를 포함해야 합니다." id="rg_pw" name="m_pw" class="u-input u-input-rectangle" required="">
                </div>
                <div class="u-form-email u-form-group u-label-top">
                  <label for="rg_pw_chk" class="u-label">비밀번호 확인</label>
                  <input type="password" id="rg_pw_chk" name="rg_pw_chk" class="u-input u-input-rectangle" required="" placeholder="비밀번호를 다시 입력해주세요.">
                </div>
                <div class="u-form-group u-label-top u-form-group-4">
                  <label for="m_name" class="u-label">이름</label>
                  <input type="text" id="m_name" name="m_name" class="u-input u-input-rectangle" placeholder="이름을 입력하세요.">
                </div>
                <div class="u-form-group u-label-top u-form-group-5">
                  <label for="m_phone" class="u-label">전화번호</label>
                  <input type="text" placeholder="ex) 010-1234-5678" id="m_phone" name="m_phone" class="u-input u-input-rectangle">
                </div>
                <div class="u-form-group u-label-top u-form-group-6">
                  <label for="m_email" class="u-label">이메일</label>
                  <input type="email" placeholder="ex)maru@naver.com" id="m_email" name="m_email" class="u-input u-input-rectangle">
                </div>
                <div class="u-form-checkbox u-form-group u-label-top u-form-group-7">
                	<label class="u-field-label"></label>
                  <input type="checkbox" id="agree" name="rg_ok" value="On" class="u-active-palette-4-base u-border-2 u-border-grey-75 u-field-input">
                  <label for="agree" class="u-field-label">이용약관과 개인정보취급방침에 동의합니다.</label>
                </div>
                <div class="u-align-right u-form-group u-form-submit u-label-top">
                  <button onclick="send(this.form)" type="button" class="u-btn u-btn-round u-btn-submit u-button-style u-radius-14 u-text-body-alt-color u-btn-1" >가입하기</button>
                  <%-- <input type="submit" value="submit" class="u-form-control-hidden"> --%>
                </div>
                <div class="u-form-send-message u-form-send-success">Thank you! Your message has been sent.</div>
                <div class="u-form-send-error u-form-send-message">Unable to send your message. Please fix errors then try again.</div>
                <input type="hidden" value="" name="recaptchaResponse">
                <input type="hidden" value="add" name="type">
                <input type="hidden" name="formServices" value="a4e7f32e805dd745f9249c7cef4456ee">
              </form>
            </div>
          </div>
        </div>
      </div>
    </section>
    
    
    <footer class="u-align-center u-clearfix u-footer u-grey-80 u-footer" id="sec-d4a5"><div class="u-clearfix u-sheet u-sheet-1">
        <p class="u-small-text u-text u-text-variant u-text-1">Sample text. Click to select the Text Element.</p>
      </div></footer>
    <section class="u-backlink u-clearfix u-grey-80">
      <a class="u-link" href="https://nicepage.com/templates" target="_blank">
        <span>Templates</span>
      </a>
      <p class="u-text">
        <span>created with</span>
      </p>
      <a class="u-link" href="https://nicepage.cc" target="_blank">
        <span>Best Free Website Builder</span>
      </a>
    </section>
    
    <script src="https://code.jquery.com/jquery-3.6.4.min.js" integrity="sha256-oP6HI9z1XaZNBrJURtCoUT5SUnxFr8s3BzRl+cbzUq8=" crossorigin="anonymous"></script>
  <script>
  	function send(form){
  		// 현재 문서에서 "chk"라는 아이디를 가진 요소의 class가 success인지? 확인!
  		/*let chk = $("#chk").hasClass("success");
		
		//let chk = document.getElementById("chk").className;
		
		if(!chk){
			alert("아이디 체크를 먼저 해주새요!");
			return;
		}*/
		
		let id = $("#rg_id").val();
		
		let check1 = /^[a-z0-9]{5,}$/;
		let check2 = /^(?=.*[a-z])(?=.*\d).{8,}$/;
		let check3 = /^[가-힣]{2,20}$/;
		let check4 = /^\d{2,3}-\d{3,4}-\d{4}$/;
		let check5 = /^[a-zA-Z0-9]+@[a-z]+\.[a-zA-Z]{2,3}$/i;
		
		let pw = $("#rg_pw").val();
		let pwchk = $("#rg_pw_chk").val();
		let name = $("#m_name").val();
		let phone = $("#m_phone").val();
		let email = $("#m_email").val();
		
		if(id.trim().length < 1){
			alert("아이디를 입력하세요");
			$("#rg_id").focus();
			return;
		}
		
		if(!check1.test(id)){
			alert("아이디는 5자 이상 영소문자 또는 숫자로 구성해야합니다.");
			$("#rg_id").focus();
			return;
		}
		
		if(pw.trim().length < 1){
			alert("비밀번호를 입력하세요");
			$("#rg_pw").focus();
			return;
		}
		
		if(!check2.test(pw)){
			alert("비밀번호는 8자 이상이면서 최소한 숫자 하나와 영소문자 하나를 포함해야 합니다.");
			$("#rg_pw").focus();
			return;
		}
		
		if(pwchk.trim() != pw.trim()){
			alert("비밀번호가 다름니다.");
			$("#rg_pw_chk").focus();
			return;
		}
		
		if(name.trim().length < 1){
			alert("이름을 입력하세요");
			$("#m_name").focus();
			return;
		}
		
		if(!check3.test(name)){
			alert("이름은 한글로 2자 이상 20자 이하로 입력하셔야합니다.");
			$("#m_name").focus();
			return;
		}
		
		if(phone.trim().length < 1){
			alert("전화번호를 입력하세요");
			$("#m_phone").focus();
			return;
		}
		
		if(!check4.test(phone)){
			alert("전화번호 형식이 올바르지 않습니다.");
			$("#m_phone").focus();
			return;
		}
		
		if(email.trim().length < 1){
			alert("이름을 입력하세요");
			$("#m_name").focus();
			return;
		}
		
		if(!check5.test(email)){
			alert("이메일 형식이 올바르지 않습니다.");
			$("#m_email").focus();
			return;
		}
		
		if(!$("#agree").is(":checked")){
			alert("약관동의를 해주십시요!");
			$("#agree").focus();
			return;
		}
		
		//document.forms[0].action = "registry.jsp";
		//document.forms[0].method = "post";
		document.form.submit(); //서버로 보낸다.
  	}
  	
  	$(function(){
		
		// 사용자가 id를 입력하기 위해
		// 아이디가 s_id인 솟에서 키보드를 누를 때마다 수행하는 함수를
		// 이벤트 적용시켜보자!
		$("#rg_id").bind("keyup", function(){
			//console.log("^^");
			//사용자가 입력한 아이디가 s_id에 입력되므로
			// 그곳에 있는 값(value)을 가져온다.
			var str = $(this).val();
			//console.log(str);
			
			//str의 값에서 공백이 있는지? 없는지? 판단하고 싶다면 정규표현식 등을 이용
			//해야 한다. -- 일단 생략 --
			if(str.trim().length > 4){
				// 입력된 아이디가 4자 이상 입력했을 경우
				// 서버에 비동기식으로 보낸다.
				$.ajax({
					url: "Controller",
					type: "post",
					data: "type=checkid&m_id="+encodeURIComponent(str.trim()),
				}).done(function(res){
					//성공적으로 수행이 끝났을 때 수행하는 곳
					//console.log(res);
					$("#box").html(res.trim());
				}).fail(function(err){
					//서버요청이 실패했을 때 수행하는 곳
					console.log(err);
				});
			}else{
				$("#box").html("");
			}
		});
	});
  </script>
  
</body></html>