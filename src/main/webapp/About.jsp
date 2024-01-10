<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@page import="java.sql.*"%>
<jsp:useBean id='objDBConfig' scope='session' class='hitstd.group.tool.database.DBConfig' />
<html>
<head>
<meta charset="UTF-8">
    <title>蘊星產後護理之家-蘊星房型</title>
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
            <a href="index.html" class="navbar-brand">
                <h1 class="m-0 text-primary"><i class="fa fa-star me-3"></i>蘊星產後護理之家</h1>
            </a>
            <button type="button" class="navbar-toggler" data-bs-toggle="collapse" data-bs-target="#navbarCollapse">
                <span class="navbar-toggler-icon"></span>
            </button>
            <div class="collapse navbar-collapse" id="navbarCollapse">
                <div class="navbar-nav mx-auto">
                    <a href="Index.jsp"       class="nav-item nav-link active">Home</a>
                    <a href="About.jsp"       class="nav-item nav-link">蘊星房型</a>
                    <a href="Questions.jsp"   class="nav-item nav-link">常見問題</a>
                    <a href="Appointment.jsp" class="nav-item nav-link">預約參觀</a>
                    <a href="Contact.jsp"     class="nav-item nav-link">聯絡我們</a>
                </div>
                    </div>
                
                <a href="Login.jsp" class="btn btn-primary rounded-pill px-3 d-none d-lg-block">使用者登入<i class="fa fa-arrow-right ms-3"></i></a>
          
        </nav>
        <!-- Navbar End -->


        <!-- Page Header End -->
        <div class="container-xxl py-5 page-header position-relative mb-5">
            <div class="container py-5">
                            <h1 class="display-2 text-white animated slideInDown mb-4">蘊星房型</h1>
                <nav aria-label="breadcrumb animated slideInDown">
                    <ol class="breadcrumb">
                        <li class="breadcrumb-item"><a href="#">Home</a></li>
                        
                        <li class="breadcrumb-item text-white active" aria-current="page">蘊星房型</li>
                    </ol>
                </nav>
            </div>
        </div>
        <!-- Page Header End -->
  
  <div class="container-xxl py-5">
            <div class="container">
                <div class="bg-light rounded">
                    <div class="row g-0">
                        <div class="col-lg-6 wow fadeIn" data-wow-delay="0.1s" style="min-height: 400px;">
                            <div class="position-relative h-100">
                                <img class="position-absolute w-100 h-100 rounded" src="img/room6.jpg" style="object-fit: cover;">
                            </div>
                        </div>
                        <div class="col-lg-6 wow fadeIn" data-wow-delay="0.5s">
                            <div class="h-100 d-flex flex-column justify-content-center p-5">
                                <h1 class="mb-4"align="center">蘊星VIP房</h1>
                              <p><p>房間坪數12坪<br>使用高規格天然環保綠建材、安全的消防防火設備、每房皆有對外窗、專屬的感應房卡、獨立空調(含空氣清淨機)、淨水系統。
                               提供哺乳育嬰用品、生活用品、寶寶一對一即時監控、專業智慧醫療系統Pad、液晶電視 + 遙控器、99L單門冰箱、迷你保險箱及放置秒收床邊親子床。提供您最舒適的環境!
                                                                                        </p>
                                
                                
                                                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
  
        <div class="container-xxl py-5">
            <div class="container">
                <div class="bg-light rounded">
                    <div class="row g-0">
                        <div class="col-lg-6 wow fadeIn" data-wow-delay="0.1s" style="min-height: 400px;">
                            <div class="position-relative h-100">
                                <img class="position-absolute w-100 h-100 rounded" src="img/room3.jpg" style="object-fit: cover;">
                            </div>
                        </div>
                        <div class="col-lg-6 wow fadeIn" data-wow-delay="0.5s">
                            <div class="h-100 d-flex flex-column justify-content-center p-5">
                                <h1 class="mb-4"align="center">尊爵房</h1>
                                <p>房間坪數8坪<br>使用高規格天然環保綠建材、安全的消防防火設備、每房皆有對外窗、專屬的感應房卡、獨立空調(含空氣清淨機)、淨水系統。
                               提供哺乳育嬰用品、生活用品、寶寶一對一即時監控、專業智慧醫療系統Pad、液晶電視 + 遙控器、99L單門冰箱、迷你保險箱及放置秒收床邊親子床。提供您最舒適的環境!
                                                                                        </p>
                                
                                                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>

<div class="container-xxl py-5">
            <div class="container">
                <div class="bg-light rounded">
                    <div class="row g-0">
                        <div class="col-lg-6 wow fadeIn" data-wow-delay="0.1s" style="min-height: 400px;">
                            <div class="position-relative h-100">
                                <img class="position-absolute w-100 h-100 rounded" src="img/room5.jpg" style="object-fit: cover;">
                            </div>
                        </div>
                        <div class="col-lg-6 wow fadeIn" data-wow-delay="0.5s">
                            <div class="h-100 d-flex flex-column justify-content-center p-5">
                                <h1 class="mb-4"align="center">景觀房</h1>
                                <p>房間坪數5坪<br>使用高規格天然環保綠建材、安全的消防防火設備、每房皆有對外窗、專屬的感應房卡、獨立空調(含空氣清淨機)、淨水系統。
                               提供哺乳育嬰用品、生活用品、寶寶一對一即時監控、專業智慧醫療系統Pad、液晶電視 + 遙控器、99L單門冰箱、迷你保險箱及放置秒收床邊親子床。提供您最舒適的環境!
                                                                                        </p>
                                                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
       


 <!-- Footer Start -->
        <div class="container-fluid bg-dark text-white-50 footer pt-5 mt-5 wow fadeIn" data-wow-delay="0.01s">
            <div class="container py-3">
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
                             <a class="btn btn-link text-white-50" href="Index.jsp">Home</a>
	                         <a class="btn btn-link text-white-50" href="About.jsp">蘊星房型</a>
	                         <a class="btn btn-link text-white-50" href="Questions.jsp">常見問題</a>
	                         <a class="btn btn-link text-white-50" href="Appointment.jsp">預約參觀</a>
	                         <a class="btn btn-link text-white-50" href="Contact.jsp">聯絡我們</a>
                    </div>
                    <div class="col-lg-3 col-md-6">
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
</body>
</html>