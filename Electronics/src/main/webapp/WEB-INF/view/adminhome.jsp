<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ include file="adminnavbar.jsp"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>

<style>

.container {
	height: 100vh;
	display: flex;
	justify-content: center;
	align-items: center
}

.card1 {
	position: relative;
	width: 400px;
	height: 250px;
	border-radius: 10px;
	display: flex;
	align-items: center;
	justify-content: center;
	transition: 2s
}

.circle {
	position: absolute;
	top: 0;
	left: 0;
	width: 100%;
	height: 100%;
	color: #fff;
	overflow: hidden;
	border-radius: 10px;
	z-index: 5
}

.circle::before {
	content: "";
	position: absolute;
	top: 0;
	left: 0;
	width: 100%;
	height: 100%;
	background: linear-gradient(to right, #07218b, #e04f4f);
	clip-path: circle(120px at 50% 50%);
	transition: 0.9s;
	z-index: 10
}

.card1:hover .circle::before {
	clip-path: circle(400px at 50% 50%)
}

.card1 img {
	z-index: 10;
	position: absolute;
	transition: 0.5s;
	pointer-event: none
}

.card1:hover img {
	height: 250px;
	width: 300px;
	top: -20%;
	right: -20%
}

.card1 .content {
	position: absolute;
	opacity: 0;
	color: #fff;
	top: 40px;
	width: 200px;
	left: 20px;
	z-index: 20;
	transition: 0.4s
}

.content p {
	font-size: 13px
}

.content button {
	width: auto;
	height: 35px;
	border: none;
	background-image: linear-gradient(to right, #89bdee, #CCE6FF); 
	color: black;
	font-size: 14px;
	border-radius: 4px;
}

.content button:hover {
    /* color: #fff; */
    background-image: linear-gradient(to right, #CCE6FF, #89bdee)
}

.card1:hover .content {
	opacity: 1
}
</style>

<html>
<head>
<meta charset="ISO-8859-1">

<title>Admin Panel</title>
</head>
<body style="background: linear-gradient(to right, #FFF3E6, #CCE6FF);">

	<div class="container mt-5 p-0" style="height: 300px!important; justify-content: space-around;">
		<div class="card1 col-md-4 col-sm-12">
			<div class="circle"></div>
			<div class="content">
				<h5>Laptops</h5>
				<p>You can add, remove, delete and see all laptops here.</p>
				<a href="/Electronics/Product/laptop"><button>All Laptops</button></a>
			</div>
			<img width="170" src="https://cdn-icons-png.flaticon.com/512/235/235265.png">
		</div>
		<div class="card1 col-md-4 col-sm-12">
			<div class="circle"></div>
			<div class="content">
				<h5>TVs</h5>
				<p>You can add, remove, delete and see all tvs here.</p>
				<a href="/Electronics/Product/tv" style="width: auto;"><button>All TVs</button></a>
			</div>
			<img width="180" src="https://d2d22nphq0yz8t.cloudfront.net/88e6cc4b-eaa1-4053-af65-563d88ba8b26/https://media.croma.com/image/upload/v1618814193/Croma%20Assets/Entertainment/Television/Images/233045_qwdoto.png/mxw_2048,f_auto">
		</div>
		
	</div>
	<div class="container mt-5 p-0" style="height: 300px!important; justify-content: space-around;">
		<div class="card1 col-md-4 col-sm-12">
			<div class="circle"></div>
			<div class="content">
				<h5>Mobiles</h5>
				<p>You can add, remove, delete and see all mobiles here.</p>
				<a href="/Electronics/Product/mobile" style="width: auto;"><button>All Mobiles</button></a>
			</div>
			<img width="200" src="https://d2d22nphq0yz8t.cloudfront.net/88e6cc4b-eaa1-4053-af65-563d88ba8b26/https://media.croma.com/image/upload/v1638446751/Croma%20Assets/Communication/Mobiles/Images/233912_biu7qr.png/mxw_2048,f_auto">
		</div>
		<div class="card1 col-md-4 col-sm-12">
			<div class="circle"></div>
			<div class="content">
				<h5>Smart Watches</h5>
				<p>You can add, remove, delete and see all smart watches here.</p>
				<a href="/Electronics/Product/smartwatch" style="width: auto;"><button>All Smart Watches</button></a>
			</div>
			<img width="200" src="https://d2d22nphq0yz8t.cloudfront.net/88e6cc4b-eaa1-4053-af65-563d88ba8b26/https://media.croma.com/image/upload/v1622022828/Croma%20Assets/Communication/Wearable%20Devices/Images/234633_thp0uu.png/mxw_2048,f_auto">
		</div>
	</div>
	
		

	<%@ include file="footer.jsp"%>
</body>
</html>