<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://www.springframework.org/security/tags" prefix="sec" %>
<%@ include file="../includes/header2.jsp"%>
<link rel="stylesheet"
	href="https://fonts.googleapis.com/css?family=Open+Sans:300,400,600,700">
<!-- Google web font "Open Sans" -->
<link rel="stylesheet"
	href="../resources/font-awesome-4.7.0/css/font-awesome.min.css">
<!-- Font Awesome -->
<link rel="stylesheet" href="../resources/css/bootstrap.min.css">
<!-- Bootstrap style -->
<link rel="stylesheet" type="text/css"
	href="../resources/css/datepicker.css" />
<link rel="stylesheet" type="text/css"
	href="../resources/slick/slick.css" />
<link rel="stylesheet" type="text/css"
	href="../resources/slick/slick-theme.css" />
<link rel="stylesheet" href="../resources/css/templatemo-style.css">
<!-- Templatemo style -->

<script src="../resources/js/vendor/modernizr.custom.min.js"></script>
<link rel="stylesheet" href="../resources/css/normalize.css">

<script type="text/javascript" src="https://cdn.jsdelivr.net/jquery/latest/jquery.min.js"></script>
<script type="text/javascript" src="https://cdn.jsdelivr.net/momentjs/latest/moment.min.js"></script> 
<script type="text/javascript" src="https://cdn.jsdelivr.net/npm/daterangepicker/daterangepicker.min.js"></script> 
<link rel="stylesheet" type="text/css" href="https://cdn.jsdelivr.net/npm/daterangepicker/daterangepicker.css" />
<script>
	var $jLatest = jQuery.noConflict();
</script>

<!-- Font Awesome 5 -->
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.8.2/css/all.min.css"/>

<style>
#searchTable th {
    text-align: center;
    top: 0px;
    background-color: #FFC107 !important;
}
td {
	text-align: center;
}
</style>

<link rel="stylesheet" href="//code.jquery.com/ui/1.12.1/themes/base/jquery-ui.css">
<script src="https://code.jquery.com/jquery-1.12.4.js"></script>
<script src="https://code.jquery.com/ui/1.12.1/jquery-ui.js"></script>
<script>
  var $jb = jQuery.noConflict();
</script>

