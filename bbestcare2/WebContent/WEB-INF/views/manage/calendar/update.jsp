<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<%@ page import="java.io.*,java.util.*,java.sql.*"%>
<%@ page import="javax.servlet.http.*,javax.servlet.*"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/sql" prefix="sql"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@taglib uri="http://www.springframework.org/tags" prefix="s"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>Insert title here</title>
<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css" integrity="sha384-Vkoo8x4CGsO3+Hhxv8T/Q5PaXtkKtu6ug5TOeNV6gBiFeWPGFN9MuhOf23Q9Ifjh" crossorigin="anonymous">
<script src="https://code.jquery.com/jquery-3.4.1.slim.min.js" integrity="sha384-J6qa4849blE2+poT4WnyKhv5vZF5SrPo0iEjwBvKU7imGFAV0wwj1yYfoRSJoZ+n" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.0/dist/umd/popper.min.js" integrity="sha384-Q6E9RHvbIyZFJoft+2mJbHaEWldlvI9IOYy5n3zV9zzTtmI3UksdQRVvoxMfooAo" crossorigin="anonymous"></script>
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/js/bootstrap.min.js" integrity="sha384-wfSDF2E50Y2D1uUdj0O3uMBJnjuUD4Ih7YwaYd1iqfktj0Uod8GCExl3Og8ifwB6" crossorigin="anonymous"></script>

<!-- Custom fonts for this template -->
<link href="vendor/fontawesome-free/css/all.min.css" rel="stylesheet" type="text/css">
<link href="https://fonts.googleapis.com/css?family=Nunito:200,200i,300,300i,400,400i,600,600i,700,700i,800,800i,900,900i" rel="stylesheet">
<!-- Custom styles for this template -->
<link href="css/sb-admin-2.min.css" rel="stylesheet">
<link rel="stylesheet" href="path/to/font-awesome/css/font-awesome.min.css">
<!-- Custom styles for this page -->
<link href="vendor/datatables/dataTables.bootstrap4.min.css" rel="stylesheet">
<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">
<script src="http://code.jquery.com/jquery-1.11.3.min.js"></script>
<script src="https://nightly.datatables.net/js/jquery.dataTables.js"></script>

<base href="${pageContext.servletContext.contextPath}/">
<style>
body {font-family: Arial;}

/* Style the tab */
.tab {
  overflow: hidden;
  border: 1px solid #ccc;
  background-color: #f1f1f1;
  border-radius: 3px;
  width: 98.5%;
  margin: 0 auto;
}

/* Style the buttons inside the tab */
.tab button {
  background-color: inherit;
  float: left;
  border: none;
  outline: none;
  cursor: pointer;
  padding: 14px 16px;
  transition: 0.3s;
  font-size: 17px;
}

/* Change background color of buttons on hover */
.tab button:hover {
  background-color: #ddd;
}

/* Create an active/current tablink class */
.tab button.active {
  background-color: #ccc;
}

/* Style the tab content */
.tabcontent {
  display: none;
  padding: 6px 12px;
 
  
}

.fill{

/* left: 1065px;
top: 120px; */
float: left;
width: 50%;
border-radius:3px;
border: 1px solid #d1d3e2; 
}

.filterslot{
	width: 80%;
	height:30px;
	margin: 0 auto;
}

/* Style the close button */
.topright {
  float: right;
  cursor: pointer;
  font-size: 28px;
}

.topright:hover {color: red;}
</style>

<sql:setDataSource var="snapshot"
	driver="com.microsoft.sqlserver.jdbc.SQLServerDriver"
	url="jdbc:sqlserver://localhost:1433;databaseName=BBESTCARE" user="sa"
	password="quan" />

<sql:query dataSource="${snapshot}" var="result1">
         select * from LichNhanVien where  Note = N'Chưa làm' ;
 </sql:query>

