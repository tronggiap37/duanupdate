<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<%@ page import="java.io.*,java.util.*,java.sql.*"%>
<%@ page import="javax.servlet.http.*,javax.servlet.*"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/sql" prefix="sql"%>
<!DOCTYPE html>
<html>
<jsp:include page="header.jsp"></jsp:include>
<head>
<meta name="viewport" content="width=device-width, initial-scale=1">

<link href="vendor/fontawesome-free/css/all.min.css" rel="stylesheet"
	type="text/css">
<link
	href="https://fonts.googleapis.com/css?family=Nunito:200,200i,300,300i,400,400i,600,600i,700,700i,800,800i,900,900i"
	rel="stylesheet">
<link rel="stylesheet"
	href="path/to/font-awesome/css/font-awesome.min.css">
<link href="vendor/datatables/dataTables.bootstrap4.min.css"
	rel="stylesheet">


<script src="http://code.jquery.com/jquery-1.11.3.min.js"></script>
<script src="https://nightly.datatables.net/js/jquery.dataTables.js"></script>
<sql:setDataSource var="snapshot"
	driver="com.microsoft.sqlserver.jdbc.SQLServerDriver"
	url="jdbc:sqlserver://localhost:1433;databaseName=BBESTCARE" user="sa"
	password="quan" />

<sql:query dataSource="${snapshot}" var="result">
         select * from OrderDetail where Phone = '${user.phone}' and Note = N'Đã thanh toán' or Note = N'Đã hủy';
         
      </sql:query>
<sql:query dataSource="${snapshot}" var="result1">
         select * from OrderDetail  where Phone = '${user.phone}' and Note = N'Đã xếp' ;
      </sql:query>

<sql:query dataSource="${snapshot}" var="result2">
         select * from OrderDetail  where Phone = '${user.phone}' and Note = N'Đã gửi' ;
      </sql:query>
<sql:query dataSource="${snapshot}" var="result7">
         select count(*) as "HT" from OrderDetail where Phone = '${user.phone}' and Note = N'Đã thanh toán';
         
      </sql:query>
<sql:query dataSource="${snapshot}" var="result8">
         select count(*) as "DX" from OrderDetail  where Phone = '${user.phone}' and Note = N'Đã xếp' ;
      </sql:query>

<sql:query dataSource="${snapshot}" var="result9">
         select count(*) as "DG" from OrderDetail  where Phone = '${user.phone}' and Note = N'Đã gửi' ;
      </sql:query>
<sql:query dataSource="${snapshot}" var="result12">
         select count(*) as "HL" from OrderDetail  where Phone = '${user.phone}' and Note = N'Đã hủy' ;
      </sql:query>
<style>
body {
	font-family: Arial;
}

/* Style the tab */
.tab {
	overflow: hidden;
	border: 1px solid #ccc;
	background-color: #f1f1f1;
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
	border: 1px solid #ccc;
	border-top: none;
}

/* Style the close button */
.topright {
	float: right;
	cursor: pointer;
	font-size: 28px;
}

.topright:hover {
	color: red;
}

.cancel {
	border-radius: 3px;
	text-align: center;
	background-color: red;
	width: 60%;
	margin: 0 auto;
}

