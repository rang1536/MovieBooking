<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>회원 약관(동의)</title>
<link rel="SHORTCUT ICON" href="resources/module-img/titleIcon.png">
 <style type="text/css">
                    div, input, label { font-size:12px; }															/* 폰트크기 조절 */
                    #div1, #div2, #div3, #div4, #div5, #div6, #div7, #div8, #div9{ width:970px; margin:12px; }		/* text틀 가로조정 */
                    #div1 {
                           height:150px;											/* 화면에 보여지는 text틀 세로조정 */
                           overflow:auto;											/* text 틀 스크롤바 */
                           border:1px solid black;									/* text 테이블 선 */
                           padding:10px;											/* 여백 공간 */
                    }               
                    #div2 {
                           height:150px;											/* 화면에 보여지는 text틀 세로조정 */
                           overflow:auto;											/* text 틀 스크롤바 */
                           border:1px solid black;									/* text 테이블 선 */
                           padding:10px;											/* 여백 공간 */
                    }
                     #div3 {
                           height:150px;											/* 화면에 보여지는 text틀 세로조정 */
                           overflow:auto;											/* text 틀 스크롤바 */
                           border:1px solid black;									/* text 테이블 선 */
                           padding:10px;											/* 여백 공간 */
                    }      
                    #div4 {
                           height:150px;											/* 화면에 보여지는 text틀 세로조정 */
                           overflow:scroll;											/* text 틀 스크롤바 */
                           border:1px solid black;									/* text 테이블 선 */
                           padding:10px;											/* 여백 공간 */
                    }                             
             </style>
</head>
<body>
	
<!-- 네비게이션 바 -->
<%@ include file="/WEB-INF/clientModule/topNavBar.jsp" %>

<!-- 전체메뉴 white-->
<%@ include file="/WEB-INF/clientModule/topTotalMenuBarWhite.jsp" %>