<div class="tm-page-wrap mx-auto" style="margin-top : 180px;">
   
	<section class="p-5 tm-container-outer tm-bg-gray">
	<h2>출도착 조회</h2>
		<div class="container">
		
			<form action="/flight/flightDepArrSearch" method="get" class="tm-search-form tm-section-pad-1">
				<ul class="list_type3 border">
					<li>-아시아나 운항 항공편에 한하여 조회가 가능합니다.</li> 
					<li>-공동 운항편 또는 외항사의 출도착 정보는 해당 항공사 홈페이지에서 조회하시기 바랍니다.</li>
					<li>-출/도착 일자 및 시간은 현지 시간 기준입니다.</li>
				</ul>
				<button type="button" class="btn btn-primary tm-btn tm-btn-search text-uppercase" id="route" style="width: 100px;">노선</button> 
				<button type="button" class="btn btn-primary tm-btn tm-btn-search text-uppercase" id="fName" style="width: 100px;">편명</button>
				<br><br>
				<p>검색창에서 아래 방향키를 눌러, 취항지를 확인할 수 있습니다.</p>
				<div class="form-row tm-search-form-row" id="searchText">
					<c:if test="${empty flightName}">
						<%-- <div class="form-group tm-form-group tm-form-group-pad tm-form-group-2">
							<label for="dep">출발지</label> 
							<input name="dep" type="text" class="form-control" id="departure" placeholder="출발지를 입력해주세요" value = "${dep}" required="required">
						</div>
						
						<div class="form-group tm-form-group tm-form-group-pad tm-form-group-2">
							<label for="arr">도착지</label> 
							<input name="arr" type="text" class="form-control" id="arrival" placeholder="도착지를 입력해주세요" value = "${arr}" required="required">
						</div> --%>
						<div class="form-group tm-form-group tm-form-group-pad tm-form-group-2">
							<label for="dep">출발지</label> 
						</div>
						<div class="form-group tm-form-group tm-form-group-pad tm-form-group-2">
							<label for="arr">도착지</label> 
						</div>
						
						<div class="form-group tm-form-group tm-form-group-pad tm-form-group-2" >
							<select id="depRegionCode" name="depRegionCode">
								<option value="1" <c:if test="${depRegionCode=='1'}">selected="selected"</c:if>>한국</option>
								<option value="2" <c:if test="${depRegionCode=='2'}">selected="selected"</c:if>>동북아시아</option>
								<option value="3" <c:if test="${depRegionCode=='3'}">selected="selected"</c:if>>동남아시아/서남아시아</option>
								<option value="4" <c:if test="${depRegionCode=='4'}">selected="selected"</c:if>>몽골/중앙아시아</option>
								<option value="5" <c:if test="${depRegionCode=='5'}">selected="selected"</c:if>>유럽</option>
								<option value="6" <c:if test="${depRegionCode=='6'}">selected="selected"</c:if>>미주(미국,캐나다)</option>
								<option value="7" <c:if test="${depRegionCode=='7'}">selected="selected"</c:if>>대양주/사이판</option>
							</select>
						</div>
						<div class="form-group tm-form-group tm-form-group-pad tm-form-group-2">
							<select id="arrRegionCode" name="arrRegionCode">
								<option value="">선택해주세요</option>
								
							</select>
						</div>
						
						<div class="form-group tm-form-group tm-form-group-pad tm-form-group-2">
							<input name="dep" type="text" class="form-control" id="departure" placeholder="출발지를 입력해주세요" value = "${dep}" required="required">
						</div>
						<div class="form-group tm-form-group tm-form-group-pad tm-form-group-2" id="arrSearchBar">
							<input name="arr" type="text" class="form-control" id="arrival" placeholder="도착지를 입력해주세요" value = "${arr}" required="required">
						</div>
					</c:if>
					
					
					<c:if test="${!empty flightName}">
					
						<div class='form-group tm-form-group tm-form-group-pad tm-form-group-2' style='float:right;'>
							<label for='flightName'>항공편명</label>
							<input name='flightName' type='text' class='form-control' id='flightName' placeholder='항공편명을 입력해주세요' value='${flightName}' required='required'>
						</div>
						<div class='form-group tm-form-group tm-form-group-pad tm-form-group-2' style='float:right;'>
						</div>
					</c:if>
				</div>
				<div class="form-row tm-search-form-row" id="searchText2">
				</div>
				
				<br>
				<!-- form-row -->
				<div class="form-row tm-search-form-row">
					<div class="form-group tm-form-group tm-form-group-pad tm-form-group-1">
						<label>조회 일자</label> 
						<input type="text" class="form-control" id="targetDate" name="targetDate" value = "${targetDate}">
					</div>
					<div class="form-group tm-form-group tm-form-group-pad tm-form-group-1">
					</div>
					<div class="form-group tm-form-group tm-form-group-pad tm-form-group-1">
						<label for="btnSubmit">&nbsp;</label>
						<button type="submit" class="btn btn-primary tm-btn tm-btn-search text-uppercase" id="btnSubmit">검색</button>
					</div>
				</div>
			</form>
			<br>
			
			<input type="hidden" id="sampleDep" name="sampleDep" value = "${dep}" >
			<input type="hidden" id="sampleArr" name="sampleArr" value = "${arr}" >
			<input type="hidden" class="form-control" id="sampleArrCode" name="sampleArrCode" value = "${arrRegionCode}" >
			
			<div class="container">
				<c:if test="${empty list&&!empty arr}">
						<h3 style="text-align: center;">조회 가능한 항공편이 없습니다. &nbsp;<i class='fas fa-plane-departure'></i><br>
						다시 여정을 선택해주세요.</h3>	
				</c:if>
				<c:if test="${empty list&&!empty flightName}">
						<h3 style="text-align: center;">조회 가능한 항공편이 없습니다. &nbsp;<i class='fas fa-plane-departure'></i><br>
						다시 여정을 선택해주세요.</h3>	
				</c:if>
				<c:if test="${!empty list}">
				<table class="table table-hover" id="searchTable">
					<thead>
						<tr>
							<th>항공편명</th>
							<th>출발시간</th>
							<th>도착시간</th>
							<th>출발지</th>
							<th>도착지</th>
							<th>상태</th>
						</tr>
					</thead>
					<c:forEach items="${list}" var="list">
						<tbody>
							<tr>
								<td>${list.flightName}</td>
								<td>${list.fullDeptime}</td>
								<td>${list.fullArrtime}</td>
								<td>${list.depName}</td>
								<td>${list.arrName}</td>
								<c:choose>
									<c:when test="${now<list.fullDeptime}">
										<td><i class='far fa-clock' style='font-size:24px'></i><br>출발 전</td>
									</c:when>
									<c:when test="${now>list.fullArrtime}">
										<td><i class='fas fa-plane-arrival' style='font-size:24px'></i><br>도착 완료</td>
									</c:when>
									<c:otherwise>
										<td><i class='fas fa-plane' style='font-size:24px'></i><br>비행 중</td>										
									</c:otherwise>
								</c:choose>
							</tr>
						</tbody>
					</c:forEach>
				</table>
				
				<!-- 페이징 -->
				<ul class="pagination justify-content-center">
					<c:if test="${pageMaker.prev}">
						<li class="page-item">
							<a class="page-link" href="${pageMaker.startPage-1}">Previous</a>
						</li>
					</c:if>
					<c:forEach begin="${pageMaker.startPage}" end="${pageMaker.endPage}" var="num">
							<li class="page-item ${pageMaker.cri.pageNum==num ? "active" : ""}" >
								<a class="page-link" href="${num}">${num}</a>
							</li>
					</c:forEach>
					<c:if test="${pageMaker.next}">
						<li class="page-item"><a class="page-link" href="${pageMaker.endPage+1}">Next</a></li>
					</c:if>
				</ul>
				</c:if>
			</div>
		</div>
	</section>
	
	<!-- 전달 폼 -->
	<form id="actionForm2" action="/flight/flightDepArrSearch" method="get">
		<input type="hidden" name="pageNum" value="${pageMaker.cri.pageNum}" />
		<input type="hidden" name="amount" value="${pageMaker.cri.amount}" />
		<input type="hidden" name="dep" value="${dep}" />
		<input type="hidden" name="arr" value="${arr}" />
		<input type="hidden" name="targetDate" value="${targetDate}" />
	</form>

