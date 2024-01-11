<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@page import="java.sql.*"%>
<jsp:useBean id='objDBConfig' scope='session' class='hitstd.group.tool.database.DBConfig' />
<%
	if(request.getParameter("SearchID") !=null){
    	Class.forName("net.ucanaccess.jdbc.UcanaccessDriver");
		Connection con=DriverManager.getConnection("jdbc:ucanaccess://"+objDBConfig.FilePath()+";");
		Statement smt= con.createStatement(ResultSet.TYPE_SCROLL_INSENSITIVE,ResultSet.CONCUR_READ_ONLY);
		String getmatdata = "SELECT * FROM MatForm WHERE MatID='"+request.getParameter("SearchID")+"'";
		ResultSet matts = smt.executeQuery(getmatdata);
	if(matts.next()){
		session.setAttribute("UserID",request.getParameter("SearchID"));
		session.setAttribute("UserNO",matts.getString("Mat_SeqNO"));
		session.setAttribute("UserFamNO",matts.getString("MatFamName"));
		//String redirectPage = paperrs.getString("RedirectPage");
		response.sendRedirect("Counter3.jsp");
	}else
		out.println("錯誤身份證字號，請重新輸入");
}
%>
<html>
<head>
<meta charset="UTF-8">
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
                     <a href="Counter2.jsp" class="nav-item nav-link">媽媽基本資料</a>
                     <a href="Counter9.jsp" class="nav-item nav-link">寶寶基本資料</a>
                     <a href="Counter13.jsp" class="nav-item nav-link">客戶預約</a>
                     <a href="Counter16.jsp" class="nav-item nav-link">使用者權限管理</a>
                 </div>
             </div>
             <a href="Index.jsp" class="btn btn-primary rounded-pill px-3 d-none d-lg-block">使用者登出<i class="fa fa-arrow-right ms-3"></i></a>
        </nav>
        <!-- Navbar End -->
        
         <!-- 媽媽查詢 -->
		<form method="POST" action="Counter2_DB.jsp">
		<br><h2 align="center">媽媽基本資料查詢</h2><br>
		      
		      <h5>&emsp; &emsp; 媽媽身分證字號 <input type="text" placeholder="輸入媽媽身分證字號..." name="SearchID" required> 
		      <button type="submit" name="searchBtn" value="查詢" > 確認</button>  <a href="Counter4.jsp"> <button type="button" style="background:#F8CECC" > 新增資料</button></a></h5> 
		         <div class="container-xxl py-3">
		            
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