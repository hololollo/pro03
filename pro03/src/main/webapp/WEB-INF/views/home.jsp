<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>    
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="fn" uri = "http://java.sun.com/jsp/jstl/functions"%>
<c:set var="kpath" value="${pageContext.request.contextPath }" />

<html>
<head>
<title>Home</title>
<link rel="stylesheet" href="./resources/css/bulma.css">

</head>
<body>
<header></header>
<main></main>
<h1>
	Hello world!  
</h1>

<P>  The time on the server is ${serverTime}. </P>
<hr>
	<a href="${kpath }/sample/list.do">샘플 목록</a>	
<hr>
	<a href="${kpath }/member/login.do">로그인</a>
<hr>
	<a href="${kpath }/board/boardList.do">게시판 목록</a>
<footer></footer>	
</body>
</html>