</div>
<!-- .tm-container-outer -->
<%@ include file="../includes/footer.jsp"%>

<script type="text/javascript">
	//페이지 버튼 클릭 이동
	var actionForm = $("#actionForm2");
	$(".page-item a").on("click", function(e) {
		e.preventDefault();
		actionForm.find("input[name='pageNum']").val($(this).attr("href")); 
		actionForm.submit();
	});
	
</script>

<script>
	$("#fName").on("click", function(){
		console.log("편명");
		str = "";
		str += "<div class='form-group tm-form-group tm-form-group-pad tm-form-group-2' style='float:right;'>";
		str += "<label for='flightName'>항공편명</label> ";
		str += "<input name='flightName' type='text' class='form-control' id='flightName' placeholder='항공편명을 입력해주세요' value='OZ' required='required'>";
		str += "</div>";
		str += "<div class='form-group tm-form-group tm-form-group-pad tm-form-group-2' style='float:right;'>";
		str += "</div>";
		
		$("#searchText2").html(str);
		$("#searchText").hide();
		
		$jb(function() {    //화면 다 뜨면 시작
		   $jb("#flightName").autocomplete({
		        source : function( request, response ) {
		             $jb.ajax({
		                    type: 'get',
		                    url: "/flight/getDistinctFlightName",
		                    dataType: "json",
		                    data: {searchValue: $("#flightName").val()},
		                    success: function(data) {
		                    	console.log(data);
		                        //서버에서 json 데이터 response 후 목록에 추가
		                        response(
		                            $jb.map(data, function(item) {    
		                                return {
		                                	label: item+"",    //UI 에서 보여지는 글자, 실제 검색어랑 비교 대상
		                                    value: item,    //사용자 설정값
		                                }
		                            })
		                        );
		                    }
		               });
		            },    // source 는 자동 완성 대상
		         select : function(event, ui) {    //아이템 선택시
		            console.log(ui);//사용자가 오토컴플릿이 만들어준 목록에서 선택을 하면 반환되는 객체
		            console.log(ui.item.label);    
		            console.log(ui.item.value);    
		            
		        },
		        focus : function(event, ui) {    //포커스 가면
		            return false;//한글 에러 잡기용도로 사용됨
		        },
		        minLength: 2,// 최소 글자수
		        autoFocus: true, //첫번째 항목 자동 포커스 기본값 false
		        delay: 200,    //검색창에 글자 써지고 나서 autocomplete 창 뜰 때 까지 딜레이 시간(ms)
		        close : function(event){    //자동완성창 닫아질때 호출
		            console.log(event);
		        }  
		      	    
		    });
			   
			}); 
	});
	
	var sampleDep = $("#sampleDep").val();
	var sampleArr = $("#sampleArr").val();
	var sampleArrCode = $("#sampleArrCode").val();
	$("#route").on("click", function(){
		console.log("노선");
		/* str = "";
		str += "<div class='form-group tm-form-group tm-form-group-pad tm-form-group-2'>"; 
		str += "<label for='dep'>출발지</label>";
		str += "</div>";
		str += "<div class='form-group tm-form-group tm-form-group-pad tm-form-group-2'>"; 
		str += "<label for='arr'>도착지</label>";
		str += "</div>";
		str += "<div class='form-group tm-form-group tm-form-group-pad tm-form-group-2'>"; 
		str += "<select id='depRegionCode' name='depRegionCode'>";
		str += "<option value='1'>한국</option>";
		str += "<option value='2'>동북아시아</option>";
		str += "<option value='3'>동남아시아/서남아시아</option>";
		str += "<option value='4'>몽골/중앙아시아</option>";
		str += "<option value='5'>유럽</option>";
		str += "<option value='6'>미주(미국,캐나다)</option>";
		str += "<option value='7'>대양주/사이판</option>";
		str += "</select>";
		str += "</div>";
		
		str += "<div class='form-group tm-form-group tm-form-group-pad tm-form-group-2'>"; 
		str += "<select id='arrRegionCode' name='arrRegionCode'>";		
		str += "<option value=''>선택해주세요</option>";
		str += "</select>";
		str += "</div>";
		
		str += "<div class='form-group tm-form-group tm-form-group-pad tm-form-group-2'>"; 
		str += "<input name='dep' type='text' class='form-control' id='departure' placeholder='출발지를 입력해주세요' value = '" + sampleDep + "' required='required'>";
		str += "</div>";
		str += "<div class='form-group tm-form-group tm-form-group-pad tm-form-group-2' id='arrSearchBar'>"; 
		str += "<input name='arr' type='text' class='form-control' id='arrival' placeholder='도착지를 입력해주세요' value = '" + sampleArr + "' required='required'>";
		str += "</div>";
		
		$("#searchText").html(str); */
		$("#searchText2").hide();
		$("#searchText").show();
		
		$("#arrival").on("click",function(e){
			 if($("#departure").val()==""){
				 alert("출발지를 입력해주세요");
			 }
		})
		
		/* $jb(function() {    //화면 다 뜨면 시작
		   $jb("#departure").autocomplete({
		        source : function( request, response ) {
		             $jb.ajax({
		                    type: 'get',
		                    url: "/flight/getDistinctDep",
		                    dataType: "json",
		                    data: {searchValue: $("#departure").val()},
		                    success: function(data) {
		                    	console.log(data);
		                        //서버에서 json 데이터 response 후 목록에 추가
		                        response(
		                            $jb.map(data, function(item) {    
		                                return {
		                                	label: item+"",    //UI 에서 보여지는 글자, 실제 검색어랑 비교 대상
		                                    value: item,    //사용자 설정값
		                                }
		                            })
		                        );
		                    }
		               });
		            },    // source 는 자동 완성 대상
		         select : function(event, ui) {    //아이템 선택시
		            console.log(ui);//사용자가 오토컴플릿이 만들어준 목록에서 선택을 하면 반환되는 객체
		            console.log(ui.item.label);    
		            console.log(ui.item.value);    
		            
		        },
		        focus : function(event, ui) {    //포커스 가면
		            return false;//한글 에러 잡기용도로 사용됨
		        },
		        minLength: 0,// 최소 글자수
		        autoFocus: true, //첫번째 항목 자동 포커스 기본값 false
		        delay: 200,    //검색창에 글자 써지고 나서 autocomplete 창 뜰 때 까지 딜레이 시간(ms)
		        close : function(event){    //자동완성창 닫아질때 호출
		            console.log(event);
		        }  
		      	    
		    });
			   
		});   */
		
		/* $jb(function() {    //화면 다 뜨면 시작
		    $jb("#arrival").autocomplete({
		        source : function( request, response ) {
		             $jb.ajax({
		                    type: 'POST',
		                    url: "/flight/getDistinctArrByDep",
		                    //dataType: "json",
		                    dataType: "json",
		                    //data: JSON.stringify({depName : $("#departure").val(),searchValue: $("#arrival").val()}),
		                    data: {depName : $("#departure").val(),searchValue: $("#arrival").val()},
		                    //contentType : "application/json; charset=utf-8", 
		                    success: function(data) {
		                    	console.log(data);
		                    	var json = JSON.stringify(data);
		                    	console.log(json);
		                        //서버에서 json 데이터 response 후 목록에 추가
		                        response(
		                            $jb.map(data, function(item) {    //json[i] 번째 에 있는게 item 임.
		                                return {
		                                	label: item+"",    //UI 에서 보여지는 글자, 실제 검색어랑 비교 대상
		                                    value: item,    //그냥 사용자 설정값
		                                }
		                            })
		                        );
		                    }
		               });
		            },    // source 는 자동 완성 대상
		         select : function(event, ui) {    //아이템 선택시
		            console.log(ui);//사용자가 오토컴플릿이 만들어준 목록에서 선택을 하면 반환되는 객체
		            console.log(ui.item.label);    
		            console.log(ui.item.value);    
		            
		        },
		        focus : function(event, ui) {    //포커스 가면
		            return false;//한글 에러 잡기용도로 사용됨
		        },
		        minLength: 0,// 최소 글자수
		        autoFocus: true, //첫번째 항목 자동 포커스 기본값 false
		        delay: 200,    //검색창에 글자 써지고 나서 autocomplete 창 뜰 때 까지 딜레이 시간(ms)
		        close : function(event){    //자동완성창 닫아질때 호출
		            console.log(event);
		        }  
		      	    
		    });
		   
		}); */
		
		//select 그리기sampleArrCode
		$jb(function(){
			console.log("셀렉트 시작");
			var sampleArrCode = $("#sampleArrCode").val();
			
			$.ajax({
		        type: 'get',
		        url: "/flight/getDistinctArrRegionCode",
		        dataType: "json",
		        data: {depName : $("#departure").val()},
		        //contentType : "application/json; charset=utf-8", 
		        success: function(data) {
					 console.log(data);
					 str = "";
					 str += "<option value=''>선택해주세요</option>";
					 if(data.includes('1')){
					 str+="<option value='1'>한국</option>";
					 } 
					 if(data.includes('2')){
					 str+="<option value='2'>동북아시아</option>";
					 } 
					 if(data.includes('3')){
					str+= "<option value='3'>동남아시아/서남아시아</option>";
					 } 
					 if(data.includes('4')){
					 str+="<option value='4'>몽골/중앙아시아</option>";
					 } 
					 if(data.includes('5')){
					 str+="<option value='5'>유럽</option>";
					 } 
					 if(data.includes('6')){
					 str+="<option value='6'>미주(미국,캐나다)</option>";
					 } 
					 if(data.includes('7')){
					 str+="<option value='7'>대양주/사이판</option>";
					 } 
					 
					 $("#arrRegionCode").html(str);	
		     	   
		     		 $('#arrRegionCode option[value= '+ sampleArrCode +']').prop("selected", true);

		        }
			
			});
		});
		
		$("#depRegionCode").on("change", function(){
			$("#departure").val("");
			$("#arrRegionCode").html("<option value=''>선택해주세요</option>");	
			$("#arrival").val("");
			$("#arrival2").val("");	
			//console.log("arrArea.value>>>"+arrArea.value);
		}); 
		
		$("#arrRegionCode").on("click", function(){
			
			
			if($("#departure").val()!=""){
				var arrText = $("#arrText").val();
			    
		  	    $("#arrSearchBar").html("<input name='arr' type='text' class='form-control' id='arrival2' placeholder='도착지를 입력해주세요' required='required'>");
		     
		  	    $jb("#arrival2").autocomplete({
		  	        source : function( request, response ) {
		  	             $jb.ajax({
		  	                    type: 'POST',
		  	                    url: "/flight/getDistinctArrByDep2",
		  	                    dataType: "json",
		  	                    //data: JSON.stringify({depName : $("#departure").val(),searchValue: $("#arrival").val()}),
		  	                    data: {depName : $("#departure").val(),searchValue: $("#arrival2").val(), arrRegionCode: $("#arrRegionCode").val()},
		  	                    //contentType : "application/json; charset=utf-8", 
		  	                    success: function(data) {
		  	                    	console.log(data);
		  	                    	var json = JSON.stringify(data);
		  	                    	console.log(json);
		  	                        //서버에서 json 데이터 response 후 목록에 추가
		  	                        response(
		  	                            $jb.map(data, function(item) {    //json[i] 번째 에 있는게 item 임.
		  	                                return {
		  	                                	label: item+"",    //UI 에서 보여지는 글자, 실제 검색어랑 비교 대상
		  	                                    value: item,    //그냥 사용자 설정값
		  	                                }
		  	                            })
		  	                        );
		  	                    }
		  	               });
		  	            },    // source 는 자동 완성 대상
		  	         select : function(event, ui) {    //아이템 선택시
		  	            console.log(ui);//사용자가 오토컴플릿이 만들어준 목록에서 선택을 하면 반환되는 객체
		  	            console.log(ui.item.label);    
		  	            console.log(ui.item.value);    
		  	            
		  	        },
		  	        focus : function(event, ui) {    //포커스 가면
		  	            return false;//한글 에러 잡기용도로 사용됨
		  	        },
		  	        minLength: 0,// 최소 글자수
		  	        autoFocus: true, //첫번째 항목 자동 포커스 기본값 false
//		  	        classes: {    //잘 모르겠음
//		  	            "ui-autocomplete": "highlight"
//		  	        },
		  	        delay: 200,    //검색창에 글자 써지고 나서 autocomplete 창 뜰 때 까지 딜레이 시간(ms)
//		  	        disabled: true, //자동완성 기능 끄기
//		  	        position: { my : "right top", at: "right bottom" },    //잘 모르겠음
		  	        close : function(event){    //자동완성창 닫아질때 호출
		  	            console.log(event);
		  	        }  
		  	      	    
		  	    });
			}   
		});
		
	});//end route click
	
	$jLatest('input[id="targetDate"]').daterangepicker({
		singleDatePicker: true,
	    //timePicker: true,
	    timePicker24Hour: true,
		 "locale": {
		       "format": 'YYYY-MM-DD',
		       "separator": " ~ ",
		       "applyLabel": "확인",
		        "cancelLabel": "취소",
		        "fromLabel": "From",
		        "toLabel": "To",
		        "customRangeLabel": "Custom",
		        "weekLabel": "주",
		        "daysOfWeek": [
		             "일",
		             "월",
		             "화",
		             "수",
		             "목",
		             "금",
		             "토"
		       ],
		      "monthNames": [
		             "1월",
		             "2월",
		             "3월",
		             "4월",
		             "5월",
		             "6월",
		             "7월",
		             "8월",
		             "9월",
		             "10월",
		             "11월",
		             "12월"
		        ],
		        "firstDay": 1
		    },
		    "minDate": "2023-12-01",
		    "maxDate": "2024-02-28"
	});

	
