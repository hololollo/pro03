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

#page1 {
    max-width: 1200px;
    margin: 0 auto;
    padding: 20px;
    overflow-y: auto;
}

.page-title {
    margin-bottom: 20px;
}

.tabs {
    margin-bottom: 20px;
}

.buttons {
    margin-top: 20px;
    text-align: right;
}

.list {
    list-style: none;
    padding: 0;
    margin: 0;
}

.list li {
    margin-bottom: 20px;
}

.item_wrap {
    display: block;
    text-decoration: none;
    color: inherit;
}

.item_box {
    border: 1px solid #ccc;
    padding: 10px;
    background-color: #f9f9f9;
}

.item_pic {
    width: 100%;
    height: auto;
    border-radius: 5px;
    margin-bottom: 10px;
}

.list_cate {
    margin-top: 0;
    margin-bottom: 5px;
    font-size: 16px;
    font-weight: bold;
}

.list_title {
    margin-top: 0;
    margin-bottom: 5px;
    font-size: 18px;
}

.list_com {
    margin-top: 0;
    margin-bottom: 5px;
    font-size: 16px;
    color: #666;
}

.list_price {
    margin-top: 0;
    margin-bottom: 0;
    font-size: 16px;
    color: #ff0000;
}

/* 수정된 CSS */
#breadcrumb {
    padding: 10px;
    background-color: #f4f4f4;
}

.container {
    width: 100%;
    max-width: 1200px;
    margin: 0 auto;
}

.breadcrumb-wrap {
    height: 60px;
    line-height: 60px;
    margin-bottom: 20px;
}

.tab_box {
    margin-bottom: 20px;
}

/* 모바일 및 작은 화면에 대한 조정 */
@media only screen and (max-width: 768px) {
    #page1 {
        padding: 10px;
    }

    .list_title {
        font-size: 16px;
    }

    .list_price {
        font-size: 14px;
    }

    .list_com {
        font-size: 14px;
    }
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
    		<h2 class="page-title">상품 목록</h2>
    		
    		<div class="tab_box">
	    		<div class="tabs">
				  <ul>
                        <li><a href="${kpath }/product/productList.do" class="navbar-item" title="전체">
                            전체 상품
                        </a></li>
                        <li><a href="${kpath }/product/productCateList.do?cate=seng" class="navbar-item" title="장수막걸리">
                            장수막걸리
                        </a></li>
                        <li><a href="${kpath }/product/productCateList.do?cate=korea" class="navbar-item" title="국내산 장수생막걸리">
                            국내산 장수생막걸리
                        </a></li>
                        <li><a href="${kpath }/product/productCateList.do?cate=life" class="navbar-item" title="인생막걸리">
                            인생막걸리
                        </a></li>
                        <li><a href="${kpath }/product/productCateList.do?cate=rice" class="navbar-item" title="월매쌀막걸리">
                            월매쌀막걸리
                        </a></li>
                        <li><a href="${kpath }/product/productCateList.do?cate=moon" class="navbar-item" title="달빛유자">
                            달빛유자
                        </a></li>   
                       	<li><a href="${kpath }/product/productCateList.do?cate=ginseng" class="navbar-item" title="장홍삼 장수막걸리">
                            장홍삼 장수막걸리
                        </a></li>   
				  </ul>
				</div>
    		</div>
    		
    		<div class="page-wrap">
	    		<div class="clr-fix">
	    			<br>
					<ul class="columns list" id="list1">
						<c:if test="${not empty productList }">
							<c:forEach var="dto" items="${productList }">
							<li class="column">
								<a href="${kpath }/product/getProduct.do?pno=${dto.pno }" class="item_wrap">
									<div class="item_box">
										<img src="${kpath }/resources/upload/${dto.img3 }" class="item_pic"/>
										<h4 class="list_cate">${dto.pno }</h4>
										<h3 class="list_title">${dto.pname }</h3>
										<p class="list_com">${dto.com }</p>
										<p class="list_price"><strong>${dto.price }</strong></p>
									</div>
								</a>
							</li>
							</c:forEach>
						</c:if>
						<c:if test="${empty productList }">
							<li>
								<p><strong>상품이 존재하지 않습니다.</strong></p>
							</li>
						</c:if>
					</ul>
					<script>
					$(document).ready(function(){
						/* $("#list1").DataTable({
							order:[[0,"desc"]]
						}); */
					});
					</script>
					<hr>
					<c:if test="${sid.equals('admin') }">
					<div class="buttons">
					  <a href="${kpath }/product/insProduct.do" class="button is-danger">글 등록</a>
					</div>
					</c:if>
				</div>
    		</div>
    	</section>
    </main>
<footer>
	  <jsp:include page="../include/footer.jsp" />
</footer>
</body>
</html>