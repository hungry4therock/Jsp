<%@page import="kr.co.resume.bean.MemberBean"%>
<%@ page contentType="text/html;charset=UTF-8" pageEncoding="UTF-8"%>
<%
	MemberBean mb = (MemberBean) session.getAttribute("sessMember");
%>
<!DOCTYPE html>
<html>
<head>
	<title>랜선 락페스티벌</title>
	<meta charset="UTF-8">
	<script src="/resume/js/script.js" defer="defer"></script>
	<script src="http://code.jquery.com/jquery-1.12.3.min.js"></script>
	<link rel="stylesheet" type="text/css" href="/resume/css/style.css">
</head>
<body>
	<header>
		<div class=logo><a href="/resume/index.jsp"><img src="/resume/img/logo.png"></a></div>
	</header>
	<div>
		<div class="topmenu">
			<% if( mb == null) {%>
				<a href="/resume/index.jsp">Home</a>|
				<a href="/resume/user/login.jsp">Login</a>|
				<a href="/resume/user/terms.jsp">Sign Up</a>
			<% }else{ %>
				<span><%= mb.getNick() %>님 반갑습니다. |</span>
				<a href="/resume/index.jsp">Home</a>|
				<a href="/resume/user/proc/logout.jsp">Logout</a>|
			<% } %>
		</div>
	</div>
	<nav>
		<ul class=menu>
			<li><a href="#">Information</a>
				<ul class="submenu">
					<li><a href="/resume/information/introduce.jsp">락 페스티벌 소개</a></li>
					<li><a href="/resume/information/lineup.jsp">라인업</a></li>
					<li><a href="/resume/information/timetable.jsp">타임 테이블</a></li>
				</ul>
			</li>
			<li><a href="#">Community</a>
				<ul class="submenu">
					<li><a href="/resume/board/list.jsp?group=community&cate=notice">공지 게시판</a></li>
					<li><a href="/resume/board/list.jsp?group=community&cate=free">자유 게시판</a></li>
					<li><a href="/resume/board/list.jsp?group=community&cate=refer">자료실</a></li>
				</ul>
			</li>
			<li><a href="#">Ticketing</a>
				<ul class="submenu">
					<li><a href="#">예매</a></li>
					<li><a href="#">Merchandise</a></li>
				</ul>
			</li>
		</ul>
	</nav>