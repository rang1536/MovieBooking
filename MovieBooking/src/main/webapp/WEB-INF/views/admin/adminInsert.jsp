<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<meta name="description" content="">
<meta name="author" content="Dashboard">
<meta name="keyword" content="Dashboard, Bootstrap, Admin, Template, Theme, Responsive, Fluid, Retina">
<title>Mega Box Admin - Admin Add</title>

<!-- Bootstrap core CSS -->
<link href="assets/css/bootstrap.css" rel="stylesheet">
<!--external css-->
<link href="assets/font-awesome/css/font-awesome.css" rel="stylesheet" />
<link rel="stylesheet" type="text/css" href="assets/css/zabuto_calendar.css">
<link rel="stylesheet" type="text/css" href="assets/js/gritter/css/jquery.gritter.css" />
<link rel="stylesheet" type="text/css" href="assets/lineicons/style.css">

<!-- Custom styles for this template -->
<link href="assets/css/style.css" rel="stylesheet">
<link href="assets/css/style-responsive.css" rel="stylesheet">

<script src="assets/js/chart-master/Chart.js"></script>

<!-- HTML5 shim and Respond.js IE8 support of HTML5 elements and media queries -->
<!--[if lt IE 9]>
	<script src="https://oss.maxcdn.com/libs/html5shiv/3.7.0/html5shiv.js"></script>
	<script src="https://oss.maxcdn.com/libs/respond.js/1.4.2/respond.min.js"></script>
