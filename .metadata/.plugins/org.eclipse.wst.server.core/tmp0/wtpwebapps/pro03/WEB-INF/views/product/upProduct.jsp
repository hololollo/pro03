<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %> 
<c:set var="kpath" value="<%=request.getContextPath() %>" />    
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
    <title>상품정보 수정</title>
    <script src="https://code.jquery.com/jquery-latest.js"></script>
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bulma@0.9.3/css/bulma.min.css">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/foundation/6.4.3/css/foundation.min.css">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/motion-ui/1.2.3/motion-ui.min.css">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/foundation/6.4.3/css/foundation-prototype.min.css">
    <link href='https://cdnjs.cloudflare.com/ajax/libs/foundicons/3.0.0/foundation-icons.css' rel='stylesheet' type='text/css'>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/foundation/6.4.3/js/foundation.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/motion-ui/1.2.3/motion-ui.min.js"></script>
<style>
	#header { height:100px;}
</style>
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
			    <li><a href="${kpath }/product/productList.do">상품</a></li>
			    <li class="is-active"><a href="#" aria-current="page">상품 정보 수정</a></li>
			  </ul>
			</nav>
    	</div>
 	    <section class="page" id="page1">
    		<h2 class="page-title">상품 정보 수정</h2>
    		<div class="page-wrap">
	    		<div class="clr-fix">
	    			<br>
					<form action="${kpath }/product/upProductPro.do" method="post" enctype="multipart/form-data">
						<table class="table">
							<tbody>
								<tr>
									<th><label for="cate">카테고리</label></th>
									<td>
                                        <select name="cate" id="cate" required>
                                            <option value="">선택 안함</option>
                                            <option value="seng" ${product.cate == 'seng' ? 'selected' : ''}>장수막걸리</option>
                                            <option value="korea" ${product.cate == 'korea' ? 'selected' : ''}>국내산 장수생막걸리</option>
                                            <option value="life" ${product.cate == 'life' ? 'selected' : ''}>인생막걸리</option>
                                            <option value="rice" ${product.cate == 'rice' ? 'selected' : ''}>월매쌀막걸리</option>
                                            <option value="moon" ${product.cate == 'moon' ? 'selected' : ''}>달빛유자</option>
                                            <option value="ginseng" ${product.cate == 'ginseng' ? 'selected' : ''}>장홍삼 장수막걸리</option>
                                        </select>
									</td>
								</tr>
								<tr>
									<th><label for="pname">상품명</label></th>
									<td>
										<input type="hidden" name="pno" id="pno" value="${product.pno }" readonly>
										<input type="text" name="pname" id="pname" class="input" maxlength="100" value="${product.pname }" required>
									</td>
								</tr>
								<tr>
									<th><label for="com">상품 설명</label></th>
									<td>
										<textarea name="com" id="com" rows="8" cols="80" maxlength="980" class="textarea">${product.com }</textarea>
									</td>
								</tr>
								<tr>
									<th><label for="com">가격</label></th>
									<td>
										<input type="number" min="0" step="100" value="${product.price }" name="price" id="price" class="input" />
									</td>
								</tr>
								<tr>
									<th><label for="img">상품 메인이미지</label></th>
									<td>
										<input type="file" name="img" id="img" accept="image/*" value="${product.img }" />
										<br>현재 이미지: <img src="${kpath}/resources/upload/${product.img}" width="100">
									</td>
								</tr>
								<tr>
									<th><label for="img">상품 상세 이미지</label></th>
									<td>
										<input type="file" name="img2" id="img2" accept="image/*" value="${product.img2 }"/>
										<br>현재 이미지: <img src="${kpath}/resources/upload/${product.img2}" width="100">
									</td>
								</tr>
								<tr>
									<th><label for="img">상품 썸네일 이미지</label></th>
									<td>
										<input type="file" name="img3" id="img3" accept="image/*" value="${product.img3 }" />
										<br>현재 이미지: <img src="${kpath}/resources/upload/${product.img3}" width="100">
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