<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>

<!doctype html>
<html lang="en" b:version='2' class='v2'
	expr:dir='data:blog.languageDirection'
	xmlns='http://www.w3.org/1999/xhtml'
	xmlns:b='http://www.google.com/2005/gml/b'
	xmlns:data='http://www.google.com/2005/gml/data'
	xmlns:expr='http://www.google.com/2005/gml/expr'>
<head>
<title>Tuyển dụng</title>
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta name="keywords"
	content="Classy Job Application Form Widget Responsive, Login form web template,Flat Pricing tables,Flat Drop downs  Sign up Web Templates, Flat Web Templates, Login signup Responsive web template, Smartphone Compatible web template, free webdesigns for Nokia, Samsung, LG, SonyEricsson, Motorola web design" />
<script type="application/x-javascript">
	 addEventListener("load", function() { setTimeout(hideURLbar, 0); }, false); function hideURLbar(){ window.scrollTo(0,1); } 
</script>
<!-- font files -->
<link
	href='//fonts.googleapis.com/css?family=Lato:400,100,100italic,300,300italic,400italic,700,700italic,900,900italic'
	rel='stylesheet' type='text/css'>
<!-- /font files -->
<!-- css files -->
<!-- <link href="../css/style_recum.css" rel='stylesheet' type='text/css'
	media="all" /> -->
<link rel="../stylesheet" href="css/j-forms.css">

<!-- /css files -->
<script type="text/javascript" src="../js/jquery-2.1.4.min.js"></script>
<script type="text/javascript">
	function al() {
		var result = confirm("${message}");
		if (result) {
			alert("Tiếp tục!");
		} else {
			alert("Hay!");
		}
	}
</script>
<script type="text/javascript">
function checkLength(){
    var textbox = document.getElementById("textbox");
    var textbox1 = document.getElementById("textbox1");
    var textbox2 = document.getElementById("textbox2");
    if(textbox.value.length <= 12 && textbox.value.length >= 10){
        
    }
    else{
        alert("Số điện thoại chỉ đươc nhập 10-12 số")
    }
if(textbox1.value.length <= 12 && textbox1.value.length >= 9){
        
    }
    else{
        alert("Số CMND chỉ đươc nhập 9-12 số")
    }
if(textbox2.value.length <= 14 && textbox2.value.length >= 9){
    
}
else{
    alert("Số tài khoản chỉ đươc nhập 9-14 số")
}
}
</script>
<script type="text/javascript">
function validateNumber(e) {
    const pattern = /^[0-9]$/;

    return pattern.test(e.key )
}
</script>
<link rel="stylesheet"
	href="https://use.fontawesome.com/releases/v5.7.0/css/all.css"
	integrity="sha384-lZN37f5QGtY3VHgisS14W3ExzMWZxybE1SJSEsQp9S+oqd12jhcu+A56Ebc1zFSJ"
	crossorigin="anonymous">
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


;
-ms-transform


:rotate(360deg)


;
transform


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


;
-ms-transform


:rotate(360deg)


;
transform


:rotate(360deg)


}
}
</style>
<style>
body {
	font-family: Arial;
	font-size: 17px;
	padding: 8px;
}

* {
	box-sizing: border-box;
}

.row {
	display: -ms-flexbox; /* IE10 */
	display: flex;
	-ms-flex-wrap: wrap; /* IE10 */
	flex-wrap: wrap;
	margin: 0 -16px;
}

.col-25 {
	-ms-flex: 25%; /* IE10 */
	flex: 25%;
}

.col-50 {
	-ms-flex: 50%; /* IE10 */
	flex: 50%;
}

.col-75 {
	-ms-flex: 75%; /* IE10 */
	flex: 75%;
}

.col-25, .col-50, .col-75 {
	padding: 0 16px;
}

.recontainer {
	/* background-color: #f2f2f2; */
	background-color: #fff;
	padding: 5px 20px 15px 20px;
	border-radius: 5px;
	width: 90%;
	margin: 0 auto;
	margin-top: 120px;
	height: 660px;
	/* background-image: linear-gradient(120deg, #66a6ff 0%, #89f7fe 100%); */
}

input[type=radio] {
	float: left;
}

input[type=text] {
	width: 100%;
	margin-bottom: 10px;
	padding: 8px;
	border: 1px solid #ccc;
	border-radius: 3px;
}

input[type=date] {
	width: 100%;
	margin-bottom: 20px;
	padding: 12px;
	border: 1px solid #ccc;
	border-radius: 3px;
	height: 40px;
}

