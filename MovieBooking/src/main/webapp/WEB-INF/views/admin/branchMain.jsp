<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
	<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
	<meta charset="utf-8">
	<meta name="viewport" content="width=device-width, initial-scale=1.0">
	<meta name="description" content="">
	<meta name="author" content="Dashboard">
	<meta name="keyword" content="Dashboard, Bootstrap, Admin, Template, Theme, Responsive, Fluid, Retina">
	<title>Mega Box Admin - Branch Main</title>
	
	<!-- Bootstrap core CSS -->
	<link href="resources/assets/css/bootstrap.css" rel="stylesheet">
	<!--external css-->
	<link href="resources/assets/font-awesome/css/font-awesome.css" rel="stylesheet" />
	<link rel="stylesheet" type="text/css" href="resources/assets/css/zabuto_calendar.css">
	<link rel="stylesheet" type="text/css" href="resources/assets/js/gritter/css/jquery.gritter.css" />
	<link rel="stylesheet" type="text/css" href="resources/assets/lineicons/style.css">
	
	<!-- Custom styles for this template -->
	<link href="resources/assets/css/style.css" rel="stylesheet">
	<link href="resources/assets/css/style-responsive.css" rel="stylesheet">
	
	<script src="resources/assets/js/chart-master/Chart.js"></script>
	<!-- 지점별 영화매출 통계 -->
	<script src="https://code.highcharts.com/highcharts.js"></script>
	<script src="https://code.highcharts.com/modules/exporting.js"></script>
	
	<!-- HTML5 shim and Respond.js IE8 support of HTML5 elements and media queries -->
	<!--[if lt IE 9]>
		<script src="https://oss.maxcdn.com/libs/html5shiv/3.7.0/html5shiv.js"></script>
		<script src="https://oss.maxcdn.com/libs/respond.js/1.4.2/respond.min.js"></script>
	<![endif]-->
