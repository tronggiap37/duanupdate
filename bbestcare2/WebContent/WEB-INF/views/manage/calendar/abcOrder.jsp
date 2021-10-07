<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<%@ taglib uri="http://java.sun.com/jstl/core_rt" prefix="c"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<title>Insert title here</title>
<base href="${pageContext.servletContext.contextPath}/">
 <link href="vendor/fontawesome-free/css/all.min.css" rel="stylesheet" type="text/css">
  <link href="https://fonts.googleapis.com/css?family=Nunito:200,200i,300,300i,400,400i,600,600i,700,700i,800,800i,900,900i" rel="stylesheet">

  <!-- Custom styles for this template -->
  <link href="css/sb-admin-2.min.css" rel="stylesheet">
  <link rel="stylesheet" href="path/to/font-awesome/css/font-awesome.min.css">

  <!-- Custom styles for this page -->
  <link href="vendor/datatables/dataTables.bootstrap4.min.css" rel="stylesheet">
<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/2.2.0/jquery.min.js"></script>
	<script>
var stateObject = {
// "Thanh Xu�n": { "Khuong ��nh": ["new Delhi", "North Delhi"],
// "Kerala": ["Thiruvananthapuram", "Palakkad"],
// "Goa": ["North Goa", "South Goa"],
// },
// "Australia": {
// "South Australia": ["Dunstan", "Mitchell"],
// "Victoria": ["Altona", "Euroa"]
// }, "Canada": {
// "Alberta": ["Acadia", "Bighorn"],
// "Columbia": ["Washington", ""]
// },

"Hà Nội": { "Thanh Xuân": ["Thanh Xuân", "Thượng Đình","Kim Giang", "Phương Liệt","Thanh Xuân Nam", "Thanh Xuân Bắc","Khương Mai", "Khương Trung","Khương Đình", "Hạ Đình","Nhân Chính"],
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
window.onload = function () {
var countySel = document.getElementById("countySel"),
stateSel = document.getElementById("stateSel"),
districtSel = document.getElementById("districtSel");
for (var country in stateObject) {
countySel.options[countySel.options.length] = new Option(country, country);
}
countySel.onchange = function () {
stateSel.length = 1; // remove all options bar first
districtSel.length = 1; // remove all options bar first
if (this.selectedIndex < 1) return; // done
for (var state in stateObject[this.value]) {
stateSel.options[stateSel.options.length] = new Option(state, state);
}
}
countySel.onchange(); // reset in case page is reloaded
stateSel.onchange = function () {
districtSel.length = 1; // remove all options bar first
if (this.selectedIndex < 1) return; // done
var district = stateObject[countySel.value][this.value];
for (var i = 0; i < district.length; i++) {
districtSel.options[districtSel.options.length] = new Option(district[i], district[i]);
}
}
}
</script>
	<script>
	$(document)
			.ready(
					
					function() {
						var i = 1;
						$('#add')
								.click(
										function() {
											i++;
											$('#dynamic_field')
													.append(
															'<tr id="row'+i+'"> <td><input type="date" name="Dated" >Dated</td> <td> <button type="button" name="remove" id="'+i+'" class="btn btn-danger btn_remove">X</button></td></tr>');
										});

						$(document).on('click', '.btn_remove', function() {
							var button_id = $(this).attr("id");
							$('#row' + button_id + '').remove();
						});

						$('#submit').click(function() {
							$.ajax({
								url:"ajax/insert.htm",
								method:"POST",
								data:$('#add_name').serialize(),
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
</style>
</head>
<jsp:include page="../header.jsp"></jsp:include>
<body id="page-top">
	<div class="container-fluid">

		<!-- DataTales Example -->
		<div class="card shadow mb-4">
			<div class="card-header py-3">
				<h6 style="float: left;" class="m-0 font-weight-bold text-primary">Đăng ký lịch làm việc</h6>
				<!-- <a href="manage/calendar/insert.htm"><i style="float: right; font-size: 20px"
					class="far fa-plus-square">&nbsp;&nbsp;Thêm lịch</i></a> -->
			</div>
			<div class="card-body">
				<div class="table-responsive">
					<div>
					<div style="width: 50%; margin: 0 auto;">
						<form method="post" action="manage/calendar/orderLichNhanVien.htm">
						<div class="form-group">
						<label>Ho ten</label>
						<input class="form-control" type="text" name="fullname" value="${staff.fullname}"><h6></h6>
						</div>
						<div class="form-group">
						<label>SDT</label>
						<input class="form-control" type="text" name="phone" value="${staff.phone}"><h6></h6>
						</div>
						<div class="form-group">
				<select name="city" id="countySel" >
				  <option value="Hà Nội" selected="selected" disabled="disabled" class="form-control">Thành phố</option>
				 </select>
				<select name="district" id="stateSel">
				   <option value="" selected="selected" disabled="disabled" class="form-control" >Quận,Huyện</option> 
				</select>
				<select name="ward" id="districtSel">
				    <option value="" selected="selected" disabled="disabled" class="form-control" >Phường</option>
				</select>
				</div>
						
						<div class="o-hide" >
						<div class="form-group">
						<label>Ghi chú</label>
						<input class="form-control" type="text" name="note" value="Chưa làm" >
						</div>
						</div>
						
						<label>Ca</label>
						<div class="mb-3 form-check" > 
						<div><input class="form-check-input" type="checkbox" name="ca" value="1">7h10-9h00 </div>
						<div><input class="form-check-input" type="checkbox" name="ca" value="2">9h10-10h00 </div>
						<div ><input class="form-check-input" type="checkbox" name="ca" value="3">14h10-16h00 </div>
						<div ><input class="form-check-input" type="checkbox" name="ca" value="4">16h10-18h00 </div>
						</div>	
							
						<div class="table-responsive">
							<table class="table table-bordered" id="dynamic_field">
								<tr>
									<td><input type="date" name="Dated">Dated</td>
									<td><button type="button" name="add" id="add"
											class="btn btn-primary">Add calendar</button></td>
								</tr>
							</table>
							</div>
							
							
							<input type="submit" class="btn btn-primary" value="Submit">
					</form>
					</div>
					</div>
					
					

				</div>
			</div>
		</div>
	</div>

	<!-- Bootstrap core JavaScript-->
	<script src="vendor/jquery/jquery.min.js"></script>
	<script src="vendor/bootstrap/js/bootstrap.bundle.min.js"></script>

	<!-- Core plugin JavaScript -->
	<script src="vendor/jquery-easing/jquery.easing.min.js"></script>

	<!-- Custom scripts for all pages -->
	<script src="js/sb-admin-2.min.js"></script>

	<!-- Page level plugins -->
	<script src="vendor/datatables/jquery.dataTables.min.js"></script>
	<script src="vendor/datatables/dataTables.bootstrap4.min.js"></script>

	<!-- Page level custom scripts -->
	<script src="js/demo/datatables-demo.js"></script>
</body>
<jsp:include page="../footer.jsp"></jsp:include>
</html>