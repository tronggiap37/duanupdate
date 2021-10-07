<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<meta charset="UTF-8">
<title>Đặt lịch</title>
<link
	href='//fonts.googleapis.com/css?family=Lato:400,100,100italic,300,300italic,400italic,700,700italic,900,900italic'
	rel='stylesheet' type='text/css'>
<!-- /font files -->
<!-- css files -->
<link href="../css/style_recum.css" rel='stylesheet' type='text/css'
	media="all" />
<link rel="../stylesheet" href="css/j-forms.css">
<!-- /css files -->
<script type="text/javascript" src="../js/jquery-2.1.4.min.js"></script>
<script src="https://code.jquery.com/jquery-3.4.1.slim.min.js"
	integrity="sha384-J6qa4849blE2+poT4WnyKhv5vZF5SrPo0iEjwBvKU7imGFAV0wwj1yYfoRSJoZ+n"
	crossorigin="anonymous"></script>
<script
	src="https://cdn.jsdelivr.net/npm/popper.js@1.16.0/dist/umd/popper.min.js"
	integrity="sha384-Q6E9RHvbIyZFJoft+2mJbHaEWldlvI9IOYy5n3zV9zzTtmI3UksdQRVvoxMfooAo"
	crossorigin="anonymous"></script>
<script
	src="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/js/bootstrap.min.js"
	integrity="sha384-wfSDF2E50Y2D1uUdj0O3uMBJnjuUD4Ih7YwaYd1iqfktj0Uod8GCExl3Og8ifwB6"
	crossorigin="anonymous"></script>
<base href="${pageContext.servletContext.contextPath}/">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/2.1.1/jquery.min.js"></script>
<script type="text/javascript">
	$(function() {
		var dtToday = new Date();
		var month = dtToday.getMonth() + 1;
		var day = dtToday.getDate() + 1;
		var year = dtToday.getFullYear();
		if (month < 10)
			month = '0' + month.toString();
		if (day < 10)
			day = '0' + day.toString();
		var minDate = year + '-' + month + '-' + day;
		$('#txtDate').attr('min', minDate);
	});
