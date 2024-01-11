<%@page contentType="text/html"%>
<%@page pageEncoding="utf-8"%>
<%@page import="java.sql.*"%>
<jsp:useBean id='objDBConfig' scope='session' class='hitstd.group.tool.database.DBConfig' />
<%
	session.setAttribute("access", "n");
	if(request.getParameter("SearchBaby") !=null){
		Class.forName("net.ucanaccess.jdbc.UcanaccessDriver");
		Connection con=DriverManager.getConnection("jdbc:ucanaccess://"+objDBConfig.FilePath()+";");
		Statement smt= con.createStatement();
		String getMemberData = "SELECT * FROM BabyForm WHERE Baby_SeqNO='"+request.getParameter("SearchBaby")+"'";
		ResultSet members = smt.executeQuery(getMemberData);
		if(members.next()){	
			session.setAttribute("access","y");
			//session.setAttribute("accessName",members.getString("MatName"));
			session.setAttribute("BabyID",members.getString("Baby_SeqNO"));
			response.sendRedirect("Counter10.jsp");
		}else
			out.println("錯誤，請重新輸入寶寶代碼。");
	}
	
%>
<!--原版  
	if(members.next()){
			session.setAttribute("access","y");
			//session.setAttribute("accessName",members.getString("MatName"));
			//session.setAttribute("accessID",members.getString("Email"));
			response.sendRedirect("Counter3.jsp");
		}else
			out.println("查無此人，請重新輸入。");
	}
-->