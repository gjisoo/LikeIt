<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html style="font-size: 16px;" lang="en"><head>
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta charset="utf-8">
    <meta name="keywords" content="Our Projects, INTUITIVE">
    <meta name="description" content="">
    <title>Home</title>
    <link rel="stylesheet" href="css/nicepage.css" media="screen">
<link rel="stylesheet" href="css/Home.css" media="screen">
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
    <meta property="og:title" content="hold">
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
       
     <section class="u-align-center u-clearfix u-section-1" id="sec-4273">
      <div class="u-carousel u-expanded-width u-gallery u-layout-carousel u-lightbox u-no-transition u-show-text-none u-gallery-1" data-interval="5000" data-u-ride="carousel" id="carousel-9387">
        <ol class="u-absolute-hcenter u-carousel-indicators u-carousel-indicators-1">
          <li data-u-target="#carousel-9387" data-u-slide-to="0" class="u-active u-grey-70 u-shape-circle" style="width: 10px; height: 10px;"></li>
          <li data-u-target="#carousel-9387" data-u-slide-to="1" class="u-grey-70 u-shape-circle" style="width: 10px; height: 10px;"></li>
          <li data-u-target="#carousel-9387" data-u-slide-to="2" class="u-grey-70 u-shape-circle" style="width: 10px; height: 10px;"></li>
        </ol>
        <div class="u-carousel-inner u-gallery-inner" role="listbox">
          <div class="u-active u-carousel-item u-gallery-item u-carousel-item-1">
            <div class="u-back-slide" data-image-width="1280" data-image-height="1280">
              <img class="u-back-image u-expanded" src="image_upload/공지사항1.PNG">
            </div>
            <div class="u-over-slide u-over-slide-1">
              <h3 class="u-gallery-heading"></h3>
              <p class="u-gallery-text"></p>
            </div>
          </div>
          <div class="u-carousel-item u-gallery-item u-carousel-item-2">
            <div class="u-back-slide" data-image-width="1279" data-image-height="1280">
              <img class="u-back-image u-expanded" src="image_upload/공지사항2.PNG">
            </div>
            <div class="u-over-slide u-over-slide-2">
              <h3 class="u-gallery-heading"></h3>
              <p class="u-gallery-text"></p>
            </div>
          </div>
          <div class="u-carousel-item u-gallery-item u-carousel-item-3" data-image-width="1280" data-image-height="1280">
            <div class="u-back-slide">
              <img class="u-back-image u-expanded" src="image_upload/공지사항3.PNG">
            </div>
            <div class="u-over-slide u-over-slide-3">
              <h3 class="u-gallery-heading"></h3>
              <p class="u-gallery-text"></p>
            </div>
            <style data-mode="XL"></style>
            <style data-mode="LG"></style>
            <style data-mode="MD"></style>
            <style data-mode="SM"></style>
            <style data-mode="XS"></style>
          </div>
        </div>
        <a class="u-absolute-vcenter u-carousel-control u-carousel-control-prev u-grey-70 u-icon-circle u-opacity u-opacity-70 u-spacing-10 u-text-white u-carousel-control-1" href="#carousel-9387" role="button" data-u-slide="prev">
          <span aria-hidden="true">
            <svg viewBox="0 0 451.847 451.847"><path d="M97.141,225.92c0-8.095,3.091-16.192,9.259-22.366L300.689,9.27c12.359-12.359,32.397-12.359,44.751,0
c12.354,12.354,12.354,32.388,0,44.748L173.525,225.92l171.903,171.909c12.354,12.354,12.354,32.391,0,44.744
c-12.354,12.365-32.386,12.365-44.745,0l-194.29-194.281C100.226,242.115,97.141,234.018,97.141,225.92z"></path></svg>
          </span>
          <span class="sr-only">
            <svg viewBox="0 0 451.847 451.847"><path d="M97.141,225.92c0-8.095,3.091-16.192,9.259-22.366L300.689,9.27c12.359-12.359,32.397-12.359,44.751,0
