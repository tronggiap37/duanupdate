<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<!DOCTYPE html>
<html lang="en" b:version='2' class='v2'
	expr:dir='data:blog.languageDirection'
	xmlns='http://www.w3.org/1999/xhtml'
	xmlns:b='http://www.google.com/2005/gml/b'
	xmlns:data='http://www.google.com/2005/gml/data'
	xmlns:expr='http://www.google.com/2005/gml/expr'>
<head>
<title>Bbestcare</title>
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta charset="utf-8">
<meta name="keywords"
	content="Child Care a Responsive web template, Bootstrap Web Templates, Flat Web Templates, Android Compatible web template, 
Smartphone Compatible web template, free webdesigns for Nokia, Samsung, LG, SonyEricsson, Motorola web design" />
<!-- default-css-files -->
<link href="../css/bootstrap.css" rel='stylesheet' type='text/css' />
<link href="../css/simpleLightbox.css" rel="stylesheet" type="text/css" />
<link href="../css/style.css" rel='stylesheet' type='text/css' />
<link href="../css/font-awesome.css" rel="stylesheet" type="text/css"
	media="all">
<!-- default-css-files -->
<link href="css/bootstrap.css" rel='stylesheet' type='text/css' />
<link href="css/simpleLightbox.css" rel="stylesheet" type="text/css" />
<link href="css/style.css" rel='stylesheet' type='text/css' />
<link href="css/font-awesome.css" rel="stylesheet" type="text/css"
	media="all">
<!-- default-css-files -->
<!-- Online fonts -->
<link
	href="//fonts.googleapis.com/css?family=Poppins:100,100i,200,200i,300,300i,400,400i,500,500i,600,600i,700,700i,800,800i,900,900i"
	rel="stylesheet">
<link
	href="//fonts.googleapis.com/css?family=Open+Sans:300,300i,400,400i,600,600i,700,700i,800,800i"
	rel="stylesheet">
<link rel="stylesheet"
	href="https://stackpath.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css"
	integrity="sha384-wvfXpqpZZVQGK6TAh5PVlGOfQNHSoD2xbE+QkPxCAFlNEevoEH3Sl0sibVcOQVnN"
	crossorigin="anonymous">
<!-- //Online fonts -->



<base href="${pageContext.servletContext.contextPath}/">
<script
	src='https://cdnjs.cloudflare.com/ajax/libs/jquery/3.5.1/jquery.min.js'></script>
<style type="text/css">
.body__preloader {
	position: fixed;
	z-index: 9999;
	width: 100%;
	height: 100%;
	left: 0;
	top: 0;
	background-color: #ffffff;
	-webkit-transition: all .3s ease;
	-o-transition: all .3s ease;
	transition: all .3s ease;
	opacity: 1;
	visibility: visible
}

.body__preloader.loaded {
	opacity: 0;
	visibility: hidden;
	z-index: -2
}

#loading {
	display: block;
	position: relative;
	z-index: 1001;
	left: 50%;
	top: 50%;
	width: 150px;
	height: 150px;
	margin: -75px 0 0 -75px;
	border-radius: 50%;
	border: 3px solid transparent;
	border-top-color: #3498db;
	-webkit-animation: spin 2s linear infinite;
	animation: spin 2s linear infinite
}

#loading:before {
	content: "";
	position: absolute;
	top: 5px;
	left: 5px;
	right: 5px;
	bottom: 5px;
	border-radius: 50%;
	border: 3px solid transparent;
	border-top-color: #e74c3c;
	-webkit-animation: spin 3s linear infinite;
	animation: spin 3s linear infinite
}

#loading:after {
	content: "";
	position: absolute;
	top: 15px;
	left: 15px;
	right: 15px;
	bottom: 15px;
	border-radius: 50%;
	border: 3px solid transparent;
	border-top-color: #f9c922;
	-webkit-animation: spin 1.5s linear infinite;
	animation: spin 1.5s linear infinite
}

