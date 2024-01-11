<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@page import="java.sql.*"%>
<jsp:useBean id='objDBConfig' scope='session' class='hitstd.group.tool.database.DBConfig' />
<%
	session.setAttribute("access", "n");	
	if(request.getParameter("MatEmail") !=null &&
		request.getParameter("MatID") !=null){
		Class.forName("net.ucanaccess.jdbc.UcanaccessDriver");
		Connection con=DriverManager.getConnection("jdbc:ucanaccess://"+objDBConfig.FilePath()+";");
		Statement smt= con.createStatement();
		String getMemberData = "SELECT * FROM MatForm WHERE MatEmail='"+
				request.getParameter("MatEmail")+"' AND MatID='" +
				request.getParameter("MatID")+"'";
		ResultSet members = smt.executeQuery(getMemberData);
		if(members.next()){
			session.setAttribute("access","y");
			session.setAttribute("accessName",members.getString("MatName"));
			session.setAttribute("accessID",members.getString("MatEmail"));
			
			//session.setMaxInactiveInterval(20); 自動登出
			response.sendRedirect("Ms1.jsp?");
		}else
			out.println("Login.jsp?status=loginerror");
	}
%>