<%@ page contentType="text/html; charset=utf-8"%>
<%@ page import = "java.sql.*"%>
<%
	Connection conn = null; //객체 초기화
	
	try {
		String url = "jdbc:mysql://localhost:3306/WebDB";
		String user = "root";
		String password = "8053";
		//url 계정 비밀번로 작성
		Class.forName("com.mysql.jdbc.Driver");
		conn = DriverManager.getConnection(url, user, password);
	}	catch (SQLException ex) {
			out.println("데이터베이스 연결 실패");
			out.println("SQLExption: " + ex.getMessage());
	}
%>