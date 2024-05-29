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
	<title>상품 등록</title>
	<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bulma@0.9.3/css/bulma.min.css">
    <script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
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
			    <li><a href="${kpath }/product/ProductList.do">List</a></li>
			    <li class="is-active"><a href="#" aria-current="page">Write</a></li>
			  </ul>
			</nav>
    	</div>
 	    <section class="page" id="page1">
    		<h2 class="page-title">상품 등록</h2>
    		<div class="page-wrap">
	    		<div class="clr-fix">
	    			<br>
					<form action="${kpath }/product/insProductPro.do" method="post" enctype="multipart/form-data">
						<table class="table">
							<tbody>
								<tr>
									<th><label for="cate">카테고리</label></th>
									<td>
										<select name="cate" id="cate" required>
											<option value="" >선택안함</option>
											<option value="seng">장수막걸리</option> 
											<option value="korea">국내산 장수생막걸리</option> 
											<option value="life">인생막걸리</option> 
											<option value="rice">월매쌀막걸리</option> 
											<option value="moon">달빛유자</option> 
											<option value="ginseng">장홍삼 장수막걸리</option> 
										</select>
									</td>
								</tr>								
								<tr>
									<th><label for="pname">상품명</label></th>
									<td>
										<input type="text" name="pname" id="pname" class="input" maxlength="100" required>
									</td>
								</tr>
								<tr>
									<th><label for="com">상품 설명</label></th>
									<td>
										<textarea name="com" id="com" rows="8" cols="80" maxlength="980" class="textarea"></textarea>
									</td>
								</tr>
								<tr>
									<th><label for="com">가격</label></th>
									<td>
										<input type="number" min="0" step="100" value="500" name="price" id="price" class="input" />
									</td>
								</tr>
								<tr>
									<th><label for="img">상품 메인이미지</label></th>
									<td>
										<input type="file" name="img" id="img" accept="image/*" required/>
									</td>
								</tr>
								<tr>
									<th><label for="img">상품 상세 이미지</label></th>
									<td>
										<input type="file" name="img2" id="img2" accept="image/*" required/>
									</td>
								</tr>
								<tr>
									<th><label for="img">상품 썸네일 이미지</label></th>
									<td>
										<input type="file" name="img3" id="img3" accept="image/*" required/>
									</td>
								</tr>
							</tbody>
						</table>
						<hr>
						<div class="buttons">
						  <button type="submit" class="button is-danger">상품 등록</button>
						  <a href="${kpath }/product/productList.do" class="button is-primary">상품 목록</a>
						</div>
					</form>
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