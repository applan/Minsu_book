<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">
<script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js" integrity="sha384-UO2eT0CpHqdSJQ6hJty5KVphtPhzWj9WO1clHTMGa3JDZwrnQq4sF86dIHNDz0W1" crossorigin="anonymous"></script>
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js" integrity="sha384-JjSmVgyd0p3pXB1rRibZUAYoIIy6OrQ6VrjIEaFf/nJGzIxFDsf4x0xIM+B07jRM" crossorigin="anonymous"></script>
<title>Insert title here</title>
</head>
<body>
<h4>검색할 도서정보를 입력해 주세요</h4>
<form action="search" method="post">
	<div class="form-row">
		<div class="form-group col-md-6">
          <select name="criteria" id="" class="form-control form-control-lg">
           <option value="code">코  드</option>
           <option value="writer">작  가</option>
          </select>
		</div>
		<div class="form-group col-md-6">
			<input type="text" name="keyword" class="form-control form-control-lg" required="required" placeholder="검색정보입력"/>
		</div>
	</div>
	<div class="form-row">
		<div class="form-group col-md-6">
			<button type="submit" class="btn btn-primary">검색</button>
			<button type="reset" class="btn btn-secondary">취소</button>	
		</div>
	</div>
</form>
</body>
</html>
