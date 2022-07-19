<%@ page contentType="text/html; charset=utf-8"%>
<%@ page import="java.net.URLEncoder"%>
<%
	request.setCharacterEncoding("UTF-8"); //문자 인코딩 유형을 utf-8로 설정하도록 request 내장 객체의 setCharacterEncoding() 메소드를 작성

	Cookie cartId = new Cookie("Shipping_cartId", URLEncoder.encode(request.getParameter("cartId"), "utf-8")); //request 내장 객체의 getParameter() 메소드를 작성 후 이를 쿠키로 생성하도록 Cookie 클래스를 이용(6~11)
	Cookie name = new Cookie("Shipping_name", URLEncoder.encode(request.getParameter("name"), "utf-8"));
	Cookie shippingDate = new Cookie("Shipping_shippingDate", URLEncoder.encode(request.getParameter("shippingDate"), "utf-8"));
	Cookie country = new Cookie("Shipping_country", URLEncoder.encode(request.getParameter("country"), "utf-8"));
	Cookie zipCode = new Cookie("Shipping_zipCode", URLEncoder.encode(request.getParameter("zipCode"), "utf-8"));
	Cookie addressName = new Cookie("Shipping_addressName", URLEncoder.encode(request.getParameter("addressName"), "utf-8"));

	cartId.setMaxAge(24*60*60); //생성한 쿠키의 유효기간을 24시간으로 설정(13~17)
	name.setMaxAge(24*60*60);
	zipCode.setMaxAge(24*60*60);
	country.setMaxAge(24*60*60);
	addressName.setMaxAge(24*60*60);

	response.addCookie(cartId); //쿠키를 등록하도록 response 내장 객체의 addCookie() 메소드를 작성(19~24)
	response.addCookie(name);
	response.addCookie(shippingDate);
	response.addCookie(country);
	response.addCookie(zipCode);
	response.addCookie(addressName);

	response.sendRedirect("orderConfirmation.jsp"); //주문 정보 페이지로 이동하도록 response 내장 객체의 sendRedirect() 메소드를 작성
%>