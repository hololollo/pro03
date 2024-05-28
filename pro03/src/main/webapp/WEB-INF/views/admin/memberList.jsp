<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %> 
<c:set var="path0" value="<%=request.getContextPath() %>" />    
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>회원 목록</title>
    <!-- Bootstrap CSS -->
    <link href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css" rel="stylesheet">
</head>
<body>
<header id="header" class="bg-primary text-white text-center py-3">
    <div class="container">
        <a href="${path0}" class="text-white">메인으로</a>
    </div>
</header>
<div id="contents" class="container mt-5">
    <section class="page" id="page1">
        <h3 class="page_title mb-4">회원 목록</h3>
        <div class="table-responsive">
            <table class="table table-bordered table-striped">
                <thead class="thead-dark">
                    <tr>
                        <th>아이디</th>
                        <th>이름</th>
                        <th>이메일</th>
                        <th>탈퇴</th>
                    </tr>
                </thead>
                <tbody>
                    <c:if test="${not empty memberList}">
                        <c:forEach var="dto" items="${memberList}">
                        <tr>
                            <td>
                                ${dto.id}
                            </td>
                            <td>${dto.name}</td>
                            <td>${dto.email}</td>
                            <td><a href="${path0}/member/memberDelete.do?id=${dto.id}" class="btn btn-danger btn-sm">탈퇴</a></td>
                        </tr>
                        </c:forEach>
                    </c:if>
                    <c:if test="${empty memberList}">
                        <tr>
                            <td colspan="4" class="text-center"><strong>회원이 존재하지 않습니다.</strong></td>
                        </tr>
                    </c:if>
                </tbody>
            </table>
        </div>
    </section>
</div>
<footer id="footer" class="footer-nav bg-dark text-white text-center py-3 mt-5">
    <div class="container">
        Footer content goes here
    </div>
</footer>
<!-- Bootstrap JS, Popper.js, and jQuery -->
<script src="https://code.jquery.com/jquery-3.5.1.slim.min.js"></script>
<script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.5.4/dist/umd/popper.min.js"></script>
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
</body>
</html>
