<%@ include file="header.jsp"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
<style>
body{
background-image:url('https://wallpaperclicker.com/storage/wallpaper/Red-Background-88480120.jpg');
background-color:#C0C0C0;
}
</style>
</head>
<body>
<div class="container-fluid">  
  <div id="myCarousel" class="carousel slide" data-ride="carousel">
    <!-- Indicators -->
    <ol class="carousel-indicators">
      <li data-target="#myCarousel" data-slide-to="0" class="active"></li>
      <li data-target="#myCarousel" data-slide-to="1"></li>
      <li data-target="#myCarousel" data-slide-to="2"></li>
<li data-target="#myCarousel" data-slide-to="3" ></li>
</ol>

    <!-- Wrapper for slides-->
    <div class="carousel-inner">
      <div class="item active">
      <c:url value="resources\images\home\p2.jpg" var="img1"></c:url>
        <img src="${img1 }"  style="width:100%">
         <div class="container">
                        <div class="carousel-caption">
                            <h1>LapStore</h1>
                            <p>online shopping can make your life more easier</p>
                        </div>
                    </div>
               </div>

      <div class="item">
      <c:url value="resources\images\home\p3.jpg" var="img2"></c:url>
        <img src="${img2 }"  style="width:100%">
          <div class="container">
                        <div class="carousel-caption">
                            <h1>Technology at your door step</h1>
                            <p>Live Freely,Work Happily!!</p>
                        </div>
                    </div>
      </div>
    <div class="item">
      <c:url value="resources\images\home\p4.jpg" var="img3"></c:url>
        <img src="${img3 }"  style="width:100%">
        <div class="container">
                        <div class="carousel-caption">
                            <h1>Shopping Simplified!</h1>
                            <p>your life,your choice...you own it!!</p>
                        </div>
                    </div>
                </div>
       
      <div class="item">
      <c:url value="resources\images\home\p5.jpg" var="img4"></c:url>
        <img src="${img4 }"  style="width:100%">
      <div class="container">
                        <div class="carousel-caption">
                            <h1>Be Updated!</h1>
                            <p>Best Destination To Shop for New Arrivals!!</p>
                        </div>
                    </div>
                </div>
      
      </div>
    </div>

    <!-- Left and right controls -->
    <a class="left carousel-control" href="#myCarousel" data-slide="prev">
      <span class="glyphicon glyphicon-chevron-left"></span>
      <span class="sr-only">Previous</span>
    </a>
    <a class="right carousel-control" href="#myCarousel" data-slide="next">
      <span class="glyphicon glyphicon-chevron-right"></span>
      <span class="sr-only">Next</span>
    </a>
  </div>
</div>

<div class="container-fluid">
  <h2 align="center">BRANDS WE SELL</h2>
  <div class="row">
    <div class="col-md-4">
      <div class="thumbnail">
      <c:url value="resources\images\home\apple.jpg" var="img7"></c:url>
        <a href="apple" target="_blank">
          <img src="${img7 }" alt="Apple" style="width:100% height:100%">
          <div class="caption">
           <h3> APPLE.</h3>
          </div>
        </a>
      </div>
    </div>
    <div class="col-md-4">
      <div class="thumbnail">
      <c:url value="resources\images\home\dell.png" var="img8"></c:url>
       
<a href="dell" target="_blank">

          <img src="${img8 }" alt="DELL" style="width:100% height:100%">
          <div class="caption">
           <h3>DELL</h3>
          
          </div>
       </a>
      </div>
    </div>
    <div class="col-md-4">
      <div class="thumbnail">
      <c:url value="resources\images\home\hp.jpg" var="img9"></c:url>
        <a href="hp" target="_blank">
          <img src="${img9 }" alt="HP" style="width:100% height:100%">
          <div class="caption">
            <h3>HP.</h3>
          </div>
        </a>
      </div>
    </div>
    <br><br><br><br><br>
    <div class="col-md-4">
      <div class="thumbnail">
      <c:url value="resources\images\home\acer.jpg" var="img10"></c:url>
        <a href="acer" target="_blank">
          <img src="${img10 }" alt="Acer" style="width:100% height:100%">
          <div class="caption">
            <h3>ACER.</h3>
          </div>
        </a>
      </div>
    </div>
    <div class="col-md-4">
      <div class="thumbnail">
      <c:url value="resources\images\home\hcl.png" var="img11"></c:url>
        <a href="hcl" target="_blank">
          <img src="${img11 }" alt="hcl" style="width:100% height:100%">
          <div class="caption">
            <h3>HCL.</h3>
          </div>
        </a>
      </div>
    </div>
    <div class="col-md-4">
      <div class="thumbnail">
      <c:url value="resources\images\home\lenovo.jpg" var="img12"></c:url>
        <a href="lenovo" target="_blank">
          <img src="${img12 }" alt="lenovo" style="width:100% height:100%">
          <div class="caption">
            <h3>LENOVO.</h3>
           
          </div>
        </a>
      </div>
    </div>
    </div>
</div>

</body>
<br><br><br>
</html>
<%@ include file="footer.jsp"%>