<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>방명록 목록</title>
</head>
<body>
<h2>방명록 목록</h2>[<a href="/List">새로고침</a>]
<table>
    <tr><th>번호</th><th>작성자</th><th>이메일</th><th>작성일</th><th>제목</th></tr>
    <c:forEach items="${person}" var="p">
        <tr><td>${p.id}</td><td>${p.author}</td><td>${p.email}</td><td>${p.date}</td><td>${p.title}</td></tr>
    </c:forEach>
</table>
<!-- 밑에는 입력 -->
<h2>학생 추가</h2>
<form method="post" action="/HomeControl?action=insert">
    <label>작성자</label>
    <input type="text" name="username"><br>
    <label>이메일</label>
    <input type="text" name="email"><br>
    <label>제목</label>
    <input type="text" name="title"><br>
    <label>비밀번호</label>
    <input type="text" name="password"><br>
    <input type="text" name="context" size="30"><br>
    <button type="submit">입력</button>
    <button type="cancel">취소</button> <!-- 입력 내용 모두 지우기-->
    <button type="golist" formaction="* 리스트로 가기">등록</button> <!-- 리스트로 돌아가기 -->
</form>
</body>
</html>