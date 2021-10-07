<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<!DOCTYPE html>
<html lang="en">

<head>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no">
<meta name="description" content="">
<meta name="author" content="">

<title>Đăng nhập</title>

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
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
</head>

<body>

	<section class="w3l-form-36">
		<div class="form-36-mian section-gap">
			<div class="wrapper">
				<div class="form-inner-cont">
					<a href="home.htm"><span><img
							src="../images/logo-01.png"
							style="width: 100px; height: 100px; bottom: 0.5px; margin-left: 110px;"></span></a>
					<h3
						style="text-align: center; font-weight: bold; font-size: x-large;">
						Đăng nhập với tài <br>khoản nhân viên
					</h3>
					<form action="login.htm" method="post">
						<div class="form-input">
							<span class="fas fa-phone-alt" aria-hidden="true"></span> <input
								type="text" name="phone" placeholder="Số điện thoại" required />
						</div>
						<div class="form-input">
							<span class="fa fa-key" aria-hidden="true"></span> <input
								id="myInput" type="password" name="password"
								placeholder="Mật khẩu" required="required" />
						</div>
						<a onclick="myFunction()"><i
							style="position: absolute; top: 415px; left: 520px;"
							class="fa fa-eye"></i></a>
						<div class="form-group">
							<div>
								<label style="color: red; font-style: italic; font-size: 20px">${message}</label>
							</div>
						</div>
						<button type="submit" class="btn theme-button">Login</button>

						<div class="new-signup">
							<a href="../client/loginCustomer.htm" class="signuplink">Đăng
								nhập với tài khoản khách hàng</a>
						</div>
						<!-- <div class="new-signup">
							<a href="../client/forgot-password.htm" class="signuplink">Quên mật khẩu?</a>
						</div> -->
					</form>
				</div>
			</div>
	</section>
	<script type="text/javascript">
function myFunction() {
	  var x = document.getElementById("myInput");
	  if (x.type === "password") {
	    x.type = "text";
	  } else {
	    x.type = "password";
	  }
	}
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
