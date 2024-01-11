<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@page import="java.sql.*"%>
<jsp:useBean id='objDBConfig' scope='session' class='hitstd.group.tool.database.DBConfig' />

<html>

<body>
<%
	Class.forName("net.ucanaccess.jdbc.UcanaccessDriver");
	Connection con=DriverManager.getConnection("jdbc:ucanaccess://"+objDBConfig.FilePath()+";");
	Statement smt= con.createStatement(ResultSet.TYPE_SCROLL_INSENSITIVE,ResultSet.CONCUR_READ_ONLY);//(ResultSet.TYPE_SCROLL_INSENSITIVE,ResultSet.CONCUR_READ_ONLY);
	String MTemp = new String(request.getParameter("MTemp"));
	String MWeight = new String(request.getParameter("MWeight"));
	String MmmHg =new String(request.getParameter("MmmHg"));
	String MBSTime =new String(request.getParameter("MBSTime"));
	String MBS =new String(request.getParameter("MBS"));
	smt.executeUpdate("INSERT INTO AppointmentVisit(MTemp,MWeight,MmmHg,MBSTime,MBS) VALUES ('"+MTemp+"','"+MWeight+"','"+MmmHg+"','"+MBSTime+"','"+MBS+"')");
	con.close();
	response.sendRedirect("Index.jsp");
	%>
</body>
</html>