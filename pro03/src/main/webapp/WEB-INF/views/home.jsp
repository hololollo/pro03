<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>    
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="fn" uri = "http://java.sun.com/jsp/jstl/functions"%>
<c:set var="kpath" value="${pageContext.request.contextPath }" />

<html>
<head>
<title>Home</title>
<link rel="stylesheet" href="${kpath }/resources/css/bulma.css">
<link rel="stylesheet" href="${kpath }/resources/css/common.css">
<style>
	html, body{
		overflow-y: hidden;
	}
	main{
		height:300px;
		
	}
</style>
</head>
<body>
<header>
	<jsp:include page="./include/header.jsp"></jsp:include>
</header>
<main>
<h1>
	Hello world!  
</h1>

<P>  The time on the server is ${serverTime}. </P>
<hr>
	<a href="${kpath }/sample/list.do">샘플 목록</a>	
<hr>
	<a href="${kpath }/board/boardList.do">게시판 목록</a>
<hr>
	<a href="${kpath }/fileupload/main">파일 업로드 실습</a>
</main>
<footer>
	<jsp:include page="./include/footer.jsp"></jsp:include>
</footer>	
</body>
</html>
