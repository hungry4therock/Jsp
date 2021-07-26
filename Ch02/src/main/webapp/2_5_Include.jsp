<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>2_5_Include</title>
</head>
<body>
	<h3>5.JSP Include 실습하기</h3>
	<%--
	Include 지시자
	- 공통의 전역파일읗 삽입하는 지시자
	- 일잔적으로 UI 모듈, 공통적역 파일 변수를 삽입할 때 사용
	- 정적타임 삽입, 참고) include 태그는 동적타임에 삽입
	 --%>
	 <%@ include file="./inc/_header.jsp" %>
	 <main>
	 <h1>Main Content</h1>
	 </main>
	 <%@ include file="./inc/_footer.jsp" %>
</body>
</html>