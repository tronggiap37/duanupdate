<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>

<%@ taglib uri="http://java.sun.com/jstl/core_rt" prefix="c"%>
<!DOCTYPE html>
<html lang="en">

<head>

<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no">
<meta name="description" content="">
<meta name="author" content="">

<title>Nhân viên quản lý</title>

<!-- Custom fonts for this template -->
<link href="../../vendor/fontawesome-free/css/all.min.css"
	rel="stylesheet" type="text/css">
<link
	href="https://fonts.googleapis.com/css?family=Nunito:200,200i,300,300i,400,400i,600,600i,700,700i,800,800i,900,900i"
	rel="stylesheet">

<!-- Custom styles for this template -->
<link href="../../css/sb-admin-2.min.css" rel="stylesheet">
<link rel="stylesheet"
	href="path/to/font-awesome/css/font-awesome.min.css">

<!-- Custom styles for this page -->
<link href="../../vendor/datatables/dataTables.bootstrap4.min.css"
	rel="stylesheet">
<link rel="stylesheet"
	href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css"
	integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T"
	crossorigin="anonymous">
<script src="https://kit.fontawesome.com/f5d5718dac.js"
	crossorigin="anonymous"></script>
<base href="${pageContext.servletContext.contextPath}/">
</head>
<body>
	<div id="wrapper">

		<!-- Sidebar -->
		<ul
			class="navbar-nav bg-gradient-primary sidebar sidebar-dark accordion"
			id="accordionSidebar">

			<!-- Sidebar - Brand -->
			<a
				class="sidebar-brand d-flex align-items-center justify-content-center"
				href="manage/dashboard/dashboard.htm">
				<div class="sidebar-brand-icon rotate-n-15">
					<i class="fas"><img alt="images" src="images/logo_dash.png"
						style="width: 40px; height: 45px;"></i>
				</div>
				<div class="sidebar-brand-text mx-3">Quản lý BBestcare</div>
			</a>

			<!-- Divider -->
			<hr class="sidebar-divider my-0">

			<!-- Nav Item - Pages Collapse Menu -->
			<li class="nav-item"><a class="nav-link collapsed" href="#"
				data-toggle="collapse" data-target="#collapseTwo"
				aria-expanded="true" aria-controls="collapseTwo"> <i
					class="far fa-calendar-alt"></i> <span>Quản lý lịch</span>
			</a>
				<div id="collapseTwo" class="collapse" aria-labelledby="headingTwo"
					data-parent="#accordionSidebar">
					<div class="bg-white py-2 collapse-inner rounded">
						<a class="collapse-item" href="manage/calendar/daycalendar.htm">Lịch
							đặt trong ngày</a> <a class="collapse-item"
							href="manage/calendar/scheduling.htm">Tất cả lịch đặt </a> <a
							class="collapse-item" href="manage/calendar/index.htm">Quản
							lý lịch nhân viên</a>
					</div>
				</div></li>
			<li class="nav-item"><a class="nav-link"
				href="manage/recruitment/index.htm"> <i
					class="fas fa-file-invoice"></i> <span>Hồ sơ tuyển dụng</span></a></li>

			<!-- Nav Item - Utilities Collapse Menu -->
			<li class="nav-item"><a class="nav-link collapsed" href="#"
				data-toggle="collapse" data-target="#collapseUtilities"
				aria-expanded="true" aria-controls="collapseUtilities"> <i
					class="far fa-user-circle"></i> <span>Quản lý tài khoản</span>
			</a>
				<div id="collapseUtilities" class="collapse"
					aria-labelledby="headingUtilities" data-parent="#accordionSidebar">
					<div class="bg-white py-2 collapse-inner rounded">
						<!-- <a class="collapse-item" href="manage/calendar/daycalendar.htm">Lịch đặt trong ngày</a>
          	<a class="collapse-item" href="manage/calendar/scheduling.htm">Xếp lịch </a>
       		<a class="collapse-item" href="manage/calendar/index.htm">Quản lý lịch nhân viên</a> -->
						<!-- <a class="collapse-item" href="manage/recruitment/index.htm">Quản lý tuyển dụng</a> -->
						<a class="collapse-item" href="manage/staff/index.htm">Quản lý
							nhân viên</a> <a class="collapse-item"
							href="manage/customer/index.htm">Tài khoản khách hàng</a>
						<!-- <a class="collapse-item" href="manage/feedback/index.htm">Quản lý đánh giá</a> -->

					</div>
				</div></li>



			<!-- Divider -->
			<hr class="sidebar-divider">

			<!-- Sidebar Toggler (Sidebar) -->
			<div class="text-center d-none d-md-inline">
				<button class="rounded-circle border-0" id="sidebarToggle"></button>
			</div>

		</ul>
		<!-- End of Sidebar -->

		<!-- Content Wrapper -->
		<div id="content-wrapper" class="d-flex flex-column">

			<!-- Main Content -->
			<div id="content">

				<!-- Topbar -->
				<nav
					class="navbar navbar-expand navbar-light bg-white topbar mb-4 static-top shadow">

					<!-- Sidebar Toggle (Topbar) -->
					<form class="form-inline">
						<button id="sidebarToggleTop"
							class="btn btn-link d-md-none rounded-circle mr-3">
							<i class="fa fa-bars"></i>
						</button>
					</form>

					<!-- Topbar Search -->
					<form
						class="d-none d-sm-inline-block form-inline mr-auto ml-md-3 my-2 my-md-0 mw-100 navbar-search">
						<div class="input-group">
							<div class="input-group-append">
								<h3 style="text-transform: uppercase; color: #4e73df;">Nhân
									viên quản lý</h3>
							</div>
						</div>
					</form>

					<!-- Topbar Navbar -->
					<ul class="navbar-nav ml-auto">



					</ul>

				</nav>
</body>
</html>