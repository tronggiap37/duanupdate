<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<%@ page import="java.io.*,java.util.*,java.sql.*"%>
<%@ page import="javax.servlet.http.*,javax.servlet.*"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/sql" prefix="sql"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<!DOCTYPE html>
<html>
<jsp:include page="../header.jsp"></jsp:include>
<head>
<meta name="viewport" content="width=device-width, initial-scale=1">

<sql:setDataSource var="snapshot"
	driver="com.microsoft.sqlserver.jdbc.SQLServerDriver"
	url="jdbc:sqlserver://localhost:1433;databaseName=BBESTCARE" user="sa"
	password="quan" />

<sql:query dataSource="${snapshot}" var="result">
         select * from LichNhanVien where Phone = '${staff.phone}' and Note = N'Chưa Làm'   ;
         
      </sql:query>
<sql:query dataSource="${snapshot}" var="result1">
         select * from OrderDetail  where Staff = '${staff.phone}' and Note = N'Đã xếp';
      </sql:query>

<sql:query dataSource="${snapshot}" var="result2">
         select * from OrderDetail  where Phone = '${staff.phone}' and Note = N'Đã thanh toán' or Note = N'Đã hủy' ;
      </sql:query>

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

/* Style the close button */
.topright {
  float: right;
  cursor: pointer;
  font-size: 28px;
}

.topright:hover {color: red;}

.modal {
  display: none; /* Hidden by default */
  position: fixed; /* Stay in place */
  z-index: 1; /* Sit on top */
  padding-top: 100px; /* Location of the box */
  left: 0;
  top: 0;
  width: 100%; /* Full width */
  height: 100%; /* Full height */
  overflow: auto; /* Enable scroll if needed */
  background-color: rgb(0,0,0); /* Fallback color */
  background-color: rgba(0,0,0,0.4); /* Black w/ opacity */
}

/* Modal Content */
.modal-content {
  background-color: #fefefe;
  margin: auto;
  padding: 20px;
  border: 1px solid #888;
  width: 80%;
}

/* The Close Button */
.close {
  color: #aaaaaa;
  float: right;
  font-size: 28px;
  font-weight: bold;
}

.close:hover,
.close:focus {
  color: #000;
  text-decoration: none;
  cursor: pointer;
}
</style>
</head>
<body>

<div class="container-fluid">
          <!-- DataTales Example -->
          <div class="card shadow mb-4">
            <div class="card-header-tabs">
              <div class="tab">
<button class="tablinks" onclick="openCity(event, 'London')" id="defaultOpen">Lịch trống</button>
  		
		<button class="tablinks" onclick="openCity(event, 'Paris')">Lịch làm việc</button>
			
		<button class="tablinks" onclick="openCity(event, 'Tokyo' )" >Lịch sử</button>	
</div> 
            </div>
            <div class="card-body">
              <div class="table-responsive">
               <div style=" width: 100%;margin: 0 auto;">


<div id="London" class="tabcontent">
  <span onclick="this.parentElement.style.display='none'" class="topright">&times</span>
  <h3>Lịch trống</h3>
  		<table border="1" width="100%" class="table table-bordered" style="border: 1px solid #dddfeb;border-radius:3px;" id="example">
			<thead>
			<tr>
				<th scope="col">Ho ten</th>
				<th scope="col">SDT</th>
				<th scope="col">Quận</th>
				<th scope="col">Phường</th>
				<th scope="col">Ngày</th>
				<th scope="col">Ca</th>
				<th scope="col">Trạng thái</th>
				<th scope="col">Hành động</th>
			</tr>
			</thead>
			<tbody>
			<c:forEach var="row" items="${result.rows}">
				<tr>
					<td scope="row"> <c:out value="${row.Fullname}" /></td>
					<td scope="row"> <c:out value="${row.Phone}" /></td>
					<td scope="row"><c:out value="${row.District}" /></td>
					<td scope="row"><c:out value="${row.Ward}" /></td>
					<td scope="row"><c:out value="${row.Dated}" /></td>
					<td scope="row"><c:out value="${row.Slot}" /></td>
					<td scope="row"><c:out value="${row.Note}" /></td>
					<td scope="row"><a href="manage/calendar/delete1/${row.id}.htm" style="color: white; background-color: red; border: 1px solid red;border-radius: 50px; ">Hủy</a>
					<i ></i>
					</td>
				</tr>
			</c:forEach>
			</tbody>
		</table>
		
