<%@page import="kr.co.resume.bean.MemberBean"%>
<%@page import="kr.co.resume.db.Sql"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@ page contentType="text/html;charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="kr.co.resume.db.DBConfig"%>
<%@ page import="java.sql.Connection"%>
<%@ page import="kr.co.resume.bean.TermsBean" %>
<%
	TermsBean tb = new TermsBean();
	try{
		//12
		Connection conn =DBConfig.getInstance().getConnection();
		//3
		Statement stmt = conn.createStatement();
		//4
		ResultSet rs= stmt.executeQuery(Sql.SELECT_TERMS);
		//5
		if(rs.next()){
			tb.setTerms(rs.getString(1));
			tb.setPrivacy(rs.getString(2));
		}
		//6
		conn.close();
	}catch(Exception e){
		e.printStackTrace();
	}
%>

<%@ include file="../_header.jsp" %>

	
	
	<div id="wrapper">
        <section id="user" class="terms">
            <table>
                <caption>사이트 이용약관</caption>
                <tr>
                    <td>
                        <textarea readonly><%= tb.getTerms() %></textarea>
                        <p>
                            <label><input type="checkbox" name="chk1"/>동의합니다.</label>
                        </p>
                    </td>
                </tr>
            </table>
            <table>
                <caption>개인정보 취급방침</caption>
                <tr>
                    <td>
                        <textarea readonly><%= tb.getPrivacy() %></textarea>
                        <p>
                            <label><input type="checkbox" name="chk2"/>동의합니다.</label>
                        </p>
                    </td>
                </tr>
            </table>
            <div>
                <a href="/resume/user/login.jsp">취소</a>
                <a href="/resume/user/register.jsp">다음</a>
            </div>
        </section>
    </div>

	
<%@ include file="../_footer.jsp" %>