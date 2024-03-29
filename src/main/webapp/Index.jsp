<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@page import="java.sql.*"%>
<jsp:useBean id='objDBConfig' scope='session' class='hitstd.group.tool.database.DBConfig' />

<html>
<head>
	<meta charset="UTF-8">
	<title>蘊星產後護理之家</title>
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
	<div class="container-xxl bg-white p-0">
        <!-- 旋轉器 -->
        <div id="spinner" class="show bg-white position-fixed translate-middle w-100 vh-100 top-50 start-50 d-flex align-items-center justify-content-center">
            <div class="spinner-border text-primary" style="width: 3rem; height: 3rem;" role="status">
                <span class="sr-only">Loading...</span>
            </div>
        </div>
        <!-- 旋轉器 End -->

        <!-- 雲朵邊條（最頂端） -->
        <nav class="navbar navbar-expand-lg bg-white navbar-light sticky-top px-4 px-lg-5 py-lg-0">
            <a href="index.html" class="navbar-brand">
                <h1 class="m-0 text-primary"><i class="fa fa-star"></i>蘊星產後護理之家</h1>
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
                
                <a href="Login.jsp" class="btn btn-primary rounded-pill px-3 d-none d-lg-block">使用者登入<i class="fa fa-arrow-right ms-3"></i></a>
            </div>
        </nav>
        <!-- 雲朵邊條 End -->
		<!-- 封面刊登圖  -->
	        <div class="container-fluid p-0 mb-5">
	              <div class="owl-carousel header-carousel position-relative">
	                <div class="owl-carousel-item position-relative">
	                    <img class="img-fluid" src="img/1212.png" alt="">
	                    <div class="position-absolute top-0 start-0 w-100 h-100 d-flex align-items-center" style="background: rgba(0, 0, 0, .2);">
	                        <div class="container">
	                            <div class="row justify-content-start">
	                                <div class="col-10 col-lg-8">
	                                    <h1 class="display-2 text-white animated slideInDown mb-4">歡迎來到蘊星</h1>
	                                    <p class="fs-3 fw-medium text-white mb-4 pb-2">
		                                    蘊星擁有最專業的照護團隊，
		                                    提供產婦及新生兒完善的照護，<br>
		                                    擁有24小時全天候服務、多元化課程、寶寶線上探視等專業服務。
	                                    </p>                                    
	                                </div>
	                            </div>
	                        </div>
	                    </div>
	                </div>
	            </div> 
	        </div>
    	<!-- 封面刊登圖 End -->
    	
		<!-- 關於蘊星 -->
	        <div class="container-xxl py-5">
	            <div class="container">
	                <div class="text-center mx-auto mb-5 wow fadeInUp" data-wow-delay="0.1s" style="max-width: 600px;">
	                    <h2 class="mb-3">關於蘊星</h2>
	                    <p>蘊星擁有完整的專業照護及設備</p>
	                </div>
	                
	                <div class="row g-4">
	                    <div class="col-lg-3 col-sm-6 wow fadeInUp" data-wow-delay="0.1s">
	                        <div class="facility-item">
	                            <div class="facility-icon bg-primary">
	                                <span class="bg-primary"></span>
	                                <i class="fa fa-user-md fa-3x text-primary"></i>
	                                <span class="bg-primary"></span>
	                            </div>
	                            <div class="facility-text bg-primary">
	                                <h3 class="text-primary mb-3">專業醫療照護團隊</h3>
	                                <p class="mb-0">合格專業護理人員全天候輪班照護，提供完善的照護服務。</p>
	                            </div>
	                        </div>
	                    </div>
	                    
	                    <div class="col-lg-3 col-sm-6 wow fadeInUp" data-wow-delay="0.3s">
	                        <div class="facility-item">
	                            <div class="facility-icon bg-success">
	                                <span class="bg-success"></span>
	                               <i class="fa fa-female fa-3x text-success"></i>
	                                <span class="bg-success"></span>
	                            </div>
	                            <div class="facility-text bg-success">
	                                <h3 class="text-success mb-3">產婦完善照護</h3>
	                                <p class="mb-0">專業護理師產後媽咪的傷口檢查及教導子宮按摩；專業護理師協助正確擠乳、哺乳姿勢及脹奶處理；定期打掃消毒房間及更換寢具，提供最舒適的環境。</p>
	                            </div>
	                        </div>
	                    </div>
	                    
	                    <div class="col-lg-3 col-sm-6 wow fadeInUp" data-wow-delay="0.5s">
	                        <div class="facility-item">
	                            <div class="facility-icon bg-warning">
	                                <span class="bg-warning"></span>
	                                <i class="fa fa-baby fa-3x text-warning"></i>
	                                <span class="bg-warning"></span>
	                            </div>
	                            <div class="facility-text bg-warning">
	                                <h3 class="text-warning mb-3">寶寶完善照護</h3>
	                                <p class="mb-0">護理人員每日紀錄寶寶健康測量數值、觀察寶寶發育情形。</p>
	                            </div>
	                        </div>
	                    </div>
	                    
	                    <div class="col-lg-3 col-sm-6 wow fadeInUp" data-wow-delay="0.7s">
	                        <div class="facility-item">
	                            <div class="facility-icon bg-info">
	                                <span class="bg-info"></span>
	                                <i class="fa fa-solid fa-utensils fa-3x text-info"></i>
	                                <span class="bg-info"></span>
	                            </div>
	                            <div class="facility-text bg-info">
	                                <h3 class="text-info mb-3">養生月子餐</h3>
	                                <p class="mb-0">由專業營養師安排養生月子餐方案，每日近30道膳食組合，營養美味，為您健康把關!</p>
	                            </div>
	                        </div>
	                    </div>
	                </div>
	            </div>
	        </div>
        <!-- 關於蘊星 End --> 
        
        <!-- 醫療團隊 -->
	        <div class="container-xxl py-5">
	            <div class="container">
	                <div class="bg-light rounded">
	                    <div class="row g-0">
	                        <div class="col-lg-6 wow fadeIn" data-wow-delay="0.1s" style="min-height: 400px;">
	                            <div class="position-relative h-100">
	                                <img class="position-absolute w-100 h-100 rounded" src="img/doctor6129507.jpg" style="object-fit: cover;">
	                            </div>
	                        </div>
	                        
	                        <div class="col-lg-6 wow fadeIn" data-wow-delay="0.5s">
	                            <div class="h-100 d-flex flex-column justify-content-center p-5">
	                                <h1 class="mb-4"align="center">專業醫療團隊</h1>
	                                <p class="mb-4"align="center">
	                                <ul>
			                            <li>婦產科及小兒科醫師主治醫療團隊</li>
			                            <li>合格專業護理人員全天候輪班照護</li>
			                            <li>專任醫師產後健康及育兒專題講座</li>
			                            <li>完善的醫療照護服務</li>
		                            </ul>     
	                        	</div>
	                        </div>
	                    </div>
	                </div>
	            </div>
	        </div>
        <!-- 醫療團隊 End -->
        
        <!-- 產婦完善照護 -->
	        <div class="container-xxl py-5">
	            <div class="container">
	                <div class="bg-light rounded">
	                    <div class="row g-0">
	                        <div class="col-lg-6 wow fadeIn" data-wow-delay="0.1s">
	                            <div class="h-100 d-flex flex-column justify-content-center p-5">
	                                <h1 class="mb-4"align="center">產婦完善照護</h1>
	                                 <p class="mb-4"align="center">
	                                 <ul>
		                          		<li>​​​專業護理師產後媽咪的傷口檢查及教導子宮按摩</li>
		                           		<li>專業護理師協助正確擠乳、哺乳姿勢及脹奶處理</li>
		                            	<li>定期打掃消毒房間及更換寢具，提供最舒適的環境</li>
		                             	<li>提供多元化活動及課程，讓產婦可以選擇</li>
		                             	<li>古早產後藥浴配方，提供媽咪擦澡幫助提升血氣</li>
	                            	 </ul>        
	                            </div>
	                        </div>
	                        
	                        <div class="col-lg-6 wow fadeIn" data-wow-delay="0.5s" style="min-height: 400px;">
	                            <div class="position-relative h-100">
	                                <img class="position-absolute w-100 h-100 rounded" src="img/baby3875229.jpg" style="object-fit: cover;">
	                            </div>
	                        </div>
	                    </div>
	                </div>
	            </div>
	        </div>
        <!-- 產婦完善照護 End -->
        
        <!-- 寶寶完善照護 -->
	        <div class="container-xxl py-5">
	            <div class="container">
	                <div class="bg-light rounded">
	                    <div class="row g-0">
	                        <div class="col-lg-6 wow fadeIn" data-wow-delay="0.1s" style="min-height: 400px;">
	                            <div class="position-relative h-100">
	                                <img class="position-absolute w-100 h-100 rounded" src="img/baby265987.jpg" style="object-fit: cover;">
	                            </div>
	                        </div>
	                        
	                        <div class="col-lg-6 wow fadeIn" data-wow-delay="0.5s">
	                            <div class="h-100 d-flex flex-column justify-content-center p-5">
	                                <h1 class="mb-4"align="center">寶寶完善照護</h1>
	                                <p class="mb-4"align="center">
	                                <ul>
			                             <li>​​​護理人員每日紀錄寶寶健康測量數值、觀察寶寶發育情形</li>
			                             <li>專任小兒科醫師每週檢視寶寶成長與發展情形等</li>
			                             <li>​提供產婦家屬線上探視</li>
			                             <li>設置獨立的母乳冰庫</li>
			                             <li>嬰兒室備醫療級空氣清靜機</li>
			                             <li>非侵入黃疸測試儀及清淨機</li>
			                             <li>高壓滅菌消毒鍋、逆滲透純水器、負離子奶消鍋</li>
	                            	</ul>            
	                        	</div>
	                        </div>
	                    </div>
	                </div>
	            </div>
	        </div>
        <!-- 寶寶完善照護 End -->
        
        
        <!-- 養生月子餐 -->
	        <div class="container-xxl py-5">
	            <div class="container">
	                <div class="bg-light rounded">
	                    <div class="row g-0">
	                        <div class="col-lg-6 wow fadeIn" data-wow-delay="0.1s">
	                            <div class="h-100 d-flex flex-column justify-content-center p-5">
	                                <h1 class="mb-4"align="center">養生月子餐</h1>
	                                <p class="mb-4"align="center">
			                        <ul>
			                          <li>​​​嚴選多樣化新鮮食材</li>
			                          <li>由專業營養師安排養生月子餐方案</li>
			                          <li>每日近 30道膳食組合，營養美味，為您健康把關!</li>
			                          <li>專屬客製化膳食，依個人需求調整</li>
			                          <li>衛生局合格認證中央廚房，通過CAS台灣優良農產品認證、SGS檢驗合格食材，專業全方位流程控管，將食品安全永遠放在第一位！</li>
			                        </ul>       
	                            </div>
	                        </div>
	                        <div class="col-lg-6 wow fadeIn" data-wow-delay="0.5s" style="min-height: 400px;">
	                            <div class="position-relative h-100">
	                                <img class="position-absolute w-100 h-100 rounded" src="img/ch12456.jpg" style="object-fit: cover;">
	                            </div>
	                        </div>
	                    </div>
	                </div>
	            </div>
	        </div>
        <!-- 養生月子餐 End --> 
          	
    	<!-- 聯絡我們 -->
        	<div class="container-fluid bg-dark text-white-50 footer pt-5 mt-5 wow fadeIn" data-wow-delay="0.01s">
            	<div class="container py-2">
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
	                        <h3 class="text-white mb-4">Photo</h3>
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
        <!-- 聯絡我們 End -->


        <!-- 回到最上端 -->
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