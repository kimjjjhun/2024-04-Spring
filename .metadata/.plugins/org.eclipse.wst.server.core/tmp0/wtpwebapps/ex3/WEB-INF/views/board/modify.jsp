<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<!DOCTYPE html>
<html lang="en">
<%@ include file="../includes/header.jsp"%>
<head>

<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta name="description" content="">
<meta name="author" content="">

<title>SB Admin 2 - Bootstrap Admin Theme</title>

<!-- Bootstrap Core CSS -->
<link href="/resources/vendor/bootstrap/css/bootstrap.min.css"
	rel="stylesheet">

<!-- MetisMenu CSS -->
<link href="/resources/vendor/metisMenu/metisMenu.min.css"
	rel="stylesheet">

<!-- DataTables CSS -->
<link
	href="/resources/vendor/datatables-plugins/dataTables.bootstrap.css"
	rel="stylesheet">

<!-- DataTables Responsive CSS -->
<link
	href="/resources/vendor/datatables-responsive/dataTables.responsive.css"
	rel="stylesheet">

<!-- Custom CSS -->
<link href="/resources/dist/css/sb-admin-2.css" rel="stylesheet">

<!-- Custom Fonts -->
<link href="/resources/vendor/font-awesome/css/font-awesome.min.css"
	rel="stylesheet" type="text/css">

<!-- HTML5 Shim and Respond.js IE8 support of HTML5 elements and media queries -->
<!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
<!--[if lt IE 9]>
        <script src="https://oss.maxcdn.com/libs/html5shiv/3.7.0/html5shiv.js"></script>
        <script src="https://oss.maxcdn.com/libs/respond.js/1.4.2/respond.min.js"></script>
    <![endif]-->

</head>

<body>
	<div id="page-wrapper">
		<div class="row">
                <div class="col-lg-12">
                    <h1 class="page-header">Board Modify</h1>
                </div>
                <!-- /.col-lg-12 -->
            </div>
            <!-- /.row -->
            <div class="row">
                <div class="col-lg-12">
                    <div class="panel panel-default">
                        <div class="panel-heading">
                            Board Modify Page
                        </div>
                        <!-- /.panel-heading -->
                        <div class="panel-body">
	                      <form role="form" action="/board/modify" method="post">
		                       	<div class="form-group">
		                        	<label>Bno</label>
		                        	<input name="bno" class="form-control" value="${board.bno}" readonly="readonly">
		                       	</div>
		                       	
		                       	<div class="form-group">
		                        	<label>Title</label>
		                        	<input name="title" class="form-control" value="<c:out value='${board.title}'/>" >
		                       	</div>
								
								<div class="form-group">
		                        	<label>Text Area</label>
		                        	<textarea name="content" rows="3" class="form-control" 
		                        	style= "text-align:left ">${board.content}</textarea>
		                       	</div>
		                       	
	                       	 	<div class="form-group">
		                        	<label>Writer</label>
		                        	<input name="writer" class="form-control" value="${board.writer}" readonly="readonly">
		                       	</div>
		                       	
		                       	<button type="submit" data-oper='modify' class="btn btn-default">Modify</button>
		                       	<button type="submit" data-oper='remove' class="btn btn-danger">Remove</button>
		                       	<button type="submit" data-oper='list' class="btn btn-info">List</button>
	                       	</form>
                        </div>
                        <!-- /.panel-body -->
                    </div>
                    <!-- /.panel -->
                </div>
                <!-- /.col-lg-12 -->
            </div>
            <!-- /.row -->
	</div>
	<!-- /#page-wrapper -->
	</div>

	<!-- document.ready는 이 문서를 다 읽고 스크립트를 실행하라는 코드이다. -->
	<script type="text/javascript">
$(document).ready(function(){
	
	var formObj = $("form");
	
	$('button').on("click", function(e){
		e.preventDefault();
		
		var operation = $(this).data("oper");
		console.log("operation : " + operation);
		
		if(operation === 'remove'){
			formObj.attr("action", "/board/remove");
		}else if(operation === 'list'){
			formObj.attr("action", "/board/list").attr("method","get");
			formObj.empty();
		}
		formObj.submit();
	})
});
</script>

	<%@ include file="../includes/footer.jsp"%>
</body>

</html>