<!-- 영화 메뉴 바-->
<%@ include file="/WEB-INF/clientModule/topMovieBar.jsp" %>

 <!-- 회원약관시작 -->
 <div class="container" style="width:970px">
 <br>
       <h3>약관동의</h3>
		<h5>이용약관</h5>
     	  <form action="memberInsert" method="get" id="form1">
			<div id="div1" >
			
			<!-- 첫번째약관 시작-->
			<p>제1조. 목적</p>
			<p>이 약관은 메가박스(주)(이하 '회사'라 합니다)가 제공하는 온라인, 오프라인 서비스(이하 "서비스"라 합니다) 이용과 관련하여 회사와 이용자의 권리, 의무 및 책임사항을 규정함을 목적으로 합니다.</p><br/>
			
			<p>제 2조. 약관의 효력 및 변경</p>
			<p>이 약관은 서비스를 통하여 이를 공지함으로써 효력이 발생됩니다.
			회사는 사정상 중요한 사유가 발생될 경우 사전 고지 없이 이 약관의 내용을 변경할 수 있으며, 변경된 약관은 서비스를 통하여 공지합니다.
			회원은 변경된 약관에 동의하지 않을 경우 회원 탈퇴를 요청할 수 있으며, 변경된 약관의 효력 발생일 이후 해지 요청을 하지 않을 경우 약관의 변경 사항에 동의한 것으로 간주됩니다.</p><br/>
			
			<p>제3조. 약관 외 준칙</p>
			<p>본 약관에 명시되지 아니한 사항에 대해서는 전기통신기본법, 전기통신사업법, 정보통신망 이용촉진 및 정보보호 등에 관한 법률 및 기타 관련 법령의 규정에 따릅니다.</p><br/>
			
			<p>제 4조. 용어의 정의</p>
			<p>이 약관에서 사용하는 주요한 용어의 정의는 다음과 같습니다.
			"회원" : 이 약관을 인지하고, 회사에 개인정보를 제공하여 회원으로서 등록하여 이용자 아이디(ID)를 부여 받은 자로서, 회사의 정보를 지속적으로 제공 받으며, 회원혜택을 받는 분을 말합니다.
			"아이디" : 회원의 식별과 회원의 서비스 이용을 위하여 회원이 선정하고 회사가 승인하는 영문이나 숫자 혹은 그 조합을 말합니다(이하"ID"라 합니다).
			"비밀번호" : 회원이 부여 받은 ID와 일치된 회원임을 확인하고, 회원 자신의 비밀을 보호하기 위하여 회원이 정한 문자와 숫자의 조합을 말합니다.
			"서비스" : 회사가 회원을 위하여 유료 또는 무료로 제공하는 행위 또는 그 행위 대상인 유,무형의 물건 자체를 의미합니다.
			"이용중지" : 회사가 약관에 의거하여 회원의 서비스 이용을 제한하는 것을 말합니다.
			"해지" : 회사 또는 회원이 서비스 사용 후 이용계약을 해약하는 것을 말합니다.
			"휴면회원" : 메가박스 홈페이지에 최종 로그인 한 후 연속하여 12개월 간 로그인 기록이 없는 회원을 말합니다.</p><br/>
			
			<p>제 5조. 이용 계약의 성립</p>
			<p>서비스 가입 신청 시 본 약관을 읽고 "동의함" 버튼을 클릭하면 본 약관에 동의하는 것으로 간주됩니다.
			이용약관은 서비스 이용희망자의 이용약관 동의 후 이용 신청에 대하여 회사가 승낙함으로써 성립하며, 이용 신청 및 회사의 승낙에 대해서는 본 약관 제6조 및 제7조에서 규정된 바에 따릅니다.
			“정보통신망이용촉진및정보보호등에관한법률”상 만14세 미만의 아동은 온라인으로 타인에게 개인정보를 보내기 전에 반드시 개인정보의 수집 및 이용목적에 대하여 충분히 숙지하고 법정대리인(부모)의 동의를 받아야 합니다.</p><br/>
			
			<p>제6조. 이용신청</p>
			<p>회원으로 가입하여 서비스를 이용하기를 희망하는 자는 회사가 정한 소정 양식에 따라 요청하는 개인인적사항을 제공하여 이용신청을 합니다.</p><br/>
			
			<p>제 7조. 이용 신청의 승낙</p>
			<p>회사는 제 6 조에 따른 이용신청에 대하여 특별한 사정이 없는 한 접수 순서대로 이용 신청을 승낙합니다.
			회사는 다음 각 호에 해당하는 경우 이용신청에 대한 승낙을 제한할 수 있고, 그 사유가 해소될 때까지 승낙을 유보할 수 있습니다.</p>
			<p>1) 서비스 관련 설비에 여유가 없는 경우</p>
			<p>2) 기술상 지장이 있는 경우</p>
			<p>3) 기타 회사의 사정상 필요하다고 인정되는 경우</p>
			<p>-회사는 다음 각 호에 해당하는 사항을 인지하는 경우 동 이용계약 신청을 승낙하지 아니할 수 있습니다.</p>
			<p>1) 본인의 실명으로 신청하지 않은 경우</p>
			<p>2) 다른 사람의 명의를 사용하여 신청한 경우</p>
			<p>3) 이용 신청 시 필요 사항을 허위로 기재하여 신청한 경우</p>
			<p>4) 사회의 안녕과 질서 혹은 미풍양속을 저해할 목적으로 신청한 경우</p>
			<p>5) 기타 회사가 정한 이용 신청 요건이 미비 된 경우</p>
			<p>-제 2 항 또는 3 항에 의하여 이용신청의 승낙을 유보하거나 승낙하지 아니하는 경우, 회사는 이를 이용신청자에게 알려야 합니다. 다만, 회사의 귀책사유 없이 이용신청자에게 통지할 수 없는 경우는 예외로 합니다.</p><br/>
			</div>
			<!-- 첫번째 체크박스 -->
			<div id="#div5">
			<p>
				<input type="checkbox" id="c1" />
				<label for="c1"> 위의 ‘이용약관’을 읽고 동의 합니다. (필수 동의) </label>
			<p>				
			</div>
			<!-- 첫번째 약관 종료 -->
			
			<!-- 두번째약관 시작-->
			<h5>개인정보수집 및 이용안내</h5>
			 <div id="div2">
			 <p>메가박스(주)가 개인정보를 수집하는 목적은 보다 다양하고 원활한 고객서비스를 제공하기 위함입니다. 메가박스(주)는 최초 회원가입 시 개인정보의 수집항목 및 이용목적, 개인정보의 수집방법, 개인정보의 이용 및 보관기간을 안내 드리오니 자세히 읽은 후 동의하여 주시기 바랍니다.</p><br/>

			<p>1. 개인정보의 수집항목 및 이용목적</p>
			<p><필수입력사항></p>
				<p>- 성명, 아이디, 비밀번호, 휴대폰번호, 이메일, 생년월일, SMS/이메일 수신여부, 본인확인기관을 통해 받는 결과값(CI)</p>
				<p>- 14세미만 법정대리인의 이름 /휴대폰번호</p><br/>

			<p><선택입력항목></p>
				<p>- 거주지 주소, 선호극장, 프로필사진</p><br/>

			<p><서비스 이용 또는 사업처리 과정에서 생성 수집되는 각종 거래 및 개인 성향 정보></p>
				<p>- 서비스 이용기록, 접속로그, 쿠키, 접속IP정보, 결제기록, 단말기 제조사,모델명, OS버전정보 등</p><br/>

			<p><수집ᆞ이용목적></p>
				<p>- 회원 서비스 이용에 따른 본인 식별 및 실명 여부, 중복 가입 여부 확인</p>
				<p>- 만 14세 미만 아동에 개인정보 수집에 대한 법정대리인 동의 확인</p>
				<p>- 새로운 서비스 및 신상품이나 이벤트 정보 등의 안내</p>
				<p>- 마케팅, 홍보 등을 위한 고객분석, 편의성 제공, 공지사항 전달/불만 처리 등을 위한 원활한 의사소통 경로의 확보</p>
				<p>- 개인정보 침해 사고에 대한 대비, 분쟁 조정을 위한 기록보존</p>
				<p>- 상품 구매에 대한 결제, 신규 서비스 개발 및 맞춤 서비스 제공, 통계학적 특성에 따른 서비스 제공</p><br/>

			<p>2. 개인정보의 수집방법</p>
				<p>(1) 회사는 고객이 가입신청서 등 각종 서면을 작성하는 경우, 회사의 홈페이지에서 회원가입을 하는 경우, 특정
				서비스 화면상으로 동의한 경우, SNS(페이스북, 트위터 등), 전화(SMS, MMS를 포함), 우편, 이메일, 팩스, 기타 
				매체를 통하여 동의한 경우에 개인정보를 수집합니다.</p>

				<p>(2) 그 밖에 홈페이지, 이동전화, 인터넷상의 생성정보 수집 툴 등을 통하여 개인정보를 수집할 수 있습니다.</p><br/>

			<p>3. 개인정보의 이용·보관 기간</p>
				<p>메가박스(주)는 개인정보의 수집 및 제공 받은 목적이 달성되면 개인정보를 파기함을 원칙으로 합니다. 다만, 다음
				각 호의 경우 일정기간 동안 예외적으로 수집한 회원정보의 전부 또는 일부를 보관할 수 있습니다.
				무분별한 회원탈퇴와 재가입으로 인한 피해 최소화, 회원탈퇴 후 변심에 의한 민원처리 등을 처리하기 위하여
				회원탈퇴 후 30일간 회원정보 보유
				보유 기간을 미리 고지하고 별도의 동의를 받은 경우 해당 보유기간까지 보유</p>

				<p>‘상법’ 및 ‘전자상거래 등에서의 소비자보호에 관한 법률’ 등 관련 법령에 따라 일정기간 보유할 필요가 있는 경우
				관련 법령이 정한 기간에 따라 보유 </p>

				<p>- 계약 또는 청약철회 등에 관한 기록: 5년</p>
				<p>- 대금결제 및 재화 등의 공급에 관한 기록: 5년</p>
				<p>- 소비자의 불만 또는 분쟁 처리에 관한 기록: 3년</p>
				<p>- 게시판 이용자의 본인확인에 관한 기록: 6개월</p>
             </div>
            <!-- 두번째 체크박스 -->
			<div id="div5">
			<p>
				<input type="checkbox" id="c2" />
				<label for="c2"> 위의 ‘개인정보수집 및 이용안내’를 읽고 동의 합니다.(필수 동의) </label>
			<p>	
			</div>
			<!-- 두번째약관종료 -->
			
			<!-- 세번째약관 시작 -->
			<h5>제휴 모바일 멤버십 서비스 이용을 위한 제 3자 제공에 관한 안내</h5>	  
			<div id="div3">
				<p>1. 회사는 고객의 요청에 의하여 해당 고객의 개인정보를 제 3자에게 제공하는 경우, 그 제공하는 목적, 제공하는 개인정보의 항목, 개인정보를 제공받는 자 및 그 보유 • 이용기간은 다음 표와 같습니다.</p>
				<p>2. 메가박스와 관련한 제휴 계약 등을 신규 체결 또는 상기 기재된 개인정보 제공업체와의 기존 계약을 해지할 수 있으며, 그 경우 개인정보를 제공받는 업체에 변경이 생길 수 있습니다. 변경사항은 발생 시 홈페이지를 통해 고지하거나 동의를 구한 후 업체에게 제공됩니다.</p>
				<p>3. 회원은 제휴업체에 대한 정보 제공 철회(제휴업체 이용약관 동의 철회)를 원하시는 경우 각 제휴업체에 방문하여 이용약관 철회 및 정보 제공 철회를 직접 진행해주셔야 합니다.</p>
				<p>4. 제공받는 업체 모두에게 개인정보가 제공되지 않으며 회원님의 추가 동의 및 요청에 따라 정보가 해당 업체에 제공됩니다.</p>
			</div>
			<!-- 세번째 체크박스 -->
			<div id="div5">
			<p>
				<input type="checkbox" id="c3" />
				<label for="c3">위의 '제휴 모바일 멤버십 서비스 이용을 위한 제3자 제공에 대한 안내'를 읽고 동의 합니다. (필수 동의)</label>
			<p>	
			</div>
			<!-- 세번째 약관 종료 -->
			
			<!-- 네번째 약관 시작-->
			<h5>마케팅 활용을 위한 개인정보 수집 이용 안내</h5>
			<div id="div4">
				<P>개인정보취급방침<P>
				
				<P>디제로킹다이어트 (이하 “회사”)는 고객의 개인정보를 소중히 다루고 있으며, 『정보통신망이용 촉진 및 정보 보호 등에 관한 법률 』 상의 개인정보보호 규정 및 정보통신부가 제정한 『 개인정보보호 및 취급방침』을 준수하고 있습니다. 회사는 개인정보취급방침을 통해 아래와 같이 이벤트 참여시 제공해주시는 개인정보의 수집 및 이용목적과 개인정보보호를 위한 회사의 조치 사항을 고지합니다.<P>
				
				<P>1. 개인정보 수집·이용·제공 등 에 대한 동의<P>
				<P>회사는 고객께서 회사가 제공하는 이벤트 참여시 이벤트 페이지에 개인정보취급방침 내용에 대하여 동의 여부를 선택할 수 있는 절차를 마련하였으며, 귀하가 제공한 정보는 개인정보취급방침에 명시된 내용 이외의 목적으로는 사용되지 아니합니다.<P>
				
				<P>2. 수집하는 개인정보의 범위 및 수집방법<P>
				<P>회사에서는 귀하의 이벤트 참여와 경품수령 및 불편사항처리 등을 위한 필수적인 정보를 입력 받고 있습니다.<P>
				<P>- 이벤트 참여시 받는 필수 정보 : <P>
				<P>- 이벤트 참여시 선택적으로 받을 수 있는 정보 : <P>
				<P>- 서비스 이용과정이나 처리 과정에서 자동으로 생성되어 수집될 수 있는 정보 : IP Address, 참여일시, 유입경로(참여매체)<P>
				
				<P>3. 개인정보의 수집 및 이용목적<P>
				<P>이벤트 참여시 입력하신 정보는 이벤트 참여확인, 당첨자 발표 및 안내, 고지사항 전달, 불편사항처리 등을 위한 원활한 의사소통 경로의 확보, 이벤트 경품 제공, 개인별 맞춤 서비스 제공, 새로운 이벤트 안내(이메일, 전화, MMS 등) 아래 명기한 제3자에게 제공되어 상품안내를 위한 마케팅 자료(전화, 이메일, MMS 등)로 활용 됩니다.<P>
			</div>
			
			<!-- 네번째 체크박스 -->
			<div id="div5">
			<p>
				<input type="checkbox" id="c4" />
				<label for="c4">위, 내용을 읽고 '마케팅 활용을 위한 개인정보 수집 이용 안내'에 동의합니다. (필수 동의)</label>
    		</p>
			</div>
            <!-- 네번째 약관 종료 -->
             
            <!--  약관전체동의 checkbox -->
            <div id="div6">
             <p>
				<input type="checkbox" id="all" name="all"/>
				<label for="all" style="color: red"> 위의 모든 약관을 읽고 동의 합니다. (전체동의 체크 필수) </label>
    		</p>
			</div>
			
             <!-- 동의 취소 submit -->
            <div align="right">
				<input class="btn blue darken-4" type="submit" value="확인"/>
				<a href="movieMain">
				<input class="btn white" style="color:black" type="button" value="취소"/></a>
			</div>
      	 </form>
	</div>
	
	
    <!--  약관 전체 동의 checkbox 처리 및 alert 설정 스크랩트 -->
	<script>
	var doc = document; 
	var form1 = doc.getElementById('form1'); 
	var inputs = form1.getElementsByTagName('INPUT'); 
	var form1_data = {
		"c1": false, 
		"c2": false, 
		"c3": false,
		"c4": false
	}; 
	var c1 = doc.getElementById('c1'); 
	var c2 = doc.getElementById('c2'); 
	var c3 = doc.getElementById('c3'); 
	var c4 = doc.getElementById('c4'); 
	function checkboxListener() {
		form1_data[this.name] = this.checked; 
		if(this.checked) {
			// submit 할때 체크하지 않아 색이 변한 font 를 다시 원래 색으로 바꾸는 부분. 
			this.parentNode.style.color = "#000"; //검정색
		}
	}
		c1.onclick = c2.onclick = c3.onclick = checkboxListener; 
		var all = doc.getElementById('all'); 
		all.onclick = function() {
			if (this.checked) {
				setCheckbox(form1_data, true); 
			} else {
				setCheckbox(form1_data, false); 
			}
		}; 
		function setCheckbox(obj, state) {
			for (var x in obj) {
				obj[x] = state; 
				for(var i = 0; i < inputs.length; i++) {
					if(inputs[i].type == "checkbox") {
						inputs[i].checked = state; 
					}
				}
			}
		}
		
	form1.onsubmit = function(e) {
		e.preventDefault(); 
		if ( !form1_data['c1'] ) {
			alert('아래 전체 동의 체크를 하셔야합니다.'); 
			return false; 
		}

	
		if ( !form1_data['c2'] ) {
			alert('개인정보 수집 및 이용에 대한 안내를 선택하지 않았습니다.'); 
				return false; 
		}
		this.submit(); 
	}; 
	</script>

<!-- 하단바 -->
<%@ include file="/WEB-INF/clientModule/footer.jsp" %>

</body>
</html>