.cancel:hover {
	opacity: 0.6
}
</style>
</head>
<body>
	<div
		style="width: 400px; height: 50px; position: absolute; left: 350px; top: 180px;">
		<h1
			style="font-family: 'Oxygen', sans-serif; color: #fff; font-weight: bolder;">${user.fullname}</h1>
	</div>
	<div
		style="width: 400px; height: 50px; position: absolute; left: 350px; top: 230px;">
		<h3 style="font-family: 'Oxygen', sans-serif; color: #fff;">${user.phone}</h3>
	</div>
	<br>

	<div style="width: 100%; height: 50px;">
		<div style="width: 22%; margin: 0 auto; height: 50px;">
			<ul class="nav1 navbar-nav nav nav-wil">
				<li><a href="client/profile/${user.phone}.htm">Thông tin cá
						nhân</a></li>
				<li><a href="client/calendarOrderCustomer.htm">Lịch đã đặt</a></li>
			</ul>
		</div>
	</div>
	<br>
	<hr style="width: 80%; margin: auto; border-bottom: 2px solid black;">
	<div
		style="text-align: center; padding: 30px; font-style: italic; height: 80px;">
		<div style="width: 60%; margin: auto;">
			<div
				style="width: 25%; margin: auto; float: left; border-right: 1px solid black;">
				<div
					style="width: 50%; float: left; font-weight: bolder; color: green; font-size: 15px;">
					<p>Lịch đã xếp:</p>
				</div>
				<div style="width: 50%; float: left; text-align: left;">
					<c:forEach var="daxep" items="${result8.rows}">${daxep.DX}</c:forEach>
					ca.
				</div>
			</div>
			<div
				style="width: 25%; margin: auto; float: left; border-right: 1px solid black;">
				<div
					style="width: 50%; float: left; font-weight: bolder; color: #fd7e14; font-size: 15px;">
					<p>Lịch đang chờ:</p>
				</div>
				<div style="width: 50%; float: left; text-align: left;">
					<c:forEach var="dagui" items="${result9.rows}">${dagui.DG}</c:forEach>
					ca.
				</div>
			</div>
			<div
				style="width: 25%; margin: auto; float: left; border-right: 1px solid black;">
				<div
					style="width: 50%; float: left; font-weight: bolder; color: #17449e; font-size: 15px;">
					<p>Đã thanh toán:</p>
				</div>
				<div style="width: 50%; float: left; text-align: left;">
					<c:forEach var="hoanthanh" items="${result7.rows}">${hoanthanh.HT}</c:forEach>
					ca.
				</div>
			</div>
			<div style="width: 25%; margin: auto; float: left;">
				<div
					style="width: 50%; float: left; font-weight: bolder; color: red; font-size: 15px;">
					<p>Đơn hủy:</p>
				</div>
				<div style="width: 50%; float: left; text-align: left;">
					<c:forEach var="dahuy" items="${result12.rows}">${dahuy.HL}</c:forEach>
					ca.
				</div>
			</div>
		</div>
	</div>
	<hr style="width: 80%; margin: auto; border-bottom: 2px solid black;">
	<br>

	<div style="width: 80%; margin: 0 auto;">
		<div class="tab">
			<button class="tablinks" onclick="openCity(event, 'London')"
				id="defaultOpen"
				style="color: #17449e; text-transform: uppercase; font-weight: bold;">Lịch
				đang chờ</button>

			<button class="tablinks" onclick="openCity(event, 'Paris')"
				style="color: #17449e; text-transform: uppercase; font-weight: bold;">Lịch
				đã xác nhận</button>

			<button class="tablinks" onclick="openCity(event, 'Tokyo' )"
				style="color: #17449e; text-transform: uppercase; font-weight: bold;">Lịch
				sử</button>

		</div>

		<div id="London" class="tabcontent">
			<span onclick="this.parentElement.style.display='none'"
				class="topright">&times</span>
			<h3>
				<!-- Lịch đang chờ -->
			</h3>
			<br>
			<table border="1" width="100%" class="table table-bordered"
				style="border: 1px solid #dddfeb; border-radius: 3px;" id="example">
				<thead>
					<tr>
						<th style="width: 10px;" scope="col">Mã đơn</th>
						<th scope="col">Email</th>
						<th scope="col">Số điện thoại</th>
						<th scope="col">Địa chỉ</th>
						<th scope="col">Ngày đặt</th>
						<th scope="col">Ca</th>
						<th style="width: 20px;" scope="col">Trạng thái</th>
						<th scope="col">Hủy lịch</th>

					</tr>
				</thead>
				<tbody>
					<c:forEach var="row2" items="${result2.rows}">
						<tr>
							<td style="width: 10px;" scope="row"><c:out value="${row2.Id_Orders}" /></td>
							<td scope="row"><c:out value="${row2.email}" /></td>
							<td scope="row"><c:out value="${row2.Phone}" /></td>
							<td scope="row"><c:out
									value="${row2.street} - ${row2.ward} - ${row2.district} - ${row2.city}" /></td>
							<td scope="row"><c:out value="${row2.dated}" /></td>
							<td scope="row"><c:out value="${row2.slot}" /></td>
							<td style="width: 20px;" scope="row"><c:out value="${row2.note}" /></td>
							<td scope="row"><div class="cancel">
									<a onclick="return confirm('Bạn có chắc chắn muốn hủy ca này?');"
										style="color: white;" href="client/delete1/${row2.id}.htm">Hủy ca</a>
								</div> <i></i></td>
						</tr>
					</c:forEach>
				</tbody>
			</table>

		</div>

		<div id="Paris" class="tabcontent">
			<span onclick="this.parentElement.style.display='none'"
				class="topright">&times</span>
			<h3>
				<!-- Lịch đã xác nhận -->
			</h3>
			<br>
			<table border="1" width="100% " class="table table-bordered"
				style="border: 1px solid #dddfeb; border-radius: 3px;" id="example1">
				<thead>
					<tr>
						<th scope="col">Mã đơn</th>
						<th scope="col">Email</th>
						<th scope="col">Số điện thoại</th>
						<th scope="col">Địa chỉ</th>
						<th scope="col">Ngày đặt</th>
						<th scope="col">Ca</th>
						<th scope="col">Mã nhân viên</th>
						<th scope="col">Trạng thái</th>


					</tr>
				</thead>
				<tbody>
					<c:forEach var="row1" items="${result1.rows}">
						<tr>
							<td scope="row"><c:out value="${row1.Id_Orders}" /></td>
							<td scope="row"><c:out value="${row1.email}" /></td>
							<td scope="row"><c:out value="${row1.Phone}" /></td>
							<td scope="row"><c:out
									value="${row1.street} - ${row1.ward} - ${row1.district} - ${row1.city}" /></td>
							<td scope="row"><c:out value="${row1.dated}" /></td>
							<td scope="row"><c:out value="${row1.slot}" /></td>
							<td scope="row"><a style="text-decoration: underline;"
								href="manage/staff/profile/${row1.staff}.htm">
									${row1.staff}</a></td>
							<td scope="row"><c:out value="${row1.note}" /></td>

						</tr>
					</c:forEach>
				</tbody>
			</table>
		</div>

		<div id="Tokyo" class="tabcontent">
			<span onclick="this.parentElement.style.display='none'"
				class="topright">&times</span>

			<h3>
				<!-- Lịch sử -->
			</h3>
			<br>
			<table border="1" width="100%" class="table table-bordered"
				style="border: 1px solid #dddfeb; border-radius: 3px;" id="example2">
				<thead>
					<tr>
						<th scope="col">Mã đơn</th>
						<th scope="col">Email</th>
						<th scope="col">Số điện thoại</th>
						<th scope="col">Địa chỉ</th>
						<th scope="col">Ngày đặt</th>
						<th scope="col">Ca</th>
						<th scope="col">Tên nhân viên</th>
						<th scope="col">Trạng thái</th>

					</tr>
				</thead>
				<tbody>
					<c:forEach var="row" items="${result.rows}">
						<tr>
							<td scope="row"><c:out value="${row.Id_Orders}" /></td>
							<td scope="row"><c:out value="${row.email}" /></td>
							<td scope="row"><c:out value="${row.Phone}" /></td>
							<td scope="row"><c:out
									value="${row.street} - ${row.ward} - ${row.district} - ${row.city}" /></td>
							<td scope="row"><c:out value="${row.dated}" /></td>
							<td scope="row"><c:out value="${row.slot}" /></td>
							<td scope="row"><a style="text-decoration: underline;"
								href="manage/staff/profile/${row.staff}.htm">
									${row.staff}</a></td>
							<td scope="row"><c:out value="${row.note}" /></td>

						</tr>
					</c:forEach>
				</tbody>
			</table>
		</div>
	</div>
	<!-- </div>
