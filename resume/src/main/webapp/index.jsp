<%@page import="kr.co.resume.dao.ArticleDao"%>
<%@page import="kr.co.resume.bean.ArticleBean"%>
<%@page import="java.util.List"%>
<%@ page contentType="text/html;charset=UTF-8" pageEncoding="UTF-8"%>
<%@ include file="/_header.jsp" %>
<script>
    $(function(){
        $('.slider > ul').bxSlider({
            slideWidth: 980,
            pager: false,
            controls: false,
            auto: true
        });
        $('#tabs').tabs();
    });
</script>
<%
	// 최신글 가져오기
	List<ArticleBean> latests = ArticleDao.getInstance().selectLatests();
%>

	<div id="imgslide">
		<div class="imgs">
			<img src="/resume/img/1.jpeg">
			<img src="/resume/img/2.jpg">
			<img src="/resume/img/3.jpg">
			<img src="/resume/img/4.jpg">
			<img src="/resume/img/5.jpg">
		</div>
	</div>
	
	<div id="maintable">
		<div class="board">
			<div class="notice">공지사항</div>
			<table class="table" cellspacing="0" cellpadding="0">
			<tr>
					<th>제목</th>
					<th>작성일</th>
				</tr>
			<% for(int i=0 ; i<5 ; i++){ %>
				<tr>
					<td>
					<a href="/resume/board/view.jsp?group=communication&cate=<%= latests.get(i).getCate() %>&seq=<%= latests.get(i).getSeq() %>"><%= latests.get(i).getTitle() %>
					</a>
					</td>
					<td><%= latests.get(i).getRdate() %></td>
				</tr>
			<% } %>
			</table>
		</div>

			
		<div class="popupbody">
			<div class="partner">
				<img src="/resume/img/PARTNER.jpg">
				<img src="/resume/img/PARTNER_UP.png">
			</div>
			<div class="partner_up">
				<div class="body">
						<img src="/resume/img/PARTNER.jpg">
						<img src="/resume/img/PARTNER_UP.png">
						<input type="button" value="Close" class="btnClose">
				</div>
			</div>
		</div>			
	</div>

<%@ include file="/_footer.jsp" %>
	