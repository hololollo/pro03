<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"  %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="fn" uri = "http://java.sun.com/jsp/jstl/functions"%>
<c:set var="kpath" value="${pageContext.servletContext.contextPath }" />
<meta name="subject" content="장수막걸리" />
<meta name="description" content="장수막걸리" />
<meta name="keywords" content="장수막걸리, 막걸리, 탁주, 생막걸리, 쌀막걸리, 캔막걸리, 달빛유자" />
<!-- 
<link rel="icon" href="${ㅏpath}/resources/images/favicon.png" />
<link rel="shortcut icon" href="${kpath}/resources/images/favicon.png" />
-->
<meta property="og:type" content="website" />
<meta property="og:title" content="Jangsu Makgeolli" />
<meta property="og:description" content="장수막걸리, 막걸리, 탁주, 생막걸리, 쌀막걸리, 캔막걸리, 달빛유자" />
<meta property="og:image" content="${kpath}/resources/images/site.png" />
<meta property="og:url" content="http://localhost:8091" />
<link href="https://fonts.googleapis.com/css2?family=Bai+Jamjuree:ital,wght@0,200;0,300;0,400;0,500;0,600;0,700;1,200;1,300;1,400;1,500;1,600;1,700&family=Dorsa&family=Nanum+Gothic&family=Nanum+Pen+Script&family=Noto+Sans+KR:wght@100..900&family=Noto+Serif+KR&family=Raleway:ital,wght@0,100..900;1,100..900&display=swap" rel="stylesheet">
<link rel="stylesheet" href="https://bulma.io/vendor/fontawesome-free-5.15.2-web/css/all.min.css">
<link rel="stylesheet" href="${kpath}/resources/css/normalize.css" />
<link rel="stylesheet" href="${kpath}/resources/css/bulma.css">
<link rel="stylesheet" href="${kpath}/resources/css/xeicon.css">
<link rel="stylesheet" href="${kpath}/resources/css/datatables.min.css">
<link rel="stylesheet" href="${kpath}/resources/css/swiper.css">
<link rel="stylesheet" href="${kpath}/resources/css/common.css" />
<script src="${kpath}/resources/js/jquery-3.7.1.js"></script>
<script src="${kpath}/resources/js/datatables.min.js"></script>
<script src="${kpath}/resources/js/parallax.js"></script>
<script src="${kpath}/resources/js/swiper.js"></script>
<script src="https://unpkg.com/swiper/swiper-bundle.min.js"></script>
<style>
/* 공통 사용자 정의 스타일 */
#ft { border-top:3px solid #369; }
.control { margin-top:10px; margin-bottom:10px; }
.grid { width:1200px; margin:20px auto; }
.grid .cel img { display:block; max-width:98%; margin:10px auto; }
.table tr td.img_wrap { text-align:center; }
.table tr td.img_wrap img { display:block; max-width:98%; margin:10px auto; }
#page1 { clear:both; }
#page1:after { content:""; display:block; width:100%; height:90px; }
.pre_wrap { white-space:pre-line; }
.red_txt { color:red; font-size:1.4em; }
</style>