<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html style="font-size: 16px;" lang="en"><head>
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta charset="utf-8">
    <meta name="keywords" content="">
    <meta name="description" content="">
    <title>admin_login</title>
    <link rel="stylesheet" href="nicepage.css" media="screen">
<link rel="stylesheet" href="admin_login.css" media="screen">
    <script class="u-script" type="text/javascript" src="jquery.js" defer=""></script>
    <script class="u-script" type="text/javascript" src="nicepage.js" defer=""></script>
    <meta name="generator" content="Nicepage 5.9.10, nicepage.com">
    <meta name="referrer" content="origin">
    <link id="u-theme-google-font" rel="stylesheet" href="https://fonts.googleapis.com/css?family=Roboto:100,100i,300,300i,400,400i,500,500i,700,700i,900,900i|Open+Sans:300,300i,400,400i,500,500i,600,600i,700,700i,800,800i">
    
    
    <script type="application/ld+json">{
		"@context": "http://schema.org",
		"@type": "Organization",
		"name": "",
		"logo": "images/pickm21.png"
}</script>
    <meta name="theme-color" content="#478ac9">
    <meta property="og:title" content="admin_login">
    <meta property="og:type" content="website">
  <meta data-intl-tel-input-cdn-path="intlTelInput/"></head>
  <body class="u-body u-xl-mode" data-lang="en">
    <section class="u-clearfix u-section-1" id="sec-a2e5">
      <div class="u-clearfix u-sheet u-valign-middle u-sheet-1">
        <div class="u-clearfix u-gutter-40 u-layout-wrap u-layout-wrap-1">
          <div class="u-layout">
            <div class="u-layout-row">
              <div class="u-align-center u-container-style u-layout-cell u-right-cell u-size-60 u-layout-cell-1">
                <div class="u-container-layout u-valign-top u-container-layout-1">
                  <h6 class="u-text u-text-default u-text-1" data-animation-name="" data-animation-duration="0" data-animation-delay="0" data-animation-direction="">관리자 로그인</h6>
                  <div class="u-form u-form-1">
                    <form action="Controller_admin" class="u-clearfix u-form-spacing-32 u-form-vertical u-inner-form" style="padding: 0;" source="email" name="form" method="post">
                    <input type="hidden" name="type" value="admin_login"/>
                      <div class="u-form-group u-form-group-1">
                        <label for="text-957c" class="u-label">아이디</label>
                        <input type="text" placeholder="5자 이상 영문 또는 숫자" id="id" name="m_id" class="u-border-2 u-border-black u-border-no-left u-border-no-right u-border-no-top u-input u-input-rectangle">
                      </div>
                      <div class="u-form-group u-form-group-2">
                        <label for="text-1488" class="u-label">비밀번호</label>
                        <input type="password" placeholder="8자 이상이면서 최소한 숫자 하나와 글자 하나를 포함해야 합니다" id="pw" name="m_pw" class="u-border-2 u-border-black u-border-no-left u-border-no-right u-border-no-top u-input u-input-rectangle">
                      </div>
                      <div class="u-align-right u-form-group u-form-submit">
                        <button onclick="exe()" type="button" class="u-active-palette-1-light-2 u-border-none u-btn u-btn-round u-btn-submit u-button-style u-hover-palette-1-light-1 u-palette-1-base u-radius-12 u-btn-1">로그인</button>
                      </div>

                    </form>
                  </div>
                </div>
              </div>
            </div>
          </div>
        </div>
      </div>
    </section>
    
    
    <footer class="u-align-center u-clearfix u-footer u-grey-80 u-footer" id="sec-c5d8"><div class="u-clearfix u-sheet u-sheet-1">
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
        <span>Website Builder Software</span>
      </a>. 
    </section>
  
    <script src="https://code.jquery.com/jquery-3.6.4.min.js" integrity="sha256-oP6HI9z1XaZNBrJURtCoUT5SUnxFr8s3BzRl+cbzUq8=" crossorigin="anonymous"></script>   
  
  <c:if test="${not empty errorMessage}">
    <script>
      alert("${errorMessage}");
    </script>
  </c:if> 
  
  <script>

  	function exe(){
  		
  		let id = $("#id").val();
  		let pw = $("#pw").val();
  		
  		if(id.trim() == ""){
			alert("아이디를 입력하세요");
			$("#id").focus();
			return;
		}
		
		if(pw.trim() == ""){
			alert("비밀번호를 입력하세요");
			$("#pw").focus();
			return;
		}
		
		
		document.form.submit();
  	}
  </script>
  
</body></html>