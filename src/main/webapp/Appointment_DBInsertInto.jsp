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
	String VisitName = new String(request.getParameter("VisitName"));
	String VisitEmail = new String(request.getParameter("VisitEmail"));
	String VisitPhone =new String(request.getParameter("VisitPhone"));
	String DueDate =new String(request.getParameter("DueDate"));
	String StayingDay =new String(request.getParameter("StayingDay"));
	String VisitDate = new String(request.getParameter("VisitDate"));
	String VisitTime =new String(request.getParameter("VisitTime")); 
	String Companions =new String(request.getParameter("Companions"));
	//String Parity =new String(request.getParameter("Parity"));
	//String ParityOther =new String(request.getParameter("ParityOther"));
	String Message =new String(request.getParameter("Message"));
	smt.executeUpdate("INSERT INTO AppointmentVisit(VisitName,VisitEmail,VisitPhone,DueDate,StayingDay,VisitDate,VisitTime,Companions,Message) VALUES ('"+VisitName+"','"+VisitEmail+"','"+VisitPhone+"','"+DueDate+"','"+StayingDay+"','"+VisitDate+"','"+VisitTime+"','"+Companions+"','"+Message+"')");
	con.close();
	response.sendRedirect("Index.jsp");
	%>
</body>
</html>