<![endif]-->
</head>
<body>
<%@include file="/WEB-INF/adminModule/header.jsp"%>
	<!-- 여기부터 사이드바 -->
	<aside>
		<div id="sidebar" class="nav-collapse ">
			<ul class="sidebar-menu" id="nav-accordion">
				<p class="centered">
					<a href="main.html">
						<img src="assets/img/megaboxlogo.JPG" class="img-circle" width="60">
					</a>
				</p>
				<h5 class="centered">Mega Box Admin Page</h5>
				<li class="mt">
					<a href="main.html">
						<i class="fa fa-home"></i>
						<!-- 아이콘 수정 -->
						<span>H O M E</span>
					</a>
				</li>
				<!-- 지점 -->
				<li class="sub-menu">
					<a class="active" href="javascript:;">
						<i class="fa fa-desktop"></i>
						<span>지점/관리자 관리</span>
					</a>
					<ul class="sub">
						<li><a href="branchList.html">지점 목록</a></li>
						<li><a href="branchInsert.html">지점 등록</a></li>
						<li><a href="branchModify.html">지점 수정</a></li>
						<li><a href="branchDelete.html">지점 탈퇴</a></li>
						<li><a href="adminList.html">지점 관리자 목록</a></li>
						<li class="active"><a href="adminInsert.html">지점 관리자 등록</a></li>
						<li><a href="adminModify.html">지점 관리자 수정</a></li>
						<li><a href="adminDelete.html">지점 관리자 삭제</a></li>
					</ul>
				</li>
				<!-- 회원 -->
				<li class="sub-menu">
					<a href="javascript:;">
						<i class="fa fa-list"></i>
						<span>회원 관리</span>
					</a>
					<ul class="sub">
						<li>
							<a href="memberList.html">회원 목록</a>
						</li>
					</ul>
				</li>
				<!-- 영화 -->
				<li class="sub-menu">
					<a href="javascript:;">
						<i class="fa fa-tasks"></i>
						<span>영화 관리</span>
					</a>
					<ul class="sub">
						<li>
							<a href="movieInsert.html">영화 등록</a>
						</li>
						<li>
							<a href="adminMovieLlist.html">영화 목록</a>
						</li>
					</ul>
				</li>
				<!-- 인물 -->
				<li class="sub-menu">
					<a href="javascript:;">
						<i class="fa fa-user"></i>
						<span>인물 관리</span>
					</a>
					<ul class="sub">
						<li>
							<a href="characterInsert.html">인물정보 등록</a>
						</li>
						<li>
							<a href="characterList.html">인물 목록</a>
						</li>
					</ul>
				</li>
				<!-- 극장 -->
				<li class="sub-menu">
					<a href="javascript:;">
						<i class="fa fa-film"></i>
						<span>상영관 관리</span>
					</a>
					<ul class="sub">
						<li>
							<a href="screenInsert.html">상영관 등록</a>
						</li>
						<li>
							<a href="screenList.html">상영관 목록</a>
						</li>
					</ul>
				</li>
				<!-- 상영일정 -->
				<li class="sub-menu">
					<a href="javascript:;">
						<i class="fa fa-play-circle"></i>
						<span>상영일정 관리</span>
					</a>
					<ul class="sub">
						<li>
							<a href="screenScheduleInsert.html">상영일정 등록</a>
						</li>
						<li>
							<a href="screenScheduleList.html">상영 목록</a>
						</li>
					</ul>
				</li>
				<!-- 통계 -->
				<li class="sub-menu"><a href="javascript:;">
					<i class=" fa fa-bar-chart-o"></i>
					<span>통계 관리</span>
				</a>
					<ul class="sub">
						<li>
							<a href="#">영화별 예매/매출 </a>
						</li>
						<li>
							<a href="#">지점별 예매/매출 </a>
						</li>
						<li>
							<a href="#">날짜별 예매/매출 </a>
						</li>
					</ul>
				</li>
			</ul>
		</div>
	</aside>
	<!--여기까지 사이드바-->
	<!-- 여기부터 메인 -->
	<section id="main-content">
		<section class="wrapper">
			<div class="row">
				<!-- 페이지 강제 줄임 -->
				<div class="col-lg-9 main-chart" align="center"></div>
			</div>
			<div class="container" style="margin: 0 auto;">
				<div class="jumbotron">
					<h2 class="logo">지점 관리자 등록</h2>
				</div>
				<div class="col-lg-3"></div>
				<div class="col-lg-6" style="float: left: ;">
					<form class="form-horizontal">
						<fieldset>
							<legend>기입사항</legend>
							<!-- 아이디 -->
							<div class="row form-group">
								<label for="adminId" class="col-lg-2 control-label">ID</label>
								<div class="col-lg-8">
									<input type="text" class="form-control" id="adminId" placeholder="관리자 ID를 입력하세요" required="required">
								</div>
								<!-- ID중복조회 -->
								<div class="col-lg-2">
									<input type="button" class="btn btn-primary" value="ID조회">
								</div>
							</div>
							<!-- 비밀번호 -->
							<div class="form-group">
								<label class="col-lg-2 control-label">Password</label>
								<div class="col-lg-8">
									<input type="password" class="form-control" id="adminPw" placeholder="관리자 Password를 입력하세요" required="required">
								</div>
							</div>
							<!-- 지점명 -->
							<div class="form-group">
								<label for="select" class="col-lg-2 control-label">지점명</label>
								<div class="col-lg-10">
									<select class="form-control" id="select">
										<option>센트럴시티점</option>
										<option>강남점</option>
										<option>서면점</option>
										<option>수성점</option>
										<option>효자점</option>
									</select>
								</div>
							</div>
							<!-- 등록버튼 -->
							<div class="form-group">
								<label class="col-lg-2 control-label"></label>
								<div class="col-lg-8"></div>
								<div>
									<input type="submit" class="btn btn-primary" value="등록">
								</div>
							</div>
						</fieldset>
					</form>
				</div>
			</div>
		</section>
	</section>
	<!-- 여기까지 메인 -->