</div>

<div id="Paris" class="tabcontent">
  <span onclick="this.parentElement.style.display='none'" class="topright">&times</span>
  <h3>Lịch làm việc</h3>
  		<table border="1" width="100%" class="table table-bordered" style="border: 1px solid #dddfeb;border-radius:3px;" id="example2">
			<thead>
			<tr>
			<th scope="col">ID Order</th>
				<th scope="col">Email</th>
				<th scope="col">SĐT khách hàng</th>
				<th scope="col">Địa chỉ</th>
				<th scope="col">Ngày đặt</th>
				<th scope="col">Tên nhân viên</th>
				<th scope="col">Trạng thái</th>
				<th scope="col">Hành động</th>
			</tr>
			</thead>
			<tbody>
			<c:forEach var="row1" items="${result1.rows}">
				<tr>
				<td scope="row"><c:out value="${row1.ID_Orders}" /></td>
					<td scope="row"><c:out value="${row1.email}" /></td>
					<td scope="row"><c:out value="${row1.Phone}" /></td>
					<td scope="row"><c:out
							value="${row1.street} - ${row1.ward} - ${row1.district} - ${row1.city}" /></td>
					<td scope="row"><c:out value="${row1.dated}" /></td>
					<td scope="row"><c:out value="${row1.staff}" /></td>
					<td scope="row"><c:out value="${row1.note}" /></td>
					<td scope="row"><a href="client/order/update/${row1.id}.htm" style="color: white; background-color: red; border: 1px solid red;border-radius: 50px; ">Cập nhật</a>
					
				</tr>
			</c:forEach>
			</tbody>
		</table>
</div>

<div id="Tokyo" class="tabcontent">
  <span onclick="this.parentElement.style.display='none'" class="topright">&times</span>
  <h3>Lịch sử</h3>
  		<table border="1" width="100%" class="table table-bordered" style="border: 1px solid #dddfeb;border-radius:3px;" id="example3">
			<thead>
			<tr>
				<th scope="col">Email</th>
				<th scope="col">SĐT khách hàng</th>
				<th scope="col">Địa chỉ</th>
				<th scope="col">Ngày đặt</th>
				<th scope="col">Tên nhân viên</th>
				<th scope="col">Trạng thái</th>
			</tr>
			</thead>
			<tbody>
			<c:forEach var="row2" items="${result2.rows}">
				<tr>
					<td scope="row"><c:out value="${row2.email}" /></td>
					<td scope="row"><c:out value="${row2.Phone}" /></td>
					<td scope="row"><c:out
							value="${row2.street} - ${row2.ward} - ${row2.district} - ${row2.city}" /></td>
					<td scope="row"><c:out value="${row2.dated}" /></td>
					<td scope="row"><c:out value="${row2.staff}" /></td>
					<td scope="row"><c:out value="${row2.note}" /></td>
					
				</tr>
			</c:forEach>
			</tbody>
			
		</table>
		
</div>

</div>   
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
								table.column(4).search(offices, true, false,
										false).draw(false);

							});

				});
	</script>
	<script type="text/javascript">
		$(document).ready(
				function() {
					var table = $('#example3').DataTable();

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
								table.column(4).search(offices, true, false,
										false).draw(false);

							});

				});
	</script>
<script>
// Get the modal
var modal = document.getElementById("myModal");

// Get the button that opens the modal
var btn = document.getElementById("myBtn");

// Get the <span> element that closes the modal
var span = document.getElementsByClassName("close")[0];

// When the user clicks the button, open the modal 
btn.onclick = function() {
  modal.style.display = "block";
}

// When the user clicks on <span> (x), close the modal
span.onclick = function() {
  modal.style.display = "none";
}

// When the user clicks anywhere outside of the modal, close it
window.onclick = function(event) {
  if (event.target == modal) {
    modal.style.display = "none";
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
<jsp:include page="../footer.jsp"></jsp:include>
</html>