</script>


<script>

//출발지 자동완성
$jb(function() {    //화면 다 뜨면 시작
   $jb("#departure").autocomplete({
        source : function( request, response ) {
             $jb.ajax({
                    type: 'get',
                    url: "/flight/getDistinctDep",
                    dataType: "json",
                    data: {searchValue: $("#departure").val(), depRegionCode: $("#depRegionCode").val()},
                    success: function(data) {
                    	console.log(data);
                    	var json = JSON.stringify(data);
                    	console.log(json);
                        //서버에서 json 데이터 response 후 목록에 추가
                        response(
                            $jb.map(data, function(item) {    //json[i] 번째 에 있는게 item 임.
                                return {
                                	label: item+"",    //UI 에서 보여지는 글자, 실제 검색어랑 비교 대상
                                    value: item,    //그냥 사용자 설정값
                                }
                            })
                        );
                    }
               });
            },    // source 는 자동 완성 대상
         select : function(event, ui) {    //아이템 선택시
            console.log(ui);//사용자가 오토컴플릿이 만들어준 목록에서 선택을 하면 반환되는 객체
            console.log(ui.item.label);    
            console.log(ui.item.value);
            $.ajax({
    	        type: 'get',
    	        url: "/flight/getDistinctArrRegionCode",
    	        dataType: "json",
    	        data: {depName : ui.item.label},
    	        //contentType : "application/json; charset=utf-8", 
    	        success: function(data) {
		     	   console.log(data);
		     	   str = "";
		     	   str += "<option value=''>선택해주세요</option>"
		     	   if(data.includes('1')){
		     		  str+="<option value='1'>한국</option>";
		     	   } 
		     	   if(data.includes('2')){
		     		  str+="<option value='2'>동북아시아</option>";
		     	   } 
		     	   if(data.includes('3')){
		     		 str+= "<option value='3'>동남아시아/서남아시아</option>";
		     	   } 
		     	   if(data.includes('4')){
		     		  str+="<option value='4'>몽골/중앙아시아</option>";
		     	   } 
		     	   if(data.includes('5')){
		     		  str+="<option value='5'>유럽</option>";
		     	   } 
		     	   if(data.includes('6')){
		     		  str+="<option value='6'>미주(미국,캐나다)</option>";
		     	   } 
		     	   if(data.includes('7')){
		     		  //$("#arrRegionCode").append("<option value='7'>대양주/사이판</option>");
		     		  str+="<option value='7'>대양주/사이판</option>";
		     	   } 
    	     	   
    	     	   $("#arrRegionCode").html(str);
    	        
    	        }
    	    });
            
        },
        focus : function(event, ui) {    //포커스 가면
            return false;//한글 에러 잡기용도로 사용됨
        },
        minLength: 0,// 최소 글자수
        autoFocus: true, //첫번째 항목 자동 포커스 기본값 false
//        classes: {    //잘 모르겠음
//            "ui-autocomplete": "highlight"
//        },
        delay: 200,    //검색창에 글자 써지고 나서 autocomplete 창 뜰 때 까지 딜레이 시간(ms)
//        disabled: true, //자동완성 기능 끄기
//        position: { my : "right top", at: "right bottom" },    //잘 모르겠음
        close : function(event){    //자동완성창 닫아질때 호출
            console.log(event);
        }  
      	    
    });
   
}); 

