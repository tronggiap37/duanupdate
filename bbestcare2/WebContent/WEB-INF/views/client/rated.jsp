
<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
	 <%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
	 
	 <%@page import="java.sql.*"%>
<%


 String rate[] = request.getParameterValues("rating"); 
String  nameCustomer = request.getParameter("fname"); 
String sdt = request.getParameter("nameCustomer"); 
String note = request.getParameter("note"); 
Class.forName("com.microsoft.sqlserver.jdbc.SQLServerDriver");
String user = "sa";
String pass = "quan";
String url = "jdbc:sqlserver://localhost:1433;databaseName=BBESTCARE";
Connection con = DriverManager.getConnection("jdbc:sqlserver://localhost:1433;databaseName=BBESTCARE", "sa", "quan");
Statement st=con.createStatement();
for(int i=0;i<rate.length;i++){
	st.executeUpdate("insert into Rate(Star,Dated,Phone,NameCustomer,Note) values(N'"+rate[i]+"',GETDATE(),'"+sdt+"',N'"+nameCustomer+"',N'"+note+"')");
}
try{

}
catch(Exception e){
System.out.println(e);
}
%>  
<!DOCTYPE html>
<html lang="en" b:version='2' class='v2' expr:dir='data:blog.languageDirection' xmlns='http://www.w3.org/1999/xhtml' xmlns:b='http://www.google.com/2005/gml/b' xmlns:data='http://www.google.com/2005/gml/data' xmlns:expr='http://www.google.com/2005/gml/expr'>
<head>
<title>Thành công</title>
<!-- for-mobile-apps -->
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.1/css/all.min.css" />
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta name="keywords" content="Dental Health Responsive web template, Bootstrap Web Templates, Flat Web Templates, Android Compatible web template, 
Smartphone Compatible web template, free webdesigns for Nokia, Samsung, LG, SonyEricsson, Motorola web design" />


	<!-- css files -->
    <link href="../css/bootstrap.css" rel='stylesheet' type='text/css' /><!-- bootstrap css -->
    <link href="../css/style.css" rel='stylesheet' type='text/css' /><!-- custom css -->
    <link href="../css/style_about.css" rel='stylesheet' type='text/css' /><!-- custom css -->
    <link href="../css/font-awesome.min.css" rel="stylesheet" type='text/css'><!-- fontawesome css -->
  <!--   <link href="../css/stylenotfound.css" rel="stylesheet" type='text/css'>fontawesome css -->
	<!-- //css files -->
	
	<!-- google fonts -->
	<link href="//fonts.googleapis.com/css?family=Open+Sans:300,300i,400,400i,600,600i,700,700i,800,800i&amp;subset=cyrillic,cyrillic-ext,greek,greek-ext,latin-ext,vietnamese" rel="stylesheet">
	<link href="//fonts.googleapis.com/css?family=Dosis:200,300,400,500,600,700,800&amp;subset=latin-ext" rel="stylesheet">
	<link href="https://fonts.googleapis.com/css?family=Montserrat:400,700,900" rel="stylesheet">
	<!-- //google fonts -->
	<script src='https://cdnjs.cloudflare.com/ajax/libs/jquery/3.5.1/jquery.min.js'></script>
	<style type="text/css">
		.body__preloader{position:fixed;z-index:9999;width:100%;height:100%;left:0;top:0;background-color:#ffffff;-webkit-transition:all .3s ease;-o-transition:all .3s ease;transition:all .3s ease;opacity:1;visibility:visible}
.body__preloader.loaded{opacity:0;visibility:hidden;z-index:-2}
#loading{display:block;position:relative;z-index:1001;left:50%;top:50%;width:150px;height:150px;margin:-75px 0 0 -75px;border-radius:50%;border:3px solid transparent;border-top-color:#3498db;-webkit-animation:spin 2s linear infinite;animation:spin 2s linear infinite}
#loading:before{content:"";position:absolute;top:5px;left:5px;right:5px;bottom:5px;border-radius:50%;border:3px solid transparent;border-top-color:#e74c3c;-webkit-animation:spin 3s linear infinite;animation:spin 3s linear infinite}
#loading:after{content:"";position:absolute;top:15px;left:15px;right:15px;bottom:15px;border-radius:50%;border:3px solid transparent;border-top-color:#f9c922;-webkit-animation:spin 1.5s linear infinite;animation:spin 1.5s linear infinite}
@-webkit-keyframes spin{0%{-webkit-transform:rotate(0deg);-ms-transform:rotate(0deg);transform:rotate(0deg)}100%{-webkit-transform:rotate(360deg);-ms-transform:rotate(360deg);transform:rotate(360deg)}}
@keyframes spin{0%{-webkit-transform:rotate(0deg);-ms-transform:rotate(0deg);transform:rotate(0deg)}100%{-webkit-transform:rotate(360deg);-ms-transform:rotate(360deg);transform:rotate(360deg)}}
	</style>
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
<body>

<div class='body__preloader'>
   <div id="loading"></div>
</div>
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

 <i  style="font-size: 300px;color: #17449e;" class="fas fa-check-circle"></i>
</g>
</svg></h1>
			
			<h2>Cảm ơn quý khách đã đánh giá dịch vụ của chúng tôi !</h2>
			<br>
			<p>Hãy tiếp tục sử dụng hệ thống Bbestcare.</p>
			<a href="../client/rate.htm">Quay lại</a>
		</div>
	</div>
<script>
  $(window).bind("load", function() {
    $('.body__preloader').addClass("loaded");
  })
  
</script>
</body>
</html>