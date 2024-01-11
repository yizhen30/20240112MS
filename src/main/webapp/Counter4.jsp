<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@page import="java.sql.*"%>
<jsp:useBean id='objDBConfig' scope='session' class='hitstd.group.tool.database.DBConfig' />
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
                       
                        </div>
                    </div>
              
               
                <a href="Index.jsp" class="btn btn-primary rounded-pill px-3 d-none d-lg-block">使用者登出<i class="fa fa-arrow-right ms-3"></i></a>
       
        </nav>
        <!-- Navbar End -->
		
<br><h2 align="center">新增媽媽基本資料</h2>
    
       <div class="container-xxl py-3">
            <div class="container">
                <div class="bg-light rounded">
                    <div class="row g-0">
                        <div class= data-wow-delay="0.1s" style="min-height: 280px;">
                   			<form action="Counter4_DBInsert.jsp" method="get">
                   			<br>
                   			<table style="width:100%"align="center">
							  <tr>
							    
							    <th>媽媽姓名</th>
							    <th>身分證字號</th>
							    <th>出生年月日</th>
							    <th>電子郵件</th>
							    <th>行動電話</th>
							  </tr>
			  
							  <tr>
							  
							   <td><input type="text" class="form-control border-2" name="MatName" placeholder="林蘊星" style="height: 40px;width:200px" required/></td>
							   <td><input type="text" class="form-control border-2" name="MatID" placeholder="A223456789" maxlength="10"style="height: 40px;width:200px" required/></td>
							   <td><input type="date" type="date" max="2006-12-31" min="1966-01-01" class="form-control border-2" name="MatHBD" style="height: 40px;width:200px" required/></td>
							   <td><input type="email" class="form-control border-2" name="Email" placeholder="XXXXX@gmail.com" style="height: 40px;width:260px"required/></td>
              				   <td><input type="text" class="form-control border-2" name="ConPhone" placeholder="09-XXXXXXXX" maxlength="10"style="height: 40px;width:200px"required/></td>                      
			 			   	  </tr>
			 			   			   
							  <tr>
							    <th>血型</th>
							    <th>生產方式</th>
							    <th>飲食習慣</th>
							    <th>聯絡地址</th>
							    <th></th>
							  </tr>
			  
							  <tr>
							   <td><select class="form-select border-2" name="MatBT" style="height: 40px;width:200px;"required>
			                       <option selected></option>
                                   <option value="1">A型</option>
                                   <option value="2">B型</option>
                                   <option value="3">AB型</option>
                                   <option value="4">O型</option>
                                   <option value="5">None(未確認))</option>
                                   </select></td>
							   <td><select class="form-select border-2" name="ModPro" style="height: 40px;width:200px;"required>
                                    <option selected></option>
                                    <option value="A">自然產</option>
                                    <option value="B">剖腹產</option>
                                   </select></td>
               				   <td><select class="form-select border-2" name="Diepre" style="height: 40px;width:200px;"required>
                                    <option selected></option>
                                    <option value="1">葷</option>
                                    <option value="2">全素</option>
                                    <option value="3">奶蛋素</option>
                                    <option value="4">奶素</option>
                                    <option value="5">蛋素</option>
                                    <option value="6">植物五辛素</option>
                                    </select></td> 
                               
							   <td><input type="text" class="form-control border-2" name="ConAddress" placeholder="臺北市大安區建國南路二段88號"style="height: 40px;width:260px"required/></td>                          
			 			   	   </tr> 	
			 			   			  
			 			   		<tr>
			 			   		    <th>緊急聯絡人姓名</th> 
								    <th>緊急聯絡人關係</th> 
								    <th>緊急聯絡人電話</th> 
								    <th>備註</th>
						  		</tr>
			  
			  					<tr>
							   		<td><input type="text" class="form-control border-2" name="MatFam_Name" placeholder="陳凱星" style="height: 40px;width:200px"required/></td> 
							   		<td><select class="form-select border-2" name="RelWithMF" style="height: 40px;width:200px"required>
                                        <option selected></option>
                                        <option value="1">夫妻</option>
                                        <option value="2">父母</option>
                                        <option value="3">兄弟姊妹</option>
                                        <option value="4">其他</option>
                                        </select></td>
			   						<td><input type="text" class="form-control border-2" name="MatFamPhone" placeholder="09-XXXXXXXX" maxlength="10" style="height: 40px;width:200px"required/></td>
			   				  		<td><input type="text" class="form-control border-2" name="Remark" style="height: 40px;width:260px"required/></td>
			               	   </tr>	   			   
                           </table>
                          <br>
                        <h5 align="right"><button type="submit"style="background:#FF9999"> 下一頁</button>  <button type="reset"style="background:#FFFF99"> 重新輸入</button> <a href="Counter2.jsp"><button type="button"style="background:#FFF2E0">回上一頁</button></a>&emsp; &emsp; </h5>
                     </form>                         
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
                       <a class="btn btn-link text-white-50" href="counter1.html">櫃檯人員首頁</a>
                        <a class="btn btn-link text-white-50" href="counter2.html">媽媽基本資料</a>
                        <a class="btn btn-link text-white-50" href="counter9.html">寶寶基本資料</a>
                        <a class="btn btn-link text-white-50" href="counter13.html">客戶預約</a>
                        
                       
                       
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