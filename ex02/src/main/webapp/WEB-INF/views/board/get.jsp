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
				<h1 class="page-header">Board Read</h1>
			</div>
			<!-- /.col-lg-12 -->
		</div>
		<!-- /.row -->

		<div class="row">
			<div class="col-lg-12">
				<div class="panel panel-default">
					<div class="panel-heading">Board Read Page</div>
					<!-- /.panel-heading -->
					<div class="panel-body">

						<div class="form-group">
							<label>Bno</label> <input name="bno" class="form-control"
								value="${board.bno}" readonly="readonly">
						</div>

						<div class="form-group">
							<label>Title</label>
							<!-- el표기법 보안적으로 안전적이기에 위에방식보단 아래방식을 더 선호한다. -->
							<input name="title" class="form-control"
								value="<c:out value='${board.title}'/>" readonly="readonly">
						</div>

						<div class="form-group">
							<label>Text Area</label>
							<!-- el표기법 보안적으로 안전적이기에 위에방식보단 아래방식을 더 선호한다. -->
							<textarea name="content" class="form-control" readonly="readonly">${board.content}</textarea>
						</div>

						<div class="form-group">
							<label>Writer</label>
							<!-- el표기법 보안적으로 안전적이기에 위에방식보단 아래방식을 더 선호한다. -->
							<input name="writer" class="form-control"
								value="<c:out value='${board.writer}'/>" readonly="readonly">
						</div>

						<button data-oper="modify" class="btn btn-default">Modify</button>
						<button data-oper="list" class="btn btn-info">List</button>

						<form id="operForm" action="/board/modify" method="get">
							<input type="hidden" id='bno' name='bno' value="${board.bno}">
							<input type="hidden" name="pageNum" value="${cri.pageNum}">
							<input type="hidden" name="amount" value="${cri.amount}">
							<input type="hidden" name="type" value=${pageMaker.cri.type}>
							<input type="hidden" name="keyword" value=${pageMaker.cri.keyword}>
						</form>
					</div>
					<!-- /.table-responsive -->
				</div>
				<!-- /.panel-body -->
			</div>
			<!-- /.panel -->
		</div>

		<!-- /.col-lg-6 -->
	</div>
	<!-- /.row -->

	<script>
		$(document).ready(function() {
			var operForm = $("#operForm");

			$("button[data-oper='modify']").on("click", function(e) {
				/* operForm.attr("action", "/board/modify").submit(); */
				operForm.submit();
			})

			$("button[data-oper='list']").on("click", function(e) {
				operForm.find("#bno").remove();
				operForm.attr("action", "/board/list").submit()
			})

		})
	</script>
	<%@ include file="../includes/footer.jsp"%>
</body>

</html>