</script>
<script>
var stateObject = {"Hà Nội": { "Thanh Xuân": ["Thanh Xuân", "Thượng Đình","Kim Giang", "Phương Liệt","Thanh Xuân Nam", "Thanh Xuân Bắc","Khương Mai", "Khương Trung","Khương Đình", "Hạ Đình","Nhân Chính"],
"Hoàn Kiếm": ["Chương Dương","Cửa Đông","Cửa Nam","Đồng Xuân","Hàng Bạc","Hàng Bài","Hàng Bồ","Hàng Bông","Hàng Buồm"," Hàng Đào","Hàng Gai","Hàng Mã","Hàng Trống","Lý Thái Tổ","Phan Chu Trinh","Phúc Tân","Trần Hưng Đạo","Tràng Tiền"],
"Đống Đa": ["Cát Linh","Hàng Bột","Khâm Thiên","Khương Thượng","Kim Liên","Láng Hạ","Láng Thượng","Nam Đồng","Ngã Tư Sở","Ô Chợ Dừa","Phương Liên","Phương Mai","Quang Trung","Quốc Tử Giám","Thịnh Quang","Thổ Quan","Trung Liệt","Trung Phụng","Trung Tự","Văn Chương","Văn Miếu"],
"Ba Đình": ["Cống Vị","Điện Biên","Đội Cấn","Giảng Võ","Kim Mã","Liễu Giai","Ngọc Hà","Ngọc Khánh","Nguyễn Trung Trực","Phúc Xá","Quán Thánh","Thành Công","Trúc Bạch","Vĩnh Phúc"],
"Hai Bà Trưng": ["Bách Khoa","Bạch Đằng","Bạch Mai","Cầu Dền","Đống Mác","Đồng Nhân","Đồng Tâm","Lê Đại Hành","Minh Khai","Nguyễn Du","Phạm Đình Hổ","Phố Huế","Quỳnh Lôi","Quỳnh Mai","Thanh Lương","Thanh Nhàn","Trương Định","Vĩnh Tuy"],
"Hoàng Mai": ["Đại Kim","Định Công","Giáp Bát","Hoàng Liệt","Hoàng Văn Thụ","Lĩnh Nam","Mai Động","Tân Mai","Thanh Trì","Thịnh Liệt","Trần Phú","Tương Mai","Vĩnh Hưng","Yên Sở"],
"Long Biên": ["Bồ Đề","Cự Khối","Đức Giang","Gia Thụy","Giang Biên","Long Biên","Ngọc Lâm","Ngọc Thụy","Phúc Đồng","Phúc Lợi","Sài Đồng","Thạch Bàn","Thượng Thanh","Việt Hưng"],
"Bắc Từ Liêm": ["Cổ Nhuế 1","Cổ Nhuế 2","Đức Thắng","Đông Ngạc","Thụy Phương","Liên Mạc","Thượng Cát","Tây Tựu","Minh Khai","Phú Diễn","Phúc Diễn","Xuân Đỉnh","Xuân Tảo"],
"Tây Hồ": ["Bưởi","Thuỵ Khê","Yên Phụ","Tứ Liên","Nhật Tân","Quảng An","Xuân La","Phú Thượng"],
"Hà Đông": ["Biên Giang","Đồng Mai","Yên Nghĩa","Dương Nội","Hà Cầu","La Khê","Mộ Lao","Nguyễn Trãi","Phú La","Phú Lãm","Phú Lương","Kiến Hưng","Phúc La","Quang Trung","Vạn Phúc","Văn Quán","Yết Kiêu"],
"Nam Từ Liêm": ["Cầu Diễn","Đại Mỗ","Mễ Trì","Mỹ Đình 1","Mỹ Đình 2","Phú Đô","Phương Canh","Tây Mỗ","Trung Văn","Xuân Phương"],
"Cầu Giấy": ["Dịch Vọng","Dịch Vọng Hậu","Mai Dịch","Nghĩa Đô","Nghĩa Tân","Quan Hoa","Trung Hòa","Yên Hòa"],
"Sơn Tây": ["Lê Lợi","Ngô Quyền","Phú Thịnh","Quang Trung","Sơn Lộc","Trung Hưng","Trung Sơn Trầm","Viên Sơn","Xuân Khanh","Cổ Đông","Đường Lâm","Kim Sơn","Sơn Đông","Thanh Mỹ","Xuân Sơn"],
"Ba Vì": ["Ba Trại","Ba Vì","Cẩm Lĩnh","Cam Thượng","Châu Sơn","Chu Minh","Cổ Đô","Đông Quang","Đồng Thái","Khánh Thượng","Minh Châu","Minh Quang","Phong Vân","Phú Châu","Phú Cường","Phú Đông","Phú Phương","Phú Sơn","Sơn Đà","Tản Hồng","Tản Lĩnh","Thái Hòa","Thuần Mỹ","Thụy An","Tiên Phong","Tòng Bạt","Vân Hòa","Vạn Thắng","Vật Lại","Yên Bài"],
"Chương Mỹ": ["Chúc Sơn","Xuân Mai","Đại Yên","Đông Phương Yên","Đông Sơn","Đồng Lạc","Đồng Phú","Hòa Chính","Hoàng Diệu","Hoàng Văn Thụ","Hồng Phong","Hợp Đồng","Hữu Văn","Lam Điền","Mỹ Lương","Nam Phương Tiến","Ngọc Hòa","Phú Nam An","Phú Nghĩa","Phụng Châu","Quảng Bị","Tân Tiến","Tiên Phương","Tốt Động","Thanh Bình","Thủy Xuân Tiên","Thụy Hương","Thượng Vực","Trần Phú","Trung Hòa","Trường Yên","Văn Võ"],
"Phúc Thọ": ["Phúc Thọ","Hát Môn","Hiệp Thuận","Liên Hiệp","Long Xuyên","Ngọc Tảo","Phúc Hòa","Phụng Thượng","Sen Phương","Tam Hiệp","Tam Thuấn","Thanh Đa","Thọ Lộc","Thượng Cốc","Tích Giang","Trạch Mỹ Lộc","Vân Hà","Vân Nam","Vân Phúc","Võng Xuyên","Xuân Đình"],
"Đan Phượng": ["Đan Phượng","Đồng Tháp","Hạ Mỗ","Hồng Hà","Liên Hà","Liên Hồng","Liên Trung","Phương Đình","Song Phượng","Tân Hội","Tân Lập","Thọ An","Thọ Xuân","Thượng Mỗ","Trung Châu"],
"Đông Anh": ["Đông Anh","Bắc Hồng","Cổ Loa","Đại Mạch","Đông Hội","Dục Tú","Hải Bối","Kim Chung","Kim Nỗ","Liên Hà","Mai Lâm","Nam Hồng","Nguyên Khê","Tàm Xá","Thụy Lâm","Tiên Dương","Uy Nỗ","Vân Hà","Vân Nội","Việt Hùng","Vĩnh Ngọc","Võng La","Xuân Canh","Xuân Nộn"],
"Gia Lâm": ["Kim Sơn","Lệ Chi","Kiêu Kỵ","Đình Xuyên","Dương Hà","Ninh Hiệp","Bát Tràng","Cổ Bi","Dương Xá","Dương Quang","Đa Tốn","Phú Thị","Đặng Xá","Kim Lan","Văn Đức","Yên Viên","Đông Dư","Yên Thường","Phù Đổng","Trung Mầu"],
"Hoài Đức": ["Trạm Trôi","An Khánh","An Thượng","Cát Quế","Đắc Sở","Di Trạch","Đông La","Đức Giang","Đức Thượng","Dương Liễu","Kim Chung","La Phù","Lại Yên","Minh Khai","Sơn Đồng","Song Phương","Tiền Yên","Vân Canh","Vân Côn","Yên Sở"],
"Mê Linh": ["Chi Đông","Quang Minh","Chu Phan","Đại Thịnh","Hoàng Kim","Kim Hoa","Liên Mạc","Mê Linh","Tam Đồng","Thạch Đà","Thanh Lâm","Tiền Phong","Tiến Thắng","Tiến Thịnh","Tráng Việt","Tự Lập","Vạn Yên","Văn Khê"],
"Mỹ Đức": ["Đại Nghĩa","An Mỹ","An Phú","An Tiến","Bột Xuyên","Đại Hưng","Đốc Tín","Đồng Tâm","Hồng Sơn","Hợp Thanh","Hợp Tiến","Hùng Tiến","Hương Sơn","Lê Thanh","Mỹ Thành","Phù Lưu Tế","Phúc Lâm","Phùng Xá","Thượng Lâm","Tuy Lai","Vạn Kim","Xuy Xá"],
"Phú Xuyên": ["Phú Xuyên","Phú Minh","Bạch Hạ","Châu Can","Chuyên Mỹ","Đại Thắng","Đại Xuyên","Hoàng Long","Hồng Minh","Hồng Thái","Khai Thái","Minh Tân","Nam Phong","Nam Tiến","Nam Triều","Phú Túc","Phú Yên","Phúc Tiến","Phượng Dực","Quang Lãng","Quang Trung","Sơn Hà","Tân Dân","Tri Thủy","Tri Trung","Văn Hoàng","Vân Từ"],
"Quốc Oai": ["Quốc Oai","Cấn Hữu","Cộng Hòa","Đại Thành","Đồng Quang","Đông Yên","Hòa Thạch","Liệp Tuyết","Nghĩa Hương","Ngọc Liệp","Ngọc Mỹ","Phú Cát","Phú Mãn","Phượng Cách","Sài Sơn","Tân Hòa","Tân Phú","Thạch Thán","Tuyết Nghĩa","Yêm Sơn","Đông Xuân"],
"Sóc Sơn": ["Sóc Sơn","Bắc Phú","Bắc Sơn","Đông Xuân","Đức Hòa","Hiền Ninh","Hồng Kỳ","Kim Lũ","Mai Đình","Minh Phú","Minh Trí","Nam Sơn","Phú Cường","Phù Linh","Phù Lỗ","Phú Minh","Quang Tiến","Tân Dân","Tân Hưng","Tân Minh","Thanh Xuân","Tiên Dược","Trung Giã","Việt Long","Xuân Giang","Xuân Thu"],
"Thạch Thất": ["Liên Quan","Bình Phú","Bình Yên","Cẩm Yên","Cần Kiệm","Canh Nậu","Chàng Sơn","Đại Đồng","Dị Nậu","Đồng Trúc","Hạ Bằng","Hương Ngải","Hữu Bằng","Kim Quan","Lại Thượng","Phú Kim","Phùng Xá","Tân Xã","Thạch Hòa","Thạch Xá","Tiến Xuân","Yên Bình","Yên Trung"],
"Thanh Oai": ["Kim Bài","Bích Hòa","Bình Minh","Cao Dương","Cao Viên","Cự Khê","Dân Hòa","Đỗ Động","Hồng Dương","Kim An","Kim Thư","Liên Châu","Mỹ Hưng","Phương Trung","Tam Hưng","Tân Ước","Thanh Cao","Thanh Mai","Thanh Thùy","Thanh Văn","Xuân Dương"],
"Thường Tín": ["Thường Tín","Chương Dương","Dũng Tiến","Duyên Thái","Hà Hồi","Hiền Giang","Hòa Bình","Khánh Hà","Hồng Vân","Lê Lợi","Liên Phương","Minh Cường","Nghiêm Xuyên","Nguyễn Trãi","Nhị Khê","Ninh Sở","Quất Động","Tân Minh","Thắng Lợi","Thống Nhất","Thư Phú","Tiền Phong","Tô Hiệu","Tự Nhiên","Vạn Điểm","Văn Bình","Văn Phú","Văn Tự","Vân Tảo"],
"Ứng Hòa": ["Vân Đình","Cao Thành","Đại Cường","Đại Hùng","Đội Bình","Đông Lỗ","Đồng Tiến","Đồng Tân","Hoa Sơn","Hòa Lâm","Hòa Nam","Hòa Phú","Hòa Xá","Hồng Quang","Kim Đường","Liên Bạt","Lưu Hoàng","Minh Đức","Phù Lưu","Phương Tú","Quảng Phú Cầu","Sơn Công","Tảo Dương Văn","Trầm Lộng","Trung Tú","Trường Thịnh","Vạn Thái","Viên An","Viên Nội"],
"Thanh Trì": ["Văn Điển","Đại Áng","Đông Mỹ","Duyên Hà","Hữu Hòa","Liên Ninh","Ngọc Hồi","Ngũ Hiệp","Tả Thanh Oai","Tam Hiệp","Tân Triều","Thanh Liệt","Tứ Hiệp","Vạn Phúc","Vĩnh Quỳnh","Yên Mỹ"],
},

	}
	window.onload = function() {
		var countySel = document.getElementById("countySel"), stateSel = document
				.getElementById("stateSel"), districtSel = document
				.getElementById("districtSel");
		for ( var country in stateObject) {
			countySel.options[countySel.options.length] = new Option(country,
					country);
		}
		countySel.onchange = function() {
			stateSel.length = 1; // remove all options bar first
			districtSel.length = 1; // remove all options bar first
			if (this.selectedIndex < 1)
				return; // done
			for ( var state in stateObject[this.value]) {
				stateSel.options[stateSel.options.length] = new Option(state,
						state);
			}
		}
		countySel.onchange(); // reset in case page is reloaded
		stateSel.onchange = function() {
			districtSel.length = 1; // remove all options bar first
			if (this.selectedIndex < 1)
				return; // done
			var district = stateObject[countySel.value][this.value];
			for (var i = 0; i < district.length; i++) {
				districtSel.options[districtSel.options.length] = new Option(
						district[i], district[i]);
			}
		}
	}
