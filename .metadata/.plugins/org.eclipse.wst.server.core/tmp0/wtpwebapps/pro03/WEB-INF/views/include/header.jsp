<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<%@ page import="java.util.*, java.lang.*"%>
<%@ page import="java.text.*, java.net.InetAddress"%>
<c:set var="kpath" value="${pageContext.request.contextPath}" />

<nav class="navbar" role="navigation" aria-label="main navigation">
	<div class="navbar-brand">
		<a class="navbar-item" href="${kpath }" class="logo-wrap">
		<img src="${kpath }/resources/image/header_logo.png" alt="로고">
		</a>
          <button class="navbar-burger" aria-label="menu" aria-expanded="false" data-target="navbarBasicExample">
             <span aria-hidden="true"></span>
             <span aria-hidden="true"></span>
             <span aria-hidden="true"></span>
          </button>
        </div>
		<div id="navbarBasicExample" class="navbar-menu" role="menu">
			<div class="navbar-start">
				<a class="navbar-item"> About company </a>
				<div class="navbar-item has-dropdown is-hoverable">
					<a class="navbar-link" href="${kpath }/product/productList.do">제품정보</a>
					<div class="navbar-dropdown">
						<a href="${kpath }/product/productList.do?cate=seng"
							class="navbar-item" title="장수막걸리"> 장수막걸리 </a> <a
							href="${kpath }/product/productList.do?cate=korea"
							class="navbar-item" title="국내산 장수 생막걸리"> 국내산 장수생막걸리 </a> <a
							href="${kpath }/product/productList.do?cate=life"
							class="navbar-item" title="인생막걸리"> 인생막걸리 </a>
						<a href="${kpath }/product/productList.do?cate=rice"
							class="navbar-item" title="월매쌀막걸리"> 월매쌀막걸리 </a>
						<a href="${kpath }/product/productList.do?cate=moon"
							class="navbar-item" title="달빛유자"> 달빛유자 </a>
						<a href="${kpath }/product/productList.do?cate=ginseng"
							class="navbar-item" title="장홍삼 장수막걸리"> 장홍삼 장수막걸리 </a>
					</div>
				</div>
					<div class="navbar-item has-dropdown is-hoverable">
						<a class="navbar-link" href="${kpath }/board/boardList.do">회원참여</a>
						<div class="navbar-dropdown">
							<a href="${kpath }/board/boardList.do?cate=seng"
								class="navbar-item" title="공지사항">공지사항 </a>
								<hr class="navbar-divider"> 
								<a href="${kpath }/product/productList.do?cate=korea"
								class="navbar-item" title="자유게시판"> 자유게시판 </a> 
								<a href="${kpath }/product/productList.do?cate=life"
								class="navbar-item" title="Qna"> Qna </a>
							<a href="${kpath }/product/productList.do?cate=rice"
								class="navbar-item" title="자료실"> 자료실 </a>
						</div>
					</div>
					<div class="navbar-item has-dropdown is-hoverable">
						<a class="navbar-link">고객센터</a>
						<div class="navbar-dropdown">
							<a class="navbar-item" href="${kpath }/board/boardList.do">공지사항</a>
							<a class="navbar-item">고객의소리</a>
							<hr class="navbar-divider">
							<a class="navbar-item">오시는 길</a>
						</div>
					</div>
				</div>
				<div class="navbar-end">
					<div class="navbar-item">
						<div class="buttons">
							<c:if test="${!empty sid}">
								<a href="${kpath}/member/mypage.do" class="button is-primary">
									<strong>MyPage</strong>
								</a>
								<a href="${kpath}/member/logout.do" class="button is-light">
									LogOut </a>
							</c:if>
							<c:if test="${empty sid}">
								<a href="${kpath}/member/term.do" class="button is-primary"> <strong>Sign
										up</strong>
								</a>
								<a href="${kpath}/member/login.do" class="button is-light">
									Log in </a>
							</c:if>
							<c:if test="${sid.equals('admin')}">
								<a href="${kpath}/member/list.do" class="button is-light">
									MemberList </a>
							</c:if>
						</div>
					</div>
				</div>
			</div>
</nav>
<script>
	document.addEventListener('DOMContentLoaded', () => {
	    const $navbarBurgers = Array.prototype.slice.call(document.querySelectorAll('.navbar-burger'), 0);
	
	    if ($navbarBurgers.length > 0) {
	        $navbarBurgers.forEach(el => {
	            el.addEventListener('click', () => {
	                const target = el.dataset.target;
	                const $target = document.getElementById(target);
	                el.classList.toggle('is-active');
	                $target.classList.toggle('is-active');
	            });
	        });
	    }
	});
	</script>