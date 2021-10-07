<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@taglib uri="http://www.springframework.org/tags" prefix="s"%>
<!DOCTYPE html>
<html lang="en">

<head>

  <meta charset="utf-8">
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
  <meta name="description" content="">
  <meta name="author" content="">

  <title>Hồ sơ tuyển dụng</title>

  <!-- Custom fonts for this template -->
  <link href="vendor/fontawesome-free/css/all.min.css" rel="stylesheet" type="text/css">
  <link href="https://fonts.googleapis.com/css?family=Nunito:200,200i,300,300i,400,400i,600,600i,700,700i,800,800i,900,900i" rel="stylesheet">

  <!-- Custom styles for this template -->
  <link href="css/sb-admin-2.min.css" rel="stylesheet">
  <link href="css/boostrap.css" rel="stylesheet">
  <link rel="stylesheet" href="path/to/font-awesome/css/font-awesome.min.css">

  <!-- Custom styles for this page -->
  <link href="vendor/datatables/dataTables.bootstrap4.min.css" rel="stylesheet">
<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">
<base href="${pageContext.servletContext.contextPath}/">

<style type="text/css">
.form-group{
	width: 80%;
	margin: 0 auto
}
</style>
<script  type="text/javascript">
    function name1() {
    	 document.getElementById("email1").value = document.getElementById("email").value;
	}
    
    function name2() {
    document.getElementById("content1").value = 'Bạn đã được tuyển dụng vào hệ thống chăm sóc trẻ sơ sinh với vai trò nhân viên chăm sóc.' +'\n' + 'Tài khoản để đăng nhập hệ thống của bạn là:' +'\n' +'Số điện thoại: '+ '${staff.phone}' +'\n' + 'Mật khẩu: ' + '${staff.password}' +'\n' +'Vui lòng đổi mật khẩu trước khi sử dụng hệ thống của chúng tôi.' +'\n' +'Cảm ơn bạn đã sử dụng dịch vụ của BBestcare. Chúc bạn thành công!' 
    }
    function myFunction() {
    	  var x = document.getElementById("country").selectedIndex;
    	  // alert(document.getElementsByTagName("option")[x].value);
    	  if(x==0){
    		  document.getElementById("content1").value = "Bạn không đủ điều kiện để tham gia vào hệ thống BBestcare với vai trò nhân viên chăm sóc." +'\n' 
    		  + "Cảm ơn bạn đã quan tâm đến chúng tôi."
    	  }else if(x==1){
    		  document.getElementById("content1").value = 'Bạn đã được tuyển dụng vào hệ thống chăm sóc trẻ sơ sinh với vai trò nhân viên chăm sóc.' +'\n' 
    		  + 'Tài khoản để đăng nhập hệ thống của bạn là:' +'\n' +'Số điện thoại: '+ '${staff.phone}' +'\n' + 'Mật khẩu: ' + '${staff.password}' +'\n' +'Vui lòng đổi mật khẩu trước khi sử dụng hệ thống của chúng tôi.' +'\n' +'Cảm ơn bạn đã sử dụng dịch vụ của BBestcare. Chúc bạn thành công!' 
    	  }else if(x==2){
    		  document.getElementById("content1").value = 'Hệ thống BBestcare sẽ báo cho bạn kết quả tuyển dụng trong 10 ngày tới!' +'\n'
    		  +'Sau 10 ngày không nhận được thông báo xin vui lòng liên hệ lại với chúng tôi.'+'\n'+'Hotline BBestcare: 0962064263'
    	  }else{		  
    	  }
    	}
    function tieude() {
    	document.getElementById("tieude").value = 'Thông báo: Tuyển dụng nhân viên chăm sóc của hệ thống chăm sóc trẻ sơ sinh BBestcare'
	}
    </script>
</head>
<jsp:include page="../header.jsp"></jsp:include>
<body id="page-top" onload="name1();name2();myFunction();tieude();">
     <!-- Begin Page Content -->
        <div class="container-fluid">
          <!-- DataTales Example -->
          <div class="card shadow mb-4" > 
          
            <div class="card-header py-3">
              <h6 style="float:left;" class="m-0 font-weight-bold text-primary">Cập nhật trạng thái</h6>
              <a href="manage/recruiment/create.htm"><i style="float:right;font-size: 20px" class="far fa-plus-square"></i></a>
            </div>
            <div class="card-body">
              <div class="table-responsive">
              ${message }
					<form:form action="manage/recruitment/update.htm" modelAttribute="staff">
						<div class="form-group">
							<form:label path="phone" >SĐT</form:label> 
							<form:input class="form-control" type="text" path="phone" readonly="true"/>
						</div>
						<div class="form-group">
							<form:label path="fullname" >Tên nhân viên</form:label> 
							<form:input class="form-control" path="fullname" required="required"  readonly="true"/>
						</div>
						<div class="form-group">
							<form:label path="password" >Mật khẩu</form:label> 
							<form:input class="form-control" path="password" required="required" readonly="true"/>
						</div>
						<div class="form-group">
							<form:label path="birthday" >Ngày sinh</form:label> 
							<form:input class="form-control" path="birthday" type="date" readonly="true" />
						</div>
						<div class="form-group">
							<form:label path="gender" >Giới tính</form:label> 
							<form:input class="form-control" path="gender" required="required" readonly="true"/>
						</div>
						
						<div class="form-group">
							<form:label path="email" >Email</form:label> 
							<form:input class="form-control" id="email" path="email" required="required" readonly="true"/>
						</div>
						<div class="form-group">
							<form:label path="address" >Địa chỉ</form:label> 
							<form:input class="form-control" path="address" required="required" readonly="true" />
						</div>
						<div class="form-group">
							<form:label path="hometown" >Quê quán</form:label> 
							<form:input class="form-control" path="hometown" required="required" readonly="true" />
						</div>
						<div class="form-group">
							<form:label path="images" >Ảnh</form:label> 
							<form:input class="form-control" path="images" required="required" readonly="true" />
						</div>
						<div class="form-group">
							<form:label path="peopleid" >Số CMND</form:label> 
							<form:input class="form-control" path="peopleid" required="required"  readonly="true"/>
						</div>
						<div class="form-group">
							<form:label path="accountNumberBank" >Số tài khoản</form:label> 
							<form:input class="form-control" path="accountNumberBank" required="required" readonly="true" />
						</div>
						<div class="form-group">
							<form:label path="degree" >Bằng cấp</form:label> 
							<form:input class="form-control" path="experience" required="required" readonly="true"/>
						</div>
						<div class="form-group">
							<form:label path="experience" >Kinh nghiệm</form:label> 
							<form:input class="form-control" path="degree" required="required" readonly="true"/>
						</div>
						
						<div class="form-group">
						<form:label path="status" >Trạng thái:</form:label>
						<form:select class="form-control" path="status" id="country" name="country" onclick="myFunction()">
							<form:option value="" />
							<form:option path="status" value="Passed" />Passed
      						<form:option path="status" value="Waiting" />Waiting
   						</form:select>
   						</div>
						<br>
						<div style="text-align: center;"><button id="abcd" type="submit" class="btn btn-primary">Cập nhật</button></div>
					</form:form>
					
              </div>
            </div>
            
            <div class="card-header py-3">
              <h6 style="float:left;" class="m-0 font-weight-bold text-primary">Gửi mail</h6>
            </div>
            <div class="card-body">
              <div class="table-responsive">
              	 <jsp:include page="mail.jsp"></jsp:include>
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
