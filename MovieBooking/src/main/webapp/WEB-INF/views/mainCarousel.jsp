<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>

       <!-- jquery cdn -->
       <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.1.1/jquery.min.js"></script>

       <!-- bootstrap css -->
       <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
       <script src="resources/css/boot/carousel.js"></script>
       
  <style>
  .carousel-inner > .item > img,
  .carousel-inner > .item > a > img {
      width: 70%;
      margin: auto;
  }
  </style>       
       
</head>
<body>

<div>
  <div id="myCarousel" class="carousel slide" data-ride="carousel">
    <!-- Indicators -->
    <ol class="carousel-indicators">
      <li data-target="#myCarousel" data-slide-to="0" class="active"></li>
      <li data-target="#myCarousel" data-slide-to="1"></li>
      <li data-target="#myCarousel" data-slide-to="2"></li>
      <li data-target="#myCarousel" data-slide-to="3"></li>
    </ol>

    <!-- Wrapper for slides -->
    <div class="carousel-inner" role="listbox">

      <div class="item active">
        <img src="http://image2.megabox.co.kr/mop/home/ad/1600x600/170314_beast_1600x600.jpg" alt="Chania" style="height:600px;width:100%">
        <div class="carousel-caption">

        </div>
      </div>

      <div class="item">
        <img src="http://image2.megabox.co.kr/mop/home/ad/1600x600/170314_space_1600x600.jpg" alt="Chania" style="height:600px;width:100%">
        <div class="carousel-caption">

        </div>
      </div>

      <div class="item">
        <img src="http://image2.megabox.co.kr/mop/home/ad/1600x600/170207_bal_1600x600.jpg" alt="Flower" style="height:600px;width:100%">
        <div class="carousel-caption">

        </div>
      </div>

      <div class="item">
        <img src="http://image2.megabox.co.kr/mop/home/ad/1600x600/170207_lego_1600x600.jpg" alt="Flower" style="height:600px;width:100%">
        <div class="carousel-caption">

        </div>
      </div>

    </div>

    <!-- Left and right controls -->
    <a class="left carousel-control" href="#myCarousel" role="button" data-slide="prev">
      <span class="glyphicon glyphicon-chevron-left" aria-hidden="true"></span>
      <span class="sr-only">Previous</span>
    </a>
    <a class="right carousel-control" href="#myCarousel" role="button" data-slide="next">
      <span class="glyphicon glyphicon-chevron-right" aria-hidden="true"></span>
      <span class="sr-only">Next</span>
    </a>
  </div>
</div>


</body>
</html>