<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ page isELIgnored="false"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ include file = "usernavbar.jsp" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">

<!-- <script type = "text/javascript">  
    window.onload = function () {  
        document.onkeydown = function (e) {  
            return (e.which || e.keyCode) != 116;  
        };  
    }  
</script>  -->
<style>

body {
/*     color: #000;
    overflow-x: hidden; */
    height: 100%;
    background-image: linear-gradient(to right, #FFF3E6, #CCE6FF)!important;
    background-repeat: no-repeat
}

.card-flyer .btn{
	background-image: linear-gradient(to right, #e7bfd4, #bdd5ed);
	color: black!important;
	cursor: pointer;
    border: none !important;
}

.card-flyer .btn:hover{
background-image: linear-gradient(to right, #bdd5ed, #e996c1);
}

.carousel .item {
  height: 300px;
}

.item img {
    position: absolute;
    top: 0;
    left: 0;
    min-height: 300px;
}

/*----  Main Style  ----*/
#cards_landscape_wrap-2 {
	text-align: center;
	/* background: #f5eded; */
}

#cards_landscape_wrap-2 .container {
	padding-top: 80px;
	padding-bottom: 100px;
}

#cards_landscape_wrap-2 a {
	text-decoration: none;
	outline: none;
}

#cards_landscape_wrap-2 .card-flyer {
	border-radius: 5px;
}

#cards_landscape_wrap-2 .card-flyer .image-box {
	background: #ffffff;
	overflow: hidden;
	box-shadow: 0px 2px 15px rgba(0, 0, 0, 0.50);
	border-radius: 5px;
}

#cards_landscape_wrap-2 .card-flyer .image-box img {
	-webkit-transition: all .9s ease;
	-moz-transition: all .9s ease;
	-o-transition: all .9s ease;
	-ms-transition: all .9s ease;
	width: 100%;
	height: 200px;
}

#cards_landscape_wrap-2 .card-flyer:hover .image-box img {
	opacity: 0.7;
	-webkit-transform: scale(1.15);
	-moz-transform: scale(1.15);
	-ms-transform: scale(1.15);
	-o-transform: scale(1.15);
	transform: scale(1.15);
}

#cards_landscape_wrap-2 .card-flyer .text-box {
	text-align: center;
}

#cards_landscape_wrap-2 .card-flyer .text-box .text-container {
	padding: 30px 18px;
}

#cards_landscape_wrap-2 .card-flyer {
	background: #FFFFFF;
	margin-top: 50px;
	-webkit-transition: all 0.2s ease-in;
	-moz-transition: all 0.2s ease-in;
	-ms-transition: all 0.2s ease-in;
	-o-transition: all 0.2s ease-in;
	transition: all 0.2s ease-in;
	box-shadow: 0px 3px 4px rgba(0, 0, 0, 0.40);
}

#cards_landscape_wrap-2 .card-flyer:hover {
	background: #fff;
	box-shadow: 0px 15px 26px rgba(0, 0, 0, 0.50);
	-webkit-transition: all 0.2s ease-in;
	-moz-transition: all 0.2s ease-in;
	-ms-transition: all 0.2s ease-in;
	-o-transition: all 0.2s ease-in;
	transition: all 0.2s ease-in;
	margin-top: 50px;
}

#cards_landscape_wrap-2 .card-flyer .text-box p {
	margin-top: 10px;
	margin-bottom: 0px;
	padding-bottom: 0px;
	font-size: 14px;
	letter-spacing: 1px;
	color: #000000;
}

