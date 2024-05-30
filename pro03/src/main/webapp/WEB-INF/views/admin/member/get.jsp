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
	<title>회원 정보</title>
	<jsp:include page="../../include/head.jsp"></jsp:include>
	<style>
	.table { width:900px; margin:14px auto; }
    .table tr td, .table tr th { padding:16px; }  
	</style>
</head>
<body>
<div class="full-wrap">
    <!-- 헤더 부분 인클루드 -->
    <header id="hd">
    	<div class="container">
    		<jsp:include page="../../include/hd.jsp"></jsp:include>
    	</div>
    </header>
    <main id="contents" class="contents">
    	<div id="breadcrumb" class="container breadcrumb-wrap clr-fix" style="height:60px; line-height:60px;">
	    	<nav class="breadcrumb" aria-label="breadcrumbs">
			  <ul>
			    <li><a href="${path2 }">Home</a></li>
			    <li><a href="${path2 }">회원</a></li>
			    <li class="is-active"><a href="#" aria-current="page">회원 상세정보</a></li>
			  </ul>
			</nav>
    	</div>
 	    <section class="page" id="page1">
    		<h2 class="page-title">회원 정보</h2>
    		<hr>
    		<div class="page-wrap">
	    		<div class="clr-fix">
	                <table class="table">
	                    <tbody>
		                    <tr>
		                        <th>아이디</th>
		                        <td>${dto.id }</td>
		                    </tr>
		                    <tr>
		                        <th>비밀번호</th>
		                        <td>********
		                    </tr>
		                    <tr>
		                        <th>이름</th>
		                        <td>${dto.name }</td>
		                    </tr>
		                    <tr>
		                        <th>이메일</th>
		                        <td>${dto.email }</td>
		                    </tr>
		                    <tr>
		                        <th>전화번호</th>
		                        <td>${dto.tel }</td>
		                    </tr>
		                    <tr>
		                        <th>주소</th>
		                        <td>
		                            기본 주소 : ${dto.addr1 } <br>
		                            상세 주소 : ${dto.addr2 }
		                        </td>
		                    </tr>
		                    <tr>
		                        <td colspan="2">
		                        	<div class="buttons">
			                            <c:if test="${cus.id=='admin' }">
			                                <a href="${path2 }/admin/memberDelete.do?id=${aid }" class="button is-danger is-dark">직권 강퇴</a>
			                                <a href="${path2 }/admin/memberList.do" class="button is-primary">회원 목록</a>
			                            </c:if>
			                        </div>    
		                        </td>
		                    </tr>
	                    </tbody>
	                </table>
	            </div>
	        </div>    
        </section>
    </main>
    <!-- 푸터 부분 인클루드 -->
    <footer id="ft">
    	<jsp:include page="../../include/ft.jsp"></jsp:include>
    </footer>
    <script>
    $(document).ready(function(){
    	$("#tb1_length, #tb1_filter").css("margin-bottom", "20px");
    });
    </script>
</div>    
</body>
</html>