input[type=email] {
	width: 100%;
	margin-bottom: 10px;
	padding: 8px;
	border: 1px solid #ccc;
	border-radius: 3px;
}

input[type=file] {
	margin-left: 90px;
	width: 130px;
	border: 1px solid #ccc;
	border-radius: 3px;
	height: 40px;
}

label {
	margin-bottom: 10px;
	display: block;
}

.icon-container {
	margin-bottom: 20px;
	padding: 7px 0;
	font-size: 24px;
}

.btn {
	background-color: #17449e;
	color: white;
	padding: 12px;
	margin: 10px 0;
	border: none;
	width: 100%;
	border-radius: 3px;
	cursor: pointer;
	font-size: 17px;
}

.btn:hover {
	opacity: 0.1
}

a {
	color: #2196F3;
}

hr {
	border: 1px solid lightgrey;
}

span.price {
	float: right;
	color: grey;
}

/* Responsive layout - when the screen is less than 800px wide, make the two columns stack on top of each other instead of next to each other (also change the direction - make the "cart" column go on top) */
@media ( max-width : 800px) {
	.row {
		flex-direction: column-reverse;
	}
	.col-25 {
		margin-bottom: 20px;
	}
}

.o-hide {
	display: none;
	transition: all ease 0.8s;
}

.o-hide:hover {
	display: block;
}
</style>
<script type="text/javascript">
	function randomString() {
		var chars = "0123456789ABCDEFGHIJKLMNOPQRSTUVWXTZ";
		var string_length = 8;
		var randomstring = '';
		for (var i = 0; i < string_length; i++) {
			var rnum = Math.floor(Math.random() * chars.length);
			randomstring += chars.substring(rnum, rnum + 1);
		}
		document.getElementById("abc").value = randomstring;
	}

	var loadFile = function(event) {
		var reader = new FileReader();
		reader.onload = function() {
			var output = document.getElementById('output');
			output.src = reader.result;
		};
		reader.readAsDataURL(event.target.files[0]);
	};
