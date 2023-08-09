<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ include file = "usernavbar.jsp" %>  
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>About Us</title>

<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta1/dist/css/bootstrap.min.css"
	rel="stylesheet"
	crossorigin="anonymous">
<script
	src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta1/dist/js/bootstrap.bundle.min.js"
	crossorigin="anonymous"></script>
<link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.7.2/css/all.css" crossorigin="anonymous">
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css"
	rel="stylesheet"
	integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC"
	crossorigin="anonymous">
<script
	src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js"
	integrity="sha384-MrcW6ZMFYlzcLA8Nl+NtUVF0sA7MsXsP1UyJoMp4YLEuNSfAP+JcXn/tWtIaxVXM"
	crossorigin="anonymous"></script>
<style>
    *{
    margin: 0;
    padding: 0;
    font-family: "Open Sans",sans-serif;
    box-sizing: border-box;
}

body{
    min-height: 100vh;
    /* display: flex; */
    align-items: center;
    justify-content: center;
    /* background-color: #f1f1f1; */
}

.about-section {
  background-color: #f2f2f2;
  padding: 50px;
}

.inner-container {
  max-width: 800px;
  margin: 0 auto;
}

h1 {
margin-top: 70px;
  font-size: 48px;
  font-weight: bold;
  color: #333;
  margin-bottom: 20px;
}

.text {
  font-size: 18px;
  line-height: 1.5;
  color: #666;
}

@media screen and (max-width:1200px){
    .inner-container{
        padding: 80px;
    }
}

@media screen and (max-width:1000px){
    .about-section{
        background-size: 100%;
        padding: 100px 40px;
    }
    .inner-container{
        width: 100%;
    }
}

@media screen and (max-width:600px){
    .about-section{
        padding: 0;
    }
    .inner-container{
        padding: 60px;
    }
}

@import url('https://fonts.googleapis.com/css2?family=Poppins:wght@300;400;500;600;700;800;900&display=swap');

 * {
     margin: 0;
     padding: 0;
     box-sizing: border-box;
     font-family: 'Poppins', sans-serif
 }

 .container {
     margin-top: 80px
 }

 .container .col-lg-4 {
     display: flex;
     justify-content: center
 }

 .card {
     width: 300px;
     height: 300px;
     transform-style: preserve-3d;
     perspective: 500px;
     border: none;
     background-color: inherit
 }

 .card .face {
     position: absolute;
     color: #fff;
     width: 100%;
     height: 100%;
     overflow: hidden;
     box-shadow: 0 15px 35px rgba(0, 0, 0, 0.1);
     border-radius: 15px;
     background: rgba(255, 255, 255, 0.06);
     transform-style: preserve-3d;
     transition: 0.5s;
     backface-visibility: hidden;
     border-top: 1px solid #ddd;
     border-left: 1px solid #ddd
 }

 .card .face.front-face,
 .card .face.back-face {
     position: absolute;
     display: flex;
     flex-direction: column;
     align-items: center;
     justify-content: center
 }

 .card .face.front-face .profile {
     width: 150px;
     height: 150px;
     border-radius: 50%;
     object-fit: cover
 }

 .card .face.front-face .name {
     letter-spacing: 2px
 }

 .card .face.front-face .designation {
     font-size: 0.8rem;
     color: black;
     letter-spacing: 0.8px
 }

 .card:hover .face.front-face {
     transform: rotateY(180deg)
 }

 .card .face.back-face {
     position: absolute;
     transform: rotateY(180deg);
     padding: 20px 30px;
     text-align: center;
     user-select: none;
     color: black
 }

 .card .face.back-face .fa-quote-left {
     position: absolute;
     top: 25px;
     left: 25px;
     color: black;
     font-size: 1.2rem
 }

 .card .face.back-face .fa-quote-right {
     position: absolute;
     bottom: 35px;
     right: 25px;
     color: black;
     font-size: 1.2rem
 }

 .card:hover .face.back-face {
     transform: rotateY(360deg)
 }
  
 @media(max-width: 991.5px) {
     .col-lg-4 {
         margin-top: 40px;
         margin-bottom: 20px
     }
 }

</style>
</head>
<body>
    <div class="about-section">
        <div class="inner-container">
            <h1>About Us</h1>
            <p class="text">
                What started out as a primarily computer parts store, has 
                grown into one of the most trusted Electronic Accessories 
                eRetailer store found online.  A lot has changed since we 
                started our humble business over a decade ago for both us and the 
                consumer.Today we offer thousands of different electronic accessories 
                like smartphone, tablet, laptop, headphone, and more!
            </p>
      
        </div>
    </div>
    
    <div class="container p-5 mb-5">
    <div class="row">
        <div class="col-lg-3">
            <div class="card">
                <div class="face front-face"> <img src="resources/srushti.jpg" alt="" class="profile">
                    <div class="pt-3 text-uppercase name"> Srushti Gol</div>
                    <div class="designation">Web Developer</div>
                </div>
                <div class="face back-face"> <span class="fas fa-quote-left"></span>
                    <div class="testimonial"> I made bacck the purchase price in just 48 hours! Thank you for making it pain less, pleasant. The service was execellent. I will refer everyone I know. </div> <span class="fas fa-quote-right"></span>
                </div>
            </div>
        </div>
        <div class="col-lg-3">
            <div class="card">
                <div class="face front-face"> <img src="resources/hetvi.jpg" alt="" class="profile">
                    <div class="pt-3 text-uppercase name"> Hetvi Ladani </div>
                    <div class="designation">Web Developer</div>
                </div>
                <div class="face back-face"> <span class="fas fa-quote-left"></span>
                    <div class="testimonial"> Really good, you have saved our business! I made bacck the purchase price in just 48 hours! man, this thing is getting better and better as I learn more about it. </div> <span class="fas fa-quote-right"></span>
                </div>
            </div>
        </div>
    </div>
</div>

</body>
</html>

		