</head>
<jsp:include page="../../manage/header.jsp"></jsp:include>
<body>
 		<div class="container-fluid">
          <!-- DataTales Example -->
          <div class="card shadow mb-4">
            <div class="card-header py-3">
              <h6 style="float:left;" class="m-0 font-weight-bold text-primary">Xếp lịch khách hàng</h6>    
            </div>
            <div class="card-body">
              <div class="table-responsive">
                <!-- left -->
		<div style="width: 50%; float:left;border-right: thin solid #f1f1f1;"> 
			<div style="width: 90%;margin: auto;"> 
			<h3>Lịch đặt của khách hàng</h3>
			 <form:form action="manage/calendar/update.htm" modelAttribute="lichkhachhang">
				<div class="form-group">
					<form:label path="id">Id</form:label>
					<form:input class="form-control" type="text" path="id" required="required"
						readonly="true" />
				</div>
				<div class="form-group">
					<form:label path="iD_Orders">Id Order</form:label>
					<form:input name="id" class="form-control" type="text" path="iD_Orders" required="required"
						readonly="true" />
				</div>
				<div class="form-group">
					<form:label path="email">Email</form:label>
					<form:input class="form-control" path="email" required="required" readonly="true"/>
				</div>
				<div class="form-group">
					<form:label path="phone">Phone</form:label>
					<form:input class="form-control" path="phone" required="required" readonly="true"/>
				</div>
				
				<label>Địa chỉ</label>
				<div style="width: 550px;border: 1px solid #ccc; border-radius: 3px;height: 35px;">
				<form:input size="10px;" style="border: 1px solid #fff;" path="ward" readonly="true"/>-
				<form:input size="10px;" style="border: 1px solid #fff;" path="district" readonly="true"/>-
				<form:input size="5px;" style="border: 1px solid #fff;" path="city" readonly="true"/>
				</div>
				
				<div class="form-group">
					<form:label path="street">Đường</form:label>
					<form:input class="form-control" path="street" required="required" readonly="true"/>
				</div>
				<div class="form-group">
					<form:label path="dated">Ngày</form:label>
					<form:input class="form-control" path="dated" type="date" required="required" readonly="true"/>
				</div>
				
				<div class="form-group">
				<form:label path="staff">SDT nhân viên</form:label>
				<form:input class="form-control" path="staff"/>
				</div>
				
				<label>Ca</label>
				<form:select path="slot" name="slot" id="slot" class="form-control">
					<form:option value="1">1(8-10.AM)</form:option>
					<form:option value="2">2(10-12.AM)</form:option>
					<form:option value="3">3(1-3.PM)</form:option>
					<form:option value="4">4(3-5.PM)</form:option>
				</form:select>
				<br>
				<div class="form-group">
					<form:label path="note">Trạng thái:</form:label>
					<form:select class="form-control" path="note"
						name="country" onclick="myFunction()">
						<form:option path="note"  value="Đã gửi" />Đã gửi
						<form:option path="note" value="Đã xếp" />Đã xếp
   						</form:select>
				</div>



				<button type="submit" class="btn btn-primary">Update</button>
			</form:form> 
			</div>
		</div>
		<!-- left -->
		
		<!-- right -->
		<div style="width: 50%; float:left;">
			<div id="London" class="table" style="width: 90%;margin: auto;"> 
  <span onclick="this.parentElement.style.display='none'" class="topright">&times</span>
		<h3>Lịch Nhân Viên</h3>
		<div class="filterslot">
			<div id="ofice" style="width: 50%;float: left;">
				<input class="text" type="checkbox" name="ofc" value="1">Ca 1 
				<input class="text" type="checkbox" name="ofc" value="2">Ca 2
				<input class="text" type="checkbox" name="ofc" value="3">Ca 3
				<input class="text" type="checkbox" name="ofc" value="4">Ca 4
			</div>
			<div class="ip">
			<input class="fill" type="text" id="myInput"
				onkeyup="myFunction()" placeholder="Search for names.."
				title="Type in a name">
			</div>
		</div>
		<hr>
		<table border="1" width="100% " class="table table-bordered" style="border: 1px solid #dddfeb;border-radius:3px;" id="example" cellspacing="0" > 
			<thead>
			<tr>
				<th scope="col">Id</th>
				<th scope="col">Phone</th>
				<th scope="col">Full Name</th>
				<th scope="col">Địa chỉ</th>
				<th scope="col">Dated</th>
				<th scope="col">Slot</th>
				<!-- <th scope="col">Note</th> -->
