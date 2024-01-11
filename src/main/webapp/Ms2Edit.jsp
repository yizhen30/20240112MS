<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@page import="java.sql.*"%>
<jsp:useBean id='objDBConfig' scope='application' class='hitstd.group.tool.database.DBConfig' />
<html>
<head>
	<meta charset="UTF-8">
	<title>產婦-個人資料頁面</title>
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
            <a href="ms1.html" class="navbar-brand">
                <h1 class="m-0 text-primary"><i class="fa fa-star me-3"></i>蘊星產後護理之家</h1>
            </a>
            <button type="button" class="navbar-toggler" data-bs-toggle="collapse" data-bs-target="#navbarCollapse">
                <span class="navbar-toggler-icon"></span>
            </button>
            <div class="collapse navbar-collapse" id="navbarCollapse">
                <div class="navbar-nav mx-auto">
                    <a href="Ms2.jsp" class="nav-item nav-link">個人資料</a>
                    <a href="Ms3.jsp" class="nav-item nav-link">健康測量記錄</a>
                    <a href="Ms4.jsp" class="nav-item nav-link">寶寶線上探視</a>
                    <a href="Ms5.jsp" class="nav-item nav-link">寶寶健康測量記錄</a>                    
                </div>
            </div>
            
            <a href="Index.jsp" class="btn btn-primary rounded-pill px-3 d-none d-lg-block">使用者登出<i class="fa fa-arrow-right ms-3"></i></a>
       
        </nav>
        <!-- Navbar End -->

		<%request.setCharacterEncoding("UTF-8"); %>
		<%
			Class.forName("net.ucanaccess.jdbc.UcanaccessDriver");
			Connection con=DriverManager.getConnection("jdbc:ucanaccess://"+objDBConfig.FilePath()+";");
			//out.println("Con= "+con);
			Statement smt= con.createStatement();
			String sql = "SELECT * FROM MatForm left JOIN MatFamForm ON MatForm.MatFamName = MatFamForm.MatFam_SeqNO where MatForm.MatEmail ='" +session.getAttribute("accessID")+"'";
			String sql1 ="SELECT * FROM MatForm left JOIN BloodType ON MatForm.MatBT = BloodType.BT_SeqNO where MatForm.MatEmail ='" +session.getAttribute("accessID")+"'";
			String sql2 ="SELECT * FROM MatForm left JOIN Relationship ON MatForm.WithMatRel = Relationship.Rel_SeqNO where MatForm.MatEmail ='" +session.getAttribute("accessID")+"'";
			String sql3 ="SELECT * FROM MatForm left JOIN ProMethods ON MatForm.ProMethods = ProMethods.ProMet_SeqNO where MatForm.MatEmail ='" +session.getAttribute("accessID")+"'";
			String sql4 ="SELECT * FROM MatForm left JOIN DiePre ON MatForm.DiePre = DiePre.DiePre_SeqNO where MatForm.MatEmail ='" +session.getAttribute("accessID")+"'";
			ResultSet rs = smt.executeQuery(sql);
			ResultSet rs1 = smt.executeQuery(sql1);
			ResultSet rs2 = smt.executeQuery(sql2);
			ResultSet rs3 = smt.executeQuery(sql3);
			ResultSet rs4 = smt.executeQuery(sql4);
			rs.next();
			rs1.next();
			rs2.next();
			rs3.next();
			rs4.next();
		%>
       

         <div class="container-xxl py-5">
            <div class="container">
                <div class="bg-light rounded">
                    <div class="row g-0">
                        <div class= data-wow-delay="0.1s" style="min-height: 400px;">                                                      
                          <h2 style="color:black"align="center">
                          <b><%out.println(session.getAttribute("accessName"));%> 的基本資料</b></h2><br> 
                          <form action="Ms2Edit_DBUpdate.jsp?MatEmail=<%out.println(session.getAttribute("accessID"));%>" method="post" name="form" >
                            <table style="none;width:100%">
                            	<tr>
									<td>　</td>
									<td><h3><b><label>我的資料</label></b></h3></td>
									<td>　</td>
									<td>　</td>
									<td><h3><b><label>緊急聯絡人的資料</label></b></h3></td>
									<td>　</td>
								</tr>
                            	
                            	<tr>
								    <td>　</td><!-- 媽媽的血型 -->
								    <td><h5><b><label for="MatBT">血型</label></b></h5></td>
								    <td><h5 style="color:#004B96;"><%out.println(rs1.getString("BloodType.BloodType"));%></h5></h5></td>
								    <td>　</td><!-- 媽媽的緊急聯絡人 -->
								    <td><h5><b><label for="MatFamName1">緊急聯絡人</label></b></h5></td>
								    <td><h5><input type="text" name="MatFamName" value="<%=rs.getString("MatFamForm.MatFamName") %>" /></h5></td>
								</tr>											
							    
							    <tr>
							    	<td>　</td><!-- 媽媽的身分證字號 -->
								    <td><h5><b><label for="MatID">身分證字號</label></b></h5></td>
								    <td><h5 style="color:#004B96;"><%out.println(rs.getString("MatID"));%></h5></td>
								    <td>　</td><!-- 媽媽與緊急聯絡人關係 -->
								    <td><h5><b><label for="WithMatRel1">關係</label></b></h5></td>
								    <td><h5><%=rs2.getString("Relationship.Relationship")%>
									    <select name="WithMatRel">
	                                        <option selected>關係</option>
	                                        <option value="1">夫妻</option>
	                                        <option value="2">父母</option>
	                                        <option value="3">兄弟姊妹</option>
	                                        <option value="4">其他</option>
	                                    </select>								    
									    </h5>
									</td>
							    </tr>											 
							    
							    <tr>
								    <td>　</td><!-- 媽媽的出生年月日 -->
								    <td><h5><b><label for="MatHBD">出生年月日</label></b></h5></td>
								    <td><h5 style="color:#004B96;"><%out.println(rs.getString("MatHBD"));%></h5></td>
								    <td>　</td><!-- 緊急聯絡人的身分證字號 -->
								    <td><h5><b><label for="MatFamID1">身分證字號</label></b></h5></td>
								    <td><h5><input type="text" name="MatFamID" value="<%=rs.getString("MatFamForm.MatFamID")%>" /></h5></td>
							    </tr>		
							    
							    <tr>
								    <td>　</td><!-- 媽媽的聯絡電話 -->
								    <td><h5><b><label for="MatPhone1">聯絡電話</label></b></h5></td>
								    <td><h5><input type="text" name="MatPhone" value="<%=rs.getString("MatPhone") %>" /></h5></td>
								    <td>　</td><!-- 緊急聯絡人的電話 -->
								    <td><h5><b><label for="MatFamPhone1">聯絡電話</label></b></h5></td>
								    <td><h5><input type="text" name="MatFamPhone" value="<%=rs.getString("MatFamForm.MatFamPhone")%>" /></h5></td>
							    </tr> 
							    
							    <tr>
								    <td>　</td><!-- 媽媽的電子郵件 -->
								    <td><h5><b><label for="MatEmail">電子郵件</label></b></h5></td>
								    <td><h5 style="color:#004B96;"><%out.println(rs.getString("MatEmail"));%></h5></td>
								    <td>　</td><!-- 緊急聯絡人的電子郵件 -->
								    <td><h5><b><label for="MatFamEmail1">電子郵件</label></b></h5></td>
								    <td><h5><input type="text" name="MatFamEmail" value="<%=rs.getString("MatFamForm.MatFamEmail")%>" /></h5></td>
							    </tr>		
							    
								<tr>
									 <td>　</td><!-- 媽媽的生產方式 -->
									 <td><h5><b><label for="ProMethods">生產方式</label></b></h5></td>
									 <td><h5 style="color:#004B96;"><%out.println(rs3.getString("ProMethods.ProMethods"));%></h5></td>
									 <td>　</td>
									 <td>　</td>
								</tr>
								
							    <tr>
									 <td>　</td><!-- 媽媽的飲食注意事項 -->
									 <td><h5><b><label for="DiePre1">飲食注意事項</label></b></h5></td>
									 <td><h5><%=rs4.getString("DiePre.DiePre")%>
										 <select name="DiePre">
	                                        <option selected>飲食限制</option>
	                                        <option value="1">葷</option>
	                                        <option value="2">全素</option>
	                                        <option value="3">奶蛋素</option>
	                                        <option value="4">奶素</option>
	                                        <option value="5">蛋素</option>
	                                        <option value="6">植物五辛素</option>
	                                     </select>										 
										 </h5>
								     </td>
									 <td>　</td>
									 <td>　</td>
								</tr>
							    
							    <tr>
							    	<td>　</td>
							    	<td>　</td>
							    	<td>　</td>							    	
							    	<td><label><button class="button button2" type="submit" name="edit">確認修改</button></label></td>
								    <td>　</td>
								    <td>　</td>
							    </tr>		 					    
							                    
                            </table>
     						
     						
						</form>
                    </div>
                </div>
            </div>
        </div>


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
                        <h3 class="text-white mb-4">系統導覽</h3>
	                        <a class="btn btn-link text-white-50" href="Ms1.jsp">媽媽首頁</a>
	                        <a class="btn btn-link text-white-50" href="Ms2.jsp">我的資料</a>
	                        <a class="btn btn-link text-white-50" href="Ms3.jsp">健康測量記錄</a>
	                        <a class="btn btn-link text-white-50" href="Ms4.jsp">寶寶線上探視</a>
	                        <a class="btn btn-link text-white-50" href="Ms5.jsp">寶寶健康測量紀錄</a>
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