<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<jsp:useBean id='objDBConfig' scope='session' class='hitstd.group.tool.database.DBConfig' />    
<%@page import="java.sql.*"%>

	<%
	Class.forName("net.ucanaccess.jdbc.UcanaccessDriver");
	Connection con=DriverManager.getConnection("jdbc:ucanaccess://"+objDBConfig.FilePath()+";");
	Statement smt= con.createStatement(ResultSet.TYPE_SCROLL_INSENSITIVE,ResultSet.CONCUR_READ_ONLY);//(ResultSet.TYPE_SCROLL_INSENSITIVE,ResultSet.CONCUR_READ_ONLY);
	Statement smt1= con.createStatement(ResultSet.TYPE_SCROLL_INSENSITIVE,ResultSet.CONCUR_READ_ONLY);//(ResultSet.TYPE_SCROLL_INSENSITIVE,ResultSet.CONCUR_READ_ONLY);
	String RoomType = new String(request.getParameter("RoomType"));
	String RoomNo =new String(request.getParameter("RoomNo"));
	String CheckInDate = new String(request.getParameter("CheckInDate"));
	String CheckOutDate =new String(request.getParameter("CheckOutDate"));
	String Day =new String(request.getParameter("Day"));
	//smt.executeUpdate("UPDATE MatForm  SET MatForm.RelWithEC = MatFamForm.MatFam_SeqNO FROM MatForm INNER JOIN MatFamForm ON MatFamForm.MatID = MatForm.MatID;");
	smt.executeUpdate("UPDATE MatCheckIn SET MatCheckIn.RoomType='"+RoomType+"',MatCheckIn.RoomNo='"+RoomNo+"',MatCheckIn.CheckInDate='"+CheckInDate+"',MatCheckIn.CheckOutDate='"+CheckOutDate+"',MatCheckIn.Day='"+Day+"' WHERE MatCheckIn.MatID='" +session.getAttribute("InsertID")+"'");
	con.close();
	response.sendRedirect("Counter2.jsp");
	%>

