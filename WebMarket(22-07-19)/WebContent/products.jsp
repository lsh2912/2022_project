<%@ page contentType = "text/html; charset=utf-8" %> <%-- 한글로 출력 --%>
<%@ page import = "java.sql.*"%>
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
	<div class = "container">
		<div class = "row" align = "center">
			<%@ include file = "dbconn.jsp" %>
			<%
				PreparedStatement pstmt = null;
				ResultSet rs = null;
				String sql = "select * from product";
				pstmt = conn.prepareStatement(sql);
				rs = pstmt.executeQuery();
				while (rs.next()) {
			%>
			<div class = "col-md-4">
				<h3><%= rs.getString("p_name") %></h3>
				<p><%= rs.getString("p_description") %>
				<p><%=rs.getString("p_UnitPrice")%>원
				<p>
					<a href="./product.jsp?id=<%=rs.getString("p_id")%>"
					class="btn btn-secondary" role="button">상세정보 &raquo;></a>
			</div>
			<%
				} //빈복문 닫음
			%>
		if (rs != null)
			rs.close();
		if (pstmt != null)
			pstmt.close();
		</div>
		<hr>
	</div>
	<jsp:include page = "footer.jsp" /> <%-- 바닥글 추력 --%>
</body>
</html>

