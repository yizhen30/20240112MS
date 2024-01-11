<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@page import="java.sql.*"%>
<jsp:useBean id='objDBConfig' scope='session' class='hitstd.group.tool.database.DBConfig' />
<html>
<head>
    <meta charset="UTF-8">
   <title>櫃檯人員-客戶預約紀錄</title>
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
            <a href="counter1.html" class="navbar-brand">
                <h1 class="m-0 text-primary"><i class="fa fa-star me-3"></i>蘊星產後護理之家</h1>
            </a>
            <button type="button" class="navbar-toggler" data-bs-toggle="collapse" data-bs-target="#navbarCollapse">
                <span class="navbar-toggler-icon"></span>
            </button>
            <div class="collapse navbar-collapse" id="navbarCollapse">
                <div class="navbar-nav mx-auto">
                     <a href="Counter2.jsp" class="nav-item nav-link">媽媽基本資料</a>
                     <a href="Counter9.jsp" class="nav-item nav-link">寶寶基本資料</a>
                     <a href="Counter13.jsp" class="nav-item nav-link">客戶預約</a>
                     
                 </div>
             </div>
             <a href="Index.jsp" class="btn btn-primary rounded-pill px-3 d-none d-lg-block">使用者登出<i class="fa fa-arrow-right ms-3"></i></a>
        </nav>
        <!-- Navbar End -->
		<%request.setCharacterEncoding("UTF-8"); %>
		<%
			Class.forName("net.ucanaccess.jdbc.UcanaccessDriver");
			Connection con=DriverManager.getConnection("jdbc:ucanaccess://"+objDBConfig.FilePath()+";");
			Statement smt= con.createStatement();
			String sql = "SELECT * FROM AppointmentVisit left JOIN VisitTime ON AppointmentVisit.VisitTime = VisitTime.VisitTime_SeqNO";
			String sql1 = "SELECT * FROM StayingDay";
			String sql2 = "SELECT * FROM Companions";
			String sql3 = "SELECT * FROM MatForm left JOIN MatCheckIn ON MatForm.Mat_SeqNO = MatCheckIn.Mat_SeqNO";
			ResultSet rs = smt.executeQuery(sql);
			ResultSet rs1 = smt.executeQuery(sql1);
			ResultSet rs2 = smt.executeQuery(sql2);
			ResultSet rs3 = smt.executeQuery(sql3);
			rs.next();
			rs1.next();
			rs2.next();
			rs3.next();
		%>
        <br><h2 style="color:black"align="center"><b>客戶預約參觀記錄</b></h2><br>

     <h5>&emsp;預約參觀日期 <input type="date"> 預約時段<select style="width:150px;">
			                            <option selected></option>
                                        <option value="1">AM9:00~12:00</option>
                                        <option value="2">PM13:00~16:00</option>
                                        <option value="3">PM17:00~19:00</option>
                                        </select><a href="#"> <button type="button" > 搜尋</button></a></h5> 
         <div class="container-xxl py-3">
            <div class="container">
                <div class="bg-light rounded">
                    <div class="row g-0">
                        <div class= data-wow-delay="0.1s" style="min-height: 400px;">
                            
			<table style="width:100%">
			  <tr>
			    <th>預約參觀日期</th>
			    <th>預約時段</th>
			    <th>媽媽姓名</th>
			    <th>電子郵件</th>
			    <th>聯絡電話</th>
			    <th>預產期</th>
			    <th>想入住天數</th>
			    <th>攜伴人數</th>
			    <th>其他留言</th>
			  </tr>
			  
			  <tr>
			    <td><%=rs.getString("VisitDate")%></td>
			    <td><%=rs.getString("VisitTime.VisitTime")%></td>
			  	<td><%=rs.getString("VisitName")%></td>
			    <td><%=rs.getString("VisitEmail")%></td>
			    <td><%=rs.getString("VisitPhone")%></td>
			    <td><%=rs.getString("DueDate")%></td>
			    <td><%=rs1.getString("StayingDay.StayingDay")%></td>
			    <td><%=rs2.getString("Companions.Companions")%></td>
			    <td><%=rs.getString("Message")%></td>
			  </tr>
			</table>
                    </div>
                </div>
            </div>
        </div>


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
        </div>
        <!-- Footer End -->
		<!-- Back to Top -->
        <a href="#" class="btn btn-lg btn-primary btn-lg-square back-to-top"><i class="bi bi-arrow-up"></i></a>
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