@
-webkit-keyframes spin { 0%{
	-webkit-transform: rotate(0deg);
	-ms-transform: rotate(0deg);
	transform: rotate(0deg)
}

100%{
-webkit-transform
:rotate(360deg)
;-ms-transform
:rotate(360deg)
;transform
:rotate(360deg)
}
}
@
keyframes spin { 0%{
	-webkit-transform: rotate(0deg);
	-ms-transform: rotate(0deg);
	transform: rotate(0deg)
}
100%{
-webkit-transform
:rotate(360deg)
;-ms-transform
:rotate(360deg)
;transform
:rotate(360deg)
}
}
</style>
<style>
.datlichbtn {
	background-color: #17449e;
	border-radius: 5px;
	border: 2px solid #fff;
	padding: 0.4em 1.7em;
	color: white;
	text-align: center;
	margin: 4px 2px;
	opacity: 1;
	transition: 0.3s;
	font-weight: 500;
	letter-spacing: 0px;
	text-transform: capitalize;
	display: block;
	font-size: 1em;
}

.datlichbtn:hover {
	opacity: 0.6
}

.dropbtn {
	color: #4D93E9;
	padding: 13px;
	font-size: 14px;
	font-weight: bolder;
	border: none;
	cursor: pointer;
	font-family: 'Oxygen', sans-serif;
}

.dropbtn:hover {
	color: #17449e;
}

.dropdown {
	position: relative;
	display: inline-block;
}

.dropdown-content {
	display: none;
	position: absolute;
	background-color: #f9f9f9;
	width: 150px;
	border-radius: 5px;
	box-shadow: 0px 8px 16px 0px rgba(0, 0, 0, 0.2);
	z-index: 1;
}

.dropdown-content a {
	color: #17449e;
	padding: 12px 16px;
	text-decoration: none;
	display: block;
	font-weight: bolder;
}

.dropdown-content a:hover {
	background-color: #f1f1f1
}

.dropdown:hover .dropdown-content {
	display: block;
}

