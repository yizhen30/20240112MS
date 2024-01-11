<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@page import="java.sql.*"%>
<jsp:useBean id='objDBConfig' scope='session' class='hitstd.group.tool.database.DBConfig' />
<%
	session.setAttribute("access", "n");
	if(request.getParameter("SearchID") !=null){
		Class.forName("net.ucanaccess.jdbc.UcanaccessDriver");
		Connection con=DriverManager.getConnection("jdbc:ucanaccess://"+objDBConfig.FilePath()+";");
		Statement smt= con.createStatement();
		String getMemberData = "SELECT * FROM MatForm WHERE MatID='"+request.getParameter("SearchID")+"'";
		ResultSet members = smt.executeQuery(getMemberData);
		if(members.next()){	
			session.setAttribute("access","y");
			//session.setAttribute("accessName",members.getString("MatName"));
			session.setAttribute("UserID",members.getString("MatID"));
			response.sendRedirect("Counter3.jsp");
		}else
			out.println("錯誤，請重新輸入身分證字號。");
	}
	
%>