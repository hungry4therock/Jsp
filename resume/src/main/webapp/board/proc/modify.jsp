<%@page import="kr.co.resume.dao.ArticleDao"%>
<%@ page contentType="text/html;charset=UTF-8" pageEncoding="UTF-8"%>
<%
	request.setCharacterEncoding("utf-8");
	String seq     = request.getParameter("seq");
	String title   = request.getParameter("title");
	String content = request.getParameter("content");
	String group = request.getParameter("group");
	String cate = request.getParameter("cate");
	
	ArticleDao dao = ArticleDao.getInstance();
	System.out.println(seq);
	
	ArticleDao.getInstance().updateArticle(title, content, seq);
	
	response.sendRedirect("/resume/board/view.jsp?seq="+seq+"&group="+group+"&cate="+cate);
%>