<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %> 
<c:set var="kpath" value="<%=request.getContextPath() %>" />    
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
    <title>게시판 목록</title>
    <script src="https://code.jquery.com/jquery-latest.js"></script>
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bulma@0.9.3/css/bulma.min.css">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/foundation/6.4.3/css/foundation.min.css">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/motion-ui/1.2.3/motion-ui.min.css">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/foundation/6.4.3/css/foundation-prototype.min.css">
    <link href='https://cdnjs.cloudflare.com/ajax/libs/foundicons/3.0.0/foundation-icons.css' rel='stylesheet' type='text/css'>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/foundation/6.4.3/js/foundation.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/motion-ui/1.2.3/motion-ui.min.js"></script>
<style>
	/* 본문 내용 스타일 */
.contents {
    padding: 20px;
}

/* 페이지 타이틀 스타일 */
.page_title {
    text-align: center;
    margin-bottom: 20px;
}

/* 테이블 스타일 */
.table {
    width: 100%;
    border-collapse: collapse;
}

.table th, .table td {
    padding: 10px;
    border: 1px solid #ccc;
}

/* 테이블 헤더 스타일 */
.table th {
    background-color: #f4f4f4;
    text-align: center;
}

/* 테이블 내용 스타일 */
.table td {
    text-align: center;
}

/* 버튼 스타일 */
.buttons {
    margin-top: 20px;
    text-align: right;
}

.buttons .button {
    margin-right: 10px;
}

/* 푸터 스타일 */
footer {
    position: fixed;
    left: 0;
    bottom: 0;
    width: 100%;
    background-color: #f4f4f4;
    padding: 20px;
    text-align: center;
}
</style>
</head>
<body>
<header>
    <jsp:include page="../include/header.jsp" />
</header>
    <main id="contents" class="contents">
    	<div id="breadcrumb" class="container breadcrumb-wrap clr-fix">
	    	<nav class="breadcrumb" aria-label="breadcrumbs">
			  <ul>
			    <li><a href="${kpath }">Home</a></li>
			    <li><a href="${kpath }/product/productList.do">상품</a></li>
			    <li class="is-active"><a href="#" aria-current="page">목록</a></li>
			  </ul>
			</nav>
    	</div>
	<section class="page" id="page1">
		<div style="width:1400px; margin:0 auto;">
			<h3 class="page_title">게시판 목록</h3>
			<div>
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
						<c:if test="${not empty boardList }">
							<c:forEach var="dto" items="${boardList }">
							<tr>
								<td>${dto.bno }</td>
								<td>
									<c:if test="${empty mem }">
									<strong>${dto.title }</strong>
									</c:if>
									<c:if test="${not empty mem }">
									<a href="${kpath }/getBoard.do?bno=${dto.bno }">${dto.title }</a>
									</c:if>
								</td>
								<td>${dto.resdate }</td><td>${dto.visited }</td>
							</tr>
							</c:forEach>
						</c:if>
						<c:if test="${empty boardList }">
							<tr>
								<td colspan="4"><strong>공지사항이 존재하지 않습니다.</strong></td>
							</tr>
						</c:if>
					</tbody>
				</table>
				<div class="buttons">
				<a href="${kpath }" class="button is-link">메인으로</a>
				<script>
				$(document).ready(function(){
					$("#tb1").DataTable({
						order:[[0,"desc"]]
					});
				});
				</script>
				<hr>
				<c:if test="${sid.equals('admin') }">
				  <a href="${kpath }/board/insBoard.do" class="button is-success">글 등록</a>
				</c:if>
				</div>
			</div>
		</div>
	</section>
</main>
<footer>
	  <jsp:include page="../include/footer.jsp" />
</footer>
</body>
</html>