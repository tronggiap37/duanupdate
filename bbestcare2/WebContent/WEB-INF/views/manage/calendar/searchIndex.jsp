<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<%@ page import="java.sql.*" %>
<%@ page import="java.io.*" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/sql" prefix="sql"%>

<sql:setDataSource var="snapshot"
	driver="com.microsoft.sqlserver.jdbc.SQLServerDriver"
	url="jdbc:sqlserver://localhost:1433;databaseName=BBESTCARE" user="sa"
	password="quan" />
      
<!DOCTYPE html>
<html>
<head>
<meta name="viewport" content="width=device-width, initial-scale=1">
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
<style type="text/css">
.fill{
float: left;
width: 31%;
border-radius:3px;
border: 1px solid #d1d3e2; 
margin-left: 820px;
}

.filterslot{
	width: 90%;
	height:30px;
	margin: 0 auto;
}
</style>
</head>
<jsp:include page="../header.jsp"></jsp:include>
<body>
<div class="container-fluid">
          <!-- DataTales Example -->
          <div class="card shadow mb-4">
             <div class="card-header py-3">
              <h6 style="float:left;" class="m-0 font-weight-bold text-primary">Chi tiết đơn lịch</h6>    
            </div>
            <div class="card-body">
              <div class="table-responsive">
              <h1>Chi tiết đơn lịch</h1>
<form method="post" action="manage/calendar/updatecalendarstaff.htm">
<table border="1" width="100%" class="table table-bordered" style="border: 1px solid #dddfeb;border-radius:3px;" cellspacing="0">
<tr>
<td>Mã</td>
<td>Mã đơn</td>
<td>Email</td>
<td>SĐT khách hàng</td>
<td>Địa chỉ khách hàng</td>
<td>Ngày</td>
<td style="width: 100px;">Ca</td>
<td>Giá</td>
<td>SĐT nhân viên</td>
<td>Trạng thái</td>

</tr>
<%
try{	
	String id  = request.getParameter("id"); 
	Connection connection1 = DriverManager.getConnection("jdbc:sqlserver://localhost:1433;databaseName=BBESTCARE","sa","quan");
		Statement statement1 =connection1.createStatement();
		String sql ="select * from OrderDetail where ID_Orders="+id;
		ResultSet resultSet = statement1.executeQuery(sql);

while(resultSet.next()){
%>
<tr id="chinh1">
<sql:query dataSource="${snapshot}" var="result4">
         select * from LichNhanVien where Slot = '<%=resultSet.getString("Slot") %>' and  Dated = '<%=resultSet.getString("Dated") %>' and  Note = N'Chưa làm' ; 
         
      </sql:query>
		<td><input type="hidden" name="id" value="<%=resultSet.getString("ID") %>" /><%=resultSet.getString("ID") %></td>
		<td><input type="hidden" name="idoder" value="<%=resultSet.getString("ID_Orders") %>" /><%=resultSet.getString("ID_Orders") %></td>
		<td><input type="hidden" name="email" value="<%=resultSet.getString("Email") %>" /><%=resultSet.getString("Email") %></td>
		<td><input type="hidden" name="phone" value="<%=resultSet.getString("Phone") %>" /><%=resultSet.getString("Phone") %></td>
		<td><input type="hidden" name="street" value="<%=resultSet.getString("Street") %>" /><input type="hidden" name="ward" value="<%=resultSet.getString("Ward") %>" /><input type="hidden"  name="district" value="<%=resultSet.getString("District") %>" /><input type="hidden" name="city" value="<%=resultSet.getString("City") %>" /><%=resultSet.getString("Street") %>-<%=resultSet.getString("Ward") %>-<%=resultSet.getString("District") %>-<%=resultSet.getString("City") %></td>
		<td><input type="date" name="dated" value="<%=resultSet.getString("Dated") %>" /></td>
		<td><input style="width: 100px;" id="ca"  name="slot" value="<%=resultSet.getString("Slot") %>" /></td>
		<td><input type="hidden" name="prince" value="<%=resultSet.getString("Price") %>" /><%=resultSet.getString("Price") %></td>
		
		
		<td>
		<select name="staff" id="staff">
				<option value="<%=resultSet.getString("Staff") %>"><%=resultSet.getString("Staff") %></option>
		
		<c:forEach var="row3" items="${result4.rows}">
		
		
		<option value="${row3.Phone}">${row3.Phone}</option>
		
		</c:forEach>
		</select>
		</td>
		
		
		<td><select name="note" id="cars">
 		 <option value="<%=resultSet.getString("Note") %>"><%=resultSet.getString("Note") %></option>
  		<option value="Đã xếp">Đã xếp</option></select>
		
		</td>
		<%-- <td scope="row"><a href="manage/calendar/update/<%=resultSet.getString("ID") %>.htm" >Cập nhật</a></td> --%>
</tr>
<%
}
connection1.close();
} catch (Exception e) {
e.printStackTrace();
}
%>
</table>
<hr>
<h1>Lịch trống của nhân viên</h1>
	<div class="filterslot">
			<div class="ip">
			<input class="fill" type="text" id="myInput"
				onkeyup="myFunction()" placeholder="Tìm theo địa chỉ"
				title="Tìm theo địa chỉ">
			</div>
		</div>
		<br>
