<%@ page language="java" contentType="text/html charset=UTF8" pageEncoding="UTF-8"%>
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
	<title>구매하기</title>
	<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bulma@0.9.3/css/bulma.min.css">
    <script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
	<script src="${kpath}/resources/js/ckeditor/ckeditor.js"></script>
</head>
<body>
<div class="full-wrap">
    <!-- 헤더 부분 인클루드 -->
    <header>
    	<jsp:include page="../include/header.jsp"></jsp:include>
    </header>
    <main id="contents" class="contents">
    	<div id="breadcrumb" class="container breadcrumb-wrap clr-fix" style="height:60px; line-height:60px;">
	    	<nav class="breadcrumb" aria-label="breadcrumbs">
			  <ul>
			    <li><a href="${kpath }">Home</a></li>
			    <li><a href="${kpath }/product/productList.do">상품</a></li>
			    <li class="is-active"><a href="#" aria-current="page">구매</a></li>
			  </ul>
			</nav>
    	</div>
 	    <section class="page" id="page1">
    		<h2 class="page-title">상품 구매</h2>
    		<div class="page-wrap">
	    		<div class="clr-fix">
	    			<br>
					<form action="${kpath }/sales/insSalesPro.do" method="post">
						<table class="table">
							<tbody>
								<tr>
									<th><h3>제품 정보</h3></th>
									<td>
										<div class="item_fr">
											<input type="hidden" name="pno" id="pno" value="${product.pno }" />
											<input type="hidden" name="id" id="id" value="${sid }" />
											<h4>제품명 : ${product.pname }</h4>
											<img src="${path2 }/resources/upload/${product.img }" alt="${product.pname }" width="120" />
											<br>
											<h4>제품 설명</h4>
											<p>${product.com }</p>
										</div>
									</td>
								</tr>
								<tr>
									<th><h3>구매 정보</h3></th>
									<td>
										<div class="item_fr">
											<strong>단가 </strong> : 
												<input type="number" id="price" value="${inventory.oprice }" class="input" readonly />
											<strong>수량 </strong> : 
											<c:if test="${inventory.amount gt 0}">
												<input type="number" name="amount" id="amount" min="1" max="${inventory.amount }" step="1" class="input" />
											</c:if>
											<c:if test="${(inventory.amount eq 0) or (inventory.amount lt 1)}">
												<strong style="color:red">품절</strong>
											</c:if>
											<br>
										</div>
									</td>
								</tr>
								<c:if test="${inventory.amount gt 0}">
								<tr class="change_item">
									<th><h3>결제 정보</h3></th>
									<td>
										<div class="item_fr">
											<strong>결제할 금액</strong> : 
											<input type="number" name="tot" id="tot" class="input"/>											
										</div>
										<div class="item_fr">
											<strong>결제 방법</strong> : 
											<select name="paymethod" id="paymethod" class="input">
												<option value="">선택안함</option>
												<option value="bank">계좌이체</option>
												<option value="card">카드</option>
											</select>
										</div>
										<div class="item_fr">
											<strong>결제 번호</strong> : 
											<input type="text" name="paynum" id="paynum" class="input"/>
										</div>
										<button type="button" class="button is-danger">결제</button>
									</td>
								</tr>
								</c:if>
								<c:if test="${inventory.amount gt 0}">
								<tr class="result_item">
									<th><h3>배송 정보</h3></th>
									<td>
										<div class="item_fr">
											<strong>주문자</strong> :
											<strong>${sname }</strong> 											
										</div>
										<div class="item_fr">
											<strong>배송지</strong> :
											<input type="text" name="addr1" id="addr1" class="input" required><br> 
											<input type="text" name="addr2" id="addr2" class="input" required>
											<input type="text" name="postcode" id="postcode" class="input" required>
											<input type="hidden" name="addr" id="addr" />											
										</div>
										<div class="item_fr">
											<strong>연락처</strong> :
											<input type="tel" name="tel" id="tel" class="input"><br> 
										</div>
									</td>
								</tr>
								</c:if>
							</tbody>
						</table>
						<hr>
						<div class="buttons">
						  <button type="submit" class="button is-danger">구매</button>
						  <a href="${kpath }/product/getProduct.do?pno=${product.pno }" class="button is-primary">해당 상품</a>
						</div>
					</form>
					<!-- 주소 API -->
					<script>
					 function findAddr() {
					        new daum.Postcode({
					            oncomplete: function(data) {
					                console.log(data);
					                var roadAddr = data.roadAddress;
					                var jibunAddr = data.jibunAddress;
					                document.getElementById("postcode").value = data.zonecode;
					                if(roadAddr !== '') {
					                    document.getElementById("addr1").value = roadAddr;
					                } else if(jibunAddr !== ''){
					                    document.getElementById("addr1").value = jibunAddr;
					                }
					                document.getElementById("addr2").focus();
					            }
					        }).open();
					    }
					</script>
					
					<!-- 결제 API -->
					<script>
					
					</script>
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