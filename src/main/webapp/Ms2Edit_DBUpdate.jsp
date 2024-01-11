<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@page import="java.sql.*"%>
<%@page import="java.io.*,java.util.*"%>
<jsp:useBean id='objDBConfig' scope='application' class='hitstd.group.tool.database.DBConfig' />
<html>
<head>
	<meta charset="UTF-8">
	<title>產婦基本資料內容修改</title>
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
		<%request.setCharacterEncoding("UTF-8"); %>
		<%
			Class.forName("net.ucanaccess.jdbc.UcanaccessDriver");
			Connection con=DriverManager.getConnection("jdbc:ucanaccess://"+objDBConfig.FilePath()+";");
			Statement smt= con.createStatement();
			//String MatFamName = new String(request.getParameter("MatFamName"));
			String WithMatRel = new String(request.getParameter("WithMatRel"));
			//String MatFamID = new String(request.getParameter("MatFamID"));
			//String MatFamPhone = new String(request.getParameter("MatFamPhone"));
			//String MatPhone = request.getParameter("MatPhone");
			String MatPhone = new String(request.getParameter("MatPhone"));
			//String MatFamEmail = new String(request.getParameter("MatFamEmail"));
			//String MatEmail = request.getParameter("MatEmail");
			String DiePre = new String(request.getParameter("DiePre"));
			String updateQuery = "UPDATE MatForm SET WithMatRel ='" + WithMatRel+"', MatPhone ='" + MatPhone +"', DiePre ='" + DiePre+"' WHERE MatEmail ='" + session.getAttribute("accessID")+"'";
			//smt.executeUpdate("UPDATE MatFamForm SET MatFamName ='" + MatFamName+"', MatFamID ='" + MatFamID +"', MatFamPhone ='" + MatFamPhone+"', MatFamEmail ='" + MatFamEmail+"' WHERE MatEmail ='" + request.getParameter("accessID")+"'");
			response.sendRedirect("Ms2.jsp?MatEmail="+session.getAttribute("accessID")+"");
		%>
</body>
</html>