<%@include file="/WEB-INF/adminModule/footer.jsp" %>
	<!-- 스크립트/제이쿼리 -->
	<!-- js placed at the end of the document so the pages load faster -->
	<script src="assets/js/jquery.js"></script>
	<script src="assets/js/jquery-1.8.3.min.js"></script>
	<script src="assets/js/bootstrap.min.js"></script>
	<script class="include" type="text/javascript" src="assets/js/jquery.dcjqaccordion.2.7.js"></script>
	<script src="assets/js/jquery.scrollTo.min.js"></script>
	<script src="assets/js/jquery.nicescroll.js" type="text/javascript"></script>
	<script src="assets/js/jquery.sparkline.js"></script>

	<!--common script for all pages-->
	<script src="assets/js/common-scripts.js"></script>
	<script type="text/javascript" src="assets/js/gritter/js/jquery.gritter.js"></script>
	<script type="text/javascript" src="assets/js/gritter-conf.js"></script>

	<!--script for this page-->
	<script src="assets/js/sparkline-chart.js"></script>
	<script src="assets/js/zabuto_calendar.js"></script>
	
	<script type="application/javascript">
		$(document).ready(function () {
			$("#date-popover").popover({html: true, trigger: "manual"});
			$("#date-popover").hide();
			$("#date-popover").click(function (e) {
				$(this).hide();
			});

            $("#my-calendar").zabuto_calendar({
				action: function () {
					return myDateFunction(this.id, false);
				},
				action_nav: function () {
					return myNavFunction(this.id);
				},
				ajax: {
					url: "show_data.php?action=1",
					modal: true
				},
				legend: [
					{type: "text", label: "Special event", badge: "00"},
					{type: "block", label: "Regular event", }
				]
			});
		});


		function myNavFunction(id) {
			$("#date-popover").hide();
			var nav = $("#" + id).data("navigation");
			var to = $("#" + id).data("to");
			console.log('nav ' + nav + ' to: ' + to.month + '/' + to.year);
		}
    </script>
    <!-- 원그래프  -->
    <script type="text/javascript">
		Highcharts
				.chart(
						'branchGraph',
						{
							title : {
								text : '지점별 영화 매출(단위 월)'	//상단 타이틀
							},
							xAxis : {
								categories : [ '강남점', '부산서면점', '창원점', '전주송천점', '전주효자점' ] //하단 지점 이름
							},
							labels : {
								items : [ {
									html : '총 영화 매출순위(단위 월)', //원 그래프 타이틀
									style : {
										left : '50px',
										top : '18px',
										color : (Highcharts.theme && Highcharts.theme.textColor)
												|| 'black'
									}
								} ]
							},
							series : [
									{
										type : 'column', //첫번째 바 내용
										name : '조작된도시',
										data : [ 3, 2, 1, 3, 4 ]
									},
									{
										type : 'column', //두번째 바 내용
										name : '공조',
										data : [ 2, 3, 5, 7, 6 ]
									},
									{
										type : 'column', //세번째 바 내용
										name : '재심',
										data : [ 4, 3, 3, 9, 1 ]
									},
									{
										type : 'spline', //평균치 곡선 그래프 내용
										name : 'Average',
										data : [ 3, 2.67, 3, 6.33, 3.33 ],
										marker : {
											lineWidth : 2,
											lineColor : Highcharts.getOptions().colors[3],
											fillColor : 'white'
										}
									},
									{
										type : 'pie', //원그래프 내용
										name : 'Total consumption',
										data : [
												{
													name : '조작된도시',
													y : 13,
													color : Highcharts
															.getOptions().colors[0]
												// 조작된도시 색상 하늘색
												},
												{
													name : '공조',
													y : 23,
													color : Highcharts
															.getOptions().colors[1]
												// 공조 색상 검은색
												},
												{
													name : '재심',
													y : 19,
													color : Highcharts
															.getOptions().colors[2]
												// 재심 색상 녹색
												} ],
										center : [ 100, 80 ],
										size : 100,
										showInLegend : false,
										dataLabels : {
											enabled : false
										}
									} ]
						});
	</script>
</body>
</html>