<%@ page language="java" contentType="text/html charset=UTF8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
<c:set var="path2" value="${pageContext.servletContext.contextPath }" />
<!DOCTYPE html>
<html lang="ko">
<head>
	<meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
	<title>자료실 목록</title>
	<jsp:include page="../include/head.jsp"></jsp:include>
</head>
<body>
<div class="full-wrap">
    <!-- 헤더 부분 인클루드 -->
    <header>
    <div>
    	<jsp:include page="../include/header.jsp"></jsp:include>
    </div>
    </header>
    <main id="contents" class="contents">
    	<div id="breadcrumb" class="container breadcrumb-wrap clr-fix" style="height:60px; line-height:60px;">
	    	<nav class="breadcrumb" aria-label="breadcrumbs">
			  <ul>
			    <li><a href="${path2 }">Home</a></li>
			    <li class="is-active"><span>자료실</span></li>
			    <li class="is-active"><a href="#" aria-current="page">목록</a></li>
			  </ul>
			</nav>
    	</div>
 	    <section class="page" id="page1">
    		<h2 class="page-title">자료실 목록</h2>
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
							<c:if test="${not empty list }">
								<c:forEach var="dto" items="${list }">
								<tr>
									<td>${dto.no }</td>
									<td>
 										<c:if test="${empty sid }">
										<strong>${dto.title }</strong>
										</c:if>
										<c:if test="${not empty sid }">
										<a href="${kpath }/fileboard/detail.do?no=${dto.no }&pageNo=${pageNo}">${dto.title }</a>
										</c:if>
									</td>
									<td>${dto.resdate }</td><td>${dto.hits }</td>
								</tr>
								</c:forEach>
							</c:if>
							<c:if test="${empty list }">
								<tr>
									<td colspan="4"><strong>자료실 글이 존재하지 않습니다.</strong></td>
								</tr>
							</c:if>
							<c:if test="${totalPage gt 1}">
								<fmt:parseNumber var="pno" value="${pageNo }" />
								<tr>
									<td colspan="4">
										<c:forEach var="i" begin="1" end="${totalPage}">
											<c:if test="${i eq pno }">
											&nbsp;<strong style="color:orange;">${i }</strong>&nbsp;
											</c:if>
											<c:if test="${!(i eq pno) }">
											<c:set var="tno" value="${i+'' }" /> 
											&nbsp;<a href="${path2 }/fileboard/list.do?pageNo=${tno }">[${i }]</a>&nbsp;
											</c:if>
										</c:forEach>
									</td>
								</tr>
							</c:if>
						</tbody>
					</table>
					<hr>
					<c:if test="${sid.equals('admin') }">
					<div class="buttons">
					  <a href="${path2 }/admin/insertFileboard.do" class="button is-danger">글 등록</a>
					</div>
					</c:if>
				</div>
    		</div>
    	</section>
    </main>
    <!-- 푸터 부분 인클루드 -->
    <footer>
    	<jsp:include page="../include/footer.jsp"></jsp:include>
    </footer>
    <script>
    $(document).ready(function(){
    	$("#tb1_length, #tb1_filter").css("margin-bottom", "20px");
    });
    </script>
</div>    
</body>
</html>