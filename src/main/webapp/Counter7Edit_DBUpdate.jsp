<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<%@page import="java.sql.*"%>
<jsp:useBean id='objDBConfig' scope='application' class='hitstd.group.tool.database.DBConfig' />

<html>
	<head>
		<meta charset="utf-8">
		<title>媽媽基本資料內容修改</title>
		 <meta content="width=device-width, initial-scale=1.0" name="viewport">
    <meta content="" name="keywords">
    <meta content="" name="description">

    <!-- Favicon -->
    <link href="img/favicon.ico" rel="icon">

    <!-- Google Web Fonts -->
    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
    <link href="https://fonts.googleapis.com/css2?family=Heebo:wght@400;500;600&family=Inter:wght@600&family=Lobster+Two:wght@700&display=swap" rel="stylesheet">
    
    <!-- Icon Font Stylesheet -->
    <link href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.10.0/css/all.min.css" rel="stylesheet">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.4.1/font/bootstrap-icons.css" rel="stylesheet">

    <!-- Libraries Stylesheet -->
    <link href="lib/animate/animate.min.css" rel="stylesheet">
    <link href="lib/owlcarousel/assets/owl.carousel.min.css" rel="stylesheet">

    <!-- Customized Bootstrap Stylesheet -->
    <link href="css/bootstrap.min.css" rel="stylesheet">

    <!-- Template Stylesheet -->
    <link href="css/style.css" rel="stylesheet">
	</head>
	
	<body>		
		
		<%request.setCharacterEncoding("utf-8");%>
		<%
			Class.forName("net.ucanaccess.jdbc.UcanaccessDriver");
			Connection con=DriverManager.getConnection("jdbc:ucanaccess://"+objDBConfig.FilePath()+";");
			//Statement smt= con.createStatement();
			Statement smt1= con.createStatement();
			Statement smt2= con.createStatement();
			String FamName = new String(request.getParameter("MatFamForm.MatFamName"));
			String RelWithMF = new String(request.getParameter("MatForm.RelWithMF"));
			String MatFamPhone = new String(request.getParameter("MatFamForm.ConPhone"));
			String MatName = new String(request.getParameter("MatName"));
			String MatPhone = new String(request.getParameter("MatPhone"));
			String ProMethods = new String(request.getParameter("ProMethods"));
			String DiePre = new String(request.getParameter("DiePre"));
			String MatBT = new String(request.getParameter("MatBT"));
			String Email = new String(request.getParameter("MatEmail"));
			//String MatID_Edit = new String(request.getParameter("MatID_Edit"));
			String MatHBD_Edit = new String(request.getParameter("MatHBD"));
			smt1.executeUpdate("UPDATE MatFamForm SET MatFamForm.MatFamName ='" +FamName+ "', MatFamForm.MatFamPhone ='" + MatFamPhone+"' WHERE MatFam_SeqNO='" + session.getAttribute("UserFamID")+"'");
			smt2.executeUpdate("UPDATE MatForm SET MatForm.RelWithMF='" + RelWithMF + "', MatForm.MatName='" + MatName + "', MatForm.ConPhone='" + MatPhone + "', MatForm.ProMethods='" + ProMethods + "', MatForm.DiePre='" + DiePre + "', MatForm.MatBT='" + MatBT + "', MatForm.Email ='" + Email+"', MatForm.MatHBD ='" + MatHBD_Edit+"'WHERE MatID ='" + session.getAttribute("UserID")+"'");
			//smt1.executeUpdate("UPDATE MatForm SET MatForm.MatHBD ='" + MatHBD_Edit+"'WHERE MatID ='" + session.getAttribute("UserID")+"'");
			response.sendRedirect("Counter7.jsp?MatID="+request.getParameter("MatID")+"");
		%>
		
		
	</body>
</html>