//도착지 자동완성 
$jb(function() {    //화면 다 뜨면 시작
   $jb("#arrival").autocomplete({
       source : function( request, response ) {
            $jb.ajax({
                   type: 'POST',
                   url: "/flight/getDistinctArrByDep1",
                   dataType: "json",
                   //data: JSON.stringify({depName : $("#departure").val(),searchValue: $("#arrival").val()}),
                   data: {depName : $("#departure").val(),searchValue: $("#arrival").val()},
                   //contentType : "application/json; charset=utf-8", 
                   success: function(data) {
                   	console.log(data);
                   	var json = JSON.stringify(data);
                   	console.log(json);
                       //서버에서 json 데이터 response 후 목록에 추가
                       response(
                           $jb.map(data, function(item) {    //json[i] 번째 에 있는게 item 임.
                               return {
                               	label: item+"",    //UI 에서 보여지는 글자, 실제 검색어랑 비교 대상
                                   value: item,    //그냥 사용자 설정값
                               }
                           })
                       );
                   }
              });
           },    // source 는 자동 완성 대상
        select : function(event, ui) {    //아이템 선택시
           console.log(ui);//사용자가 오토컴플릿이 만들어준 목록에서 선택을 하면 반환되는 객체
           console.log(ui.item.label);    
           console.log(ui.item.value);    
           
       },
       focus : function(event, ui) {    //포커스 가면
           return false;//한글 에러 잡기용도로 사용됨
       },
       minLength: 0,// 최소 글자수
       autoFocus: true, //첫번째 항목 자동 포커스 기본값 false
//       classes: {    //잘 모르겠음
//           "ui-autocomplete": "highlight"
//       },
       delay: 200,    //검색창에 글자 써지고 나서 autocomplete 창 뜰 때 까지 딜레이 시간(ms)
//       disabled: true, //자동완성 기능 끄기
//       position: { my : "right top", at: "right bottom" },    //잘 모르겠음
       close : function(event){    //자동완성창 닫아질때 호출
           console.log(event);
       }  
     	    
   });
  
});

