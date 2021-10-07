<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
    
<%@ taglib uri="http://java.sun.com/jstl/core_rt" prefix="c" %>
<!DOCTYPE html>
<html lang="en">

<head>

  <meta charset="utf-8">
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
  <meta name="description" content="">
  <meta name="author" content="">

  <title>Khách hàng</title>

  <!-- Custom fonts for this template -->
  <link href="vendor/fontawesome-free/css/all.min.css" rel="stylesheet" type="text/css">
  <link href="https://fonts.googleapis.com/css?family=Nunito:200,200i,300,300i,400,400i,600,600i,700,700i,800,800i,900,900i" rel="stylesheet">

  <!-- Custom styles for this template -->
  <link href="css/sb-admin-2.min.css" rel="stylesheet">
  <link rel="stylesheet" href="path/to/font-awesome/css/font-awesome.min.css">

  <!-- Custom styles for this page -->
  <link href="vendor/datatables/dataTables.bootstrap4.min.css" rel="stylesheet">
<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">
<jsp:include page="../header.jsp" />
<base href="${pageContext.servletContext.contextPath}/">
</head>

<body id="page-top">

        <!-- Begin Page Content -->
        <div class="container-fluid">

          <!-- DataTales Example -->
          <div class="card shadow mb-4">
            <div class="card-header py-3">
              <h6 style="float:left;" class="m-0 font-weight-bold text-primary">Danh sách khách hàng</h6>    
            </div>
            <div class="card-body">
              <div class="table-responsive">
                <table class="table table-bordered" id="dataTable" width="100%" cellspacing="0">
                  <thead>
                    <tr>
                      <th>SĐT</th>
                      <th>Họ tên</th>
                      <th>Email</th>
                      <th>Địa chỉ</th>
                      <th>Ngày sinh bé</th>
                      <th>Mật khẩu</th>
                     <!--  <th></th> -->
                    </tr>
                  </thead>
                  <tfoot>
                    <tr>
                      <th>SĐT</th>
                      <th>Họ tên</th>
                      <th>Email</th>
                      <th>Địa chỉ</th>
                      <th>Ngày sinh bé</th>
                      <th>Mật khẩu</th>
                    <!--   <th></th> -->
                    </tr>
                  </tfoot>
                  <tbody>
                    <c:forEach var="n" items="${listCustomer}"> 
						<tr>
	  						<td>${n.phone}</td>
	 	 					<td>${n.fullname}</td>
	  						<td>${n.email}</td>
	  						<td>${n.address}</td>
	  						<td>${n.birthdaybaby}</td>
	  						<td>${n.password}</td>
	  						<%-- <td>
	  						<a style="color: red;" onclick="return confirm('Bạn có chắc chắn muốn xóa tài khoản này?');" href="client/customer/delete/${n.phone}.htm"><i style="color: red;margin-left:10px" class="far fa-trash-alt"></i> Xóa</a>
	  						</td>  --%>
	  						
						</tr> 
					</c:forEach>
                  </tbody>
                </table>
              </div>
            </div>
          </div>

        </div>
        <!-- /.container-fluid -->

      </div>
      <!-- End of Main Content -->

      <!-- Footer -->
      <!-- <footer class="sticky-footer bg-white">
        <div class="container my-auto">
          <div class="copyright text-center my-auto">
            <span>Copyright &copy; Your Website 2020</span>
          </div>
        </div>
      </footer>
      End of Footer

    </div>
    End of Content Wrapper

  </div>
  End of Page Wrapper

  Scroll to Top Button
  <a class="scroll-to-top rounded" href="#page-top">
    <i class="fas fa-angle-up"></i>
  </a>

  Logout Modal
  <div class="modal fade" id="logoutModal" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
    <div class="modal-dialog" role="document">
      <div class="modal-content">
        <div class="modal-header">
          <h5 class="modal-title" id="exampleModalLabel">Ready to Leave?</h5>
          <button class="close" type="button" data-dismiss="modal" aria-label="Close">
            <span aria-hidden="true">×</span>
          </button>
        </div>
        <div class="modal-body">Select "Logout" below if you are ready to end your current session.</div>
        <div class="modal-footer">
          <button class="btn btn-secondary" type="button" data-dismiss="modal">Cancel</button>
          <a class="btn btn-primary" href="login.html">Logout</a>
        </div>
      </div>
    </div>
  </div>

  Bootstrap core JavaScript
  <script src="vendor/jquery/jquery.min.js"></script>
  <script src="vendor/bootstrap/js/bootstrap.bundle.min.js"></script>

  Core plugin JavaScript
  <script src="vendor/jquery-easing/jquery.easing.min.js"></script>

  Custom scripts for all pages
  <script src="js/sb-admin-2.min.js"></script>

  Page level plugins
  <script src="vendor/datatables/jquery.dataTables.min.js"></script>
  <script src="vendor/datatables/dataTables.bootstrap4.min.js"></script>

  Page level custom scripts
  <script src="js/demo/datatables-demo.js"></script> -->
  
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
