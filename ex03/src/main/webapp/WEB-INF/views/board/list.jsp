<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<%@include file="../includes/header.jsp" %>
<div class="row">
    <div class="col-lg-12">
        <h1 class="page-header">Board List</h1>
    </div>
    <!-- /.col-lg-12 -->
</div>
<!-- /.row -->
<div class="row">
    <div class="col-lg-12">
        <div class="panel panel-default">
            <div class="panel-heading">
                Board List Page
                <button id="regBtn" type="button" class="btn btn-xs pull-right btn-info">Register New Board</button>
            </div>
            <!-- /.panel-heading -->
            <div class="panel-body">
                <table width="100%" class="table table-striped table-bordered table-hover" >
                    <thead>
                        <tr>
                            <th>#번호</th>
                            <th>제목</th>
                            <th>작성자</th>
                            <th>작성일</th>
                            <th>수정일</th>
                        </tr>
                    </thead>
                    <tbody>
                    	<c:forEach var="board" items="${list}">
	                        <tr class="odd gradeX">
	                            <td>${board.bno }</td>
	                            <td>
	                            	<a class="move" href='${board.bno}'/>${board.title }
	                            </td>
	                            <td>${board.writer }</td>
	                            <td><fmt:formatDate value="${board.regdate }" pattern="yyyy-MM-dd"  /></td>
	                            <td><fmt:formatDate value="${board.updateDate }" pattern="yyyy-MM-dd"  /></td>
	                        </tr>
                        </c:forEach>
                    </tbody>
                </table>
                
                
                <div class="row">
                	<div class="col-lg-12">
                		<form action="/board/list" method="get" id="searchFrom">
                			<select name="type">
                				<option value=""  ${pageMaker.cri.type == null ? 'selected' : ''} >--</option>
                				<option value="T" ${pageMaker.cri.type eq 'T' ? 'selected' : ''} >제목</option>
                				<option value="C" ${pageMaker.cri.type eq 'C' ? 'selected' : ''} >내용</option>
                				<option value="W" ${pageMaker.cri.type eq 'W' ? 'selected' : ''} >작성자</option>
                				<option value="TC" ${pageMaker.cri.type eq 'TC' ? 'selected' : ''} >제목 or 내용</option>
                				<option value="TW" ${pageMaker.cri.type eq 'TW' ? 'selected' : ''} >제목 or 작성자</option>
                				<option value="TCW" ${pageMaker.cri.type eq 'TCW' ? 'selected' : ''}>제목 or 내용 or 작성자</option>
                			</select>
                			
                			<input type="text" name="keyword"  value="${pageMaker.cri.keyword }"/>
                			<input type="hidden" name="pageNum" value=${pageMaker.cri.pageNum}>
							<input type="hidden" name="amount" value=${pageMaker.cri.amount}> 
							<button class="btn btn-default">Search</button>
                		</form>
                	</div>
                </div>
                
                <!-- 페이징 처리 -->
				<div class="container">
				  <ul class="pagination">
					
					<c:if test="${pageMaker.prev}">  
				    	<li class="page-item"><a class="page-link" href="${pageMaker.startPage - 1}">이전</a></li>
				  	</c:if>
				  	
				  	<!-- actionForm.find("input[name='pageNum']").val($(this).attr("href")); -->
				  	<c:forEach var="num" begin="${pageMaker.startPage}" end="${pageMaker.endPage}">
				    	<li class="page-item ${pageMaker.cri.pageNum == num ? "active" : ""} ">
				    		<a class="page-link" href="${num}">${num}</a>
				    	</li>
				    </c:forEach>
				  
				  	<c:if test="${pageMaker.next}"> 
				    	<li class="page-item"><a class="page-link" href="${pageMaker.endPage + 1}">다음</a></li>
				    </c:if>
				    
				  </ul>
				</div> <!-- End 페이징 처리 -->
				
				<form id="actionForm" action="/board/list" method="get">
					<input type="hidden" name="pageNum" value=${pageMaker.cri.pageNum}>
					<input type="hidden" name="amount" value=${pageMaker.cri.amount}>
					<input type="hidden" name="type" value=${pageMaker.cri.type}>
					<input type="hidden" name="keyword" value=${pageMaker.cri.keyword}>
					
				</form>
                
            </div>
            <!-- /.panel-body -->
        </div>
        <!-- /.panel -->
    </div>
    <!-- /.col-lg-12 -->
</div>
<!-- /.row -->
 
 
<!-- The Modal -->
<div class="modal" id="myModal">
  <div class="modal-dialog">
    <div class="modal-content">

      <!-- Modal Header -->
      <div class="modal-header">
        <h4 class="modal-title">Modal Heading</h4>
        <button type="button" class="close" data-dismiss="modal">&times;</button>
      </div>

      <!-- Modal body -->
      <div class="modal-body">
        처리되었습니다.
      </div>

      <!-- Modal footer -->
      <div class="modal-footer">
        <button type="button" class="btn btn-danger" data-dismiss="modal">Close</button>
      </div>

    </div>
  </div>
</div> <!-- End The Modal -->
 
  
 
 <script>
 	$(document).ready(function(){
 		let result = '${result}';
 		
 		checkModal(result);
 		
 		history.replaceState({},null,null);
 		
 		function checkModal(result){
 			
 			if(result === '' || history.state){
 				return ;
 			}
 			
 			if(parseInt(result) > 0){
 				$(".modal-body").html("게시글 " + parseInt(result) + "번 등록 성공 했습니다.")
 			}
 			
 			$("#myModal").modal("show");	
 		};
 		
 		
 		$("#regBtn").on("click",function(){
 			self.location = "/board/register";
 		})
 		
 		
 		let actionForm = $("#actionForm");
 		$(".page-item a").on("click", function(e){
 			e.preventDefault();
 			actionForm.find("input[name='pageNum']").val($(this).attr("href"));
 			actionForm.submit();
 		}) 
 		
 		
 		/*<form id="actionForm" action="/board/get" method="get">
			<input type="hidden" name="pageNum" value=${pageMaker.cri.pageNum}>
			<input type="hidden" name="amount" value=${pageMaker.cri.amount}>
			<input type='hidden' name='bno' value='"+ $(this).attr("href") + "'>
		</form>*/
 		
 		$(".move").on("click",function(e){
 			e.preventDefault();
 			actionForm.append("<input type='hidden' name='bno' value='"+ $(this).attr("href") + "'>")
 			actionForm.attr("action", "/board/get");
 			actionForm.submit();
 		})
 		
 		
 		//검색조건 이벤트 처리
 		
 		let searchForm  = $("#searchFrom");
		
		$("#searchFrom button").on("click", function(e){
			e.preventDefault();
			
			if(!searchForm.find("option:selected").val()){
				alert("검색종류를 선택하세요");
				return false;
			}
			
			if(!searchForm.find("input[name='keyword']").val()){
				alert("키워드를 입력하세요.");
				return false;
			}
			
			searchForm.find("input[name='pageNum']").val("1");
			
			searchForm.submit();
		})
 	});
 </script>
 
 
 
 
      
<%@include file="../includes/footer.jsp" %>      





















