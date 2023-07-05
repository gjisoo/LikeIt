<%@page import="util.Paging"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html style="font-size: 16px;" lang="en"><head>
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta charset="utf-8">
    <meta name="keywords" content="Design Perfection">
    <meta name="description" content="">
    <title>hold</title>
    
    <style type="text/css">
	
	/* paging */
	.div_paging{
		width: 1266;
	}
	.paging {
		margin-left:auto; 
    	margin-right:auto;
	}
	
	table tfoot ol.paging {
	    list-style:none;
	}
	
	table tfoot ol.paging li {
	    float:left;
	    margin-right:8px;
	}
	
	table tfoot ol.paging li a {
	    display:block;
	    padding:3px 7px;
	    border:1px solid #00B3DC;
	    color:#2f313e;
	    font-weight:bold;
	    text-decoration: none
	}
	
	table tfoot ol.paging li a:hover {
	    background:#00B3DC;
	    color:white;
	    font-weight:bold;
	    text-decoration: none
	}
	
	.disable {
	    padding:3px 7px;
	    border:1px solid silver;
	    color:silver;
	}
	
	.now {
	   padding:3px 7px;
	    border:1px solid #ff4aa5;
	    background:#ff4aa5;
	    color:white;
	    font-weight:bold;
	}
	
	.empty{
		height: 50px;
		color: #ababab;
	}
	</style>
    
    <link rel="stylesheet" href="css/nicepage.css" media="screen">
