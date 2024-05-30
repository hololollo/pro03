<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>    
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="fn" uri = "http://java.sun.com/jsp/jstl/functions"%>
<c:set var="kpath" value="${pageContext.request.contextPath }" />
<!DOCTYPE html>
<html lang="ko">
<head>
	<meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
	<title>MAIN</title>
    <jsp:include page="./include/head.jsp"></jsp:include>
</head>
<body>
	<div class="full-wrap">
	<header id="hd" class="header">
    	<div class="container">
			<jsp:include page="./include/header.jsp"></jsp:include>
		</div>
	</header>
	<main class="contents" id="contents">
		<section class="page clr-fix" id="page1">
			<div class="page-wrap">
				
			</div>
		</section>	
	</main>
<main>
</main>
	<footer id="ft">
		<jsp:include page="./include/footer.jsp"></jsp:include>
	</footer>
</div>
</body>
</html>