</script>
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/2.2.0/jquery.min.js"></script>
<script>
	$(document)
			.ready(

					function() {
						var i = 1 ;
						$('#add')
								.click(
										function() {
											i++;
											$('#dynamic_field')
													.append(
															'<tr id="row'+i+'"> <td><label>Ngày<label><input required="required" style="margin-left:8px; border: 1px solid #ccc;border-radius: 3px;width: 300px;height: 40px;" type="date" name="Dated" >	<label style="margin-left:23px;">Ca<label><select name="ca" id="ca" style="margin-left:6px; border: 1px solid #ccc;border-radius: 3px;width: 200px;height: 40px;"><option value="1">7h10-9h00</option> <option value="2">9h10-10h00</option> <option value="3">14h00-16h00</option> <option value="4">16h10-18h00</option></select> </td> <td> <button type="button" name="remove" id="'+i+'" class="btn btn-danger btn_remove">X</button></td></tr>');
										});

						$(document).on('click', '.btn_remove', function() {
							var button_id = $(this).attr("id");
							$('#row' + button_id + '').remove();
						});

						$('#submit').click(function() {
							$.ajax({
								url : "ajax/insert.htm",
								method : "POST",
								data : $('#add_name').serialize(),
								success : function(data) {
									alert(data);
									$('#add_name')[0].reset();

								}
							});
						});

					});