<link rel="stylesheet" href="css/hold.css" media="screen">
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
    <section class="u-align-center u-clearfix u-white u-section-1" id="sec-0bbb">
      <div class="u-clearfix u-sheet u-valign-middle u-sheet-1">
        <div class="u-border-3 u-border-grey-30 u-form u-radius-12 u-form-1">
          <form action="https://forms.nicepagesrv.com/v2/form/process" class="u-clearfix u-form-horizontal u-form-spacing-0 u-inner-form" style="padding: 0px;" source="email">
            <div class="u-form-text u-form-group u-label-none">
              <label for="email-c026" class="u-label">search</label>
              <input type="text" placeholder="크리에이터 또는 제목" id="email-c026" name="email" class="u-border-4 u-border-black u-border-no-bottom u-border-no-left u-border-no-right u-border-no-top u-input u-input-rectangle u-radius-15" required="">
            </div>
            <div class="u-form-group u-form-submit u-label-none">
              <a href="#" class="u-border-none u-btn u-btn-round u-btn-submit u-button-style u-grey-70 u-radius-12 u-btn-1">검색</a>
              <input type="submit" value="submit" class="u-form-control-hidden">
            </div>
            <div class="u-form-send-message u-form-send-success"> Thank you! Your message has been sent. </div>
            <div class="u-form-send-error u-form-send-message"> Unable to send your message. Please fix errors then try again. </div>
            <input type="hidden" value="" name="recaptchaResponse">
            <input type="hidden" name="formServices" value="a4e7f32e805dd745f9249c7cef4456ee">
          </form>
        </div>
      </div>
    </section>
    <section class="u-clearfix u-section-2" id="sec-bf95">
      <div class="u-clearfix u-sheet u-valign-middle u-sheet-1">
      <c:if test="${sessionScope.mvo != null }">
        <a href="Controller?type=reg_form" class="u-active-black u-border-5 u-border-palette-5-light-2 u-btn u-btn-round u-button-style u-hover-black u-none u-radius-50 u-text-hover-white u-btn-1">판매 신청하기</a>
      </c:if>
      <c:if test="${sessionScope.mvo == null }">
		<a onclick="noLogin_reg();" class="u-active-black u-border-5 u-border-palette-5-light-2 u-btn u-btn-round u-button-style u-hover-black u-none u-radius-50 u-text-hover-white u-btn-1">판매 신청하기</a>     	
      </c:if>
      </div>
    </section>
    <section class="u-clearfix u-white u-section-3" id="sec-6681">
      <div class="u-clearfix u-sheet u-sheet-1">
        <div class="u-expanded-width u-list u-list-1">
          <div class="u-repeater u-repeater-1">
          
            <c:forEach var="pvo" items="${requestScope.searchSale }">
            <div class="u-container-style u-list-item u-radius-20 u-repeater-item u-shape-round u-video-cover u-white">
              <div class="u-container-layout u-similar-container u-container-layout-1">
                <a href="Controller?type=viewProduct&p_idx=${pvo.p_idx }">
                	<img alt="" class="u-expanded-width-lg u-expanded-width-md u-expanded-width-sm u-expanded-width-xs u-image u-image-default u-image-1" data-image-width="2000" data-image-height="1333" src="${pageContext.request.contextPath}/image_upload/${pvo.file_name}">
                </a>
                <h5 class="u-align-center u-text u-text-default u-text-1">${pvo.p_name }</h5>
                <p class="u-align-center u-text u-text-default u-text-2">by ${pvo.m_id }</p>
              </div>
            </div>
           </c:forEach>
           
          </div>
        </div>
          <div class="div_paging">
            	<table>
            	<tfoot>
                      <tr>
                          <td colspan="4">
                              <ol class="paging">
                          <%
                          	// 페이징을 위해 request에 page라는 이름으로 저장된 객체 가져오기
                          	Object pp = request.getAttribute("page");
                          	Paging pvo = null;
                          	if(pp != null){
                          		pvo = (Paging)pp;
                          		
                          		//만약! page가 가지고 있는 startPage가 1이면 
                          		// 이전 기능을 부여하면 안된다.
                          		if(pvo.getStartPage() < pvo.getPagePerBlock()){
                          %>
                          		<li class="disable">&lt;</li><%-- 이전기능을 비활성화 함 --%>
                          <%			
                          		}else{                          		
                          %>    
								<li><a href="Controller?type=hold&cPage=<%=pvo.getStartPage()-pvo.getPagePerBlock()%>">&lt;</a></li>
						  <%
                          		}// 이전기능 활성화 확인하는 if문의 끝
                          		
                          		for(int i=pvo.getStartPage(); i<=pvo.getEndPage(); i++){
                          			
                          			//현재 i의 값이 현재페이지값과 같으면 
                          			// 링크를 걸지 않아야 한다.
                          			if(i == pvo.getNowPage()){
						  %>
								<li class="now"><%=i %></li>
         				  <%
                          			}else{
                          %>
                          		<li><a href="Controller?type=hold&cPage=<%=i%>"><%=i %></a></li>
                          <%				
                          			}//if문의 끝
                          		}//페이지 번호 출력하는 반복문의 끝
                          		
                          		//다음블럭 으로 이동하는 기능을 부여해야 할지? 하지 말아야 할지?는
                          		//endPage가 totalPage보다 작을 경우에만 기능을 부여한다.
                          		
                          		if(pvo.getEndPage() < pvo.getTotalPage()){
         				  %>	
								<li><a href="Controller?type=hold&cPage=<%=pvo.getStartPage()+pvo.getPagePerBlock()%>">&gt;</a></li>
						  <%
                          		}else{
                          %>
                          		<li class="disable">&gt;</li>
                          <%			
                          		}
                          	}// if의 끝
						  %>
                              </ol>
                          </td>
                      </tr>
                  </tfoot>
               </table>
            </div>
      </div>
    </section>
    <section class="u-clearfix u-white u-section-4" id="sec-bbae">
      <div class="u-clearfix u-sheet u-sheet-1"></div>
    </section>
    
    
    <footer class="u-align-center u-clearfix u-footer u-grey-80 u-footer" id="sec-d4a5"><div class="u-clearfix u-sheet u-sheet-1">
        <p class="u-small-text u-text u-text-variant u-text-1">Sample text. Click to select the Text Element.</p>
      </div></footer>
    <section class="u-backlink u-clearfix u-grey-80">
      <a class="u-link" href="https://nicepage.com/landing-page" target="_blank">
        <span>Landing Page</span>
      </a>
      <p class="u-text">
        <span>created with</span>
      </p>
      <a class="u-link" href="https://nicepage.com/wysiwyg-html-editor" target="_blank">
        <span>WYSIWYG HTML Editor</span>
      </a>. 
    </section>
    
    <script>
    	function noLogin_reg(){
    		
    		alert("로그인이 필요합니다.")
    			
    		location.href="login.jsp";
    		
    	}
    </script>
  
</body></html>