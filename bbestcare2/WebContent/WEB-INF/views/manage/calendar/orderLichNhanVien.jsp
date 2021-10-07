<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<%@ taglib uri="http://java.sun.com/jstl/core_rt" prefix="c"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@page import="java.sql.*"%>
<%
String phone = request.getParameter("phone"); 
 String fullname = request.getParameter("fullname");
 String district = request.getParameter("district");
 String ward = request.getParameter("ward");
 String dated[]=request.getParameterValues("Dated");
 String slot[] = request.getParameterValues("ca"); 
 String note = request.getParameter("note");
Class.forName("com.microsoft.sqlserver.jdbc.SQLServerDriver");
String user = "sa";
String pass = "quan";
String url = "jdbc:sqlserver://localhost:1433;databaseName=BBESTCARE";
Connection con = DriverManager.getConnection("jdbc:sqlserver://localhost:1433;databaseName=BBESTCARE", "sa", "quan");
Statement st=con.createStatement();
for(int i=0;i<dated.length;i++){
	for(int j=0;j<slot.length;j++){
	st.executeUpdate("insert into LichNhanVien(Phone,Fullname,District,Ward,Dated,Slot,Note) values('"+phone+"',N'"+fullname+"',N'"+district+"',N'"+ward+"','"+dated[i]+"',N'"+slot[j]+"',N'"+note+"')");
	}
}
try{

}
catch(Exception e){
System.out.println(e);
}
%> 
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<title>Insert title here</title>
<base href="${pageContext.servletContext.contextPath}/">
 <link href="vendor/fontawesome-free/css/all.min.css" rel="stylesheet" type="text/css">
  <link href="https://fonts.googleapis.com/css?family=Nunito:200,200i,300,300i,400,400i,600,600i,700,700i,800,800i,900,900i" rel="stylesheet">

  <!-- Custom styles for this template -->
  <link href="css/sb-admin-2.min.css" rel="stylesheet">
  <link rel="stylesheet" href="path/to/font-awesome/css/font-awesome.min.css">

  <!-- Custom styles for this page -->
  <link href="vendor/datatables/dataTables.bootstrap4.min.css" rel="stylesheet">
<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">
<style type="text/css">
* {
	-webkit-box-sizing: border-box;
	box-sizing: border-box;
}

body {
	padding: 0;
	margin: 0;
	background-color: #fff;
}

#notfound {
	position: relative;
	height: 100vh;
}

#notfound .notfound {
	position: absolute;
	left: 50%;
	top: 50%;
	-webkit-transform: translate(-50%, -50%);
	-ms-transform: translate(-50%, -50%);
	transform: translate(-50%, -50%);
}

.notfound {
	max-width: 410px;
	width: 100%;
	text-align: center;
}

.notfound .notfound-404 {
	height: 280px;
	position: relative;
	z-index: -1;
}

.notfound .notfound-404 h1 {
	font-family: 'Montserrat', sans-serif;
	font-size: 200px;
	margin: 0px;
	font-weight: 900;
	position: absolute;
	left: 50%;
	-webkit-transform: translateX(-50%);
	-ms-transform: translateX(-50%);
	transform: translateX(-50%);
	/* background: url('img/bg.jpg') no-repeat; */
	background-color: #17449e;
	-webkit-background-clip: text;
	-webkit-text-fill-color: transparent;
	background-size: cover;
	background-position: center;
}

.notfound h2 {
	font-family: 'Montserrat', sans-serif;
	color: #000;
	font-size: 24px;
	font-weight: 700;
	text-transform: uppercase;
	margin-top: 0;
}

.notfound p {
	font-family: 'Montserrat', sans-serif;
	color: #000;
	font-size: 14px;
	font-weight: 400;
	margin-bottom: 20px;
	margin-top: 0px;
}

.notfound a {
	font-family: 'Montserrat', sans-serif;
	font-size: 14px;
	text-decoration: none;
	text-transform: uppercase;
	background: #0046d5;
	display: inline-block;
	padding: 15px 30px;
	border-radius: 40px;
	color: #fff;
	font-weight: 700;
	-webkit-box-shadow: 0px 4px 15px -5px #0046d5;
	box-shadow: 0px 4px 15px -5px #0046d5;
}

@media only screen and (max-width: 767px) {
	.notfound .notfound-404 {
		height: 142px;
	}
	.notfound .notfound-404 h1 {
		font-size: 112px;
	}
}

