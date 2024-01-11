<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<jsp:useBean id='objDBConfig' scope='session' class='hitstd.group.tool.database.DBConfig' />    
<%@page import="java.sql.*"%>

	<%
	Class.forName("net.ucanaccess.jdbc.UcanaccessDriver");
	Connection con=DriverManager.getConnection("jdbc:ucanaccess://"+objDBConfig.FilePath()+";");
	Connection conA=DriverManager.getConnection("jdbc:ucanaccess://"+objDBConfig.FilePath()+";");
	Statement smtA= conA.createStatement();
	Statement smt= con.createStatement(ResultSet.TYPE_SCROLL_INSENSITIVE,ResultSet.CONCUR_READ_ONLY);//(ResultSet.TYPE_SCROLL_INSENSITIVE,ResultSet.CONCUR_READ_ONLY);
	Statement smt1= con.createStatement(ResultSet.TYPE_SCROLL_INSENSITIVE,ResultSet.CONCUR_READ_ONLY);//(ResultSet.TYPE_SCROLL_INSENSITIVE,ResultSet.CONCUR_READ_ONLY);
	Statement smt2= con.createStatement(ResultSet.TYPE_SCROLL_INSENSITIVE,ResultSet.CONCUR_READ_ONLY);//(ResultSet.TYPE_SCROLL_INSENSITIVE,ResultSet.CONCUR_READ_ONLY);
	String MatName = new String(request.getParameter("MatName"));
	String MatBT =new String(request.getParameter("MatBT"));
	String MatID = new String(request.getParameter("MatID"));
	String MatHBD =new String(request.getParameter("MatHBD"));
	String ConPhone =new String(request.getParameter("ConPhone"));
	String Email = new String(request.getParameter("Email"));
	//String ConAddress =new String(request.getParameter("ConAddress"));
	String RelWithMF =new String(request.getParameter("RelWithMF")); 
	String ModPro =new String(request.getParameter("ModPro"));
	String Diepre =new String(request.getParameter("Diepre"));
	String MatFam_Name =new String(request.getParameter("MatFam_Name"));
	String MatFamPhone =new String(request.getParameter("MatFamPhone"));
	String Remark = new String(request.getParameter("Remark"));
	//smt.executeUpdate("INSERT INTO MatForm(MatName,MatID,MatHBD,MatBT,ConPhone,Email,ConAddress,ModPro,Diepre,MatFam_SeqNO,RelWithEC,MatFamPhone) VALUES ('"+MatName+"','"+MatID+"','"+MatHBD+"','"+MatBT+"','"+ConPhone+"','"+Email+"','"+ConAddress+"','"+ModPro+"','"+Diepre+"','"+MatFam_SeqNO+"','"+RelWithEC+"','"+MatFamPhone+"')");
	//smt.executeUpdate("INSERT INTO MatForm(MatName,MatID,MatHBD,MatBT,ConPhone,Email,ConAddress,ModPro,Diepre,RelWithEC,MatFamPhone) VALUES ('"+MatName+"','"+MatID+"','"+MatHBD+"','"+MatBT+"','"+ConPhone+"','"+Email+"','"+ConAddress+"','"+ModPro+"','"+Diepre+"','"+RelWithEC+"','"+MatFamPhone+"')");
	//smt.executeUpdate("INSERT INTO MatForm(MatName,MatBT,MatID,MatHBD,ConPhone,Email,ConAddress,RelWithMF,ModPro,Diepre) VALUES ('"+MatName+"','"+MatBT+"','"+MatID+"','"+MatHBD+"','"+ConPhone+"','"+Email+"','"+ConAddress+"','"+RelWithMF+"','"+ModPro+"','"+Diepre+"')");
	smt.executeUpdate("INSERT INTO MatForm(MatName,MatBT,MatID,MatHBD,MatPhone,MatEmail,WithMatRel,ProMethods,Diepre) VALUES ('"+MatName+"','"+MatBT+"','"+MatID+"','"+MatHBD+"','"+ConPhone+"','"+Email+"','"+RelWithMF+"','"+ModPro+"','"+Diepre+"')");
	smt1.executeUpdate("INSERT INTO MatFamForm(MatFamName,MatFamPhone,MatID) VALUES ('"+MatFam_Name+"','"+MatFamPhone+"','"+MatID+"')");
	smt2.executeUpdate("INSERT INTO MatCheckIn(MatID) VALUES ('"+MatID+"')");
	//smtA.executeUpdate("UPDATE MatForm SET MatForm.RelWithEC = MatFamForm.MatFam_SeqNO WHERE MatForm.MatID = MatFamForm.MatID ");
	con.close();
	//response.sendRedirect("Counter5.jsp?MatID="+request.getParameter("MatID")+"");
	//response.sendRedirect("Counter5.jsp");
	
	
	//Class.forName("net.ucanaccess.jdbc.UcanaccessDriver");
	//Connection conA=DriverManager.getConnection("jdbc:ucanaccess://"+objDBConfig.FilePath()+";");
	//out.println("Con= "+con);
	//Statement smtA= conA.createStatement();
	//smtA.executeUpdate("UPDATE MatForm INNER JOIN MatFamForm ON MatFamForm.MatID = MatForm.MatID SET MatForm.RelWithEC = MatFamForm.MatFam_SeqNO;");
	//smtA.executeUpdate("UPDATE MatForm SET MatForm.RelWithEC = MatFamForm.MatFam_SeqNO WHERE MatForm.MatID = MatFamForm.MatID ");
	//smtA.executeUpdate("UPDATE MatForm SET RelWithEC = (SELECT MatFam_SeqNO FROM MatFamForm WHERE MatForm.MatID = MatFamForm.MatID)");
	response.sendRedirect("Counter5.jsp?MatID="+request.getParameter("MatID")+"");
			
	%>
