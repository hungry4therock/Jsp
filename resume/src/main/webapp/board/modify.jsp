<%@page import="kr.co.resume.bean.ArticleBean"%>
<%@page import="kr.co.resume.dao.ArticleDao"%>
<%@ page contentType="text/html;charset=UTF-8" pageEncoding="UTF-8"%>

<%
	request.setCharacterEncoding("utf-8");
 	String seq = request.getParameter("seq");
 	String group = request.getParameter("group");
	String cate  = request.getParameter("cate");
 	
 	// 수정 글 가져오기
 	ArticleBean article = ArticleDao.getInstance().selectArticle(seq);
 	
%>
	<div>
        <article style="width: 1000px;">
				<p style="width: 1000px; text-align: right;">
                    HOME > Community >
                    <% if(cate.equals("notice")){ %>
                     <em>공지 게시판</em>
                     <% }else if(cate.equals("free")){ %>
                  	 <em>자유 게시판</em>
                  	 <% }else if(cate.equals("refer")){ %>
                    <em>자료실</em>
                    <% } %>
                </p>

        </article>
    </div>

	
	
	<div id="wrapper">
        <section id="board" class="modify">
            <h3>글수정 </h3>
            <article>
           		 
                <form action="/resume/board/proc/modify.jsp" method="post">
                <input type="hidden" name="seq" value="<%= seq %>"/>		
                    <table>
                        <tr>
                            <td>제목</td>
                            <td><input type="text" name="title" placeholder="제목을 입력하세요."  value="<%= article.getTitle() %>"></td>
                        </tr>
                        <tr>
                            <td>내용</td>
                            <td>
                                <textarea name="content"><%= article.getContent() %></textarea>                                
                            </td>
                        </tr>
                        <tr>
                            <td>첨부</td>
                            <td><input type="file" name="file"/></td>
                        </tr>
                    </table>
                    <div>
                         <a href="/resume/board/list.jsp?group=<%= group %>&cate=<%= cate %>" class="btnCancel">취소</a>
                        <input type="submit"  class="btnWrite" value="수정완료">
                    </div>
                </form>
            </article>
        </section>
    </div>

<%@ include file="../_footer.jsp" %>	