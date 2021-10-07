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
<title>Đơn trong ngày</title>
<sql:setDataSource var="snapshot"
	driver="com.microsoft.sqlserver.jdbc.SQLServerDriver"
	url="jdbc:sqlserver://localhost:1433;databaseName=BBESTCARE" user="sa"
	password="quan" />

<sql:query dataSource="${snapshot}" var="result">
       select * from Orders where DAY(Date)=DAY(GETDATE());
         
      </sql:query>
<sql:query dataSource="${snapshot}" var="result1">
         select * from OrderDetail;
      </sql:query>

<sql:query dataSource="${snapshot}" var="result2">
         select * from OrderDetail;
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
            <div class="card-header py-3">
              <h5 onclick="openCity(event, 'London')" id="defaultOpen" style="float:left;" class="m-0 font-weight-bold text-primary">Đơn hôm nay</h5>    
            </div>
            <div class="card-body">
              <div class="table-responsive">
               <div style=" width: 100%;margin: 0 auto;">


<div id="London" class="tabcontent">
  <h3>Lịch khách hàng đặt </h3>
	<table id="example" border="1" width="100%" class="table table-bordered" style="border: 1px solid #dddfeb;border-radius:3px;" cellspacing="0" >
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
		String sql = "select * from orders where Day(Date) = Day(GETDATE()) " ;
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
