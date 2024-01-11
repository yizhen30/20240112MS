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
	                      <a href="Counter16.jsp" class="nav-item nav-link">使用者權限管理</a>
                        </div>
                    </div>
              
               
                <a href="Index.jsp" class="btn btn-primary rounded-pill px-3 d-none d-lg-block">使用者登出<i class="fa fa-arrow-right ms-3"></i></a>
       
        </nav>
        <!-- Navbar End -->
        <%
		if(request.getParameter("MatID") !=null){
	    	Class.forName("net.ucanaccess.jdbc.UcanaccessDriver");
			Connection conA=DriverManager.getConnection("jdbc:ucanaccess://"+objDBConfig.FilePath()+";");
			Statement smt= conA.createStatement();
			smt.executeUpdate("UPDATE MatForm SET RelWithEC = (SELECT MatFam_SeqNO FROM MatFamForm WHERE MatForm.MatID = MatFamForm.MatID)");
			Statement smtA= conA.createStatement(ResultSet.TYPE_SCROLL_INSENSITIVE,ResultSet.CONCUR_READ_ONLY);
			String getmatdata = "SELECT * FROM MatForm WHERE MatID='"+request.getParameter("MatID")+"'";
			ResultSet matts = smtA.executeQuery(getmatdata);
		if(matts.next()){
			session.setAttribute("InsertID",request.getParameter("MatID"));
			//String redirectPage = paperrs.getString("RedirectPage");
			}
		}
		%>
        
		<%request.setCharacterEncoding("UTF-8"); %>
		<%
			//Class.forName("net.ucanaccess.jdbc.UcanaccessDriver");
			//Connection con=DriverManager.getConnection("jdbc:ucanaccess://"+objDBConfig.FilePath()+";");
			//out.println("Con= "+con);
			//Statement smt= con.createStatement();
			//Statement smt1= con.createStatement();
			//smt.executeUpdate("UPDATE MatForm SET RelWithEC = (SELECT MatFam_SeqNO FROM MatFamForm WHERE MatForm.MatID = MatFamForm.MatID)");
			//String sql = "SELECT * FROM MatForm left JOIN MatFamForm ON MatForm.RelWithEC = MatFamForm.MatFam_SeqNO where MatForm.MatID ='" +session.getAttribute("UserID")+"'";
			//String sql1 = "SELECT * FROM MatForm left JOIN ModPro ON MatForm.ModPro = ModPro.MP_SeqNO where MatForm.MatID ='" +session.getAttribute("UserID")+"'";
			//String sql2 = "SELECT * FROM MatForm left JOIN BloodType ON MatForm.MatBT = BloodType.BT_SeqNO where MatForm.MatID ='" +session.getAttribute("UserID")+"'";
			//String sql3 = "SELECT * FROM MatForm left JOIN RelWithEC ON MatForm.RelWithMF = RelWithEC.RWE_SeqNO where MatForm.MatID ='" +session.getAttribute("UserID")+"'";
			//String sql4 ="SELECT * FROM MatForm left JOIN MatCheckIn ON MatForm.Mat_SeqNO = MatCheckIn.Mat_SeqNO where MatForm.MatID ='" +session.getAttribute("UserID")+"'";
			//String sql5 = "SELECT * FROM MatForm left JOIN MatCheckIn ON MatForm.Mat_SeqNO = MatCheckIn.Mat_SeqNO where MatForm.MatID ='" +session.getAttribute("InsertID")+"'";
			//String sql16 ="SELECT * FROM MatFamForm where MatFamForm.MatID ='" +session.getAttribute("InsertID")+"'";
			//ResultSet mm = smt1.executeQuery(sql);
			//ResultSet mm1 = smt.executeQuery(sql1);
			//ResultSet mm2 = smt.executeQuery(sql2);
			//ResultSet mm3 = smt1.executeQuery(sql3);
			//ResultSet mmc = smt.executeQuery(sql4);
			//ResultSet rs = smt.executeQuery(sql5);
			//ResultSet rs1 = smt1.executeQuery(sql16);
			//mm.next();
			//mm1.next();
			//mm2.next();
			//mm3.next();
			//mmc.next();
			//rs.next();
			//rs1.next();
			%>

<br><h2 align="center">新增媽媽入住資料</h2>
     <div class="container-xxl py-3">
        <div class="container">
           <div class="bg-light rounded">
              <div class="row g-0">
                 <div class= data-wow-delay="0.1s" style="min-height: 230px;">
                   <form action="Counter5_DBInsert.jsp?MatID=<%=request.getParameter("MatID")%>" method="get">
                   <br>
                   <table style="width:100%"align="center">
					  <tr>
					    <th>房型</th>
					    <th>房號</th>
					    </tr>
			  		  <tr>
			  		  <td><select  name="RoomType" class="form-select border-2" style="height: 40px;width:250px;"required>
			              <option selected></option>
                          <option value="R1">景觀房</option>
                          <option value="R2">尊爵房</option>
                          <option value="R3">VIP房</option>
                          </select></td>
			   		  <td><select  name="RoomNo" class="form-select border-2" style="height: 40px;width:250px;"required>
			              <option selected></option>
                          <option value="01">VIP01</option>
                          <option value="02">VIP02</option>
                          <option value="03">VIP03</option>
                          <option value="04">VIP04</option>
                          <option value="05">VIP05</option>
                          <option value="06">VIP06</option>
                          <option value="501">景觀501</option>
                          <option value="502">景觀502</option>
                          <option value="503">景觀503</option>
                          <option value="504">景觀504</option> 
                          <option value="505">景觀505</option>
                          <option value="506">景觀506</option>
                          <option value="507">景觀507</option>
                          <option value="508">景觀508</option>
                          <option value="601">景觀601</option> 
                          <option value="602">景觀602</option>
                          <option value="603">景觀603</option>
                          <option value="605">景觀605</option>
                          <option value="607">景觀607</option> 
                          <option value="608">景觀608</option>
                          <option value="701">尊爵701</option>
                          <option value="702">尊爵702</option>
                          <option value="703">尊爵703</option>
                          <option value="704">尊爵704</option>
                          <option value="705">尊爵705</option>
                          <option value="706">尊爵706</option>
                          <option value="707">尊爵707</option>
                          <option value="708">尊爵708</option>
                         </select></td>
			   			</tr>
					 	<tr>
					    <th>入住日期</th>
					    <th>退房日期</th>
					    <th>入住天數</th>
					    <th>備註</th>
			  			</tr>
					   <tr>
					    <td><input name="CheckInDate" type="date" max="2024-12-31" min="2024-01-10" class="form-control border-2" style="height: 40px;width:250px"required/></td>
					    <td><input name="CheckOutDate" type="date" max="2024-12-31" min="2024-01-10" class="form-control border-2" style="height: 40px;width:250px"required/></td> 
		                <td><input name="Day" type="text" placeholder="XX天"class="form-control border-2" style="height: 40px;width:200px"required/></td> 
              			<td><input type="text" class="form-control border-2" style="height: 40px;width:200px"required/></td>	   			   
	   			   	 </table>
	   			   	 <br>
	   			   	 <h5 align="right"><button type="submit"style="background:#FF9999"> 新增記錄</button>  <button type="reset"style="background:#FFFF99"> 重新輸入</button> <a href="Counter2.jsp"><button type="button"style="background:#FFF2E0">回查詢頁</button></a>&emsp; &emsp; </h5>
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
                        <a class="btn btn-link text-white-50" href="counter16.html">使用者權限管理</a>
                       
                       
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