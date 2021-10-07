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
</head>
<body id="page-top">
		
        <!-- Begin Page Content -->
       
					<form action="manage/recruitment/send.htm" method="get">
						<div class="form-group">
							<label>Từ</label> 
							<input class="form-control" type="email" name="from" placeholder="From" value="quann3001@gmail.com" required="required"/>
						</div>
						<div class="form-group">
							<label>Đến</label> 
							<input id="email1" class="form-control" id="email1" value="${mail.email}" type="email" name="to" placeholder="To" required="required"/>
						</div>
						<div class="form-group">
							<label>Tiêu đề</label> 
							<input id="tieude" class="form-control" type="text" name="subject"  placeholder="Subject" required="required"/>
						</div>
						<div class="form-group">
							<label>Nội dung</label> 
							<textarea style="" id="content1" class="form-control" id="content1" name="body" placeholder="Body" required="required"></textarea>
						</div>
						
						<div style="text-align: center;"><button id="abcd1" type="submit" class="btn btn-primary">Gửi</button></div>
					</form>


  


</body>
</html>
