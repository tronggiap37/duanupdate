<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<%@ page import="java.io.*,java.util.*,java.sql.*"%>
<%@ page import="javax.servlet.http.*,javax.servlet.*"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/sql" prefix="sql"%>
<!DOCTYPE html>
<html>
<head>
<meta name="viewport" content="width=device-width, initial-scale=1">

<sql:setDataSource var="snapshot"
	driver="com.microsoft.sqlserver.jdbc.SQLServerDriver"
	url="jdbc:sqlserver://localhost:1433;databaseName=BBESTCARE" user="sa"
	password="quan" />
	
	<sql:query dataSource="${snapshot}" var="result2">
         select * from Orders ;
      </sql:query>

<sql:query dataSource="${snapshot}" var="result1">
         select * from LichNhanVien where  Note = N'Chưa làm' ;
         
      </sql:query>
<sql:query dataSource="${snapshot}" var="result3">
         select * from OrderDetail  where  Note = N'Đã gửi' ;
      </sql:query>
      
<sql:query dataSource="${snapshot}" var="result3">
         select * from OrderDetail  where  Note = N'Đã gửi' ORDER BY Dated ASC ;
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

.fill{

/* left: 1065px;
top: 120px; */
float: left;
width: 50%;
border-radius:3px;
border: 1px solid #d1d3e2; 
}

.filterslot{
	width: 60%;
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
.update {
	border-radius: 3px;
	text-align: center;
	background-color: #4e73df;
	width: 60%;
	margin: 0 auto;
}
.update:hover {opacity: 0.6}
</style>

</head>
<jsp:include page="../header.jsp"></jsp:include>
<body>
	<div class="container-fluid">
          <!-- DataTales Example -->
          <div class="card shadow mb-4">
            <div class="card-header-tabs">
              <div class="tab">
              <button class="tablinks" onclick="openCity(event, 'Paris')" id="defaultOpen">Lịch khách hàng đặt</button>
              <button class="tablinks" onclick="openCity(event, 'London')">Lịch chi tiết</button>		
</div> 
            </div>
            <div class="card-body">
              <div class="table-responsive">
               <div style=" width: 100%;margin: 0 auto;">


<div id="Paris" class="tabcontent">
  <span onclick="this.parentElement.style.display='none'" class="topright">&times</span>
  <h3>Lịch khách hàng đặt </h3>
	<table id="examplecus" border="1" width="100%" class="table table-bordered" style="border: 1px solid #dddfeb;border-radius:3px;" cellspacing="0" >
<thead>
<tr>
<td>Mã đơn</td>
<td>Ngày đặt</td>
<td>Số điện thoại khách</td>
<td>Chi tiết đơn</td>
</tr>
</thead>
<tbody>
<%
try{	
	String id  = request.getParameter("id"); 
	Connection connection1 = DriverManager.getConnection("jdbc:sqlserver://localhost:1433;databaseName=BBESTCARE","sa","quan");
		Statement statement1 =connection1.createStatement();
		String sql = "select * from orders" ;
		ResultSet resultSet = statement1.executeQuery(sql);

while(resultSet.next()){
%>
<tr>
<td><%=resultSet.getString("ID") %></td>
<td><%=resultSet.getString("Date") %></td>
<td><%=resultSet.getString("Phone") %></td>
<td><a href="manage/calendar/searchIndex.htm?id=<%=resultSet.getString("ID")%>">Xem chi tiết đơn</a></td>
</tr>
<%
}
connection1.close();
} catch (Exception e) {
e.printStackTrace();
}
%>
</tbody>
</table>
</div>
<div id="London" class="tabcontent">
  <span onclick="this.parentElement.style.display='none'" class="topright">&times</span>
  <h3>Lịch đặt của tất cả khách hàng</h3>
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
  		<table border="1" width="100%" class="table table-bordered" style="border: 1px solid #dddfeb;border-radius:3px;" id="example" cellspacing="0" >
			<thead>
			<tr>
			<th scope="col">Mã</th>
				<th scope="col">Email</th>
				<th scope="col">Số điện thoại</th>
				<th scope="col">Địa chỉ</th>
				<th scope="col">Ngày đặt</th>
				<th scope="col">Ca</th>
				<th scope="col">Nhân Viên</th>
				<th scope="col">Trạng thái</th>
				<th scope="col" style="width: 100px;">Hành động</th>
			</tr>
			</thead>
			<tbody>
			<c:forEach var="row3" items="${result3.rows}">
				<tr>
				<td scope="row"> <c:out value="${row3.Id_Orders}" /></td>
					<td scope="row"> <c:out value="${row3.Email}" /></td>
					<td scope="row"><c:out value="${row3.Phone}" /></td>
					<td scope="row"><c:out
							value="${row3.Street} - ${row3.Ward} - ${row3.District} - ${row3.City}" /></td>
					<td scope="row"><c:out value="${row3.Dated}" /></td>
					<td scope="row"><c:out value="${row3.Slot}" /></td>
					<td scope="row"><c:out value="${row3.Staff}" /></td>
					<td scope="row"><c:out value="${row3.Note}" /></td>
					<td scope="row"><div class="update"><a href="manage/calendar/update/${row3.id}.htm" style="color: white;">Cập nhật</a></div>
					<i ></i>
					</td>
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

<br>
<br>
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
	
	
		<script type="text/javascript">
		$(document).ready(
				function() {
					var table = $('#example1').DataTable();

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
										'input:checkbox[name="ofc1"]:checked').map(
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
		function myFunction1() {
			var input, filter, table, tr, td, i, txtValue;
			input = document.getElementById("myInput1");
			filter = input.value.toUpperCase();
			table = document.getElementById("example1");
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
	<script type="text/javascript">
		$(document).ready(
				function() {
					var table = $('#examplecus').DataTable();

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
