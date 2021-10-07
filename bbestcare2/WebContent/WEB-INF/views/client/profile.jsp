<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
	 <%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
	 <%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<!DOCTYPE html>
<html lang="en" b:version='2' class='v2' expr:dir='data:blog.languageDirection' xmlns='http://www.w3.org/1999/xhtml' xmlns:b='http://www.google.com/2005/gml/b' xmlns:data='http://www.google.com/2005/gml/data' xmlns:expr='http://www.google.com/2005/gml/expr'>
<head>
<title>Trang cá nhân</title>
<!-- for-mobile-apps -->
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta name="keywords" content="Dental Health Responsive web template, Bootstrap Web Templates, Flat Web Templates, Android Compatible web template, 
Smartphone Compatible web template, free webdesigns for Nokia, Samsung, LG, SonyEricsson, Motorola web design" />
<base href="${pageContext.servletContext.contextPath}/">
    <script>
        addEventListener("load", function () {
            setTimeout(hideURLbar, 0);
        }, false);

        function hideURLbar() {
            window.scrollTo(0, 1);
        }
    </script>
	
	<!-- css files -->
    <link href="../css/bootstrap.css" rel='stylesheet' type='text/css' /><!-- bootstrap css -->
    <link href="../css/style.css" rel='stylesheet' type='text/css' /><!-- custom css -->
    <link href="../css/font-awesome.min.css" rel="stylesheet"><!-- fontawesome css -->
	<!-- //css files -->
	
	<!-- google fonts -->
	<link href="//fonts.googleapis.com/css?family=Open+Sans:300,300i,400,400i,600,600i,700,700i,800,800i&amp;subset=cyrillic,cyrillic-ext,greek,greek-ext,latin-ext,vietnamese" rel="stylesheet">
	<link href="//fonts.googleapis.com/css?family=Dosis:200,300,400,500,600,700,800&amp;subset=latin-ext" rel="stylesheet">
	<!-- //google fonts -->
	<script src='https://cdnjs.cloudflare.com/ajax/libs/jquery/3.5.1/jquery.min.js'></script>
	<style type="text/css">
		.body__preloader{position:fixed;z-index:9999;width:100%;height:100%;left:0;top:0;background-color:#ffffff;-webkit-transition:all .3s ease;-o-transition:all .3s ease;transition:all .3s ease;opacity:1;visibility:visible}
.body__preloader.loaded{opacity:0;visibility:hidden;z-index:-2}
#loading{display:block;position:relative;z-index:1001;left:50%;top:50%;width:150px;height:150px;margin:-75px 0 0 -75px;border-radius:50%;border:3px solid transparent;border-top-color:#3498db;-webkit-animation:spin 2s linear infinite;animation:spin 2s linear infinite}
#loading:before{content:"";position:absolute;top:5px;left:5px;right:5px;bottom:5px;border-radius:50%;border:3px solid transparent;border-top-color:#e74c3c;-webkit-animation:spin 3s linear infinite;animation:spin 3s linear infinite}
#loading:after{content:"";position:absolute;top:15px;left:15px;right:15px;bottom:15px;border-radius:50%;border:3px solid transparent;border-top-color:#f9c922;-webkit-animation:spin 1.5s linear infinite;animation:spin 1.5s linear infinite}
@-webkit-keyframes spin{0%{-webkit-transform:rotate(0deg);-ms-transform:rotate(0deg);transform:rotate(0deg)}100%{-webkit-transform:rotate(360deg);-ms-transform:rotate(360deg);transform:rotate(360deg)}}
@keyframes spin{0%{-webkit-transform:rotate(0deg);-ms-transform:rotate(0deg);transform:rotate(0deg)}100%{-webkit-transform:rotate(360deg);-ms-transform:rotate(360deg);transform:rotate(360deg)}}
	</style>
	<link rel="stylesheet"
	href="https://use.fontawesome.com/releases/v5.7.0/css/all.css"
	integrity="sha384-lZN37f5QGtY3VHgisS14W3ExzMWZxybE1SJSEsQp9S+oqd12jhcu+A56Ebc1zFSJ"
	crossorigin="anonymous">
<style>
input[type=text], select, textarea {
  width: 100%;
  padding: 12px;
  border: 1px solid #ccc;
  border-radius: 4px;
  box-sizing: border-box;
  margin-top: 6px;
  margin-bottom: 16px;
  resize: vertical;
}
input[type=password] {
  width: 100%;
  padding: 12px;
  border: 1px solid #ccc;
  border-radius: 4px;
  box-sizing: border-box;
  margin-top: 6px;
  margin-bottom: 16px;
  resize: vertical;
}

/* Set a style for all buttons */
button {
  background-color: #17449e;
  color: #fff;
  padding: 14px 20px;
  margin: 8px 0;
  border: none;
  cursor: pointer;
  width: 100%;
}

/* Add a hover effect for buttons */
button:hover {
  opacity: 0.6;
}

/* Extra style for the cancel button (red) */
.cancelbtn {
  width: auto;
  padding: 10px 18px;
  background-color: #00BCD5;
}

</style>
</head>
<jsp:include page="header.jsp"></jsp:include>
<body>
<div class='body__preloader'>
   <div id="loading"></div>
</div>
	<div style="width: 400px; height: 50px; position: absolute; left: 350px; top: 180px;">
		<h1 style="font-family: 'Oxygen', sans-serif; color: #fff; font-weight: bolder;">${customers.fullname}</h1>
	</div>
	<div style="width: 400px; height: 50px; position: absolute; left: 350px; top: 230px;">
		<h3 style="font-family: 'Oxygen', sans-serif; color: #fff;">${customers.phone}</h3>
	</div>
	
	<br>
	<div style="width: 100%; height: 50px;">
		<div style="width: 22%;margin: 0 auto;height: 50px;">
			<ul class="nav1 navbar-nav nav nav-wil">
				<li><a href="client/profile.htm">Thông tin cá nhân</a></li>
				<li><a href="client/calendarOrderCustomer.htm">Lịch đã đặt</a></li>
			</ul>
		</div>
	</div>
	<br>
	<hr style="width: 80%;margin: auto;border-bottom: 2px solid black;">
	<br>
	<div style="border-radius:5px; width: 900px; height: 800px; margin: 0 auto;background-color:#f9f9f9;">
	<div class="container" style="width: 90%;padding-top:30px;">
		<h1 style="color: #17449e;text-align: center;text-transform: uppercase;">Thông tin cá nhân</h1>
		<div style="text-align: center;">${message}</div>  
		<br>
		<form:form class="address" action="client/profile.htm"
			modelAttribute="customers">
			<label>Họ tên</label>
			<form:input path="fullname" class="input-form" required="required" />
			<br>
			<br>
			<label>Số điện thoại</label>
			<form:input path="phone" class="input-form" required="required" />
			<br>
			<br>
			<label>Ngày sinh bé</label>
			<form:input path="birthdaybaby" class="input-form" required="required" />
			<br>
			<br>
			<label>Email</label>
			<form:input path="email" class="input-form" required="required" />
			<br>
			<br>
			<label>Đại chỉ</label>
			<form:input path="address" class="input-form" required="required" />
			<br>
			<br>
			<label>Mật khẩu</label>
			<form:input id="myInput" path="password" type="password"  required="required" />
			<input type="checkbox" onclick="myFunction()"> Hiển thị mật khẩu
			<br>
			<br>
			
			<button type="submit" class="btn" style="color: #fff;width: 20%;">Cập nhật</button>
		</form:form>

	</div>

</div>
<br>
<br>
	<script>
  $(window).bind("load", function() {
    $('.body__preloader').addClass("loaded");
  })
</script>
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




</body>
<jsp:include page="footer.jsp"></jsp:include>
</html>