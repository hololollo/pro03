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
	<title>구매 목록</title>
	<jsp:include page="../include/head.jsp"></jsp:include>
</head>
<body>
<div class="full-wrap">
    <!-- 헤더 부분 인클루드 -->
    <header id="hd">
    	<div class="container">
    		<jsp:include page="../include/header.jsp"></jsp:include>
    	</div>
    </header>
    <main id="contents" class="contents">
    	<div id="breadcrumb" class="container breadcrumb-wrap clr-fix" style="height:60px; line-height:60px;">
	    	<nav class="breadcrumb" aria-label="breadcrumbs">
			  <ul>
			    <li><a href="${kpath }">Home</a></li>
			    <li><a href="${kpath }/sales/salesList.do">구매</a></li>
			    <li class="is-active"><a href="#" aria-current="page">목록</a></li>
			  </ul>
			</nav>
    	</div>
 	    <section class="page" id="page1">
    		<h2 class="page-title">구매 목록</h2>
    		<div class="page-wrap">
	    		<div class="clr-fix">
	    			<br>
					<table class="table" id="tb1">
						<thead>
							<tr>
								<th class="item1">번호</th>
								<th class="item2">상품내역</th>
								<th class="item3">거래일시</th>
								<th class="item4">결제내역</th>
							</tr>
						</thead>
						<tbody>
							<c:if test="${not empty salesList }">
								<c:forEach var="dto" items="${salesList }" varStatus="status">
								<tr>
									<td>${fn:length(salesList) - status.index }</td>
									<td>
										<a href="${kpath }/sales/sales.do?sno=${dto.sno }" title="">
											<strong>${dto.pname }</strong>
										</a><br>
										<img src="${kpath }/resources/upload/${dto.img3 }" alt="${dto.pname }" width="120" />
									</td>
									<td>${dto.resdate }</td>
									<td>
										<strong>구매 수량 : ${dto.amount }</strong><br>
										<strong>결제 금액 : ${dto.tot }</strong><br>
										<strong>결제 내용 : ${dto.paynum }</strong><br>
									</td>
								</tr>
								</c:forEach>
							</c:if>
							<c:if test="${empty salesList }">
								<tr>
									<td colspan="4"><strong>구매내역이 존재하지 않습니다.</strong></td>
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
					<c:if test="${sid }.equals('admin') }">
					<div class="buttons">
					  <a href="${path2 }/admin/insertBoard.do" class="button is-danger">글 등록</a>
					</div>
					</c:if>
				</div>
    		</div>
    	</section>
    </main>
    <!-- 푸터 부분 인클루드 -->
    <footer id="ft">
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