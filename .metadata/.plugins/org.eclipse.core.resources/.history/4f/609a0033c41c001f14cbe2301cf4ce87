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

        footer { width: 100%; height: 250px; background-color: #1F1E2C; }
        .fc_wrap { position: relative; width: 1290px; height: 180px; margin: 0px auto; margin-top: 20px; }
        footer .logo { position: absolute; top: 20px; width: 200px; height: 150px; }
        footer .drop { position: absolute; right: 20px; bottom: 25px; }

        .foot_menu { width: 1000px; height: auto; margin: auto; }
        .foot_menu ul { display: flex; margin-left: 100px; padding-top: 35px; }
        .foot_menu li { padding-left: 30px; }
        .foot_menu a { color: white; }

        .copyright { width: auto; margin-top: 70px; height: auto; }
        .copyright p { color: #fff; padding-left: 270px; }
    </style>
</head>
<body>        
    <footer>
        <br>
        <hr>
        <div class="fc_wrap">
            <a href=""><img src="${path1}/resources/img/footer_logo.png" alt="속초속촉로고" class="logo"></a> <!-- 이미지 경로 수정 -->
            <nav class="foot_menu">
                <ul>
                    <li><a href="">회원약관</a></li>
                    <li><a href="">개인정보처리방침</a></li>
                    <li><a href="">오시는길</a></li>
                </ul>
            </nav>
            <div class="copyright">
                <p class="addr">[24826] 강원특별자치도 속초시 중앙로 183 속초시문화관광, 대표전화 : 033-639-2114 | FAX : 033-639-2330 (평일 주간/야간 당직실, 공휴일)</p>
                <p class="copy">Copyright © Sokchosockchock All Rights Reserved.</p>
            </div>
            <div class="drop">
                <select name="sel" id="sel" onchange="locate()">
                    <option value="">해당 관광서</option>
                    <option value="https://www.sokcho.go.kr/">속초시청</option>
                    <option value="https://www.sokchotour.com/tour">그곳속초(속초관광)</option>
                    <option value="http://sokchocf.or.kr/sokchocf">속초문화관광재단</option>
                </select>
            </div>
            <script>
                function locate() {
                    var sel = document.getElementById("sel");
                    if (sel.value != "") {
                        window.open(sel.value);
                    }
                }
            </script>
        </div>    
    </footer>
</body>
</html>