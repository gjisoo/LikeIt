<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html>
<html style="font-size: 16px;" lang="en"><head>
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta charset="utf-8">
    <meta name="keywords" content="">
    <meta name="description" content="">
    <title>buyForm</title>
    <link rel="stylesheet" href="css/nicepage.css" media="screen">
<link rel="stylesheet" href="css/Page-1.css" media="screen">
    <script class="u-script" type="text/javascript" src="js/jquery.js" defer=""></script>
    <script class="u-script" type="text/javascript" src="js/nicepage.js" defer=""></script>
    <meta name="generator" content="Nicepage 5.9.10, nicepage.com">
    <meta name="referrer" content="origin">
    <link id="u-theme-google-font" rel="stylesheet" href="https://fonts.googleapis.com/css?family=Roboto:100,100i,300,300i,400,400i,500,500i,700,700i,900,900i|Open+Sans:300,300i,400,400i,500,500i,600,600i,700,700i,800,800i">
    
    
    
    <script type="application/ld+json">{
		"@context": "http://schema.org",
		"@type": "Organization",
		"name": "Site1"
}</script>
    <meta name="theme-color" content="#478ac9">
    <meta property="og:title" content="Page 1">
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
    <section class="u-border-2 u-border-black u-border-no-bottom u-border-no-right u-border-no-top u-clearfix u-section-1" id="sec-f451">
      <div class="u-clearfix u-sheet u-sheet-1">
        <h4 class="u-text u-text-1">상품명</h4>
        <div class="u-container-style u-group u-opacity u-opacity-75 u-shape-rectangle u-white u-group-1">
          <div class="u-container-layout u-container-layout-1">
            <div class="u-expanded-width u-table u-table-responsive u-table-1">
              <table class="u-table-entity">
                <colgroup>
                  <col width="13.5%">
                  <col width="86.5%">
                </colgroup>
                <tbody class="u-table-body">
                  <tr style="height: 49px;">
                    <td class="u-border-2 u-border-grey-30 u-border-no-left u-border-no-right u-table-cell u-table-cell-1">남은시간 :</td>
                    <td class="u-border-2 u-border-grey-30 u-border-no-left u-border-no-right u-table-cell"></td>
                  </tr>
                  <tr style="height: 49px;">
                    <td class="u-border-2 u-border-grey-30 u-border-no-left u-border-no-right u-table-cell u-table-cell-3">현재가격 :</td>
                    <td id="nowPrice" class="u-border-2 u-border-grey-30 u-border-no-left u-border-no-right u-table-cell"></td>
                  </tr>
                </tbody>
              </table>
            </div>
            <div class="u-align-left u-countdown u-countdown-1" data-timer-id="dbba" data-type="to-time" data-target-date="${sessionScope.pvo.p_f_date} 00:00:00" data-for="everyone" data-direction="down" data-time-left="750m" data-target-number="100" data-frequency="1s" data-start-time="Mon, 15 May 2023 03:03:25 GMT">
              <div class="u-countdown-wrapper u-spacing-20">
                <div class="u-countdown-item u-countdown-years u-hidden u-spacing-10">
                  <div class="u-countdown-counter u-countdown-counter-1"><div class="u-countdown-number">0</div><div class="u-countdown-number u-hidden">0</div></div>
                  <div class="u-countdown-label u-countdown-label-1">Years</div>
                </div>
                <div class="u-countdown-separator u-hidden u-countdown-separator-1">:</div>
                <div class="u-countdown-days u-countdown-item u-hidden u-spacing-10">
                  <div class="u-countdown-counter u-countdown-counter-2"><div class="u-countdown-number">0</div><div class="u-countdown-number u-hidden">6</div><div class="u-countdown-number u-hidden">0</div></div>
                  <div class="u-countdown-label u-countdown-label-2">Days</div>
                </div>
                <div class="u-countdown-separator u-hidden u-countdown-separator-2">:</div>
                <div class="u-countdown-hours u-countdown-item u-spacing-10">
                  <div class="u-countdown-counter u-countdown-counter-3"><div class="u-countdown-number">1</div><div class="u-countdown-number">2</div></div>
                  <div class="u-countdown-label u-countdown-label-3"></div>
                </div>
                <div class="u-countdown-separator u-countdown-separator-3">:</div>
                <div class="u-countdown-item u-countdown-minutes u-spacing-10">
                  <div class="u-countdown-counter u-countdown-counter-4"><div class="u-countdown-number">3</div><div class="u-countdown-number">0</div></div>
                  <div class="u-countdown-label u-countdown-label-4"></div>
                </div>
                <div class="u-countdown-separator u-countdown-separator-4">:</div>
                <div class="u-countdown-item u-countdown-seconds u-spacing-10">
                  <div class="u-countdown-counter u-countdown-counter-5"><div class="u-countdown-number">0</div><div class="u-countdown-number">0</div></div>
                  <div class="u-countdown-label u-countdown-label-5"></div>
                </div>
                <div class="u-countdown-separator u-hidden u-countdown-separator-5">:</div>
                <div class="u-countdown-item u-countdown-numbers u-hidden u-spacing-10">
                  <div class="u-countdown-counter u-countdown-counter-6"><div class="u-countdown-number">0</div><div class="u-countdown-number">1</div><div class="u-countdown-number">0</div><div class="u-countdown-number">0</div></div>
                  <div class="u-countdown-label u-countdown-label-6">Items</div>
                </div>
              </div>
              <div class="u-countdown-message u-hidden">
                <p>Sorry, the time is up.</p>
              </div>
            </div>
          </div>
        </div>
        <img class="u-image u-image-contain u-image-round u-preserve-proportions u-radius-10 u-image-1" src="image_upload/${sessionScope.pvo.file_name }" alt="" data-image-width="128" data-image-height="128">
        <div class="u-container-style u-group u-opacity u-opacity-75 u-shape-rectangle u-white u-group-2">
          <div class="u-container-layout u-container-layout-2">
            <div class="u-expanded-width u-table u-table-responsive u-table-2">
              <table class="u-table-entity">
                <colgroup>
                  <col width="23.1%">
                  <col width="76.9%">
                </colgroup>
                <tbody class="u-table-body">
                  <tr style="height: 44px;">
                    <td class="u-border-1 u-border-grey-30 u-border-no-left u-border-no-right u-first-column u-palette-5-light-3 u-table-cell u-table-cell-5">시작가</td>
                    <td class="u-border-1 u-border-grey-30 u-border-no-left u-border-no-right u-table-cell">${sessionScope.pvo.p_s_price } 원</td>
                  </tr>
                  <tr style="height: 44px;">
                    <td class="u-border-1 u-border-grey-30 u-border-no-left u-border-no-right u-first-column u-palette-5-light-3 u-table-cell u-table-cell-7">종료일시</td>
                    <td class="u-border-1 u-border-grey-30 u-border-no-left u-border-no-right u-table-cell">${sessionScope.pvo.p_f_date } 23:59:59</td>
                  </tr>
                  <tr style="height: 30px;">
                    <td class="u-border-1 u-border-grey-30 u-border-no-left u-border-no-right u-first-column u-palette-5-light-3 u-table-cell u-table-cell-9">작가명</td>
                    <td class="u-border-1 u-border-grey-30 u-border-no-left u-border-no-right u-table-cell">${sessionScope.pvo.m_id }</td>
                  </tr>
                  <tr style="height: 44px;">
                    <td class="u-border-1 u-border-grey-30 u-border-no-left u-border-no-right u-first-column u-palette-5-light-3 u-table-cell u-table-cell-11">LIKE</td>
                    <td class="u-border-1 u-border-grey-30 u-border-no-left u-border-no-right u-table-cell">${sessionScope.pvo.like_count }&nbsp;<span class="u-icon u-icon-1"><svg class="u-svg-content" viewBox="0 0 50 50" x="0px" y="0px" style="width: 1em; height: 1em;"><path style="fill:currentColor;" d="M24.85,10.126c2.018-4.783,6.628-8.125,11.99-8.125c7.223,0,12.425,6.179,13.079,13.543
	c0,0,0.353,1.828-0.424,5.119c-1.058,4.482-3.545,8.464-6.898,11.503L24.85,48L7.402,32.165c-3.353-3.038-5.84-7.021-6.898-11.503
	c-0.777-3.291-0.424-5.119-0.424-5.119C0.734,8.179,5.936,2,13.159,2C18.522,2,22.832,5.343,24.85,10.126z"></path></svg></span>
                    </td>
                  </tr>
                </tbody>
              </table>
            </div>
          </div>
        </div>
      </div>
    </section>
    <section class="u-align-center u-clearfix u-section-2" id="sec-b0b8">
      <div class="u-clearfix u-sheet u-sheet-1">
        <div class="u-expanded-height u-form u-form-1">
          <form action="https://forms.nicepagesrv.com/v2/form/process" class="u-clearfix u-form-horizontal u-form-spacing-15 u-inner-form" style="padding: 15px" source="email">
            <div class="u-form-email u-form-group u-label-left u-form-group-1">
              <label for="email-558c" class="u-label u-text-palette-1-base u-label-1">입찰금액</label>
              <input type="text" placeholder="입찰하실 금액을 입력해주세요." id="buyPrice" name="buy" class="u-input u-input-rectangle u-radius-10" required="">
            </div>
            <div class="u-form-group u-form-submit u-label-left u-form-group-2">
              <label class="u-label u-text-palette-1-base u-label-2"></label>
              <div class="u-btn-submit-container">
                <a onclick="buy();" class="u-btn u-btn-round u-btn-submit u-button-style u-palette-2-base u-radius-10 u-btn-1">입찰하기</a>
              </div>
              <input type="submit" value="submit" class="u-form-control-hidden">
            </div>
            <input type="hidden" value="" name="recaptchaResponse">
            <input type="hidden" name="formServices" value="">
          </form>
        </div>
        <a href="Controller?type=sale" class="u-btn u-btn-round u-button-style u-palette-5-dark-2 u-radius-10 u-btn-2" data-animation-name="" data-animation-duration="0" data-animation-delay="0" data-animation-direction="">목록보기</a>
      </div>
    </section>
    
    <%-- 현재 보고있는 상품의 기본키를 숨겨둔다. --%>
    <input type="hidden" id="pvo_idx" value="${sessionScope.pvo.p_idx}"/>
    <input type="hidden" id="pvo_file" value="${sessionScope.pvo.file_name}"/>
    
    <%-- 현재 입찰가격 --%>
    <input type="hidden" id="pvo_pay" />
    
    <section class="u-clearfix u-section-5" id="sec-4724">
      <div class="u-clearfix u-sheet u-valign-top u-sheet-1">
        <div class="u-black u-container-style u-group u-radius-10 u-shape-round u-group-1">
          <div class="u-container-layout u-container-layout-1">
            <div class="u-table u-table-responsive u-table-1">
              
              <table class="u-table-entity" id="auc_table">
                <colgroup>
                  <col width="27.9%">
                  <col width="32.8%">
                  <col width="39.3%">
                </colgroup>
                <thead class="u-table-header">
                  <tr style="height: 29px;">
                    <th class="u-align-center u-grey-60 u-table-cell u-table-cell-1">일시</th>
                    <th class="u-align-center u-grey-60 u-table-cell u-table-cell-2">참여자 ID</th>
                    <th class="u-align-center u-grey-60 u-table-cell u-table-cell-3">금액(원)</th>
                  </tr>
                </thead>
                <tbody class="u-table-body">
                  
                </tbody>
                
              </table>
            </div>
          </div>
        </div>
      </div>
    </section>
    
    <footer class="u-align-center u-clearfix u-footer u-grey-80 u-footer" id="sec-d4a5"><div class="u-clearfix u-sheet u-sheet-1">
        <p class="u-small-text u-text u-text-variant u-text-1">Sample text. Click to select the Text Element.</p>
      </div></footer>
    <section class="u-backlink u-clearfix u-grey-80">
      <a class="u-link" href="https://nicepage.com/css-templates" target="_blank">
        <span>CSS Templates</span>
      </a>
      <p class="u-text">
        <span>created with</span>
      </p>
      <a class="u-link" href="https://nicepage.com/html-website-builder" target="_blank">
        <span>HTML Builder</span>
      </a>. 
    </section>
    
    <script src="https://code.jquery.com/jquery-3.6.4.min.js" integrity="sha256-oP6HI9z1XaZNBrJURtCoUT5SUnxFr8s3BzRl+cbzUq8=" crossorigin="anonymous"></script>
    <script>
    $(function(){
    	
    	setInterval(() => {
			
			$.ajax({
		      url: "Controller",
		      type: "post",
		      dataType: "json",
		      data: { 'type': 'aucList', 'p_idx': ${param.p_idx} }
		    }).done(function(res){
		    	let str = "";
		    	let nowPrice = "";
		    	
		    	for(let i=0; i<res.length; i++){
		    		str += '<tr style="height: 45px;">';
		    		str += '<td class="u-align-center u-black u-table-cell u-table-cell-4">'+res[i].a_date+'</td>';
		    		str += '<td class="u-align-center u-black u-table-cell u-table-cell-5">'+res[i].m_id+'</td>';
		    		str += '<td class="u-align-right u-black u-table-cell u-table-cell-6">'+parseInt(res[i].a_price).toLocaleString('ko-KR')+'</td>';
		    		str += '</tr>';
		    		
		    		/*
		    		if(i == res.length - 1){
		    			nowPrice = parseInt(res[i].a_price).toLocaleString('ko-KR')+" 원";
		    		}
		    		*/
		    	}
		    	
		    	nowPrice = parseInt(res[0].a_price).toLocaleString('ko-KR')+" 원";
		    	
		    	$("#pvo_pay").val(res[0].a_price);
		    	
		    	$("#auc_table tbody").html(str);
		    	$("#nowPrice").text(nowPrice);
			});
			
			
		}, 1000);
    });
    
    function buy(){
    	
//    	let buyPrice = document.getElementById("buyPrice").value;
    	let buyPrice = parseInt($("#buyPrice").val());
    	
    	//유효성검사 < 현재가 보다 입찰가격이 작으면 안된다. 입찰가격은 1000원단위로만 입력가능>
    	if(buyPrice <= parseInt($("#pvo_pay").val())){
    		alert("현재금액 보다 커야 합니다.");
    		$("#buyPrice").val("");
    		return;
    	}
    	
    	if(buyPrice%1000 != 0){
    		alert("금액은 1000원 단위로만 입력 가능합니다.");
    		return;
    	}
    	
    	let pIdx = $("#pvo_idx").val();
    	let pvo_file = $("#pvo_file").val();
    	
    	$.ajax({
			url: "Controller",
			data: {'type':'auction', 'p_idx':pIdx, 'buyPrice':buyPrice, 'pvo_file':pvo_file},// 파라미터(파일일 담긴 폼)
			type: "post", //전송방식
			dataType: "json", // 서버로부터 받을 데이터 형식
		}).done(function(res){
			
		}).fail(function(err){
			// 서버에서 오류가 발생 시
		});
    	
    	alert("입찰 신청 완료");
    	$("#buyPrice").val("");
    }
    
    </script>
  
</body></html>