<![CDATA[

  i {
    filter: url(#filter);
    fill: #25adce;
      font-family: 'Share Tech Mono', sans-serif;
      font-size: 100px;
    -webkit-font-smoothing: antialiased;
    -moz-osx-font-smoothing: grayscale;
        }
]]>
</style>
</head>

<body id="page-top">
<div id="notfound">
		<div class="notfound">
		<h1>
<svg version="1.1" id="Ebene_1" xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink" 
   width="600px" height="100px" viewBox="0 0 600 100">
<style type="text/css">
a {
	font-family: 'Montserrat', sans-serif;
	color: #000;
	font-size: 24px;
	font-weight: 700;
	text-transform: uppercase;
	margin-top: 0;
}


<![CDATA[

  i {
    filter: url(#filter);
    fill: #25adce;
      font-family: 'Share Tech Mono', sans-serif;
      font-size: 100px;
    -webkit-font-smoothing: antialiased;
    -moz-osx-font-smoothing: grayscale;
        }
]]>
</style>
  <defs>

    <filter id="filter">
        <feFlood flood-color="white" result="white" />
        <feFlood flood-color="red" result="flood1" />
        <feFlood flood-color="limegreen" result="flood2" />
      <feOffset in="SourceGraphic" dx="3" dy="0" result="off1a"/>
      <feOffset in="SourceGraphic" dx="2" dy="0" result="off1b"/>
      <feOffset in="SourceGraphic" dx="-3" dy="0" result="off2a"/>
      <feOffset in="SourceGraphic" dx="-2" dy="0" result="off2b"/>
        <feComposite in="flood1" in2="off1a" operator="in"  result="comp1" />
        <feComposite in="flood2" in2="off2a" operator="in" result="comp2" />

        <feMerge x="0" width="100%" result="merge1">
        <feMergeNode in = "black" />
        <feMergeNode in = "comp1" />
        <feMergeNode in = "off1b" />

        <animate 
          attributeName="y" 
            id = "y"
            dur ="4s"
            
            values = '104px; 104px; 30px; 105px; 30px; 2px; 2px; 50px; 40px; 105px; 105px; 20px; 6ßpx; 40px; 104px; 40px; 70px; 10px; 30px; 104px; 102px'

            keyTimes = '0; 0.362; 0.368; 0.421; 0.440; 0.477; 0.518; 0.564; 0.593; 0.613; 0.644; 0.693; 0.721; 0.736; 0.772; 0.818; 0.844; 0.894; 0.925; 0.939; 1'

            repeatCount = "indefinite" />
 
        <animate attributeName="height" 
            id = "h" 
            dur ="4s"
            
            values = '10px; 0px; 10px; 30px; 50px; 0px; 10px; 0px; 0px; 0px; 10px; 50px; 40px; 0px; 0px; 0px; 40px; 30px; 10px; 0px; 50px'

            keyTimes = '0; 0.362; 0.368; 0.421; 0.440; 0.477; 0.518; 0.564; 0.593; 0.613; 0.644; 0.693; 0.721; 0.736; 0.772; 0.818; 0.844; 0.894; 0.925; 0.939; 1'

            repeatCount = "indefinite" />
        </feMerge>
      

      <feMerge x="0" width="100%" y="60px" height="65px" result="merge2">
        <feMergeNode in = "black" />
        <feMergeNode in = "comp2" />
        <feMergeNode in = "off2b" />

        <animate attributeName="y" 
            id = "y"
            dur ="4s"
            values = '103px; 104px; 69px; 53px; 42px; 104px; 78px; 89px; 96px; 100px; 67px; 50px; 96px; 66px; 88px; 42px; 13px; 100px; 100px; 104px;' 

            keyTimes = '0; 0.055; 0.100; 0.125; 0.159; 0.182; 0.202; 0.236; 0.268; 0.326; 0.357; 0.400; 0.408; 0.461; 0.493; 0.513; 0.548; 0.577; 0.613; 1'

            repeatCount = "indefinite" />
 
        <animate attributeName="height" 
            id = "h"
            dur = "4s"
          
          values = '0px; 0px; 0px; 16px; 16px; 12px; 12px; 0px; 0px; 5px; 10px; 22px; 33px; 11px; 0px; 0px; 10px'

            keyTimes = '0; 0.055; 0.100; 0.125; 0.159; 0.182; 0.202; 0.236; 0.268; 0.326; 0.357; 0.400; 0.408; 0.461; 0.493; 0.513;  1'
             
            repeatCount = "indefinite" />
        </feMerge>
      
      <feMerge>
        <feMergeNode in="SourceGraphic" />  

        <feMergeNode in="merge1" /> 
      <feMergeNode in="merge2" />

        </feMerge>
      </filter>

  </defs>

<g>

 <i  style="font-size: 200px;color: #17449e;" class="fas fa-check-circle"></i>
</g>
</svg></h1>
			<h2>Khai báo lịch thành công</h2>
			<br>
			<p>BBestcare hệ thống dịch vụ chăm sóc trẻ em chuyên nghiệp</p>
			<a href="manage/dashboard/dashboard.htm">Quay lại Trang chủ</a>
		</div>
	</div>
	
</body>

</html>