</script>
</head>
<jsp:include page="header.jsp"></jsp:include>
<body onload="randomString();">

	<div class='body__preloader'>
		<div id="loading"></div>
	</div>
	<br>
	<br>
	<br>
	<img alt="images" src="images/bed-room.jpg"
		style="width: 100%; height: 900px; position: absolute; top: 88px;">
	<div
		style="background-image: linear-gradient(rgba(0, 0, 0, 0.5), rgba(0, 0, 0, 0.5)); width: 100%; height: 900px; position: absolute; top: 88px;">
	</div>
	<!-- </div> -->
	<div style="width: 100%; height: 900px; position: absolute; top: 88px;">
		<div style="width: 100%; height: 900px; margin: 0 auto;">
			<!-- left -->
			<div style="width: 90%; height: 900px; margin: 0 auto;">
				<div class="row" style="width: 100%;">
					<div class="col-75">
						<div class="recontainer">
							<div
								style="width: 60%; float: left; padding: 5px 20px 15px 20px;">
								<br>
								<h3
									style="text-align: center; color: #17449e; font-weight: bold; text-transform: capitalize; font-family: 'Dosis', sans-serif;"
									class="header-w3ls">Tuyển dụng nhân viên chăm sóc trẻ sơ
									sinh</h3>
								<br>
								<h4 style="color: black; text-align: center;"
									class="header-w3ls">${message}</h4>
								<form:form action="client/recruitment.htm" method="post"
									commandName="recruitment">
									<br>
									<div class="row">
										<div class="col-50">
											<img style="width: 130px; height: 150px; margin-left: 90px;"
												id="output" />
											<form:input path="images" class="form-control" type="file"
												id="name" name="name" accept="images/*"
												onchange="loadFile(event)" required="required" />
											<br> <label>Họ tên<span style="color: red;">*</span></label>
											<form:input path="fullname" type="text" id="name" name="name"
												required="required" />

											<label>Số điện thoại<span style="color: red;">*</span></label>
											<form:input onkeypress="return validateNumber(event)" path="phone" type="text" id="textbox" name="name"
												required="required" />

											<div class="o-hide">
												<label>Mật khẩu<span style="color: red;">*</span></label>
												<form:input path="password" type="text" id="abc"/>
											</div>

											<label style="margin-bottom: 10px;">Giới tính<span
												style="color: red;">*</span></label> <br>

											<div class="row" style="margin-bottom: 10px;">
												<div class="col-50">
													<form:radiobutton path="gender" id="a-option"
														name="selector1" value="Nam" required="required" />
													<label for="a-option">Nam</label>
													<div class="check"></div>
												</div>
												<div class="col-50">
													<form:radiobutton path="gender" id="b-option"
														name="selector1" value="Nữ" required="required" />
													<label for="b-option">Nữ</label>
													<div class="check">
														<div class="inside"></div>
													</div>
												</div>
											</div>
											<label>Ngày sinh<span style="color: red;">*</span></label>
											<form:input path="birthday" type="date" id="name" name="name"
												required="required" />
										</div>
										<div class="col-50">
											<label>Email<span style="color: red;"> *</span></label>
											<form:input path="email" type="email" id="email" name="email"
												placeholder="Mail@example.com" required="required" />

											<label> Địa chỉ<span style="color: red;">*</span></label>
											<form:input path="address" type="text" id="name" name="name"
												required="required" />

											<label>Quê quán<span style="color: red;">*</span></label>
											<form:input path="hometown" type="text" id="name" name="name"
												required="required" />

											<label>Kinh nghiệm<span style="color: red;">*</span></label>
											<form:input path="experience" type="text" id="name"
												name="name" required="required" />

											<label>Bằng cấp<span style="color: red;">*</span></label>
											<form:input path="accountNumberBank" type="text" id="name"
												name="name" required="required" />

											<label>Số tài khoản<span style="color: red;">*</span></label>
											<form:input id="textbox2" onkeypress="return validateNumber(event)"  path="degree" type="text" name="name"
												required="required" />

											<label>Số CMND<span style="color: red;">*</span></label>
											<form:input id="textbox1" onkeypress="return validateNumber(event)"  path="peopleid" type="text" name="name"
												required="required" />

											<div class="o-hide">
												<label for="expmonth" style="color: red;">Chức vụ<span>*</span></label>
												<form:input path="role" type="text" id="name" name="name" />
											</div>
										</div>
										<div class="o-hide">
											<label>Trang thai</label>
											<form:input path="status" type="text" id="name" name="name"
												value="Waiting" />
										</div>
									</div>
									<input type="submit" value="Nộp hồ sơ ứng tuyển" onclick="checkLength()" name="textboxSubmit" 
										class="btn">
								</form:form>
							</div>
							<div style="width: 40%; float: left; height: 630px;">
								<div style="width: 90%; height: 620px; margin: 0 auto;">
									<div style="height: 45%;">
										<h3
											style="color: #17449e; padding-top: 25px; color: black; font-weight: bold; text-transform: upercase; font-family: 'Dosis', sans-serif;"
											class="header-w3ls">Liên hệ ngay</h3>
										<br>
										<h4
											style="text-transform: upercase; font-family: 'Dosis', sans-serif; font-weight: bold;">Số
											điện thoại</h4>
										<h4
											style="font-family: 'Dosis', sans-serif; padding-top: 5px;">(+84)
											393 883 824</h4>
										<h4
											style="text-transform: upercase; font-family: 'Dosis', sans-serif; font-weight: bold; padding-top: 15px;">Email</h4>
										<h4
											style="font-family: 'Dosis', sans-serif; padding-top: 5px;">bbestcare@gmail.com</h4>
										<h4
											style="text-transform: upercase; font-family: 'Dosis', sans-serif; font-weight: bold; padding-top: 15px;">Địa
											chỉ</h4>
										<h4
											style="font-family: 'Dosis', sans-serif; padding-top: 5px;">Tòa
											nhà FPT Polytechnic, Phố Trịnh Văn Bô, Xuân Phương, Nam Từ
											Liêm, Hà Nội, Việt Nam</h4>
									</div>
									<div style="height: 55%;">
										<iframe
											style="height: 350px; width: 420px; border-radius: 5px;"
											src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3723.8638558814223!2d105.7445984147247!3d21.0381327928346!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x313454b991d80fd5%3A0x53cefc99d6b0bf6f!2zVHLGsOG7nW5nIENhbyDEkeG6s25nIEZQVCBQb2x5dGVjaG5pYw!5e0!3m2!1svi!2s!4v1610628592329!5m2!1svi!2s"
											width="600" height="450" frameborder="0" style="border:0;"
											allowfullscreen="" aria-hidden="false" tabindex="0"></iframe>
									</div>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
	<div style="width: 100%; height: 530px;"></div>
	<br>
	<br>
	<br>
	<script>
		$(window).bind("load", function() {
			$('.body__preloader').addClass("loaded");
		})
	</script>
</body>
<jsp:include page="footer.jsp"></jsp:include>
</html>
