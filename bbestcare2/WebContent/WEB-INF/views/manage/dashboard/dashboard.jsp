<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
    <%@ taglib uri="http://java.sun.com/jstl/core_rt" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/sql" prefix="sql"%>

<sql:setDataSource var="snapshot"
	driver="com.microsoft.sqlserver.jdbc.SQLServerDriver"
	url="jdbc:sqlserver://localhost:1433;databaseName=BBESTCARE" user="sa"
	password="quan" />

<sql:query dataSource="${snapshot}" var="result">
         select Count(*) as "RHL" from Rate where  Star = N'Rất hài lòng'; 
      </sql:query>

<sql:query dataSource="${snapshot}" var="result1">
         select Count(*) as "HL" from Rate where  Star = N'Hài lòng'; 
      </sql:query>

<sql:query dataSource="${snapshot}" var="result2">
         select Count(*) as "BT" from Rate where  Star = N'Bình thường'; 
      </sql:query>

<sql:query dataSource="${snapshot}" var="result3">
         select Count(*) as "KT" from Rate where  Star = N'Không tốt'; 
      </sql:query>

<sql:query dataSource="${snapshot}" var="result4">
         select Count(*) as "RK" from Rate where  Star = N'Rất kém'; 
      </sql:query>
<!DOCTYPE html>
<html lang="en" b:version='2' class='v2'
	expr:dir='data:blog.languageDirection'
	xmlns='http://www.w3.org/1999/xhtml'
	xmlns:b='http://www.google.com/2005/gml/b'
	xmlns:data='http://www.google.com/2005/gml/data'
	xmlns:expr='http://www.google.com/2005/gml/expr'>
<head>
  <meta charset="utf-8">
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
  <meta name="description" content="">
  <meta name="author" content="">

  <title>Nhân viên quản lý</title>

  <!-- Custom fonts for this template-->
  <link href="vendor/fontawesome-free/css/all.min.css" rel="stylesheet" type="text/css">
  <link href="https://fonts.googleapis.com/css?family=Nunito:200,200i,300,300i,400,400i,600,600i,700,700i,800,800i,900,900i" rel="stylesheet">

  <!-- Custom styles for this template-->
  <link href="css/sb-admin-2.min.css" rel="stylesheet">
  <!-- Custom fonts for this template -->
<link href="vendor/fontawesome-free/css/all.min.css" rel="stylesheet"
	type="text/css">
<link
	href="https://fonts.googleapis.com/css?family=Nunito:200,200i,300,300i,400,400i,600,600i,700,700i,800,800i,900,900i"
	rel="stylesheet">

<!-- Custom styles for this template -->
<link href="css/sb-admin-2.min.css" rel="stylesheet">
<link rel="stylesheet"
	href="path/to/font-awesome/css/font-awesome.min.css">

<!-- Custom styles for this page -->
<link href="vendor/datatables/dataTables.bootstrap4.min.css"
	rel="stylesheet">
<link rel="stylesheet"
	href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css"
	integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T"
	crossorigin="anonymous">
	<script>
	function myFunction() {
		var x = document.getElementById("dataTable").rows.length;
		document.getElementById("demo").innerHTML = (x - 1) + "   "
				+ "đánh giá.";
	}
</script>
<jsp:include page="../header.jsp" />
</head>

<body id="page-top" onload="myFunction()" >
        <!-- Begin Page Content -->
	<div class="container-fluid">

		<!-- DataTales Example -->
		<div class="card shadow mb-4">
			<!-- <div class="card-header py-3"> -->
			<!-- <h6 style="float:left;" class="m-0 font-weight-bold text-primary">Tổng số đánh giá : <span id="demo" style="color: red; "></span></h6> -->
			<div class="card-header py-3">
				<h6 style="float: left;" class="m-0 font-weight-bold text-primary">Danh
					sách đánh giá</h6>
			</div>
			<div class="card-body">
				<div class="table-responsive">
					<div
						style="text-align: center; padding: 30px; font-style: italic; height: 80px;">
						<div style="width: 80%; margin: auto;">
							<div
								style="width: 20%; margin: auto; float: left; border-right: 1px solid black;">
								<div
									style="width: 50%; float: left; font-weight: bolder; color: #fd7e14; font-size: 15px;">
									<p>5 sao:</p>
								</div>
								<div style="width: 50%; float: left; text-align: left;">
									<c:forEach var="RHL" items="${result.rows}">${RHL.RHL}</c:forEach>
									đánh giá.
								</div>
							</div>
							<div
								style="width: 20%; margin: auto; float: left; border-right: 1px solid black;">
								<div
									style="width: 50%; float: left; font-weight: bolder; color: green; font-size: 15px;">
									<p>4 sao:</p>
								</div>
								<div style="width: 50%; float: left; text-align: left;">
									<c:forEach var="HL" items="${result1.rows}">${HL.HL}</c:forEach>
									đánh giá.
								</div>
							</div>
							<div
								style="width: 20%; margin: auto; float: left; border-right: 1px solid black;">
								<div
									style="width: 50%; float: left; font-weight: bolder; color: #17449e; font-size: 15px;">
									<p>3 sao:</p>
								</div>
								<div style="width: 50%; float: left; text-align: left;">
									<c:forEach var="BT" items="${result2.rows}">${BT.BT}</c:forEach>
									đánh giá.
								</div>
							</div>
							<div
								style="width: 20%; margin: auto; float: left; border-right: 1px solid black;">
								<div
									style="width: 50%; float: left; font-weight: bolder; color: red; font-size: 15px;">
									<p>2 sao:</p>
								</div>
								<div style="width: 50%; float: left; text-align: left;">
									<c:forEach var="KT" items="${result3.rows}">${KT.KT}</c:forEach>
									đánh giá.
								</div>
							</div>
							<div style="width: 20%; margin: auto; float: left;">
								<div
									style="width: 50%; float: left; font-weight: bolder; color: grey; font-size: 15px;">
									<p>1 sao:</p>
								</div>
								<div style="width: 50%; float: left; text-align: left;">
									<c:forEach var="RK" items="${result4.rows}">${RK.RK}</c:forEach>
									đánh giá.
								</div>
							</div>
						</div>
					</div>
					<table class="table table-bordered" id="dataTable" width="100%"
						cellspacing="0">
						<thead>
							<tr>
								<th>Đánh giá</th>
								<th>Ngày đánh giá</th>
								<th>Số điện thoại</th>
								<th>Tên khách hàng</th>

							</tr>
						</thead>

						<tbody>
							<c:forEach var="n" items="${feedback}">
								<tr>
									<th>${n.star}</th>
									<th>${n.date}</th>
									<td>${n.phone}</td>
									<td>${n.nameCustomer}</td>
							</c:forEach>
						</tbody>
					</table>
				</div>
			</div>
		</div>
	</div>

	<!-- /.container-fluid -->


	<!-- End of Main Content -->


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
<jsp:include page="../footer.jsp" />
</html>
