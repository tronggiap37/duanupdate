<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html lang="en">
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
<!-- //Online fonts -->
<base href="${pageContext.servletContext.contextPath}/">
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
</style>
</head>
<body>
	<!--header-section-starts-here-->
	<header>
		<div class="top-header" id="home">
			<div class="container">
				<div class="container">
					<nav class="navbar navbar-default">
						<div class="navbar-header navbar-left"></div>
						<div class="logo">
							<img src="images/logo-01.png"
								style="width: 50px; height: 50px; position: absolute; bottom: 0.5px;">
							<h1 style="float: left; padding-left: 60px;">
								<a class="navber-brand" href="client/home.htm"><i
									aria-hidden="true"></i> Bbestcare</a>
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

	<section class="banner jarallax">

		<div class="w3-ban-pos"></div>
		<div class="w3-ban-pos12"></div>
	</section>
</body>
</html>