.btn:hover {
	opacity: 0.6
}
/* .dropdown:hover .dropbtn {
  background-color: #3e8e41;
} */
</style>
</head>
<!-- Head -->
<body>

	<div class='body__preloader'>
		<div id="loading"></div>
	</div>
	<!--header-section-starts-here-->
	<header>
		<div class="top-header" id="home">
			<div class="container">
				<div class="container">
					<nav class="navbar navbar-default">
						<div class="navbar-header navbar-left"></div>
						<div class="logo">
							<img src="images/mohinhcg.png"
								style="width: 80px; height: 50px; position: absolute; bottom: 0.5px;">
							<h1 style="float: left; padding-left: 60px;">
								<a class="navber-brand" href="client/home.htm"><i
									aria-hidden="true"></i>MohinhCG</a>
							</h1>

						</div>
						<div
							class="collapse navbar-collapse navbar-right navigation-right"
							id="bs-example-navbar-collapse-1">
							<nav class="link-effect-3 w3ls-navma" id="link-effect-3">
								<ul class="nav1 navbar-nav nav nav-wil">
									<li class="active"><a href="client/home.htm">Trang chủ</a></li>
									<li><a href="client/about.htm" class="">Giới thiệu</a></li>
									<li><a href="client/recruitment.htm">Tuyển dụng</a></li>
									<li><a href="client/rate.htm" class="">Đánh giá</a></li>
									<!-- <li><a href="client/loginCustomer.htm" class="">Đăng
											nhập</a></li> -->

									<li>
										<div class="dropdown">
											<h5 class="dropbtn">TÀI KHOẢN</h5>
											<div class="dropdown-content">
												<a style="color: #17449e; text-align: center;"
													href="client/profile/${user.phone}.htm">${user.fullname}</a>
												<button
													style="width: 100%; background-color: #f9f9f9; color: #17449e; font-weight: bolder; text-align: center;"
													type="submit" class="btn" onclick="dangnhap()">Đăng
													nhập</button>
												<button
													style="width: 100%; background-color: #f9f9f9; color: #17449e; font-weight: bolder; text-align: center;"
													type="submit" class="btn" onclick="dangky()">Đăng
													ký</button>
												<script>
													function dangnhap() {
														location
																.assign("client/loginCustomer.htm");
													}
													function dangky() {
														location
																.assign("client/create-account.htm");
													}
												</script>
												<form action="client/logout.htm" method="get">
													<button
														style="width: 100%; background-color: #f9f9f9; color: #17449e; font-weight: bolder; text-align: center;"
														type="submit" class="btn">Đăng xuất</button>
												</form>

											</div>
										</div>
									</li>
									<li><form action="client/order/abcOrder2.htm" method="get">
											<button type="submit" class="datlichbtn">Đặt lịch</button>
										</form></li>
								</ul>
							</nav>
						</div>
					</nav>
				</div>
				<div class="clearfix"></div>
			</div>
		</div>
	</header>
	<!--//header-section-end-here-->
	<!--banner-section-starts-here-->
	<section class="bannerhome jarallax" id="home">
		<div class="w3ls_banner_info">
			<div class="container">
				<div class="w3l-banner-grids">
					<div class="slider">
						<div class="callbacks_container">
							<ul class="rslides" id="slider4">
								<li>
									<div class="w3ls-text">
										<h3>Chăm sóc trẻ em</h3>
										<p>Chúng tôi cung cấp dịch vụ chăm sóc trẻ em tại nhà.</p>
									</div>
								</li>
								<li>
									<div class="w3ls-text">
										<h3>Phục vụ tận tình</h3>
										<p>Đội ngũ nhân viên chăm sóc tận tình chu đáo.</p>
									</div>
								</li>
								<li>
									<div class="w3ls-text">
										<h3>Chất lượng chăm sóc</h3>
										<p>Chất lượng nhân viên chăm sóc đảm bảo đã được kiểm
											duyệt kĩ càng.</p>
									</div>
								</li>
								<li>
									<div class="w3ls-text">
										<h3>Những ngày lễ</h3>
										<p>Những khung giờ đặc biệt cũng có nhân viên chăm sóc.</p>
									</div>
								</li>
							</ul>
						</div>

					</div>
					<div class="clearfix"></div>
				</div>
			</div>
		</div>
		<div class="w3-ban-pos"></div>
		<div class="w3-ban-pos12"></div>
	</section>
	<!-- Default-JavaScript-File -->
	<!--/about -->
	<div class="about" id="about">
		<div class="container">
			<!---728x90--->
			<div class="wthree-about">

				<div class="col-md-6 ab-w3l-text">
					<h2
						style="color: #17449e; font-family: sans-serif; text-transform: uppercase; font-weight: bolder;">Giới
						thiệu</h2>
					<p>Sau 9 tháng 10 ngày mang nặng đẻ đau, nâng niu chăm sóc sức
						khỏe, đã đến ngày con chào đời đó là niềm hạnh phúc không thể diễn
						tả thành lời của mẹ. Bất cứ người làm mẹ nào đều mong muốn được tự
						tay chăm sóc con yêu của mình.Nhưng sau sinh mẹ có rất nhiều trở
						ngại: Cơ thể mẹ còn rất yếu, đi lại khó khăn. Mẹ chưa có nhiều
						kinh nghiệm trong việc chăm sóc trẻ sơ sinh. Con yêu còn quá nhỏ,
						rốn chưa rụng. Chính vì những trở ngại đó khiến mẹ lo lắng không
						biết phải làm sao để có thể tắm cho con yêu mỗi ngày để đảm bảo
						sức khỏe của con.Thấu hiểu những nỗi lòng ấy, BBESTCARE gửi đến
						các hộ gia đình dịch vụ tắm bé sơ sinh tại nhà giúp cho bé khỏe mẹ
						vui, mang lại niềm hạnh phúc cho mẹ và bé..</p>
				</div>
				<div class="col-md-6 about-w3l-agileifo-grid">
					<img src="images/about1.jpg" alt=" " class="img-responsive">
					<div class="img-ab">
						<img src="images/about2.jpg" alt=" " class="img-responsive">
					</div>
				</div>

				<div class="clearfix"></div>
				<a href="client/about.htm"
					class="btn-style btn-primary btn mt-lg-5 mt-4">Xem thêm</a>
			</div>
		</div>
	</div>


	<div class="about-main-w3-agile">
		<div class="col-md-6 about-left-agileits-w3layouts">
			<i class="fa fa-balance-scale" aria-hidden="true"></i>
			<p class="bold">Dịch vụ tốt nhất</p>
			<p class="para-w3layouts">Dịch vụ tốt</p>
			<a href="#myModal" class="find-about" data-toggle="modal">Xem
				thêm</a>
		</div>
		<div class="col-md-6 about-right-agileinfo"
			style="background-color: #ed948e;">
			<i class="fa fa-user-circle" aria-hidden="true"></i>
			<p class="bold2">Nhân viên lành nghê</p>
			<p class="para-w3layouts">Nhân viên giỏi</p>
			<a href="#myModal" class="find-about" data-toggle="modal">Xem
				thêm</a>
		</div>
		<div class="clearfix"></div>

		<div class="col-md-6 about-right-agileinfo about-right-agileinfo1 "
			style="background-color: #ed948e;">
			<i class="fa fa-spinner" aria-hidden="true"></i>
			<p class="bold2">Chăm sóc đặc biệt</p>
			<p class="para-w3layouts">Chăm sóc đặc biệt.</p>
			<a href="#myModal" class="find-about" data-toggle="modal">Xem
				thêm</a>
		</div>
		<div
			class="col-md-6 about-left-agileits-w3layouts about-left-agileits-w3layouts1">
			<i class="fa fa-handshake-o" aria-hidden="true"></i>
			<p class="bold">Đảm bảo an toàn</p>
			<p class="para-w3layouts">Đảm bảo an toàn vệ sinh cho bé</p>
			<a href="#myModal" class="find-about" data-toggle="modal">Xem
				thêm</a>
		</div>
		<div class="clearfix"></div>
	</div>

	<!--//about -->
	<!-- services -->
	<div class="services" id="services">
		<div class="container">
			<div class="w3-heading-all w3-head2-all">
				<h3>Dịch vụ</h3>
			</div>
			<div class="services-w3lsrow">
				<div class="col-md-4 services-grids">
					<i class="fa fa-gears icon" aria-hidden="true"></i>
					<h4>Tắm rửa</h4>
					<p>Tắm rửa sạch sẽ, đúng cách giúp bé ngăn ngừa mầm bệnh</p>
				</div>
				<div class="col-md-4 services-grids">
					<div class="w3agile-servs-img">
						<i class="fa fa-group icon" aria-hidden="true"></i>
						<h4>Massage</h4>
						<p>Massage giúp bé thư giãn, hỗ trợ phát triển sau này</p>
					</div>
				</div>
				<div class="col-md-4 services-grids">
					<div class="w3agile-servs-img">
						<i class="fa fa-list-alt icon" aria-hidden="true"></i>
						<h4>Vệ sinh khô</h4>
						<p>Vệ sinh khô giúp loại bỏ những mầm bệnh trong vùng nhạy cảm
							của bé</p>
					</div>
				</div>
				<div class="clearfix"></div>
			</div>
		</div>
	</div>


	<!-- gallery -->
	<!---728x90--->
	<div class="banner-bottom gallery" id="gallery">
		<div class="container">

			<div class="wthree-heading">
				<div class="w3-heading-all">
					<h3 style="color: #17449e;">Sản phẩm nổi bật</h3>
				</div>
			</div>
			<!---728x90--->
			<div class="w3ls_gallery_grids">
				<div class="col-md-4 w3_agile_gallery_grid">
					<div class="agile_gallery_grid">
						<a
							title="BBestCare hỗ trợ dịch vụ chăm sóc trẻ em uy tín, chất lượng tại nhà!"
							href="images/mohinh/mohinh1.jpg">
							<div class="agile_gallery_grid1">
								<img src="images/mohinh/mohinh1.jpg" alt=" "
									class="img-responsive" />
								<div class="w3layouts_gallery_grid1_pos">
									<h3>Chăm sóc trẻ</h3>

								</div>
							</div>
						</a>
					</div>
					<div class="agile_gallery_grid">
						<a
							title="BBestCare hỗ trợ dịch vụ chăm sóc trẻ em uy tín, chất lượng tại nhà!"
							href="images/bed-child.jpg">
							<div class="agile_gallery_grid1">
								<img src="images/mohinh/mohinh2.jpg" alt=" " class="img-responsive" />
								<div class="w3layouts_gallery_grid1_pos">
									<h3>Chăm sóc trẻ</h3>

								</div>
							</div>
						</a>
					</div>
					<div class="agile_gallery_grid">
						<a
							title="BBestCare hỗ trợ dịch vụ chăm sóc trẻ em uy tín, chất lượng tại nhà!"
							href="images/mohinh/mohinh9.jpg">
							<div class="agile_gallery_grid1">
								<img src="images/mohinh/mohinh9.jpg" alt=" "
									class="img-responsive" />
								<div class="w3layouts_gallery_grid1_pos">
									<h3>Chăm sóc trẻ</h3>

								</div>
							</div>
						</a>
					</div>
				</div>
				<div class="col-md-4 w3_agile_gallery_grid">
					<div class="agile_gallery_grid">
						<a
							title="BBestCare hỗ trợ dịch vụ chăm sóc trẻ em uy tín, chất lượng tại nhà!"
							href="images/cleaning-baby.jpg">
							<div class="agile_gallery_grid1">
								<img src="images/mohinh/mohinh4.jpg" alt=" "
									class="img-responsive" />
								<div class="w3layouts_gallery_grid1_pos">
									<h3>Chăm sóc trẻ</h3>

								</div>
							</div>
						</a>
					</div>
					<div class="agile_gallery_grid">
						<a
							title="BBestCare hỗ trợ dịch vụ chăm sóc trẻ em uy tín, chất lượng tại nhà!"
							href="images/diaper-newborn.jpg">
							<div class="agile_gallery_grid1">
								<img src="images/mohinh/mohinh5.jpg" alt=" "
									class="img-responsive" />
								<div class="w3layouts_gallery_grid1_pos">
									<h3>Chăm sóc trẻ</h3>

								</div>
							</div>
						</a>
					</div>
					<div class="agile_gallery_grid">
						<a
							title="BBestCare hỗ trợ dịch vụ chăm sóc trẻ em uy tín, chất lượng tại nhà!"
							href="images/cleaningfeet-baby.jpg">
							<div class="agile_gallery_grid1">
								<img src="images/mohinh/mohinh6.jpg" alt=" "
									class="img-responsive" />
								<div class="w3layouts_gallery_grid1_pos">
									<h3>Chăm sóc trẻ</h3>

								</div>
							</div>
						</a>
					</div>
				</div>
				<div class="col-md-4 w3_agile_gallery_grid">
					<div class="agile_gallery_grid">
						<a
							title="BBestCare hỗ trợ dịch vụ chăm sóc trẻ em uy tín, chất lượng tại nhà!"
							href="images/mohinh/mohinh7.jpg">
							<div class="agile_gallery_grid1">
								<img src="images/mohinh/mohinh7.jpg" alt=" "
									class="img-responsive" />
								<div class="w3layouts_gallery_grid1_pos">
									<h3>Chăm sóc trẻ</h3>

								</div>
							</div>
						</a>
					</div>
					<div class="agile_gallery_grid">
						<a
							title="BBestCare hỗ trợ dịch vụ chăm sóc trẻ em uy tín, chất lượng tại nhà!"
							href="images/mohinh/mohinh8.jpg">
							<div class="agile_gallery_grid1">
								<img src="images/mohinh/mohinh8.jpg" alt=" " class="img-responsive" />
								<div class="w3layouts_gallery_grid1_pos">
									<h3>Chăm sóc trẻ</h3>

								</div>
							</div>
						</a>
					</div>
					<div class="agile_gallery_grid">
						<a
							title="BBestCare hỗ trợ dịch vụ chăm sóc trẻ em uy tín, chất lượng tại nhà!"
							href="images/mohinh/mohinh3.png">
							<div class="agile_gallery_grid1">
								<img src="images/mohinh/mohinh3.png" alt=" "
									class="img-responsive" />
								<div class="w3layouts_gallery_grid1_pos">
									<h3>Chăm sóc trẻ</h3>

								</div>
							</div>
						</a>
					</div>
				</div>

				<div class="clearfix"></div>
			</div>
		</div>

	</div>



	<!-- modal -->
	<!-- for pop up -->
	<!-- <div class="modal about-modal fade" id="myModal" tabindex="-1"
		role="dialog">
		<div class="modal-dialog" role="document">
			<div class="modal-content">
				<div class="modal-header">
					<button type="button" class="close" data-dismiss="modal"
						aria-label="Close">
						<span class="span2" aria-hidden="true">&times;</span>
					</button>
					<h4 class="modal-title">Chăm sóc trẻ</h4>
				</div>
				<div class="modal-body">
					<div class="agileits-w3layouts-info">
						<img src="images/doctor.jpg" alt="" />
						<p>Việc chăm sóc đúng cách, đầy đủ cho trẻ sơ sinh không chỉ
							bắt đầu sau sinh mà cha mẹ cần chuẩn bị mọi mặt từ giai đoạn
							trước sinh, đặc biệt về mặt kiến thức và tâm lý. Với người mẹ
							sinh con lần đầu, hẳn còn nhiều bỡ ngỡ không biết cách chăm sóc
							trẻ sơ sinh thế nào cho đúng.</p>
					</div>
				</div>
			</div>
		</div>
	</div> -->

	
	<!-- //modal -->
	<!-- //for pop up -->

	<script>
		$(window).bind("load", function() {
			$('.body__preloader').addClass("loaded");
		})
	</script>


	<script type="text/javascript" src="js/jquery-2.1.4.min.js"></script>
	<!-- password-script -->
	<script type="text/javascript">
		window.onload = function() {
			document.getElementById("password1").onchange = validatePassword;
			document.getElementById("password2").onchange = validatePassword;
		}

		function validatePassword() {
			var pass2 = document.getElementById("password2").value;
			var pass1 = document.getElementById("password1").value;
			if (pass1 != pass2)
				document.getElementById("password2").setCustomValidity(
						"Passwords Don't Match");
			else
				document.getElementById("password2").setCustomValidity('');
			//empty string means no validation error
		}
	</script>
	<!-- //password-script -->


	<script src="js/responsiveslides.min.js"></script>
	<script>
		// You can also use "$(window).load(function() {"
		$(function() {
			// Slideshow 4
			$("#slider4").responsiveSlides({
				auto : true,
				pager : true,
				nav : false,
				speed : 500,
				namespace : "callbacks",
				before : function() {
					$('.events').append("<li>before event fired.</li>");
				},
				after : function() {
					$('.events').append("<li>after event fired.</li>");
				}
			});

		});
	</script>
	<!--banner Slider starts Here-->
	<!-- /gallery js -->
	<script src="js/simpleLightbox.js"></script>
	<script>
		$('.w3_agile_gallery_grid a').simpleLightbox();
	</script>
	<!-- //gallery js -->
	<!-- Calendar -->
	<link rel="stylesheet" href="css/jquery-ui.css" />
	<script src="js/jquery-ui.js"></script>
	<script>
		$(function() {
			$("#datepicker").datepicker();
		});
	</script>
	<!-- //Calendar -->

	<!-- start-smoth-scrolling-nav -->
	<script type="text/javascript" src="js/move-top.js"></script>
	<script type="text/javascript" src="js/easing.js"></script>
	<script type="text/javascript">
		jQuery(document).ready(function($) {
			$(".scroll").click(function(event) {
				event.preventDefault();
				$('html,body').animate({
					scrollTop : $(this.hash).offset().top
				}, 1000);
			});
		});
	</script>
	<!-- start-smoth-scrolling -->
	<!-- Slide-To-Top JavaScript (No-Need-To-Change) -->
	<script type="text/javascript">
		$(document).ready(function() {
			var defaults = {
				containerID : 'toTop', // fading element id
				containerHoverID : 'toTopHover', // fading element hover id
				scrollSpeed : 100,
				easingType : 'linear'
			};
		});
	</script>
	<a href="#" id="toTop" style="display: block;"> <span
		id="toTopHover" style="opacity: 0;"> </span></a>
	<!-- //Slide-To-Top JavaScript -->
	<!-- jarallax scrolling -->
	<script src="js/jarallax.js"></script>
	<script src="js/SmoothScroll.min.js"></script>
	<script type="text/javascript">
		/* init Jarallax */
		$('.jarallax').jarallax({
			speed : 0.5,
			imgWidth : 1366,
			imgHeight : 768
		})
	</script>
	<!-- //jarallax scrolling -->
	<!-- smooth scrolling -->
	<script type="text/javascript">
		$(document).ready(function() {
			/*
				var defaults = {
				containerID: 'toTop', // fading element id
				containerHoverID: 'toTopHover', // fading element hover id
				scrollSpeed: 1200,
				easingType: 'linear' 
				};
			 */
			$().UItoTop({
				easingType : 'easeOutQuart'
			});
		});
	</script>
	<!-- //smooth scrolling -->
	<script type="text/javascript" src="js/bootstrap-3.1.1.min.js"></script>
</body>
<jsp:include page="footer.jsp"></jsp:include>
</html>