//도착지 자동완성 
 $jb(function() {    //화면 다 뜨면 시작
    $jb("#arrival2").autocomplete({
        source : function( request, response ) {
             $jb.ajax({
                    type: 'POST',
                    url: "/flight/getDistinctArrByDep2",
                    //dataType: "json",
                    dataType: "json",
                    //data: {depName : $("#departure").val(),searchValue: $("#arrival").val()},
                    data: {depName : $("#departure").val(),searchValue: $("#arrival").val(), arrRegionCode: $("#arrRegionCode").val()},
                    //contentType : "application/json; charset=utf-8", 
                    success: function(data) {
                    	console.log(data);
                    	var json = JSON.stringify(data);
                    	console.log(json);
                        //서버에서 json 데이터 response 후 목록에 추가
                        response(
                            $jb.map(data, function(item) {    //json[i] 번째 에 있는게 item 임.
                                return {
                                	label: item+"",    //UI 에서 보여지는 글자, 실제 검색어랑 비교 대상
                                    value: item,    //그냥 사용자 설정값
                                }
                            })
                        );
                    }
               });
            },    // source 는 자동 완성 대상
         select : function(event, ui) {    //아이템 선택시
            console.log(ui);//사용자가 오토컴플릿이 만들어준 목록에서 선택을 하면 반환되는 객체
            console.log(ui.item.label);    
            console.log(ui.item.value);    
            
        },
        focus : function(event, ui) {    //포커스 가면
            return false;//한글 에러 잡기용도로 사용됨
        },
        minLength: 0,// 최소 글자수
        autoFocus: true, //첫번째 항목 자동 포커스 기본값 false
        delay: 200,    //검색창에 글자 써지고 나서 autocomplete 창 뜰 때 까지 딜레이 시간(ms)
        close : function(event){    //자동완성창 닫아질때 호출
            console.log(event);
        }  
      	    
    });
   
}); 