<table id="example" border="1" width="100%" class="table table-bordered" style="border: 1px solid #dddfeb;border-radius:3px;" cellspacing="0">

<tr>
<td>Mã</td>
<td>SĐT nhân viên</td>
<td>Họ tên</td>
<td>Quận</td>
<td>Ngày làm việc</td>
<td>Ca</td>
<td>Trạng thái</td>
</tr>


<%
try{	
	String id  = request.getParameter("id"); 
	Connection connection1 = DriverManager.getConnection("jdbc:sqlserver://localhost:1433;databaseName=BBESTCARE","sa","quan");
		Statement statement1 =connection1.createStatement();
		String sql = "select * from LichNhanVien where Note = N'Chưa Làm'";
		ResultSet resultSet = statement1.executeQuery(sql);

while(resultSet.next()){
%>

<tr>
<td><input type="hidden" name="id1" value="<%=resultSet.getString("ID") %>"><%=resultSet.getString("ID") %></td>
<td><input type="hidden" name="Phone1" value="<%=resultSet.getString("Phone") %>"><%=resultSet.getString("Phone") %></td>
<td><input type="hidden" name="Fullname" value="<%=resultSet.getString("Fullname") %>"><%=resultSet.getString("Fullname") %></td>
<td><input type="hidden" name="District1" value="<%=resultSet.getString("District") %>"><%=resultSet.getString("District") %></td>
<td><input type="hidden" name="Dated1" value="<%=resultSet.getString("Dated") %>"><%=resultSet.getString("Dated") %></td>
<td><input type="hidden" name="Slot1" value="<%=resultSet.getString("Slot") %>"><%=resultSet.getString("Slot") %></td>
<td><input type="hidden" name="Note1" value="<%=resultSet.getString("Note") %>"><%=resultSet.getString("Note") %></td>
<%-- <td><select name="Note1" id="cars">
 		 <option value="<%=resultSet.getString("Note") %>"><%=resultSet.getString("Note") %></option>
  		<option value="Đã xếp">Đã xếp</option></select>
		
		</td> --%>
</tr>


<%

}
connection1.close();
} catch (Exception e) {
e.printStackTrace();
}
%>

</table>

<!-- <input type="submit" value="Cập nhật nhân viên đã xếp"> -->
<button class="btn btn-primary" type="submit">Cập nhật</button>
</form>

 </div>
<!--  <div style="background-color: #fff;width: 300px;height: 32px;position: absolute;top: 611px;right: 20px;"></div> -->
 
</div>
</div>
</div>
<script type="text/javascript">

function myFunction123456789() {
	  // Declare variables
	  var input, filter, tr,td,i txtValue;
	  input = document.getElementById('ca');
	  filter = input.value.toUpperCase();
	  tr = document.getElementById("chinh1");
	  td = ul.getElementsByTagName('td');

	  // Loop through all list items, and hide those who don't match the search query
	  for (i = 0; i < li.length; i++) {
	    a = li[i].getElementsByTagName("a")[0];
	    txtValue = a.textContent || a.innerText;
	    if (txtValue.toUpperCase().indexOf(filter) > -1) {
	      li[i].style.display = "";
	    } else {
	      li[i].style.display = "none";
	    }
	  }
	}


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
		function myFunction1() {
			var input, filter, table, tr, td, i, txtValue;
			input = document.getElementById("myInput1");
			filter = input.value.toUpperCase();
			table = document.getElementById("example");
			tr = table.getElementsByTagName("tr");
			for (i = 0; i < tr.length; i++) {
				td = tr[i].getElementsByTagName("td")[4];
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