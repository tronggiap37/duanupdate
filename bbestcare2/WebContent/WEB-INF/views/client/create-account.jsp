<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="f"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@taglib uri="http://www.springframework.org/tags" prefix="s"%>
<!DOCTYPE html>
<html lang="en" b:version='2' class='v2'
	expr:dir='data:blog.languageDirection'
	xmlns='http://www.w3.org/1999/xhtml'
	xmlns:b='http://www.google.com/2005/gml/b'
	xmlns:data='http://www.google.com/2005/gml/data'
	xmlns:expr='http://www.google.com/2005/gml/expr'>

<head>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no">
<meta name="description" content="">
<meta name="author" content="">

<title>Đăng ký</title>

<!-- Custom fonts for this template-->
<link href="../vendor/fontawesome-free/css/all.min.css" rel="stylesheet"
	type="text/css">
<link
	href="https://fonts.googleapis.com/css?family=Nunito:200,200i,300,300i,400,400i,600,600i,700,700i,800,800i,900,900i"
	rel="stylesheet">
<link rel="stylesheet"
	href="path/to/font-awesome/css/font-awesome.min.css">
<!-- Custom styles for this template-->
<link href="../css/sb-admin-2.min.css" rel="stylesheet">
<link href="../css/sb-admin-2.css" rel="stylesheet">
<link rel="stylesheet" href="../css/style_login.css" type="text/css"
	media="all" />
<!-- Style-CSS -->
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

<script type="text/javascript">
function checkLength(){
    var textbox = document.getElementById("textbox");
    if(textbox.value.length <= 12 && textbox.value.length >= 10){
        alert("Đăng ký thành công");
    }
    else{
        alert("Số điện thoại chỉ đươc nhập 10-12 số")
    }
}
</script>

</head>

<body>

	<div class='body__preloader'>
		<div id="loading"></div>
	</div>
	<section class="w3l-form-36">
		<div class="form-36-mian section-gap">
			<div class="wrapper">
				<div class="form-inner-cont">
					<a href="home.htm"><span><img
							src="../images/logo-01.png"
							style="width: 100px; height: 100px; bottom: 0.5px; margin-left: 110px;"></span></a>
					<h3
						style="text-align: center; font-weight: bold; font-size: xx-large;">Đăng
						ký</h3>
					<br>
					<form:form class="user" action="create-account.htm"
						modelAttribute="customer">
						<div class="form-group row">
							<div class="col-sm-6 mb-3 mb-sm-0">
								<form:input type="text" path="phone"
									class="form-control form-control-user" id="textbox"
									placeholder="Số điện thoại" required="required" />
							</div>
							<div class="col-sm-6">
								<form:input type="text" path="fullname"
									class="form-control form-control-user" id=""
									placeholder="Họ tên" required="required" />
							</div>
						</div>
						<div class="form-group">
							<form:input type="email" path="email"
								class="form-control form-control-user" id="" placeholder="Email"
								required="required" />
						</div>
						<div class="form-group">
							<form:input type="text" path="address"
								class="form-control form-control-user" id=""
								placeholder="Địa chỉ" required="required" />
						</div>
						<div class="form-group">
							<form:input type="text" path="birthdaybaby"
								class="form-control form-control-user" id=""
								placeholder="Ngày sinh" required="required" />
						</div>
						<div class="form-group row">
							<div class="col-sm-6 mb-3 mb-sm-0">
								<form:input type="password" path="password"
									class="form-control form-control-user" id="password"
									placeholder="Mật khẩu" required="required" />
							</div>
							<div class="col-sm-6">
								<input type="password" class="form-control form-control-user"
									id="confirm_password" placeholder="Nhập lại mật khẩu"
									required="required">
							</div>
						</div>
						<button name="textboxSubmit" onclick="checkLength()" type="submit" class="btn btn-primary btn-user btn-block">Đăng
							ký</button>
					</form:form>
					<hr>
					<!-- <div class="text-center">
                <a class="small" href="forgot-password.htm">Quên mật khẩu</a>
              </div> -->
					<div class="text-center">
						<a class="small" href="loginCustomer.htm">Bạn đã có tài khoản?
							Đăng nhập!</a>
					</div>
				</div>
			</div>
		</div>
	</section>
	<script>
		$(window).bind("load", function() {
			$('.body__preloader').addClass("loaded");
		})
	</script>
	<!-- Bootstrap core JavaScript-->
	<script src="../vendor/jquery/jquery.min.js"></script>
	<script src="../vendor/bootstrap/js/bootstrap.bundle.min.js"></script>

	<!-- Core plugin JavaScript-->
	<script src="../vendor/jquery-easing/jquery.easing.min.js"></script>

	<!-- Custom scripts for all pages-->
	<script src="../js/sb-admin-2.min.js"></script>

</body>

</html>
