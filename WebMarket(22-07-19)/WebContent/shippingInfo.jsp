<%@ page contentType="text/html; charset=utf-8"%>

<html>
<head>
<link rel="stylesheet" href="./resources/bootstrap.min.css" />
<title> 배송정보 </title>
</head>
<body>
	<jsp:include page="menu.jsp" />
	<div class="jumbotron">
		<div class="container">
			<h1 class="display-3"> 배송정보 </h1>
		</div>
	</div>
	<div class="container">
		<from action="./processShippingInfo.jsp" class="form-horizontal" method="post"> //입력 양식에 입력된 데이터를 서버로 전송하여 폼 데이터를 처리하도록 form 태그의 action 속성 값, method 방식을 작성(16~56)
			<input type="hidden" name="cartId" value="<%=request.getParameter("cartId")%>" /> //input의 속성 값을 hidden으로 작성. name의 속성 값을 cartId로 작성. value의 속성 값은 getParameter()메소드를 사용해 cartId를 전송받도록 작성.
			<div class="form-group row">
				<label class="col-sm-2"> 성명 </label>
				<div class="col-sm-3">
					<input name="name" type="text" class="form-control" /> //값을 입력받도록 input 태그의 type 속성 값을 text로 작성(21,27,33,39,45)
				</div>
			</div>
			<div class="form-group row">
				<label class="col-sm-2"> 배송일 </label>
				<div class="col-sm-3">
					<input name="shippingDate" type="text" class="form-control" /> (yyyy/mm/dd)
				</div>
			</div>
			<div class="form-group row">
				<label class="col-sm-2"> 국가명 </label>
				<div class="col-sm-3">
					<input name="country" type="text" class="form-control" />
				</div>
			</div>
			<div class="form-group row">
				<label class="col-sm-2"> 우편번호 </label>
				<div class="col-sm-3">
					<input name="zipCode" type="text" class="form-control" />
				</div>
			</div>
			<div class="form-group row">
				<label class="col-sm-2"> 주소 </label>
				<div class="col-sm-5">
					<input name="addressName" type="text" class="form-control" />
				</div>
			</div>
			<div class="form-group row">
				<div class="col-sm-offset-2 col-sm-10 ">
					<a href="./cart.jsp?cartId=<%=request.getParameter("cartId")%>"
						class="btn btn-secondary" role="button"> 이전 </a>
					<input type="submit" class="btn btn-primary" value="등록" />
					<a href="./checkOutCancelled.jsp" class="btn btn-secondary" role="button"> 취소 </a>
				</div>
			</div>
		</from>
	</div>
</body>
</html>