</script>
<style type="text/css">
.o-hide {
	display: none;
	transition: all ease 0.8s;
}

.o-hide:hover {
	display: block;
}

* {
	box-sizing: border-box;
}

body {
	font-family: Arial, Helvetica, sans-serif;
}
/* Float four columns side by side */
.column {
	float: left;
	width: 25%;
	padding: 0 5px;
}

.rerow {
	/* margin: 0 -5px; */
	width: 60%;
	margin: 0 auto;
	margin-top: 25px;
	/*  top: 130px; */
}
/* Clear floats after the columns */
.rerow:after {
	content: "";
	display: table;
	clear: both;
}
/* Responsive columns */
@media screen and (max-width: 600px) {
	.column {
		width: 100%;
		display: block;
		margin-bottom: 10px;
	}
}
/* Style the counter cards */
.card {
	box-shadow: 0 4px 8px 0 rgba(0, 0, 0, 0.2);
	padding: 16px;
	text-align: center;
	border: 2px dashed white;
	color: white;
	height: 180px;
}

.show {
	width: 100%;
	height: 250px;
	position: absolute;
	top: 88px;
	margin: 0 auto;
	display: flex;
}

.fa {
	font-size: 50px;
}
</style>
<jsp:include page="../header.jsp"></jsp:include>
<body>
	<div class="show">
		<div class="rerow">
			<div class="column">
				<div class="card">
					<!-- <p><i class="fa fa-user"></i></p> -->
					<h3
						style="text-transform: uppercase; font-weight: bolder; margin-top: 25px;">Bước
						1</h3>
					<p style="font-size: 16px; margin-top: 10px;">Điền đầy đủ thông
						tin yêu cầu.</p>
				</div>
			</div>
			<div class="column">
				<div class="card">
					<!-- <p><i class="fa fa-check"></i></p> -->
					<h3
						style="text-transform: uppercase; font-weight: bolder; margin-top: 25px;">Bước
						2</h3>
					<p style="font-size: 16px; margin-top: 10px;">Ấn thêm ngày để
						đặt nhiều ngày.</p>
				</div>
			</div>
			<div class="column">
				<div class="card">
					<!-- <p><i class="fa fa-smile-o"></i></p> -->
					<h3
						style="text-transform: uppercase; font-weight: bolder; margin-top: 25px;">Bước
						3</h3>
					<p style="font-size: 16px; margin-top: 10px;">Vui lòng đặt lịch
						trước 1 ngày.</p>
				</div>
			</div>
			<div class="column">
				<div class="card">
					<!-- <p><i class="fa fa-coffee"></i></p> -->
					<h3
						style="text-transform: uppercase; font-weight: bolder; margin-top: 25px;">Bước
						4</h3>
					<p style="font-size: 16px; margin-top: 10px;">Ấn đặt lịch để
						xác nhận đặt lịch</p>
				</div>
			</div>
		</div>
	</div>
	<div style="width: 60%; margin: 0 auto;">
		<form method="post" action="client/order/orderLichKhachHang2.htm">
			<br> <br>
			<h1
				style="font-family: sans-serif; font-weight: bolder; color: #17449e; text-align: center;">ĐẶT
				LỊCH</h1>
			<br> <br> <label>Email<span style="color: red;">*</span></label>
			<input class="form-control" type="text" name="email"
				value="${user.email}" required="required"><br> <label>Số điện thoại<span
				style="color: red;">*</span></label> <input class="form-control" type="text"
				name="phone" value="${user.phone}" readonly="true"><br>
			<label>Địa chỉ</label>
			<div class="form-group">
				<select name="city" id="countySel"
					style="width: 24%; height: 30px; border: 1px solid #ccc;"
					required="required">
					<option value="" selected="selected" disabled="disabled"
						class="form-select">Thành phố</option>
				</select> <select name="district" id="stateSel"
					style="width: 37%; height: 30px; border: 1px solid #ccc;"
					required="required">
					<option value="" selected="selected" disabled="disabled"
						class="form-select">Quận,Huyện</option>
				</select> <select name="ward" id="districtSel"
					style="width: 38%; height: 30px; border: 1px solid #ccc;"
					required="required">
					<option value="" selected="selected" disabled="disabled"
						class="form-select">Phường</option>
				</select>
			</div>
			<label>Đường<span style="color: red;">*</span></label> <input
				class="form-control" type="text" name="street" required="required"><br>
			<label>Giá/Ca (VNĐ)<span style="color: red;">*</span>
			</label> <input class="form-control" type="text" name="price" id="box1"
				value="120000" readonly="readonly"><br>
			<div class="o-hide">
				<label>Nhân viên</label> <input class="form-control" type="text"
					name="staff" value=""><br>
			</div>
			<div class="o-hide">
				<label>Trạng thái</label> <input class="form-control" type="text"
					name="note" value="Đã gửi"><br>
			</div>
			<div class="form-group">
				<table class="table table-borderless" id="dynamic_field">
					<tr id="box2" value="1">
						<td><label>Ngày</label> <input id="txtDate"
							required="required" type="date" name="Dated"
							style="font-weight: bold; margin-left: 5px; border: 1px solid #ccc; border-radius: 3px; width: 300px; height: 40px;">
							<label style="padding-left: 20px;">Ca</label> <select name="ca"
							id="ca"
							style="font-weight: bold; margin-left: 5px; border: 1px solid #ccc; border-radius: 3px; width: 200px; height: 40px;">
								<option value="1">7h10-9h00</option>
								<option value="2">9h10-11h00</option>
								<option value="3">14h10-16h00</option>
								<option value="4">16h10-18h00</option>
						</select></td>
						<td><button type="button" name="add" id="add"
								class="btn btn-primary">Thêm ngày</button></td>
					</tr>
				</table>
			</div>
			<input class="btn btn-primary" type="submit" value="Đặt lịch">
			<br> <br> <br>
		</form>
	</div>
	<script>
		function calculate() {
			var myBox1 = document.getElementById('box1').value;
			var myBox2 = document.getElementById('box2').value;
			var result = document.getElementById('result');
			var myResult = myBox1 * myBox2;
			document.getElementById('result').value = myResult;
		}
	</script>
</body>
<jsp:include page="../footer.jsp"></jsp:include>
</html>