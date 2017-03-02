<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c"  uri="http://java.sun.com/jsp/jstl/core" %>        
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>박스오피스</title>
<link rel="SHORTCUT ICON" href="resources/module-img/titleIcon.png">
</head>
<body>

<!-- 네비게이션 바 -->
<%@ include file="/WEB-INF/clientModule/topNavBar.jsp" %>

<!-- 전체메뉴 white-->
<%@ include file="/WEB-INF/clientModule/topTotalMenuBarWhite.jsp" %>

<!-- 영화 메뉴 바-->
<%@ include file="/WEB-INF/clientModule/topMovieBar.jsp" %>

        <!-- 플립 스크립트 -->
        <script>
        
          $(document).ready(function(){
              $('.test1').hover(function(){               
              	$(this).shape({duration:550}).shape('flip over');                       
              },function(){               
              	$(this).shape('flip back');           
              });
          });

        </script>

   <!-- 메인 -->
  <br>

    <div class="container" style="width:970px"> <!-- 메인컨테이너 시작 -->
      <div class="row"> <!-- 메인row 시작 -->
      
      
      	<c:forEach var="map" items="${boxList}" varStatus="status"> 
	        <div class="col s3">
	          <div class="card">
	          
	            <!-- 카드 이미지 영역 -->
	            <div class="card-image">
	              <div class="ui shape test1">
	                <div class="sides">
	                
	                  <!-- 카드 앞면 -->
	                  <div class="active side">
	                    <img style="max-height:300px;"src="${map.movImgPath}">
	                  </div>
	                  
	                  <!-- 카드 뒷면 -->
	                  <div class="side black">
	                    <img style="opacity: 0.3; max-height:300px;" src="${map.movImgPath}">
	  
	                    <span class="card-title">
	
	                    </span>
	                  </div>
	                  
	                </div>
	              </div>
	            </div>
	            
	            <!-- 카드 컨텐츠 영역 -->
	            <div>
	              	<div style="text-align:center; position:relative;top:10px;right:10px;">
	              		  <div style="color:#757575; display:inline-block">평점 ${map.grade}</div>
	                      <div class="ui large star rating" data-rating="${map.starGrade}" data-max-rating="5"></div>
	                      <script>
	                        $('.ui.rating')
	                        .rating()
	                        ;
	                      </script>
	              	</div>
	            </div>            
	            <div class="card-content">
	              	<div style="color:#424242;font-size:18px;">
	              		<i class="grade16_${map.movGrade}" style="position:relative;top:2px;"></i>
	              		<b>${map.movKorName}</b>
	              	</div>
	            </div>
	            
	          </div>
	        </div>
		   
		</c:forEach>

      </div> <!-- row 끝 -->
    </div> <!-- container 끝 -->


<!-- 하단바 -->
<%@ include file="/WEB-INF/clientModule/footer.jsp" %>

</body>
</html>