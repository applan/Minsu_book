<!-- <!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">
<script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js" integrity="sha384-UO2eT0CpHqdSJQ6hJty5KVphtPhzWj9WO1clHTMGa3JDZwrnQq4sF86dIHNDz0W1" crossorigin="anonymous"></script>
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js" integrity="sha384-JjSmVgyd0p3pXB1rRibZUAYoIIy6OrQ6VrjIEaFf/nJGzIxFDsf4x0xIM+B07jRM" crossorigin="anonymous"></script>
<title>Insert title here</title>
<style type="text/css">
.reset{
 background-color: #848484;
 border: 1px soild ;
 border-color: #848484;
}
.reset:hover {
 background-color: #848484;
  border-color: #000000;
}
.reset: {
  background-color: #848484;
  border-color: #000000;
}
</style>
</head>
<body> -->
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%--     <%
String result = (String)request.getAttribute("result");
if(result == null){
      result = "false";	   
}else if(result.equals("true")){
	%>
	 <script>
	  alert("새로운 색 등록에 성공했습니다.");
	 </script>
	<% 
}
%> --%>
	<form action="insert" method="post">
	<!-- /jdbc_books/view/book_insert_pro.jsp : includ = 같이 한 페이지가 되기 떄문에  -->
  <div class="form-group">
    <label for="exampleInputcode1">Code</label>
    <input type="text" class="form-control" id="exampleInputcode1" aria-describedby="codeHelp" placeholder="Enter code" name="code" id="code">
    <small id="codeHelp" class="form-text text-muted" >새로 추가할 책의 코드를 입력하세요 ( 중복 불가 )</small>
  </div>
  <div class="form-group">
    <label for="exampleInputTitle1">Title</label>
    <input type="text" class="form-control" id="exampleInputTitle1" placeholder="Title" name="title" id="title">
    <small id="titleHelp" class="form-text text-muted">새로 추가할 책의 이름을 입력하세요</small>
  </div>
  <div class="form-group">
    <label for="exampleInputWriter1">Writer</label>
    <input type="text" class="form-control" id="exampleInputWriter1" placeholder="Writer" name="writer" id="writer">
    <small id="writerHelp" class="form-text text-muted">새로 추가할 책의 작가를 입력하세요</small>
  </div>
  <div class="form-group">
    <label for="exampleInputPrice1">Price</label>
    <input type="number" class="form-control" id="exampleInputPrice1" placeholder="Price" name="price" id="price">
    <small id="priceHelp" class="form-text text-muted">새로 추가할 책의 가격을 입력하세요</small>
  </div>
  <button type="submit" class="btn btn-primary" id= "submit">입력</button>
  <button type="reset" class="btn btn-primary reset">초기화</button>

</form>
<!-- </body>
<script>
$(function(){
	$("document").ready(function(){
		$("#submit").click(function(e) {
		var code = document.getElementById("exampleInputcode1").value;
			if(code.length !== 4){
				alert("코드번호는 4자리만 입력가능합니다.");
				e.preventDefault();
			}
		})
	})
 });
</script>
</html> -->