</head>
<body>

	<!-- 상단부분 import -->
	<%@include file="/WEB-INF/adminModule/header.jsp"%>
	
	<!--여기부터 사이드 바 -->
	<aside>
		<div id="sidebar" class="nav-collapse ">
			<ul class="sidebar-menu" id="nav-accordion">
				<p class="centered">
					<!-- 상단원형로고 -->
					<a href="branchMain">
						<img src="resources/assets/img/megaboxlogo.JPG" class="img-circle" width="60">
					</a>
				</p>
				<!-- 사이드 바 원형로고 아래 텍스트 -->
				<h5 class="centered">Mega Box Branch Page</h5>
				<!-- 사이드 바 메인 메뉴 -->
				<li class="mt">
					<a class="active" href="branchMain">
						<i class="fa fa-home"></i>
						<span>H O M E</span>
					</a>
				</li>
				
				<!-- 극장 사이드 메뉴 -->
				<li class="sub-menu">
					<a href="javascript:;">
						<i class="fa fa-film"></i>
						<span>상영관 관리</span>
					</a>
					<ul class="sub">
						<li>
							<a href="screenList">상영관 목록</a>
						</li>
						<li>
							<a href="screenInsert">상영관 등록</a>
						</li>
						<!-- 수정페이지는 목록에서 진입 -->
						<!-- <li>
							<a href="screenModify">상영관 수정</a>
						</li> -->
						<!-- <li>
							<a href="screenDelete">상영관 삭제</a>
						</li> -->
					</ul>
				</li>
				<!-- 상영일정 사이드 메뉴 -->
				<li class="sub-menu">
					<a href="javascript:;">
						<i class="fa fa-play-circle"></i>
						<span>상영일정 관리</span>
					</a>
					<ul class="sub">
						<li>
							<a href="screenScheduleList">상영일정 목록</a>
						</li>
						<li>
							<a href="screenScheduleInsert">상영일정 등록</a>
						</li>
						<!-- 수정페이지는 목록에서 진입 -->
						<!-- <li>
							<a href="screenScheduleModify">상영일정 수정</a>
						</li> -->
					</ul>
				</li>
			</ul>
		</div>
	</aside>
	<!--여기까지 사이드바-->
	<!--여기부터 메인-->
	<section id="main-content">
		<section class="wrapper">
			<div class="row">
				<!-- 페이지 강제 줄임 -->
				<div class="col-lg-9 main-chart" align="center"></div>
			</div>
			
			<!-- 메인 그래프 지점별 영화 매출-->
			<div id="branchGraph" style="min-width: 310px; height: 400px; margin: 0 auto"></div>
			<!-- 메인 그래프 지점별 영화 매출-->
			<br/>
			
			<!-- 월 매출 라인그래프 -->
			<div class="col-md-6 col-sm-4 mb">
				<div class="darkblue-panel pn">
					<div class="darkblue-header">
						<h5>월 매출</h5>
					</div>
					<div class="chart mt">
						<div class="sparkline" data-type="line" data-resize="true"
							data-height="75" data-width="90%" data-line-width="1"
							data-line-color="#fff" data-spot-color="#fff"
							data-fill-color="" data-highlight-line-color="#fff"
							data-spot-radius="4"
							data-data="[
								<c:forEach var="selectMonthBranchCount" items="${selectMonthBranchCount}" varStatus="status">
									${selectMonthBranchCount.brcCntSaleTotal}
									<c:if test="${not status.last}">,</c:if>
								</c:forEach>]">
						</div>
					</div>
					<div class="mt">
						<b>&#8361; ${selectBranchCount}</b>
						<br />월 매출액
					</div>
				</div>
			</div>
			<!-- 월 매출 라인그래프 -->
			
			<!-- 하단 우측 예매율 순위 차트 -->
			<div class="col-lg-6">
				<div class="panel panel-default">
					<div class="panel-heading">예매율 순위 (1위부터 4위까지)</div>
					<div class="panel-body">
						<table class="table table-striped table-hover ">
							<thead>
								<tr>
									<th>순위</th>
									<th>제목</th>
									<th>개봉일</th>
									<th>누적관객수(천명)</th>
								</tr>
							</thead>
							<tbody>
								<c:forEach var="clientCount" varStatus="status" items="${selectClientCount}">
									<tr>
										<td>${status.count}</td>
										<td>${clientCount.movKorName}</td>
										<td>${clientCount.movOpenDate}</td>
										<td>${clientCount.brcCntClientCount}</td>
									</tr>
								</c:forEach>
							</tbody>
						</table>
					</div>
				</div>
			</div>
		</section>
	</section>
	
	<!-- 여기까지 메인 -->
	
	<!-- 하단 -->
	<%@include file="/WEB-INF/adminModule/footer.jsp" %>
	
	<!-- 스크립트 -->
	<!-- js placed at the end of the document so the pages load faster -->
	<script src="resources/assets/js/jquery.js"></script>
	<script src="resources/assets/js/jquery-1.8.3.min.js"></script>
	<script src="resources/assets/js/bootstrap.min.js"></script>
	<script class="include" type="text/javascript" src="resources/assets/js/jquery.dcjqaccordion.2.7.js"></script>
	<script src="resources/assets/js/jquery.scrollTo.min.js"></script>
	<script src="resources/assets/js/jquery.nicescroll.js" type="text/javascript"></script>
	<script src="resources/assets/js/jquery.sparkline.js"></script>

	<!--common script for all pages-->
	<script src="resources/assets/js/common-scripts.js"></script>
	<script type="text/javascript" src="resources/assets/js/gritter/js/jquery.gritter.js"></script>
	<script type="text/javascript" src="resources/assets/js/gritter-conf.js"></script>

	<!--script for this page-->
	<script src="resources/assets/js/sparkline-chart.js"></script>
	<script src="resources/assets/js/zabuto_calendar.js"></script>
	<script type="application/javascript">
		/* $(document).ready(function () {
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
		} */
	</script>
	
	<script src="resources/adminjs"></script>
	<!-- 메인화면 상단 바 그래프 자바 스크립트 -->
	<script type="text/javascript">
	//표에 어떻게 뿌리는지 모르겠다..
	//배열 객체 생성
	var BranchrGraphList = new Array();												//지점 값 담을 객체 생성
	var MovieCodeGraphList = new Array();											//영화코드 값 담을 객체 생성
	
	//매출 탑 5지점
	<c:forEach	var = "selectBranchForBarGraph"
				items = "${selectBranchForBarGraph}">
				BranchrGraphList.push('${selectBranchForBarGraph.brcName}'),		//BranchrGraphList에 push메서드로 값 넣기
	</c:forEach>

	//매출 탑 3영화
	<c:forEach	var = "MovieCodeForCircleGraph"
				varStatus = "status"
				items = "${MovieCodeForCircleGraph}">
				MovieCodeGraphList.push('${MovieCodeForCircleGraph.movKorName}'),	//MovieCodeGraphList에 push메서드로 값 넣기
	</c:forEach>

	//log
	console.log(MovieCodeGraphList)
	console.log(BranchrGraphList)
	
	//여기부터 표 시작
	Highcharts
	.chart(
		'branchGraph', {
			title: {
				text: '지점별 영화 매출(단위 월)'			//상단 타이틀
			},
			xAxis: {
				categories: BranchrGraphList		//하단 지점 이름 상위 5개점
			},
			labels: {
				items: [{
					html: '총 영화 매출순위(단위 월)', 		//원 그래프 타이틀
					style: {
						left: '50px',
						top: '18px',
						color: (Highcharts.theme && Highcharts.theme.textColor) ||
							'black'
					}
				}]
			},
			series: [
				{
					type: 'column',					//첫번째 하늘색 바 내용
					name: MovieCodeGraphList[0],	//매출1위점 영화이름
					data: [3, 2, 1, 3, 4]			//각지점별 매출1위의 영화매출
				},
				{
					type: 'column',					//두번째 검은색 바 내용
					name: MovieCodeGraphList[1],	//매출2위점 영화이름
					data: [2, 3, 5, 7, 6]			//각지점별 매출2위의 영화매출
				},
				{
					type: 'column',					//세번째 초록색 바 내용
					name: MovieCodeGraphList[2],	//매출3위점 영화이름
					data: [4, 3, 3, 9, 1]			//각지점별 매출3위의 영화매출
				},
				{
					type: 'spline',					//평균치 곡선 그래프 내용
					name: 'Average',
					data: [3, 2.67, 3, 6.33, 3.33],
					marker: {
						lineWidth: 2,
						lineColor: Highcharts.getOptions().colors[3],
						fillColor: 'white'
					}
				},
				{
					type: 'pie', //원그래프 내용
					name: 'Total consumption',
					data: [{
						name: '조작된도시',
						y: 13,
						color: Highcharts
							.getOptions().colors[0]
						// 조작된도시 색상 하늘색
						},
						{
						name: '공조',
						y: 23,
						color: Highcharts
							.getOptions().colors[1]
						// 공조 색상 검은색
						},
						{
						name: '재심',
						y: 19,
						color: Highcharts
							.getOptions().colors[2]
						// 재심 색상 녹색
						}
					],
					center: [100, 80],
					size: 100,
					showInLegend: false,
					dataLabels: {
						enabled: false
					}
				}
			]
	});
	</script>
</body>
</html>