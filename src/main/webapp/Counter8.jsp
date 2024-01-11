<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<%@page import="java.sql.*"%>
<jsp:useBean id='objDBConfig' scope='session' class='hitstd.group.tool.database.DBConfig' /> 
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="utf-8">
    <title>櫃檯人員-媽媽基本資料</title>
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
    <div class="container-xxl bg-white p-0">
        <!-- Spinner Start -->
        <div id="spinner" class="show bg-white position-fixed translate-middle w-100 vh-100 top-50 start-50 d-flex align-items-center justify-content-center">
            <div class="spinner-border text-primary" style="width: 3rem; height: 3rem;" role="status">
                <span class="sr-only">Loading...</span>
            </div>
        </div>
        <!-- Spinner End -->


        <!-- Navbar Start -->
        <nav class="navbar navbar-expand-lg bg-white navbar-light sticky-top px-4 px-lg-5 py-lg-0">
            <a href="Counter1.jsp" class="navbar-brand">
                <h1 class="m-0 text-primary"><i class="fa fa-star me-3"></i>蘊星產後護理之家</h1>
            </a>
            <button type="button" class="navbar-toggler" data-bs-toggle="collapse" data-bs-target="#navbarCollapse">
                <span class="navbar-toggler-icon"></span>
            </button>
            <div class="collapse navbar-collapse" id="navbarCollapse">
                <div class="navbar-nav mx-auto">
                    
                   <div class="navbar-nav mx-auto">
                       <a href="Counter2.jsp" class="nav-item nav-link">媽媽基本資料</a>
                       <a href="Counter9.jsp" class="nav-item nav-link">寶寶基本資料</a>
                       <a href="Counter13.jsp" class="nav-item nav-link">客戶預約</a>
                       <a href="Counter16.jsp" class="nav-item nav-link">使用者權限管理</a>
                    </div>
                    </div>
              
               
                <a href="Index.jsp" class="btn btn-primary rounded-pill px-3 d-none d-lg-block">使用者登出<i class="fa fa-arrow-right ms-3"></i></a>
        </div>
        
        </nav>
        <!-- Navbar End -->
        <%request.setCharacterEncoding("utf-8"); %>
		<%
			Class.forName("net.ucanaccess.jdbc.UcanaccessDriver");
			Connection con=DriverManager.getConnection("jdbc:ucanaccess://"+objDBConfig.FilePath()+";");
			//out.println("Con= "+con);
			Statement smt= con.createStatement();
			//String sql0 = "SELECT * FROM MatForm left JOIN MatCheckIn ON MatForm.MatID = MatCheckIn.MatID where MatForm.MatID ='" +session.getAttribute("UserID")+"'";
			String sql = "SELECT * FROM MatForm left JOIN MatCheckIn ON MatForm.Mat_SeqNO = MatCheckIn.Mat_SeqNO where MatForm.MatID ='" +session.getAttribute("UserID")+"'";
			String sql1 = "SELECT * FROM MatForm INNER JOIN (RoomType left JOIN MatCheckIn ON RoomType.RoomType_SeqNO = MatCheckIn.RoomType) ON MatForm.Mat_SeqNO = MatCheckIn.Mat_SeqNO where MatForm.MatID ='" +session.getAttribute("UserID")+"'";
			//String sql2 = "SELECT * FROM MatForm INNER JOIN (RoomType left JOIN MatCheckIn ON RoomType.RoomType_SeqNO = MatCheckIn.RoomType) ON MatForm.MatID = MatCheckIn.MatID where MatForm.MatID ='" +session.getAttribute("UserID")+"'";
			//String sql3 ="SELECT * FROM MatForm left JOIN MatCheckIn ON MatForm.MatID = MatCheckIn.MatID where MatForm.MatID='" +session.getAttribute("UserID")+"'";
			//ResultSet mmc0 = smt.executeQuery(sql0);
			ResultSet mmc = smt.executeQuery(sql);
			ResultSet mmc1 = smt.executeQuery(sql1);
			//ResultSet mmc2 = smt.executeQuery(sql2);
			//ResultSet mmc3 = smt.executeQuery(sql3);
			//mmc0.next();
			mmc.next();
			mmc1.next();
			//mmc2.next();
			//mmc3.next();
		%>
		

<br><h2 align="center">修改媽媽入住資料</h2><br>

