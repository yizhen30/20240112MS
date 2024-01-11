<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@page import="java.sql.*"%>
<jsp:useBean id='objDBConfig' scope='session' class='hitstd.group.tool.database.DBConfig' />
<html>
<head>
	<meta charset="UTF-8">
	<title>蘊星產後護理之家-常見問題</title>
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

 <div class="container-xxl py-3">
	            <div class="container">
	                <div class="text-center mx-auto mb-5 wow fadeInUp" data-wow-delay="0.1s" style="max-width: 600px;">
	                    <h2 class="mb-3">常見問題</h2>
	                    
	                </div>
       

<!-- 參觀問題 start -->
 <div class="container-xxl py-0">
            <div class="container">
                <div class="bg-light rounded">
                    <div class="row g-0">
                        <div class="col-lg-6 wow fadeIn" data-wow-delay="0.1s" style="min-height: 400px;">
                            <h2 class="mb-4"style="color:#9933FF">&nbsp;&nbsp;參觀問題</h2>
                                                        <h3 class="mb-4"style="color:#FFCE9F">&nbsp;&nbsp;&nbsp;如何到達蘊星?</h3><p> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;位於臺北市大安區建國南路二段88號<br>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;交通方式: 捷運大安森林公園站 五號出口 步行3分鐘</p>
                                                         <h3 class="mb-4"style="color:#FFCE9F">&nbsp;&nbsp;&nbsp;我想要參觀</h3><p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;1.可以於官網填寫表單參觀，之後將由專人與您聯絡為您安排時段。<br>
                                                       &nbsp;&nbsp;&nbsp; &nbsp;&nbsp;​2.可撥打服務專線:(02)2258-8899 專線服務時間 09:00-18:00</p>

                                                          <h3 class="mb-4"style="color:#FFCE9F">&nbsp;&nbsp;&nbsp;沒有媽媽手冊是否可以參觀?</h3><p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;我們歡迎所有準媽咪來參觀，沒有媽媽手冊也歡迎參觀!</p>
                                                          
                                                             
                            
                        </div>
                       
                    </div>
                </div>
            </div>
        </div>
        <!-- 參觀問題 end -->
 
<!-- 費用 Start -->
        <div class="container-xxl py-3">
            <div class="container">
                <div class="bg-light rounded">
                    <div class="row g-0">
                        <div class= data-wow-delay="0.1s">
                            <h2 class="mb-4"style="color:#9933FF">&nbsp;&nbsp;費用問題</h2>
                            <h3 class="mb-4"style="color:#FFCE9F">&nbsp;&nbsp;&nbsp;費用​包含哪些項目?</h3><p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;費用包含和房費、月子餐、媽咪和寶貝的照護費、媽咪的盥洗用品、哺乳衣、寶寶的尿布、包巾、媽媽教室課程…等等(部分項目會備注需額外收費)</p>
                             <h3 class="mb-4"style="color:#FFCE9F">&nbsp;&nbsp;&nbsp;訂金會收取多少金額?</h3><p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;會收取費用10%唷！例如:預計花費10萬，則收取1萬元為訂金。</p>
                              <h3 class="mb-4"style="color:#FFCE9F">&nbsp;&nbsp;&nbsp;可以刷卡嗎？</h3><p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;具有多元付款方式! 有提供現金、信用卡支付、電子支付方式。</p>
                            </div>
                        </div>
                        
                        </div>
                    </div>
                </div>
            </div>
       
        <!-- 費用 End -->



 
        


       


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