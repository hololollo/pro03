<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
<c:set var="kpath" value="${pageContext.request.contextPath}" />
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>로그인</title>
    <style>
        * { margin: 0; padding: 0; }
        body { width:100%; height: auto; }
        .headerimg { width: 1930px; height: 600px; background-image: url(${kpath}/resources/img/login.png); margin: 0px auto; background-size: cover; background-position: center; background-repeat: no-repeat; }
        .login_contents { width: 1290px; height: 600px; margin: 0 auto; }
        .login_wrap { width: 650px; height: 400px; margin: 75px auto; border: 1px solid gray; border-radius: 5px; text-align: center; }
        .login_wrap h1 { margin-top: 2rem; }
        input[type=text] { width: 400px; height: 40px; margin-top: 25px; border: 1px solid gray; border-radius: 3px; padding-left: 1rem; }
        input[type=password] { width: 400px; height: 40px; margin-top: 25px; border: 1px solid gray; border-radius: 3px; padding-left: 1rem; }
        input[type=submit] { width: 417px; height: 40px; margin-top: 25px; font-weight: bold; font-size: 20px; }
    </style>
</head>
<body>
    <div class="headerimg"></div>
    <div class="login_contents">
        <div class="login_wrap">
            <h1>Log-in</h1>
             <c:if test="${not empty msg}">
                <div class="message">${msg}</div>
            </c:if>
            <form action="${path}/member/loginPro.do" method="post">
                <input type="text" id="id" name="id" class="loginId" placeholder="아이디" required>
                <input type="password" id="pw" name="pw" class="loginId" placeholder="비밀번호" required>
                <input type="submit" id="login" name="login" class="button" value="로그인">
            </form>
            <br>
            <a href="#">아이디찾기 ㅣ</a>
            <a href="#">비밀번호찾기 ㅣ</a>
            <a href="${path}/member/join.do">회원가입</a>
        </div>
    </div>
</body>
</html>