c12.354,12.354,12.354,32.388,0,44.748L173.525,225.92l171.903,171.909c12.354,12.354,12.354,32.391,0,44.744
c-12.354,12.365-32.386,12.365-44.745,0l-194.29-194.281C100.226,242.115,97.141,234.018,97.141,225.92z"></path></svg>
          </span>
        </a>
        <a class="u-absolute-vcenter u-carousel-control u-carousel-control-next u-grey-70 u-icon-circle u-opacity u-opacity-70 u-spacing-10 u-text-white u-carousel-control-2" href="#carousel-9387" role="button" data-u-slide="next">
          <span aria-hidden="true">
            <svg viewBox="0 0 451.846 451.847"><path d="M345.441,248.292L151.154,442.573c-12.359,12.365-32.397,12.365-44.75,0c-12.354-12.354-12.354-32.391,0-44.744
L278.318,225.92L106.409,54.017c-12.354-12.359-12.354-32.394,0-44.748c12.354-12.359,32.391-12.359,44.75,0l194.287,194.284
c6.177,6.18,9.262,14.271,9.262,22.366C354.708,234.018,351.617,242.115,345.441,248.292z"></path></svg>
          </span>
          <span class="sr-only">
            <svg viewBox="0 0 451.846 451.847"><path d="M345.441,248.292L151.154,442.573c-12.359,12.365-32.397,12.365-44.75,0c-12.354-12.354-12.354-32.391,0-44.744
L278.318,225.92L106.409,54.017c-12.354-12.359-12.354-32.394,0-44.748c12.354-12.359,32.391-12.359,44.75,0l194.287,194.284
c6.177,6.18,9.262,14.271,9.262,22.366C354.708,234.018,351.617,242.115,345.441,248.292z"></path></svg>
          </span>
        </a>
      </div>
    </section>
   
    
    <section class="u-clearfix u-white u-section-2" id="carousel_611a">
      <div class="u-clearfix u-sheet u-sheet-1">
        <h3 class="u-text u-text-default u-text-1">최근 판매 등록된 상품 </h3>
        <div class="u-expanded-width u-list u-list-1">
          <div class="u-repeater u-repeater-1">
          <c:forEach var="s_ar" items="${requestScope.sale_ar }" varStatus="st" begin="0" end="4">
            <div class="u-container-style u-list-item u-repeater-item">
              <div class="u-container-layout u-similar-container u-container-layout-1">
                <a href="Controller?type=viewProduct&p_idx=${s_ar.p_idx }">
                <img class="u-image u-image-round u-radius-10 u-image-1" src="image_upload/${s_ar.file_name }" alt="" data-image-width="1980" data-image-height="1510">
                <h2 class="u-subtitle u-text u-text-default u-text-2">${s_ar.p_name }</h2>
                <p class="u-small-text u-text u-text-default u-text-variant u-text-3">By_${s_ar.m_id }<br></p>
                </a>
              </div>
            </div>
           </c:forEach>

          </div>
        </div>
        <h3 class="u-text u-text-default u-text-10">판매대기 상품 </h3>
        <div class="u-expanded-width u-list u-list-2">
          <div class="u-repeater u-repeater-2">
          <c:forEach var="h_ar" items="${requestScope.hold_ar }" varStatus="st" begin="0" end="4">
            <div class="u-container-style u-list-item u-repeater-item">
              <div class="u-container-layout u-similar-container u-container-layout-5">
                <a href="Controller?type=viewProduct&p_idx=${h_ar.p_idx }">
                <img class="u-image u-image-round u-radius-10 u-image-5" src="image_upload/${h_ar.file_name }" alt="" data-image-width="1980" data-image-height="1510">
                <h2 class="u-subtitle u-text u-text-default u-text-11">${h_ar.p_name }</h2>
                <p class="u-small-text u-text u-text-default u-text-variant u-text-12">By_${h_ar.m_id }<br>
                </a>
                </p>
              </div>
            </div>
          </c:forEach>

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
        <span>Website Builder Software</span>
      </a>. 
    </section>
  
  <script>
  
  </script>
  
</body></html>