<%@page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@page import="java.sql.*"%>
<%@page import="java.io.*,java.util.*" %>
<%@page import="javax.servlet.*,java.text.*" %>
<%@page import="tool.mail.JavaMail" %>
<jsp:useBean id='objDBConfig' scope='session' class='hitstd.group.tool.database.DBConfig' />

<html>
<head>
	<meta charset="UTF-8">
	<title>蘊星產後護理之家-預約參觀頁面</title>
    <meta content="width=device-width, initial-scale=1.0" name="viewport">
    <meta content="" name="keywords">
    <meta content="" name="description">
    <meta name="viewport" content="width=device-width,initial-scale=1,user-scalable=no">
    <meta http-equiv="Cache-Control" content="no-cache, no-store, must-revalidate" />
	<meta http-equiv="Pragma" content="no-cache" />
	<meta http-equiv="Expires" content="0" />

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
            <a href="index.html" class="navbar-brand">
                <h1 class="m-0 text-primary"><i class="fa fa-star"></i>蘊星產後護理之家</h1>
            </a>
            <button type="button" class="navbar-toggler" data-bs-toggle="collapse" data-bs-target="#navbarCollapse">
                <span class="navbar-toggler-icon"></span>
            </button>
            <div class="collapse navbar-collapse" id="navbarCollapse">
                <div class="navbar-nav mx-auto">
                    <a href="index.html" class="nav-item nav-link active">Home</a>
                    <a href="about.html" class="nav-item nav-link">蘊星房型</a>
                     <a href="questions.html" class="nav-item nav-link">常見問題</a>
                    <a href="appointment.html" class="nav-item nav-link">預約參觀</a>
                    <a href="contact.html" class="nav-item nav-link">聯絡我們</a>
                </div>
                <a href="login.html" class="btn btn-primary rounded-pill px-3 d-none d-lg-block">使用者登入<i class="fa fa-arrow-right ms-3"></i></a>
            </div>
        </nav>
        <!-- Navbar End -->


        <!-- Page Header End -->
        <div class="container-xxl py-5 page-header position-relative mb-5">
            <div class="container py-5">
                <h1 class="display-2 text-white animated slideInDown mb-4">預約參觀</h1>
                <nav aria-label="breadcrumb animated slideInDown">
                    <ol class="breadcrumb">
                        <li class="breadcrumb-item"><a href="#">Home</a></li>
                        
                        <li class="breadcrumb-item text-white active" aria-current="page">預約參觀</li>
                    </ol>
                </nav>
            </div>
        </div>
        <!-- Page Header End -->


        


        <!-- Appointment Start -->
        <div class="container-xxl py-5">
            <div class="container">
                <div class="bg-light rounded">
                    <div class="row g-0">
                        <div class="col-lg-6 wow fadeIn" data-wow-delay="0.1s">
                            <div class="h-100 d-flex flex-column justify-content-center p-5">
                                <h1 class="mb-4"align="center">預約參觀</h1>
                                
                            <form action="AppointInsert_DB.jsp" method="get">
                            <div class="row g-3">
                            	<!--　媽媽姓名　-->
	                                <div class="col-12 col-sm-6">
	                                   <input type="text" class="form-control border-0" placeholder="媽媽姓名" 
	                                   name="Name" style="height: 55px;">
	                                </div>                                
                                <!--　－－－－　-->
                                
                                <!--　預約日期　 -->
	                                <div class="col-12 col-sm-6">
	                                    <div class="date" id="date" data-target-input="nearest">
	                                        <input type="date"
	                                            class="form-control border-0 datetimepicker-input"
	                                            placeholder="預約日期" data-target="#date" data-toggle="datetimepicker" 
	                                            name="VisitDate" style="height: 55px;">
	                                    </div>
	                                </div>
                                <!--　－－－－　-->
	                     
                                <!--　Email　-->
                                                                	
                                	<div class="col-12 col-sm-6">
	                                    <input type="email" class="form-control border-0" name="Email" style="height: 55px;"placeholder="請填寫您的信箱" required>
	                                </div> 
	                            
	                                
                                <!--　－－－－　-->
                                                                                             
                                <!--　預約時段　-->	                                
	                                <div class="col-12 col-sm-6">
                                    <select class="form-select border-0" name="VisitTime" style="height: 55px;">
                                        <option selected>預約時段</option>
                                        <option value="1">AM9:00~12:00</option>
                                        <option value="2">PM13:00~16:00</option>
                                        <option value="3">PM17:00~19:00</option>
                                       
                                    </select>
                                </div>
                                <!--　－－－－　-->
                                
                                <!--　聯絡電話　-->
	                                <div class="col-12 col-sm-6">
                                    	<input type="text" class="form-control border-0" placeholder="聯絡電話" 
                                    	name="Phone" style="height: 55px;">
                               		</div>
                                <!--　－－－－　-->
                                
                                <!--　攜伴人數　-->
	                                <div class="col-12 col-sm-6">
	                                    <select class="form-select border-0" name="Companions" style="height: 55px;">
	                                        <option selected>攜伴人數</option>
	                                        <option value="1">1人</option>
	                                        <option value="2">2人</option>
	                                        <option value="3">3人</option>
	                                        <option value="4">4人以上</option>
	                                    </select>
                                	</div>
                                <!--　－－－－　-->
                                
                                <!--　 預產期　　 -->	                                
	                                <div class="col-12 col-sm-6">
	                                    <div class="date" id="date" data-target-input="nearest">
	                                        <input type="date"
	                                            class="form-control border-0 datetimepicker-input"
	                                            placeholder="預產期" data-target="#date" data-toggle="datetimepicker" 
	                                            name="DueDate" style="height: 55px;">
	                                    </div>
	                                </div>
                                <!--　 －－－－　 -->
                                
                                <!--　 　胎次　　 -->
	                                <div class="col-12 col-sm-6">
	                                    <select class="form-select border-0" name="Parity" style="height: 55px;">
	                                        <option selected>胎次</option>
	                                        <option value="1">第一胎</option>
	                                        <option value="2">第二胎</option>
	                                        <option value="3">第三胎</option>
	                                        <option value="4">其他</option>
	                                    </select>
	                                </div>
                                <!--　 －－－－　 -->
                                
                                <!--　想入住天數  -->
                                	<div class="col-12 col-sm-6">
	                                    <select class="form-select border-0" name="Day" style="height: 55px;">
	                                        <option selected>想入住天數</option>
	                                        <option value="1">15天</option>
	                                        <option value="2">20天</option>
	                                        <option value="3">30天</option>
	                                        <option value="4">尚未決定</option>
	                                    </select>
	                                </div>
                                <!--　 －－－－　 -->
                                
                                <!--　胎次＿其他  -->
	                                <div class="col-12 col-sm-6">
	                                    <input type="text" class="form-control border-0" placeholder="胎次_其他" 
	                                    name="ParityOther" style="height: 55px;">
	                                </div>
                                <!--　 －－－－　 -->
                                
                                <!--　 其他留言　 -->
                                	<div class="col-12">
	                                    <textarea class="form-control border-0" rows="5" placeholder="其他留言" name="Message"></textarea>
	                                </div>
                                <!--　 －－－－　 -->
                                
                                <div class="col-12 col-sm-6">
	                                <div class="col-12">
	                                    <button class="btn btn-primary w-100 py-3" type="submit">送出</button>
	                                </div>
                            	</div>
                            	
                            </div>
                        </form>
                        
                            </div>
                            </div>
                            <div class="col-lg-6 wow fadeIn" data-wow-delay="0.5s" style="min-height: 400px;">
                            <div class="position-relative h-100">
                                <img class="position-absolute w-100 h-100 rounded" src="img/b2869318.jpg" style="object-fit: cover;">
                            </div>
                        </div>
                       
                    </div>
                </div>
            </div>
        </div>
        <!-- Appointment End -->


       


        
        <!-- Footer Start -->
        <div class="container-fluid bg-dark text-white-50 footer pt-5 mt-5 wow fadeIn" data-wow-delay="0.1s">
            <div class="container py-5">
                <div class="row g-5">
                    <div class="col-lg-3 col-md-6">
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
                    <div class="col-lg-3 col-md-6">
                        <h3 class="text-white mb-4">網頁導覽</h3>
                        <a class="btn btn-link text-white-50" href="index.html">Home</a>
                        <a class="btn btn-link text-white-50" href="about.html">蘊星房型</a>
                         <a class="btn btn-link text-white-50" href="questions.html">常見問題</a>
                        <a class="btn btn-link text-white-50" href="appointment.html">預約參觀</a>
                        <a class="btn btn-link text-white-50" href="contact.html">聯絡我們</a>
                    </div>
                    <div class="col-lg-3 col-md-6">
                        <h3 class="text-white mb-4">Photo </h3>
                        <div class="row g-2 pt-2">
                            <div class="col-4">
                                <img class="img-fluid rounded bg-light p-1" src="img/b2869318.jpg" alt="">
                            </div>
                            <div class="col-4">
                                <img class="img-fluid rounded bg-light p-1" src="img/b2869318.jpg" alt="">
                            </div>
                            <div class="col-4">
                                <img class="img-fluid rounded bg-light p-1" src="img/b2869318.jpg" alt="">
                            </div>
                            
                        </div>
                    </div>
                    
                    </div>
                </div>
            </div>
            <div class="container">
                <div class="copyright">
                    <div class="row">
                        <div class="col-md-6 text-center text-md-start mb-3 mb-md-0">
                            &copy; <a class="border-bottom" href="#">蘊星產後護理之家</a>, All Right Reserved. 
							
							<!--/*** This template is free as long as you keep the footer author’s credit link/attribution link/backlink. If you'd like to use the template without the footer author’s credit link/attribution link/backlink, you can purchase the Credit Removal License from "https://htmlcodex.com/credit-removal". Thank you for your support. ***/-->
							Designed By <a class="border-bottom" href="https://htmlcodex.com">蘊星產後護理之家</a>
                        </div>
                        
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <!-- Footer End -->

        <!-- Back to Top -->
        <a href="#" class="btn btn-lg btn-primary btn-lg-square back-to-top"><i class="bi bi-arrow-up"></i></a>
    </div>

    <!-- JavaScript Libraries -->
    <script src="https://code.jquery.com/jquery-3.4.1.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0/dist/js/bootstrap.bundle.min.js"></script>
    <script src="lib/wow/wow.min.js"></script>
    <script src="lib/easing/easing.min.js"></script>
    <script src="lib/waypoints/waypoints.min.js"></script>
    <script src="lib/owlcarousel/owl.carousel.min.js"></script>

    <!-- Template Javascript -->
    <script src="js/main.js"></script>
<body>


</body>
</html>