//출발지부터 입력하도록.
var arrClick = $("#arrival").on("click",function(e){
	 if($("#departure").val()==""){
		 alert("출발지를 입력해주세요");
	 }
})


//항공편명 자동완성
var fname = $jb(function() {    //화면 다 뜨면 시작
   $jb("#flightName").autocomplete({
        source : function( request, response ) {
             $jb.ajax({
                    type: 'get',
                    url: "/flight/getDistinctFlightName",
                    dataType: "json",
                    data: {searchValue: $("#flightName").val()},
                    success: function(data) {
                    	console.log(data);
                        //서버에서 json 데이터 response 후 목록에 추가
                        response(
                            $jb.map(data, function(item) {    
                                return {
                                	label: item+"",    //UI 에서 보여지는 글자, 실제 검색어랑 비교 대상
                                    value: item,    //사용자 설정값
                                }
                            })
                        );
                    }
               });
            },    // source 는 자동 완성 대상
         select : function(event, ui) {    //아이템 선택시
            console.log(ui);//사용자가 오토컴플릿이 만들어준 목록에서 선택을 하면 반환되는 객체
            console.log(ui.item.label);    
            console.log(ui.item.value);    
            
        },
        focus : function(event, ui) {    //포커스 가면
            return false;//한글 에러 잡기용도로 사용됨
        },
        minLength: 2,// 최소 글자수
        autoFocus: true, //첫번째 항목 자동 포커스 기본값 false
//        classes: {    //잘 모르겠음
//            "ui-autocomplete": "highlight"
//        },
        delay: 200,    //검색창에 글자 써지고 나서 autocomplete 창 뜰 때 까지 딜레이 시간(ms)
//        disabled: true, //자동완성 기능 끄기
//        position: { my : "right top", at: "right bottom" },    //잘 모르겠음
        close : function(event){    //자동완성창 닫아질때 호출
            console.log(event);
        }  
      	    
    });
   
});  

