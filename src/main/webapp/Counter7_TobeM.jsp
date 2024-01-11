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
                     <a href="Counter16.jsp" class="nav-item nav-link">使用者權限管理</a>
                 </div>
             </div>
             <a href="Index.jsp" class="btn btn-primary rounded-pill px-3 d-none d-lg-block">使用者登出<i class="fa fa-arrow-right ms-3"></i></a>
        </nav>
        <!-- Navbar End -->
        
        <%request.setCharacterEncoding("utf-8"); %>
		<%
			Class.forName("net.ucanaccess.jdbc.UcanaccessDriver");
			Connection con=DriverManager.getConnection("jdbc:ucanaccess://"+objDBConfig.FilePath()+";");
			//out.println("Con= "+con);
			Statement smt= con.createStatement();
			Statement smt1= con.createStatement();
			String sql = "SELECT * FROM MatForm left JOIN MatFamForm ON MatForm.RelWithEC = MatFamForm.MatFam_SeqNO";
			String sql1 = "SELECT * FROM MatForm left JOIN ModPro ON MatForm.ModPro = ModPro.MP_SeqNO";
			String sql2 = "SELECT * FROM MatForm left JOIN BloodType ON MatForm.MatBT = BloodType.BT_SeqNO";
			String sql3 = "SELECT * FROM MatForm left JOIN RelWithEC ON MatForm.RelWithMF = RelWithEC.RWE_SeqNO";
			String sql4 ="SELECT * FROM MatForm left JOIN MatCheckIn ON MatForm.Mat_SeqNO = MatCheckIn.Mat_SeqNO";
			String sql5 = "SELECT * FROM MatForm INNER JOIN MatFamForm ON MatForm.MatID = MatFamForm.MatID";
			String sql6 = "SELECT * FROM MatForm left JOIN DiePre ON MatForm.DiePre = DiePre.DiePre_SeqNO";
			String sql7 ="SELECT * FROM MatForm left JOIN MatCheckIn ON MatForm.MatID = MatCheckIn.MatID";
			ResultSet mm = smt1.executeQuery(sql);
			ResultSet mm1 = smt.executeQuery(sql1);
			ResultSet mm2 = smt.executeQuery(sql2);
			ResultSet mm3 = smt1.executeQuery(sql3);
			ResultSet mmc = smt.executeQuery(sql4);
			ResultSet rs = smt.executeQuery(sql5);
			ResultSet mm6 = smt.executeQuery(sql6);
			ResultSet mmc1 = smt.executeQuery(sql7);
			mm.next();
			mm1.next();
			mm2.next();
			mm3.next();
			mmc.next();
			rs.next();
			mm6.next();
			mmc1.next();
			//rs1.next();
		%>
        
	<br><h2 align="center">修改媽媽基本資料</h2><br>
	
		<table style="width:30%" align="right"> 
			<tr>
			<th>入住日期</th>
			<td><%out.println(mmc1.getString("MatCheckIn.CheckInDate"));%></td></tr>
		</table>
	   <form action="Counter7Edit_DBUpdate.jsp?MatID=<%=request.getParameter("MatID")%>" method="post" name="form">
	          <div class="container">
	              <div class="bg-light rounded">
	                 <div class="row g-0">
	                    <div class= data-wow-delay="0.1s" style="min-height: 400px;">
                      	 <br> <table width="1300" >
						 <tr>
						    <td >媽媽代碼</td>
						    <td ><input value="M0000<%out.println(mm.getString("Mat_SeqNO"));%>" size="30" readonly></td>
						    <td ></td>
						    <td ></td>
						  </tr>
						<tr>
						    <td >姓名</td>
						    <td ><input name="MatName" value="<%out.println(mm.getString("MatName"));%>" size="30" required ></td>
						    <td>生產方式</td>
						    <td>
						    <select name="ModPro" width="300" style="width: 260px" required >
						    <option>原生產方式為<%out.println(mm1.getString("ModPro.ModPro"));%>，請選擇：
						    <option value=V>自然產
						    <option value=C>剖腹產
						    </select>
						    </td>
						    
						  </tr>
						  <tr>
						    <td>身分證字號</td>
						    <td><input name="MatID_Edit" value="<%out.println(mm.getString("MatID"));%>"size="30" maxlength="10" readonly></td>
						    <td>出生年月日</td>
						    <td><input type="date" max="2006-12-31" min="1966-01-01" name="MatHBD" value="<%out.println(mm.getString("MatHBD"));%>" width="300" style="width: 260px"  placeholder="19XX/XX/XX" required ></td>
						  </tr>
						  <tr>
						     <td>飲食注意事項</td>
						    <td>
						    <select name="DiePre"  width="300" style="width: 260px"  required >
						    <option>原為<%out.println(mm6.getString("DiePre.DiePre"));%>，請選擇：
						    <option value="1">葷</option>
                            <option value="2">全素</option>
                            <option value="3">蛋奶素</option>
                            <option value="3">五辛素</option>
						    </select>
						    </td>
						    <td>血型</td>
						    <td>
						    <select name="MatBT" width="300" style="width: 260px" required >
						    <option>原血型為<%out.println(mm2.getString("BloodType.BloodType"));%>，請選擇：
						    <option value=A>A型
						    <option value=B>B型
						    <option value=C>AB型
						    <option value=D>O型
						    <option value=E>None(未確認)
						    </td>
						  </tr>
						   <tr>
						    <td >緊急聯絡人姓名</td>
						    <td ><input name="MatFamForm.MatFamName" value="<%out.println(rs.getString("MatFamForm.MatFamName"));%>"  size="30" required ></td>
						    <td>緊急聯絡人聯絡電話</td>
						    <td><input name="MatFamForm.ConPhone" value="<%out.println(rs.getString("MatFamForm.ConPhone"));%>" size="30" maxlength="10" placeholder="09XXXXXXXX" required ></td>
						   </tr>
						    <tr>
						    <td>緊急聯絡人關係</td>
						    <td>
						    <select name="MatForm.RelWithMF" width="300" style="width: 260px" required >
						    <option>原關係為<%out.println(mm3.getString("RelWithEC.RelWithEC"));%>，請選擇：
						    <option value=1>夫妻
						    <option value=2>父母
						    <option value=3>兄弟姊妹
						    <option value=4>其他
						    </select>
						    </td>
						    <td>行動電話</td>
						    <td><input name="ConPhone" value="<%out.println(mm.getString("ConPhone"));%>"size="30" maxlength="10" required ></td>
						    </tr>
						     <tr>
						    <td>電子郵件</td>
						    <td><input name="MatEmail" value="<%out.println(mm.getString("Email"));%>" size="30"  placeholder="XXX@gmail.com" required></td>
						    <td>其他備註</td>
						    <td><input value=""size="30" ></td>
						    
						    </tr>
						</table>
						<br><h5 align="right">
						<button type="submit" style="background:#FF9999">完成修改</button> <a href="Counter2.jsp"><button type="button"style="background:#FFF2E0">返回搜尋頁</button></a></h5>
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