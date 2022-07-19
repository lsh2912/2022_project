<%@ page contentType="text/html; charset=utf-8"%>
<%@ page import="java.util.ArrayList"%>
<%@ page import="java.net.URLDecoder"%>
<%@ page import="dto.Product"%>
<%@ page import="dao.ProductRepository"%>

<%
	request.setCharacterEncoding("UTF-8");

	String cartId = session.getId(); //고유한 세션 내장 객체의 아이디를 가져오도록 session 내장 객체의 getId() 메소드를 작성

	String shipping_cartId = "";
	String shipping_name = "";
	String shipping_shippingDate = "";
	String shipping_country = "";
	String shipping_zipCode = "";
	String shipping_addressName = "";

	Cookie[] cookies = request.getCookies(); //쿠키 객체를 얻어와 여러 쿠키 정보를 얻어오도록 Cookie 객체의 getValue() 메소드를 작성(19~38)

	if (cookies != null) {
		for (int i = 0; i < cookies.length; i++) {
			Cookie thisCookie = cookies[i];
			String n = thisCookie.getName();
			if (n.equals("Shipping_cartId"))
				shipping_cartId = URLDecoder.decode((thisCookie.getValue()), "utf-8");
			if (n.equals("Shipping_name"))
				shipping_name = URLDecoder.decode((thisCookie.getValue()), "utf-8");
			if (n.equals("Shipping_shippingDate"))
				shipping_shippingDate = URLDecoder.decode((thisCookie.getValue()), "utf-8");
			if (n.equals("Shipping_country"))
				shipping_country = URLDecoder.decode((thisCookie.getValue()), "utf-8");
			if (n.equals("Shipping_zipCode"))
				shipping_zipCode = URLDecoder.decode((thisCookie.getValue()), "utf-8");
			if (n.equals("Shipping_addressName"))
				shipping_addressName = URLDecoder.decode((thisCookie.getValue()), "utf-8");
		}
	}
%>
<html>
<head>
<link rel="stylesheet" href="./resources/css/bootstrap.min.css" />
<title> 주문정보 </title>
</head>
<body>
	<jsp:include page="menu.jsp" />
	<div class="jumbotron">
		<div class="container">
			<h1 class="display-3"> 주문정보 </h1>
		</div>
	</div>

	<div class="container col-8 alert alert-info">
		<div class="text-center ">
			<h1> 영수증 </h1>
		</div>
		<div class="row justify-content-between"> //얻어온 쿠키 정보 중에서 성명, 우편번호, 주소, 배송일을 출력하도록 작성(57~66)
			<div class="col-4" align="left">
				<strong> 배송주소 </strong> <br> 성명 : <% out.println(shipping_name); %> <br>
				우편번호 : <% out.println(shipping_zipCode);%> <br>
				주소 : <% out.println(shipping_addressName);%> (<% out.println(shipping_country);%>) <br>
			</div>
			<div class="col-4" align="right">
				<p> <em> 배송일 : <% out.println(shipping_shippingDate);%> </em>
			</div>
		</div>
		<div>
			<table class="table table-hover">
			<tr>
				<th class="text-center"> 도서 </th>
				<th class="text-center"> # </th>
				<th class="text-center"> 가격 </th>
				<th class="text-center"> 소계 </th>
			</tr>
			<%
				int sum = 0; //세션에 저장된 장바구니 정보를 얻어오도록 session 내장 객체의 getAttribute() 메소드를 작성. 장바구니에서 저장된 모든 상품 목록을 하나씩 가져와 출력하도록 작성(76~92)
				ArrayList<Product> cartList = (ArrayList<Product>) session.getAttribute("cartlist");
				if (cartList == null)
					cartList = new ArrayList<Product>();
				for (int i = 0; i < cartList.size(); i++) { //상품 리스트 하나씩 출력
					Product product = cartList.get(i);
					int total = product.getUnitPrice() * product.getQuantity();
					sum = sum + total;
			%>
			<tr>
				<td class="text-center"> <em> <%=product.getPname()%> </em> </td>
				<td class="text-center"> <%=product.getQuantity()%> </td>
				<td class="text-center"> <%=product.getUnitPrice()%> 원 </td>
				<td class="text-center"> <%=total%> 원 </td>
			</tr>
			<%
				}
			%>
			<tr>
				<td> </td>
				<td> </td>
				<td class="text-right"> <strong> 총액 : </strong> </td> //83행의 장바구니에 저장된 모든 상품 목록의 총액을 산출하여 출력(97,98)
				<td class="text-center text-danget"> <strong> <%=sum%> </strong> </td>
			</tr>
			</table>

			<a href="./shippingInfo.jsp?cartId=<%=shipping_cartId%>" class="btn btn-secondary" role="button"> 이전 </a> 
			<a href="./thankCustomer.jsp" class="btn btn-success" role="button"> 주문완료 </a>
			<a href="./checkOutCancelled.jsp" class="btn btn-secondary" role="button"> 취소 </a>
		</div>
	</div>
</body>
</html>