<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>인물 상세페이지</title>
<link rel="SHORTCUT ICON" href="resources/module-img/titleIcon.png">
</head>
<body>

<!-- 네비게이션 바 -->
<%@ include file="/WEB-INF/clientModule/topNavBar.jsp" %>

<!-- 전체메뉴 white-->
<%@ include file="/WEB-INF/clientModule/topTotalMenuBarWhite.jsp" %>

<!-- 영화 메뉴 바-->
<%@ include file="/WEB-INF/clientModule/topMovieBar.jsp" %>



    <!-- 메인 -->

    <div class="row container" style="width:970px ; text-align:center; ">
      <div class="col s12" style="text-align:left;">
        <div class="card">

          <!-- 영화 상세 내용 영역 -->
          <div class="card-content">
            <div class="row">

              <!-- 이미지 -->
              <div class="col s3">
                <img class="materialboxed responsive-img" style="display:block ;"src="${charInfo.charImgPath}">
              </div>


              <!-- 상세설명 -->
              <div class="col s9">
                <h2>${charInfo.charKorName}</h2>
                <span class="col s12" style="color:#8C8C8C;">
                  <sapn style="position:relative ; top:10px;">${charInfo.charEngName}</span>
                  <div style="height:30px;"></div><!-- 간격 -->
                </span>
                <div class="divider"></div>
                <div><b>출생 : </b> <span>${charInfo.charBirth}</span></div>
                <div><b>국적 : </b> <span>${charInfo.charNation}</span></div>
                <!-- 간격 --><div style="height:200px"></div>
              </div>

              <!-- 바이오그래피 -->
              <div class="col s12" style="font-size:12px ; color:#4C4C4C;">
                <h3>바이오그래피</h3>
                <pre>${charInfo.charBioGraphy}</pre>
                  <!-- 간격 --><div style="height:50px"></div>
              </div>





              <!-- 필모그래피 -->
              <div class="col s12">
                <h3>필모그래피</h3>
                <div class="row">
					<c:forEach var="filmo" items="${filmoList}"> 
	                  <div class="col s3">
	                    <div>
	                    	<a href="clientMovieDetail?movCode=${filmo.movCode}">
	                    		<img class = "responsive-img" src="${filmo.movImgPath}">
	                    	</a>
	                    </div>
	                    <div style="text-align:center">${filmo.movKorName}</div>
	                  </div>
					</c:forEach>
                </div>
              </div>



            </div>
          </div>






        </div>
      </div>
    </div> <!-- 메인 div -->




<!-- 하단바 -->
<%@ include file="/WEB-INF/clientModule/footer.jsp" %>

</body>
</html>