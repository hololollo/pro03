<%@ page language="java" contentType="text/html; charset=UTF8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
<c:set var="kpath" value="${pageContext.servletContext.contextPath }" />
<!DOCTYPE html>
<html lang="ko">
<head>
	<meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
	<title>자유게시판 목록</title>
	<script src="https://code.jquery.com/jquery-latest.js"></script>
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bulma@0.9.3/css/bulma.min.css">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/foundation/6.4.3/css/foundation.min.css">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/motion-ui/1.2.3/motion-ui.min.css">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/foundation/6.4.3/css/foundation-prototype.min.css">
    <link href='https://cdnjs.cloudflare.com/ajax/libs/foundicons/3.0.0/foundation-icons.css' rel='stylesheet' type='text/css'>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/foundation/6.4.3/js/foundation.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/motion-ui/1.2.3/motion-ui.min.js"></script>
</head>
<body>
<div class="full-wrap">
    <!-- 헤더 부분 인클루드 -->
<header>
    <jsp:include page="../include/header.jsp" />
</header>
    <main id="contents" class="contents">
    	<div id="breadcrumb" class="container breadcrumb-wrap clr-fix" style="height:60px; line-height:60px;">
	    	<nav class="breadcrumb" aria-label="breadcrumbs">
			  <ul>
			    <li><a href="${kpath }">Home</a></li>
			    <li class="is-active"><a href="#" aria-current="page">List</a></li>
			  </ul>
			</nav>
    	</div>
 	    <section class="page" id="page1">
    		<h2 class="page-title">자유게시판 목록</h2>
    		<div class="page-wrap">
	    		<div class="clr-fix">
	    			<br>
					<table class="table" id="tb1">
						<thead>
							<tr>
								<th class="item1">번호</th>
								<th class="item2">제목</th>
								<th class="item3">작성일</th>
								<th class="item4">조회수</th>
							</tr>
						</thead>
						<tbody>
							<c:if test="${not empty freeList }">
								<c:forEach var="dto" items="${freeList }">
								<tr>
									<td>${dto.no }</td>
									<td>
	 									<c:if test="${empty sid }">
										<strong>${dto.title }</strong>
										</c:if>
										<c:if test="${not empty sid }">
										<a href="${kpath }/free/getFree.do?no=${dto.no }">${dto.title }</a>
										</c:if>   
									</td>
									<td>${dto.resdate }</td><td>${dto.hits }</td>
								</tr>
								</c:forEach>
							</c:if>
							<c:if test="${empty freeList }">
								<tr>
									<td colspan="4"><strong>자유게시판 글이 존재하지 않습니다.</strong></td>
								</tr>
							</c:if>
						</tbody>
					</table>
					<script>
					$(document).ready(function(){
						$("#tb1").DataTable({
							order:[[0,"desc"]]
						});
					});
					</script>
					<hr>
					<c:if test="${not empty sid }">
					<div class="buttons">
					  <a href="${kpath }/free/insFree.do" class="button is-success">글 등록</a>
					</div>
					</c:if>
				</div>
    		</div>
    	</section>
    </main>
    <!-- 푸터 부분 인클루드 -->
    <footer>
    	<jsp:include page="../include/footer.jsp"/>
    </footer>
    <script>
    $(document).ready(function(){
    	$("#tb1_length, #tb1_filter").css("margin-bottom", "20px");
    });
    </script>
</div>    
</body>
</html>