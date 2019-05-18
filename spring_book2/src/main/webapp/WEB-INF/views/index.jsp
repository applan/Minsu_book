<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
// delecte에서 삭제 실패시 변수 받아주는 변수 (value값 넘어옴)
   String tab_select=(String)session.getAttribute("tab_select");
   if((String)session.getAttribute("tab_select") != null){
	   tab_select=(String)session.getAttribute("tab_select");
   }else{
	   tab_select="insert";
   }
   String result = (String)session.getAttribute("result");
   if((String)session.getAttribute("result") != null){
	 result = (String)session.getAttribute("result");
   }else{
	   result = "f";
   }
   String resultMessage = (String)session.getAttribute("resultMessage");
   if((String)session.getAttribute("resultMessage") != null){
	   resultMessage = (String)session.getAttribute("resultMessage");
   }else{
	   resultMessage = "";
   }
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">

<meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no"> <%-- 데스크 탑으로 불러오는지 혹은 스마트폰 등 디바이스 확인 ( 반응형 페이지로 만들어 주는 코드  ) --%>
<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">
<%-- 부트 스트랩 사용을 위해 import 시키는 작업  ↑ 디자인만 사용할 경우 --%>
<script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js" integrity="sha384-UO2eT0CpHqdSJQ6hJty5KVphtPhzWj9WO1clHTMGa3JDZwrnQq4sF86dIHNDz0W1" crossorigin="anonymous"></script>
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js" integrity="sha384-JjSmVgyd0p3pXB1rRibZUAYoIIy6OrQ6VrjIEaFf/nJGzIxFDsf4x0xIM+B07jRM" crossorigin="anonymous"></script>
<%-- 디자인 뿐만 아니라  Jquery 등등 사용할떄 필요 --%>
<title>부트스트랩 자체도 반응형</title>

</head>
<body>
  <div class="jumbotron">
  <%-- jumbotron : 고속도로 등등에서 사용하는 '대형 전광판(이 뜻도 됨 )' 부트 스트랩 이용 차량 
       https://getbootstrap.com/docs/4.3/components/jumbotron/
       --%>

     <h3>스프링MVC - 도서관리시스템</h3>
       
  </div>

   <div class="container-fluid">
     <div class="row"> <!-- 12개로 방을 만들어서 공간을 잡음 ~! ( 부트 스트랩 ) -->
       <div class="col-xl-3"> <!--  xl , md = 화면에 맞춰주는것 (모바일 , pc ) -->
          <div class="list-group" id="myList" role="tablist">
              <a href="#insert" role="tab" data-toggle="list" class="list-group-item list-group-item-action">도서 정보 입력</a>
              <a href="#all" role="tab" data-toggle="list" class="list-group-item list-group-item-action">도서 정보 보기</a>
              <a href="#delete" role="tab" data-toggle="list" class="list-group-item list-group-item-action">도서 정보 삭제</a>
              <a href="#search" role="tab" data-toggle="list" class="list-group-item list-group-item-action">도서 정보 검색</a>
              <a href="#modify" role="tab" data-toggle="list" class="list-group-item list-group-item-action">도서 정보 수정</a>
          </div>
      </div>
        <div class="col-xl-9">
         <div class="tab-content" id="nav-tabContent">
          <div class="tab-pane fade" role="tabpanel" id="delete">
           <jsp:include page="book_delete.jsp"/>
          </div>
          <div class="tab-pane fade" role="tabpanel" id="search">
           <jsp:include page="book_search.jsp"/>
          </div>
          <div class="tab-pane fade" role="tabpanel" id="modify">
           <jsp:include page="book_modify.jsp"/>
          </div>
          <div class="tab-pane fade" role="tabpanel" id="insert">
           <jsp:include page="book_insert.jsp"/>
          </div>
         </div>
        </div>
     </div>
   </div>
<script>
// jquery의 시작
 $(function(){
	$("document").ready(function(){ 
		var tab_select = '<%=tab_select%>';
		var result = '<%=result%>';
		if(result === 'true'){
			alert("성공했습니다");
		}else if(result === 'false'){
			alert('<%=resultMessage%>'+"을 실패했습니다");
		}
		<% session.removeAttribute("result");%>
		<% session.removeAttribute("resultMessage");%>
		<% // ''를 붙여준 이유는  ''를 안 붙이면  String형태가 아니고 Object형식으로 돌아오기 때문에 값을 인식 못한다. %>
		$("#myList a[href='#"+tab_select+"']").tab("show");
			<%session.removeAttribute("tab_select");
			session.removeAttribute("keywordValue");%>
	
	});  
	$("#myList a[href='#all']").click("shown.bs.tab",function(){
		location.href="select";
	})
 });
</script>
</body>
</html>