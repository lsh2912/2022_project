<%@ page contentType = "text/html; charset=utf-8" %> <%-- 한글로 출력 --%>
<%@ page import="java.util.Date"%> <%-- Date 패키지 사용을 위해 정의 --%>
<html>
<head>
<link rel = "stylesheet"
	href = "https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css">
	<%-- 부트스트랩 제공 스타일시트를 시작 페이지에 적용 --%>
<title>Welcome</title>
</head>
<body>
	<%@ include file = "menu.jsp" %>
	<%! String greeting = "Web Market"; 
	String tagline = "어서오세요. 상단의 버튼으로 상품을 확인하세요."; %> <%-- 문자열 저장을 위한 전역변수 선언 --%>
	
	<div class = "jumbotron"> <%-- 제목 표현 --%>
		<div class = "container">
			<h1 class = "display-3">
				<%= greeting %> <%-- 변수값 출력 --%>
			</h1>
		</div>
	</div>
	<div class = "container"> <%-- 본문 표현 --%>
		<div class = "text-center">
			<h3>
				<%= tagline %> <%-- 변수값 출력 --%>
			</h3>
			
			<%-- 현재 시각을 출력 --%>
			<%
				Date day = new java.util.Date(); //현재 날짜와 시각을 얻어오기 위해 인스턴스 day 생성
				String am_pm;
				int hour = day.getHours(); //Date 클래스로 시간을 얻어옴
				int minute = day.getMinutes(); //Date 클래스로 분을 얻어옴
				int second = day.getSeconds(); //Date 클래스로 초를 얻어옴
				if (hour / 12 == 0) { // 현재 시각이 12 이하이면 AM
					am_pm = "AM"; }
				else { // 현재 시각이 12 초과이면 AM
					am_pm = "PM";
					hour = hour - 12;
				}
				String CT = hour + ":" + minute + ":" + second + " " + am_pm; //시분초 출력
				out.println("현재 접속 시각 : " + CT + "\n"); // 현재 접속 시간 출력
				
			%>
				
		</div>
		<hr>
	</div>
	<%@ include file = "footer.jsp" %>
</body>
</html>