$("#depRegionCode").on("change", function(){
	$("#departure").val("");
	$("#arrRegionCode").html("<option value=''>선택해주세요</option>");	
	$("#arrival").val("");
	$("#arrival2").val("");	
	//console.log("arrArea.value>>>"+arrArea.value);
}); 

$("#arrRegionCode").on("click", function(){
	
	
	if($("#departure").val()!=""){
		var arrText = $("#arrText").val();
	    
  	    $("#arrSearchBar").html("<input name='arr' type='text' class='form-control' id='arrival2' placeholder='도착지를 입력해주세요' required='required'>");
     
  	    $jb("#arrival2").autocomplete({
  	        source : function( request, response ) {
  	             $jb.ajax({
  	                    type: 'POST',
  	                    url: "/flight/getDistinctArrByDep2",
  	                    dataType: "json",
  	                    //data: JSON.stringify({depName : $("#departure").val(),searchValue: $("#arrival").val()}),
  	                    data: {depName : $("#departure").val(),searchValue: $("#arrival2").val(), arrRegionCode: $("#arrRegionCode").val()},
  	                    //contentType : "application/json; charset=utf-8", 
  	                    success: function(data) {
  	                    	console.log(data);
  	                    	var json = JSON.stringify(data);
  	                    	console.log(json);
  	                        //서버에서 json 데이터 response 후 목록에 추가
  	                        response(
  	                            $jb.map(data, function(item) {    //json[i] 번째 에 있는게 item 임.
  	                                return {
  	                                	label: item+"",    //UI 에서 보여지는 글자, 실제 검색어랑 비교 대상
  	                                    value: item,    //그냥 사용자 설정값
  	                                }
  	                            })
  	                        );
  	                    }
  	               });
  	            },    // source 는 자동 완성 대상
  	         select : function(event, ui) {    //아이템 선택시
  	            console.log(ui);//사용자가 오토컴플릿이 만들어준 목록에서 선택을 하면 반환되는 객체
  	            console.log(ui.item.label);    
  	            console.log(ui.item.value);    
  	            
  	        },
  	        focus : function(event, ui) {    //포커스 가면
  	            return false;//한글 에러 잡기용도로 사용됨
  	        },
  	        minLength: 0,// 최소 글자수
  	        autoFocus: true, //첫번째 항목 자동 포커스 기본값 false
//  	        classes: {    //잘 모르겠음
//  	            "ui-autocomplete": "highlight"
//  	        },
  	        delay: 200,    //검색창에 글자 써지고 나서 autocomplete 창 뜰 때 까지 딜레이 시간(ms)
//  	        disabled: true, //자동완성 기능 끄기
//  	        position: { my : "right top", at: "right bottom" },    //잘 모르겠음
  	        close : function(event){    //자동완성창 닫아질때 호출
  	            console.log(event);
  	        }  
  	      	    
  	    });
	}   
});

//select 그리기sampleArrCode
$jb(function(){
	console.log("셀렉트 시작");
	var sampleArrCode = $("#sampleArrCode").val();
	
	$.ajax({
        type: 'get',
        url: "/flight/getDistinctArrRegionCode",
        dataType: "json",
        data: {depName : $("#departure").val()},
        //contentType : "application/json; charset=utf-8", 
        success: function(data) {
			 console.log(data);
			 str = "";
			 str += "<option value=''>선택해주세요</option>";
			 if(data.includes('1')){
			 str+="<option value='1'>한국</option>";
			 } 
			 if(data.includes('2')){
			 str+="<option value='2'>동북아시아</option>";
			 } 
			 if(data.includes('3')){
			str+= "<option value='3'>동남아시아/서남아시아</option>";
			 } 
			 if(data.includes('4')){
			 str+="<option value='4'>몽골/중앙아시아</option>";
			 } 
			 if(data.includes('5')){
			 str+="<option value='5'>유럽</option>";
			 } 
			 if(data.includes('6')){
			 str+="<option value='6'>미주(미국,캐나다)</option>";
			 } 
			 if(data.includes('7')){
			 str+="<option value='7'>대양주/사이판</option>";
			 } 
			 
			 $("#arrRegionCode").html(str);	
     	   
     		 $('#arrRegionCode option[value= '+ sampleArrCode +']').prop("selected", true);

        }
	
	});
});

</script>