<%@ page contentType = "text/html; charset=utf-8" %> <%-- 한글로 출력 --%>
<%@ page import = "java.util.ArrayList"%> <%-- arraylist 패티지 사용 --%>
<%@ page import = "dto.Product"%> <%-- dto 패키지 사용 --%>
<%@ page import = "dao.ProductRepository" %>
<html>
<head>
<link rel = "stylesheet"
	href = "https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css">
<title>상품 목록</title>
</head>
<body>
	<jsp:include page = "menu.jsp" /> <%-- menu 파일 불러옴 --%>
	<div class = "jumbotron">
		<div class = "container">
			<h1 class = "display-3">상품 목록</h1>
		</div>
	</div>
	<%
		ProductRepository dao = ProductRepository.getInstance();
		ArrayList<Product> listOfProducts = dao.getAllProducts();
	%>
	<div class = "container">
		<div class = "row" align = "center">
			<%
				for (int i=0; i<listOfProducts.size(); i++) { //저장된 상품의 목록 개수만큼 반복
					Product product = listOfProducts.get(i); //Product 타입의 객체 product에 저장
			%>
			<div class = "col-md-4">
				<h3><%=product.getPname()%></h3> <%-- Product 타입의 객체 product에 저장된 것을 출력 --%>
				<p><%=product.getDescription()%>
				<p><%=product.getUnitPrice()%>원
				<p><a href="./product.jsp?id=<%=product.getProductId()%>"
				class="btn btn-secondary" role="button">상세정보 &raquo;></a>
				
			</div>
			<%
				} //빈복문 닫음
			%>
		</div>
		<hr>
	</div>
	<jsp:include page = "footer.jsp" /> <%-- 바닥글 추력 --%>
</body>
</html>