</div>
</div>
</div> -->

	<br>
	<br>
	<script type="text/javascript">
		$(document).ready(
				function() {
					var table = $('#example').DataTable();

					$('input:checkbox').on(
							'change',
							function() {
								//build a filter string with an or(|) condition
								var offices = $(
										'input:checkbox[name="ofc"]:checked')
										.map(function() {
											return this.value;
										}).get().join('|');

								//now filter in column 2, with no regex, no smart filtering, not case sensitive
								table.column(4).search(offices, true, false,
										false).draw(false);

							});

				});
	</script>
	<script type="text/javascript">
		$(document).ready(
				function() {
					var table = $('#example1').DataTable();

					$('input:checkbox').on(
							'change',
							function() {
								//build a filter string with an or(|) condition
								var offices = $(
										'input:checkbox[name="ofc"]:checked')
										.map(function() {
											return this.value;
										}).get().join('|');

								//now filter in column 2, with no regex, no smart filtering, not case sensitive
								table.column(4).search(offices, true, false,
										false).draw(false);

							});

				});
	</script>
	<script type="text/javascript">
		$(document).ready(
				function() {
					var table = $('#example2').DataTable();

					$('input:checkbox').on(
							'change',
							function() {
								//build a filter string with an or(|) condition
								var offices = $(
										'input:checkbox[name="ofc"]:checked')
										.map(function() {
											return this.value;
										}).get().join('|');

								//now filter in column 2, with no regex, no smart filtering, not case sensitive
								table.column(4).search(offices, true, false,
										false).draw(false);

							});

				});
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
				tablinks[i].className = tablinks[i].className.replace(
						" active", "");
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
<jsp:include page="footer.jsp"></jsp:include>
</html>