<table style="width:30%" align="right"> 
		<tr>
		<th>入住日期</th>
		<td><%out.println(mmc.getString("MatCheckIn.CheckInDate"));%></td></tr>
	</table>
   <form action="Counter8Edit_DBUpdate.jsp?MatID=<%=request.getParameter("MatID")%>" method="post" name="form">
            <div class="container">
                <div class="bg-light rounded">
                    <div class="row g-0">
                        <div class= data-wow-delay="0.1s" style="min-height: 400px;">
                           
                          <br> <table width="1300" > 
						   <tr><td>房型</td>
						    <td><select  name="RoomType" class="form-select border-2" width="300" style="width: 260px"required>
					              <option selected>原房型為<%out.println(mmc1.getString("RoomType"));%>，請選擇：</option>
		                          <option value="R1">景觀房</option>
		                          <option value="R2">尊爵房</option>
		                          <option value="R3">VIP房</option>
		                          </select>
		                    </td>
		                   </tr>
						    
						   <tr> <td >房號</td>
						    <td ><input name="RoomNo" value="<%out.println(mmc.getString("RoomNo"));%>" class="form-select border-2" size="30" width="300" style="width: 260px"></td></tr>
						    
						    <tr><td >入住日期</td>
						    <td ><input name="CheckInDate" type="date" value="<%out.println(mmc.getString("CheckInDate"));%>" size="30" class="form-select border-2" width="300" style="width: 260px"></td></tr>
						    
						    <tr><td >退房日期</td>
						    <td ><input name="CheckOutDate" type="date" value="<%out.println(mmc.getString("CheckOutDate"));%>" size="30" class="form-select border-2" width="300" style="width: 260px"></td></tr>
						    
						    <tr><td>入住天數</td>
						    <td><input name="Day" value="<%out.println(mmc.getString("Day"));%>" size="30" class="form-select border-2" width="300" style="width: 260px"></td></tr>
						    
						   
						    
						    <tr><td>備註</td>
						    <td><input value=""size="30"class="form-select border-2" width="300" style="width: 260px"></td></tr>
						 

  						</table>
                       
                    <h5 align="right"><button type="submit"style="background:#FF9999">完成修改</button> </h5>
                </div>
            </div>
        </div>
        </div>
        
	</form>


      <!-- Footer Start -->
        <div class="container-fluid bg-dark  text-white-50 footer pt-5 mt-5 wow fadeIn" data-wow-delay="0.01s">
                <div class="container py-1 ">
                <div class="row g-5 ">
                   <div class="col-lg-3 col-md-2"> 
                        <h3 class="text-white mb-4">聯絡我們</h3>
                        <p class="mb-2"><i class="fa fa-map-marker-alt me-3"></i>臺北市大安區建國南路二段88號</p>
                        <p class="mb-2"><i class="fa fa-phone-alt me-3"></i>(02)2258-8899</p>
                        <p class="mb-2"><i class="fa fa-envelope me-3"></i>star1021142@gmail.com</p>
                        <div class="d-flex pt-2">
                            <a class="btn btn-outline-light btn-social" href=""><i class="fab fa-twitter"></i></a>
                            <a class="btn btn-outline-light btn-social" href=""><i class="fab fa-facebook-f"></i></a>
                            <a class="btn btn-outline-light btn-social" href=""><i class="fab fa-youtube"></i></a>
                            <a class="btn btn-outline-light btn-social" href=""><i class="fab fa-linkedin-in"></i></a>
                        </div>
                    </div>
                    <div class="col-lg-3 col-md-2">
                        <h3 class="text-white mb-4">系統導覽</h3>
                        <a class="btn btn-link text-white-50" href="Counter1.jsp">櫃檯人員首頁</a>
                        <a class="btn btn-link text-white-50" href="Counter2.jsp">媽媽基本資料</a>
                        <a class="btn btn-link text-white-50" href="Counter9.jsp">寶寶基本資料</a>
                        <a class="btn btn-link text-white-50" href="Counter13.jsp">客戶預約</a>
                        <a class="btn btn-link text-white-50" href="Counter16.jsp">使用者權限管理</a>
                       
                       
                    </div>
                    <div class="col-lg-3 col-md-2">
                        <h3 class="text-white mb-4">Photo </h3>
                        <div class="row g-2 pt-2">
                            <div class="col-4">
                                <img class="img-fluid rounded bg-light p-1" src="img/b2869318.jpg" alt="">
                            </div>
                            <div class="col-4">
                                <img class="img-fluid rounded bg-light p-1" src="img/1112.jpg" alt="">
                            </div>
                            <div class="col-4">
                                <img class="img-fluid rounded bg-light p-1" src="img/1111.jpg" alt="">
                            </div>
                            
                        </div>
                    </div>
                    
                    </div>
                </div>
            </div>
            <div class="container bg-dark">
                <div class="copyright">
                    <div class="row">
                        <div class="col-md-6 text-center text-md-start mb-3 mb-md-0">
				            &copy;蘊星產後護理之家, All Right Reserved. 
							Designed By <a class="border-bottom" href="#">蘊星產後護理之家</a>
			            </div>
                    </div>
                </div>
                </div>
            </div>
        
        <!-- Footer End -->





     

    <!-- JavaScript Libraries -->
    <script src="https://code.jquery.com/jquery-3.4.1.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0/dist/js/bootstrap.bundle.min.js"></script>
    <script src="lib/wow/wow.min.js"></script>
    <script src="lib/easing/easing.min.js"></script>
    <script src="lib/waypoints/waypoints.min.js"></script>
    <script src="lib/owlcarousel/owl.carousel.min.js"></script>

    <!-- Template Javascript -->
    <script src="js/main.js"></script>
</body>

</html>