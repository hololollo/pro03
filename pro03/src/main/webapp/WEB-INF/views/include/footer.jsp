<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<c:set var="path1" value="${pageContext.request.contextPath}" />
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <style>
        * { margin: 0; padding: 0; }
        body, html { width: 100%; overflow-x: hidden; }
        ul { list-style: none; }
        a { text-decoration: none; }

        footer a { font-family: "Nanum Gothic", sans-serif; font-weight: 500; }
        footer p { font-family: "Nanum Gothic", sans-serif; font-size: 13px; }

        footer { width: 100%; height: 170px; background-color: #1F1E2C; }
        .fc_wrap { position: relative; width: 1290px; height: 150px; margin: 0px auto; margin-top: 20px; }
        footer .logo { position: absolute; top: 20px; width: 200px; height: 50px; }

        .foot_menu { width: 1000px; height: auto; margin: auto; }
        .foot_menu ul { display: flex; margin-left: 100px; padding-top: 35px; }
        .foot_menu li { padding-left: 30px; }
        .foot_menu a { color: white; }

        .copyright { width: auto; margin-top: 10px; height: auto; }
        .copyright p { color: #fff; padding-left: 270px; }
    </style>
</head>
<body>        
    <footer>
        <hr>
        <div class="fc_wrap">
            <a href=""><img src="${path1}/resources/image/footerlogo.jpg" alt="footer로고" class="logo"></a> <!-- 이미지 경로 수정 -->
            <nav class="foot_menu">
                <ul>
                    <li><a href="">회원약관</a></li>
                    <li><a href="">개인정보처리방침</a></li>
                    <li><a href="">오시는길</a></li>
                </ul>
            </nav>
            <div class="copyright">
            	<p class="copy">Copyright2024 (주)서울탁주제조협회  All Rights Reserved.</p>
                <p class="addr"> 서울 특별시 마포구 망원로25 오일빌딩 3층 Tel(02)3141-9453 | FAX(02)3141-7617 | Seoul. Mapo-Gu, Mangwon Street 25, Oil</p>
               
            </div>
        </div>    
    </footer>
</body>
</html>