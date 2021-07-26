<%@ page contentType="text/html;charset=UTF-8" pageEncoding="UTF-8"%>

<%@ include file="../_header.jsp" %> 
<%
	request.setCharacterEncoding("utf-8");
	String group = request.getParameter("group");
	String cate  = request.getParameter("cate");
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
        <section id="board" class="write">
            <h3>글쓰기</h3>
            
            <article>
            
                <form action="/resume/board/proc/write.jsp" method="post" enctype="multipart/form-data" >
                		<input type="hidden" name="group" value="<%= group%>">
                		<input type="hidden" name="cate" value=<%= cate %>>
                    <table>
                        <tr>
                            <td>제목</td>
                            <td><input type="text" name="title" placeholder="제목을 입력하세요."/></td>
                        </tr>
                        <tr>
                            <td>내용</td>
                            <td>
                                <textarea name="content"></textarea>                                
                            </td>
                        </tr>
                        <tr>
                            <td>첨부</td>
                            <td><input type="file" name="file"/></td>
                        </tr>
                    </table>
                    <div>
                        <a href="/resume/board/list.jsp?group=<%= group %>&cate=<%= cate %>" class="btnCancel">취소</a>
                        <input type="submit"  class="btnWrite" value="작성완료">
                    </div>
                </form>
            </article>
        </section>
    </div>

<%@ include file="../_footer.jsp" %>
	