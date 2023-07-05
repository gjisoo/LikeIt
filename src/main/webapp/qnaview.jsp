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
    <link rel="stylesheet" href="css/summernote-lite.css"/>
    <link rel="stylesheet" href="css/nicepage.css" media="screen">
<link rel="stylesheet" href="css/qnaview.css" media="screen">
<link rel="stylesheet" href="https://code.jquery.com/ui/1.13.2/themes/base/jquery-ui.css">
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
		<form action="Controller?type=qnawritecomplete" method="post">
		<table summary="QnA 보기">
			<caption class="caption">QnA 보기</caption>
			<thead>
				<c:set var="bvo" value="${requestScope.vo }"></c:set>
				<tr class="title">
					<th class="subject">제목</th>
					<th class="blank"></th>
					<th colspan="9" class="subject2">${bvo.q_title }</th>
				</tr>
				<tr>
					<td colspan="11" class="underthead"></td>
				
				</tr>
					<th class="writer">글쓴이</th>
					<th class="blank"></th>
					<th class="writer2">${bvo.q_writer }</th>
					<th class="blank"></th>
					<th class="hit">조회수</th>
					<th class="blank"></th>
					<th class="hit2">${bvo.q_hit }</th>
					<th class="blank"></th>
					<th class="date">날짜</th>
					<th class="blank"></th>
					<th class="date2">${bvo.q_date }</th>
				</tr>
			</thead>
			<tbody>	
				<tr>
					<td colspan="11" class="underthead"></td>
				</tr>
				<tr>
					<td colspan="11" id="contentarea">${bvo.q_content }</td>
				</tr>
				
				
			</tbody>
		</table>
			<p>
				<button type="button" id="cancel" onclick="javascript:location.href='Controller?type=qna'">취소</button>
				<button type="button" id="edit" onclick="edit1()">수정</button>
				<button type="button" id="delete" onclick="delBbs()">삭제</button>
			</p>
		</form>
		
		<form action="Controller" method="post" name="frm2">
		<input type="hidden" name="type"/>
			<table id="commentable">
				<tbody>
					<c:forEach var="bvo2" items="${requestScope.cvo }">
						<tr>
							<td id="commentwriter">${bvo2.mvo.m_id }</td>
							<td id="commentcontent">${bvo2.c_content }<br/><br/><br/></td>
							<td id="commentbutton">
								<button type="button" id="editecomment${bvo2.c_idx}" class="commentbutton"  onclick="editecomment('${bvo2.c_idx }')">수정</button>
								<button type="button" id="deletecomment${bvo2.c_idx}" class="commentbutton" onclick="deletecomment('${bvo2.c_idx }')">삭제</button>
							</td>
						</tr>
						<tr>
							<td colspan="3" class="underthead"></td>
						</tr>
					</c:forEach>
				</tbody>
			</table>
		</form>	
		
		<form action="Controller?type=qnacommentwrite" method="post">
			<input type="hidden" name="q_idx" value="${bvo.q_idx }"/>
			<input type="hidden" name="m_idx" value="${sessionScope.mvo.m_idx }"/>
			<input type="hidden" name="q_pw" value="${bvo.q_pw }"/>
			<textarea name="content" cols="80" rows="10" id="content" data-str="내용"></textarea>
			<button type="button" id="savebut" onclick="sendData(this.form)">댓글 저장</button>
		</form>
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

<form name="frm" action="Controller" method="post">
	<input type="hidden" name="type"/>
	<input type="hidden" name="q_idx" value="${bvo.q_idx }"/>
	<input type="hidden" name="c_idx" value="${bvo2.c_idx }"/>
								
</form>


<script src="https://code.jquery.com/jquery-3.6.4.min.js" integrity="sha256-oP6HI9z1XaZNBrJURtCoUT5SUnxFr8s3BzRl+cbzUq8=" crossorigin="anonymous"></script>
<script src="https://code.jquery.com/ui/1.13.2/jquery-ui.js"></script>
<script src="js/summernote-lite.js"></script>
<script src="js/lang/summernote-ko-KR.js"></script>
<script>

	$(function(){
		$("#content").summernote({
			height: 100,
			width: 1136,
			leng: "ko-KR",
			callbacks:{
				// 이미지가 에디터에 삽입될 때 자동으로 호출되는 함수!
				onImageUpload:function(files, editor){
					// 이미지가 에디터에 추가될 때마다 수행하는 곳!
					// (추가되는 이미지는 배열로 인식된다! 
					//		하나만 추가해도 1개짜리 배열로 인식)
					for(let i=0; i<files.length; i++)
						sendImage(files[i], editor);// 비동기식 통신을 이용하여
							// 서버로 이미지를 보내는 함수 호출!
				}
			}
			
		});
	});

	function sendImage(file, editor){
		// 파일을 서버로 보낼 때는 일반적인 form으로 보내지 못한다.
		// 즉, form-data를 활용해야 함!
		let frm = new FormData();
		
		// 서버로 보내고자 하는 파일을 파라미터로 지정한다.
		frm.append("img", file);
		
		//비동기식 통신을 이용하여 파일을 서버로 보낸다.
		$.ajax({
			url: "Controller?type=qnacommentsaveImg",
			data: frm,// 파라미터(파일일 담긴 폼)
			type: "post", //전송방식
			contentType: false,
			processData: false,
			cache: false,
			dataType: "json", // 서버로부터 받을 데이터 형식
		}).done(function(data){
			$("#content").summernote("editor.insertImage", data.url);
		}).fail(function(err){
			// 서버에서 오류가 발생 시
		});
	}
	
	function sendData(frm){
		if($("#content").val() == ""){
			alert($("#content").data("str")+"을 입력하세요");
			return;
		} 
		if(${sessionScope.mvo == null} ){
			alert("댓글을 작성하려면 로그인해주세요.");
			return;
		}else
			frm.submit();
			
	}
	
	function delBbs(){
		let res = confirm("삭제하시겠습니까?");
		if(res){
			document.frm.type.value="qnadel";
			document.frm.submit();
		}
	}
	
	function edit1(){
		document.frm.type.value="qnaedit";
		document.frm.submit();
	}
	
	
	
	function deletecomment(cIdx){
		let res = confirm("삭제하시겠습니까?");
		if(res){
			document.frm.type.value="qnacommentdel";
			document.frm.c_idx.value=cIdx;
			document.frm.submit();
		}
	}
	
	function editecomment(cIdx){
		document.frm.type.value="qnacommentedit";
		document.frm.c_idx.value=cIdx;
		document.frm.submit();
	}

</script>
</html>