<!-- 				<th scope="col">Hành động</th>
 -->			</tr>
			</thead>
			<tbody>
			<c:forEach var="row1" items="${result1.rows}">
				<tr>
					<td scope="row"><c:out value="${row1.Id}" /></td>
					<td scope="row"><c:out value="${row1.Phone}" /></td>
					<td scope="row"><c:out value="${row1.Fullname}" /></td>
					<td scope="row"><c:out
							value="${row1.District}" /></td>
					<td scope="row"><c:out value="${row1.Dated}" /></td>
					<td scope="row"><c:out value="${row1.Slot}" /></td>
					<%-- <td scope="row"><c:out value="${row1.Note}" /></td> --%>
<%-- 					<td scope="row"><a href="manage/calendar/delete/${row1.id}.htm" style="color: white; background-color: red; border: 1px solid red;border-radius: 50px; ">Hủy</a>
 --%>					
				
				</tr>
			</c:forEach>
		</tbody>
		</table>
</div>
		</div>
		<!-- right -->
		
	
</div>
</div>
</div>
</div>
        <!-- /.container-fluid -->
<script type="text/javascript">
		$(document).ready(
				function() {
					var table = $('#example').DataTable();

					$('input:checkbox').on(
							'change',
							function() {
								//build a regex filter string with an or(|) condition
								/* var positions = $('input:checkbox[name="pos"]:checked').map(function() {
								  return '^' + this.value + '$';
								}).get().join('|');
								
								//filter in column 1, with an regex, no smart filtering, not case sensitive
								table.column(1).search(positions, true, false, false).draw(false); */

								//build a filter string with an or(|) condition
								var offices = $(
										'input:checkbox[name="ofc"]:checked').map(
										function() {
											return this.value;
										}).get().join('|');

								//now filter in column 2, with no regex, no smart filtering, not case sensitive
								table.column(5).search(offices, true, false,
										false).draw(false);

							});

				});
	</script>

	<script>
		function myFunction() {
			var input, filter, table, tr, td, i, txtValue;
			input = document.getElementById("myInput");
			filter = input.value.toUpperCase();
			table = document.getElementById("example");
			tr = table.getElementsByTagName("tr");
			for (i = 0; i < tr.length; i++) {
				td = tr[i].getElementsByTagName("td")[3];
				if (td) {
					txtValue = td.textContent || td.innerText;
					if (txtValue.toUpperCase().indexOf(filter) > -1) {
						tr[i].style.display = "";
					} else {
						tr[i].style.display = "none";
					}
				}
			}
		}
	</script>
		
<script>
function openCity(evt, cityName) {
  var i, tabcontent, tablinks;
  tabcontent = document.getElementsByClassName("tabcontent");
  for (i = 0; i < tabcontent.length; i++) {
    tabcontent[i].style.display = "none";
  }
  tablinks = document.getElementsByClassName("tablinks");
  for (i = 0; i < tablinks.length; i++) {
    tablinks[i].className = tablinks[i].className.replace(" active", "");
  }
  document.getElementById(cityName).style.display = "block";
  evt.currentTarget.className += " active";
}

// Get the element with id="defaultOpen" and click on it
document.getElementById("defaultOpen").click();
</script>
   
   
   
   
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
<script>
var stateObject = {


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
<jsp:include page="../../manage/footer.jsp"></jsp:include>
</html>