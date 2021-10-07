<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<title>Thông tin nhân viên</title>
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta charset="utf-8">
<meta name="keywords"
	content="Square Profile Widget a Flat Responsive Widget,Login form widgets, Sign up Web forms , Login signup Responsive web form,Flat Pricing table,Flat Drop downs,Registration Forms,News letter Forms,Elements" />
<link
	href="https://fonts.googleapis.com/css?family=Nunito:200,200i,300,300i,400,400i,600,600i,700,700i,800,800i,900,900i"
	rel="stylesheet">

<link href="../../../css/fontawesome-all.min.css" rel="stylesheet"
	type="text/css" media="all">
<link href="../../../css/style_profile.css" rel='stylesheet'
	type='text/css' />
<!-- style.css-file -->
<!--webfonts-->

<link href="//fonts.googleapis.com/css?family=Roboto:400,500,700,900"
	rel="stylesheet">
<!--//webfonts-->
</head>
<body>

	<!-- main -->

	<div class="center-container">
		 <!-- <div class="w3ls_banner_info">  -->
		 
		<div style="border:1px solid #2193b0; background-color: #2193b0;">
			<div style="font-size: 40px;font-weight: bolder;position: absolute;top: 20px;right: 30px;">
				<a href="../../../manage/dashboard/caringstaff.htm" style="color: red;">X</a>
			</div>
			<h1 style="text-transform: uppercase;">Thông tin cá nhân</h1>
			<br>
			<div class="profile">
				<div class="wrap">
					<div class="profile-main">
						<div class="profile-pic wthree">
							<img src="../../../images/${staff.images}">
							<h3>${staff.fullname}</h3>
							<div class="w3ls-agile-left">
								<!---728x90--->

								<ul class="address">
									<li>
										<ul class="address-text">
											<li><b>SĐT </b></li>
											<li>:</li>
											<li><span class="w3">${staff.phone}</span></li>
										</ul>
									</li>
									<li>
										<ul class="address-text">
											<li><b>Mật khẩu</b></li>
											<li>:</li>
											<li><span class="w3">${staff.password}</span></li>
										</ul>
									</li>
									<li>
										<ul class="address-text">
											<li><b>Ngày sinh </b></li>
											<li>:</li>
											<li><span class="w3">${staff.birthday}</span></li>
										</ul>
									</li>
									<li>
										<ul class="address-text">
											<li><b>Giới tính </b></li>
											<li>:</li>
											<li><span class="w3">${staff.gender}</span></li>
										</ul>
									</li>
									<li>
										<ul class="address-text">
											<li><b>Địa chỉ </b></li>
											<li>:</li>
											<li><span class="w3">${staff.address} </span></li>
										</ul>
									</li>
									
									<li>
										<ul class="address-text">
											<li><b>Email </b></li>
											<li>:</li>
											<li><span class="w3">${staff.email}</span></a></li>
										</ul>
									</li>
									<li>
										<ul class="address-text">
											<li><b>Quê quán</b></li>
											<li>:</li>
											<li><span class="w3">${staff.hometown}</span></a></li>
										</ul>
									</li>
									<li>
										<ul class="address-text">
											<li><b>Số CMND </b></li>
											<li>:</li>
											<li><span class="w3">${staff.peopleid}</span></a></li>
										</ul>
									</li>
									<li>
										<ul class="address-text">
											<li><b>Số tài khoản </b></li>
											<li>:</li>
											<li><span class="w3">${staff.accountNumberBank}</span></a></li>
										</ul>
									</li>
									

									<li>
										<ul class="address-text">
											<li><b>Ghi chú </b></li>
											<li>:</li>
											<li><span class="w3">${staff.status}</span></a></li>
										</ul>
									</li>


								</ul>
								<div class="clear"></div>
							</div>

						</div>
						<br>
						<div class="profile-ser" style="width:70%; margin: auto;text-align: center;">
							<h4>Kỹ năng làm việc</h4>
							<div class="awards-agileinfo  w3ls-section">
								<div class="awardsw3-agileits banner-agileinfo">
									<div class="container">
										<div class="w3ls_banner_bottom_grids">
												<div class="address-text">
												 <b>Bằng cấp:</b>  ${staff.degree}
												</div>
												<div class="address-text">
												<b>Kinh nghiệm:</b> ${staff.experience}
												</div>
										</div>
									</div>
								</div>

							</div>
							<!-- //Awards-->

						</div>
						<div class="clear"></div>
						
					</div>
				</div>
			</div>
			<!--footer-->
			<div class="footer-w3">
				<p>&copy; Hệ thống chăm sóc trẻ sơ sinh Bbestcare</p>
			</div>
			<!--//footer-->

		</div>
	 </div> 
	<!-- //main -->

	<script src="../js/jquery.min.v3.js"></script>
	<script src="../js/jquery.circlechart.js"></script>
	<script>
		$('.demo-1').percentcircle();

		$('.demo-2').percentcircle({
			animate : false,
			diameter : 100,
			guage : 3,
			coverBg : '#000',
			bgColor : '#ff0000',
			fillColor : '#000',
			percentSize : '50px',
			percentWeight : 'normal'
		});
	</script>
	<script type="text/javascript">
		var _gaq = _gaq || [];
		_gaq.push([ '_setAccount', 'UA-36251023-1' ]);
		_gaq.push([ '_setDomainName', 'jqueryscript.net' ]);
		_gaq.push([ '_trackPageview' ]);

		(function() {
			var ga = document.createElement('script');
			ga.type = 'text/javascript';
			ga.async = true;
			ga.src = ('https:' == document.location.protocol ? 'https://ssl'
					: 'http://www')
					+ '.google-analytics.com/ga.js';
			var s = document.getElementsByTagName('script')[0];
			s.parentNode.insertBefore(ga, s);
		})();
	</script>


</body>
</html>