#cards_landscape_wrap-2 .card-flyer .text-box h6 {
	margin-top: 0px;
	margin-bottom: 4px;
	font-size: 18px;
	font-weight: bold;
	text-transform: uppercase;
	font-family: 'Roboto Black', sans-serif;
	letter-spacing: 1px;
	color: #00acc1;
}
</style>
</head>
<body>
<% session = request.getSession(); %>

		<c:if test = "${not empty qty_error}">
			<div class="container-fluid mt-5">
				<svg class="bi flex-shrink-0 me-2" width="24" height="24" role="img" aria-label="Danger:"><use xlink:href="#exclamation-triangle-fill"/></svg>
		        <div class="alert alert-danger alert-dismissible fade show" role="alert">
					  ${qty_error}
					  <button type="button" class="btn-close" data-bs-dismiss="alert" aria-label="Close"></button>
				</div>
			</div>	
        </c:if>
	<!-- Topic Cards -->
	
	<div id="cards_landscape_wrap-2" class="mt-4 p-5">
	
		<div class="container">
		<h1>Laptops</h1>
			<div class="row" id="#laptop">
				<c:forEach var="laptop" items="${listLaptop}">
					<div class="col-xs-12 col-sm-6 col-md-3 col-lg-3">
						<!-- <a href=""> -->
							<div class="card-flyer">
								<div class="text-box">
									<a href="/Electronics/Product/singleProduct?pid=${laptop.p_Id}">
										<div class="image-box" style="padding: 15%;">
											<img
												src="${laptop.img_Url}"
												alt="" />
										</div>
									</a>	
									<form action="/Electronics/addtocart" method="post">
										<div class="text-container" style="min-height: 22vh;">
											<h6 class="mb-3">${laptop.lName}</h6>
											
											<a href="buyProduct?pid=${laptop.p_Id}" class="btn btn-primary mx-3" type=submit>Buy</a>
											<input style="width: 50px; height: 38px;" type="number" name="p_quantity" placeholder="Enter Quantity" value="1"  min="1" max="${laptop.p_Quantity}">
											<input type="hidden" name="pid" value="${laptop.p_Id}">
											
											<a href="addtocart" class="btn btn-primary" type=submit><input type="submit" value="Add To Cart" style="background:none; border: none;"></a>
										
										</div>
									
									</form>
								</div>
							</div>
						<!-- </a> -->
					</div>
				</c:forEach>
			</div>
		</div>
	</div>
	
	<div id="cards_landscape_wrap-2">
	
		<div class="container">
		<h1>Mobiles</h1>
			<div class="row">
				<c:forEach var="mobile" items="${listMobile}">
					<div class="col-xs-12 col-sm-6 col-md-3 col-lg-3">
						<!-- <a href=""> -->
							<div class="card-flyer">
								<div class="text-box">
									<a href="/Electronics/Product/singleProduct?pid=${mobile.p_Id}">
										<div class="image-box" style="padding: 10%;">
											<img style="width: 230px;"
												src="${mobile.img_Url}"
												alt="" />
										</div>
									</a>
									<form action="/Electronics/addtocart" method="post">
										<div class="text-container" style="min-height: 22vh;">
											<h6 class="mb-3">${mobile.mName}</h6>
											<a href="buyProduct?pid=${mobile.p_Id}" class="btn btn-primary mx-3" type=submit>Buy</a>
											<input style="width: 50px; height: 38px;" type="number" name="p_quantity" placeholder="Enter Quantity" value="1"  min="1" max="${mobile.p_Quantity}">
											<input type="hidden" name="pid" value="${mobile.p_Id}">
											
											<a href="addtocart" class="btn btn-primary" type=submit><input type="submit" value="Add To Cart" style="background:none; border: none;"></a>
										
										</div>
									
									</form>
								</div>
							</div>
						<!-- </a> -->
					</div>
				</c:forEach>
			</div>
		</div>
	</div>
	
	<div id="cards_landscape_wrap-2">
	
		<div class="container">
		<h1>Smart Watch</h1>
			<div class="row">
				<c:forEach var="smartwatch" items="${listSmartWatch}">
					<div class="col-xs-12 col-sm-6 col-md-3 col-lg-3">
						<!-- <a href=""> -->
							<div class="card-flyer">
								<div class="text-box">
									<a href="/Electronics/Product/singleProduct?pid=${smartwatch.p_Id}">
										<div class="image-box" style="padding: 15%;">
											<img
												src="${smartwatch.img_Url}"
												alt="" />
										</div>
									</a>
									<form action="/Electronics/addtocart" method="post">
										<div class="text-container" style="min-height: 22vh;">
											<h6 class="mb-3">${smartwatch.sName}</h6>
											<a href="buyProduct?pid=${smartwatch.p_Id}" class="btn btn-primary mx-3" type=submit>Buy</a>
											<input style="width: 50px; height: 38px;" type="number" name="p_quantity" placeholder="Enter Quantity" value="1"  min="1" max="${smartwatch.p_Quantity}">
											<input type="hidden" name="pid" value="${smartwatch.p_Id}">
											
											<a href="addtocart" class="btn btn-primary" type=submit><input type="submit" value="Add To Cart" style="background:none; border: none;"></a>
										
										</div>
									
									</form>
								</div>
							</div>
						<!-- </a> -->
					</div>
				</c:forEach>
			</div>
		</div>
	</div>	
	
	
	<div id="cards_landscape_wrap-2">
	
		<div class="container">
		<h1>TVs</h1>
			<div class="row">
				<c:forEach var="tv" items="${listTV}">
					<div class="col-xs-12 col-sm-6 col-md-3 col-lg-3">
						<!-- <a href=""> -->
							<div class="card-flyer">
								<div class="text-box">
									<a href="/Electronics/Product/singleProduct?pid=${tv.p_Id}">
										<div class="image-box" style="padding: 15%;">
											<img
												src="${tv.img_Url}"
												alt="" />
										</div>
									</a>
									<form action="/Electronics/addtocart" method="post">
										<div class="text-container" style="min-height: 22vh;">
											<h6 class="mb-3">${tv.tvName}</h6>
											<a href="buyProduct?pid=${tv.p_Id}" class="btn btn-primary mx-3" type=submit>Buy</a>
											<input style="width: 50px; height: 38px;" type="number" name="p_quantity" placeholder="Enter Quantity" value="1"  min="1" max="${tv.p_Quantity}">
											<input type="hidden" name="pid" value="${tv.p_Id}">
											
											<a href="addtocart" class="btn btn-primary" type=submit><input type="submit" value="Add To Cart" style="background:none; border: none;"></a>
										
										</div>
									
									</form>
								</div>
							</div>
						<!-- </a> -->
					</div>
				</c:forEach>
			</div>
		</div>
	</div>		
			
	<%@ include file = "footer.jsp" %>								
</body>
</html>